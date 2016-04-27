# Created by: Manuel Giraud <manuel.giraud@gmail.com>
# $FreeBSD: head/x11-fonts/profont/Makefile 381876 2015-03-21 23:05:19Z bapt $

PORTNAME=	profont
PORTVERSION=	400
PORTREVISION=	2
CATEGORIES=	x11-fonts
MASTER_SITES=	http://www.tobiasjung.net/dl/
DISTNAME=	${PORTNAME}-x11

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Ultimate programming font

USES=		fonts

do-build:
	${GZIP_CMD} ${WRKSRC}/*.pcf

do-install:
	@${MKDIR} ${STAGEDIR}${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${STAGEDIR}${FONTSDIR}

.include <bsd.port.mk>
