# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/archivers/fpc-unzip/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	archivers lang
PKGNAMESUFFIX=	-unzip

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal routines for unzipping zip files

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	UNZIP
UNZIP_DESC=	Install unzip tools
OPTIONS_DEFAULT=	UNZIP

UNZIP_RUN_DEPENDS=	unzip:${PORTSDIR}/archivers/unzip

.include "${MASTERDIR}/Makefile"
