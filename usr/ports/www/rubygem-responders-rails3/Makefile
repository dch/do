# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/www/rubygem-responders-rails3/Makefile 388614 2015-06-05 18:57:30Z sunpoet $

PORTNAME=	responders
PORTVERSION=	1.1.2
CATEGORIES=	www rubygems
MASTER_SITES=	RG
PKGNAMESUFFIX=	-rails3

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Simple Ruby DSL for making HTTP requests

LICENSE=	MIT

RUN_DEPENDS=	rubygem-railties>=3.2.0:${PORTSDIR}/www/rubygem-railties

PORTSCOUT=	limit:^1\.[0-9]*

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
