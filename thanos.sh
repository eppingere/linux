run_thanos(){
    for i in $(find . -type f 2> /dev/null); do
        if [ $(($RANDOM % 2)) -eq 1 ]; then
        echo "$i was snapped from existence"
        else
            echo "$i was spared"
        fi
    done
}
