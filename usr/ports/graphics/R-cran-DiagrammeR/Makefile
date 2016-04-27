# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: head/graphics/R-cran-DiagrammeR/Makefile 394028 2015-08-12 18:49:20Z tota $

PORTNAME=	DiagrammeR
PORTVERSION=	0.7
CATEGORIES=	graphics
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Create Diagrams and Flowcharts Using R

LICENSE=	MIT

RUN_DEPENDS=	R-cran-htmlwidgets>=0.3.2:${PORTSDIR}/www/R-cran-htmlwidgets \
		R-cran-rstudioapi>=0.2:${PORTSDIR}/devel/R-cran-rstudioapi \
		R-cran-stringr>=1.0.0:${PORTSDIR}/textproc/R-cran-stringr

USES=	cran:auto-plist

.include <bsd.port.mk>
