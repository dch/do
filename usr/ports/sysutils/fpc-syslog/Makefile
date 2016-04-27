# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/sysutils/fpc-syslog/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	sysutils lang
PKGNAMESUFFIX=	-syslog

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to the system logger

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
