# Rust SGX SDK development environment helpers

This repository contains helper scripts to prepare files needed for a Rust SGX SDK development environment.

This includes:

* [Intel SGX SDK] (using Docker to run the installer)
* [Rust SGX SDK] headers and EDL files (using a sparse Git checkout)

[Intel SGX SDK]: https://github.com/intel/linux-sgx
[Rust SGX SDK]: https://github.com/apache/incubator-teaclave-sgx-sdk

## Usage

1. Run `prepare-<version>.sh`
2. Source the generated `environment` script

See the script comments for more details.
