# Created by: Evan Sarmiento <esarmiento@wayfair.com>
# $FreeBSD: head/databases/pecl-chdb/Makefile 385521 2015-05-06 15:16:53Z mat $

PORTNAME=	chdb
PORTVERSION=	1.0.2
CATEGORIES=	databases
PKGNAMEPREFIX=	pecl-
DIST_SUBDIR=	PECL

MAINTAINER=	ports@FreeBSD.org
COMMENT=	CHDB extension

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${LOCALBASE}/lib/libcmph.so:${PORTSDIR}/devel/cmph
RUN_DEPENDS=	${LOCALBASE}/lib/libcmph.so:${PORTSDIR}/devel/cmph

USE_PHP=	yes
USE_PHP_BUILD=	yes
USE_PHPIZE=	yes
USE_PHPEXT=	yes
PHP_MODNAME=	chdb
IGNORE_WITH_PHP=5

CFLAGS+=	-L${LOCALBASE}/lib

USE_GITHUB=	yes
GH_ACCOUNT=	lcastelli

CONFIGURE_ARGS=	--with-libcmph-dir=${LOCALBASE}/lib

.include <bsd.port.mk>
