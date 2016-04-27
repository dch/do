# Created by: Edwin Groothuis
# $FreeBSD: head/games/thevalley/Makefile 374303 2014-12-08 16:48:38Z tijl $

PORTNAME=	thevalley
PORTVERSION=	0.98
PORTREVISION=	8
CATEGORIES=	games
MASTER_SITES=	http://www.autismuk.freeserve.co.uk/
DISTNAME=	valley-${PORTVERSION}

MAINTAINER=	edwin@mavetju.org
COMMENT=	The Valley is a rewrite of an old RPG from the early 1980s

GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${DISTNAME}
USE_SDL=	sdl
USES=		libtool perl5
USE_PERL5=	build
CXXFLAGS+=	-I${LOCALBASE}/include
LIBS+=		-L${LOCALBASE}/lib -lm

PLIST_FILES=	bin/valley

.include <bsd.port.mk>
