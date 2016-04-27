# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: head/devel/pear-HTML_QuickForm_Livesearch/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	HTML_QuickForm_Livesearch
PORTVERSION=	0.4.1
CATEGORIES=	devel www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Element for PEAR::HTML_QuickForm to enable a suggest search

BUILD_DEPENDS=	${PEARDIR}/HTML/QuickForm.php:${PORTSDIR}/devel/pear-HTML_QuickForm \
		${PEARDIR}/HTML/AJAX.php:${PORTSDIR}/www/pear-HTML_AJAX
RUN_DEPENDS:=	${PEARDIR}/HTML/QuickForm.php:${PORTSDIR}/devel/pear-HTML_QuickForm \
		${PEARDIR}/HTML/AJAX.php:${PORTSDIR}/www/pear-HTML_AJAX

USES=	pear

.include <bsd.port.mk>
