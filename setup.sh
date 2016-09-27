#!/bin/bash

sudo echo "export PS1='\[\033[1;30m\]\t \[\033[0;31m\]\u@\h \[\033[0;32m\]\w \[\033[0m\] \$'" >> /etc/bashrc
sudo echo 'export HISTTIMEFORMAT="%F %T "' >> /etc/bashrc
