if status is-interactive
    # Commands to run in interactive sessions can go here

    #pywal
    cat $HOME/.cache/wal/sequences

    #PATH
    set PATH $HOME/.local/bin:"$PATH"
end
fish_add_path $HOME/.spicetify
