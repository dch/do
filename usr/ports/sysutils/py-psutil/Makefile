# Created by: Ju Pengfei <jupengfei@gmail.com>
# $FreeBSD: head/sysutils/py-psutil/Makefile 392926 2015-07-26 15:22:53Z sunpoet $

PORTNAME=	psutil
PORTVERSION=	3.1.1
CATEGORIES=	sysutils python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Process utilities module for Python

LICENSE=	BSD3CLAUSE

USE_PYTHON=	autoplist distutils
USES=		python

post-install:
	${STRIP_CMD} ${STAGEDIR}${PYTHON_SITELIBDIR}/psutil/_psutil_bsd.so ${STAGEDIR}${PYTHON_SITELIBDIR}/psutil/_psutil_posix.so

.include <bsd.port.mk>
