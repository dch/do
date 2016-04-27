# Created by: gpalmer
# $FreeBSD: head/x11-wm/tvtwm/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	tvtwm
PORTVERSION=	pl11
PORTREVISION=	1
CATEGORIES=	x11-wm
MASTER_SITES=	XCONTRIB/window_managers
DISTNAME=	${PORTNAME}.${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Twm with a virtual desktop

WRKSRC=		${WRKDIR}/tvtwm
USES=		imake
USE_XORG=	xbitmaps xpm xmu
PLIST_FILES=	bin/tvtwm \
		man/man1/tvtwm.1.gz

CFLAGS+=	-Wno-return-type

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tvtwm ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tvtwm.man ${STAGEDIR}${MANPREFIX}/man/man1/tvtwm.1

.include <bsd.port.mk>
