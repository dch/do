# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/misc/fpc-chm/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	misc lang
PKGNAMESUFFIX=	-chm

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal unit to manipulate chm files

USE_FPC=	fcl-xml

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
