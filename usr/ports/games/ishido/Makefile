# Created by: Steven H. Samorodin (samorodi@NUXI.com)
# $FreeBSD: head/games/ishido/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	ishido
PORTVERSION=	1.1
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	LOCAL/obrien

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tile placement game

MAKE_ENV=	X11BASE=${LOCALBASE}
USE_XORG=	x11

do-install:
	${INSTALL_MAN} ${WRKSRC}/ishido.6 ${STAGEDIR}${PREFIX}/man/man6
	${INSTALL} ${COPY} ${STRIP} ${WRKSRC}/ishido ${STAGEDIR}${PREFIX}/bin
	${INSTALL} ${COPY} ${WRKSRC}/ishido_scores ${STAGEDIR}${PREFIX}/share/misc/ishido_scores
		
.include <bsd.port.mk>
