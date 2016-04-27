# Created by: swallace
# $FreeBSD: head/games/xrobots/Makefile 353895 2014-05-12 21:10:10Z edwin $

PORTNAME=	xrobots
PORTVERSION=	1.0
PORTREVISION=	4
CATEGORIES=	games
MASTER_SITES=	http://www.mavetju.org/download/adopted/
DISTNAME=	${PORTNAME}-${PORTVERSION}-ss-10.20

MAINTAINER=	edwin@mavetju.org
COMMENT=	Fight off villainous robots (X version)

USES=		imake
USE_XORG=	x11 xaw xext xmu xt sm ice
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

post-install:
	${CP} ${FILESDIR}/xrobotscores ${STAGEDIR}${PREFIX}/lib/X11

post-patch:
	${REINPLACE_CMD} -e 's|__PREFIX__|${PREFIX}|g' \
		${WRKSRC}/xrobots.man ${WRKSRC}/Imakefile

.include <bsd.port.mk>
