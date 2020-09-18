#docker-edge

Docker image with [chrome-edge] running in Wine, based on shiftinv/wine-dotnet:staging-48-vnc

## Usage
- Download the [docker-compose.yml] (https://github.com/globalenigma/docker-edge/blob/master/docker-compose.yml) file and run `docker-compose up`  
  _or_
- Run
    ```
    docker run -it \
        --name "usbhelper" \
        -v "$(pwd)/data/userdata:/home/user/usbhelper/userdata" \
        -v "$(pwd)/data/downloads:/home/user/usbhelper/downloads" \
        -p "127.0.0.1:5901:5901" \
        -e VNCPASSWD="<unset>" \
        shiftinv/usbhelper:latest
    ```

In both cases, replace `<unset>` with a new 8-character VNC password before starting.  
Once started, you can connect to `127.0.0.1:5901` with a VNC client.
