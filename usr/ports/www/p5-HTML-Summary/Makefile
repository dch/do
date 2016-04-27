# Created by: Dmitry Sivachenko <dima@Chg.RU>
# $FreeBSD: head/www/p5-HTML-Summary/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	HTML-Summary
PORTVERSION=	0.019
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	demon@FreeBSD.org
COMMENT=	Produces summaries from the textual content of web pages

BUILD_DEPENDS=	p5-HTML-Tree>=0:${PORTSDIR}/www/p5-HTML-Tree \
		ja-p5-Jcode>=2.06:${PORTSDIR}/japanese/p5-Jcode
RUN_DEPENDS=	p5-HTML-Tree>=0:${PORTSDIR}/www/p5-HTML-Tree \
		ja-p5-Jcode>=2.06:${PORTSDIR}/japanese/p5-Jcode

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
