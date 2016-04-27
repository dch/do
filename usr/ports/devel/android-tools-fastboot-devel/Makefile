# $FreeBSD: head/devel/android-tools-fastboot-devel/Makefile 394371 2015-08-16 02:43:20Z jbeich $

DISTVERSION=	m-preview-890
DISTVERSIONSUFFIX=	-g94a845d
PORTREVISION=	0
PKGNAMESUFFIX=	-devel

GH_TAGNAME=	${DISTVERSIONFULL:C/-[0-9].*//}-136-g89a2254:extras \
		${DISTVERSIONFULL:C/-[0-9].*//}-17-g95736e8:libselinux

CONFLICTS_INSTALL=	${PORTNAME}-[0-9]*

MASTERDIR=	${.CURDIR}/../android-tools-fastboot
DISTINFO_FILE=	${.CURDIR}/distinfo
FILESDIR=	${.CURDIR}/files
EXTRA_PATCHES+=	${.CURDIR}/files/patch-*

USES=		compiler:c++11-lib
CFLAGS+=	-DFASTBOOT_REVISION='\"${DISTVERSIONFULL}\"'

.include "${MASTERDIR}/Makefile"
