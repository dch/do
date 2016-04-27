# Created by: Gvozdikov Veniamin <g.veniamin@googlemail.com>
# $FreeBSD: head/print/p5-Net-CUPS/Makefile 389945 2015-06-17 17:15:09Z antoine $

PORTNAME=	Net-CUPS
PORTVERSION=	0.61
PORTREVISION=	3
CATEGORIES=	print perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	vg@FreeBSD.org
COMMENT=	Interface to the CUPS API

BROKEN=		Fails to configure or build

BUILD_DEPENDS=	cups-config:${PORTSDIR}/print/cups-client
LIB_DEPENDS=	libcupsimage.so:${PORTSDIR}/print/cups-image \
		libcupsfilters.so:${PORTSDIR}/print/cups-filters

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
