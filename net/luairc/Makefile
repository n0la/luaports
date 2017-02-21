# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	irc library for Lua
V =		1.1

PKGNAME =	luairc-${V}

GH_ACCOUNT =	n0la
GH_PROJECT =	luairc
GH_TAGNAME =	${V}

CATEGORIES =	net

HOMEPAGE =	https://github.com/JakobOvrum/LuaIRC

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua

MODLUA_RUN_DEPENDS +=	net/luasocket \
			security/luasec

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/LuaIRC-${V}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/irc
	${INSTALL_DATA} ${WRKSRC}/*.lua ${MODLUA_DATADIR}/irc

.include <bsd.port.mk>
