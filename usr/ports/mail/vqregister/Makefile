# Created by: Dan Caescu <daniel@freebsd.ro>
# $FreeBSD: head/mail/vqregister/Makefile 393229 2015-07-30 10:30:00Z amdmi3 $

PORTNAME=	vqregister
PORTVERSION=	2.6
PORTREVISION=	4
CATEGORIES=	mail www
MASTER_SITES=	http://www.inter7.com/vqregister/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Admin-configurable email user signup CGI

BUILD_DEPENDS=	vpopmail>0:${PORTSDIR}/mail/vpopmail
RUN_DEPENDS=	vpopmail>0:${PORTSDIR}/mail/vpopmail

USE_APACHE_RUN=	22+
VPOPMAIL_DIR?=	${LOCALBASE}/vpopmail

USE_MYSQL=	yes
MAKE_ENV=	VDIR=${VPOPMAIL_DIR} WWWDIR=${STAGEDIR}${WWWDIR}

USERS=		vpopmail
GROUPS=		vchkpw

DOCS=		CONFIG CONTRIBUTORS FORM HISTORY TEMPLATE

OPTIONS_DEFINE=	DOCS

post-install:
	${STRIP_CMD} ${STAGEDIR}${WWWDIR}/${PORTNAME}.cgi
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${STAGEDIR}${DOCSDIR})

.include <bsd.port.mk>
