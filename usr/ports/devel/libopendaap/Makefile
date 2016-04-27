# Created by: Michael Johnson <ahze@ahze.net>
# $FreeBSD: head/devel/libopendaap/Makefile 368842 2014-09-22 10:11:15Z bapt $

PORTNAME=	libopendaap
PORTVERSION=	0.4.0
PORTREVISION=	2
CATEGORIES=	devel audio net
MASTER_SITES=	http://crazney.net/programs/itunes/files/

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	C lib used to connect to iTunes(R) music shares

USES=		libtool pathfix pkgconfig tar:bzip2
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
INSTALL_TARGET=	install-strip

post-patch:
.for file in Makefile.in opendaap.pc.in
	@${REINPLACE_CMD} -e 's|-lpthread||g' ${WRKSRC}/${file}
.endfor

.include <bsd.port.mk>
