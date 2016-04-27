# $FreeBSD: head/graphics/py-wand/Makefile 393438 2015-08-02 18:31:15Z olivierd $

PORTNAME=	Wand
PORTVERSION=	0.4.1
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	olivierd@FreeBSD.org
COMMENT=	MagickWand Python binding

LICENSE=	MIT

LIB_DEPENDS=	libMagickWand-6.so:${PORTSDIR}/graphics/ImageMagick

USES=	python
USE_PYTHON=	distutils autoplist

.include <bsd.port.pre.mk>

PYDISTUTILS_INSTALLARGS+=	--install-data ${DATADIR}

.include <bsd.port.post.mk>
