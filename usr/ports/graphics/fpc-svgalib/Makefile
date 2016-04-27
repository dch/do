# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/graphics/fpc-svgalib/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	graphics lang
PKGNAMESUFFIX=	-svgalib

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to the SVGA graphics library

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	SVGA
SVGA_DESC=	Install svgalib low level console graphics library

SVGA_LIB_DEPENDS=	libvga.so:${PORTSDIR}/graphics/svgalib

.include "${MASTERDIR}/Makefile"
