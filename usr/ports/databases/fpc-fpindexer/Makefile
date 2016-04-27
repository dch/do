# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/databases/fpc-fpindexer/Makefile 394546 2015-08-18 02:25:23Z acm $

PORTREVISION=	2
CATEGORIES=	databases lang
PKGNAMESUFFIX=	-fpindexer

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Database indexer with database/flat file backend

USE_FPC=	chm fcl-base fcl-db fcl-xml ibase sqlite

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
