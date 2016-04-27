# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/textproc/p5-Text-Soundex/Makefile 394493 2015-08-17 13:06:02Z sunpoet $

PORTNAME=	Text-Soundex
PORTVERSION=	3.04
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Implementation of the soundex algorithm

USE_PERL5=	configure
USES=		perl5

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Text/Soundex/Soundex.so

.include <bsd.port.mk>
