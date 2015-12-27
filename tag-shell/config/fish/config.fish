# The correct default editor
set --export EDITOR vim

# Key bindings
function fish_user_key_bindings
    fish_vi_key_bindings

    # Exit the insert mode on C-Q
    bind -M insert -m default \cq force-repaint

    # History search
    bind \ck up-or-search
    bind -M insert \ck up-or-search

    # Basic movement
    bind \ch backward-char
    bind \cl forward-char
    bind -M insert \ch backward-char
    bind -M insert \cl forward-char
    bind h beginning-of-line
    bind l end-of-line

    # Directory navigation
    bind -M insert \cu 'pushd ..; commandline -f repaint'
    bind -M insert \cf 'popd >/dev/null; commandline -f repaint'
    bind -M insert \cn 'cd -; commandline -f repaint'

    # fzf bindings
    bind -M insert \cr 'fzf-history; commandline -f repaint'
    bind -M insert \cy 'fzf-vim-fasd; commandline -f repaint'
    bind -M insert \cp 'fzf-vim-subtree; commandline -f repaint'
    bind -M insert \cs 'fzf-cd-subtree; commandline -f repaint'
    bind -M insert \cx 'fzf-cd-fasd; commandline -f repaint'
end

# Abbreviations
abbr -a as apt search
abbr -a bc bc -l
abbr -a diff colordiff
abbr -a f 'find . | ag --smart-case'
abbr -a fd 'find . -type d | ag --smart-case'
abbr -a g ag --smart-case
abbr -a ga git add
abbr -a gb git branch
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gp git push
abbr -a gs git status -sb
abbr -a gu git pull --rebase
abbr -a l ls -lh
abbr -a ll ls -alh
abbr -a lls ls -alhSr
abbr -a lt ls -alhtr
abbr -a mkdirs mkdir -p
abbr -a psg 'ps aux | ag --smart-case'
abbr -a view vim -R -
abbr -a x dtrx

# Add fzf to PATH
set PATH ~/.bin $PATH ~/.fzf

# Add extra PATH components
for file in ~/.config/fish/path*.fish
    . $file
end
