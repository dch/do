# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/net/pear-Services_Twitter/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Services_Twitter
PORTVERSION=	0.6.3
CATEGORIES=	net www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PHP interface to Twitter's API

BUILD_DEPENDS=	${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2
RUN_DEPENDS=	${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2

USE_PHP=	json simplexml mbstring

USES=	pear

.include <bsd.port.mk>
