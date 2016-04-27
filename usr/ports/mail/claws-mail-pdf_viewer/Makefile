# Created by: Pawel Pekala <c0rn@o2.pl>
# $FreeBSD: head/mail/claws-mail-pdf_viewer/Makefile 395047 2015-08-22 17:48:35Z hrs $

PORTNAME=	pdf_viewer
PORTREVISION=	2

COMMENT=	PDF and PostScript viewer plugin for Claws Mail

LIB_DEPENDS=	libpoppler-glib.so:${PORTSDIR}/graphics/poppler-glib

USES+=		ghostscript

CLAWS_PLUGINS_BUILD=	pdf_viewer

.include "../claws-mail/Makefile.claws"
.include <bsd.port.mk>
