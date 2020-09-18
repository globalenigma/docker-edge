FROM shiftinv/wine-dotnet:staging-48-vnc

# install dependencies
USER root
RUN $APT_CMD update \
 && $APT_CMD install -y curl wget jq unzip \
 && apt-get clean \
 && find /var/lib/apt/lists/ /tmp/ /var/tmp/ -mindepth 1 -maxdepth 1 -exec rm -rf "{}" +
USER user

# disable gecko popup
ENV WINEDLLOVERRIDES="mshtml=d;$WINEDLLOVERRIDES"

# install edge-browser

# add desktop icon

# copy initial config, create link for launcher config

