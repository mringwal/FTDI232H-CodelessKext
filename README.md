# FTDI232H-CodelessKext
 Allow use of SPI/I2C/GPIO modes with FTDI232H

Apple's FTDI Driver (/System/Library/Extension/AppleUSBFTDI.kext) controls the the FTDI232 and provides a serial port.
To use the FTDI232H with the MPSSE engine for SPI, I2C, or GPIO control, Apple's extension can unloaded, or modified to not match the FTDI232H. The latter even requires to disable Sysem Integrity Protection.

This extension, when properly signed, takes precendce over Apple's FTDI driver.

To use:
- disable SIP
  - boot into recovery mode
  - csrutil disable
  - reboot into normal mode again
- run ./install-kext.sh or manually copy into /Library/Extensions and set owner:group to root:wheel
