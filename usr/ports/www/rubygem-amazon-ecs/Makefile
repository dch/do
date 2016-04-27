# Created by: TAKATSU Tomonari <tota@rtfm.jp>
# $FreeBSD: head/www/rubygem-amazon-ecs/Makefile 387063 2015-05-22 20:21:39Z sunpoet $

PORTNAME=	amazon-ecs
PORTVERSION=	2.3.1
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Generic Amazon E-commerce REST API written in Ruby

LICENSE=	MIT

RUN_DEPENDS=	rubygem-nokogiri>=1.4:${PORTSDIR}/textproc/rubygem-nokogiri \
		${RUBY_PKGNAMEPREFIX}hmac>=0.3:${PORTSDIR}/security/ruby-hmac

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
