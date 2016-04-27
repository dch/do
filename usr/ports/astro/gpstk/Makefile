# Created by: Bruce M Simpson <bms@FreeBSD.org>
# $FreeBSD: head/astro/gpstk/Makefile 383279 2015-04-05 09:55:54Z bapt $

PORTNAME=	gpstk
PORTVERSION=	2.5
CATEGORIES=	astro devel
MASTER_SITES=	SF
DISTNAME=	${PORTNAME}-${PORTVERSION}.src

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Toolkit for developing GPS applications

LICENSE=	LGPL3

BROKEN=		Distfile size mismatch
USES=		cmake python:run
USE_GCC=	yes
USE_LDCONFIG=	yes

WRKSRC=		${WRKDIR}/dev

.include <bsd.port.mk>
