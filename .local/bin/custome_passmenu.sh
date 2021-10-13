#!/usr/bin/env bash

#orgianl passmenu code to get pass-name

prefix=${PASSWORD_STORE_DIR-~/.password-store}
password_files=( "$prefix"/*.gpg )
password_files=( "${password_files[@]}" "$prefix"/**/*.gpg )
password_files=( "${password_files[@]#"$prefix"/}" )
password_files=( "${password_files[@]%.gpg}" )

password=$(printf '%s\n' "${password_files[@]}" | dmenu "$@")

pass -c "$password"


