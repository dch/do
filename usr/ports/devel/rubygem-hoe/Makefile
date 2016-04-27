# Created by: Jonathan Weiss (<jw@innerewut.de>)
# $FreeBSD: head/devel/rubygem-hoe/Makefile 391169 2015-07-02 16:01:06Z pgollucci $

PORTNAME=	hoe
PORTVERSION=	3.13.1
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Simple rake/rubygems helper for project Rakefiles

LICENSE=	MIT

RUN_DEPENDS=	rubygem-rake>=0.8:${PORTSDIR}/devel/rubygem-rake

NO_ARCH=	yes

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/sow

.include <bsd.port.mk>
