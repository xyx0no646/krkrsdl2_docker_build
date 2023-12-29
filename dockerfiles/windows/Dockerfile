FROM ghcr.io/uyjulian/tvp_win32_build_container
WORKDIR /
RUN export PATH=$PATH:/bin
RUN sudo apt install -y musl
RUN brew install make nasm ninja cmake
CMD ["/bin/bash"]