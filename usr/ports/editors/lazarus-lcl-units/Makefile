# Created by: Alonso Cardenas Marquez <acm@FreeBSD.org>
# $FreeBSD: head/editors/lazarus-lcl-units/Makefile 394554 2015-08-18 04:27:55Z acm $

PORTREVISION=	2
PKGNAMESUFFIX=	-lcl-units

COMMENT=	Lazarus components library units

USE_FPC=	fcl-base fcl-db fcl-image fcl-json fcl-process fcl-registry \
		fcl-res fcl-xml iconvenc pasjpeg

LCL_INTERFACE=	#

MASTERDIR=	${.CURDIR}/../../editors/lazarus

OPT=		"-Fu../../lcl/ -Fu../lcl -Fu../../lcl/forms -Fu../../lcl/nonwin32 -Fu../../lcl/widgetset -Fi../../lcl/include"

.include "${MASTERDIR}/Makefile"
