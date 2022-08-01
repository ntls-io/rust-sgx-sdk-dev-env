#!/bin/sh -e

# Intel SGX SDK 2.17.0
# https://01.org/intel-softwareguard-extensions/downloads/intel-sgx-linux-2.17-release
# https://download.01.org/intel-sgx/sgx-linux/2.17/distro/ubuntu20.04-server/
# https://download.01.org/intel-sgx/sgx-linux/2.17/docs/Intel_SGX_SW_Installation_Guide_for_Linux.pdf
export INTEL_SGX_SDK_INSTALLER_URL="https://download.01.org/intel-sgx/sgx-linux/2.17/distro/ubuntu20.04-server/sgx_linux_x64_sdk_2.17.100.3.bin"

# Rust SGX SDK 1.1.5
export RUST_SGX_SDK_REVISION="d2d339cbb005f676bb700059bd51dc689c025f6b"

"$(dirname "$0")"/prepare.sh
