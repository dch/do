# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/www/rubygem-flowdock/Makefile 392788 2015-07-24 08:59:06Z sunpoet $

PORTNAME=	flowdock
PORTVERSION=	0.7.0
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Gem for Flowdock API

LICENSE=	MIT

RUN_DEPENDS=	rubygem-httparty>=0.7:${PORTSDIR}/www/rubygem-httparty \
		rubygem-multi_json>=0:${PORTSDIR}/devel/rubygem-multi_json

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
