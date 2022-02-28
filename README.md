# Rust SGX SDK development environment helpers

This repository contains helper scripts to prepare files needed for a Rust SGX SDK development environment.

This includes:

* [Intel SGX SDK] (using Docker to run the installer)
* [Rust SGX SDK] headers and EDL files (using a sparse Git checkout)

[Intel SGX SDK]: https://github.com/intel/linux-sgx
[Rust SGX SDK]: https://github.com/apache/incubator-teaclave-sgx-sdk

## Prerequisites

1. Git 2.25+ (for sparse checkout support)
2. [Docker](https://docs.docker.com/get-docker/)

## Usage

1. Run script
    ```
    ./prepare-<version>.sh
    ```
2. Source the generated `environment` script
    ```
    source ./environment
    ```

See the script comments for more details.
