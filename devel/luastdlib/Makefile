# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:11 espie Exp $

PKG_ARCH =      *

COMMENT =	lua library of common programming tasks
V =		41.2.0

GH_ACCOUNT =	lua-stdlib
GH_PROJECT =	lua-stdlib
GH_TAGNAME = 	release-v${V}

DISTNAME =	${GH_PROJECT:S/-//}-${V}

CATEGORIES =	devel

HOMEPAGE =	http://lua-stdlib.github.io/lua-stdlib

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/lua
NO_TEST =	Yes

CONFIGURE_ENV =		LUA=lua${MODLUA_VERSION:S/.//}
CONFIGURE_ARGS =	--docdir="${PREFIX}/share/doc/${FULLPKGNAME}"
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
