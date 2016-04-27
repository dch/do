# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/net/pear-XML_RPC2/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	XML_RPC2
PORTVERSION=	1.1.2
CATEGORIES=	net devel pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	XML-RPC client/server library

LICENSE=	PHP301

BUILD_DEPENDS=	${PEARDIR}/Cache/Lite.php:${PORTSDIR}/sysutils/pear-Cache_Lite \
		${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2
RUN_DEPENDS=	${PEARDIR}/Cache/Lite.php:${PORTSDIR}/sysutils/pear-Cache_Lite \
		${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2

USE_PHP=	curl
USES=	pear

.include <bsd.port.mk>
