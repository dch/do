# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: head/graphics/fpc-rsvg/Makefile 394863 2015-08-20 13:10:06Z amdmi3 $

PORTREVISION=	1
CATEGORIES=	graphics lang
PKGNAMESUFFIX=	-rsvg

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to librsvg2 library

USE_FPC=	cairo fcl-base fcl-image gtk2 hash pasjpeg paszlib x11

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//:S/^/lib/}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	LIBRSVG2
LIBRSVG2_DESC=	Install librsvg2 library
OPTIONS_DEFAULT=	LIBRSVG2

LIBRSVG2_LIB_DEPENDS=	librsvg-2.so:${PORTSDIR}/graphics/librsvg2

.include "${MASTERDIR}/Makefile"
