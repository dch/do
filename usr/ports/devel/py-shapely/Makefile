# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/devel/py-shapely/Makefile 372305 2014-11-08 07:42:30Z wen $

PORTNAME=	Shapely
PORTVERSION=	1.4.4
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	wen@FreeBSD.org
COMMENT=	Python Package for Manipulation 2D Geospatial Geometry

LICENSE=	BSD3CLAUSE

LIB_DEPENDS=	libgeos_c.so:${PORTSDIR}/graphics/geos

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
