# Created by: gurkan@phys.ethz.ch
# $FreeBSD: head/sysutils/timemon/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	timemon
PORTVERSION=	4.1
PORTREVISION=	2
CATEGORIES=	sysutils gnustep
MASTER_SITES=	SAVANNAH/gap
DISTNAME=	TimeMon-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	CPU time usage monitor for GNUstep

NO_CDROM=	distribute without fee

USES=		gnustep
USE_GNUSTEP=	back build

post-patch:
	${RM} ${WRKSRC}/shared_obj/*.*

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/GNUstep/Local/Applications/TimeMon.app/TimeMon

.include <bsd.port.mk>
