# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/www/p5-CSS-DOM/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	CSS-DOM
PORTVERSION=	0.15
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Document Object Model for Cascading Style Sheets

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Clone>=0.09:${PORTSDIR}/devel/p5-Clone
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
