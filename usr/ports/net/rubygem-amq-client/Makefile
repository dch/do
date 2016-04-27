# Created by: Cheng-Lung Sung <clsung@FreeBSD.org>
# $FreeBSD: head/net/rubygem-amq-client/Makefile 391473 2015-07-06 18:05:37Z sunpoet $

PORTNAME=	amq-client
PORTVERSION=	1.0.4
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Fully-featured, low-level AMQP 0.9.1 client in Ruby

LICENSE=	MIT

RUN_DEPENDS=	rubygem-amq-protocol>=1.9.0:${PORTSDIR}/net/rubygem-amq-protocol \
		rubygem-eventmachine>=0:${PORTSDIR}/devel/rubygem-eventmachine

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
