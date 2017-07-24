# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

COMMENT =	event subscription/listening framework for Lua

V =		1.1
DISTNAME =	lua-mediator-${V}

GH_ACCOUNT =	olivine-labs
GH_PROJECT =	mediator_lua
GH_TAGNAME =	v${V}

CATEGORIES =	devel

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
	${INSTALL_DATA} ${WRKSRC}/src/mediator.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
