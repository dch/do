# Created by: Dan Langille <dan@langille.org>
# $FreeBSD: head/sysutils/bacula-docs/Makefile 394508 2015-08-17 14:20:40Z mat $

PORTNAME=	bacula
PORTVERSION=	7.0.3
CATEGORIES=	sysutils
MASTER_SITES=	SF
PKGNAMESUFFIX=	-docs
DISTFILES=	${PORTNAME}-docs-${PORTVERSION}.tar.bz2

MAINTAINER=	dvl@FreeBSD.org
COMMENT=	Bacula document set

NO_BUILD=	yes

PORTDOCS=	*.pdf

do-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}

	${FIND} ${WRKDIR}/${PORTNAME}-docs-${PORTVERSION}/manuals/en \
		-name "*.pdf" -exec ${INSTALL_DATA} {} ${STAGEDIR}${DOCSDIR}/ \;

.include <bsd.port.mk>
