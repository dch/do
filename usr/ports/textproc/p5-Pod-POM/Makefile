# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: head/textproc/p5-Pod-POM/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Pod-POM
PORTVERSION=	0.29
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	POD Object Model

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-File-Slurp>=0:${PORTSDIR}/devel/p5-File-Slurp
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
