FROM alpine
RUN apk add --no-cache \
    bash \
    e2fsprogs \
    parted \
    sfdisk \
    openssh \
    xz \
    iproute2 \
    dhcpcd \
    eudev \
    jq \
    acpi \
    rsync \
    rsyslog \
    sudo \
    openntpd \
    && rm -rf /var/lib/apk/*

RUN rm -f /sbin/poweroff /sbin/shutdown /sbin/reboot /sbin/halt /usr/sbin/poweroff /usr/sbin/shutdown /usr/sbin/reboot /usr/sbin/halt /etc/motd
