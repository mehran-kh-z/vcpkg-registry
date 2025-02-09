vcpkg_from_git(    
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mehran-kh-z/command-system
    REF 57907b5738e96b599ce6207716cad1c02c00fc09
    SHA256 0
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS
        -DCMAKE_TOOLCHAIN_FILE=${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake
        -DCMAKE_PREFIX_PATH="${CURRENT_INSTALLED_DIR};${QTDIR}/bin"
)
vcpkg_cmake_install()
vcpkg_install_copyright("${SOURCE_PATH}/COPYING")