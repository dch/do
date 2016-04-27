# Created by: John Merryweather Cooper
# $FreeBSD: head/archivers/fpc-paszlib/Makefile 394539 2015-08-18 01:41:37Z acm $

PORTREVISION=	3
CATEGORIES=	archivers devel
PKGNAMESUFFIX=	-paszlib

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal unit for native compression IO

USE_FPC=	hash

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
