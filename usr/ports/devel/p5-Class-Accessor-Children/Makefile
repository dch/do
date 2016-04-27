# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/devel/p5-Class-Accessor-Children/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Class-Accessor-Children
PORTVERSION=	0.02
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Automated child-class/accessor generation

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Class-Accessor>0:${PORTSDIR}/devel/p5-Class-Accessor
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
