# $FreeBSD: head/devel/rubygem-cool.io/Makefile 383971 2015-04-14 01:31:41Z kuriyama $

PORTNAME=	cool.io
PORTVERSION=	1.2.4
PORTREVISION=	1
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Gems for cool.io

LICENSE=	MIT

RUN_DEPENDS=	\
	rubygem-iobuffer>=1.0.0:${PORTSDIR}/devel/rubygem-iobuffer

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.pre.mk>

.if ${RUBY_VER} >= 2.2
BROKEN=		Does not build
.endif

.include <bsd.port.post.mk>
