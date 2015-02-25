FROM howdoicomputer/devenv

USER dev

RUN curl --location https://raw.github.com/creationix/nvm/master/install.sh | sh

RUN [ "/usr/bin/zsh", "-c", "source /home/dev/.zshrc && nvm install 0.12.0" ]
RUN [ "/usr/bin/zsh", "-c", "source /home/dev/.zshrc && nvm alias default 0.12.0" ]
