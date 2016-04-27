# Created by: Mathieu Arnold <mat@FreeBSD.org>
# $FreeBSD: head/www/p5-Mojolicious-Plugin-Authentication/Makefile 389958 2015-06-17 17:25:21Z sunpoet $

PORTNAME=	Mojolicious-Plugin-Authentication
PORTVERSION=	1.27
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Mojolicious plugin to make authentication a bit easier

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Mojolicious>=0:${PORTSDIR}/www/p5-Mojolicious
RUN_DEPENDS:=	${BUILD_DEPENDS}

NO_ARCH=	yes
USES=		perl5
USE_PERL5=	configure

post-patch:
	@${RM} ${WRKSRC}/README.pod

.include <bsd.port.mk>
