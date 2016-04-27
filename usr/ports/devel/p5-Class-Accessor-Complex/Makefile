# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/devel/p5-Class-Accessor-Complex/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Class-Accessor-Complex
PORTVERSION=	1.100880
PORTREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Arrays, hashes, booleans, integers, sets, and more

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-Class-Accessor-Installer>=0:${PORTSDIR}/devel/p5-Class-Accessor-Installer \
		p5-Data-Miscellany>=0:${PORTSDIR}/devel/p5-Data-Miscellany \
		p5-List-MoreUtils>=0:${PORTSDIR}/lang/p5-List-MoreUtils
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
