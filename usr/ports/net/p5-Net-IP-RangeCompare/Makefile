# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/net/p5-Net-IP-RangeCompare/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Net-IP-RangeCompare
PORTVERSION=	4.025
PORTREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Perl extension for IP Range Comparisons

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Data-IPV4-Range-Parse>=0.05:${PORTSDIR}/net/p5-Data-IPV4-Range-Parse \
		p5-Data-Range-Compare>=1.030:${PORTSDIR}/devel/p5-Data-Range-Compare
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
