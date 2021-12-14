FROM archlinux:base

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm archiso

WORKDIR /opt
RUN cp -r /usr/share/archiso/configs/releng/ archlive

WORKDIR /opt/archlive/
RUN echo "pv" >> packages.x86_64
RUN echo 'root:$6$YsVwghYlCQ.PVDl4$ul3JjrK1Tw5Zdiu8pMDoXQXDoCe9ngn8GQ3BJpTZIbE2gCGyonxjRDSvB4f5TnhOjCQjpQaD1utF34y77JMH2/:18975::::::' > airootfs/etc/shadow

# RUN mkarchiso -v -w /app/workdir /opt/archlive/
