# Created by: Hye-Shik Chang <perky@fallin.lv>
# $FreeBSD: head/graphics/py-gd/Makefile 381186 2015-03-13 13:21:42Z amdmi3 $

PORTNAME=	gd
PORTVERSION=	0.58
PORTREVISION=	2
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	gdmodule-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Python interface to the GD library

LIB_DEPENDS=	libgd.so:${PORTSDIR}/graphics/gd

USES=		python
USE_PYTHON=	distutils autoplist pythonprefix
PYSETUP=	Setup.py

post-patch:
	@${REINPLACE_CMD} -e \
		'/\/usr\/lib/d ; \
		 /\/usr\/include/d ; \
		 /\/usr\/X11R6/d ; \
		 s|/opt/gnome|${LOCALBASE}| ; \
		 /"jpeg", "png", "gif", "z",/d ; \
		 /"X11", "Xpm",/d ; \
		 /"ttf", "freetype",/d' \
		${WRKSRC}/${PYSETUP}

post-install:
	${STRIP_CMD} ${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}/_gd.so

.include <bsd.port.mk>
