FROM archlinux:latest

WORKDIR /build

COPY ./pacman.conf /etc/
COPY ./mirrorlist /etc/pacman.d/

RUN pacman-key --init
RUN pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
RUN pacman-key --lsign-key FBA220DFC880C036
RUN pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' 
RUN sed -i '/chaotic/s/^#//g' /etc/pacman.conf
RUN pacman -Sy 
RUN pacman -S --noconfirm just git qemu-desktop edk2-ovmf archiso 
COPY ./local-repo .
RUN ls local/repo
RUN repo-add -n -R local/repo/ashos-repo.db.tar.gz local/repo/*.pkg.tar.zst
COPY ./archiso ./archiso/
COPY ./justfile .
COPY ./init.sh .
ENTRYPOINT [ "./init.sh" ]