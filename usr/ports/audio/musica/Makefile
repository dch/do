# Created by: Pietro Cerutti <gahr@gahr.ch>
# $FreeBSD: head/audio/musica/Makefile 383354 2015-04-05 19:21:57Z bapt $

PORTNAME=	musica
PORTVERSION=	1.1.4
PORTREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	http://ict.ewi.tudelft.nl/~erik/open-source/musica/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GTK based midi player

LICENSE=	GPLv2

BROKEN=		Unfetchable
USE_GNOME=	gtk12

GNU_CONFIGURE=	yes
USES=		gmake

PLIST_FILES=	bin/musica

post-patch:
	${REINPLACE_CMD} -e 's|char|const char|g' \
		${WRKSRC}/src/*.xpm ${WRKSRC}/include/pixmaps.hh

.include <bsd.port.mk>
