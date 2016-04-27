# Created by: John Merryweather Cooper
# $FreeBSD: head/databases/fpc-ibase/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	databases lang
PKGNAMESUFFIX=	-ibase

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to interbase

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	IBASE
IBASE_DESC=	Install Interbase/Firebird client
OPTIONS_DEFAULT=	IBASE

IBASE_USE=	FIREBIRD=yes

.include "${MASTERDIR}/Makefile"
