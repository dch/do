#
# $FreeBSD: head/devel/thrift/bsd.thrift.mk 362796 2014-07-24 13:32:58Z bapt $
#
# to use:
# in your makefile, set:
# PORTVERSION=	${THRIFT_PORTVERSION}
# see $PORTSDIR/devel/thrift for examples 
THRIFT_PORTVERSION=	0.9.1
THRIFT_PORTREVISION=	1

CONFIGURE_ARGS+=	\
		--without-tests

