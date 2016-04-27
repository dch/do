# Created by: ijliao
# $FreeBSD: head/devel/sedsed/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	sedsed
PORTVERSION=	1.0
CATEGORIES=	devel
MASTER_SITES=	http://sedsed.sourceforge.net/
EXTRACT_SUFX=	# empty

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Python script that masters SED scripts

PLIST_FILES=	bin/sedsed
EXTRACT_CMD=	${CP}
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	${WRKDIR}

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

USES=		python

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${DISTNAME} ${STAGEDIR}${PREFIX}/bin/sedsed

.include <bsd.port.mk>
