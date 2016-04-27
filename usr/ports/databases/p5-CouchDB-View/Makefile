# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/databases/p5-CouchDB-View/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	CouchDB-View
PORTVERSION=	0.003
PORTREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Handle and create CouchDB views in Perl

BUILD_DEPENDS=	p5-Data-Dump-Streamer>=0:${PORTSDIR}/devel/p5-Data-Dump-Streamer \
		p5-JSON-XS>=0:${PORTSDIR}/converters/p5-JSON-XS \
		p5-PadWalker>=0:${PORTSDIR}/devel/p5-PadWalker \
		p5-URI>=0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
