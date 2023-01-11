#!/bin/sh -e

# Intel SGX SDK 2.18
# https://download.01.org/intel-sgx/sgx-linux/2.18/distro/ubuntu20.04-server/
# https://download.01.org/intel-sgx/sgx-linux/2.18/docs/Intel_SGX_SW_Installation_Guide_for_Linux.pdf
export INTEL_SGX_SDK_INSTALLER_URL="https://download.01.org/intel-sgx/sgx-linux/2.18/distro/ubuntu20.04-server/sgx_linux_x64_sdk_2.18.100.3.bin"

# Rust SGX SDK 1.1.6
export RUST_SGX_SDK_REVISION="27bd225ae6dbcd1d0a6d4d9590acc4d73c5195c2"

"$(dirname "$0")"/prepare.sh
