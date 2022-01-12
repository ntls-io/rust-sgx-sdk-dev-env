#!/bin/sh -e

# Intel SGX SDK 2.14
# https://01.org/intel-softwareguard-extensions/downloads/intel-sgx-linux-2.14-release
# https://download.01.org/intel-sgx/sgx-linux/2.14/distro/ubuntu20.04-server/
# https://download.01.org/intel-sgx/sgx-linux/2.14/docs/Intel_SGX_SW_Installation_Guide_for_Linux.pdf
export INTEL_SGX_SDK_INSTALLER_URL="https://download.01.org/intel-sgx/sgx-linux/2.14/distro/ubuntu20.04-server/sgx_linux_x64_sdk_2.14.100.2.bin"

# Rust SGX SDK 1.1.3
# PR: "Update to intel-sgx-sdk-2.14" https://github.com/apache/incubator-teaclave-sgx-sdk/pull/346
export RUST_SGX_SDK_REVISION="d107bd0718f723221750a4f2973451b386cbf9d2"

"$(dirname "$0")"/prepare.sh
