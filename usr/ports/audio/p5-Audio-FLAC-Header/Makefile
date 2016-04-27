# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: head/audio/p5-Audio-FLAC-Header/Makefile 374303 2014-12-08 16:48:38Z tijl $

PORTNAME=	Audio-FLAC-Header
PORTVERSION=	2.4
PORTREVISION=	3
CATEGORIES=	audio perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lippe@FreeBSD.org
COMMENT=	Interface to FLAC header metadata

LIB_DEPENDS=	libFLAC.so:${PORTSDIR}/audio/flac

USES=		perl5
USE_PERL5=	configure
CFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.mk>
