### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Zangetsu kernel by aizen.q
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=lisa
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=17.0
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

# shell variables
block=boot;
is_slot_device=1;
ramdisk_compression=auto;

# boot shell variables
block=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

write_boot; # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk
## end boot install
