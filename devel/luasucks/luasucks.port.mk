# $OpenBSD: luasucks.port.mk

.if ${MODULES:Mlang/lua?} == ${MODULES}
ERRORS +=	luasucks requires the lang/lua module
.endif

# Relative path to the rockspec in ${WRKSRC}.
#
MODLUASUCKS_ROCKSPEC ?=		${DISTNAME}.rockspec

# Full path to the luasucks script
#
MODLUASUCKS_BIN =		${LOCALBASE}/bin/luasucks

# Set to "no" to disable script prefixing. This helps if your port
# only works with one lua version anyhow, and you do not wish for
# a lua5X- to be slapped in front of your scripts.
#
MODLUASUCKS_BIN_PREFIX ?=	Yes

_MODLUASUCKS_INSTALL_ARGS =
.if ${MODLUASUCKS_BIN_PREFIX:L:Mno}
_MODLUASUCKS_INSTALL_ARGS += --no-bin-prefix
.endif

BUILD_DEPENDS +=		devel/luasucks

do-install:
	cd ${WRKSRC} && \
		MODLUA_VERSION=${MODLUA_VERSION} \
		MODLUA_DATADIR=${MODLUA_DATADIR} \
		MODLUASUCKS_ROCKSPEC=${MODLUASUCKS_ROCKSPEC} \
		${MODLUASUCKS_BIN} install ${_MODLUASUCKS_INSTALL_ARGS}
