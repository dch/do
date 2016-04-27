# Created by: chinsan
# $FreeBSD: head/games/gnake/Makefile 385360 2015-05-04 00:33:14Z eadler $

PORTNAME=	gnake
PORTVERSION=	0.94b
CATEGORIES=	games
MASTER_SITES=	SF/fbsdports/gnake
DISTNAME=	Gnake.${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Nibbles clone for GNU/Linux and *BSD

LICENSE=	GPLv2

OPTIONS_DEFINE=	DOCS

LDFLAGS+=	-L${LOCALBASE}/lib -lncurses
CFLAGS+=	-Wall

WRKSRC=		${WRKDIR}/${PORTNAME}
PORTDOCS=	README
PLIST_FILES=	bin/${PORTNAME}

do-build:
	${CC} ${CFLAGS} ${LDFLAGS} -o ${WRKSRC}/${PORTNAME} \
		${WRKSRC}/gnake.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
