# Qualcomm Draginwing gadget

## Install dependencies

```
sudo apt update
sudo apt install git snapd qemu-user-static ubuntu-dev-tools
sudo snap install --classic ubuntu-image
```

## Build the image

```
sudo ubuntu-image --sector-size=4096 classic server-image.yaml
```
or
```
sudo ubuntu-image --sector-size=4096 classic desktop-image.yaml
```

For NVMe or eMMC images, remove `--sector-size=4096`.


## Generate dtb.bin

To generate the dtb.bin file, runs generate-dtb tool with your generated image
as parameter. It depends on package `dosfstools` and `mtools`.
```
./generate-dtb --sector-size=4096 <image>
```

For NVMe or eMMC images, remove `--sector-size=4096`.
