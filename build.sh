#!/bin/sh

# Compiles fftw3 for Android

#NDK Version r9c  http://dl.google.com/android/ndk/android-ndk-r9c-linux-x86_64.tar.bz2
NDK_DIR="/home/NDK/android-ndk-r8e"
INSTALL_DIR="`pwd`/jni/fftw3"
SRC_DIR="`pwd`/../fftw-3.3.4"

cd $SRC_DIR

export PATH="$NDK_DIR/toolchains/arm-linux-androideabi-4.7/prebuilt/linux-x86/bin/:$PATH"
export SYS_ROOT="$NDK_DIR/platforms/android-9/arch-arm/"
export CC="arm-linux-androideabi-gcc --sysroot=$SYS_ROOT -march=armv7-a -mfloat-abi=softfp"
export LD="arm-linux-androideabi-ld"
export AR="arm-linux-androideabi-ar"
export RANLIB="arm-linux-androideabi-ranlib"
export STRIP="arm-linux-androideabi-strip"
#export CFLAGS="-mfpu=neon -mfloat-abi=softfp"

mkdir -p $INSTALL_DIR
./configure --host=arm-eabi \
	--prefix=$INSTALL_DIR \
	--enable-float \
	--enable-threads \
    #--with-combined-threads \
	--enable-neon

make clean
make -j4 install

cd -

exit 0
