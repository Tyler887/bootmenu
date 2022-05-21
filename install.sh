if [ "`whoami`" -ne "root" ]; then
  echo "You must run this script as root. Sorry."
  echo "Tip: Running with sudo without setting the --user option will"
  echo "actually install bootmenu."
  exit 1
fi
apt-get install dialog -y
echo "Copying the service to: /lib/systemd/system"
cp bootmenu.service /lib/systemd/system
echo "Enabling the service..."
systemctl daemon-reload
systemctl enable bootmenu
echo "Reboot the system to show the boot menu :)"
