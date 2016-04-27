# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/databases/p5-BSON/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	BSON
PORTVERSION=	0.11
PORTREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MINIMAL
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Pure Perl implementation of MongoDB BSON serialization

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Math-Int64>=0:${PORTSDIR}/math/p5-Math-Int64 \
		p5-Tie-IxHash>=0:${PORTSDIR}/devel/p5-Tie-IxHash
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep \
		p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
