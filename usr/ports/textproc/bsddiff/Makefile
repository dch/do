# Created by: Gabor Kovesdan <gabor@FreeBSD.org>
# $FreeBSD: head/textproc/bsddiff/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	diff
PORTVERSION=	20120705
CATEGORIES=	textproc
MASTER_SITES=	LOCAL/gabor
PKGNAMEPREFIX=	bsd-

MAINTAINER=	gabor@FreeBSD.org
COMMENT=	BSD-licensed version of diff from OpenBSD

USES=	uidfix
WRKSRC=		${WRKDIR}/${PORTNAME}

MAKE_ENV+=	BINDIR="${PREFIX}/bin" \
		MANDIR="${MANPREFIX}/man/man" \
		CATDIR="${MANPREFIX}/man/man"

.include <bsd.port.mk>
