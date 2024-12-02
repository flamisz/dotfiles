#!/bin/bash

# Bring the interface down
echo "Bringing the interface down..."
sudo ifconfig en0 down
if [ $? -eq 0 ]; then
    echo "Interface brought down successfully."
else
    echo "Failed to bring the interface down." >&2
    exit 1
fi

# Flush the routing table
echo "Flushing the routing table..."
sudo route flush
if [ $? -eq 0 ]; then
    echo "Routing table flushed successfully."
else
    echo "Failed to flush the routing table." >&2
    exit 1
fi

# Bring the interface up
echo "Bringing the interface up..."
sudo ifconfig en0 up
if [ $? -eq 0 ]; then
    echo "Interface brought up successfully."
else
    echo "Failed to bring the interface up." >&2
    exit 1
fi

echo "All steps completed successfully."

