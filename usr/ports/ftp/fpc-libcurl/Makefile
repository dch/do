# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/ftp/fpc-libcurl/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	ftp lang
PKGNAMESUFFIX=	-libcurl

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to libcurl

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	LIBCURL
LIBCURL_DESC=	Install curl tools and library
OPTIONS_DEFAULT=	LIBCURL

LIBCURL_LIB_DEPENDS=	libcurl.so:${PORTSDIR}/ftp/curl

.include "${MASTERDIR}/Makefile"
