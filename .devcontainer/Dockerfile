FROM mcr.microsoft.com/devcontainers/base:bookworm

# Download the oh-my-posh binary
RUN mkdir -s /home/${USERNAME}/bin; \
    mkdir -s /home/${USERNAME}/poshtheme; \
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-$(dpkg --print-architecture) -O /home/${USERNAME}/bin/oh-my-posh; \
    chmod +x /home/${USERNAME}/bin/oh-my-posh; \
    chown ${USERNAME}: /home/${USERNAME}/bin

# Install NerdFont
RUN oh-my-posh font install Meslo; \
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O /home/${USERNAME}/themes.zip; \
    unzip /home/${USERNAME}/themes.zip -d /home/${USERNAME}/poshtheme; \
    chmod 777 /home/${USERNAME}/poshtheme/*.json; \
    rm /home/${USERNAME}/themes.zip
