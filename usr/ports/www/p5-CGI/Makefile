# Created by: Adam Weinberger <adamw@FreeBSD.org>
# $FreeBSD: head/www/p5-CGI/Makefile 390380 2015-06-23 12:21:50Z sunpoet $

PORTNAME=	CGI
PORTVERSION=	4.21
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:LEEJO
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Handle Common Gateway Interface requests and responses

LICENSE=	ART20 GPLv1
LICENSE_COMB=	dual

CONFLICTS=	p5-CGI.pm-[1-3]*

PORTSCOUT=	limit:^[0-9\.]*$$

NO_ARCH=	yes
USES=		perl5
USE_PERL5=	configure

PORTEXAMPLES=	*

OPTIONS_DEFINE=	EXAMPLES

post-install:
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	(cd ${WRKSRC}/examples && ${COPYTREE_SHARE} . ${STAGEDIR}${EXAMPLESDIR})

.include <bsd.port.mk>
