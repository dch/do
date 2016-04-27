# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/textproc/rubygem-compass-core/Makefile 389546 2015-06-13 20:16:39Z sunpoet $

PORTNAME=	compass-core
PORTVERSION=	1.0.3
CATEGORIES=	textproc ruby
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Compass core stylesheet library and minimum required ruby extensions

LICENSE=	MIT

RUN_DEPENDS=	rubygem-multi_json>=1.0:${PORTSDIR}/devel/rubygem-multi_json \
		rubygem-sass>=3.3.0:${PORTSDIR}/textproc/rubygem-sass

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
