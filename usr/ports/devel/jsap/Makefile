# Created by: Herve Quiroz <hq@FreeBSD.org>
# $FreeBSD: head/devel/jsap/Makefile 352986 2014-05-05 09:45:36Z bapt $

PORTNAME=	jsap
DISTVERSION=	2.1
PORTREVISION=	2
CATEGORIES=	devel java
MASTER_SITES=	SF
DISTNAME=	${PORTNAME:tu}-${DISTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Java package to parse command-line arguments

USE_JAVA=	yes
JAVA_VERSION=	1.6+
NO_BUILD=	yes

PLIST_FILES=	%%JAVAJARDIR%%/${PORTNAME}.jar
PORTDOCS=	*

OPTIONS_DEFINE=	DOCS

do-install:
	${INSTALL_DATA} ${WRKSRC}/lib/${DISTNAME}.jar \
		${STAGEDIR}${JAVAJARDIR}/${PORTNAME}.jar
	(cd ${WRKSRC}/doc && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR})

.include <bsd.port.mk>
