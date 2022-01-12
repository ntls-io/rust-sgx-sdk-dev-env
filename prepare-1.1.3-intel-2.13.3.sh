#!/bin/sh -e

# Intel SGX SDK 2.13.3
# https://01.org/intel-softwareguard-extensions/downloads/intel-sgx-linux-2.13.3-release
# https://download.01.org/intel-sgx/sgx-linux/2.13.3/distro/ubuntu20.04-server/
# https://download.01.org/intel-sgx/sgx-linux/2.13.3/docs/Intel_SGX_Installation_Guide_Linux_2.13.3_Open_Source.pdf
export INTEL_SGX_SDK_INSTALLER_URL="https://download.01.org/intel-sgx/sgx-linux/2.13.3/distro/ubuntu20.04-server/sgx_linux_x64_sdk_2.13.103.1.bin"

# Rust SGX SDK 1.1.3
# Parent of PR: "Update to intel-sgx-sdk-2.14" https://github.com/apache/incubator-teaclave-sgx-sdk/pull/346
export RUST_SGX_SDK_REVISION="7c07ce0bfbacd3f4f2af53a2cdef9539018be73c"

"$(dirname "$0")"/prepare.sh
