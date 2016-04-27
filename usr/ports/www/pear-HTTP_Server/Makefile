# Created by: Gerrit Beine (<tux@pinguru.net>)
# $FreeBSD: head/www/pear-HTTP_Server/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	HTTP_Server
PORTVERSION=	0.4.1
CATEGORIES=	www devel pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	HTTP server class

BUILD_DEPENDS=	${PEARDIR}/HTTP.php:${PORTSDIR}/www/pear-HTTP \
		${PEARDIR}/Net/Server.php:${PORTSDIR}/net/pear-Net_Server
RUN_DEPENDS=	${PEARDIR}/HTTP.php:${PORTSDIR}/www/pear-HTTP \
		${PEARDIR}/Net/Server.php:${PORTSDIR}/net/pear-Net_Server

USES=	pear

.include <bsd.port.mk>
