# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/math/p5-Math-Geometry/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Math-Geometry
PORTVERSION=	0.04
PORTREVISION=	1
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Geometry related functions

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Math-Matrix>=0:${PORTSDIR}/math/p5-Math-Matrix
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
