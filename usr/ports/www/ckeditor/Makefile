# Created by: Joe Horn <joehorn@gmail.com>
# $FreeBSD: head/www/ckeditor/Makefile 355124 2014-05-25 05:25:53Z miwi $

PORTNAME=	CKEditor
PORTVERSION=	4.0
CATEGORIES=	www
MASTER_SITES=	http://download.cksource.com/${PORTNAME}/${PORTNAME}/${PORTNAME}%20${PORTVERSION}/
DISTNAME=	ckeditor_${PORTVERSION}_full

MAINTAINER=	joehorn@gmail.com
COMMENT=	WYSIWYG editor to be used inside web page

LICENSE=	MPL

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/ckeditor

do-install:
	@${INSTALL} -d -m 0755 ${STAGEDIR}${WWWDIR}
	@(cd ${WRKSRC} && ${FIND} . | ${CPIO} -pdmu -R${WWWOWN}:${WWWGRP} ${STAGEDIR}${WWWDIR})

.include <bsd.port.mk>
