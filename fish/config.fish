if status is-interactive
    # Commands to run in interactive sessions can go here
    nvm use latest
    set GOPATH ~/go
    set -gx PNPM_HOME ~/.local/share/pnpm
end
