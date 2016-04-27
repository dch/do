# Created by: Brian Handy <handy@physics.montana.edu>
# $FreeBSD: head/sysutils/xosview/Makefile 388551 2015-06-04 21:15:34Z amdmi3 $

PORTNAME=	xosview
PORTVERSION=	1.16
PORTREVISION=	2
CATEGORIES=	sysutils
MASTER_SITES=	http://www.pogo.org.uk/~mark/xosview/releases/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Graphical performance meter

USE_XORG=	xpm
USES=		gmake
MAKE_ENV+=	PLATFORM=bsd MANDIR=${LOCALBASE}/man
ALL_TARGET=	# empty

do-configure:
	@${CP} ${WRKSRC}/targets/freebsd-9.0 ${WRKSRC}/.config
	@${REINPLACE_CMD} -e 's|/usr/local|${LOCALBASE}|g' ${WRKSRC}/.config

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	@${CP} ${WRKSRC}/Xdefaults ${STAGEDIR}${PREFIX}/lib/X11/app-defaults/XOsview

.include <bsd.port.mk>
