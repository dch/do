# Created by: Boris Samorodov <bsam@FreeBSD.org>
# $FreeBSD: head/net/unison-nox11/Makefile 381478 2015-03-17 09:46:23Z madpilot $

PORTREVISION=	1
PKGNAMESUFFIX=	-nox11

MAINTAINER=	bsam@FreeBSD.org
COMMENT=	User-level file synchronization tool (without x11 stuff)

CONFLICTS=	unison-[0-9]* unison-devel-[0-9]*

OPTIONS_EXCLUDE=	X11
OPTIONS_DEFAULT=	DOCS
MASTERDIR=	${.CURDIR}/../unison

.include "${MASTERDIR}/Makefile"
