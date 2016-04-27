# Created by: gurkan@phys.ethz.ch
# $FreeBSD: head/games/lapispuzzle/Makefile 383626 2015-04-09 07:44:41Z bapt $

PORTNAME=	lapispuzzle
PORTVERSION=	1.2
PORTREVISION=	2
CATEGORIES=	games gnustep
MASTER_SITES=	SAVANNAH/gap
DISTNAME=	LapisPuzzle-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tetris-like game for GNUstep

LICENSE=	GPLv2 # or later
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		gnustep
USE_GNUSTEP=	back build

WRKSRC=		${WRKDIR}/LapisPuzzle-${PORTVERSION}

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/GNUstep/Local/Applications/LapisPuzzle.app/LapisPuzzle

.include <bsd.port.mk>
