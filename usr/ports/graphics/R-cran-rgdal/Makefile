# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/graphics/R-cran-rgdal/Makefile 394917 2015-08-20 21:17:06Z tota $

PORTNAME=	rgdal
DISTVERSION=	1.0-5
CATEGORIES=	graphics
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Bindings for the Geospatial Data Abstraction Library

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

LIB_DEPENDS=	libgdal.so:${PORTSDIR}/graphics/gdal \
		libproj.so:${PORTSDIR}/graphics/proj
RUN_DEPENDS=	R-cran-sp>=1.1.0:${PORTSDIR}/math/R-cran-sp

USES=	cran:auto-plist

.include <bsd.port.mk>
