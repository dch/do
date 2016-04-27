# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/devel/fpc-fcl-db/Makefile 394545 2015-08-18 02:20:45Z acm $

PORTREVISION=	3
CATEGORIES=	devel lang
PKGNAMESUFFIX=	-fcl-db

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal Component Library

USE_FPC=	dblib fcl-async fcl-base fcl-json fcl-xml hash ibase mysql odbc oracle paszlib postgres \
		pthreads pxlib sqlite

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPT=		-Fu../base/units/* -Fu../../base/units/* -Fu../dbase -Fu../../dbase -Fu../ \
		-Fu../sqldb -Fu../sqldb/interbase -Fu../sqldb/mysql -Fu../sqldb/odbc \
		-Fu../sqldb/postgres -Fu../sqldb/oracle -Fu../sqldb/sqlite \
		-Fu../datadict -Ur -CX
.include "${MASTERDIR}/Makefile"
