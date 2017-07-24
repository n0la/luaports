# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	text template library with embedded Lua support
V =		1.3.0
DISTNAME =	etlua-${V}

GH_ACCOUNT =	leafo
GH_PROJECT =	etlua
GH_TAGNAME =	v${V}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/leafo/etlua

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/etlua.lua ${MODLUA_DATADIR}


.include <bsd.port.mk>
