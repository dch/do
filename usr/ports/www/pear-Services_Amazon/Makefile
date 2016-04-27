# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/www/pear-Services_Amazon/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Services_Amazon
PORTVERSION=	0.9.0
CATEGORIES=	www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PHP interface to Amazon Product Advertising API

BUILD_DEPENDS=	${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request \
		${PEARDIR}/XML/Serializer.php:${PORTSDIR}/devel/pear-XML_Serializer
RUN_DEPENDS=	${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request \
		${PEARDIR}/XML/Serializer.php:${PORTSDIR}/devel/pear-XML_Serializer

USES=	pear

.include <bsd.port.mk>
