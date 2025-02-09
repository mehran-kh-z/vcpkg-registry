vcpkg_from_git(    
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mehran-kh-z/command-system
    REF b7a19d2bdcb26cb05c34bfbffb36bd237482dc00
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