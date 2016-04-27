# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/textproc/fpc-aspell/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	textproc lang
PKGNAMESUFFIX=	-aspell

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Interface to aspell spelling checker

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	ASPELL
OPTIONS_DEFAULT=	ASPELL

.include "${MASTERDIR}/Makefile"
