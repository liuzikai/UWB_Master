# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# compile C with /usr/local/bin/arm-none-eabi-gcc
C_FLAGS = -g -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk  

C_DEFINES = 

C_INCLUDES = -I/Users/liuzikai/Files/UWB_Master/apps/blinky/include -I/Users/liuzikai/Files/UWB_Master/apps/blinky/include/blinky/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/apps/blinky/src -I/Users/liuzikai/Files/UWB_Master/apps/blinky/src/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/bin/targets/dwm1001_blinky/generated/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/cmsis-core/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/cmsis-core/include/cmsis-core/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/cmsis-core/src/ext -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/hal/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/hal/include/hal/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/include/nordic/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/nrf52xxx/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/nrf52xxx/include/nrf52xxx/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/drivers -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/drivers/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/drivers/src -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/drivers/src/prs -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/hal -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/mdk -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/soc -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/templates -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/templates/nRF51 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/templates/nRF52810 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/templates/nRF52832 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/hw/mcu/nordic/src/ext/nrfx/templates/nRF52840 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/kernel/os/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/kernel/os/include/os/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/libc/baselibc/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/libc/baselibc/include/baselibc/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/console/stub/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/console/stub/include/stub/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/defs/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/defs/include/defs/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/flash_map/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/flash_map/include/flash_map/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/flash_map/src -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/flash_map/src/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/log/common/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/log/common/include/common/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/log/stub/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/log/stub/include/stub/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/mfg/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/mfg/include/mfg/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/sys/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/sys/include/sys/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/sysinit/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/sys/sysinit/include/sysinit/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/util/mem/include -I/Users/liuzikai/Files/UWB_Master/repos/apache-mynewt-core/util/mem/include/mem/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/mynewt-dw1000-core/hw/bsp/dwm1001/include -I/Users/liuzikai/Files/UWB_Master/repos/mynewt-dw1000-core/hw/bsp/dwm1001/include/bsp -I/Users/liuzikai/Files/UWB_Master/repos/mynewt-dw1000-core/hw/bsp/dwm1001/include/dwm1001/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/repos/mynewt-dw1000-core/hw/bsp/dwm1001/src -I/Users/liuzikai/Files/UWB_Master/repos/mynewt-dw1000-core/hw/bsp/dwm1001/src/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/targets/dwm1001_blinky/include -I/Users/liuzikai/Files/UWB_Master/targets/dwm1001_blinky/include/dwm1001_blinky/arch/cortex_m4 -I/Users/liuzikai/Files/UWB_Master/targets/dwm1001_blinky/src -I/Users/liuzikai/Files/UWB_Master/targets/dwm1001_blinky/src/arch/cortex_m4 

# Custom flags: CMakeFiles/sys_flash_map.dir/repos/apache-mynewt-core/sys/flash_map/src/flash_map.c.o_FLAGS = -DAPP_NAME=blinky -DAPP_blinky -DARCH_NAME=cortex_m4 -DARCH_cortex_m4 -DBSP_NAME=dwm1001 -DBSP_dwm1001 -DMYNEWT=1 -DNRF52 -Og -Wall -Werror -fdata-sections -ffunction-sections -fno-exceptions -ggdb -mcpu=cortex-m4 -mthumb -mthumb-interwork
