# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/net/rubygem-fog-riakcs/Makefile 382664 2015-03-30 13:48:05Z sunpoet $

PORTNAME=	fog-riakcs
PORTVERSION=	0.1.0
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Module for the 'fog' gem to support RiakCS

LICENSE=	MIT

RUN_DEPENDS=	rubygem-fog-core>=0:${PORTSDIR}/devel/rubygem-fog-core \
		rubygem-fog-json>=0:${PORTSDIR}/devel/rubygem-fog-json \
		rubygem-fog-xml>=0:${PORTSDIR}/textproc/rubygem-fog-xml

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
