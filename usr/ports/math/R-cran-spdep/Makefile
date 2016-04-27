# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/math/R-cran-spdep/Makefile 367888 2014-09-10 20:50:31Z gerald $

PORTNAME=	spdep
DISTVERSION=	0.5-74
PORTREVISION=	1
CATEGORIES=	math
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Spatial dependence: weighting schemes, statistics, and models

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-sp>=0.9:${PORTSDIR}/math/R-cran-sp \
		R-cran-deldir>0:${PORTSDIR}/math/R-cran-deldir \
		R-cran-coda>0:${PORTSDIR}/math/R-cran-coda \
		R-cran-LearnBayes>0:${PORTSDIR}/math/R-cran-LearnBayes

USES=	cran:auto-plist

.include <bsd.port.mk>
