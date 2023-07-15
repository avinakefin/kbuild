#!/bin/sh
set -eux

GKI_ROOT=$(pwd)

echo "[+] GKI_ROOT: $GKI_ROOT"

if test -d "$GKI_ROOT/common/drivers"; then
     DRIVER_DIR="$GKI_ROOT/common/drivers"
elif test -d "$GKI_ROOT/drivers"; then
     DRIVER_DIR="$GKI_ROOT/drivers"
else
     echo '[ERROR] "drivers/" directory is not found.'
     echo '[+] You should modify this script by yourself.'
     exit 127
fi

test -d "$GKI_ROOT/KernelSU" || git clone https://github.com/tiann/KernelSU
cd "$GKI_ROOT"

echo "[+] buat folder kernelsu"
mkdir drivers/kernelsu

echo "[+] Copy kernel su driver to $DRIVER_DIR"

cd "$DRIVER_DIR"
if test -d "$GKI_ROOT/common/drivers"; then
     ln -sf "../../KernelSU/kernel" "kernelsu"
elif test -d "$GKI_ROOT/drivers"; then
     ln -sf "../KernelSU/kernel" "kernelsu"
fi
cd "$GKI_ROOT"
echo "copy file to driver"
     cp -rf $GKI_ROOT/KernelSU/kernel $GKI_ROOT/drivers

echo '[+] Add kernel su driver to Makefile'

DRIVER_MAKEFILE=$DRIVER_DIR/Makefile
DRIVER_KCONFIG=$DRIVER_DIR/Kconfig
grep -q "kernelsu" "$DRIVER_MAKEFILE" || printf "obj-\$(CONFIG_KSU) += kernelsu/\n" >> "$DRIVER_MAKEFILE"
grep -q "kernelsu" "$DRIVER_KCONFIG" || sed -i "/endmenu/i\\source \"drivers/kernelsu/Kconfig\"" "$DRIVER_KCONFIG"
grep -q "drivers/kernel" "$DRIVER_MAKEFILE" || printf "obj-\$(CONFIG_KSU) += kernel/\n" >> "$DRIVER_MAKEFILE"
grep -q "drivers/kernel" "$DRIVER_KCONFIG" || sed -i "/endmenu/i\\source \"drivers/kernel/Kconfig\"" "$DRIVER_KCONFIG"

echo '[+] Done.'
