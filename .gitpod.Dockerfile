FROM gitpod/workspace-full

RUN wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
    
RUN sudo apt install ./nvim-linux64.deb \
    sudo apt install cmake python3-neovim

RUN git clone -b thendo https://github.com/thendo-rambane/kickstart.nvim.git ~/.config/nvim