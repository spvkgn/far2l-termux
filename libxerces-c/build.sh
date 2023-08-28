#shellcheck disable=all
TERMUX_PKG_HOMEPAGE=https://xerces.apache.org/xerces-c/
TERMUX_PKG_DESCRIPTION="A validating XML parser library for C++"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@spvkgn"
TERMUX_PKG_VERSION=3.2.5
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://archive.apache.org/dist/xerces/c/3/sources/xerces-c-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=545cfcce6c4e755207bd1f27e319241e50e37c0c27250f11cda116018f1ef0f5
TERMUX_PKG_DEPENDS="libc++, libiconv"
TERMUX_PKG_RM_AFTER_INSTALL="bin share/doc/xerces-c"
TERMUX_PKG_FORCE_CMAKE=true

termux_step_pre_configure() {
	LDFLAGS+=" -liconv"
}
