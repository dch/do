# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: head/textproc/pear-Structures_DataGrid_Renderer_XML/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Structures_DataGrid_Renderer_XML
PORTVERSION=	0.1.3
CATEGORIES=	textproc databases www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Renderer driver that generates a XML string

BUILD_DEPENDS=	${PEARDIR}/Structures/DataGrid/DataSource/Array.php:${PORTSDIR}/databases/pear-Structures_DataGrid_DataSource_Array \
		${PEARDIR}/XML/Util.php:${PORTSDIR}/devel/pear-XML_Util
RUN_DEPENDS=	${PEARDIR}/Structures/DataGrid/DataSource/Array.php:${PORTSDIR}/databases/pear-Structures_DataGrid_DataSource_Array \
		${PEARDIR}/XML/Util.php:${PORTSDIR}/devel/pear-XML_Util

USES=	pear

.include <bsd.port.mk>
