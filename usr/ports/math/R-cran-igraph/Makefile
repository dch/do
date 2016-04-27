# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/math/R-cran-igraph/Makefile 367888 2014-09-10 20:50:31Z gerald $

PORTNAME=	igraph
DISTVERSION=	0.7.1
PORTREVISION=	1
CATEGORIES=	math
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	R extension package for igraph

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

USES=	cran:auto-plist

.include <bsd.port.pre.mk>

.if ${ARCH} == "sparc64"
BROKEN=		Does not compile on sparc64: uses i386 assembler
.endif

.include <bsd.port.post.mk>
