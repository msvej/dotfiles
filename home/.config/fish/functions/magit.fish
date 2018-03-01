function magit -d 'Run magit-status on emacs'
    if not type -q emacsclient
        echo "emacsclient: not found" >&2
        return 1
    end
    emacsclient -n --eval "(magit-status \"$PWD\")"
end
