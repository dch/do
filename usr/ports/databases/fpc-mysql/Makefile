# Created by: John Merryweather Cooper
# $FreeBSD: head/databases/fpc-mysql/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	1
CATEGORIES=	databases lang
PKGNAMESUFFIX=	-mysql

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to MySQL

USE_FPC=	yes

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	MYSQL
MYSQL_DESC=	Install MySQL client
OPTIONS_DEFAULT=	MYSQL

MYSQL_USE=	MYSQL=yes

.include "${MASTERDIR}/Makefile"
