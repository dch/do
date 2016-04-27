# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/net/rubygem-fog-radosgw/Makefile 383588 2015-04-08 17:41:04Z sunpoet $

PORTNAME=	fog-radosgw
PORTVERSION=	0.0.4
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Fog backend for provisioning users on Ceph Radosgw

LICENSE=	MIT

RUN_DEPENDS=	rubygem-fog-core>=1.21.0:${PORTSDIR}/devel/rubygem-fog-core \
		rubygem-fog-json>=0:${PORTSDIR}/devel/rubygem-fog-json \
		rubygem-fog-xml>=0.0.1:${PORTSDIR}/textproc/rubygem-fog-xml

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
