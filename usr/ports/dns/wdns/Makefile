# $FreeBSD: head/dns/wdns/Makefile 383420 2015-04-06 12:40:48Z truckman $

PORTNAME=	wdns
PORTVERSION=	0.6.0
PORTREVISION=	1
CATEGORIES=	dns
MASTER_SITES=	FARSIGHT LOCAL/truckman/farsight

MAINTAINER=	truckman@FreeBSD.org
COMMENT=	Low-level DNS library

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/COPYRIGHT

GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USES=		gmake libtool pathfix pkgconfig
INSTALL_TARGET=	install-strip

.include <bsd.port.mk>
