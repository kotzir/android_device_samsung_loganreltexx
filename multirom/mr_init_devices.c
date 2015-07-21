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

	// ADB stuff
	"/sys/bus/usb",
	"/sys/class/android_usb/android0/f_adb",
	"/sys/class/misc/android_adb",
	"/sys/class/tty/ptmx",
	
	// EMMC stuff
	"/sys/block/mmcblk0",
	"/sys/bus/mmc",
	"/sys/bus/mmc/drivers/mmcblk",
	"/sys/devices/platform/msm_sdcc.1*",
	"/sys/module/mmcblk",
	"/sys/module/mmc_core",
	
	// MicroSD card
	"/sys/block/mmcblk1",
	"/sys/devices/platform/msm_sdcc.2*",

	// Input stuff
        "/sys/class/misc/uinput",
	"/sys/devices/virtual/input/input2*", // Touchscreen
	"/sys/devices/platform/sec_keys/input*", // Volume keys
	"/sys/devices/platform/msm_ssbi.0/pm8921-core/sec_powerkey/input*", // Power key

	// USB-OTG
	"/sys/devices/platform/msm_hsusb_host*",

 NULL
};
