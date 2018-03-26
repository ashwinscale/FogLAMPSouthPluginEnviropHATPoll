******************************************************************************
              FogLAMP South Enviro pHAT poll mode Plugin
******************************************************************************

This directory contains a plugin that receives readings from the Envrio pHAT.
Readings come from:
BMP280 temperature/pressure sensor
TCS3472 light and RGB colour sensor
LSM303D accelerometer/magnetometer sensor

Requirements:
sudo apt-get install python3-envirophat
OR
sudo pip3 install envirophat

=============
Since the plugin runs in a separate process and its shutdown is controlled by the
central FogLAMP server, pressing CTRL-C does not terminate the process properly.


