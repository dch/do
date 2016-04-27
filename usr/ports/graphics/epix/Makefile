# Created by: ijliao
# $FreeBSD: head/graphics/epix/Makefile 367307 2014-09-04 19:26:24Z antoine $

PORTNAME=	epix
PORTVERSION=	1.2.14
CATEGORIES=	graphics
MASTER_SITES=	http://mathcs.holycross.edu/~ahwang/epix/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Creates math plots and line figures using easy-to-learn syntax

LICENSE=	GPLv2 # (or later)

USE_TEX=	texmf:build
BUILD_DEPENDS=	bash:${PORTSDIR}/shells/bash
RUN_DEPENDS=	bash:${PORTSDIR}/shells/bash

USES=		gmake makeinfo tar:bzip2
USE_TEX=	latex dvipsk:build
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-bash=${LOCALBASE}/bin/bash \
		--with-runtime=${CXX}

INFO=		epix

OPTIONS_DEFINE=	DOCS

post-patch:
	@${REINPLACE_CMD} -e '/usepackage/s|pstricks,xcolor|pstricks,tikz,xcolor|' \
		${WRKSRC}/doc/manual.tex

.include <bsd.port.mk>
