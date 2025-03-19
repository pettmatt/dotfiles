if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2023-11-05 21:30:52
set PATH $PATH /home/pickle/.local/bin

# SOME GENERAL SETTINGS
set -U fish_user_paths $fish_user_paths $PATH
set fish_greeting

# Rust, taken from yangchenyun's config-file
set -x PATH "$HOME/.cargo/bin" $PATH

# Deno, manually add the directory to your $HOME/.bashrc (or similar)
set DENO_INSTALL_PATH "/home/pickle/.deno"
set -x PATH "$DENO_INSTALL_PATH/bin:$PATH" $PATH

set -x PATH "$HOME/.nvm/nvm.sh" $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add ~/linux/bin to PATH variable when using a login shell
if status --is-login
	set -gx PATH $PATH ~/linux/bin
end

# Start X at login
#if status is-login
#    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#        exec startx -- -keeptty
#    end
#end

# Start Sway - Not necessary
#if test -z $DISPLAY; and test (tty) = "/dev/tty1"
#    sway
#end

# pnpm
set -gx PNPM_HOME "/home/pickle/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

if not pgrep -u "$USER" ssh-agent > /dev/null
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
end
if test -f "$XDG_RUNTIME_DIR/ssh-agent.env"
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
end
