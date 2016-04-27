# $FreeBSD: head/x11-themes/cursor-dmz-theme/Makefile 390355 2015-06-23 06:20:42Z bapt $

PORTNAME=	cursor-dmz-theme
PORTVERSION=	0.3
PORTREVISION=	2
CATEGORIES=	x11-themes
MASTER_SITES=	http://jimmac.musichall.cz/zip/
DISTNAME=	vanilla-dmz-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The DMZ style neutral scalable cursor theme

USES=	tar:bzip2
NO_BUILD=	yes

WRKSRC=		${WRKDIR}

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/lib/X11/icons/Vanilla-DMZ/cursors
	cd ${WRKSRC}/Vanilla-DMZ/cursors; \
		${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/lib/X11/icons/Vanilla-DMZ/cursors

.include <bsd.port.mk>
