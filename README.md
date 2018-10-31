vim-git-blame
==========
```

 _    ________  ___      ________________    ____  __    ___    __  _________
| |  / /  _/  |/  /     / ____/  _/_  __/   / __ )/ /   /   |  /  |/  / ____/
| | / // // /|_/ /_____/ / __ / /  / /_____/ __  / /   / /| | / /|_/ / __/   
| |/ // // /  / /_____/ /_/ // /  / /_____/ /_/ / /___/ ___ |/ /  / / /___   
|___/___/_/  /_/      \____/___/ /_/     /_____/_____/_/  |_/_/  /_/_____/   
                                                                             

```

See Git Blame information in the status bar for the currently selected line.

![screenshot](screenshot.png)

Installation
--------------

Simply Install

If you don't have a preferred installation method, I recommend
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

```bash
    cd ~/.vim/bundle
    git clone https://github.com/elquimista/vim-git-blame.git
```

Using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'elquimista/vim-git-blame'
```

Using [Vundle](https://github.com/VundleVim/Vundle.vim)

```viml
Plugin 'elquimista/vim-git-blame'
```

Default bindings
-----------------

**The default leader has been changed to `<leader>bl` to avoid
conflicts with other plugins you may have installed.** This can easily be
changed by rebinding the leader in your vimrc:

```vim
nnoremap <leader>bl :call gitblame#echo()<CR>
```

Quick start guide
-----------------

just use `<leader>bl`

Self-Promotion
--------------

Like vim-git-blame? Follow [me](https://github.com/elquimista) and the [repository](https://github.com/elquimista/vim-git-blame).

License
-------

See [MIT License](https://github.com/elquimista/vim-git-blame/blob/master/LICENSE).

