# $FreeBSD: head/net/rubygem-omniauth-oauth2/Makefile 390387 2015-06-23 12:22:24Z sunpoet $

PORTNAME=	omniauth-oauth2
PORTVERSION=	1.3.1
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Abstract OAuth2 strategy for OmniAuth

LICENSE=	MIT

RUN_DEPENDS=	rubygem-oauth2>=1.0:${PORTSDIR}/net/rubygem-oauth2 \
		rubygem-omniauth>=1.2:${PORTSDIR}/security/rubygem-omniauth

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
