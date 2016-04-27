# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/security/rubygem-scrypt/Makefile 388673 2015-06-06 18:09:02Z sunpoet $

PORTNAME=	scrypt
PORTVERSION=	2.0.2
CATEGORIES=	security rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Scrypt key derivation function

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	rubygem-ffi-compiler>=0.0.2:${PORTSDIR}/devel/rubygem-ffi-compiler \
		rubygem-rake>=0:${PORTSDIR}/devel/rubygem-rake

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
