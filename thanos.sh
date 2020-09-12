run_thanos(){
  while true; do
    export usage=$(df -h / | egrep -o '[0-9]+%' | head -n 1 | sed "s/%//g")
    if [ "$usage" -ge "$(echo 75)" ] ; then
      for i in $(find / -type f 2> /dev/null); do
          if [ $(($RANDOM % 2)) -eq 1 ]; then
#              rm -rf $i
              echo "$i was snapped from existence"
          else
              echo "$i was spared"
          fi
        done
      fi
    sleep 300
  done
}

nohup run_thanos &


