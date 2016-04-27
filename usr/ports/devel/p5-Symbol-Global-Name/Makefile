# Created by: Matthew Seaman <matthew@FreeBSD.org>
# $FreeBSD: head/devel/p5-Symbol-Global-Name/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Symbol-Global-Name
PORTVERSION=	0.05
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	matthew@FreeBSD.org
COMMENT=	Finds name and type of a global variable

NO_ARCH=	yes

USES=		perl5
USE_PERL5=	configure

regression-test: build
	@cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
