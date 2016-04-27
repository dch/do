# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/graphics/fpc-graph/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	3
CATEGORIES=	graphics lang
PKGNAMESUFFIX=	-graph

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to graphical applications

USE_FPC=	x11 sdl pthreads

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
