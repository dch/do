# Created by: Eric Freeman <freebsdports@chillibear.com>
# $FreeBSD: head/devel/rubygem-test-unit/Makefile 393012 2015-07-27 19:23:15Z sunpoet $

PORTNAME=	test-unit
PORTVERSION=	3.1.3
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Improved version of Test::Unit bundled in Ruby

LICENSE=	GPLv2 PSFL RUBY
LICENSE_COMB=	dual

RUN_DEPENDS=	rubygem-power_assert>=0:${PORTSDIR}/devel/rubygem-power_assert

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
