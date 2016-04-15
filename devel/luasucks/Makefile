# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	OpenBSD friendly wrapper for luarock based ports

V =		0.1
DISTNAME =	luasucks-${V}

GH_ACCOUNT =	n0la
GH_PROJECT =	luasucks
GH_TAGNAME =	${V}

CATEGORIES =	devel

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua
RUN_DEPENDS =		lang/lua/5.3 \
			devel/lua-cliargs,lua53

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/luasucks ${PREFIX}/bin

.include <bsd.port.mk>
