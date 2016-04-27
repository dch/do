# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/devel/py-pudb/Makefile 364929 2014-08-15 03:43:54Z sunpoet $

PORTNAME=	pudb
PORTVERSION=	2014.1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Full-screen, console-based Python debugger

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pygments>=1.0:${PORTSDIR}/textproc/py-pygments \
		${PYTHON_PKGNAMEPREFIX}urwid>=1.1.1:${PORTSDIR}/devel/py-urwid

USE_PYTHON=	autoplist distutils
USES=		python

.include <bsd.port.mk>
