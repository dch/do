# Created by: John Merryweather Cooper
# $FreeBSD: head/devel/fpc-fv/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	devel lang
PKGNAMESUFFIX=	-fv

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	FreeVision is a Free Pascal unit for Delphi support

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	EXAMPLES

HAVE_EXAMPLES=	yes

.include "${MASTERDIR}/Makefile"
