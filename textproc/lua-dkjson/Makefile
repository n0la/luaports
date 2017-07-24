# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

COMMENT =	pure Lua implementation of JSON

V =		2.5
PKGNAME =	lua-dkjson-${V}

GH_ACCOUNT =	luadist
GH_PROJECT =	dkjson
GH_TAGNAME =	${V}

CATEGORIES =	textproc

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =	lua52 lua53
FLAVOR ?=

MODULES =		lang/lua

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/dkjson.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
