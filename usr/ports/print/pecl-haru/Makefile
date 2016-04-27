# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/print/pecl-haru/Makefile 379773 2015-02-24 09:25:13Z vanilla $

PORTNAME=	haru
PORTVERSION=	1.0.4
CATEGORIES=	print pear
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PECL extension to Haru PDF functions

LICENSE=	PHP301
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${LOCALBASE}/include/hpdf.h:${PORTSDIR}/print/libharu
RUN_DEPENDS:=	${LOCALBASE}/include/hpdf.h:${PORTSDIR}/print/libharu

USES=		tar:tgz
USE_PHP=	yes
USE_PHPEXT=	yes

CONFIGURE_ARGS+=	--with-haru=${LOCALBASE}
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS+=	CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
