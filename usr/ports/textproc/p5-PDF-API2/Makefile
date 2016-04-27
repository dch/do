# Created by: ijliao
# $FreeBSD: head/textproc/p5-PDF-API2/Makefile 374042 2014-12-05 15:35:34Z jadawin $

PORTNAME=	PDF-API2
PORTVERSION=	2.023
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SSIMMS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Facilitates the creation and modification of PDF files

LICENSE=	LGPL21

BUILD_DEPENDS=	p5-Font-TTF>=0:${PORTSDIR}/x11-fonts/p5-Font-TTF
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
