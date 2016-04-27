# Created by: Matthew Seaman <matthew@FreeBSD.org>
# $FreeBSD: head/devel/p5-Set-Tiny/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Set-Tiny
PORTVERSION=	0.02
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	matthew@FreeBSD.org
COMMENT=	Simple sets of strings

NO_ARCH=	yes

USES=		perl5
USE_PERL5=	configure

regression-test: build
	@cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
