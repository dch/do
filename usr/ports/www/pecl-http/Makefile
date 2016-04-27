# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/www/pecl-http/Makefile 393937 2015-08-11 11:15:14Z bofh $

PORTNAME=	http
PORTVERSION=	2.5.1
CATEGORIES=	www
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
DISTNAME=	pecl_${PORTNAME}-${PORTVERSION}

MAINTAINER=	bofh@FreeBSD.org
COMMENT=	Extended HTTP Support

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${LOCALBASE}/lib/php/${PHP_EXT_DIR}/raphf.so:${PORTSDIR}/devel/pecl-raphf \
		${LOCALBASE}/lib/php/${PHP_EXT_DIR}/propro.so:${PORTSDIR}/devel/pecl-propro \
		re2c:${PORTSDIR}/devel/re2c
RUN_DEPENDS=	${LOCALBASE}/lib/php/${PHP_EXT_DIR}/raphf.so:${PORTSDIR}/devel/pecl-raphf \
		${LOCALBASE}/lib/php/${PHP_EXT_DIR}/propro.so:${PORTSDIR}/devel/pecl-propro
LIB_DEPENDS=	libcurl.so:${PORTSDIR}/ftp/curl \
		libevent.so:${PORTSDIR}/devel/libevent2

USES=		tar:tgz
USE_PHP=	yes
USE_PHPEXT=	yes
CONFLICTS=	pecl-http1*

.include <bsd.port.mk>
