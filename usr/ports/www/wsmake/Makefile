# Created by: Joseph Koshy <jkoshy@FreeBSD.org>
# $FreeBSD: head/www/wsmake/Makefile 387910 2015-05-30 00:36:00Z amdmi3 $

PORTNAME=	wsmake
PORTVERSION=	0.7.901
CATEGORIES=	www
MASTER_SITES=	SF/${PORTNAME}/OldFiles

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Software for production and maintenance of web sites

LICENSE=	GPLv2 # or later
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		gmake tar:bzip2
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-gwsmake=no --enable-iswmake=no

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
INFO=	wsmake iwsmake gwsmake
.else
CONFIGURE_ARGS+=	--enable-docs=no
.endif

.include <bsd.port.mk>
