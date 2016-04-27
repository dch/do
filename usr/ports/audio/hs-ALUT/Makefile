# Created by: Giuseppe Pilichi aka Jacula Modyun <jacula@gmail.com>
# $FreeBSD: head/audio/hs-ALUT/Makefile 394918 2015-08-20 23:02:14Z pgj $

PORTNAME=	ALUT
PORTVERSION=	2.4.0.0
CATEGORIES=	audio haskell

MAINTAINER=	haskell@FreeBSD.org
COMMENT=	Binding for the OpenAL Utility Toolkit

LICENSE=	BSD3CLAUSE

USE_CABAL=	OpenAL>=1.6.0.0 OpenGL>=2.9.0.0
USES=		openal:al,alut

INSTALL_PORTEXAMPLES=	@(cd ${WRKSRC}/examples/ && ${COPYTREE_SHARE} \* ${STAGEDIR}${EXAMPLESDIR})

.include "${.CURDIR}/../../lang/ghc/bsd.cabal.mk"
.include <bsd.port.mk>
