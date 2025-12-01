if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /opt/homebrew/bin
fish_add_path ~/go/bin
alias v=nvim

function fish_greeting
end

starship init fish | source

