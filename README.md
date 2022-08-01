# Building RTL8720DN binaries to use it as Wifi SoC AT commands
![Build artifacts](https://github.com/RomainPelletant/RTL8720DN_AT/workflows/Build%20artifacts/badge.svg?branch=master)
![Build release](https://github.com/RomainPelletant/RTL8720DN_AT/workflows/CI/badge.svg?tag=lastest)


## Build docker image toolchain

    docker build -t ameba_rtl8720dn .

## Compile firmware

    docker run -rm -v ${%PWD%}:/workdir ameba_rtl8720dn bash -c "cd /workdir/ambd_sdk/project/realtek_amebaD_va0_example/GCC-RELEASE/project_hp && make all && cd /workdir/ambd_sdk/project/realtek_amebaD_va0_example/GCC-RELEASE/project_lp && make all"

## Build & artifacts CI

    Find generated binaries as artifacts in Actions tab (in Github) and click on a successfull job : download artifact
