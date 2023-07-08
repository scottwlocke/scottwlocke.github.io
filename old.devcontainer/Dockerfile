FROM mcr.microsoft.com/devcontainers/base:bookworm
RUN wget https://github.com/errata-ai/vale/releases/download/v2.26.0/vale_2.26.0_Linux_64-bit.tar.gz && \
    tar -xvzf vale_2.26.0_Linux_64-bit.tar.gz -C bin && \
    export PATH=./bin:"$PATH"

ARG USERNAME=vscode
ENV PATH "$PATH:/home/${USERNAME}/bin"

# Download the oh-my-posh binary
RUN mkdir /home/${USERNAME}/bin; \
    mkdir /home/${USERNAME}/poshtheme; \
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-$(dpkg --print-architecture) -O /home/${USERNAME}/bin/oh-my-posh; \
    chmod +x /home/${USERNAME}/bin/oh-my-posh; \
    chown ${USERNAME}: /home/${USERNAME}/bin

   
# Install NerdFont
RUN oh-my-posh font install Meslo; \
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O /home/${USERNAME}/themes.zip; \
    unzip /home/${USERNAME}/themes.zip -d /home/${USERNAME}/poshtheme; \
    chmod 777 /home/${USERNAME}/poshtheme/*.json; \
    rm /home/${USERNAME}/themes.zip

# Deploy oh-my-posh prompt to Powershell:
COPY Microsoft.PowerShell_profile.ps1 /home/${USERNAME}/.config/powershell/Microsoft.PowerShell_profile.ps1

ENV USERNAME=${USERNAME}
ENV POSH_THEME="/home/${USERNAME}/poshtheme/powerlevel10k_rainbow.omp.json"

# Override vscode's own Bash prompt with oh-my-posh:
RUN sed -i 's/^__bash_prompt$/#&/' /home/${USERNAME}/.bashrc && \
    echo "eval \"\$(oh-my-posh init bash --config $POSH_THEME)\"" >> /home/${USERNAME}/.bashrc; \
    # Override vscode's own ZSH prompt with oh-my-posh:
    echo "eval \"\$(oh-my-posh init zsh --config $POSH_THEME)\"" >> /home/${USERNAME}/.zshrc