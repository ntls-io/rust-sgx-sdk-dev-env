#!/bin/sh -e
# Extract the Intel SGX SDK to the Docker host file system.

# Required environment variable:
: "${INTEL_SGX_SDK_INSTALLER_URL:?}"

# "${SGX_SDK_PREFIX}/sgxsdk" (default "${PWD}/sgxsdk")
SGX_SDK_PREFIX=${SGX_SDK_PREFIX:-"$PWD"}

# Docker limitation: bind volumes can only get created as root.
# To have a bind volume owned by the current user, we must pre-create it with the right ownership:
mkdir -p "${SGX_SDK_PREFIX}"

if test -e "${SGX_SDK_PREFIX}/sgxsdk"; then
    echo "Directory already exists: ${SGX_SDK_PREFIX}/sgxsdk"
    echo "(Remove and try again?)"
    exit 1
fi

# The image build depends on BuildKit, so explicitly enable that for now, until it becomes the default.
# Upstream issue: https://github.com/moby/moby/issues/40379
DOCKER_BUILDKIT=1 docker build \
    --build-arg INTEL_SGX_SDK_INSTALLER_URL="${INTEL_SGX_SDK_INSTALLER_URL}" \
    --tag intel-sgx-sdk-install \
    - <"$(dirname "$0")"/Dockerfile

# Install to: ${SGX_SDK_PREFIX}/sgxsdk
# This must be the same full path inside the container, for correct symlinks.
docker run --rm \
    -u "$(id --user):$(id --group)" \
    -v "${SGX_SDK_PREFIX}:${SGX_SDK_PREFIX}" \
    intel-sgx-sdk-install \
    --prefix "${SGX_SDK_PREFIX}"

docker image rm intel-sgx-sdk-install
