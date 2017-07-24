# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	pure Lua postgres driver

V =		1.8.0
DISTNAME =	lua-pgmoon-${V}

GH_ACCOUNT =	leafo
GH_PROJECT =	pgmoon
GH_TAGNAME =	v${V}

CATEGORIES =	databases

HOMEPAGE =	https://github.com/leafo/pgmoon

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =	lua52 lua53
FLAVOR ?=

MODULES =		lang/lua
MODLUA_RUN_DEPENDS +=	devel/lpeg \
			devel/lua-bitop

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/pgmoon
	${INSTALL_DATA} ${WRKSRC}/pgmoon/*.lua ${MODLUA_DATADIR}/pgmoon

.include <bsd.port.mk>
