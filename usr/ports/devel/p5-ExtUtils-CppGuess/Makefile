# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/devel/p5-ExtUtils-CppGuess/Makefile 383952 2015-04-13 19:25:08Z sunpoet $

PORTNAME=	ExtUtils-CppGuess
PORTVERSION=	0.09
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Guess C++ compiler and flags

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Capture-Tiny>=0:${PORTSDIR}/devel/p5-Capture-Tiny
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
