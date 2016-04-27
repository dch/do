# Created by: Nick Hilliard <nick@foobar.org>
# $FreeBSD: head/www/pear-Structures_DataGrid_Renderer_Smarty/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Structures_DataGrid_Renderer_Smarty
PORTVERSION=	0.1.5
CATEGORIES=	www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Smarty Renderer for pear-Structures_DataGrid

RUN_DEPENDS=	${PEARDIR}/Structures/DataGrid.php:${PORTSDIR}/devel/pear-Structures_DataGrid \
		${LOCALBASE}/share/smarty/Smarty.class.php:${PORTSDIR}/www/smarty2 \
		${PEARDIR}/Structures/DataGrid/Renderer/Pager.php:${PORTSDIR}/www/pear-Structures_DataGrid_Renderer_Pager

USES=	pear

.include <bsd.port.mk>
