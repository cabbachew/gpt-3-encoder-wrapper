const { encode, decode } = require('gpt-3-encoder');

const str = 'Hello, world!';
const encoded = encode(str);

const decoded = decode(encoded);

console.log('encoded:', encoded);

// Output number of tokens
console.log('encoded length:', encoded.length);

for(let token of encoded) {
  console.log({token, string: decode([token])});
}

console.log('decoded:', decoded);