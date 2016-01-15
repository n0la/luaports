# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	Lua library for parsing and emitting YAML
V =		6.0

DISTNAME =	lua-${GH_PROJECT}
PKGNAME =	${DISTNAME}-${V}
WRKDIST =	${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME}

GH_ACCOUNT =	gvvaughan
GH_PROJECT =	lyaml
GH_TAGNAME =	release-v${V}

CATEGORIES =	textproc

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua

BUILD_DEPENDS =		devel/libyaml

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${PREFIX}/include -L${PREFIX}/lib" \
			LUA="${MODLUA_BIN}"

LIBTOOL_FLAGS +=	--tag=disable-static

AUTOCONF_VERSION =	2.13
AUTOMAKE_VERSION =	1.4

# Test requires specl, specl requires lyaml.
NO_TEST =		Yes

pre-configure:
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}/lyaml
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}/modules
	${INSTALL_DATA} ${WRKSRC}/ext/yaml/.libs/yaml.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/lib/lyaml.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/lib/lyaml/*.lua ${MODLUA_DATADIR}/lyaml
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${WRKSRC}/doc/*.css ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/modules/*.html ${MODLUA_DOCDIR}/modules

.include <bsd.port.mk>
