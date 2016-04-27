# Created by: Dmitry Marakasov <amdmi3@FreeBSD.org>
# $FreeBSD: head/mail/findmaildirs/Makefile 394570 2015-08-18 10:43:32Z amdmi3 $

PORTNAME=	findmaildirs
PORTVERSION=	0.2
CATEGORIES=	mail

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Simple utility to create list of maildirs for mutt

USE_GITHUB=	yes
GH_ACCOUNT=	AMDmi3

PLIST_FILES=	bin/${PORTNAME}

PORTDOCS=	README

OPTIONS_DEFINE=	DOCS

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}/

.include <bsd.port.mk>
