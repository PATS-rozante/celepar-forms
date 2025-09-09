const table = {
  NNWWN: "0",
  WNNNW: "1",
  NWNNW: "2",
  WWNNN: "3",
  NNWNW: "4",
  WNWNN: "5",
  NWWNN: "6",
  NNNWW: "7",
  WNNWN: "8",
  NWNWN: "9",
};

function normalizeGroup(g) {
  return g.replace(/[Nn]/g, "N").replace(/[Ww]/g, "W");
}

function decodeInterleaved25(barcode) {
  // remove delimitadores < >
  barcode = barcode.replace(/^<|>$/g, "");
  let result = "";
  //console.log("Total de caracteres:", barcode.length);
  for (let i = 0; i < barcode.length; i += 10) {
    const segment = barcode.slice(i, i + 10);
    if (segment.length < 10) {
      //console.log(`Grupo final incompleto (${segment.length} caracteres): '${segment}'`);
      break;
    }
    const bars = normalizeGroup(segment.slice(0, 5));
    const spaces = normalizeGroup(segment.slice(5, 10));
    const d1 = table[bars] || "?";
    const d2 = table[spaces] || "?";
    //console.log(
    //  `Grupo ${i / 10 + 1}: barras='${segment.slice(0, 5)}'(${bars}) → ${d1}, espaços='${segment.slice(
    //    5,
    //    10
    //  )}'(${spaces}) → ${d2}`
    //);
    result += d1 + d2;
  }
  return result;
}

// Execução Node.js
if (require.main === module) {
  const args = process.argv.slice(2);
  if (args.length > 0) {
    const decoded = decodeInterleaved25(args[0]);
    console.log("Decodificado:", decoded);
  } else {
    console.log("Uso: node script.js <codigo>");
  }
}
