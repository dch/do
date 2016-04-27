# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: head/www/pear-Services_Amazon_S3/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Services_Amazon_S3
PORTVERSION=	0.4.0
CATEGORIES=	www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PHP API for Amazon S3 (Simple Storage Service)

BUILD_DEPENDS=	${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2 \
		${PEARDIR}/Crypt/HMAC2.php:${PORTSDIR}/security/pear-Crypt_HMAC2
RUN_DEPENDS=	${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2 \
		${PEARDIR}/Crypt/HMAC2.php:${PORTSDIR}/security/pear-Crypt_HMAC2

USE_PHP=	spl
USES=	pear

.include <bsd.port.mk>
