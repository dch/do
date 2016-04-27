# Created by: Sylvio Cesar <sylvio@FreeBSD.org>
# $FreeBSD: head/shells/jailkit/Makefile 380750 2015-03-08 09:50:25Z sunpoet $

PORTNAME=	jailkit
PORTVERSION=	2.17
CATEGORIES=	shells
MASTER_SITES=	http://olivier.sessink.nl/jailkit/ \
		http://www.sfr-fresh.com/unix/privat/

MAINTAINER=	woodsb02@gmail.com
COMMENT=	Utilities to limit user accounts to specific files and/or commands

LICENSE=	BSD3CLAUSE

USES=		python:2
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	PYTHONINTERPRETER=${PYTHON_CMD}

PORTDOCS=	COPYRIGHT README.txt

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
