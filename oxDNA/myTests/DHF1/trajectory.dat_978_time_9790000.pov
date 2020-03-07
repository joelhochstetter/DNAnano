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
	<-0.490376, 2.658722, 3.059149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.371307, 3.034133, 3.129072>,  <-0.299866, 3.259380, 3.171026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.371307, 3.034133, 3.129072>,  <-0.490376, 2.658722, 3.059149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.371307, 3.034133, 3.129072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127971, 0.220684, -0.966914,
		-0.946053, 0.265451, 0.185796,
		0.297671, 0.938528, 0.174808,
		-0.282006, 3.315691, 3.181515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.018358, 3.111696, 2.845774>,  <-0.490376, 2.658722, 3.059149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.018358, 3.111696, 2.845774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.656914, 3.275629, 2.795937>,  <-0.440047, 3.373989, 2.766034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.656914, 3.275629, 2.795937>,  <-1.018358, 3.111696, 2.845774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.656914, 3.275629, 2.795937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201392, 0.149757, -0.967995,
		-0.378057, 0.899784, 0.217858,
		0.903612, 0.409832, -0.124592,
		-0.385830, 3.398579, 2.758559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.921526, 3.143673, 2.166684>,  <-1.018358, 3.111696, 2.845774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.921526, 3.143673, 2.166684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.606979, 3.365441, 2.275677>,  <-0.418251, 3.498501, 2.341072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.606979, 3.365441, 2.275677>,  <-0.921526, 3.143673, 2.166684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.606979, 3.365441, 2.275677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228622, 0.148581, -0.962110,
		-0.573898, 0.818867, -0.009914,
		0.786367, 0.554420, 0.272482,
		-0.371069, 3.531766, 2.357421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.804009, 3.756872, 1.681559>,  <-0.921526, 3.143673, 2.166684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.804009, 3.756872, 1.681559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.454239, 3.667015, 1.853565>,  <-0.244377, 3.613101, 1.956769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.454239, 3.667015, 1.853565>,  <-0.804009, 3.756872, 1.681559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.454239, 3.667015, 1.853565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456468, 0.080662, -0.886076,
		0.164365, 0.971097, 0.173075,
		0.874426, -0.224643, 0.430017,
		-0.191911, 3.599622, 1.982570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.331469, 4.280345, 1.455529>,  <-0.804009, 3.756872, 1.681559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.331469, 4.280345, 1.455529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.114769, 3.966637, 1.576477>,  <0.015251, 3.778412, 1.649046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.114769, 3.966637, 1.576477>,  <-0.331469, 4.280345, 1.455529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.114769, 3.966637, 1.576477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570169, 0.078573, -0.817761,
		0.617588, 0.615424, 0.489733,
		0.541750, -0.784270, 0.302370,
		0.047756, 3.731356, 1.667188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.284144, 4.479250, 1.230100>,  <-0.331469, 4.280345, 1.455529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.284144, 4.479250, 1.230100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361488, 4.096140, 1.315214>,  <0.407895, 3.866274, 1.366283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361488, 4.096140, 1.315214>,  <0.284144, 4.479250, 1.230100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.361488, 4.096140, 1.315214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681614, -0.024860, -0.731290,
		0.705701, 0.286440, 0.648026,
		0.193361, -0.957775, 0.212786,
		0.419497, 3.808807, 1.379050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.045057, 4.335271, 1.203080>,  <0.284144, 4.479250, 1.230100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.045057, 4.335271, 1.203080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.879181, 3.972194, 1.177397>,  <0.779655, 3.754347, 1.161987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.879181, 3.972194, 1.177397>,  <1.045057, 4.335271, 1.203080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.879181, 3.972194, 1.177397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514810, -0.175842, -0.839077,
		0.750335, -0.381013, 0.540210,
		-0.414691, -0.907694, -0.064209,
		0.754774, 3.699885, 1.158134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.610007, 3.794160, 1.260401>,  <1.045057, 4.335271, 1.203080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.610007, 3.794160, 1.260401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.289253, 3.663936, 1.060005>,  <1.096801, 3.585801, 0.939768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.289253, 3.663936, 1.060005>,  <1.610007, 3.794160, 1.260401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.289253, 3.663936, 1.060005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551430, -0.080468, -0.830331,
		0.230010, -0.942091, 0.244050,
		-0.801885, -0.325561, -0.500989,
		1.048688, 3.566268, 0.909708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.446177, 4.152726, -0.291170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.261063, 3.812787, -0.392036>,  <1.149994, 3.608824, -0.452556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.261063, 3.812787, -0.392036>,  <1.446177, 4.152726, -0.291170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.261063, 3.812787, -0.392036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248019, -0.148971, 0.957233,
		-0.851067, 0.505536, -0.141837,
		-0.462786, -0.849848, -0.252167,
		1.122227, 3.557833, -0.467686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.672333, 4.083821, -0.101567>,  <1.446177, 4.152726, -0.291170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.672333, 4.083821, -0.101567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.806297, 3.707104, -0.089832>,  <0.886676, 3.481073, -0.082792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.806297, 3.707104, -0.089832>,  <0.672333, 4.083821, -0.101567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.806297, 3.707104, -0.089832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390952, -0.110563, 0.913746,
		-0.857317, -0.317492, -0.405225,
		0.334910, -0.941793, 0.029336,
		0.906770, 3.424566, -0.081031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.159420, 3.649252, -0.016902>,  <0.672333, 4.083821, -0.101567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.159420, 3.649252, -0.016902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.487328, 3.506510, 0.162266>,  <0.684072, 3.420865, 0.269766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.487328, 3.506510, 0.162266>,  <0.159420, 3.649252, -0.016902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.487328, 3.506510, 0.162266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512859, -0.109385, 0.851476,
		-0.254859, -0.927733, -0.272687,
		0.819770, -0.356856, 0.447919,
		0.733259, 3.399453, 0.296641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.000006, 3.002994, 0.338662>,  <0.159420, 3.649252, -0.016902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.000006, 3.002994, 0.338662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.333115, 3.134157, 0.517086>,  <0.532980, 3.212855, 0.624140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.333115, 3.134157, 0.517086>,  <0.000006, 3.002994, 0.338662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.333115, 3.134157, 0.517086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441733, -0.092108, 0.892406,
		0.333713, -0.940209, 0.068143,
		0.832771, 0.327908, 0.446059,
		0.582946, 3.232529, 0.650904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.231148, 2.573017, 0.921310>,  <0.000006, 3.002994, 0.338662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.231148, 2.573017, 0.921310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.370132, 2.938103, 1.007309>,  <0.453523, 3.157154, 1.058908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.370132, 2.938103, 1.007309>,  <0.231148, 2.573017, 0.921310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.370132, 2.938103, 1.007309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313861, -0.102855, 0.943881,
		0.883607, -0.395442, 0.250727,
		0.347462, 0.912714, 0.214997,
		0.474371, 3.211917, 1.071808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.443560, 2.513034, 1.619567>,  <0.231148, 2.573017, 0.921310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.443560, 2.513034, 1.619567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.439209, 2.904493, 1.537468>,  <0.436599, 3.139369, 1.488208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.439209, 2.904493, 1.537468>,  <0.443560, 2.513034, 1.619567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.439209, 2.904493, 1.537468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088235, 0.203521, 0.975087,
		0.996040, 0.028716, 0.084137,
		-0.010877, 0.978650, -0.205248,
		0.435946, 3.198088, 1.475893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.838959, 2.796544, 2.107090>,  <0.443560, 2.513034, 1.619567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.838959, 2.796544, 2.107090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.599548, 3.094791, 1.989910>,  <0.455902, 3.273740, 1.919602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.599548, 3.094791, 1.989910>,  <0.838959, 2.796544, 2.107090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.599548, 3.094791, 1.989910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425624, 0.013830, 0.904794,
		0.678682, 0.666230, 0.309075,
		-0.598527, 0.745618, -0.292950,
		0.419990, 3.318477, 1.902025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.954536, 3.335713, 2.564089>,  <0.838959, 2.796544, 2.107090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.954536, 3.335713, 2.564089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.600166, 3.397108, 2.389009>,  <0.387545, 3.433945, 2.283962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.600166, 3.397108, 2.389009>,  <0.954536, 3.335713, 2.564089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.600166, 3.397108, 2.389009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403096, 0.212059, 0.890250,
		0.229460, 0.965128, -0.125998,
		-0.885924, 0.153488, -0.437698,
		0.334389, 3.443155, 2.257700>
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
