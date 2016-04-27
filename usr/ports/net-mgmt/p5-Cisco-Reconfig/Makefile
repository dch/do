# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/net-mgmt/p5-Cisco-Reconfig/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Cisco-Reconfig
PORTVERSION=	0.911
PORTREVISION=	1
CATEGORIES=	net-mgmt perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Parse and generate Cisco configuration files

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-IO-String>=0:${PORTSDIR}/devel/p5-IO-String
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
