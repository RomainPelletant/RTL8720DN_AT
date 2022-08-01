# Building RTL8720DN binary to use it as Wifi SoC AT commands
![Build artifacts](https://github.com/Artifeel/checkin_fw/workflows/Build%20artifacts/badge.svg?branch=master)


## Build docker image toolchain

    docker build -t ameba_rtl8720dn . 

## Compile firmware

    docker run -rm -v ${%PWD%}:/workdir ameba_rtl8720dn bash -c "cd /workdir/ambd_sdk/project/realtek_amebaD_va0_example/GCC-RELEASE/project_hp && make all"
