# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: head/www/rubygem-ethon/Makefile 390194 2015-06-21 10:40:52Z sunpoet $

PORTNAME=	ethon
PORTVERSION=	0.7.4
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Very lightweight libcurl wrapper

LICENSE=	MIT

LIB_DEPENDS=	libcurl.so:${PORTSDIR}/ftp/curl
RUN_DEPENDS=	rubygem-ffi>=1.3.0:${PORTSDIR}/devel/rubygem-ffi

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
