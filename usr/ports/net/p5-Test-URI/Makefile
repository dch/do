# Created by: TAKAHASHI Kaoru <kaoru@kaisei.org>
# $FreeBSD: head/net/p5-Test-URI/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Test-URI
PORTVERSION=	1.08
PORTREVISION=	2
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Check Uniform Resource Identifiers

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-URI>=0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
