# Created by: Alexey Dokuchaev <danfe@FreeBSD.org>
# $FreeBSD: head/x11-fonts/py-bdflib/Makefile 371203 2014-10-19 18:16:15Z mva $

PORTNAME=	bdflib
PORTVERSION=	1.0.0
CATEGORIES=	x11-fonts python
MASTER_SITES=	CHEESESHOP/source/b/${PORTNAME}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}-v${PORTVERSION}

MAINTAINER=	python@FreeBSD.org
COMMENT=	Library for working with BDF font files

LICENSE=	GPLv3

USES=		python:2
USE_PYTHON=	distutils

post-patch:
	@${REINPLACE_CMD} -e '/def/!s,guess_version(),"${PORTVERSION}",' \
		${WRKSRC}/${PYSETUP}

.include <bsd.port.mk>
