#!/bin/bash
set -e

if ! which rustup > /dev/null; then
    which curl > /dev/null || (apt update && apt install curl -y -qq)
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
fi

rustup target add wasm32-wasip1