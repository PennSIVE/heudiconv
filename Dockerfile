FROM nipy/heudiconv:0.9.0
RUN rm -rf /opt/dcm2niix* && \
    git clone https://github.com/rordenlab/dcm2niix.git && \
    cd dcm2niix && \
    mkdir build && cd build && \
    cmake -DZLIB_IMPLEMENTATION=Cloudflare -DUSE_JPEGLS=ON -DUSE_OPENJPEG=ON .. && \
    make
ENV PATH=$PATH:/dcm2niix/build/bin
