# Created by: Thierry Thomas (<thierry@FreeBSD.org>)
# $FreeBSD: head/www/pear-HTTP_Request/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	HTTP_Request
PORTVERSION=	1.4.4
CATEGORIES=	www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR classes providing an easy way to perform HTTP requests

BUILD_DEPENDS=	${PEARDIR}/Net/URL.php:${PORTSDIR}/net/pear-Net_URL		\
		${PEARDIR}/Net/Socket.php:${PORTSDIR}/net/pear-Net_Socket
RUN_DEPENDS=	${PEARDIR}/Net/URL.php:${PORTSDIR}/net/pear-Net_URL		\
		${PEARDIR}/Net/Socket.php:${PORTSDIR}/net/pear-Net_Socket

USES=	pear

.include <bsd.port.mk>
