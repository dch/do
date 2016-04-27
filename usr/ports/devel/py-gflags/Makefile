# Created by: Julien Laffaye <kimelto@gmail.com>
# $FreeBSD: head/devel/py-gflags/Makefile 393196 2015-07-29 22:09:53Z antoine $

PORTNAME=	gflags
PORTVERSION=	2.0
PORTREVISION=	2
CATEGORIES=	devel python
MASTER_SITES=	GOOGLE_CODE
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	python-gflags-${PORTVERSION}

MAINTAINER=	jlaffaye@FreeBSD.org
COMMENT=	Commandline flags module for Python

LICENSE=	BSD3CLAUSE

USES=		python:2 shebangfix
USE_PYTHON=	autoplist distutils

SHEBANG_FILES=	gflags2man.py
python_OLD_CMD=	/usr/bin/env python

PROJECTHOST=	python-gflags

.include <bsd.port.mk>
