# Created by: Artyom Mirgorodskiy <artyom.mirgorodsky@gmail.com>
# $FreeBSD: head/audio/linux-c6-alsa-plugins-oss/Makefile 393817 2015-08-09 19:14:13Z netchild $

PORTNAME=	alsa-plugins-oss
PORTVERSION=	1.0.21
PORTREVISION=	3
CATEGORIES=	audio linux
PKGNAMEPREFIX=	linux-${USE_LINUX}-

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	OSS plugin for ALSA (Linux CentOS ${LINUX_DIST_VER})

LICENSE=	GPLv3

CONFLICTS=	linux-f10-alsa-plugins-oss-[0-9]*

.if defined(PACKAGE_BUILDING)
SRC_DISTFILES=	alsa-plugins-${PORTVERSION}-${RPMVERSION}${SRC_SUFX}:SOURCE
.endif

ONLY_FOR_ARCHS=	i386 amd64
USE_LINUX=	c6
USE_LINUX_APPS=	alsalib
USE_LINUX_RPM=	yes
RPMVERSION=	3.el6

USE_LDCONFIG=	yes

# We will use native configuration file, so delete a linux one
post-extract:
	@${RM} -r ${WRKSRC}/etc

.include <bsd.port.mk>
