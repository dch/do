# Created by: trasz <trasz@pin.if.uz.zgora.pl>
# $FreeBSD: head/audio/liblscp/Makefile 388831 2015-06-08 05:59:13Z antoine $

PORTNAME=	liblscp
PORTVERSION=	0.5.7
CATEGORIES=	audio
MASTER_SITES=	SF/qsampler/${PORTNAME}/${PORTVERSION} \
		http://download.linuxsampler.org/packages/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Wrapper around the LSCP network protocol

LICENSE=	LGPL21 # (or later)
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		libtool pathfix
GNU_CONFIGURE=	yes
INSTALL_TARGET=	install-strip
USE_LDCONFIG=	yes

.include <bsd.port.mk>
