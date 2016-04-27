# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: head/dns/p5-POE-Component-Client-DNS/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	POE-Component-Client-DNS
PORTVERSION=	1.053
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	dns perl5 devel
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	POE component for non-blocking/concurrent DNS queries

BUILD_DEPENDS=	p5-POE>=1.007:${PORTSDIR}/devel/p5-POE \
		p5-Net-DNS>=0.59:${PORTSDIR}/dns/p5-Net-DNS
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-NoWarnings>=0:${PORTSDIR}/devel/p5-Test-NoWarnings

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
