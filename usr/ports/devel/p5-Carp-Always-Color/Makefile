# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/devel/p5-Carp-Always-Color/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Carp-Always-Color
PORTVERSION=	0.07
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Carp::Always, but with color

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Carp-Always>=0.10:${PORTSDIR}/devel/p5-Carp-Always
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-IO-Pty-Easy>=0:${PORTSDIR}/devel/p5-IO-Pty-Easy

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
