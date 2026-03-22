#!/sbin/sh

# Give the system a moment to initialize the I2C bus
sleep 2

# Force correct permissions on the firmware file
chmod 0664 /vendor/firmware/AbovCapSense.BIN
chown system:system /vendor/firmware/AbovCapSense.BIN

# Manually trigger a driver rebinding if it's stuck
# Note: The path below may vary; check 'find /sys -name abov_capsense' if this fails
echo "1" > /sys/bus/i2c/drivers/abov_capsense/unbind 2>/dev/null
sleep 1
echo "i2c-3" > /sys/bus/i2c/drivers/abov_capsense/bind 2>/dev/null

exit 0
