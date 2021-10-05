## ZMIX 2.5
Preconfigured ZSH shell with Oh-my-ZSH and additional frequently used system utilities like vim which are available 
within the default system repositories.

Optimized for Debian 8,9,10,11, Ubuntu 16.04, 18.04, 20.04 and up. 

Needs testing on Linux Mint systems. Please try and share your experiences.

### Download
```wget -O /tmp/zmix.sh https://github.com/rvdmeij/zmix/raw/master/zmix.sh```

### Verify
```sha512sum zmix.sh```

This should return:
```c72410f6e87809261a30a0403281aa5e14ad0ac3d3dcc22eab3e9d333b4fffa422cca9754e11e45e6ee6bfe8fc9659717ef64e3de69e0b32bd30b2e0018f7110  zmix.sh```

### Permissions
Set the execution permission:
``chmod a+x zmix.sh``

### Install
You need to be root or use sudo to run the installation script:
``sudo ./zmix.sh``

#### Credits 
This project is based on the Oh-my-ZSH framework: https://github.com/ohmyzsh/ohmyzsh
