# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/net/p5-Net-Cassandra/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Net-Cassandra
PORTVERSION=	0.35
PORTREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Interface to Cassandra

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Moose>=0:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-StrictConstructor>=0:${PORTSDIR}/devel/p5-MooseX-StrictConstructor
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
