# Created by: Olivier Duchateau <duchateau.olivier@gmail.com>
# $FreeBSD: head/databases/py-flask-sqlalchemy/Makefile 373992 2014-12-05 00:30:20Z feld $

PORTNAME=	Flask-SQLAlchemy
PORTVERSION=	2.0
CATEGORIES=	databases python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	olivierd@FreeBSD.org
COMMENT=	Adds SQLAlchemy support to Flask

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Flask>=0.10:${PORTSDIR}/www/py-flask \
	${PYTHON_PKGNAMEPREFIX}sqlalchemy>=0.7:${PORTSDIR}/databases/py-sqlalchemy

USES=	python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
