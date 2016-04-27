# Created by: Romain Tartiere <romain@FreeBSD.org>
# $FreeBSD: head/print/dot2tex/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	dot2tex
PORTVERSION=	2.8.7
PORTREVISION=	1
CATEGORIES=	print
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	romain@FreeBSD.org
COMMENT=	Graphviz to LaTeX converter

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/pyparsing.py:${PORTSDIR}/devel/py-parsing \
		dot:${PORTSDIR}/graphics/graphviz

# The .tar.gz sucks!
USES=		python zip
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
