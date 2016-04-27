# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: head/sysutils/fpc-uuid/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	sysutils lang
PKGNAMESUFFIX=	-uuid

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal uuid unit

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
