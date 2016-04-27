# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/devel/fpc-fcl-web/Makefile 394059 2015-08-13 11:14:38Z amdmi3 $

PORTREVISION=	1
CATEGORIES=	devel lang
PKGNAMESUFFIX=	-fcl-web

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal Component Library

USE_FPC=	fastcgi fcl-async fcl-base fcl-db fcl-json fcl-net fcl-process \
		fcl-xml hash httpd22 httpd24 ibase mysql odbc oracle paszlib postgres \
		pthreads sqlite fpmkunit

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}
OPT=		-Fuunits/${BUILDNAME} -Fu../units/${BUILDNAME} -Fu../* \
		-Fu../../units/${BUILDNAME} -Fu../../../units/${BUILDNAME}

.include "${MASTERDIR}/Makefile"
