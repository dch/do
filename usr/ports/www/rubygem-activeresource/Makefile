# Created by: Cheng-Lung Sung <clsung@FreeBSD.org>
# $FreeBSD: head/www/rubygem-activeresource/Makefile 391169 2015-07-02 16:01:06Z pgollucci $

PORTNAME=	activeresource
PORTVERSION=	3.2.22
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Coherent wrapper object-relational mapping for REST web services

LICENSE=	MIT

RUN_DEPENDS=	rubygem-activemodel>=${PORTVERSION}:${PORTSDIR}/databases/rubygem-activemodel \
		rubygem-activesupport>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-activesupport

NO_ARCH=	yes

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
