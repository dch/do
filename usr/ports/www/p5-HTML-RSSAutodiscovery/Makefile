# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/www/p5-HTML-RSSAutodiscovery/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	HTML-RSSAutodiscovery
PORTVERSION=	1.21
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Methods for retrieving RSS-ish information from an HTML document

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
