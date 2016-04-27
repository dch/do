# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/net/p5-BBS-UserInfo-SOB/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	BBS-UserInfo-SOB
PORTVERSION=	0.01
PORTREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GSLIN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Get user information of SOB-style BBS

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Expect>=0:${PORTSDIR}/lang/p5-Expect
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
