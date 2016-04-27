# Created by: Frederic Culot <culot@FreeBSD.org>
# $FreeBSD: head/www/p5-HTTP-Negotiate/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	HTTP-Negotiate
PORTVERSION=	6.01
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Implementation of the HTTP content negotiation algorithm

BUILD_DEPENDS=	p5-HTTP-Message>=6:${PORTSDIR}/www/p5-HTTP-Message
RUN_DEPENDS:=	${BUILD_DEPENDS}

CONFLICTS=	p5-libwww-5*

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
