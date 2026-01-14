# Qualcomm Draginwing gadget

## Install dependencies

```
sudo apt update
sudo apt install git snapd qemu-user-static ubuntu-dev-tools
sudo snap install --classic ubuntu-image
```

## Build image

```
sudo ubuntu-image --sector-size=4096 classic server-image.yaml
```
or
```
sudo ubuntu-image --sector-size=4096 classic desktop-image.yaml
```

For NVMe or eMMC images, remove `--sector-size=4096`.
