# Created by: Jon M. Dugan <jdugan@x1024.net>
# $FreeBSD: head/devel/py-thrift/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	thrift
PORTVERSION=	${THRIFT_PORTVERSION} # to keep in sync with thrift
PORTEPOCH=	1
CATEGORIES=	devel python
MASTER_SITES=	APACHE/thrift/${PORTVERSION}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	komarov@valerka.net
COMMENT=	Python interface to Thrift

DISTINFO_FILE=	${PORTSDIR}/devel/thrift/distinfo

USES=		python
USE_PYTHON=	distutils autoplist

WRKSRC=		${WRKDIR}/${DISTNAME}/lib/py

post-patch:
	@${REINPLACE_CMD} -e 's|setuptools|do_not_use_&|' ${WRKSRC}/${PYSETUP}

.include "../thrift/bsd.thrift.mk"
.include <bsd.port.mk>
