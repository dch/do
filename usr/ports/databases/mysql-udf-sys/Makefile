# Created by: David Cornejo <dave@dogwood.com>
# $FreeBSD: head/databases/mysql-udf-sys/Makefile 375020 2014-12-20 17:40:53Z bapt $

PORTNAME=	mysql-udf-sys
PORTVERSION=	0.0.3
CATEGORIES=	databases
MASTER_SITES=	http://www.mysqludf.org/lib_mysqludf_sys/
DISTNAME=	lib_mysqludf_sys_${PORTVERSION}

MAINTAINER=	dave@dogwood.com
COMMENT=	System access UDFs

USE_MYSQL=	yes
USE_LDCONFIG=	yes

WRKSRC=		${WRKDIR}

PLIST_FILES=	lib/mysql/plugin/lib_mysqludf_sys.so

post-patch:
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|; s|%%LOCALBASE%%|${LOCALBASE}|' \
		${WRKSRC}/Makefile

.include <bsd.port.mk>
