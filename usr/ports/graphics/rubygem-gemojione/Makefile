# $FreeBSD: head/graphics/rubygem-gemojione/Makefile 391169 2015-07-02 16:01:06Z pgollucci $

PORTNAME=	gemojione
PORTVERSION=	2.0.1
CATEGORIES=	graphics rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Gem containing EmojiOne unicode/image assets

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

RUN_DEPENDS=	rubygem-json>0:${PORTSDIR}/devel/rubygem-json

NO_ARCH=	yes

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
