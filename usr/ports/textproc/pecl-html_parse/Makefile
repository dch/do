# Created by: Ditesh Shashikant Gathani <ditesh@gathani.org>
# $FreeBSD: head/textproc/pecl-html_parse/Makefile 379897 2015-02-25 11:22:40Z antoine $

PORTNAME=	html_parse
PORTVERSION=	1.0.0
CATEGORIES=	textproc pear
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
DIST_SUBDIR=	PECL

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PECL extension for the ekhtml library

LICENSE=	PHP30

BUILD_DEPENDS=	${LOCALBASE}/lib/libekhtml.a:${PORTSDIR}/textproc/ekhtml
RUN_DEPENDS=	${LOCALBASE}/lib/libekhtml.a:${PORTSDIR}/textproc/ekhtml

USES=		tar:tgz
USE_PHP=	yes
USE_PHP_BUILD=	yes
USE_PHPEXT=	yes
IGNORE_WITH_PHP=	5 56

CONFIGURE_ARGS=	--enable-html_parse

.include <bsd.port.mk>
