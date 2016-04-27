# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/devel/fpc-fcl-xml/Makefile 393893 2015-08-10 19:37:32Z antoine $

PORTREVISION=	2
CATEGORIES=	devel lang
PKGNAMESUFFIX=	-fcl-xml

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal Component Library

USE_FPC=	fcl-async fcl-base hash iconvenc paszlib pthreads
USE_FPC_RUN=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
