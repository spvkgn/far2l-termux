#shellcheck disable=all
TERMUX_PKG_HOMEPAGE=https://github.com/elfmz/far2l
TERMUX_PKG_DESCRIPTION="FAR Manager v2 - Linux port"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@spvkgn"
TERMUX_PKG_VERSION=${_VERSION}+git${_COMMIT_DATE}
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/elfmz/far2l/archive/master.tar.gz
TERMUX_PKG_SHA256=SKIP_CHECKSUM
TERMUX_PKG_BUILD_DEPENDS="fmt, libspdlog"
TERMUX_PKG_DEPENDS="libc++, libarchive, libuchardet, pcre"
TERMUX_PKG_SUGGESTS="chafa, exiftool, htop, timg"
TERMUX_PKG_RM_AFTER_INSTALL="share/icons share/applications"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_BUILD_TYPE=Release
-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON
-DGIT_HASH=${_COMMIT:0:7}
-DANDROID=ON
-DUSEWX=OFF
"
