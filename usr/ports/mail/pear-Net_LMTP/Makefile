# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: head/mail/pear-Net_LMTP/Makefile 381546 2015-03-18 13:04:54Z sunpoet $

PORTNAME=	Net_LMTP
PORTVERSION=	1.0.2
CATEGORIES=	mail www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR implementation of the RFC2033 LMTP protocol

LICENSE=	PHP301

BUILD_DEPENDS=	${PEARDIR}/Net/Socket.php:${PORTSDIR}/net/pear-Net_Socket
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		pear

.include <bsd.port.mk>
