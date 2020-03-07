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
	<2.511070, 2.963789, 3.179039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.476547, 3.112835, 3.548624>,  <2.455834, 3.202262, 3.770375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.476547, 3.112835, 3.548624>,  <2.511070, 2.963789, 3.179039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.476547, 3.112835, 3.548624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100630, -0.925942, 0.364013,
		0.991173, -0.061562, 0.117412,
		-0.086307, 0.372615, 0.923964,
		2.450655, 3.224619, 3.825813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.011414, 2.647377, 3.615433>,  <2.511070, 2.963789, 3.179039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.011414, 2.647377, 3.615433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.678493, 2.755808, 3.808842>,  <2.478741, 2.820866, 3.924887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.678493, 2.755808, 3.808842>,  <3.011414, 2.647377, 3.615433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.678493, 2.755808, 3.808842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022742, -0.888236, 0.458825,
		0.553858, 0.370884, 0.745444,
		-0.832300, 0.271077, 0.483522,
		2.428803, 2.837131, 3.953898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.099777, 2.533601, 4.324834>,  <3.011414, 2.647377, 3.615433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.099777, 2.533601, 4.324834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.710598, 2.524254, 4.232899>,  <2.477090, 2.518646, 4.177738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.710598, 2.524254, 4.232899>,  <3.099777, 2.533601, 4.324834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.710598, 2.524254, 4.232899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080451, -0.898326, 0.431900,
		-0.216562, 0.438707, 0.872145,
		-0.972948, -0.023368, -0.229838,
		2.418714, 2.517243, 4.163947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.817940, 2.176586, 4.888300>,  <3.099777, 2.533601, 4.324834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.817940, 2.176586, 4.888300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.561001, 2.131180, 4.585116>,  <2.406837, 2.103936, 4.403206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.561001, 2.131180, 4.585116>,  <2.817940, 2.176586, 4.888300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.561001, 2.131180, 4.585116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184991, -0.936765, 0.297070,
		-0.743752, 0.331038, 0.580729,
		-0.642348, -0.113517, -0.757960,
		2.368296, 2.097125, 4.357728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.167567, 1.912678, 5.123870>,  <2.817940, 2.176586, 4.888300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.167567, 1.912678, 5.123870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.203754, 1.808453, 4.739387>,  <2.225467, 1.745918, 4.508697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.203754, 1.808453, 4.739387>,  <2.167567, 1.912678, 5.123870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.203754, 1.808453, 4.739387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126222, -0.960383, 0.248459,
		-0.987868, 0.098848, -0.119774,
		0.090469, -0.260563, -0.961209,
		2.230895, 1.730284, 4.451024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.696362, 1.434344, 5.030691>,  <2.167567, 1.912678, 5.123870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.696362, 1.434344, 5.030691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.895271, 1.360886, 4.691517>,  <2.014617, 1.316811, 4.488013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.895271, 1.360886, 4.691517>,  <1.696362, 1.434344, 5.030691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.895271, 1.360886, 4.691517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193315, -0.976224, 0.098060,
		-0.845782, 0.115155, -0.520953,
		0.497275, -0.183645, -0.847934,
		2.044454, 1.305792, 4.437137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.359976, 0.899474, 4.668829>,  <1.696362, 1.434344, 5.030691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.359976, 0.899474, 4.668829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.720562, 0.879189, 4.496881>,  <1.936914, 0.867017, 4.393712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.720562, 0.879189, 4.496881>,  <1.359976, 0.899474, 4.668829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.720562, 0.879189, 4.496881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001686, -0.992694, 0.120648,
		-0.432849, -0.109485, -0.894793,
		0.901465, -0.050713, -0.429871,
		1.991001, 0.863974, 4.367919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.349854, 0.450354, 4.167654>,  <1.359976, 0.899474, 4.668829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.349854, 0.450354, 4.167654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.725414, 0.464264, 4.304626>,  <1.950750, 0.472610, 4.386809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.725414, 0.464264, 4.304626>,  <1.349854, 0.450354, 4.167654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.725414, 0.464264, 4.304626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022656, -0.986481, 0.162302,
		0.343445, -0.160143, -0.925418,
		0.938899, 0.034776, 0.342431,
		2.007084, 0.474697, 4.407355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.891840, -0.735531, 4.837814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.288704, -0.693630, 4.810547>,  <2.526822, -0.668490, 4.794187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.288704, -0.693630, 4.810547>,  <1.891840, -0.735531, 4.837814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.288704, -0.693630, 4.810547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124969, 0.824375, -0.552077,
		-0.001636, 0.556267, 0.831002,
		0.992159, 0.104753, -0.068167,
		2.586352, -0.662204, 4.790097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.262359, -0.157218, 5.264538>,  <1.891840, -0.735531, 4.837814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.262359, -0.157218, 5.264538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.446617, -0.226894, 4.916409>,  <2.557172, -0.268700, 4.707531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.446617, -0.226894, 4.916409>,  <2.262359, -0.157218, 5.264538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.446617, -0.226894, 4.916409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232140, 0.922779, -0.307555,
		0.856690, 0.343711, 0.384637,
		0.460645, -0.174190, -0.870324,
		2.584811, -0.279151, 4.655312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.887505, 0.342222, 5.127307>,  <2.262359, -0.157218, 5.264538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.887505, 0.342222, 5.127307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.687210, 0.201767, 4.810835>,  <2.567033, 0.117494, 4.620952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.687210, 0.201767, 4.810835>,  <2.887505, 0.342222, 5.127307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.687210, 0.201767, 4.810835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158207, 0.935755, -0.315172,
		0.851018, -0.032648, -0.524120,
		-0.500738, -0.351137, -0.791180,
		2.536989, 0.096426, 4.573481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.294548, 0.631689, 4.523007>,  <2.887505, 0.342222, 5.127307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.294548, 0.631689, 4.523007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.907257, 0.544548, 4.473892>,  <2.674883, 0.492264, 4.444423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.907257, 0.544548, 4.473892>,  <3.294548, 0.631689, 4.523007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.907257, 0.544548, 4.473892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163964, 0.923775, -0.346057,
		0.188817, -0.314929, -0.930144,
		-0.968227, -0.217851, -0.122787,
		2.616789, 0.479193, 4.437056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.125863, 0.838496, 3.829945>,  <3.294548, 0.631689, 4.523007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.125863, 0.838496, 3.829945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.778885, 0.844193, 4.028877>,  <2.570698, 0.847610, 4.148237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.778885, 0.844193, 4.028877>,  <3.125863, 0.838496, 3.829945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.778885, 0.844193, 4.028877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188111, 0.916003, -0.354333,
		-0.460603, -0.400918, -0.791903,
		-0.867444, 0.014241, 0.497331,
		2.518652, 0.848465, 4.178076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.621329, 1.112201, 3.295435>,  <3.125863, 0.838496, 3.829945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.621329, 1.112201, 3.295435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.465752, 1.182507, 3.657171>,  <2.372405, 1.224690, 3.874213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.465752, 1.182507, 3.657171>,  <2.621329, 1.112201, 3.295435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.465752, 1.182507, 3.657171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225890, 0.933471, -0.278579,
		-0.893139, -0.312633, -0.323364,
		-0.388943, 0.175765, 0.904339,
		2.349069, 1.235236, 3.928473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.942005, 1.289025, 3.217961>,  <2.621329, 1.112201, 3.295435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.942005, 1.289025, 3.217961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.046753, 1.429981, 3.577349>,  <2.109601, 1.514555, 3.792981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.046753, 1.429981, 3.577349>,  <1.942005, 1.289025, 3.217961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.046753, 1.429981, 3.577349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085224, 0.935763, -0.342177,
		-0.961333, 0.013034, 0.275080,
		0.261869, 0.352390, 0.898469,
		2.125314, 1.535698, 3.846889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.637262, 1.880826, 3.276948>,  <1.942005, 1.289025, 3.217961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.637262, 1.880826, 3.276948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.883224, 1.933636, 3.587936>,  <2.030802, 1.965321, 3.774529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.883224, 1.933636, 3.587936>,  <1.637262, 1.880826, 3.276948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.883224, 1.933636, 3.587936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184239, 0.982654, -0.021150,
		-0.766777, -0.130235, 0.628564,
		0.614906, 0.132023, 0.777471,
		2.067696, 1.973243, 3.821177>
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
