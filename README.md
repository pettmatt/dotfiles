# My custom dotfiles

**It's expected  that the dotfiles are placed in `Home` directory in a `Dotfiles` directory.**

Use `stow` command to manage custom dotfiles.

https://www.gnu.org/software/stow/manual/stow.html

Note for self, don't point to a file with stow command. Just point to the directory.

In the case of neovim the stow command works as follows:

```cmd
stow --target="$HOME/.config/nvim" --dir="$HOME/Dotfiles/nvim" --stow .
```