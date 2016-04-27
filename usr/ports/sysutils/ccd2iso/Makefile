# Created by: Sergey A. Osokin <osa@FreeBSD.org>
# $FreeBSD: head/sysutils/ccd2iso/Makefile 362126 2014-07-17 08:57:51Z olgeni $

PORTNAME=	ccd2iso
PORTVERSION=	0.9
PORTREVISION?=	1
CATEGORIES=	sysutils
MASTER_SITES=	SF/${PORTNAME}/OldFiles
DISTNAME=	${PORTNAME}

MAINTAINER=	osa@FreeBSD.org
COMMENT=	CloneCD to ISO converter

PLIST_FILES=	bin/ccd2iso

GNU_CONFIGURE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/ccd2iso ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
