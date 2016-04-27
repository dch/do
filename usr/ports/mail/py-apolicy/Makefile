# Created by: Chifeng QU <chifeng@gmail.com>
# $FreeBSD: head/mail/py-apolicy/Makefile 371330 2014-10-21 17:10:06Z mva $

PORTNAME=	apolicy
PORTVERSION=	0.73
PORTREVISION=	1
CATEGORIES=	mail python
MASTER_SITES=	http://download.gna.org/apolicy/%SUBDIR%/ \
		http://www.chifeng.name/dist/apolicy/%SUBDIR%/ \

PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER?=	ports@FreeBSD.org
COMMENT=	ACL system for Postfix, as a policy daemon

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/spf.py:${PORTSDIR}/mail/py-spf \
		${PYTHON_SITELIBDIR}/IPy.py:${PORTSDIR}/net-mgmt/py-ipy

USES=		python twisted
USE_PYTHON=	distutils
NO_BUILD=	yes
USE_RC_SUBR=	apolicyd

SUB_LIST=	PYTHON_SITELIBDIR=${PYTHON_SITELIBDIR} \
		PYTHON_CMD=${PYTHON_CMD}
SUB_FILES=	pkg-message

post-patch:
	@${REINPLACE_CMD} 's|/etc|${PREFIX}/etc|' ${WRKSRC}/setup.py

.include <bsd.port.mk>
