FROM shiftinv/wine-dotnet:staging-48-vnc

# install dependencies
USER root
RUN $APT_CMD update \
 && $APT_CMD install -y curl wget unzip zenity q4wine winehq-staging wine-staging wine-staging-amd64 wine-staging-i386:i386 libpcsclite1 pcscd pcsc-tools \
 && apt-get clean \
 && find /var/lib/apt/lists/ /tmp/ /var/tmp/ -mindepth 1 -maxdepth 1 -exec rm -rf "{}" +
USER user

# disable gecko popup
ENV WINEDLLOVERRIDES="mshtml=d;$WINEDLLOVERRIDES"

# install chrome
COPY scripts/install_chrome.sh /scripts/install_chrome.sh
#RUN /scripts/install_chrome.sh

# add desktop icon

# copy initial config, create link for launcher config

