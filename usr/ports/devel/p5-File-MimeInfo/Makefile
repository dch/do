# Created by: Rong-En Fan <rafan@infor.org>
# $FreeBSD: head/devel/p5-File-MimeInfo/Makefile 379830 2015-02-24 17:02:44Z sunpoet $

PORTNAME=	File-MimeInfo
PORTVERSION=	0.27
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Determine file type

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-File-BaseDir>=0.03:${PORTSDIR}/devel/p5-File-BaseDir \
		p5-File-DesktopEntry>=0.04:${PORTSDIR}/devel/p5-File-DesktopEntry
RUN_DEPENDS=	p5-File-BaseDir>=0.03:${PORTSDIR}/devel/p5-File-BaseDir \
		p5-File-DesktopEntry>=0.04:${PORTSDIR}/devel/p5-File-DesktopEntry \
		update-mime-database:${PORTSDIR}/misc/shared-mime-info

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
