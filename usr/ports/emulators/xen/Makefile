# $FreeBSD: head/emulators/xen/Makefile 392871 2015-07-25 10:53:11Z ak $

PORTNAME=	xen
PORTVERSION=	4.5.0
CATEGORIES=	emulators

MAINTAINER=	bapt@FreeBSD.org
COMMENT=	Xen Hyvervisor meta port

LICENSE=	GPLv2

ONLY_FOR_ARCHS=	amd64

RUN_DEPENDS=	/boot/xen:${PORTSDIR}/emulators/xen-kernel \
		xl:${PORTSDIR}/sysutils/xen-tools

USES=		metaport

.include <bsd.port.mk>
