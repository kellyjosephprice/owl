FROM haxe:4.0.5

RUN apt update && apt install -y \
  make \
  build-essential \
  libpng-dev \
  libturbojpeg-dev \
  libvorbis-dev \
  libopenal-dev \
  libsdl2-dev \
  libmbedtls-dev \
  libuv1-dev

WORKDIR /tmp/
ADD https://github.com/HaxeFoundation/hashlink/archive/1.11.tar.gz ./
RUN tar xf 1.11.tar.gz
WORKDIR /tmp/hashlink-1.11
RUN make && make install && ldconfig

WORKDIR /usr/src/owl

RUN haxelib install \
  #hldx \
  #hlopenal \
  #hlsdl \
  heaps

ADD . ./

CMD ["haxe"]
