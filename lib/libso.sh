install_so()
{
    # $1 : so file
    # $2 : install path

    if [ ! -f $1 ];then
        return 0
    fi

    filename=$(basename ${1})
    libname=${filename%.so*}
    soname=`readelf -d $1 | grep  "$libname.so.*[^]]" -o `
    mv $filename $2/$soname

    lib=$soname
    while [ $lib != $libname.so ]
    do
        lib=${lib%.*}
        ln -bs $2/$soname $2/$lib
    done

}
