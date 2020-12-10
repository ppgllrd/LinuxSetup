#!/bin/sh
gst=/usr/share/gnome-shell/gnome-shell-theme.gresource
workdir=./shell-theme

for r in `gresource list $gst`; do
	r=${r#\/org\/gnome\/shell/}
	if [ ! -d $workdir/${r%/*} ]; then
	  mkdir -p $workdir/${r%/*}
	fi
done

for r in `gresource list $gst`; do
        gresource extract $gst $r >$workdir/${r#\/org\/gnome\/shell/}
done


cd shell-theme/theme

# sed -i 's/#41494c;/#0F0F0F;/g' gnome-shell.css 


# perl -i -pe 's/#lockDialogGroup {\n  background-color: #41494c;/#lockDialogGroup {\n  background-color: #0F0F0F;/igs' gnome-shell.css 


perl -i -pe 's/#lockDialogGroup {\n  background-color: #41494c;/#lockDialogGroup {\n  background-color: #0F0F0F;/igs' gnome-shell.css 


cat > gnome-shell-theme.gresource.xml << EOF
<?xml version="1.0" encoding="UTF-8"?>
<gresources>
  <gresource prefix="/org/gnome/shell/theme">
    <file>calendar-today.svg</file>
    <file>checkbox-focused.svg</file>
    <file>checkbox-off-focused.svg</file>
    <file>checkbox-off.svg</file>
    <file>checkbox.svg</file>
    <file>dash-placeholder.svg</file>
    <file>gnome-shell.css</file>
    <file>gnome-shell-high-contrast.css</file>
   
    <file>icons/scalable/status/keyboard-hide-symbolic.svg</file>
    <file>icons/scalable/status/eye-open-negative-filled-symbolic.svg</file>   
    <file>icons/scalable/status/keyboard-layout-filled-symbolic.svg</file>
    <file>icons/scalable/status/keyboard-caps-lock-filled-symbolic.svg</file>
    <file>icons/scalable/status/keyboard-shift-filled-symbolic.svg</file>
    <file>icons/scalable/status/keyboard-enter-symbolic.svg</file>             
    <file>icons/scalable/status/message-indicator-symbolic.svg</file>

    <file>icons/scalable/actions/color-pick.svg</file>                     
    <file>icons/scalable/actions/pointer-primary-click-symbolic.svg</file>
    <file>icons/scalable/actions/pointer-double-click-symbolic.svg</file>
    <file>icons/scalable/actions/pointer-secondary-click-symbolic.svg</file>
    <file>icons/scalable/actions/pointer-drag-symbolic.svg</file>

    <file>no-events.svg</file>
    <file>no-notifications.svg</file>
    <file>pad-osd.css</file>
    <file>process-working.svg</file>
    <file>toggle-off-dark.svg</file>
    <file>toggle-off-hc.svg</file>
    <file>toggle-off.svg</file>
    <file>toggle-on-dark.svg</file>
    <file>toggle-on-hc.svg</file>
    <file>toggle-on.svg</file>
  </gresource>
</gresources>
EOF


glib-compile-resources gnome-shell-theme.gresource.xml


sudo apt install libglib2.0-dev


sudo cp /usr/share/gnome-shell/gnome-shell-theme.gresource /usr/share/gnome-shell/gnome-shell-theme.gresource.bak
sudo cp gnome-shell-theme.gresource /usr/share/gnome-shell/gnome-shell-theme.gresource



