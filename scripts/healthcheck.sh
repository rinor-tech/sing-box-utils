#!/bin/sh
PING=8.8.8.8
if ! ping -c1 -W2 $PING >/dev/null; then
  logger -t singbox "Internet down, restarting sing-box..."
  /jffs/scripts/services-stop 2>/dev/null
  /jffs/scripts/services-start
fi