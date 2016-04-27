# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: head/net/fpc-ldap/Makefile 393766 2015-08-09 08:06:43Z acm $

PORTREVISION=	2
CATEGORIES=	net lang
PKGNAMESUFFIX=	-ldap

MAINTAINER=	freebsd-fpc@FreeBSD.org
COMMENT=	Free Pascal interface to OpenLDAP

USE_FPC=	hash

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	OPENLDAP
OPENLDAP_DESC=	Install OpenLDAP libraries
OPTIONS_DEFAULT=	OPENLDAP

OPENLDAP_USE=	OPENLDAP=yes

.include "${MASTERDIR}/Makefile"
