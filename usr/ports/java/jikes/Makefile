# Created by: Matthew Dillon <dillon@backplane.com>
# $FreeBSD: head/java/jikes/Makefile 384038 2015-04-15 08:20:27Z tijl $

PORTNAME=	jikes
PORTVERSION=	1.22
PORTREVISION=	2
CATEGORIES=	java
MASTER_SITES=	SF/${PORTNAME}/Jikes/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Java source to byte-code compiler made available by IBM

PLIST_SUB=	PORTVERSION=${PORTVERSION}
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	ac_cv_search_libiconv_open=no
USES=		iconv gmake tar:bzip2

CPPFLAGS+=	-I${LOCALBASE}/include
LIBS+=		-L${LOCALBASE}/lib

.include <bsd.port.mk>
