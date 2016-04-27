# Created by: Artyom Mirgorodskiy <artyom.mirgorodsky@gmail.com>
# $FreeBSD: head/devel/linux-c6-nspr/Makefile 393817 2015-08-09 19:14:13Z netchild $

PORTNAME=	nspr
PORTVERSION=	4.10.8
PORTREVISION=	1
CATEGORIES=	devel linux
MASTER_SITES=	CENTOS_LINUX_UPDATES

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	Netscape Portable Runtime (Linux CentOS ${LINUX_DIST_VER})

CONFLICTS=	linux-f10-nspr-[0-9]*

ONLY_FOR_ARCHS=	i386 amd64
RPMVERSION=	1.el6_6
USE_LINUX=	c6

USE_LINUX_RPM=	yes
USE_LDCONFIG=	yes

DESCR=		${.CURDIR}/../${PORTNAME}/pkg-descr

.include <bsd.port.mk>
