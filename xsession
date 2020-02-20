export ENV=$HOME/.kshrc

for i in $(ls /usr/local/share/fonts/); do
  if [ -d "/usr/local/share/fonts/$i" ]; then
    xset fp+ "/usr/local/share/fonts/$i"
  fi
done


for i in $(ls /usr/local/share/fonts/powerline); do
  if [ -d "/usr/local/share/fonts/powerline/$i" ]; then
    xset fp+ "/usr/local/share/fonts/powerline/$i"
  fi
done

xset b off
xset fp rehash
fc-cache -v
fc-cache -vf /usr/local/share/fonts/powerline/SourceCodePro


export LC_CTYPE="en_US.UTF-8"

xsetroot -solid grey &
xrdb -merge ~/.Xresources &
xterm -bg black -fg white +sb &
feh --bg-max ~/Pyre2.png &
tint2 &
cwm
