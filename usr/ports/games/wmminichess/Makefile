# Created by: Will Andrews <andrews@technologist.com>
# $FreeBSD: head/games/wmminichess/Makefile 346280 2014-02-27 09:05:23Z miwi $

PORTNAME=	wmminichess
PORTVERSION=	0.8
PORTREVISION=	4
CATEGORIES=	games
MASTER_SITES=	AFTERSTEP/apps/miniCHESS/ \
		http://tigr.net/afterstep/download/miniCHESS/
DISTNAME=	miniCHESS-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Window Maker chess dockapp game

LICENSE=	GPLv2 # (or later)

RUN_DEPENDS=	${LOCALBASE}/bin/gnuchess:${PORTSDIR}/games/gnuchess

USE_XORG=	xpm

CPPFLAGS+=	-I${LOCALBASE}/include -DENGINE=\"${LOCALBASE}/bin/gnuchessx\"
LDFLAGS+=	-L${LOCALBASE}/lib -lXpm -lXext -lX11

PORTDOCS=	README TODO
PLIST_FILES=	bin/minichess

OPTIONS_DEFINE=	DOCS

do-build:
	(cd ${WRKSRC} \
		&& ${CC} ${CFLAGS} ${CPPFLAGS} -o minichess *.c ${LDFLAGS})

do-install:
	(cd ${WRKSRC} && ${INSTALL_PROGRAM} minichess ${STAGEDIR}${PREFIX}/bin)
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
.for i in ${PORTDOCS}
	(cd ${WRKSRC} && ${INSTALL_DATA} ${i} ${STAGEDIR}${DOCSDIR})
.endfor

.include <bsd.port.mk>
