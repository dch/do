# Created by: Mathieu Arnold <mat@FreeBSD.org>
# $FreeBSD: head/devel/p5-DateTime-Format-Duration/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	DateTime-Format-Duration
PORTVERSION=	1.03a
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Format and parse DateTime::Durations

BUILD_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime
RUN_DEPENDS:=	${BUILD_DEPENDS}

WRKSRC=		${WRKDIR}/${DISTNAME:C/a$//}

USES=		perl5 tar:tgz
USE_PERL5=	configure

.include <bsd.port.mk>
