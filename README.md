This is a vim syntax file for [Aetolia](http://www.aetolia.com)'s `color_write`
artifact, as well as any organisation help files (`CHELP, GHELP, ...`).
Currently, it only supports the inline format described in-game in `HELP
WRITING IN COLOR`.

## Installation

Use your favorite vim plugin manager. I recommend
[pathogen](https://github.com/tpope/vim-pathogen). The syntax works on `.aet`
files by default.

## Configuration

Make sure you have syntax highlighting enabled in your vimrc:

```
syntax on
```

To conceal the color tags, make sure you have conceal (vim 7.3+) enabled:

```
set conceallevel = 3
let g:vim_aetolia_conceal = 1
```

## License

Copyright (c) Louis Handfield. Distributed under vim's license. See `:help license`.
