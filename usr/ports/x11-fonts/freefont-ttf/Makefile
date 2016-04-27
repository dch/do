# Created by: Andreas Kohn <andreas@syndrom23.de>
# $FreeBSD: head/x11-fonts/freefont-ttf/Makefile 381876 2015-03-21 23:05:19Z bapt $

PORTNAME=	freefont-ttf
PORTVERSION=	20120503
PORTREVISION=	1
CATEGORIES=	x11-fonts
MASTER_SITES=	GNU/freefont

MAINTAINER=	pawel@FreeBSD.org
COMMENT=	Free UCS Outline Fonts

LICENSE=	GPLv3

USES=		fonts zip

WRKSRC=		${WRKDIR}/freefont-${PORTVERSION}
PORTDOCS=	AUTHORS ChangeLog CREDITS README
NO_BUILD=	yes

OPTIONS_DEFINE=	DOCS

do-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${STAGEDIR}${DOCSDIR}
	@${MKDIR} ${STAGEDIR}${FONTSDIR}
	cd ${WRKSRC} && \
	${INSTALL_DATA} *.ttf ${STAGEDIR}${FONTSDIR}

.include <bsd.port.mk>
