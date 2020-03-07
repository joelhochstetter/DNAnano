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
	<2.374187, 2.535158, 6.175449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.423588, 2.778427, 5.861794>,  <2.453228, 2.924388, 5.673600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.423588, 2.778427, 5.861794>,  <2.374187, 2.535158, 6.175449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.423588, 2.778427, 5.861794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658808, -0.540677, -0.523107,
		-0.742105, 0.581202, 0.333894,
		0.123502, 0.608172, -0.784140,
		2.460638, 2.960879, 5.626552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.792825, 2.863215, 5.835536>,  <2.374187, 2.535158, 6.175449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.792825, 2.863215, 5.835536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.063602, 2.862617, 5.541122>,  <2.226069, 2.862259, 5.364475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.063602, 2.862617, 5.541122>,  <1.792825, 2.863215, 5.835536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.063602, 2.862617, 5.541122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686213, -0.362935, -0.630389,
		-0.266190, 0.931813, -0.246711,
		0.676945, -0.001493, -0.736032,
		2.266686, 2.862170, 5.320312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.584410, 3.303807, 5.248023>,  <1.792825, 2.863215, 5.835536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.584410, 3.303807, 5.248023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.808994, 2.995850, 5.126678>,  <1.943745, 2.811075, 5.053872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.808994, 2.995850, 5.126678>,  <1.584410, 3.303807, 5.248023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.808994, 2.995850, 5.126678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804461, -0.421916, -0.418125,
		0.193919, 0.478802, -0.856239,
		0.561460, -0.769893, -0.303360,
		1.977432, 2.764882, 5.035670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.632444, 3.139922, 4.461695>,  <1.584410, 3.303807, 5.248023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.632444, 3.139922, 4.461695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.661808, 2.820023, 4.700027>,  <1.679426, 2.628083, 4.843027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.661808, 2.820023, 4.700027>,  <1.632444, 3.139922, 4.461695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.661808, 2.820023, 4.700027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676002, -0.479154, -0.559851,
		0.733234, -0.361684, -0.575806,
		0.073410, -0.799748, 0.595831,
		1.683831, 2.580098, 4.878777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.743614, 2.531492, 4.067238>,  <1.632444, 3.139922, 4.461695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.743614, 2.531492, 4.067238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.589466, 2.422623, 4.419922>,  <1.496977, 2.357301, 4.631532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.589466, 2.422623, 4.419922>,  <1.743614, 2.531492, 4.067238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.589466, 2.422623, 4.419922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753457, -0.458816, -0.470946,
		0.532722, -0.845819, -0.028258,
		-0.385370, -0.272174, 0.881709,
		1.473855, 2.340971, 4.684435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.525188, 1.841262, 4.021003>,  <1.743614, 2.531492, 4.067238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.525188, 1.841262, 4.021003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.331928, 1.940109, 4.356979>,  <1.215972, 1.999417, 4.558565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.331928, 1.940109, 4.356979>,  <1.525188, 1.841262, 4.021003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.331928, 1.940109, 4.356979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824647, -0.450745, -0.341741,
		0.294149, -0.857766, 0.421561,
		-0.483150, 0.247116, 0.839941,
		1.186983, 2.014244, 4.608961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.279490, 1.216701, 4.417180>,  <1.525188, 1.841262, 4.021003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.279490, 1.216701, 4.417180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.060520, 1.543518, 4.489586>,  <0.929138, 1.739609, 4.533029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.060520, 1.543518, 4.489586>,  <1.279490, 1.216701, 4.417180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.060520, 1.543518, 4.489586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808450, -0.460447, -0.366604,
		-0.216184, -0.347029, 0.912598,
		-0.547425, 0.817043, 0.181015,
		0.896293, 1.788631, 4.543890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.644711, 0.950049, 4.726754>,  <1.279490, 1.216701, 4.417180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.644711, 0.950049, 4.726754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.562740, 1.327080, 4.621262>,  <0.513558, 1.553298, 4.557966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.562740, 1.327080, 4.621262>,  <0.644711, 0.950049, 4.726754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.562740, 1.327080, 4.621262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890768, -0.291269, -0.348849,
		-0.405634, 0.163435, 0.899305,
		-0.204926, 0.942577, -0.263731,
		0.501263, 1.609853, 4.542142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.688412, 0.931438, 2.813926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.408205, 0.826416, 2.548492>,  <-0.240081, 0.763403, 2.389233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.408205, 0.826416, 2.548492>,  <-0.688412, 0.931438, 2.813926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.408205, 0.826416, 2.548492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701887, 0.085451, 0.707144,
		-0.128961, -0.961126, 0.244144,
		0.700516, -0.262555, -0.663582,
		-0.198050, 0.747650, 2.349418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.423318, 1.430961, 3.378597>,  <-0.688412, 0.931438, 2.813926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.423318, 1.430961, 3.378597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.561144, 1.723709, 3.613762>,  <-0.643840, 1.899358, 3.754861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.561144, 1.723709, 3.613762>,  <-0.423318, 1.430961, 3.378597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.561144, 1.723709, 3.613762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868840, 0.011449, 0.494961,
		0.355516, 0.681348, -0.639823,
		-0.344566, 0.731870, 0.587912,
		-0.664514, 1.943270, 3.790135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.137578, 1.919390, 3.457369>,  <-0.423318, 1.430961, 3.378597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.137578, 1.919390, 3.457369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.117865, 1.942314, 3.764328>,  <-0.271130, 1.956069, 3.948503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.117865, 1.942314, 3.764328>,  <0.137578, 1.919390, 3.457369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.117865, 1.942314, 3.764328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769495, 0.037545, 0.637548,
		0.007726, 0.997650, -0.068076,
		-0.638606, 0.057310, 0.767397,
		-0.309447, 1.959507, 3.994547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.125035, 2.577606, 3.819158>,  <0.137578, 1.919390, 3.457369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.125035, 2.577606, 3.819158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.029312, 2.271744, 4.058502>,  <-0.028122, 2.088227, 4.202108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.029312, 2.271744, 4.058502>,  <0.125035, 2.577606, 3.819158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.029312, 2.271744, 4.058502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677244, 0.310145, 0.667196,
		-0.695753, 0.564900, 0.443638,
		-0.239307, -0.764655, 0.598360,
		-0.042480, 2.042347, 4.238010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.041924, 2.855588, 4.517587>,  <0.125035, 2.577606, 3.819158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.041924, 2.855588, 4.517587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.149929, 2.474380, 4.572502>,  <0.214732, 2.245656, 4.605451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.149929, 2.474380, 4.572502>,  <0.041924, 2.855588, 4.517587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.149929, 2.474380, 4.572502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753364, 0.297900, 0.586258,
		-0.599613, -0.054870, 0.798407,
		0.270014, -0.953019, 0.137288,
		0.230933, 2.188475, 4.613688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.125512, 2.634785, 5.271007>,  <0.041924, 2.855588, 4.517587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.125512, 2.634785, 5.271007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.344322, 2.376564, 5.057831>,  <0.475608, 2.221631, 4.929925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.344322, 2.376564, 5.057831>,  <0.125512, 2.634785, 5.271007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.344322, 2.376564, 5.057831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750975, 0.097150, 0.653145,
		-0.369865, -0.757511, 0.537938,
		0.547025, -0.645553, -0.532939,
		0.508430, 2.182898, 4.897949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.574062, 2.305406, 5.745987>,  <0.125512, 2.634785, 5.271007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.574062, 2.305406, 5.745987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.753611, 2.180939, 5.410919>,  <0.861340, 2.106258, 5.209878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.753611, 2.180939, 5.410919>,  <0.574062, 2.305406, 5.745987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.753611, 2.180939, 5.410919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893486, 0.141505, 0.426215,
		-0.014090, -0.939761, 0.341543,
		0.448871, -0.311169, -0.837669,
		0.888272, 2.087588, 5.159618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.081694, 1.808462, 5.869934>,  <0.574062, 2.305406, 5.745987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.081694, 1.808462, 5.869934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.197460, 1.965088, 5.520554>,  <1.266920, 2.059064, 5.310925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.197460, 1.965088, 5.520554>,  <1.081694, 1.808462, 5.869934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.197460, 1.965088, 5.520554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906164, 0.181911, 0.381806,
		0.308392, -0.901989, -0.302175,
		0.289416, 0.391566, -0.873450,
		1.284285, 2.082558, 5.258519>
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
