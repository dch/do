# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/devel/fpc-fcl-image/Makefile 394542 2015-08-18 01:52:43Z acm $

PORTREVISION=	3
CATEGORIES=	devel lang
PKGNAMESUFFIX=	-fcl-image

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal Component Library

USE_FPC=	fcl-async fcl-base hash pasjpeg paszlib pthreads libpng

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
