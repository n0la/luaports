# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	date and time library for Lua

V =		2.1.2
DISTNAME =	lua-date-${V}

GH_ACCOUNT =	tieske
GH_PROJECT =	date
GH_TAGNAME =	version_${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/Tieske/date

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =	${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/date.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
