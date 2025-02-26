# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased][unreleased]
- Added Wonderswan Color libretro emulator
- Added Lutro libretro core (LUA framework)
- Added NeoGeo as a separated system
- Added NeoGeo Pocket Color libretro emulator
- Added Vectrex libretro emulator
- Added Game And Watch libretro emulator
- Added Lynx libretro emulator
- Added PRBoom libretro 
- Modif zoid theme
- Patched kernel to support retrobit controllers
- Patched kernel to support 4NES4SNES controllers
- Patched kernel to fix the blinking xbox led. Only on rpi2
- Added gpu_mem for 256mo rpi1
- Unified the branches rpi and rpi2
- Updated buildroot sources
- Added libretro cheats
- Added favorites to emulationstation (from kaptainkia es modifications)
- Added mk_arcade_joystick_rpi with one more button
- Added adafruit-retrogame utility
- Added recalbox-configgen support
- Added sixad driver choice
- Added SuperGrafx libretro emulator
- Added NXengine libretro core (cavestory)
- Added Atari 7800 libretro emulator
- Added hostname in recalbox.conf
- Added recalbox-system (recalbox.arch file)
- Changed bash as default shell
- Corrected update system
- Added Tgbdual libretro core
 
## [3.2.11] - 2015-03-24
- Corrected issues with controllers with idientical names
- Added zoid theme

## [3.2.10] - 2015-03-17
- Corrected itialian translation
- Recompiled modules for 3.19

## [3.2.9] - 2015-03-15
### Changed
- Added fba emulator switch
- Added snes9x, catsfc, pocketsnes switch 
- Added virtualboy platform
- Fixed : buttons on axis in retroarch config
- Added timestamps in logs
- Fixed xboxdrv pacakge
- Bumbep to Kodi-14.2-rc1
- Added clrmame info and dat files for mame and fba
- Added fbalibretro system
- Added italian translation

## [3.2.8] - 2015-03-09
### Changed
- Added switches in recalbox.conf
    - kodi x button switch
    - game resolution switch
    - update check switch
    - xboxdrv switch
    - localtime switch
- Fixed : mupen rice plugin package
- Fixed : xboxdrv pacakge
- Added localtime support
- Added mgd extension for snes
- Fixed : L2 + R2 mapping in retroarch
- Fixed : only axis based joystick configuration
- Changed all package to specific versions
- Bumped to 3.19 for rpi2
- Bumped to last userland and firmware
- Kodi PVR support
- Added cifs support
- Added ipv6 support
- Fixed : hats for specials key on retroarch

## [3.2.7] - 2015-03-03
- Fixed boot process

## [3.2.6] - 2015-03-03
### Changed
- Added z64 extenson for n64
- Added xbox360 wireless defaut configuration
- Fixed : power management of ew-7811un
- Added kodi mysql support
- Fixed nfs startup script

## [3.2.5] - 2015-03-03
### Changed
- Added samba socket option for large files copy
- Added db9 driver package
- Added gamecon driver package
- Added new setting configuration file (recalbox.conf)
- Added new startup system
- Fixed : ssid with space from emulationstation
- Fixed : ntfs automount
