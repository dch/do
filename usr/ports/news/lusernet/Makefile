# $FreeBSD: head/news/lusernet/Makefile 390051 2015-06-18 19:49:09Z amdmi3 $

PORTNAME=	lusernet
PORTVERSION=	0.4.2
PORTREVISION=	5
CATEGORIES=	news gnustep
MASTER_SITES=	LOCAL/dinoex
DISTNAME=	LuserNET-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GNUstep news reader

LICENSE=	GPLv2

USES=		gnustep
USE_GNUSTEP=	back build
LIB_DEPENDS=	libPantomime.so:${PORTSDIR}/mail/pantomime

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/GNUstep/Local/Applications/LuserNET.app/LuserNET

.include <bsd.port.mk>
