# Created by: Stanislav Sedov <stas@FreeBSD.org>
# $FreeBSD: head/devel/fga/Makefile 362014 2014-07-15 23:11:12Z adamw $

PORTNAME=	fga
PORTVERSION=	1.4
CATEGORIES=	devel
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Fast Genetic Algorithm library

WRKSRC=		${WRKDIR}/${PORTNAME}

USES=		gmake

EXAMPLES=	graph_gen maxbit tsp tsp_bf
PORTDOCS=	*

OPTIONS_DEFINE=	DOCS EXAMPLES

do-install:
	${INSTALL_DATA}	${WRKSRC}/include/fga.hpp ${STAGEDIR}${PREFIX}/include
	${INSTALL_PROGRAM} ${EXAMPLES:S,^,${WRKSRC}/,} ${STAGEDIR}${PREFIX}/bin
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${EXAMPLES:S,^,${WRKSRC}/,:S,$,.cpp,} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
