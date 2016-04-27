# Created by: Valerio Daelli <valerio.daelli@gmail.com>
# $FreeBSD: head/sysutils/geteltorito/Makefile 346301 2014-02-27 09:26:09Z ehaupt $

PORTNAME=	geteltorito
PORTVERSION=	1.0
CATEGORIES=	sysutils
MASTER_SITES=	http://www.uni-koblenz.de/~krienke/ftp/noarch/geteltorito/
DISTFILES=	${PORTNAME}.pl
EXTRACT_ONLY=

MAINTAINER=	valerio.daelli@gmail.com
COMMENT=	El Torito image extractor

NO_BUILD=	yes
USES=		perl5 shebangfix
USE_PERL5=	run

PLIST_FILES=	bin/${PORTNAME}
SHEBANG_FILES=	geteltorito.pl

do-extract:
	@${MKDIR} ${WRKSRC}
	@${CP} ${DISTDIR}/${DISTFILES} ${WRKSRC}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME}.pl \
		${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
