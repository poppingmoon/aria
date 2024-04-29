FROM ubuntu:latest

ARG TARGETARCH

ENV FVM_DIR=/opt/.fvm_flutter

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y \
    curl git unzip xz-utils zip libglu1-mesa \
    clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev \
    libsecret-1-dev libsecret-1-0

RUN ARCH=$(case $TARGETARCH in \
    x86_64)         echo 'x64' ;; \
    arm64|aarch64)  echo 'arm64' ;; \
    armv7l)         echo 'arm' ;; \
    esac) \
    && FVM_VERSION=$(curl -s https://api.github.com/repos/leoafarias/fvm/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/') \
    && URL=https://github.com/leoafarias/fvm/releases/download/$FVM_VERSION/fvm-$FVM_VERSION-linux-$ARCH.tar.gz \
    && curl -L $URL -o fvm.tar.gz \
    && mkdir -p $FVM_DIR \
    && tar xzf fvm.tar.gz -C $FVM_DIR \
    && rm -f fvm.tar.gz \
    && ln -sf $FVM_DIR/fvm/fvm /usr/local/bin/fvm
