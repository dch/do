# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/devel/fpc-fcl-net/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	devel lang
PKGNAMESUFFIX=	-fcl-net

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal Component Library

USE_FPC=	fcl-async fcl-base fcl-xml fcl-passrc hash paszlib pthreads

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}
OPT=		-Fu${WRKDIR}/${WRKUNITDIR}/*

.include "${MASTERDIR}/Makefile"
