# Created by: Hye-Shik Chang <perky@python.or.kr>
# $FreeBSD: head/textproc/py2html/Makefile 393196 2015-07-29 22:09:53Z antoine $

PORTNAME=	py2html
PORTVERSION=	0.7
CATEGORIES=	textproc www python
MASTER_SITES=	LOCAL/perky
PKGNAMESUFFIX=	-${PYTHON_PKGNAMEPREFIX:S/-//}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Python Highlighter for HTML

USES=		python:2 shebangfix
USE_PYTHON=	distutils autoplist

python_OLD_CMD=	/usr/bin/env python
SHEBANG_FILES=	py2html

.include <bsd.port.mk>
