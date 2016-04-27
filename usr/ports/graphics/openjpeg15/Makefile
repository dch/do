# Created by: trasz <trasz@pin.if.uz.zgora.pl>
# $FreeBSD: head/graphics/openjpeg15/Makefile 394830 2015-08-20 06:05:23Z sunpoet $

PORTNAME=	openjpeg
PORTVERSION=	1.5.2
PORTREVISION=	1
CATEGORIES=	graphics
PKGNAMESUFFIX=	15

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Open-source JPEG 2000 codec

LICENSE=	BSD2CLAUSE

LIB_DEPENDS=	liblcms2.so:${PORTSDIR}/graphics/lcms2 \
		libpng.so:${PORTSDIR}/graphics/png \
		libtiff.so:${PORTSDIR}/graphics/tiff

OPTIONS_DEFINE=	DOCS

DOS2UNIX_FILES=	libopenjpeg/opj_malloc.h
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USES=		cmake cpe dos2unix

PORTDOCS=	CHANGES LICENSE

GH_ACCOUNT=	uclouvain
GH_TAGNAME=	version.${PORTVERSION}
USE_GITHUB=	yes

.include <bsd.port.mk>
