From debian:unstable-slim
#FROM multiarch/crossbuild

#Run echo "deb http://www.emdebian.org/debian/ unstable main" > /etc/apt/sources.list.d/emdebian.list
#Run echo "deb http://ftp.us.debian.org/debian/ unstable main" >> /etc/apt/sources.list.d/emdebian.list

Run dpkg --add-architecture armhf
Run dpkg --add-architecture armel
Run dpkg --add-architecture arm64
Run dpkg --add-architecture mips
Run dpkg --add-architecture mips64
Run dpkg --add-architecture mipsel
Run dpkg --add-architecture mips64el
Run dpkg --add-architecture i386
Run dpkg --add-architecture powerpc
Run dpkg --add-architecture ppc64el

Run apt-get update && apt-get install -y \
        crossbuild-essential-armhf gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf \
        crossbuild-essential-armel gcc-arm-linux-gnueabi g++-arm-linux-gnueabi \
        crossbuild-essential-arm64 gcc-aarch64-linux-gnu g++-aarch64-linux-gnu \
        gcc-mips-linux-gnu gcc-multilib-mips-linux-gnu gcc-multilib-mipsel-linux-gnu gcc-multilib-mips64-linux-gnuabi64 gcc-multilib-mips64el-linux-gnuabi64 \
        g++-mips-linux-gnu g++-multilib-mips-linux-gnu g++-multilib-mipsel-linux-gnu g++-multilib-mips64-linux-gnuabi64 g++-multilib-mips64el-linux-gnuabi64 \
        gcc-9-multilib-i686-linux-gnu g++-9-multilib-i686-linux-gnu \
        gcc-9-multilib-powerpc-linux-gnu gcc-9-multilib-powerpc64-linux-gnu g++-9-multilib-powerpc-linux-gnu g++-9-multilib-powerpc64-linux-gnu

#Run useradd hu -s /bin/bash
#Run usermod -a -G adm hu 
