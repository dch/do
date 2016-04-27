# $FreeBSD: head/audio/msilbc/Makefile 384123 2015-04-16 19:10:52Z tijl $

PORTNAME=	msilbc
PORTVERSION=	2.1.1
CATEGORIES=	audio net
MASTER_SITES=	SAVANNAH/linphone/plugins/sources/

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Mediastreamer plugin for the iLBC audio codec

LIB_DEPENDS=	libortp.so:${PORTSDIR}/net/ortp \
		libmediastreamer_base.so:${PORTSDIR}/net/mediastreamer \
		libilbc.so:${PORTSDIR}/net/ilbc

USES=		libtool pkgconfig
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	ILBC_CFLAGS=-I${LOCALBASE}/include/ilbc \
		ILBC_LIBS="-L${LOCALBASE}/lib -lilbc"

.include <bsd.port.mk>
