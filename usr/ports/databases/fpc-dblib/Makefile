# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/databases/fpc-dblib/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	databases lang
PKGNAMESUFFIX=	-dblib

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal DB-Library and FreeTDS unit

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
