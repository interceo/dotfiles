killall -p polybar &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar_$m &
  done
else
  polybar --reload example &
fi