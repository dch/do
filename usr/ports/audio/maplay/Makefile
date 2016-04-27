# Created by: jkh
# $FreeBSD: head/audio/maplay/Makefile 363063 2014-07-27 13:35:15Z adamw $

PORTNAME=	maplay
PORTVERSION=	1.2
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.tnt.uni-hannover.de/pub/MPEG/audio/other-servers/Maplay-Mirror/
DISTNAME=	${PORTNAME}${PORTVERSION:S/./_/}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	MPEG audio player/decoder decoding layer I and II MPEG audio streams

LICENSE=	GPLv2

NO_WRKSUBDIR=	yes
USES=		tar:Z

PLIST_FILES=	bin/maplay
PORTDOCS=	README

OPTIONS_DEFINE=	DOCS

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/maplay ${STAGEDIR}${PREFIX}/bin
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
