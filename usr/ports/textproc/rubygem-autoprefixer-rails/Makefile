# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/textproc/rubygem-autoprefixer-rails/Makefile 395439 2015-08-27 17:29:44Z sunpoet $

PORTNAME=	autoprefixer-rails
PORTVERSION=	5.2.1.3
CATEGORIES=	textproc ruby
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Parse CSS and add vendor prefixes to CSS rules

LICENSE=	MIT

RUN_DEPENDS=	rubygem-execjs>=0:${PORTSDIR}/devel/rubygem-execjs \
		rubygem-json>=0:${PORTSDIR}/devel/rubygem-json

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
