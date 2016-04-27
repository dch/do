# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/net/rubygem-fog-powerdns/Makefile 383363 2015-04-05 21:27:03Z sunpoet $

PORTNAME=	fog-powerdns
PORTVERSION=	0.1.1
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Module for the 'fog' gem to support PowerDNS DNS services

LICENSE=	MIT

RUN_DEPENDS=	rubygem-fog-core>=1.27:${PORTSDIR}/devel/rubygem-fog-core \
		rubygem-fog-json>=1.0:${PORTSDIR}/devel/rubygem-fog-json \
		rubygem-fog-xml>=0.1:${PORTSDIR}/textproc/rubygem-fog-xml

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
