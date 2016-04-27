# Created by: loader <loader@freebsdmall.com>
# $FreeBSD: head/textproc/p5-HTML-FormatText-WithLinks/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	HTML-FormatText-WithLinks
PORTVERSION=	0.14
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	loader@freebsdmall.com
COMMENT=	Perl5 module to convert HTML to text with links as footnotes

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-HTML-Format>=0:${PORTSDIR}/textproc/p5-HTML-Format \
		p5-URI>=0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
