# Created by: Alexander Logvinov <ports@logvinov.com>
# $FreeBSD: head/multimedia/umr/Makefile 343552 2014-02-09 23:03:10Z bapt $

PORTNAME=	umr
PORTVERSION=	0.3
CATEGORIES=	multimedia
MASTER_SITES=	http://www.oldunreal.com/mods/other/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Unreal Media Ripper


PLIST_FILES=	bin/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
