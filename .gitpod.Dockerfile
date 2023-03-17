FROM gitpod/workspace-full

RUN wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb

USER root
    
RUN apt install ./nvim-linux64.deb
RUN apt-get -y install cmake \
    python3-neovim

USER gitpod

RUN git clone -b thendo https://github.com/thendo-rambane/kickstart.nvim.git ~/.config/nvim
