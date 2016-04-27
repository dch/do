# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: head/multimedia/fpc-dts/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	multimedia lang
PKGNAMESUFFIX=	-dts

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to the dts library

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	LIBDCA
LIBDCA_DESC=	Install dts library
OPTIONS_DEFAULT=	LIBDCA

LIBDCA_LIB_DEPENDS=	libdca.so:${PORTSDIR}/multimedia/libdca

.include "${MASTERDIR}/Makefile"
