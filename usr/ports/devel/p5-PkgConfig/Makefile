# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/devel/p5-PkgConfig/Makefile 387992 2015-05-30 23:07:51Z sunpoet $

PORTNAME=	PkgConfig
PORTVERSION=	0.09026
PORTREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:PLICEASE
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Pure-Perl Core-Only replacement for pkg-config

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

PORTSCOUT=	limit:^[0-9\.]*$$

NO_ARCH=	yes
USE_PERL5=	configure
USES=		perl5 pkgconfig

.include <bsd.port.mk>
