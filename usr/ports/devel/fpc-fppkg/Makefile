# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/devel/fpc-fppkg/Makefile 394225 2015-08-14 16:25:17Z amdmi3 $

PORTREVISION=	1
CATEGORIES=	devel lang
PKGNAMESUFFIX=	-fppkg

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal package unit

USE_FPC=	fcl-base fcl-net fcl-passrc fcl-process fcl-web fcl-xml fpmkunit

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
