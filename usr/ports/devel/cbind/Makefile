# Created by: David Holm <david@realityrift.com>
# $FreeBSD: head/devel/cbind/Makefile 347405 2014-03-07 16:49:09Z bapt $

PORTNAME=	cbind
PORTVERSION=	6
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.cs.kuleuven.ac.be/pub/Ada-Belgium/cdrom/ase02_02/tools/cbind/ \
			   ftp://ftp.cnam.fr/pub2/Ada/PAL/swtools/cbind/
DISTNAME=	${PORTNAME}${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Translator for "thin" Ada bindings to C

OPTIONS_DEFINE=	DOCS

USES=		zip
MAKE_JOBS_UNSAFE=	yes

${WRKSRC}=	${WRKDIR}/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cbind ${STAGEDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/cbfe ${STAGEDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/cbpp ${STAGEDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/cbind.1 ${STAGEDIR}${PREFIX}/man/man1
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/DOCS ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
