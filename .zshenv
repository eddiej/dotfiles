# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

alias dev='ssh eddiejohnston@eddie.dev.17hats.com'

alias mountlib='sshfs -o Ciphers=arcfour -o workaround=nodelaysrv:buflimit -o no_check_root -o auto_cache -o compression=no eddiejohnston@eddie.dev.17hats.com:/mnt/suitesetup/lib ~/hats/lib'
alias mountrails='sshfs -o Ciphers=arcfour -o workaround=nodelaysrv:buflimit -o no_check_root -o auto_cache -o compression=no eddiejohnston@eddie.dev.17hats.com:/mnt/ebs/17hats ~/hats/rails'

alias unmountlib='umount ~/hats/lib;'
alias unmountrails='umount ~/hats/rails;'
