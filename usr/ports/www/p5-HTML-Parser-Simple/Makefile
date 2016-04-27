# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/www/p5-HTML-Parser-Simple/Makefile 379229 2015-02-18 16:19:09Z sunpoet $

PORTNAME=	HTML-Parser-Simple
PORTVERSION=	2.02
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Parse nice HTML files without needing a compiler

LICENSE=	ART20

BUILD_DEPENDS=	p5-Moo>=1.003001:${PORTSDIR}/devel/p5-Moo \
		p5-Tree-Simple>=1.22:${PORTSDIR}/devel/p5-Tree-Simple
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Pod>=0:${PORTSDIR}/devel/p5-Test-Pod

USE_PERL5=	configure
USES=		perl5 tar:tgz

.include <bsd.port.mk>
