function opvn --description 'OpenVPN helper function'
    set -l config_file ~/Downloads/vpn.ovpn

    # Check if an argument is provided
    if test (count $argv) -eq 0
        echo "Usage: opvn [c|l|d]"
        echo "Commands:"
        echo "  c - Connect to VPN"
        echo "  l - List active sessions"
        echo "  d - Disconnect active session"
        return 1
    end

    switch $argv[1]
        case c
            openvpn3 session-start --config $config_file

        case l
            openvpn3 sessions-list

        case d
            # Get the session path from the active session
            set -l session_path (openvpn3 sessions-list | grep "Path:" | awk '{print $2}')
            if test -n "$session_path"
                openvpn3 session-manage --disconnect --path $session_path
            else
                echo "No active VPN session found"
                return 1
            end

        case '*'
            echo "Invalid command. Use: c, l, or d"
            return 1
    end
end
