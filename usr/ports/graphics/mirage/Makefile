# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: head/graphics/mirage/Makefile 367464 2014-09-06 18:42:16Z pawel $

PORTNAME=	mirage
PORTVERSION=	0.9.5.2
PORTREVISION=	4
CATEGORIES=	graphics
MASTER_SITES=	SF/${PORTNAME}iv

MAINTAINER=	pawel@FreeBSD.org
COMMENT=	Fast and simple image viewer

LICENSE=	GPLv3

USES=		desktop-file-utils gettext python tar:bzip2
USE_GNOME=	gtk20 pygtk2
USE_PYTHON=	distutils
PYDISTUTILS_PKGNAME=	Mirage

PORTDOCS=	CHANGELOG README TODO TRANSLATORS
PORT_VERBS=	${PORTNAME} imgfuncs

OPTIONS_DEFINE=	DOCS GNOME

GNOME_USE=	GNOME=pygnome2

post-patch:
	@${REINPLACE_CMD} -e \
		's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/setup.py

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${STAGEDIR}${DOCSDIR}
	(cd ${STAGEDIR}${PYTHON_SITELIBDIR} && ${STRIP_CMD} \
		imgfuncs.so xmouse.so)

.include <bsd.port.mk>
