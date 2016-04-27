# Created by: chinsan <chinsan.tw@gmail.com>
# $FreeBSD: head/net/pear-Net_CDDB/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Net_CDDB
PORTVERSION=	0.3.0
CATEGORIES=	net audio www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR class that access and query CDDB audio-CD servers

BUILD_DEPENDS=	${PEARDIR}/Net/Socket.php:${PORTSDIR}/net/pear-Net_Socket \
		${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request \
		${PEARDIR}/MDB2.php:${PORTSDIR}/databases/pear-MDB2
RUN_DEPENDS=	${PEARDIR}/Net/Socket.php:${PORTSDIR}/net/pear-Net_Socket \
		${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request \
		${PEARDIR}/MDB2.php:${PORTSDIR}/databases/pear-MDB2

USES=		dos2unix pear

.include <bsd.port.mk>
