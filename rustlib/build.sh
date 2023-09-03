#!/bin/bash

cargo update

rustup target add \
    aarch64-linux-android \
    armv7-linux-androideabi \
    x86_64-linux-android \
    i686-linux-android

cargo install cargo-ndk
for i in armeabi-v7a arm64-v8a x86 x86_64;do cargo ndk -t ${i} -o ../app/src/main/jniLibs/  build;done