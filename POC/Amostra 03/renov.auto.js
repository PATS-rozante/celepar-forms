const fs = require("fs");
const path = require('path');

// Captura os argumentos da linha de comando
const [, , parmIn, inputFile, parmOut, outputFile] = process.argv;

if (!inputFile || !outputFile) {
  console.error("Uso: node renov.auto.js -in <arquivo_entrada.xml> -out <arquivo_saida.xml>");
  process.exit(1);
}

console.log(`Processando arquivo: ${inputFile}`);
console.log(`Arquivo de saída: ${outputFile}`);

// Lê o conteúdo do arquivo
const content = fs.readFileSync(inputFile, "latin1");
const lines = content.split(/\r?\n/);

let output = `<?xml version="1.0" encoding="ISO-8859-1"?>\n<!-- DOTransform -->\n<XMLDATA>\n`;

let buffer = [];
let insideBlock = false;
let currentTag = "";

// Remover extensão e caminho, deixando só o nome
const nameOnly = path.basename(inputFile); // ex: "documento.txt"

// Obter data de modificação no formato dd/mm/yyyy hh.mm.ss
const stats = fs.statSync(inputFile);
const mtime = stats.mtime;
const formatDate = (date) => {
  const pad = (n) => n.toString().padStart(2, '0');
  return `${pad(date.getDate())}/${pad(date.getMonth() + 1)}/${date.getFullYear()} ${pad(date.getHours())}:${pad(date.getMinutes())}:${pad(date.getSeconds())}`;
};
const formattedDate = formatDate(mtime);
const data = formattedDate.substring(0,10);
const hora = formattedDate.substring(11);

buffer.push('	<SeparatorInicial>');
buffer.push(`		<filename>${nameOnly}</filename>`);
buffer.push(`		<dateprint>${data}</dateprint>`);
buffer.push(`		<timeprint>${hora}</timeprint>`);
buffer.push('	</SeparatorInicial>');
const sepiContent = buffer.join("\n");
output += `<Document>\n${sepiContent}\n</Document>\n`;

buffer = [];
for (let line of lines) {
  // Detecta início de bloco
  if (line.trim().startsWith("<folhaSeparacao") || line.trim().startsWith("<folha>")) {
    insideBlock = true;
    buffer = [];
    currentTag = line.includes("<folhaSeparacao") ? "folhaSeparacao" : "folha";
  }

  if (insideBlock) buffer.push(line);

  // Detecta fim de bloco
  if (line.endsWith(`</${currentTag}>`)) {
    insideBlock = false;
    const blockContent = buffer.join("\n");
    output += `<Document>\n${blockContent}\n</Document>\n`;
    buffer = [];
  }
}

buffer = [];
buffer.push('	<SeparatorFinal>');
buffer.push(`		<filename>${nameOnly}</filename>`);
buffer.push(`		<dateprint>${data}</dateprint>`);
buffer.push(`		<timeprint>${hora}</timeprint>`);
buffer.push('	</SeparatorFinal>');
const sepfContent = buffer.join("\n");
output += `<Document>\n${sepfContent}\n</Document>\n</XMLDATA>\n`;

// Salva o novo arquivo XML
fs.writeFileSync(outputFile, output, "latin1");
console.log(`Arquivo gerado com sucesso: ${outputFile}`);
