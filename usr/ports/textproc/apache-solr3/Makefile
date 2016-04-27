# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/textproc/apache-solr3/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	apache-solr
PORTVERSION=	3.6.2
CATEGORIES=	textproc java
MASTER_SITES=	APACHE/lucene/solr/${PORTVERSION}
PKGNAMESUFFIX=	3

MAINTAINER=	gaod@hychen.org
COMMENT=	High performance search server built using Lucene Java

LICENSE=	APACHE20

CONFLICT=	apache-solr-4.1.*

JAVA_VERSION=	1.6+
NO_BUILD=	yes
PLIST_SUB+=	PORTVERSION="${PORTVERSION}"
USE_JAVA=	yes
PORTEXAMPLES=	*
USES=		cpe tar:tgz
CPE_PRODUCT=	solr
CPE_VENDOR=	apache

do-install:
	cd ${WRKSRC}/dist && ${COPYTREE_SHARE} . ${STAGEDIR}${JAVAJARDIR}
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	cd ${WRKSRC}/example && ${COPYTREE_SHARE} . ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
