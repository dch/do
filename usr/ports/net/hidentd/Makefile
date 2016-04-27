# Created by: Kirill Ponomarew <krion@FreeBSD.org>
# $FreeBSD: head/net/hidentd/Makefile 360664 2014-07-04 21:44:04Z adamw $

PORTNAME=	hidentd
PORTVERSION=	0.4
CATEGORIES=	net
MASTER_SITES=	http://core.segfault.pl/~hobbit/hidentd/dist/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple and secure ident (RFC1413) server

GNU_CONFIGURE=	yes

PORTDOCS=	README
PLIST_FILES=	man/man8/hidentd.8.gz sbin/hidentd

OPTIONS_DEFINE=	DOCS

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
