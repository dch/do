# Created by: petef@FreeBSD.org
# $FreeBSD: head/net/p5-File-Rsync/Makefile 378077 2015-01-28 18:08:41Z bofh $

PORTNAME=	File-Rsync
PORTVERSION=	0.45
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	bofh@FreeBSD.org
COMMENT=	Perl convenience wrapper for the rsync(1) program

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	rsync:${PORTSDIR}/net/rsync
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
