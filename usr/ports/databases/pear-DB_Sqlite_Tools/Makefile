# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: head/databases/pear-DB_Sqlite_Tools/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	DB_Sqlite_Tools
PORTVERSION=	0.1.7
CATEGORIES=	databases www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	an object oriented interface to backup Sqlite databases

BUILD_DEPENDS=	${PEARDIR}/DB.php:${PORTSDIR}/databases/pear-DB \
		${PEARDIR}/Log/null.php:${PORTSDIR}/sysutils/pear-Log
RUN_DEPENDS=	${PEARDIR}/DB.php:${PORTSDIR}/databases/pear-DB \
		${PEARDIR}/Log/null.php:${PORTSDIR}/sysutils/pear-Log

USES=	pear

.include <bsd.port.mk>
