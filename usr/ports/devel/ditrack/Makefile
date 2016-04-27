# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/devel/ditrack/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	ditrack
PORTVERSION=	0.8
PORTREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}%20${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tracking system based on Subversion repository

RUN_DEPENDS=	svn:${PORTSDIR}/devel/subversion

WRKSRC=		${WRKDIR}/DITrack-${PORTVERSION}
NO_BUILD=	yes

USES=		python
USE_PYTHON=	distutils
PYDISTUTILS_PKGNAME=	DITrack

OPTIONS_DEFINE=	DOCS

post-install:
	@${MKDIR} ${STAGEDIR}${DATADIR}
	${INSTALL_SCRIPT} ${WRKSRC}/upgrade-0.7-db.py ${STAGEDIR}${DATADIR}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/html/index.html ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
