# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	lua bindings for OpenBSD functions

V =		0.1
DISTNAME =	lua-openbsd-${V}

GH_ACCOUNT =	n0la
GH_PROJECT =	lua-openbsd
GH_TAGNAME =	v${V}

CATEGORIES =	devel

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
WANTLIB =		${MODLUA_WANTLIB} m

# Dependencies
#
MODULES =		devel/cmake \
			lang/lua

CONFIGURE_ARGS +=	-DMODLUA_VERSION=${MODLUA_VERSION}

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/example/*.lua ${MODLUA_EXAMPLEDIR}

.include <bsd.port.mk>
