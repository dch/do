# Created by: John Merryweather Cooper
# $FreeBSD: head/security/fpc-hash/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	security lang
PKGNAMESUFFIX=	-hash

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal unit for MD5 hash routines

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
