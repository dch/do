# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/devel/p5-App-cpanoutdated/Makefile 388583 2015-06-05 14:21:43Z mat $

PORTNAME=	App-cpanoutdated
PORTVERSION=	0.24
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Detect outdated CPAN modules

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-CPAN-DistnameInfo>=0.10:${PORTSDIR}/devel/p5-CPAN-DistnameInfo \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-local-lib>=0:${PORTSDIR}/devel/p5-local-lib
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
