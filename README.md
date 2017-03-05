# README

Elrodeo is a low contrast color scheme with dark and light modes.
Inspired and derived from the [ghostbuster](https://github.com/MvanDiemen/ghostbuster) theme.

<img src="https://github.com/chmllr/elrodeo-vim-colorscheme/raw/master/dark.png" width="430" />
<img src="https://github.com/chmllr/elrodeo-vim-colorscheme/raw/master/light.png" width="430" />

## Configuration

```viml
" sets the theme
colorscheme elrodeo
" sets F10 as a switch between dark and light modes
map <F10> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>
```

