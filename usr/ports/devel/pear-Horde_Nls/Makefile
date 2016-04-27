# Created by: Martin Matuska <mm@FreeBSD.org>
# $FreeBSD: head/devel/pear-Horde_Nls/Makefile 376829 2015-01-12 14:54:44Z mm $

PORTNAME=	Horde_Nls
PORTVERSION=	2.0.5
CATEGORIES=	devel www pear
MASTER_SITES=	http://pear.horde.org/get/
PKGNAMEPREFIX=	pear-

MAINTAINER=	horde@FreeBSD.org
COMMENT=	Horde Native Language Support

USES=		horde
USE_HORDE_RUN=	Horde_Translation \
		Horde_Util

OPTIONS_DEFINE=	GEOIP
GEOIP_DESC=	Depend on geoip PHP extension

GEOIP_USE=	PHP=yes
GEOIP_RUN_DEPENDS=	${PHPBASE}/lib/php/${PHP_EXT_DIR}/geoip.so:${PORTSDIR}/net/pecl-geoip

.include <bsd.port.mk>
