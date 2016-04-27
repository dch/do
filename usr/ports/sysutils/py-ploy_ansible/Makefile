# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD: head/sysutils/py-ploy_ansible/Makefile 389194 2015-06-11 12:02:37Z koobs $

PORTNAME=	ploy_ansible
PORTVERSION=	1.3.0
CATEGORIES=	sysutils python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Ploy plugin to integrate with Ansible

LICENSE=	GPLv3

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}ploy>=1.0.0:${PORTSDIR}/sysutils/py-ploy \
		${PYTHON_PKGNAMEPREFIX}execnet>0:${PORTSDIR}/sysutils/py-execnet \
		${PYTHON_PKGNAMEPREFIX}setuptools${PYTHON_SUFFIX}>0:${PORTSDIR}/devel/py-setuptools${PYTHON_SUFFIX} \
		ansible>=1.8.0:${PORTSDIR}/sysutils/ansible

USES=		python:-2.7
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
