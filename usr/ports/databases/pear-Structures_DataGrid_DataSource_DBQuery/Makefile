# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: head/databases/pear-Structures_DataGrid_DataSource_DBQuery/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Structures_DataGrid_DataSource_DBQuery
PORTVERSION=	0.1.11
CATEGORIES=	databases www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	DataSource driver using PEAR::DB and an SQL query

BUILD_DEPENDS=	${PEARDIR}/Structures/DataGrid.php:${PORTSDIR}/devel/pear-Structures_DataGrid \
		${PEARDIR}/DB.php:${PORTSDIR}/databases/pear-DB
RUN_DEPENDS=	${PEARDIR}/Structures/DataGrid.php:${PORTSDIR}/devel/pear-Structures_DataGrid \
		${PEARDIR}/DB.php:${PORTSDIR}/databases/pear-DB

USES=	pear
USE_PHP=	mysql

.include <bsd.port.mk>
