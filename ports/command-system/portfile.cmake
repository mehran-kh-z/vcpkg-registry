vcpkg_from_git(    
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mehran-kh-z/command-system
    REF c215ee4060f6c32510989243ec5f60e9701f75bc
    SHA256 36c0e935e8222545952ca5841c82595b57cc2562b6729b38c355bd46acf7251b007cf1bcc8f5d839240b29ceac5dd90810f6f9aea945bcb85a073a20fd0840c1
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS
        -DCMAKE_TOOLCHAIN_FILE=${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake
)
vcpkg_cmake_install()
vcpkg_install_copyright("${SOURCE_PATH}/COPYING")