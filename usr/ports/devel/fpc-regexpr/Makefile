# Created by: John Merryweather Cooper et al
# $FreeBSD: head/devel/fpc-regexpr/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	devel lang
PKGNAMESUFFIX=	-regexpr

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal regular expression routines

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
