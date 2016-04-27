# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/multimedia/fpc-libvlc/Makefile 376279 2015-01-05 00:16:00Z marino $

PORTREVISION=	2
CATEGORIES=	multimedia lang
PKGNAMESUFFIX=	-libvlc

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to vlc media player library

USE_FPC=	fcl-base

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	VLC
VLC_DESC=	Install vlc media player
OPTIONS_DEFAULT=	VLC

VLC_RUN_DEPENDS=	vlc:${PORTSDIR}/multimedia/vlc

.include "${MASTERDIR}/Makefile"
