# Created by: David O'Brien (obrien@cs.ucdavis.edu)
# $FreeBSD: head/chinese/cless/Makefile 363162 2014-07-28 14:37:20Z adamw $

PORTNAME=	cless
PORTVERSION=	290
CATEGORIES=	chinese
MASTER_SITES=	ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Better pager utility (and it speaks Chinese)

GNU_CONFIGURE=	yes
CFLAGS+=	-DHANZI # LDFLAGS=-s datadir=/usr/local/lib/less
CPP=		#

OPTIONS_DEFINE=	DOCS


post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.CLESS ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
