# Created by: Herve Quiroz <herve.quiroz@esil.univ-mrs.fr>
# $FreeBSD: head/devel/log4j/Makefile 381339 2015-03-15 15:37:36Z amdmi3 $

PORTNAME=	log4j
PORTVERSION=	1.2.17
CATEGORIES=	devel java
MASTER_SITES=	APACHE/logging/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Fast and flexible logging library for Java

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_JAVA=	yes
NO_BUILD=	yes

WRKSRC=		${WRKDIR}/apache-${PORTNAME}-${PORTVERSION}

OPTIONS_DEFINE=	DOCS EXAMPLES

PLIST_FILES=	%%JAVAJARDIR%%/log4j.jar
PORTDOCS=	*
PORTEXAMPLES=	*

do-install:
	${INSTALL_DATA} ${WRKSRC}/log4j-${PORTVERSION}.jar ${STAGEDIR}${JAVAJARDIR}/${PORTNAME}.jar
	cd ${WRKSRC}/site && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR}/
	cd ${WRKSRC}/examples && ${COPYTREE_SHARE} . ${STAGEDIR}${EXAMPLESDIR}/
	${RMDIR} ${STAGEDIR}${EXAMPLESDIR}/lf5/OpeningLogFiles

.include <bsd.port.mk>
