# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: head/devel/p5-namespace-clean/Makefile 379162 2015-02-17 14:20:43Z adamw $

PORTNAME=	namespace-clean
PORTVERSION=	0.25
PORTREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Keep imports and functions out of your namespace

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-B-Hooks-EndOfScope>=0.12:${PORTSDIR}/devel/p5-B-Hooks-EndOfScope \
		p5-Package-Stash>=0.23:${PORTSDIR}/devel/p5-Package-Stash
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
