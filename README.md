# README

Elrodeo is a low contrast color scheme with dark and light modes.
Inpired and derived from the [ghostbuster](https://github.com/MvanDiemen/ghostbuster) theme.

![dark](https://github.com/chmllr/elrodeo-vim-colorscheme/raw/master/dark.png)
![light](https://github.com/chmllr/elrodeo-vim-colorscheme/raw/master/light.png)

## Configuration

```viml
" sets the theme
colorscheme elrodeo
" sets F10 as a switch between dark and light modes
map <F10> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>
```

