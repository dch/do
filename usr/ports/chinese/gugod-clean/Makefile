# Created by: Kang-min Liu <gugod@gugod.org>
# $FreeBSD: head/chinese/gugod-clean/Makefile 383351 2015-04-05 18:38:33Z bapt $

PORTNAME=	gugod-clean
PORTVERSION=	1.3
PORTREVISION=	3
CATEGORIES=	chinese x11-fonts
MASTER_SITES=	ftp://freebsd.sinica.edu.tw/pub/gugod/

MAINTAINER=	gugod@gugod.org
COMMENT=	Pretty font modifyed from X11 schumacher-clean that match kcfonts

BROKEN=		Unfetchable
USES=		fonts
RUN_DEPENDS=	bdftopcf:${PORTSDIR}/x11-fonts/bdftopcf

FONTFILES=	gugod16.bdf gugod18.bdf gugod20.bdf gugod22.bdf

WRKSRC=		${WRKDIR}
NO_BUILD=	yes
FONTNAME=	gugod

do-install:
	@${MKDIR} ${STAGEDIR}${FONTSDIR}
	${INSTALL_DATA} ${FONTFILES:S,^,${WRKSRC}/,} ${STAGEDIR}${FONTSDIR}

.include <bsd.port.mk>
