# Created by: Wen Heping<wen@FreeBSD.org>
# $FreeBSD: head/databases/pecl-tokyo_tyrant/Makefile 379727 2015-02-24 02:47:25Z vanilla $

PORTNAME=	tokyo_tyrant
PORTVERSION=	0.7.0
CATEGORIES=	databases pear
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Wrapper to the Tokyo Tyrant client library

LICENSE=	PHP301
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libtokyotyrant.so:${PORTSDIR}/databases/tokyotyrant

USES=		pkgconfig tar:tgz
USE_PHP=	session
USE_PHP_BUILD=	spl
USE_PHPIZE=	yes
USE_PHPEXT=	yes

.include <bsd.port.mk>
