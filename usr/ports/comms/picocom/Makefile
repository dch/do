# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: head/comms/picocom/Makefile 389300 2015-06-12 20:58:13Z erwin $

PORTNAME=	picocom
PORTVERSION=	1.7
CATEGORIES=	comms
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Dumb Terminal Emulator

ALL_TARGET=	picocom
USES=		gmake

PLIST_FILES=	bin/picocom man/man8/picocom.8.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.8 ${STAGEDIR}${MAN8PREFIX}/man/man8/
.include <bsd.port.mk>
