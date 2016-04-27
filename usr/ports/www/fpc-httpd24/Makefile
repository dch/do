# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/www/fpc-httpd24/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	www lang
PKGNAMESUFFIX=	-httpd24

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal httpd unit

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	APACHE24
APACHE24_DESC=	Install apache24 server

APACHE24_USE=	APACHE=24

.include "${MASTERDIR}/Makefile"
