# GPT-3-Encoder Wrapper

I spun up this project to create a programmatic wrapper for a tokenizer tool for GPT models (you can see OpenAI's web-based tool [here](https://platform.openai.com/tokenizer)). The [gpt-3-encoder](https://www.npmjs.com/package/gpt-3-encoder), which provides a programmatic interface for tokenizing text, is a JS implementation of OpenAI's original python BPE (byte pair encoding) encoder/decoder.

To make the wrapper, I am using [NodeRunner for Ruby](https://github.com/bridgetownrb/node-runner) to execute JavaScript in a Ruby context via Node. This gem is based on [ExecJS](https://github.com/rails/execjs), which I tried to use at first but did _not_ allow the use of CommonJS `require()`. 