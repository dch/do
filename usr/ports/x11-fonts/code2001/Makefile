# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: head/x11-fonts/code2001/Makefile 382760 2015-03-30 21:50:25Z bapt $

PORTNAME=	code2001
PORTVERSION=	0.919
PORTREVISION=	2
CATEGORIES=	x11-fonts
MASTER_SITES=	CENKES/myports/${DIST_SUBDIR}
DISTFILES=	CODE2001.ZIP
DIST_SUBDIR=	${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Free Plane 1 Unicode-based Font

BROKEN=		No public distfiles

USES=		fonts zip
NO_BUILD=	yes
PLIST_FILES=	${FONTSDIR}/${FONTNAME}.ttf

post-extract:
	@${MKDIR} ${WRKSRC}
	@${MV} ${WRKDIR}/CODE2001.TTF ${WRKSRC}/${FONTNAME}.ttf

do-install:
	@${MKDIR} ${STAGEDIR}${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/* ${STAGEDIR}${FONTSDIR}

.include <bsd.port.mk>
