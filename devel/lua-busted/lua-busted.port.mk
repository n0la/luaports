# $OpenBSD: lua-busted.port.mk

CATEGORIES +=		lang/lua

MODBUSTED_BIN =	${PREFIX}/bin/${MODLUA_DEP}-busted

#
# Path were the unit tests are. A common standard appears to be
# "spec"
#
MODBUSTED_SPECDIR ?=	spec

.if ${NO_TEST:L} == "no"
TEST_DEPENDS +=	devel/lua-busted

do-test:
	cd ${WRKSRC} && ${MODBUSTED_BIN} ${MODBUSTED_SPECDIR}
.endif
