# Created by: Romain Tartiere <romain@blogreen.org>
# $FreeBSD: head/deskutils/tomboy-plugin-wordcount/Makefile 383353 2015-04-05 18:59:58Z bapt $

PORTNAME=	tomboy-plugin-wordcount
PORTVERSION=	0.2
PORTREVISION=	1
CATEGORIES=	deskutils
MASTER_SITES=	http://www.proven-corporation.com/~jhs/
DISTNAME=	tomboy-wordcount-${PORTVERSION}

MAINTAINER=	mono@FreeBSD.org
COMMENT=	Counts lines, words, and characters in your notes

BUILD_DEPENDS=	tomboy:${PORTSDIR}/deskutils/tomboy
RUN_DEPENDS=	tomboy:${PORTSDIR}/deskutils/tomboy

BROKEN=		Unfetchable
ALL_TARGET=	Wordcount.dll

ADDINS_DIR=	lib/tomboy/addins
PLIST_FILES=${ADDINS_DIR}/Wordcount.dll

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/${ADDINS_DIR}
	${INSTALL_DATA} ${WRKSRC}/Wordcount.dll ${STAGEDIR}${PREFIX}/${ADDINS_DIR}

.include <bsd.port.mk>
