# Created by: Autrijus Tang <autrijus@autrijus.org>
# $FreeBSD: head/security/subversion-gnome-keyring/Makefile 358032 2014-06-16 18:13:54Z lev $

PKGNAMESUFFIX=	-gnome-keyring
CATEGORIES=	security gnome

MAINTAINER=	lev@FreeBSD.org
COMMENT=	Gnome KWyring integration for Version control system

MASTERDIR=	${.CURDIR}/../../devel/subversion
PKGDIR=		${.CURDIR}

SVN_BUILD_ADDONS=	yes

.include "${MASTERDIR}/Makefile.common"

LIB_DEPENDS+=		libgnome-keyring.so:${PORTSDIR}/security/libgnome-keyring

CONFIGURE_ARGS+=	--with-gnome-keyring

ALL_TARGET=	gnome-keyring-lib
INSTALL_TARGET=	install-gnome-keyring-lib

.include <bsd.port.post.mk>
