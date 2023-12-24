FROM debian
WORKDIR /
RUN export PATH=$PATH:/bin
RUN apt-get update
RUN apt-get install -y \
	build-essential \
	libsdl2-dev \
	git \
	python3 \
	curl \
	nasm \
	make \
	cmake \
	nodejs \
	ninja-build
RUN git clone https://github.com/emscripten-core/emsdk.git /emsdk
RUN cd /emsdk
RUN bash /emsdk/emsdk install latest
RUN bash /emsdk/emsdk activate latest 
CMD ["/bin/bash"]