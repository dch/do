# Created by: Juergen Lock <nox@jelal.kn-bremen.de>
# $FreeBSD: head/archivers/rpm2cpio/Makefile 393904 2015-08-10 20:23:51Z amdmi3 $

PORTNAME=	rpm2cpio
PORTVERSION=	1.3
PORTREVISION=	2
CATEGORIES=	archivers
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	nox@FreeBSD.org
COMMENT=	Convert .rpm files for extraction with /usr/bin/cpio, needs just perl

NO_WRKSUBDIR=	yes

USES=		perl5
NO_BUILD=	yes
NO_ARCH=	yes
REINPLACE_ARGS=

PLIST_FILES=	bin/rpm2cpio.pl

do-extract:
	@${MKDIR} ${WRKSRC}
	@${REINPLACE_CMD} -e 's|^#!/usr/bin/perl|#!${PERL}|' ${FILESDIR}/${PORTNAME} >${WRKDIR}/${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}.pl

.include <bsd.port.mk>
