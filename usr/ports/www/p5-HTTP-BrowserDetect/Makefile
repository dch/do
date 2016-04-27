# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: head/www/p5-HTTP-BrowserDetect/Makefile 393239 2015-07-30 13:12:38Z culot $

PORTNAME=	HTTP-BrowserDetect
PORTVERSION=	2.05
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:OALDERS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Determine the Web browser, version, OS from an HTTP user agent string

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

TEST_DEPENDS=	p5-Path-Tiny>=0:${PORTSDIR}/devel/p5-Path-Tiny \
		p5-Test-FailWarnings>=0:${PORTSDIR}/devel/p5-Test-FailWarnings \
		p5-Test-Most>=0:${PORTSDIR}/devel/p5-Test-Most \
		p5-Test-NoWarnings>=0:${PORTSDIR}/devel/p5-Test-NoWarnings

NO_ARCH=	yes
USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
