time=$(date '+<span font="Vampire Wars 50">Time : %I:%M %p</span>')
date=$(date '+%a, %d %b %Y')
centered_date=$(printf '<span font="Vampire Wars 20">%*s</span>' $(((${#time}+${#date})/2)) "$date")
battery=$(acpi -b | awk '{print $4}' | sed 's/,//')
battery_status=$(acpi -b | awk '{print $3}' | sed 's/,//' )
battery="<span font=\"Vampire Wars 50\" color=\"#ff0000\">Battery : $battery</span> <span font=\"Vampire Wars 20\" color=\"#ff0000\"> $battery_status</span>"

echo -e "\n$time\n$centered_date\n\n$battery" | rofi -dmenu -markup-rows -p "System Information" -font "Vampire Wars 20" -color-normal "#008000, #ffffff, #008000, #008000, #ffffff"
