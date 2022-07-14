#!/bin/sh -e
# Prepare the Intel and Rust SGX SDKs.

# Required environment variables:
: "${INTEL_SGX_SDK_INSTALLER_URL:?}"
: "${RUST_SGX_SDK_REVISION:?}"

test -d sgxsdk && rm -r sgxsdk
"$(dirname "$0")/intel-sgx-sdk-installer/extract-intel-sgx-sdk.sh"

# Ensure a sparse checkout:
test -d incubator-teaclave-sgx-sdk || {
    git clone --no-checkout --filter=tree:0 https://github.com/apache/incubator-teaclave-sgx-sdk
    git -C incubator-teaclave-sgx-sdk sparse-checkout set common edl
}
git -C incubator-teaclave-sgx-sdk switch -d "${RUST_SGX_SDK_REVISION}"

cat >environment <<EOF
# Intel SGX SDK
. "$PWD/sgxsdk/environment"

# Rust SGX SDK
export CUSTOM_COMMON_PATH="$PWD/incubator-teaclave-sgx-sdk/common"
export CUSTOM_EDL_PATH="$PWD/incubator-teaclave-sgx-sdk/edl"

# Default to software mode, for convenience.
export SGX_MODE="SW"
EOF

echo
echo "Set environment variables using:"
echo ". $PWD/environment"
