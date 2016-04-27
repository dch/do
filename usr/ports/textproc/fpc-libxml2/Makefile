# Created by: Christoper Key <cjk32@cam.ac.uk>
# $FreeBSD: head/textproc/fpc-libxml2/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	textproc lang
PKGNAMESUFFIX=	-libxml2

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Interface to xml2 library

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//:S/2//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	LIBXML2
LIBXML2_DESC=	Install xml2 library
OPTIONS_DEFAULT=	LIBXML2

LIBXML2_LIB_DEPENDS=	libxml2.so:${PORTSDIR}/textproc/libxml2

.include "${MASTERDIR}/Makefile"
