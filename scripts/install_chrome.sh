#!/bin/bash -xe
set -o pipefail


wget https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BA436DE2C-42DB-1B5D-B6E0-04AB7DFB19DE%7D%26lang%3Den%26browser%3D4%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dstable-arch_x86-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe

winetricks ChromeSetup.exe


