# Created by: Seiichirou Hiraoka
# $FreeBSD: head/net/lambdamoo/Makefile 348490 2014-03-17 16:37:19Z ehaupt $

PORTNAME=	lambdamoo
PORTVERSION=	1.8.1
PORTREVISION=	1
CATEGORIES=	net
MASTER_SITES=	SF
DISTNAME=	LambdaMOO-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The most commonly used program to run MOOs

USES=		bison
GNU_CONFIGURE=	yes

CONFIGURE_ENV=	YACC=${YACC}

WRKSRC=		${WRKDIR}/MOO-${PORTVERSION}

PLIST_FILES=	sbin/moo
PORTDOCS=	*

ALL_TARGET=

OPTIONS_DEFINE=	DOCS

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/moo ${STAGEDIR}${PREFIX}/sbin
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC}; ${INSTALL_MAN} Minimal.db README README.Minimal \
		${STAGEDIR}${DOCSDIR})
	${INSTALL_DATA} ${FILESDIR}/README.FreeBSD ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
