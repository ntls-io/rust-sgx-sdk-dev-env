#!/bin/sh -e

# Intel SGX SDK 2.20
# https://download.01.org/intel-sgx/sgx-linux/2.20/distro/ubuntu20.04-server/
# https://download.01.org/intel-sgx/sgx-linux/2.20/docs/Intel_SGX_SW_Installation_Guide_for_Linux.pdf
export INTEL_SGX_SDK_INSTALLER_URL="https://download.01.org/intel-sgx/sgx-linux/2.20/distro/ubuntu20.04-server/sgx_linux_x64_sdk_2.20.100.4.bin"

# Rust SGX SDK 1.1.6
export RUST_SGX_SDK_REVISION="3c903bdac4e503dd27b9b1f761c4abfc55f2464c"

"$(dirname "$0")"/prepare.sh
