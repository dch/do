# Created by: Roman Bogorodskiy <novel@FreeBSD.org>
# $FreeBSD: head/net/py-pyzmq/Makefile 389682 2015-06-15 11:06:49Z koobs $

PORTNAME=	pyzmq
PORTVERSION=	14.6.0
PORTREVISION=	1
CATEGORIES=	net devel
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	novel@FreeBSD.org
COMMENT=	Python bindings for ZeroMQ

LICENSE=	LGPL3

LIB_DEPENDS=	libzmq.so:${PORTSDIR}/net/libzmq4

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.pre.mk>

pre-configure:
	@${SED} -e 's|/usr/local|${LOCALBASE}|' ${WRKSRC}/setup.cfg.template > \
		${WRKSRC}/setup.cfg

regression-test: extract
	@cd ${WRKSRC} && ${PYTHON_CMD} ${PYSETUP} build_ext --inplace
	@cd ${WRKSRC} && ${PYTHON_CMD} ${PYSETUP} test

.include <bsd.port.post.mk>
