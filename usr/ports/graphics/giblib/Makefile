# Created by: Jeremy Norris <ishmael27@home.com>
# $FreeBSD: head/graphics/giblib/Makefile 375663 2014-12-27 00:09:02Z gblach $

PORTNAME=	giblib
PORTVERSION=	1.2.4
PORTREVISION=	13
CATEGORIES=	graphics devel
MASTER_SITES=	http://linuxbrit.co.uk/downloads/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Utility library that includes a wrapper for imlib2

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libImlib2.so:${PORTSDIR}/graphics/imlib2

USES=		pathfix pkgconfig libtool
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
MAKE_ARGS=	docsdir=${DOCSDIR}

PORTDOCS=	*

OPTIONS_DEFINE=	DOCS

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/lib/libgiblib.so

.include <bsd.port.mk>
