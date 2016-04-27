# Created by: Greg Larkin <glarkin@FreeBSD.org>
# $FreeBSD: head/net/py-libcloud/Makefile 394323 2015-08-15 15:45:10Z novel $

PORTNAME=	libcloud
PORTVERSION=	0.18.0
CATEGORIES=	net python
MASTER_SITES=	APACHE/${PORTNAME}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	apache-${PORTNAME}-${PORTVERSION}

MAINTAINER=	novel@FreeBSD.org
COMMENT=	Standard client library for many popular cloud providers

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		cpe python tar:bzip2
USE_PYTHON=	distutils autoplist
CPE_VENDOR=	apache

post-extract:
	@${MV} ${WRKSRC}/libcloud/test ${WRKSRC}/test # no need to install tests
	@${FIND} ${WRKSRC} -name "*.rej" -delete

.include <bsd.port.mk>
