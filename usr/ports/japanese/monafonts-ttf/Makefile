# Created by: MANTANI Nobutaka <nobutaka@FreeBSD.org>
# $FreeBSD: head/japanese/monafonts-ttf/Makefile 381876 2015-03-21 23:05:19Z bapt $

PORTNAME=	monafonts-ttf
PORTVERSION=	2.90
PORTREVISION=	3
CATEGORIES=	japanese x11-fonts
MASTER_SITES=	SF/monafont/monafont/monafont-${PORTVERSION}
DISTNAME=	monafont-ttf-${PORTVERSION}

MAINTAINER=	nobutaka@FreeBSD.org
COMMENT=	X11 TrueType Kanji fonts

USES=		fonts zip
NO_BUILD=	yes
NO_WRKSUBDIR=	yes
FONTNAME=	TrueType
MAKE_ENV=	FONTSDIR=${FONTSDIR:S,${PREFIX},,}

do-install:
	${MKDIR} ${STAGEDIR}${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/mona.ttf ${FILESDIR}/fonts.dir.mona ${STAGEDIR}${FONTSDIR}

.include <bsd.port.mk>
