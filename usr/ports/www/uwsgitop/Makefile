# Created by: Dmitry Sivachenko <demon@FreeBSD.org>
# $FreeBSD: head/www/uwsgitop/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	uwsgitop
PORTVERSION=	0.8
CATEGORIES=	www
MASTER_SITES=	CHEESESHOP

MAINTAINER=	demon@FreeBSD.org
COMMENT=	uWSGI top-like app

USES=		python
USE_PYTHON=	distutils

post-install:
		${MKDIR} ${STAGEDIR}${DOCSDIR}
		${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
