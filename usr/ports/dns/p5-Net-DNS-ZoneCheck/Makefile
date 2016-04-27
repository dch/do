# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: head/dns/p5-Net-DNS-ZoneCheck/Makefile 383357 2015-04-05 20:50:42Z bapt $

PORTNAME=	Net-DNS-ZoneCheck
PORTVERSION=	0.01
PORTREVISION=	1
CATEGORIES=	dns perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Validate a DNS zone composed of Net::DNS::RR records

BROKEN=		Unfetchable
BUILD_DEPENDS=	p5-Regexp-Common>=0:${PORTSDIR}/textproc/p5-Regexp-Common \
		p5-Net-DNS>=0:${PORTSDIR}/dns/p5-Net-DNS
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
