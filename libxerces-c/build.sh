TERMUX_PKG_HOMEPAGE=https://xerces.apache.org/xerces-c/
TERMUX_PKG_DESCRIPTION="A validating XML parser library for C++"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@spvkgn"
TERMUX_PKG_VERSION=3.2.4
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://www.apache.org/dist/xerces/c/3/sources/xerces-c-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=3d8ec1c7f94e38fee0e4ca5ad1e1d9db23cbf3a10bba626f6b4afa2dedafe5ab
TERMUX_PKG_DEPENDS="libc++, libiconv"
TERMUX_PKG_RM_AFTER_INSTALL="bin share/doc/xerces-c"
TERMUX_PKG_FORCE_CMAKE=true

termux_step_pre_configure() {
	LDFLAGS+=" -liconv"
}
