# Created by: Markus Brueffer <markus@FreeBSD.org>
# $FreeBSD: head/multimedia/ggrab/Makefile 382254 2015-03-25 17:36:47Z marino $

PORTNAME=	ggrab
PORTVERSION=	0.22a
CATEGORIES=	multimedia
MASTER_SITES=	http://www.menzebach.de/ggrab/
DISTNAME=	${PORTNAME}-${PORTVERSION}-linux
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Records MPEG2 streams directly from your Dbox2 over Ethernet

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

PLIST_FILES=	bin/ggrab bin/sserver
PORTDOCS=	README

OPTIONS_DEFINE=	DOCS

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ggrab ${STAGEDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/sserver ${STAGEDIR}${PREFIX}/bin
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
