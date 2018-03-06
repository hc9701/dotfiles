eval "$(dbus-launch --sh-syntax --exit-with-session)"
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
exec fcitx  &
exec i3

