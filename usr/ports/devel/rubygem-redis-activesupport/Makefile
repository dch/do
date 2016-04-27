# $FreeBSD: head/devel/rubygem-redis-activesupport/Makefile 394150 2015-08-13 17:37:23Z sunpoet $

PORTNAME=	redis-activesupport
PORTVERSION=	4.1.1
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Redis store for ActiveSupport::Cache

LICENSE=	MIT

RUN_DEPENDS=	rubygem-activesupport4>=4.0.0:${PORTSDIR}/devel/rubygem-activesupport4 \
		rubygem-redis-store>=1.1.0:${PORTSDIR}/devel/rubygem-redis-store

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
