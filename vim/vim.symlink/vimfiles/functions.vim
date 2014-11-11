autocmd InsertEnter * system('echo 255 > /sys/class/leds/*/brightness')
autocmd InsertLeave * system('echo 0   > /sys/class/leds/*/brightness')
