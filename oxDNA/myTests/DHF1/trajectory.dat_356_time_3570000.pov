// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<-0.570648, 0.800043, 4.329318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.702919, 1.108536, 4.111748>,  <-0.782282, 1.293631, 3.981206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.702919, 1.108536, 4.111748>,  <-0.570648, 0.800043, 4.329318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.702919, 1.108536, 4.111748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886433, 0.056037, -0.459452,
		-0.323864, -0.634084, -0.702175,
		-0.330679, 0.771231, -0.543924,
		-0.802123, 1.339905, 3.948570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.557425, 0.523287, 3.612146>,  <-0.570648, 0.800043, 4.329318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.557425, 0.523287, 3.612146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.536655, 0.917450, 3.676987>,  <-0.524194, 1.153948, 3.715891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.536655, 0.917450, 3.676987>,  <-0.557425, 0.523287, 3.612146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.536655, 0.917450, 3.676987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750544, 0.068571, -0.657254,
		-0.658778, 0.155791, -0.736031,
		0.051924, 0.985407, 0.162101,
		-0.521078, 1.213072, 3.725617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.659326, 0.972636, 2.933486>,  <-0.557425, 0.523287, 3.612146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.659326, 0.972636, 2.933486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.411915, 1.084259, 3.227303>,  <-0.263468, 1.151233, 3.403592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.411915, 1.084259, 3.227303>,  <-0.659326, 0.972636, 2.933486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.411915, 1.084259, 3.227303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725251, 0.156989, -0.670348,
		-0.302380, 0.947355, -0.105284,
		0.618529, 0.279057, 0.734540,
		-0.226356, 1.167976, 3.447665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.278214, 1.508022, 2.648730>,  <-0.659326, 0.972636, 2.933486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.278214, 1.508022, 2.648730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.067253, 1.361038, 2.955147>,  <0.059324, 1.272848, 3.138997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.067253, 1.361038, 2.955147>,  <-0.278214, 1.508022, 2.648730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.067253, 1.361038, 2.955147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842499, 0.109737, -0.527403,
		0.109737, 0.923542, 0.367460,
		0.527403, -0.367460, 0.766041,
		0.090968, 1.250800, 3.184959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.291446, 1.899250, 2.728996>,  <-0.278214, 1.508022, 2.648730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.291446, 1.899250, 2.728996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361446, 1.543190, 2.897285>,  <0.403447, 1.329554, 2.998259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361446, 1.543190, 2.897285>,  <0.291446, 1.899250, 2.728996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.361446, 1.543190, 2.897285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952268, 0.044473, -0.302005,
		0.250119, 0.453493, 0.855444,
		0.175001, -0.890150, 0.420723,
		0.413947, 1.276145, 3.023502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.963079, 1.840439, 2.992319>,  <0.291446, 1.899250, 2.728996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.963079, 1.840439, 2.992319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.892574, 1.446709, 2.989906>,  <0.850271, 1.210471, 2.988459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.892574, 1.446709, 2.989906>,  <0.963079, 1.840439, 2.992319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.892574, 1.446709, 2.989906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938161, -0.166134, -0.303732,
		0.297969, -0.059195, 0.952739,
		-0.176262, -0.984325, -0.006031,
		0.839696, 1.151411, 2.988097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.350626, 1.476579, 3.534817>,  <0.963079, 1.840439, 2.992319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.350626, 1.476579, 3.534817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.261837, 1.213379, 3.246994>,  <1.208564, 1.055459, 3.074300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.261837, 1.213379, 3.246994>,  <1.350626, 1.476579, 3.534817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.261837, 1.213379, 3.246994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944856, -0.327389, 0.007907,
		-0.240778, -0.678123, 0.694388,
		-0.221973, -0.658001, -0.719557,
		1.195245, 1.015979, 3.031127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.666241, 0.867690, 3.675568>,  <1.350626, 1.476579, 3.534817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.666241, 0.867690, 3.675568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.606697, 0.870865, 3.280037>,  <1.570971, 0.872770, 3.042719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.606697, 0.870865, 3.280037>,  <1.666241, 0.867690, 3.675568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.606697, 0.870865, 3.280037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879260, -0.456506, -0.136030,
		-0.452485, -0.889685, 0.060978,
		-0.148860, 0.007936, -0.988826,
		1.562039, 0.873246, 2.983389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.817491, 0.194305, 2.472391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.542643, 0.149933, 2.185181>,  <2.377734, 0.123310, 2.012855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.542643, 0.149933, 2.185181>,  <2.817491, 0.194305, 2.472391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.542643, 0.149933, 2.185181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515457, 0.770910, 0.374170,
		0.512026, 0.627211, -0.586887,
		-0.687120, -0.110930, -0.718025,
		2.336507, 0.116654, 1.969773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.526088, 0.949947, 2.094541>,  <2.817491, 0.194305, 2.472391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.526088, 0.949947, 2.094541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.290979, 0.628036, 2.127670>,  <2.149914, 0.434890, 2.147548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.290979, 0.628036, 2.127670>,  <2.526088, 0.949947, 2.094541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.290979, 0.628036, 2.127670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648614, 0.529940, 0.546317,
		-0.483554, 0.267390, -0.833473,
		-0.587771, -0.804777, 0.082822,
		2.114648, 0.386603, 2.152517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.806109, 1.053558, 1.797039>,  <2.526088, 0.949947, 2.094541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.806109, 1.053558, 1.797039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.795134, 0.801529, 2.107460>,  <1.788548, 0.650312, 2.293712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.795134, 0.801529, 2.107460>,  <1.806109, 1.053558, 1.797039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.795134, 0.801529, 2.107460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893166, 0.364077, 0.264012,
		-0.448889, -0.685899, -0.572749,
		-0.027439, -0.630072, 0.776052,
		1.786902, 0.612507, 2.340276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.170275, 0.666043, 1.744666>,  <1.806109, 1.053558, 1.797039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.170275, 0.666043, 1.744666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.300810, 0.708084, 2.120422>,  <1.379131, 0.733309, 2.345876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.300810, 0.708084, 2.120422>,  <1.170275, 0.666043, 1.744666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.300810, 0.708084, 2.120422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937366, 0.164098, 0.307273,
		-0.121857, -0.980829, 0.152072,
		0.326337, 0.105103, 0.939392,
		1.398711, 0.739615, 2.402240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.779318, 0.213827, 2.135568>,  <1.170275, 0.666043, 1.744666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.779318, 0.213827, 2.135568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.914425, 0.475311, 2.406441>,  <0.995489, 0.632202, 2.568964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.914425, 0.475311, 2.406441>,  <0.779318, 0.213827, 2.135568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.914425, 0.475311, 2.406441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882725, -0.029693, 0.468951,
		0.326666, -0.756162, 0.567018,
		0.337766, 0.653711, 0.677182,
		1.015755, 0.671425, 2.609596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.555325, -0.051632, 2.785451>,  <0.779318, 0.213827, 2.135568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.555325, -0.051632, 2.785451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.639372, 0.337875, 2.820381>,  <0.689800, 0.571580, 2.841339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.639372, 0.337875, 2.820381>,  <0.555325, -0.051632, 2.785451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.639372, 0.337875, 2.820381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715516, 0.092292, 0.692473,
		0.666249, -0.207982, 0.716139,
		0.210116, 0.973769, 0.087325,
		0.702407, 0.630006, 2.846579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.649829, 0.137774, 3.577117>,  <0.555325, -0.051632, 2.785451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.649829, 0.137774, 3.577117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.555798, 0.469452, 3.374268>,  <0.499379, 0.668459, 3.252558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.555798, 0.469452, 3.374268>,  <0.649829, 0.137774, 3.577117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.555798, 0.469452, 3.374268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757939, 0.170250, 0.629717,
		0.608496, 0.532401, 0.588457,
		-0.235078, 0.829195, -0.507124,
		0.485274, 0.718210, 3.222131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.547731, 0.622263, 4.095537>,  <0.649829, 0.137774, 3.577117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.547731, 0.622263, 4.095537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.340338, 0.646317, 3.754349>,  <0.215902, 0.660748, 3.549636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.340338, 0.646317, 3.754349>,  <0.547731, 0.622263, 4.095537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.340338, 0.646317, 3.754349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854958, -0.053808, 0.515899,
		-0.014874, 0.996739, 0.079310,
		-0.518484, 0.060133, -0.852970,
		0.184793, 0.664356, 3.498458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
