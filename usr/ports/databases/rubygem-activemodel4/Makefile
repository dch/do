# Created by: Johannes Meixner <xmj@chaot.net>
# $FreeBSD: head/databases/rubygem-activemodel4/Makefile 395279 2015-08-25 14:52:49Z sunpoet $

PORTNAME=	activemodel
PORTVERSION=	4.2.4
CATEGORIES=	databases rubygems
MASTER_SITES=	RG
PKGNAMESUFFIX=	4

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Toolkit for building modeling frameworks

LICENSE=	MIT

RUN_DEPENDS=	rubygem-activesupport4>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-activesupport4 \
		rubygem-builder32>=3.2.2:${PORTSDIR}/devel/rubygem-builder32

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
