# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: head/comms/sredird/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	sredird
PORTVERSION=	2.2.2
PORTREVISION=	1
CATEGORIES=	comms
MASTER_SITES=	SUNSITE/system/serial

MAINTAINER=	ports@FreeBSD.org
COMMENT=	RFC 2217 compliant serial port redirector

LICENSE=	GPLv2

OPTIONS_DEFINE=	DOCS

do-build:
	${CC} ${CFLAGS} -Wall -o ${WRKSRC}/sredird ${WRKSRC}/sredird.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sredird ${STAGEDIR}${PREFIX}/libexec
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_MAN} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
