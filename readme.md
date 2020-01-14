# Libshell

- libecho : `./bin/echo_test.sh`
- libgit : `./bin/git_test.sh`

## Use

run the merge script to get the `libshell`

```
./get_lib.sh
```
include `libshell` to write the script

```shell
#!/bin/bash
source libshell # include the lib

Trace hello,world
Ok hello,world
Warm hello,world
Error hello,world

git_sync_check master
echo ?

```

