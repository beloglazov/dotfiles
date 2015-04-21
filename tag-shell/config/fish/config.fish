# Path to oh-my-fish
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme beloglazov

# Plugins
set fish_plugins vi-mode pbcopy

# Vi-mode key bindings
function vi_mode_user -a mode

    bind \cu 'pushd ..; commandline -f repaint'
    bind \cf 'popd >/dev/null; commandline -f repaint'
    bind \cn 'cd -; commandline -f repaint'
    bind \cb 'commandline -r ""; and commandline -f "execute" "history-search-backward"'

    # Base bindings
    bind \ck up-or-search
    bind \ch backward-char
    bind \cl forward-char

    # fzf bindings
    bind \cr 'fzf-history; commandline -f repaint'
    bind \cy 'fzf-vim-fasd; commandline -f repaint'
    bind \cp 'fzf-vim-subtree; commandline -f repaint'
    bind \cs 'fzf-cd-subtree; commandline -f repaint; echo; l'
    bind \cx 'fzf-cd-fasd; commandline -f repaint; echo; l'

    # Mode-specific bindings
    switch $mode
        case normal
            bind h beginning-of-line
            bind l end-of-line
        case insert
            bind \cq vi_mode_normal
            # bind \cj down-or-search
    end
end

# Disable the welcome text
set --erase fish_greeting

# Disable GREP_OPTIONS
set --erase GREP_OPTIONS

# Load oh-my-fish configuration
. $fish_path/oh-my-fish.fish

# Add fzf to PATH
set PATH ~/bin $PATH ~/.fzf

# Addd extra PATH components
. $HOME/.config/fish/path.fish
