#!/bin/sh

process_dir() {
    pushd "${1}" 2>&1 >/dev/null
    for i in *; do
        if [ -d "${i}" ]; then
            if [ "${i}" = "male" ]; then
                cp -Rv "${i}" "janitor"
            fi
            process_dir "${i}"
        fi
    done
    popd 2>&1 >/dev/null
}

process_dir .