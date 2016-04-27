# Created by: Daniel Gerzo <danger@FreeBSD.org>
# $FreeBSD: head/www/uwsgi/Makefile 392563 2015-07-20 11:43:00Z demon $

PORTNAME=	uwsgi
PORTVERSION=	2.0.11.1
CATEGORIES=	www python
MASTER_SITES=	http://projects.unbit.it/downloads/

MAINTAINER=	demon@FreeBSD.org
COMMENT=	Developer-friendly WSGI server which uses uwsgi protocol

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		python
USE_RC_SUBR=	uwsgi

LDFLAGS+=	"-L${LOCALBASE}/lib"

PLIST_FILES=	bin/uwsgi \
		%%PYTHON_SITELIBDIR%%/uwsgidecorators.py

post-patch:
	${REINPLACE_CMD} -e 's|python|${PYTHON_CMD}|' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/
	${MKDIR} ${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}
	${INSTALL_DATA} ${WRKSRC}/uwsgidecorators.py ${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}

.include <bsd.port.mk>
