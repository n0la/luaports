# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	library for loading arbitrary Lua files

V =		1.1.0
DISTNAME =	lua-loadkit-${V}

GH_ACCOUNT =	leafo
GH_PROJECT =	loadkit
GH_TAGNAME =	v${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/leafo/loadkit

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/loadkit.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
