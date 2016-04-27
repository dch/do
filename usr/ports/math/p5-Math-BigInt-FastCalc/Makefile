# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/math/p5-Math-BigInt-FastCalc/Makefile 381221 2015-03-13 17:29:58Z adamw $

PORTNAME=	Math-BigInt-FastCalc
PORTVERSION=	0.31
PORTREVISION=	1
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Math::BigInt::Calc with some XS for more speed

BUILD_DEPENDS=	p5-Math-BigInt>=1.9993:${PORTSDIR}/math/p5-Math-BigInt
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

PORTSCOUT=	skipv:0.251

.include <bsd.port.mk>
