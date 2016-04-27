# Created by: Beat Gaetzi <beat@chruetertee.ch>
# $FreeBSD: head/ports-mgmt/portsopt/Makefile 345935 2014-02-25 08:56:13Z ehaupt $

PORTNAME=	portsopt
PORTVERSION=	1.5
CATEGORIES=	ports-mgmt
MASTER_SITES=	http://www.chruetertee.ch/files/download/

MAINTAINER=	beat@FreeBSD.org
COMMENT=	Shows WITH(OUT)-knobs of a port makefile

NO_BUILD=	yes

PLIST_FILES=	sbin/portsopt

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/portsopt ${STAGEDIR}${PREFIX}/sbin

.include <bsd.port.mk>
