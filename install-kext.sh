#!/bin/sh

# TODO: check if System Integrity Protection is disabled

# Install into /Library/Extension
sudo cp    -r k8055.kext  /Library/Extensions/FTDI232H-CodelessKext

# Fix ownership
sudo chown -R root:wheel  /Library/Extensions/FTDI232H-CodelessKext
