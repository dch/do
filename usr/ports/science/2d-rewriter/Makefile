# Created by: Igor Serikov <iserikov@acm.org>
# $FreeBSD: head/science/2d-rewriter/Makefile 356689 2014-06-05 19:36:14Z bdrewery $

PORTNAME=	2d-rewriter
PORTVERSION=	1.5
CATEGORIES=	science
MASTER_SITES=	http://www.crowdeduniverse.org/distfiles/

MAINTAINER=	iserikov@acm.org
COMMENT=	Cellular automata simulator

USES=		imake
USE_XORG=	x11 xext

OPTIONS_DEFINE=	EXAMPLES

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MEXAMPLES}
post-install:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	(cd ${WRKSRC}/examples/ && ${COPYTREE_SHARE} \* ${STAGEDIR}${EXAMPLESDIR})
.endif

.include <bsd.port.mk>
