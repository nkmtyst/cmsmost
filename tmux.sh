#!/bin/zsh

cd ~/project/cmsmost

tmux has-session -t cmsmost 
if [ $? != 0 ] ; then
    tmux new-session -s cmsmost -n log -d 
    tmux split-window -v -p 88 -t cmsmost:1
    tmux split-window -h -p 20 -t cmsmost:1.2
    tmux split-window -v -p 70 -t cmsmost:1.3
    tmux split-window -v -p 50 -t cmsmost:1.4

#    tmux send-keys -t cmsmost:1.1 "air -c ./.air.toml" C-m
#    tmux send-keys -t cmsmost:1.3 "npx parcel ./jsx/* -d ./js/" C-m
#    tmux send-keys -t cmsmost:1.4 "cd ./public" C-m
#    tmux send-keys -t cmsmost:1.4 "compass watch" C-m

    tmux select-window -t cmsmost:1.2
fi
    tmux attach -t cmsmost 

