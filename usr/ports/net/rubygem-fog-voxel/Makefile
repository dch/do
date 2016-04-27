# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/net/rubygem-fog-voxel/Makefile 383268 2015-04-05 07:48:48Z sunpoet $

PORTNAME=	fog-voxel
PORTVERSION=	0.1.0
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Module for the 'fog' gem to support Voxel

LICENSE=	MIT

RUN_DEPENDS=	rubygem-fog-core>=0:${PORTSDIR}/devel/rubygem-fog-core \
		rubygem-fog-xml>=0:${PORTSDIR}/textproc/rubygem-fog-xml

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
