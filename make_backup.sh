#! /bin/sh

backup="$HOME/Documents/genetique.info/backups/$(date --rfc-3339=date)"

echo "Making a backup to $backup"

sudo rsync -az --numeric-ids --info=progress2  -e 'ssh -i /home/arkanosis/.ssh/id_rsa' root@bismuth.arkanosis.net:/ "$backup" \
    --exclude /bin \
    --exclude /boot \
    --exclude /dev \
    --exclude /extlinux.conf \
    --exclude /home/arkanosis/.cache \
    --exclude /home/arkanosis/.local/share/lxc \
    --exclude /home/asdp/.cache \
    --exclude /home/asdp/.local/share/lxc \
    --exclude /initrd.img \
    --exclude /ldlinux.c32 \
    --exclude /ldlinux.sys \
    --exclude /lib \
    --exclude /lib64 \
    --exclude /lost+found \
    --exclude /media \
    --exclude /mnt \
    --exclude /opt \
    --exclude /proc \
    --exclude /run \
    --exclude /sbin \
    --exclude /sys \
    --exclude /tmp \
    --exclude /usr \
    --exclude /var \
    --exclude /vmlinuz
