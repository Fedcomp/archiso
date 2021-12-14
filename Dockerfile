FROM archlinux:base

RUN pacman -Syu --noconfirm

WORKDIR /app
