# Created by: Alexander Botero-Lowry <alexbl@FreeBSD.org>
# $FreeBSD: head/devel/py-magic/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	magic
PORTVERSION=	5.18
CATEGORIES=	devel python
MASTER_SITES=	ftp://ftp.astron.com/pub/file/ \
		ftp://ftp.gw.com/mirrors/pub/unix/file/ \
		ftp://ftp.fu-berlin.de/unix/tools/file/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	file-${PORTVERSION}

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Python module for determining file type

USES=		python
USE_PYTHON=	distutils autoplist

WRKSRC=	${WRKDIR}/file-${PORTVERSION}/python

.include <bsd.port.mk>
