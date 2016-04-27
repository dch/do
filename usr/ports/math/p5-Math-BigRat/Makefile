# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: head/math/p5-Math-BigRat/Makefile 381221 2015-03-13 17:29:58Z adamw $

PORTNAME=	Math-BigRat
PORTVERSION=	0.26.02
PORTREVISION=	3
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:R}${PORTVERSION:E}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Arbitrary big rational numbers

USES=		perl5
USE_PERL5=	configure

post-patch:
	@${REINPLACE_CMD} -e '/INSTALLDIRS/d' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
