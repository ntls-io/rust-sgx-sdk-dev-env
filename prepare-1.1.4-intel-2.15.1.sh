#!/bin/sh -e

# Intel SGX SDK 2.15.1
# https://01.org/intel-softwareguard-extensions/downloads/intel-sgx-linux-2.15.1-release
# https://download.01.org/intel-sgx/sgx-linux/2.15.1/distro/ubuntu20.04-server/
# https://download.01.org/intel-sgx/sgx-linux/2.15.1/docs/Intel_SGX_SW_Installation_Guide_for_Linux.pdf
export INTEL_SGX_SDK_INSTALLER_URL="https://download.01.org/intel-sgx/sgx-linux/2.15.1/distro/ubuntu20.04-server/sgx_linux_x64_sdk_2.15.101.1.bin"

# Rust SGX SDK 1.1.4
# Merge of 1.1.4-testing branch, plus follow-up fixes.
# See: https://github.com/apache/incubator-teaclave-sgx-sdk/issues/360
export RUST_SGX_SDK_REVISION="565960cd7b4b36d1188459d75652619971c43f7e"

"$(dirname "$0")"/prepare.sh
