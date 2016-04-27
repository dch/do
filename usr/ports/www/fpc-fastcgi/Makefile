# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: head/www/fpc-fastcgi/Makefile 394547 2015-08-18 02:32:59Z acm $

PORTREVISION=	2
CATEGORIES=	www lang
PKGNAMESUFFIX=	-fastcgi

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal fastcgi unit

USE_FPC=	fcl-process fpmkunit hash paszlib

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

.include "${MASTERDIR}/Makefile"
