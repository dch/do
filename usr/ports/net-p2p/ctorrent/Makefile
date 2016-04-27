# Created by: Florent Thoumie <flz@xbsd.org>
# $FreeBSD: head/net-p2p/ctorrent/Makefile 345426 2014-02-21 13:38:52Z ehaupt $

PORTNAME=	ctorrent
PORTVERSION=	3.3.2
PORTREVISION=	3
CATEGORIES=	net-p2p
MASTER_SITES=	http://www.rahul.net/dholmes/ctorrent/
DISTNAME=	${PORTNAME}-dnh${PORTVERSION}

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	BitTorrent Client written in C for FreeBSD and Linux

GNU_CONFIGURE=	yes

PLIST_FILES=	bin/ctorrent
PORTDOCS=	README-DNH.TXT UserGuide

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
.for i in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/$i ${STAGEDIR}${DOCSDIR}/
.endfor
.endif

.include <bsd.port.mk>
