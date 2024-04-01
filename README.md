# shGPT

shGPT - a command-line utility for accessing openAI LLMs 

## File Interaction

shGPT is configured for my personal workflow. You may not like it, but it is designed to work based off your file extension.

When working in a vim file, :vsplit to input.py, question.cpp, prompt.csv, etc.

:w

:GPT

Returns a formatted output.java, output.xml, whatever.

## .config/nvim

Just put shGPT here, nvim will find it in the nvim path and it will work probably (it does on my machine)

## init.vim

To use :GPT to launch the script from your current vim instance.


```
command GPT call GPT()

function! GPT()
    let shgpt_path = expand('~/.config/nvim/shGPT')
    let tokens = 4096
    let temperature = 0.1
    let current_file = expand('%:p')
    let creator_ftype = fnamemodify(current_file, ':e')
    let outfile = 'output.' . creator_ftype
    let shell_cmd = '! ' . shellescape(shgpt_path) . ' -s ' . tokens . ' -t ' . temperature . ' ' . shellescape(current_file)
    execute shell_cmd
    execute 'vsplit ' . outfile
endfunction
```

## Tokens

A token is considered to be 4 characters. The number of tokens set must be enough to include the length
of the provided input and expected output.

I'm pretty sure the hard limit for GPT-4 is 4096 currently?

## Temperature

The temperature parameter controls the randomness of the output. 

My personal perference is 0.1, feel free to adjust this.

Low (0.1 - 0.3)
Predictable, deterministic output.

Medium (0.4 - 0.6)
An adaptable range balancing creativity and predictability

High (0.7 - 1.0)
Creative and unpredictable. Strong possibility of hallucination.

