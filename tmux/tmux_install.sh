# script to help installing tmux on centos 7
# src: https://gist.github.com/pierreprinetti/86fbcd28e5cc1b3e0b9b762e4c12fad2

sudo yum install automake

# remove old pkgs
sudo yum remove libevent libevent-devel libevent-headers

# install ncurses
sudo yum install ncurses-devel

# download libevent src
cd /usr/local/src
sudo curl -L https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz -o libevent-2.0.21-stable.tar.gz
sudo tar xvzf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
sudo ./configure && sudo make
sudo make install
sudo ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5

cd /usr/local/src
sudo curl -L https://github.com/tmux/tmux/archive/2.5.tar.gz -o tmux-2.5.tar.gz
sudo tar -xvzf tmux-2.5.tar.gz
cd tmux-2.5
sudo ./autogen.sh
sudo ./configure && sudo make
sudo make install

# install tmux on ubutnu 
# https://undebugable.wordpress.com/2017/01/29/install-tmux-at-ubuntu-14-04-computer/
