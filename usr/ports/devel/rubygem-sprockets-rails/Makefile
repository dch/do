# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: head/devel/rubygem-sprockets-rails/Makefile 393807 2015-08-09 16:39:33Z swills $

PORTNAME=	sprockets-rails
PORTVERSION=	2.3.2
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Sprockets Rails integration

LICENSE=	MIT

RUN_DEPENDS?=	rubygem-actionpack4>=4.0:${PORTSDIR}/www/rubygem-actionpack4 \
		rubygem-activesupport4>=4.0:${PORTSDIR}/devel/rubygem-activesupport4 \
		rubygem-sprockets3>=3.0.3:${PORTSDIR}/devel/rubygem-sprockets3

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
