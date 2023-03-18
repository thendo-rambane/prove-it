FROM gitpod/workspace-full

RUN wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
    
RUN sudo apt install ./nvim-linux64.deb
RUN sudo apt-get -y install cmake \
    python3-neovim
    
RUN rm -rf ./nvim-linux.deb

RUN git clone -b thendo https://github.com/thendo-rambane/kickstart.nvim.git ~/.config/nvim
