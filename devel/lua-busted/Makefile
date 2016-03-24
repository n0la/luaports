# $OpenBSD: Makefile.template,v 1.73 2016/01/11 09:17:22 sthen Exp $

COMMENT =	elegant and modern unit testing framework for Lua

V =		2.0.11.0
DISTNAME =	lua-busted-${V}

GH_ACCOUNT =	olivine-labs
GH_PROJECT =	busted
# Most overengineered version number ever.
GH_TAGNAME =	v2.0.rc11-0

CATEGORIES =	devel

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua
MODLUA_RUN_DEPENDS +=	devel/lua-cliargs \
			devel/luafs \
			textproc/lua-dkjson \
			devel/lua-say \
			devel/luassert \
			devel/lua-term \
			devel/lua-penlight \
			devel/lua-mediator \
			net/luasocket

NO_BUILD =		Yes
NO_TEST =		Yes

pre-install:
	@${SUBST_CMD} ${WRKSRC}/bin/busted

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/busted \
		${MODLUA_DATADIR}/busted/modules \
		${MODLUA_DATADIR}/busted/modules/files \
		${MODLUA_DATADIR}/busted/outputHandlers \
		${MODLUA_DATADIR}/busted/languages
	${INSTALL_DATA} ${WRKSRC}/busted/*.lua ${MODLUA_DATADIR}/busted
	${INSTALL_DATA} ${WRKSRC}/busted/modules/*.lua \
		${MODLUA_DATADIR}/busted/modules
	${INSTALL_DATA} ${WRKSRC}/busted/modules/files/*.lua \
		${MODLUA_DATADIR}/busted/modules/files
	${INSTALL_DATA} ${WRKSRC}/busted/outputHandlers/*.lua \
		${MODLUA_DATADIR}/busted/outputHandlers
	${INSTALL_DATA} ${WRKSRC}/busted/languages/*.lua \
		${MODLUA_DATADIR}/busted/languages
	${INSTALL_SCRIPT} ${WRKSRC}/bin/busted \
		${PREFIX}/bin/${MODLUA_DEP}-busted

.include <bsd.port.mk>
