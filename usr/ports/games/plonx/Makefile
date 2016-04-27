# Created by: clive crous <clive@darkarts.co.za>
# $FreeBSD: head/games/plonx/Makefile 348168 2014-03-14 08:33:43Z ehaupt $

PORTNAME=	plonx
PORTVERSION=	0.03
CATEGORIES=	games
MASTER_SITES=	http://bilious.homelinux.org/~paxed/${PORTNAME}/

MAINTAINER=	clive@darkarts.co.za
COMMENT=	Small ASCII puzzle game

PLIST_FILES=	bin/plonx
PORTDOCS=	README

LDFLAGS+=	-lncurses

OPTIONS_DEFINE=	DOCS

do-build:
	${CC} ${CFLAGS} ${LDFLAGS} -o ${WRKSRC}/${PORTNAME} \
		${WRKSRC}/${PORTNAME}.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
