# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: head/net/pear-Net_Dict/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	Net_Dict
PORTVERSION=	1.0.7
CATEGORIES=	net www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR interface to the DICT protocol

BUILD_DEPENDS=	${PEARDIR}/Net/Socket.php:${PORTSDIR}/net/pear-Net_Socket \
		${PEARDIR}/Cache.php:${PORTSDIR}/sysutils/pear-Cache
RUN_DEPENDS=	${PEARDIR}/Net/Socket.php:${PORTSDIR}/net/pear-Net_Socket \
		${PEARDIR}/Cache.php:${PORTSDIR}/sysutils/pear-Cache

USES=	pear

.include <bsd.port.mk>
