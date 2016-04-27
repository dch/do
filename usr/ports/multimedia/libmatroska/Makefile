# Created by: Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
# $FreeBSD: head/multimedia/libmatroska/Makefile 376297 2015-01-05 13:18:10Z riggs $

PORTNAME=	libmatroska
PORTVERSION=	1.4.2
CATEGORIES=	multimedia audio
MASTER_SITES=	http://dl.matroska.org/downloads/libmatroska/ \
		http://www.bunkus.org/videotools/mkvtoolnix/sources/

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	Extensible Multimedia Container Format

LICENSE=	LGPL21

LIB_DEPENDS=	libebml.so:${PORTSDIR}/textproc/libebml

USES=		gmake libtool pkgconfig tar:bzip2
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes

INSTALL_TARGET=	install-strip

post-patch:
	${REINPLACE_CMD} -e 's|$${libdir}/pkgconfig|@prefix@/libdata/pkgconfig|' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
