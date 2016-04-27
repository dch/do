# Created by: chinsan
# $FreeBSD: head/devel/pecl-hidef/Makefile 379880 2015-02-25 07:43:59Z vanilla $

PORTNAME=	hidef
PORTVERSION=	0.1.13
CATEGORIES=	devel pear
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
DIST_SUBDIR=	PECL

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Constants for real

LICENSE=	PHP301

USES=		tar:tgz
USE_PHP=	yes
USE_PHPEXT=	yes
IGNORE_WITH_PHP=	56

CONFIGURE_ARGS=	--enable-hidef

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

post-patch:
	@${REINPLACE_CMD} -e 's,malloc.h,stdlib.h,g' \
	${WRKSRC}/hidef.c

.include <bsd.port.mk>
