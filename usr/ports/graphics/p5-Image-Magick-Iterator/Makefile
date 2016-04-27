# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/graphics/p5-Image-Magick-Iterator/Makefile 377347 2015-01-18 21:12:42Z kwm $

PORTNAME=	Image-Magick-Iterator
PORTVERSION=	0.01
PORTREVISION=	6
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Sequentially read Image::Magick object from a filehandle

BUILD_DEPENDS=	ImageMagick>=0:${PORTSDIR}/graphics/ImageMagick \
		p5-Image-PBMlib>=1.05:${PORTSDIR}/graphics/p5-Image-PBMlib
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
