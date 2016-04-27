# Created by: Nick Hilliard <nick@foobar.org>
# $FreeBSD: head/graphics/pear-Image_Graph/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Image_Graph
PORTVERSION=	0.8.0
CATEGORIES=	graphics www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	OO PEAR graph rendering package

RUN_DEPENDS=	${PEARDIR}/Log.php:${PORTSDIR}/sysutils/pear-Log \
		${PEARDIR}/Image/Canvas.php:${PORTSDIR}/graphics/pear-Image_Canvas

USE_PHP=	yes
USES=		dos2unix pear
DOS2UNIX_REGEX=	.*php$$

.include <bsd.port.mk>
