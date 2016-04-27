# Created by: Artyom Mirgorodskiy <artyom.mirgorodsky@gmail.com>
# $FreeBSD: head/accessibility/linux-c6-atk/Makefile 368845 2014-09-22 10:40:00Z xmj $

PORTNAME=	atk
PORTVERSION=	1.30.0
CATEGORIES=	accessibility linux

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	Accessibility Toolkit, Linux/i386 binary (Linux CentOS ${LINUX_DIST_VER})

LICENSE=	GPLv3

PKGNAMEPREFIX=	linux-${USE_LINUX}-

CONFLICTS=	linux-atk-[0-9]* linux-f10-atk-[0-9]*

ONLY_FOR_ARCHS=	i386 amd64
USE_LINUX=	c6
RPMVERSION=	1.el6
USE_LINUX_RPM=	yes
USE_LDCONFIG=	yes

.include <bsd.port.mk>
