# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

COMMENT =	terminal library for Lua

V =		0.04
DISTNAME =	lua-term
PKGNAME =	${DISTNAME}-${V}

GH_ACCOUNT =	hoelzro
GH_PROJECT =	${DISTNAME}
GH_TAGNAME =	${V}

CATEGORIES =	devel

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c ${MODLUA_WANTLIB}

MODULES =		lang/lua

NO_TEST =		Yes

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -I${MODLUA_INCL_DIR} ${MODLUA_LIB} \
		-L${PREFIX}/lib -shared core.c -o core.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_LIBDIR}/term \
		${MODLUA_DATADIR} ${MODLUA_DATADIR}/term
	${INSTALL_DATA} ${WRKSRC}/core.so ${MODLUA_LIBDIR}/term
	${INSTALL_DATA} ${WRKSRC}/term/*.lua ${MODLUA_DATADIR}/term

.include <bsd.port.mk>
