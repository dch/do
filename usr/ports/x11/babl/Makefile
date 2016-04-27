# Created by: Michael Johnson <ahze@FreeBSD.org>
# $FreeBSD: head/x11/babl/Makefile 379526 2015-02-21 15:51:25Z kwm $

PORTNAME=	babl
PORTVERSION=	0.1.12
CATEGORIES=	x11
MASTER_SITES=	GIMP

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Dynamic pixel format conversion library

USES=		gmake libtool pathfix pkgconfig tar:bzip2
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
INSTALL_TARGET=	install-strip

OPTIONS_DEFINE=	SIMD

.include <bsd.port.options.mk>

.if !${PORT_OPTIONS:MSIMD}
CONFIGURE_ARGS+=--disable-mmx \
		--disable-sse \
		--disable-altivec
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|x86_64|amd64|g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
