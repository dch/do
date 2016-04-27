# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: head/devel/p5-Devel-PatchPerl/Makefile 391321 2015-07-04 16:18:09Z sunpoet $

PORTNAME=	Devel-PatchPerl
PORTVERSION=	1.38
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:BINGOS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module to patch Perl source

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-File-pushd>=1:${PORTSDIR}/devel/p5-File-pushd
RUN_DEPENDS:=	${BUILD_DEPENDS}

NO_ARCH=	yes
USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
