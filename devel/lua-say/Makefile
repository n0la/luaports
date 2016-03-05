# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

COMMENT =	a key value storage for Lua optimised for i18n

V =		1.3-1
DISTNAME =	lua-say
PKGNAME =	${DISTNAME}-${V:S/-//}

GH_ACCOUNT =	olivine-labs
GH_PROJECT =	say
GH_TAGNAME =	v${V}

CATEGORIES =	devel

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DATADIR}/say
	${INSTALL_DATA} ${WRKSRC}/src/init.lua ${MODLUA_DATADIR}/say

.include <bsd.port.mk>
