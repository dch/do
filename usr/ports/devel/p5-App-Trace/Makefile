# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/devel/p5-App-Trace/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	App-Trace
PORTVERSION=	0.50
PORTREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Embedded debug statements, including call/return tracing

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-App-Options>=0:${PORTSDIR}/devel/p5-App-Options
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

post-patch:
	@${REINPLACE_CMD} -e '/NAME/ s|App-Trace|App::Trace|' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
