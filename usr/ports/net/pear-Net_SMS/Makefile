# Created by: chinsan <chinsan.tw@gmail.com>
# $FreeBSD: head/net/pear-Net_SMS/Makefile 377380 2015-01-19 04:32:47Z vanilla $

PORTNAME=	Net_SMS
PORTVERSION=	0.2.1
CATEGORIES=	net pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR SMS functionality

BUILD_DEPENDS=	${PEARDIR}/Mail.php:${PORTSDIR}/mail/pear-Mail \
		${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request
RUN_DEPENDS=	${PEARDIR}/Mail.php:${PORTSDIR}/mail/pear-Mail \
		${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request

USE_PHP=	gettext
USES=	pear

.include <bsd.port.mk>
