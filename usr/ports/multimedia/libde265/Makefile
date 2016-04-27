# Created by: Koop Mast <kwm@FreeBSD.org>
# $FreeBSD: head/multimedia/libde265/Makefile 392684 2015-07-22 16:32:05Z kwm $

PORTNAME=	libde265
PORTVERSION=	1.0.2
CATEGORIES=	multimedia
DISTVERSIONPREFIX=	v

MAINTAINER=	kwm@FreeBSD.org
COMMENT=	Open source h.265 video codec

USE_GITHUB=	yes
GH_ACCOUNT=	strukturag
GH_PROJECT=	libde265

USES=		autoreconf compiler:c++11-lib libtool pathfix pkgconfig
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-sherlock265 --disable-dec265

PATHFIX_MAKEFILEIN=	Makefile.am

.include <bsd.port.mk>
