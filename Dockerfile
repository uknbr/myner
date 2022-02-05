#https://github.com/alexellis/mine-with-docker/blob/master/cpu-opt/Dockerfile
FROM ubuntu:xenial
WORKDIR /root/
RUN apt-get update && apt-get -qy install \
 automake \
 build-essential \
 libcurl4-openssl-dev \
 libssl-dev \
 git \
 ca-certificates \
 libjansson-dev libgmp-dev g++ --no-install-recommends
RUN git clone --recursive https://github.com/JayDDee/cpuminer-opt cpuminer-multi
WORKDIR /root/cpuminer-multi
RUN ./autogen.sh
RUN CFLAGS="-O3 -march=native -Wall" CXXFLAGS="$CFLAGS -std=gnu++11" ./configure --with-curl
RUN make

# Myner
COPY run.sh .
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]