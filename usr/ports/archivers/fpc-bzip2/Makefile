# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: head/archivers/fpc-bzip2/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	archivers lang
PKGNAMESUFFIX=	-bzip2

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal bzip2 unit

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
