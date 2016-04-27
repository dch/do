# Created by: gurkan@phys.ethz.ch
# $FreeBSD: head/x11/terminal.app/Makefile 391062 2015-07-01 13:50:28Z theraven $

PORTNAME=	terminal.app
PORTVERSION=	0.9.8
PORTREVISION=	3
CATEGORIES=	x11 gnustep
MASTER_SITES=	SAVANNAH/gap
DISTNAME=	Terminal-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Terminal Emulator for GNUstep

LICENSE=	GPLv2 # only
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		gnustep iconv
USE_GNUSTEP=	back build

MAKE_ARGS+=	Terminal_TOOL_LIBS='${ICONV_LIB} -lutil'
MAKE_ENV+=	GNUSTEP_INSTALLATION_DOMAIN=SYSTEM

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/GNUstep/System/Applications/Terminal.app/Terminal

.include <bsd.port.mk>
