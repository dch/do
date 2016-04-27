# Created by: Mark Pulford <mark@kyne.com.au>
# $FreeBSD: head/archivers/xdms/Makefile 357526 2014-06-11 18:55:29Z marino $

PORTNAME=	xdms
PORTVERSION=	1.3.2
CATEGORIES=	archivers
MASTER_SITES=	http://zakalwe.fi/~shd/foss/xdms/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tool for decompressing Amiga DMS files

OPTIONS_DEFINE=	DOCS

USES=		tar:bzip2
HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX}
ALL_TARGET=	xdms

USE_CSTD=	gnu89

PORTDOCS=	xdms.txt
PLIST_FILES=	bin/xdms

post-patch:
	${REINPLACE_CMD} "s@-O2 -Wall@$${CFLAGS} -Wall@g" ${WRKSRC}/src/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/xdms ${STAGEDIR}${PREFIX}/bin
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
.for docs in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${docs} ${STAGEDIR}${DOCSDIR}
.endfor

.include <bsd.port.mk>
