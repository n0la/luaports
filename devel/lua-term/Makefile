# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

COMMENT =	terminal library for Lua

V =		0.04
DISTNAME =	lua-term
PKGNAME =	${DISTNAME}-${V}

GH_ACCOUNT =	hoelzro
GH_PROJECT =	${DISTNAME}
GH_TAGNAME =	${V}

CATEGORIES =	devel

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c ${MODLUA_WANTLIB}

MODULES =		lang/lua

NO_TEST =		Yes

do-build:
	cd ${WRKSRC}; env LUA_VER="${MODLUA_VERSION}" LUA_DIR="${PREFIX}" $(MAKE)

do-install:
	cd ${WRKSRC}; env LUA_VER="${MODLUA_VERSION}" LUA_DIR="${PREFIX}" $(MAKE) install

.include <bsd.port.mk>
