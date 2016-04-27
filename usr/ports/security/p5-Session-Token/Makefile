# Created by: Henk van Oers <hvo.pm@xs4all.nl>
# $FreeBSD: head/security/p5-Session-Token/Makefile 387680 2015-05-27 21:21:54Z amdmi3 $

PORTNAME=	Session-Token
PORTVERSION=	1.008
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:FRACTAL
PKGNAMEPREFIX=	p5-

MAINTAINER=	hvo.pm@xs4all.nl
COMMENT=	Secure, efficient, simple random session token generation

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

USES=		perl5
USE_PERL5=	configure

post-install:
	${CHMOD} u+w ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Session/Token/Token.so
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Session/Token/Token.so
	${CHMOD} u-w ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Session/Token/Token.so

.include <bsd.port.mk>
