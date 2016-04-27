# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/devel/rubygem-fluent-logger/Makefile 390125 2015-06-19 16:41:59Z sunpoet $

PORTNAME=	fluent-logger
PORTVERSION=	0.5.0
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Structured event logger for Ruby

LICENSE=	APACHE20

RUN_DEPENDS=	rubygem-msgpack>=0.5.4:${PORTSDIR}/devel/rubygem-msgpack

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/fluent-post

.include <bsd.port.mk>
