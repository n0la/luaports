# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

COMMENT =	assertion library for Lua

V =		1.7.9
DISTNAME =	luassert
PKGNAME =	${DISTNAME}-${V}

GH_ACCOUNT =	olivine-labs
GH_PROJECT =	${DISTNAME}
GH_TAGNAME =	v${V}

CATEGORIES =	devel

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua
MODLUA_RUN_DEPENDS +=	devel/lua-say

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} \
		${MODLUA_DATADIR}/luassert \
		${MODLUA_DATADIR}/luassert/matchers \
		${MODLUA_DATADIR}/luassert/formatters \
		${MODLUA_DATADIR}/luassert/languages
	${INSTALL_DATA} ${WRKSRC}/src/*.lua ${MODLUA_DATADIR}/luassert
	${INSTALL_DATA} ${WRKSRC}/src/matchers/*.lua \
		${MODLUA_DATADIR}/luassert/matchers
	${INSTALL_DATA} ${WRKSRC}/src/formatters/*.lua \
		${MODLUA_DATADIR}/luassert/formatters
	${INSTALL_DATA} ${WRKSRC}/src/languages/*.lua \
		${MODLUA_DATADIR}/luassert/languages

.include <bsd.port.mk>
