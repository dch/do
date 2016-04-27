# Created by: kevlo 
# $FreeBSD: head/multimedia/audiopreview/Makefile 373636 2014-11-29 18:22:32Z tijl $

PORTNAME=	audiopreview
PORTVERSION=	0.6
PORTREVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	http://audiopreview.codealpha.net/files/

MAINTAINER=	kevlo@FreeBSD.org
COMMENT=	Command-line tool to play previews of audio and video files

USES=		gettext gmake pkgconfig
USE_GSTREAMER=	core
USE_GNOME=	intltool
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LIBS+=		-L${LOCALBASE}/lib

PLIST_FILES=	bin/audiopreview man/man1/audiopreview.1.gz

.include <bsd.port.mk>
