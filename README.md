# shGPT

shGPT - a command-line utility for accessing openAI LLMs 

## init.vim

```
command GPT call GPT()

function! GPT()
    let shgpt_path = expand('~/.config/nvim/shGPT')
    let tokens = 2000
    let temperature = 0.3
    let current_file = expand('%:p')
    let creator_ftype = fnamemodify(current_file, ':e')
    let outfile = 'output.' . creator_ftype
    let shell_cmd = '! ' . shellescape(shgpt_path) . ' -s ' . tokens . ' -t ' . temperature . ' ' . shellescape(current_file)
    execute shell_cmd
    execute 'vsplit ' . outfile
endfunction
```
