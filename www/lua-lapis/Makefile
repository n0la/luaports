# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	web MVC framework for Lua

V =		1.6.0
DISTNAME =	lua-lapis-${V}

GH_ACCOUNT =	leafo
GH_PROJECT =	lapis
GH_TAGNAME =	v${V}

CATEGORIES =	www

HOMEPAGE =	https://github.com/leafo/lapis

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua
MODLUA_RUN_DEPENDS +=	devel/lua-ansicolors \
			devel/lua-date \
			textproc/etlua \
			devel/lua-loadkit \
			devel/lpeg \
			devel/lua-cjson \
			security/lua-ossl \
			devel/luafs \
			net/luasocket \
			devel/lua-mimetypes \
			databases/lua-pgmoon

NO_BUILD =		Yes
NO_TEST =		Yes

pre-install:
	@${SUBST_CMD} ${WRKSRC}/bin/lapis

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/lapis \
		${MODLUA_DATADIR}/lapis/cmd \
		${MODLUA_DATADIR}/lapis/cmd/templates \
		${MODLUA_DATADIR}/lapis/cmd/nginx \
		${MODLUA_DATADIR}/lapis/db \
		${MODLUA_DATADIR}/lapis/db/mysql \
		${MODLUA_DATADIR}/lapis/db/postgres \
		${MODLUA_DATADIR}/lapis/features \
		${MODLUA_DATADIR}/lapis/nginx \
		${MODLUA_DATADIR}/lapis/spec \
		${MODLUA_DATADIR}/lapis/util \
		${MODLUA_DATADIR}/lapis/views
	${INSTALL_DATA} ${WRKSRC}/lapis/*.lua \
		${MODLUA_DATADIR}/lapis
	${INSTALL_DATA} ${WRKSRC}/lapis/cmd/*.lua \
		${MODLUA_DATADIR}/lapis/cmd
	${INSTALL_DATA} ${WRKSRC}/lapis/cmd/templates/*.lua \
		${MODLUA_DATADIR}/lapis/cmd/templates
	${INSTALL_DATA} ${WRKSRC}/lapis/cmd/nginx/*.lua \
		${MODLUA_DATADIR}/lapis/cmd/nginx
	${INSTALL_DATA} ${WRKSRC}/lapis/db/*.lua \
		${MODLUA_DATADIR}/lapis/db
	${INSTALL_DATA} ${WRKSRC}/lapis/db/mysql/*.lua \
		${MODLUA_DATADIR}/lapis/db/mysql
	${INSTALL_DATA} ${WRKSRC}/lapis/db/postgres/*.lua \
		${MODLUA_DATADIR}/lapis/db/postgres
	${INSTALL_DATA} ${WRKSRC}/lapis/features/*.lua \
		${MODLUA_DATADIR}/lapis/features
	${INSTALL_DATA} ${WRKSRC}/lapis/nginx/*.lua \
		${MODLUA_DATADIR}/lapis/nginx
	${INSTALL_DATA} ${WRKSRC}/lapis/spec/*.lua \
		${MODLUA_DATADIR}/lapis/spec
	${INSTALL_DATA} ${WRKSRC}/lapis/util/*.lua \
		${MODLUA_DATADIR}/lapis/util
	${INSTALL_DATA} ${WRKSRC}/lapis/views/*.lua \
		${MODLUA_DATADIR}/lapis/views
	${INSTALL_SCRIPT} ${WRKSRC}/bin/lapis \
		${PREFIX}/bin/${MODLUA_DEP}-lapis

.include <bsd.port.mk>
