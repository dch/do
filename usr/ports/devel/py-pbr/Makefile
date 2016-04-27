# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD: head/devel/py-pbr/Makefile 392331 2015-07-17 06:05:08Z koobs $

PORTNAME=	pbr
PORTVERSION=	1.3.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Python Build Reasonableness

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pip>0:${PORTSDIR}/devel/py-pip

NO_ARCH=	yes

USES=		python
USE_PYTHON=	autoplist concurrent distutils

.include <bsd.port.mk>
