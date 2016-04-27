# Created by: Grzegorz Blach <gblach@FreeBSD.org>
# $FreeBSD: head/x11/terminology/Makefile 384128 2015-04-16 21:55:10Z bapt $

PORTNAME=	terminology
PORTVERSION=	0.8.0
CATEGORIES=	x11 enlightenment
MASTER_SITES=	http://download.enlightenment.org/rel/apps/${PORTNAME}/

MAINTAINER=	enlightenment@FreeBSD.org
COMMENT=	EFL Terminal Emulator

LICENSE=	BSD2CLAUSE

LIB_DEPENDS=	libefl.so:${PORTSDIR}/devel/efl \
		libelementary.so:${PORTSDIR}/x11-toolkits/elementary

DIST_SUBDIR=	enlightenment
GNU_CONFIGURE=	yes
USES=		pkgconfig tar:xz

OPTIONS_DEFINE=		NLS
OPTIONS_SUB=		yes

.include <bsd.port.options.mk>

NLS_USES=		gettext
NLS_CONFIGURE_ENABLE=	nls

.include <bsd.port.mk>
