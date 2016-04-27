# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: head/databases/pear-Structures_DataGrid_DataSource_DBTable/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Structures_DataGrid_DataSource_DBTable
PORTVERSION=	0.1.7
CATEGORIES=	databases www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	DataSource driver using PEAR::DB_Table

BUILD_DEPENDS=	${PEARDIR}/Structures/DataGrid.php:${PORTSDIR}/devel/pear-Structures_DataGrid \
		${PEARDIR}/DB/Table.php:${PORTSDIR}/databases/pear-DB_Table
RUN_DEPENDS=	${PEARDIR}/Structures/DataGrid.php:${PORTSDIR}/devel/pear-Structures_DataGrid \
		${PEARDIR}/DB/Table.php:${PORTSDIR}/databases/pear-DB_Table

USES=	pear
USE_PHP=	mysql

.include <bsd.port.mk>
