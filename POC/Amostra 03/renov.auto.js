const fs = require("fs");

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
output += `</XMLDATA>`;

// Salva o novo arquivo XML
fs.writeFileSync(outputFile, output, "latin1");
console.log(`Arquivo gerado com sucesso: ${outputFile}`);
