# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/www/fpc-httpd22/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	www lang
PKGNAMESUFFIX=	-httpd22

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal httpd unit

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	APACHE22
APACHE22_DESC=	Install apache22 server

APACHE22_USE=	APACHE=22

.include "${MASTERDIR}/Makefile"
