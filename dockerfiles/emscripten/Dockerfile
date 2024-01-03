FROM debian
WORKDIR /
RUN export PATH=$PATH:/bin
RUN apt-get update
RUN apt-get install -y \
	build-essential \
	git
RUN git clone https://github.com/emscripten-core/emsdk.git /emsdk
RUN cd /emsdk
RUN bash /emsdk/emsdk install latest
RUN bash /emsdk/emsdk activate latest 
RUN source "/emsdk/emsdk_env.sh"
CMD ["/bin/bash"]