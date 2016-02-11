#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
	// Framebuffer
	"/sys/class/graphics/fb0",

	"/sys/block/mmcblk0",
	"/sys/devices/platform/msm_sdcc.1*",
	"/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0",
	"/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001",
	"/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0",
	"/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p13", // boot
	"/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p21", // cache
	"/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p1",  // modem
	"/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p19", // persist
	"/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p20", // system
	"/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p23", // userdata
	"/sys/bus/mmc",
	"/sys/bus/mmc/drivers/mmcblk",
	"/sys/module/mmc_core",
	"/sys/module/mmcblk",

	// Input stuff
        "/sys/devices/virtual/misc/uinput",
        "/sys/devices/virtual/input*",
	"/sys/devices/platform/sec_keys/input*", // Volume keys
	"/sys/devices/platform/msm_ssbi.0/pm8921-core/sec_powerkey/input*", // Power key

	// ADB stuff
        "/sys/devices/virtual/tty/ptmx",
        "/sys/devices/virtual/misc/android_adb",
        "/sys/devices/virtual/android_usb/android0/f_adb",
        "/sys/bus/usb",
	
	// MicroSD card
	"/sys/block/mmcblk1",
	"/sys/devices/platform/msm_sdcc.2*",

	// USB-OTG
	"/sys/devices/platform/msm_hsusb_host*",

 NULL
};
