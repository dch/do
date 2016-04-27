# Created by: Andrew Humphrey <ahumphrey@realestate.com.au>
# $FreeBSD: head/textproc/p5-XML-Filter-DOMFilter-LibXML/Makefile 395275 2015-08-25 14:52:27Z sunpoet $

PORTNAME=	XML-Filter-DOMFilter-LibXML
PORTVERSION=	0.02
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl SAX Filter allowing DOM processing of selected subtrees

BUILD_DEPENDS=	p5-XML-LibXML>=0:${PORTSDIR}/textproc/p5-XML-LibXML
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure
NO_ARCH=	yes

.include <bsd.port.mk>
