# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: head/www/rubygem-selenium-webdriver/Makefile 385983 2015-05-10 20:16:30Z sunpoet $

PORTNAME=	selenium-webdriver
PORTVERSION=	2.45.0
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Tool for writing automated tests of websites

LICENSE=	APACHE20

RUN_DEPENDS=	rubygem-childprocess>=0.5:${PORTSDIR}/devel/rubygem-childprocess \
		rubygem-multi_json>=1.0:${PORTSDIR}/devel/rubygem-multi_json \
		rubygem-rubyzip>=1.0:${PORTSDIR}/archivers/rubygem-rubyzip \
		rubygem-websocket>=1.0:${PORTSDIR}/www/rubygem-websocket

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
