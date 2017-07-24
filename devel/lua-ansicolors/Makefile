# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	terminal colours package for Lua

DISTNAME =	lua-ansicolors-0.1

GH_ACCOUNT =	hoelzro
GH_PROJECT =	ansicolors
GH_COMMIT =	38853d7b2786543200bf5ba015914d5a38cfdf19

CATEGORIES =	devel

HOMEPAGE =	https://github.com/hoelzro/ansicolors

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =	lua52 lua53
FLAVOR ?=

MODULES =		lang/lua

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/ansicolors.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
