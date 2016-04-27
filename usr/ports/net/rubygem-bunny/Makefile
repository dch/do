# Created by: renchap@cocoa-x.com
# $FreeBSD: head/net/rubygem-bunny/Makefile 391169 2015-07-02 16:01:06Z pgollucci $

PORTNAME=	bunny
PORTVERSION=	1.7.0
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	renchap@cocoa-x.com
COMMENT=	Another synchronous Ruby AMQP client

LICENSE=	MIT

RUN_DEPENDS=	rubygem-amq-protocol>=1.9.2:${PORTSDIR}/net/rubygem-amq-protocol

NO_ARCH=	yes

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
