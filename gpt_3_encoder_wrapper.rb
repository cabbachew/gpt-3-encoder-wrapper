require 'node-runner'

runner = NodeRunner.new(
  <<~JAVASCRIPT
    const { encode, decode } = require('gpt-3-encoder');
    const encoded = (response) => {
      return encode(response);
    }
    const decoded = (response) => {
      return decode(response);
    }

  JAVASCRIPT
)

encoded = runner.encoded "Hello World! I am a wrapper for the JavaScript GPT-3 Encoder!"
p "Encoded: #{encoded}"
# Count length of encoded array
p "Length: #{encoded.length}"

decoded = runner.decoded(encoded)
p "Decoded: #{decoded}"