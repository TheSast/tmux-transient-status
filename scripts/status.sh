tmux set -g prefix "$1"                                             # set the prefix again for ":send-prefix" bindings to work
tmux switch-client -T prefix                                        # act as a leader key
tmux set status on                                                  # show status bar
while [ "$(tmux display-message -p '#{client_prefix}')" -eq 1 ]; do # \
  sleep 0.01 # most systems' sleep has the neccessary precision     #  wait until the leader key is consumed 
done                                                                # /
tmux set -g prefix None                                             # unset the prefix again
sleep "$2"                                                          # linger for the amount specified by the user
tmux set status off                                                 # hide status bar
