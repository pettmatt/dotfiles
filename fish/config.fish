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

if not pgrep -u "$USER" ssh-agent > /dev/null
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
end
if not test -f "$SSH_AUTH_SOCK"
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
end
