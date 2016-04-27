# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/textproc/p5-XML-LibXML-PrettyPrint/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	XML-LibXML-PrettyPrint
PORTVERSION=	0.006
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Add pleasant whitespace to a DOM tree

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Exporter-Tiny>=0:${PORTSDIR}/devel/p5-Exporter-Tiny \
		p5-XML-LibXML>=1.62:${PORTSDIR}/textproc/p5-XML-LibXML
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Warnings>=0:${PORTSDIR}/devel/p5-Test-Warnings

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
