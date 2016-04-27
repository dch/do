# Created by: Johannes Meixner <xmj@chaot.net>
# $FreeBSD: head/textproc/rubygem-sass-rails4/Makefile 393812 2015-08-09 18:15:51Z swills $

PORTNAME=	sass-rails
PORTVERSION=	4.0.5
PORTREVISION=	1
CATEGORIES=	textproc rubygems
MASTER_SITES=	RG
PKGNAMESUFFIX?=	4

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Sass adapter for the Rails asset pipeline

LICENSE=	MIT

RUN_DEPENDS?=	rubygem-railties4>=4.0.0:${PORTSDIR}/www/rubygem-railties4 \
		rubygem-sass32>=3.2.0:${PORTSDIR}/textproc/rubygem-sass32 \
		rubygem-sprockets>=2.12.3:${PORTSDIR}/devel/rubygem-sprockets \
		rubygem-sprockets-rails>=2.0:${PORTSDIR}/devel/rubygem-sprockets-rails

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PORTSCOUT=	limit:^1\.4

.include <bsd.port.mk>
