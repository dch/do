# Created by: Oleg Ginzburg <olevole@olevole.ru>
# $FreeBSD: head/sysutils/ioping/Makefile 369055 2014-09-23 12:55:42Z antoine $

PORTNAME=	ioping
PORTVERSION=	0.8
CATEGORIES=	sysutils
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	olevole@olevole.ru
COMMENT=	Simple disk I/0 latency measuring tool

LICENSE=	GPLv3

PLIST_FILES=	bin/ioping man/man1/ioping.1.gz

do-build:
	(cd ${WRKSRC} && ${CC} ${CFLAGS} -DVERSION=${PORTVERSION} ioping.c \
		-o ioping ${LDFLAGS} -lm)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ioping ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ioping.1 ${STAGEDIR}${MAN1PREFIX}/man/man1

.include <bsd.port.mk>
