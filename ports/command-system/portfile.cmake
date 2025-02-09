vcpkg_from_git(    
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mehran-kh-z/command-system
    REF 79d18d8c1fc3b53dda6bceab5ca0213ff1a37658
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
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.md")