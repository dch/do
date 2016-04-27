# Created by: Eric Freeman <freebsdports@chillibear.com>
# $FreeBSD: head/net/rubygem-whois/Makefile 395356 2015-08-26 09:31:41Z sunpoet $

PORTNAME=	whois
PORTVERSION=	3.6.1
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby whois library

LICENSE=	MIT

RUN_DEPENDS=	rubygem-activesupport>=3:${PORTSDIR}/devel/rubygem-activesupport

NO_ARCH=	yes

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/whoisrb

.include <bsd.port.mk>
