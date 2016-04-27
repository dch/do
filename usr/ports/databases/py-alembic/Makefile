# $FreeBSD: head/databases/py-alembic/Makefile 371173 2014-10-19 08:50:17Z mva $

PORTNAME=	alembic
PORTVERSION=	0.6.5
CATEGORIES=	databases python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Database migration tool for SQLAlchemy

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sqlalchemy>=0.7.3:${PORTSDIR}/databases/py-sqlalchemy \
		${PYTHON_PKGNAMEPREFIX}mako>=0:${PORTSDIR}/textproc/py-mako

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
