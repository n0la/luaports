# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	mime type library for Lua

DISTNAME =	lua-mimetypes-0.1

GH_ACCOUNT =	tst2005
GH_PROJECT =	lua-mimetypes
GH_COMMIT =	fd570b2dff729b430c42d7bd6a767c197d38384b

CATEGORIES =	devel

HOMEPAGE =	https://github.com/tst2005/lua-mimetypes

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =	lua52 lua53
FLAVOR ?=

MODULES =		lang/lua

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/mimetypes.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
