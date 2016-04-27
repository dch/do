# $FreeBSD: head/x11-drivers/xf86-input-joystick/Makefile 374982 2014-12-19 23:03:54Z dumbbell $

PORTNAME=	xf86-input-joystick
PORTVERSION=	1.6.2
PORTREVISION=	3
CATEGORIES=	x11-drivers

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X.Org joystick input driver

XORG_CAT=	driver

post-patch:
	@${REINPLACE_CMD} -e 's|[(]libdir[)]/pkgconfig|(prefix)/libdata/pkgconfig|g' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
