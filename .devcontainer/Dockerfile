
FROM mcr.microsoft.com/devcontainers/base:bookworm

ARG USERNAME=vscode
ENV PATH "$PATH:/home/${USERNAME}/bin"

# Download the oh-my-posh binary
RUN mkdir /home/${USERNAME}/bin; \
    mkdir /home/${USERNAME}/poshtheme; \
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-$(dpkg --print-architecture) -O /home/${USERNAME}/bin/oh-my-posh; \
    chmod +x /home/${USERNAME}/bin/oh-my-posh; \
    chown ${USERNAME}: /home/${USERNAME}/bin
