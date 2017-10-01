# bats-sandbox

Making a safe space to play with `bats` and friends.

### Set up

Clone these repos or a fork of same, to the root of the project, don't worry they are listed in the `.gitignore`.

https://github.com/sstephenson/bats

https://github.com/jasonkarns/bats-mock

https://github.com/ztombol/bats-support

https://github.com/ztombol/bats-assert

https://github.com/ztombol/bats-file

To get things working without actually installing `bats` you just need it in your path. From the root of the filder something like this will get you set up to work.

```
export PATH="$PATH:$(pwd)/bats/bin"
```

### Running the example test

There is a silly simple script called `thing.sh` that can be used as a scratch pad to test.

To test it, run this:

```
bats test.bats
```

### Debugging and troubleshooting

If your stubs get messed up, use this to figure out where the temp files are:

```
echo $TMPDIR
```
