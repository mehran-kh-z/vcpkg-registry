vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mehran-kh-z/command-system
    REF c215ee4060f6c32510989243ec5f60e9701f75bc
    SOURCE_PATH "ports/command-system"
    SHA512 0
    HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
vcpkg_install_copyright("${SOURCE_PATH}/COPYING")