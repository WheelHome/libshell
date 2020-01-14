git_sync_check()
{
    local_version=`git show-ref heads/$1`
    remote_version=`git ls-remote | grep -w "$1"`

    lv=($local_version)
    rv=($remote_version)

    lv=${lv[0]}
    rv=${rv[0]}

    if [ $lv == $rv ];then
        return 1
    fi
    return 0
}
