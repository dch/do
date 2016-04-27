# Created by: rene@FreeBSD.org
# $FreeBSD: head/comms/dcf77pi/Makefile 385521 2015-05-06 15:16:53Z mat $

PORTNAME=	dcf77pi
PORTVERSION=	3.3.0
CATEGORIES=	comms

MAINTAINER=	rene@FreeBSD.org
COMMENT=	DCF77 receiver/logger/analyzer and library for the Raspberry Pi

LICENSE=	BSD2CLAUSE

USE_GITHUB=	yes
GH_ACCOUNT=	rene0

USES=		ncurses
USE_LDCONFIG=	yes

PATCH_STRIP=	-p1
PORTDOCS=	README.md

INSTALL_TARGET=	install-strip

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
.for f in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${STAGEDIR}${DOCSDIR}
.endfor

.include <bsd.port.mk>
