# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: head/multimedia/fpc-matroska/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	multimedia lang
PKGNAMESUFFIX=	-matroska

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to matroska library

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	LIBMATROSKA
LIBMATROSKA_DESC=	Install matroska library
OPTIONS_DEFAULT=	LIBMATROSKA

LIBMATROSKA_LIB_DEPENDS=	libmatroska.so:${PORTSDIR}/multimedia/libmatroska

.include "${MASTERDIR}/Makefile"
