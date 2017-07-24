# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	SSL library binding for Lua

V =		20161214
DISTNAME =	lua-ossl-${V}

GH_ACCOUNT =	wahern
GH_PROJECT =	luaossl
GH_TAGNAME =	rel-${V}

CATEGORIES =	security

HOMEPAGE =	https://github.com/wahern/luaossl

MAINTAINER =		Florian Stinglmayr <florian@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =	lua52 lua53
FLAVOR ?=

WANTLIB =		 crypto m pthread ssl ${MODLUA_WANTLIB}

MODULES =		lang/lua

NO_TEST =		Yes

do-build:
	cd ${WRKSRC} && make all${MODLUA_VERSION}

do-install:
	cd ${WRKSRC} && make install${MODLUA_VERSION}

.include <bsd.port.mk>
