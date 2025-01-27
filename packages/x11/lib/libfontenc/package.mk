# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libfontenc"
PKG_VERSION="1.1.8"
PKG_SHA256="7b02c3d405236e0d86806b1de9d6868fe60c313628b38350b032914aa4fd14c6"
PKG_LICENSE="OSS"
PKG_SITE="https://www.X.org"
PKG_URL="https://xorg.freedesktop.org/archive/individual/lib/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain util-macros zlib font-util xorgproto"
PKG_LONGDESC="Libfontenc is a library which helps font libraries portably determine and deal with different encodings of fonts."
PKG_BUILD_FLAGS="+pic"

PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared"

if [ "${PROJECT}" = "L4T" -o "${DEVICE}" = "Odin" ]; then
  PKG_CONFIGURE_OPTS_TARGET="${PKG_CONFIGURE_OPTS_TARGET/--disable-shared/--enable-shared}"
fi
