# Created by: Koop Mast <kwm@FreeBSD.org>
# $FreeBSD: head/net/libproxy-perl/Makefile 373961 2014-12-04 15:45:07Z mat $
#    $MCom: ports/net/libproxy-perl/Makefile,v 1.1 2011/01/12 13:10:53 kwm Exp $

PORTREVISION=	2
CATEGORIES=	net lang
PKGNAMESUFFIX=	-perl

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Perl binding for libproxy

LIB_DEPENDS=	libproxy.so:${PORTSDIR}/net/libproxy

MASTERDIR=	${.CURDIR}/../libproxy
DESCR=		${.CURDIR}/pkg-descr
PLIST=		${.CURDIR}/pkg-plist
USES=		perl5
INSTALL_WRKSRC=	${WRKSRC}/bindings/perl

LIBPROXY_SLAVE=	perl

.include "${MASTERDIR}/Makefile"
