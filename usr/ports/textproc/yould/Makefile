# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: head/textproc/yould/Makefile 374183 2014-12-07 10:01:36Z mva $

PORTNAME=	yould
PORTVERSION=	0.3.7
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	CHEESESHOP/source/y/${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Pronounceable word generator

USES=		python
USE_PYTHON=	distutils autoplist
PORTDOCS=	NEWS.txt README.txt

post-install:
	@${INSTALL} -d ${STAGEDIR}${DOCSDIR}/
	@cd ${WRKSRC}/ && ${INSTALL_DATA} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}/

.include <bsd.port.mk>
