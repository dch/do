# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: head/lang/fpc-lua/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	lang
PKGNAMESUFFIX=	-lua

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to the lua interpreter

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	LUA
LUA_DESC=	Install lua library
OPTIONS_DEFAULT=	LUA

LUA_LIB_DEPENDS=	liblua-5.1.so:${PORTSDIR}/lang/lua51

.include "${MASTERDIR}/Makefile"
