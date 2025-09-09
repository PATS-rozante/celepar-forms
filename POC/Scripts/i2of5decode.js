// Decodificador Interleaved 2 of 5 (I2of5) a partir de uma string do tipo:
// "<wWNnn...NNnw>"
// W = ww, n = nn, N = nw, w = wn
function decodeITF(encoded) {
  if (!encoded || typeof encoded !== 'string') 
	  throw new Error('encoded deve ser string');

  var body = encoded.trim();

  if (body.substring(0,1) == '<') {
    body = body.slice(1, -1);
  }
  if (body.substring(0,4) == '&lt;') {
    body = body.slice(4, -4);
  }
  // agora os dados devem estar em blocos de 10 elementos (5 barras + 5 espaços) por cada par de dígitos
  if (body.length % 5 !== 0) {
    throw new Error('codigo invalido - tamanho deve ser multiplo de 5.');
  }
  const patterns = ['nnwwn','wnnnw','nwnnw','wwnnn','nnwnw','wnwnn','nwwnn','nnnww','wnnwn','nwnwn'];
			     //  0       1       2       3       4       5       6       7       8       9  
  var result = '';
  for (var i = 0; i < body.length; i += 5) {
    var chunk = body.slice(i, i + 5);
	var d1 = '';
	var d2 = '';
	for (var j = 0; j < 5; j++) {
		if        (chunk[j] == 'W') { 
			d1 += 'w'; 
			d2 += 'w'; 
		} else if (chunk[j] == 'n') { 
			d1 += 'n'; 
			d2 += 'n'; 
		} else if (chunk[j] == 'N') { 
			d1 += 'n'; 
			d2 += 'w'; 
		} else { 
			d1 += 'w'; 
			d2 += 'n'; 
		}
	}
    result += patterns.indexOf(d1).toString() + patterns.indexOf(d2).toString();
  }
  return result;
}

function decodeInterleaved25() {
  $$SetText(decodeITF($$GetText()));
}

/* === Exemplos de uso === *
let encoded = '<wWNnnWnnnWwWNnnwnWNnNnwNwnnWWnnNwWnwnNNwnnWWnnnWWnnnWWnnnWWnNnwwNwwNNnnWNnwwnNNwwNNnw>';
console.log('codigo.:', '3611365048000910000000000130261016');
console.log('encoded:', encoded);
console.log('decoded:', decodeITF(encoded));

console.log('codigo.:', '180701173101161388001000207120720181');
encoded = '&lt;WnnNwnnwWNNnwwNwnnNWWwnnNNnwwNwNNnwWNnnwWnnWnnnWWnwnNNwnnWWnnwNNwNnnwWnwNNwnNnwWNnwwNWnnwN&gt;';
console.log('encoded:', encoded);
console.log('decoded:', decodeITF(encoded));
	 
console.log('codigo.:', '180701173101161388001000207120720181');
encoded = 'WnnNwnnwWNNnwwNwnnNWWwnnNNnwwNwNNnwWNnnwWnnWnnnWWnwnNNwnnWWnnwNNwNnnwWnwNNwnNnwWNnwwNWnnwN';
console.log('encoded:', encoded);
console.log('decoded:', decodeITF(encoded));
*/
console.log('codigo.:', '?');
encoded = 'WnNwnnwWNnnnWWnnnWWnnnWWnWNnnwNWnnwnnWNwNnwwNnWwnNNWnnwnwNnWnWnNwNnwNwNwNnwNnwwNnwWNnwNnnWNnwwNNwwnNNwnnWnnWNw';
console.log('encoded:', encoded);
console.log('decoded:', decodeITF(encoded));


/* */