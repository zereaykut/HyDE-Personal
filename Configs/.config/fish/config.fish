set -g fish_greeting

if status is-interactive
    # pyenv, manage python versions
    # pyenv init - | source

    # Search terminal history (Ctrl + R)
    atuin init fish | source
    
    # zoxide is a smarter cd command, inspired by z and autojump.
    zoxide init fish | source
     
    # starship
    starship init fish | source
end

# eza
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

# cd
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# mkdir
abbr mkdir 'mkdir -p' # Always mkdir a path (this doesn't inhibit functionality to make a single dir)

# pacman
alias pacs='sudo pacman -S'    # Install a package
alias pacy='sudo pacman -Syu'  # Update packages & system
alias pacr='sudo pacman -Rscn' # Remove a package with its dependencies
alias upd='sudo reflector --latest 5 --age 2 --fastest 5 --protocol https --sort rate --save /etc/pacman.d/mirrorlist && cat /etc/pacman.d/mirrorlist && sudo pacman -Syu && fish_update_completions' # update pacman mirrorlist

# yay
alias un='yay -Rns'               # uninstall package
alias up='yay -Syu'               # update system/package/aur
alias pl='yay -Qs'                # list installed package
alias pa='yay -Ss'                # list availabe package
alias pc='yay -Sc'                # remove unused cache
alias po='yay -Qtdq | yay -Rns -' # remove unused packages, also try > yay -Qqd | yay -Rsu --print -
alias vc='vscodium --disable-gpu'     # gui code editor

# python
alias pyev='python -m venv venv'      # create python environment named env
alias pyac='. venv/bin/activate.fish'  # activate python environment in fish shell
alias jp='jupyter lab'                # run jupyter lab

# +++ #
alias cc='clear'
alias nv='nvim'
