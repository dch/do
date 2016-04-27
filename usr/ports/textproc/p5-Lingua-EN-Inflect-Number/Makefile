# Created by: Lars Thegler <lars@thegler.dk>
# $FreeBSD: head/textproc/p5-Lingua-EN-Inflect-Number/Makefile 376347 2015-01-05 19:12:41Z lth $

PORTNAME=	Lingua-EN-Inflect-Number
PORTVERSION=	1.11
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Force number of words to singular or plural

BUILD_DEPENDS=	p5-Lingua-EN-Inflect>=0:${PORTSDIR}/textproc/p5-Lingua-EN-Inflect
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
