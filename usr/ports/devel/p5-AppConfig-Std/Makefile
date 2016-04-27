# Created by: Kimura Fuyuki <fuyuki@hadaly.org>
# $FreeBSD: head/devel/p5-AppConfig-Std/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	AppConfig-Std
PORTVERSION=	1.09
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Subclass of AppConfig that provides standard options

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-AppConfig>=1.52:${PORTSDIR}/devel/p5-AppConfig
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
