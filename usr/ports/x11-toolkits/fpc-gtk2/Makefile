# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/x11-toolkits/fpc-gtk2/Makefile 394671 2015-08-19 02:01:21Z amdmi3 $

PORTREVISION=	2
CATEGORIES=	x11-toolkits lang
PKGNAMESUFFIX=	-gtk2

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to the GTK2 libraries

USE_FPC=	cairo fcl-base fcl-image hash pasjpeg paszlib x11

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	GTK2
GTK2_DESC=	Gimp Toolkit for X11 GUI (version 2.x)
OPTIONS_DEFAULT=	GTK2

GTK2_USE=	GNOME=gtk20

.include "${MASTERDIR}/Makefile"
