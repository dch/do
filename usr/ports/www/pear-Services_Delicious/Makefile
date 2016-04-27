# Created by: chinsan <chisnan.tw@gmail.com>
# $FreeBSD: head/www/pear-Services_Delicious/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Services_Delicious
PORTVERSION=	0.6.0
CATEGORIES=	www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR Client for the del.icio.us web service

BUILD_DEPENDS=	${PEARDIR}/XML/Serializer.php:${PORTSDIR}/devel/pear-XML_Serializer \
		${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request
RUN_DEPENDS=	${PEARDIR}/XML/Serializer.php:${PORTSDIR}/devel/pear-XML_Serializer \
		${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request

USES=		dos2unix pear
USE_PHP=	openssl

.include <bsd.port.mk>
