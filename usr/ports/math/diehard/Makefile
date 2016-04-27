# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: head/math/diehard/Makefile 362023 2014-07-16 03:00:46Z adamw $

PORTNAME=	diehard
PORTVERSION=	0.1
CATEGORIES=	math
MASTER_SITES=	http://www.cs.hku.hk/~diehard/cdrom/ \
		http://stat.fsu.edu/pub/diehard/
DISTNAME=	die.c

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Marsaglia's Diehard Battery of Tests of Randomness

ALL_TARGET=	diehard
WRKSRC=		${WRKDIR}/${DISTNAME}
PLIST_SUB=	DOCSDIR="share/doc/${PORTNAME}" DATADIR="share/${PORTNAME}"

DOCSLIST=	NOTES readme

OPTIONS_DEFINE=	DOCS

post-patch:
	@${REINPLACE_CMD} -e 's|operm5\.cov|${DATADIR}/operm5.cov|g;' \
		${WRKSRC}/cdoperm5.c
	@${REINPLACE_CMD} -e 's|CC=gcc||g;' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/diehard ${STAGEDIR}${PREFIX}/bin
	@${MKDIR} ${STAGEDIR}${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/operm5.cov ${STAGEDIR}${DATADIR}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${DOCSLIST:S!^!${WRKSRC}/!} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
