# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: head/databases/pear-MDB_QueryTool/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	MDB_QueryTool
PORTVERSION=	1.2.3
CATEGORIES=	databases www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR OO-interface for easily retrieving and modifying data in a DB

BUILD_DEPENDS=	${PEARDIR}/MDB.php:${PORTSDIR}/databases/pear-MDB \
		${PEARDIR}/Log/null.php:${PORTSDIR}/sysutils/pear-Log
RUN_DEPENDS:=	${PEARDIR}/MDB.php:${PORTSDIR}/databases/pear-MDB \
		${PEARDIR}/Log/null.php:${PORTSDIR}/sysutils/pear-Log

USES=	pear

.include <bsd.port.mk>
