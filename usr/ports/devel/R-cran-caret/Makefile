# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/devel/R-cran-caret/Makefile 367888 2014-09-10 20:50:31Z gerald $

PORTNAME=	caret
DISTVERSION=	6.0-24
PORTREVISION=	2
CATEGORIES=	devel
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Classification and Regression Training

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-ggplot2>0:${PORTSDIR}/graphics/R-cran-ggplot2 \
		R-cran-car>0:${PORTSDIR}/math/R-cran-car \
		R-cran-reshape2>0:${PORTSDIR}/devel/R-cran-reshape2 \
		R-cran-foreach>0:${PORTSDIR}/devel/R-cran-foreach \
		R-cran-plyr>0:${PORTSDIR}/devel/R-cran-plyr

USES=	cran:auto-plist

.include <bsd.port.mk>
