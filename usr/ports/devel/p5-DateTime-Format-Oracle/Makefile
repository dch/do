# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/devel/p5-DateTime-Format-Oracle/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	DateTime-Format-Oracle
PORTVERSION=	0.06
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Parse and format Oracle dates and timestamps

BUILD_DEPENDS=	p5-Convert-NLS_DATE_FORMAT>=0.03:${PORTSDIR}/converters/p5-Convert-NLS_DATE_FORMAT \
		p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-DateTime-Format-Builder>=0:${PORTSDIR}/devel/p5-DateTime-Format-Builder
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
