# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/www/pear-XML_GRDDL/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	XML_GRDDL
PORTVERSION=	0.2.0
CATEGORIES=	www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PHP library for dealing with GRDDL

BUILD_DEPENDS=	${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request \
		${PEARDIR}/Net/URL.php:${PORTSDIR}/net/pear-Net_URL \
		${PEARDIR}/Log.php:${PORTSDIR}/sysutils/pear-Log \
		${PEARDIR}/Validate.php:${PORTSDIR}/devel/pear-Validate
RUN_DEPENDS=	${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request \
		${PEARDIR}/Net/URL.php:${PORTSDIR}/net/pear-Net_URL \
		${PEARDIR}/Log.php:${PORTSDIR}/sysutils/pear-Log \
		${PEARDIR}/Validate.php:${PORTSDIR}/devel/pear-Validate

USES=	pear
USE_PHP+=	xsl tidy

.include <bsd.port.mk>
