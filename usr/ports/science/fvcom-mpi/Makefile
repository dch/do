# Created by: Jason Bacon <jwbacon@tds.net>
# $FreeBSD: head/science/fvcom-mpi/Makefile 375624 2014-12-26 14:24:12Z danilo $

PORTREVISION=	8
PKGNAMESUFFIX=	-openmpi

MPIPREFIX=	mpi/openmpi/

MAINTAINER=	jwbacon@tds.net

LIB_DEPENDS+=	libmpi.so:${PORTSDIR}/net/openmpi

MASTERDIR=	${.CURDIR}/../fvcom

MAKE_ARGS+=	FC=${LOCALBASE}/${MPIPREFIX}bin/mpif90 \
		PORT_CPP_FLAGS+=-DMULTIPROCESSOR

.include "${MASTERDIR}/Makefile"
