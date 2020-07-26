#!/bin/sh

iconpath16='/usr/share/icons/HighContrast/16x16'

cat <<EOF | xmenu | sh &
Applications
	IMG:$iconpath16/apps/firefox.png	Web Browser	firefox

System
	IMG:$iconpath16/apps/utilities-system-monitor.png	System Monitor	bspc rule -a St --one-shot state=fullscreen desktop=VIII && st -A 1 -e gotop &

VPN Info
	IMG:$iconpath16/status/network-vpn.png	$(piactl get connectionstate)	piactl connect
	IMG:$iconpath16/status/network-wireless-encrypted.png	$(piactl get vpnip)	notify-send -i "$HOME/.config/icons/vpn-48.png" "$(piactl get connectionstate)" "$(piactl get region)"
	IMG:$iconpath16/actions/mark-location.png	$(piactl get region)	notify-send -i "$HOME/.config/icons/vpn-48.png" "$(piactl get connectionstate)" "$(piactl get region)"

EOF
