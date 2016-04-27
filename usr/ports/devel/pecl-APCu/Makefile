# Created by: John Chen <johnpupu@gmail.com>
# $FreeBSD: head/devel/pecl-APCu/Makefile 371434 2014-10-24 11:12:12Z robak $

PORTNAME=	APCu
PORTVERSION=	4.0.7
CATEGORIES=	devel
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	PECL

MAINTAINER=	johnpupu@gmail.com
COMMENT=	APC User Caching

LICENSE=	PHP301

CONFLICTS=	pecl-APC-[0-9]*

CFLAGS+=	-I${LOCALBASE}/include
USE_PHP=	yes
USE_PHP_BUILD=	yes
USE_PHPIZE=	yes
USE_PHPEXT=	yes
PHP_MODNAME=	${PORTNAME:tl}
WRKSRC=		${WRKDIR}/${PORTNAME:tl}-${PORTVERSION}

.include <bsd.port.mk>
