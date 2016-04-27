# Created by: Shane Ambler
# $FreeBSD: head/graphics/py-openimageio/Makefile 391572 2015-07-08 16:46:57Z mva $

CATEGORIES=	graphics multimedia python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

COMMENT=	OpenImageIO python bindings

MASTERDIR=	${.CURDIR}/../openimageio
OPTIONS_EXCLUDE=DOCS FFMPEG GIF IMAGEVIEWER OCIO RAW TEST

do-install:
	@${MKDIR} ${STAGEDIR}${PYTHON_SITELIBDIR}
	${INSTALL_LIB} ${BUILD_WRKSRC}/src/python/OpenImageIO.so ${STAGEDIR}${PYTHON_SITELIBDIR}

.include "${MASTERDIR}/Makefile"
