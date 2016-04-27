# Created by: Alex Samorukov <samm@os2.kiev.ua>
# $FreeBSD: head/deskutils/libopensync-plugin-file/Makefile 383353 2015-04-05 18:59:58Z bapt $

PORTNAME=	libopensync-plugin-file
PORTVERSION=	0.22
PORTREVISION=	1
CATEGORIES=	deskutils
MASTER_SITES=	http://www.opensync.org/download/releases/${PORTVERSION}/

MAINTAINER=	samm@os2.kiev.ua
COMMENT=	File-Sync plugin for the opensync framework

LIB_DEPENDS=	libopensync.so:${PORTSDIR}/devel/libopensync022

BROKEN=		Unfetchable
USES=		pkgconfig tar:bzip2 libtool
GNU_CONFIGURE=	yes

.include <bsd.port.mk>
