# Created by: ljo
# $FreeBSD: head/print/afm/Makefile 349626 2014-03-30 14:44:32Z bapt $

PORTNAME=	afm
PORTVERSION=	1.0
PORTREVISION=	1
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.sgi.com/sgi/fax/source/
DISTNAME=	afm
EXTRACT_SUFX=	-tar.Z

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Adobe Font Metrics

NO_BUILD=	yes
pre-patch:
	@${RM} -rf ${WRKSRC}/RCS

.include <bsd.port.mk>
