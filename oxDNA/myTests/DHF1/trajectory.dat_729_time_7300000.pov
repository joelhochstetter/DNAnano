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
	<4.123005, 2.533076, 3.619242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.794624, 2.630913, 3.412859>,  <3.597596, 2.689615, 3.289029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.794624, 2.630913, 3.412859>,  <4.123005, 2.533076, 3.619242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.794624, 2.630913, 3.412859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010610, 0.896917, 0.442071,
		0.570898, 0.368394, -0.733731,
		-0.820953, 0.244593, -0.515957,
		3.548339, 2.704291, 3.258072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.209864, 3.222233, 3.367100>,  <4.123005, 2.533076, 3.619242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.209864, 3.222233, 3.367100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816513, 3.159199, 3.403184>,  <3.580503, 3.121378, 3.424834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816513, 3.159199, 3.403184>,  <4.209864, 3.222233, 3.367100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.816513, 3.159199, 3.403184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098387, 0.879985, 0.464700,
		-0.152612, 0.448100, -0.880861,
		-0.983377, -0.157584, 0.090209,
		3.521500, 3.111923, 3.430247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.793268, 3.752101, 3.120103>,  <4.209864, 3.222233, 3.367100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.793268, 3.752101, 3.120103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.623199, 3.555779, 3.424296>,  <3.521158, 3.437985, 3.606813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.623199, 3.555779, 3.424296>,  <3.793268, 3.752101, 3.120103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.623199, 3.555779, 3.424296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068263, 0.855205, 0.513774,
		-0.902535, 0.166530, -0.397113,
		-0.425172, -0.490807, 0.760485,
		3.495648, 3.408536, 3.652442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.259614, 4.194535, 3.355958>,  <3.793268, 3.752101, 3.120103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.259614, 4.194535, 3.355958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.355274, 3.935934, 3.645741>,  <3.412670, 3.780773, 3.819612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.355274, 3.935934, 3.645741>,  <3.259614, 4.194535, 3.355958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.355274, 3.935934, 3.645741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004679, 0.746868, 0.664955,
		-0.970971, -0.155635, 0.181639,
		0.239150, -0.646502, 0.724460,
		3.427019, 3.741983, 3.863079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.724303, 4.192562, 3.852478>,  <3.259614, 4.194535, 3.355958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.724303, 4.192562, 3.852478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.071419, 4.083551, 4.018694>,  <3.279688, 4.018145, 4.118423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.071419, 4.083551, 4.018694>,  <2.724303, 4.192562, 3.852478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.071419, 4.083551, 4.018694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099507, 0.723974, 0.682612,
		-0.486870, -0.633712, 0.601138,
		0.867788, -0.272526, 0.415540,
		3.331755, 4.001794, 4.143356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.623437, 4.193784, 4.580548>,  <2.724303, 4.192562, 3.852478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.623437, 4.193784, 4.580548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.015270, 4.243620, 4.517435>,  <3.250370, 4.273522, 4.479567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.015270, 4.243620, 4.517435>,  <2.623437, 4.193784, 4.580548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.015270, 4.243620, 4.517435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000440, 0.783491, 0.621403,
		0.201042, -0.608785, 0.767439,
		0.979582, 0.124591, -0.157783,
		3.309145, 4.280997, 4.470100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.834832, 4.339840, 5.179141>,  <2.623437, 4.193784, 4.580548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.834832, 4.339840, 5.179141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.150017, 4.460882, 4.964646>,  <3.339127, 4.533507, 4.835950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.150017, 4.460882, 4.964646>,  <2.834832, 4.339840, 5.179141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.150017, 4.460882, 4.964646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084781, 0.809283, 0.581269,
		0.609860, -0.503480, 0.612028,
		0.787961, 0.302604, -0.536234,
		3.386405, 4.551664, 4.803776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.233885, 4.611948, 5.659444>,  <2.834832, 4.339840, 5.179141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.233885, 4.611948, 5.659444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.386612, 4.772793, 5.326573>,  <3.478248, 4.869300, 5.126851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.386612, 4.772793, 5.326573>,  <3.233885, 4.611948, 5.659444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.386612, 4.772793, 5.326573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131719, 0.867528, 0.479630,
		0.914804, -0.292744, 0.278271,
		0.381817, 0.402114, -0.832178,
		3.501157, 4.893427, 5.076920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.857221, 5.946555, 5.451190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.198723, 6.102272, 5.312883>,  <3.403624, 6.195702, 5.229899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.198723, 6.102272, 5.312883>,  <2.857221, 5.946555, 5.451190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.198723, 6.102272, 5.312883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168617, -0.835003, -0.523774,
		-0.492617, 0.388873, -0.778529,
		0.853755, 0.389293, -0.345766,
		3.454849, 6.219060, 5.209154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.882973, 5.851281, 4.731633>,  <2.857221, 5.946555, 5.451190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.882973, 5.851281, 4.731633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.257011, 5.892117, 4.867382>,  <3.481434, 5.916618, 4.948832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.257011, 5.892117, 4.867382>,  <2.882973, 5.851281, 4.731633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.257011, 5.892117, 4.867382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232750, -0.899049, -0.370862,
		0.267252, 0.425780, -0.864458,
		0.935096, 0.102089, 0.339373,
		3.537540, 5.922743, 4.969194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.373378, 5.846980, 4.278036>,  <2.882973, 5.851281, 4.731633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.373378, 5.846980, 4.278036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.519585, 5.659588, 4.599762>,  <3.607309, 5.547153, 4.792798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.519585, 5.659588, 4.599762>,  <3.373378, 5.846980, 4.278036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.519585, 5.659588, 4.599762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007151, -0.862669, -0.505717,
		0.930777, 0.190600, -0.311971,
		0.365518, -0.468479, 0.804316,
		3.629240, 5.519044, 4.841057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.950518, 5.420377, 3.959412>,  <3.373378, 5.846980, 4.278036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.950518, 5.420377, 3.959412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.827759, 5.246239, 4.297947>,  <3.754103, 5.141756, 4.501068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.827759, 5.246239, 4.297947>,  <3.950518, 5.420377, 3.959412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.827759, 5.246239, 4.297947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130774, -0.900105, -0.415582,
		0.942715, -0.016862, 0.333172,
		-0.306898, -0.435346, 0.846338,
		3.735689, 5.115635, 4.551848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.470352, 4.895842, 4.196536>,  <3.950518, 5.420377, 3.959412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.470352, 4.895842, 4.196536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.131363, 4.788231, 4.379583>,  <3.927969, 4.723664, 4.489412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.131363, 4.788231, 4.379583>,  <4.470352, 4.895842, 4.196536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.131363, 4.788231, 4.379583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105290, -0.930126, -0.351823,
		0.520293, -0.249978, 0.816582,
		-0.847473, -0.269028, 0.457618,
		3.877121, 4.707522, 4.516869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.603240, 4.265547, 4.460355>,  <4.470352, 4.895842, 4.196536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.603240, 4.265547, 4.460355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.203278, 4.269764, 4.463778>,  <3.963300, 4.272294, 4.465831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.203278, 4.269764, 4.463778>,  <4.603240, 4.265547, 4.460355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.203278, 4.269764, 4.463778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012510, -0.960267, -0.278804,
		0.005277, -0.278885, 0.960310,
		-0.999908, 0.010543, 0.008556,
		3.903305, 4.272927, 4.466344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.445371, 3.661537, 4.664857>,  <4.603240, 4.265547, 4.460355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.445371, 3.661537, 4.664857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.091537, 3.761364, 4.507261>,  <3.879237, 3.821260, 4.412704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.091537, 3.761364, 4.507261>,  <4.445371, 3.661537, 4.664857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.091537, 3.761364, 4.507261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069556, -0.905927, -0.417683,
		-0.461165, -0.342072, 0.818727,
		-0.884584, 0.249568, -0.393989,
		3.826162, 3.836235, 4.389065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.992589, 3.021419, 4.739484>,  <4.445371, 3.661537, 4.664857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.992589, 3.021419, 4.739484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847908, 3.252880, 4.447092>,  <3.761099, 3.391757, 4.271657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847908, 3.252880, 4.447092>,  <3.992589, 3.021419, 4.739484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.847908, 3.252880, 4.447092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114468, -0.805699, -0.581160,
		-0.925240, -0.126533, 0.357660,
		-0.361702, 0.578653, -0.730981,
		3.739397, 3.426476, 4.227798>
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
