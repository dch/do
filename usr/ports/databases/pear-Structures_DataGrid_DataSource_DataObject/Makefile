# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: head/databases/pear-Structures_DataGrid_DataSource_DataObject/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Structures_DataGrid_DataSource_DataObject
PORTVERSION=	0.2.1
CATEGORIES=	databases www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	DataSource driver using PEAR::DB_DataObject

BUILD_DEPENDS=	${PEARDIR}/Structures/DataGrid.php:${PORTSDIR}/devel/pear-Structures_DataGrid \
		${PEARDIR}/DB/DataObject.php:${PORTSDIR}/databases/pear-DB_DataObject
RUN_DEPENDS=	${PEARDIR}/Structures/DataGrid.php:${PORTSDIR}/devel/pear-Structures_DataGrid \
		${PEARDIR}/DB/DataObject.php:${PORTSDIR}/databases/pear-DB_DataObject

USES=	pear
USE_PHP=	mysql

.include <bsd.port.mk>
