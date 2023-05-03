tmux switch-client -T prefix                                         # act as a leader key

sleep "$2"                                                           # delay before status bar appears

if [ "$(tmux display-message -p '#{client_prefix}')" -eq 1 ]; then
  tmux set status on                                                 # only show status bar if needed
fi

while [ "$(tmux display-message -p '#{client_prefix}')" -eq 1 ] || \
      [ "$(tmux display-message -p '#{pane_in_mode}')" -eq 1 ]; do   # wait until the leader key is consumed and the pane is not in a special mode
  sleep 0.01 # most systems' sleep has the neccessary precision
done

sleep "$3"                                                           # linger for the amount specified by the user

if ! [ "$(tmux display-message -p '#{client_prefix}')" -eq 1 ]; then
  tmux set status off                                                # hide status if the prefix had not been pressed during the stall
fi
