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
	<4.238711, 1.446038, 4.006850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554741, 1.638458, 3.854863>,  <4.744359, 1.753910, 3.763671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554741, 1.638458, 3.854863>,  <4.238711, 1.446038, 4.006850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.554741, 1.638458, 3.854863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006747, 0.612975, 0.790074,
		0.612975, -0.626780, 0.481050,
		-0.790074, -0.481050, 0.379967,
		4.791763, 1.782773, 3.740873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.811801, 1.493303, 4.525173>,  <4.238711, 1.446038, 4.006850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.811801, 1.493303, 4.525173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761414, 1.783930, 4.254993>,  <4.731181, 1.958306, 4.092885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761414, 1.783930, 4.254993>,  <4.811801, 1.493303, 4.525173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.761414, 1.783930, 4.254993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107880, 0.666803, 0.737384,
		0.986151, 0.165755, -0.005615,
		-0.125969, 0.726567, -0.675450,
		4.723623, 2.001900, 4.052359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.293628, 2.043984, 4.527184>,  <4.811801, 1.493303, 4.525173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.293628, 2.043984, 4.527184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.964352, 2.205050, 4.367073>,  <4.766786, 2.301689, 4.271007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.964352, 2.205050, 4.367073>,  <5.293628, 2.043984, 4.527184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.964352, 2.205050, 4.367073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010750, 0.715930, 0.698090,
		0.567665, 0.570357, -0.593675,
		-0.823190, 0.402663, -0.400277,
		4.717395, 2.325848, 4.246990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383323, 2.795037, 4.245146>,  <5.293628, 2.043984, 4.527184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383323, 2.795037, 4.245146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.003422, 2.738035, 4.356616>,  <4.775481, 2.703834, 4.423498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.003422, 2.738035, 4.356616>,  <5.383323, 2.795037, 4.245146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.003422, 2.738035, 4.356616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036287, 0.834207, 0.550256,
		-0.310888, 0.532720, -0.787120,
		-0.949754, -0.142505, 0.278676,
		4.718496, 2.695284, 4.440219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.040298, 3.394019, 4.095432>,  <5.383323, 2.795037, 4.245146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.040298, 3.394019, 4.095432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.792233, 3.216269, 4.354021>,  <4.643393, 3.109618, 4.509174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.792233, 3.216269, 4.354021>,  <5.040298, 3.394019, 4.095432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.792233, 3.216269, 4.354021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189096, 0.884467, 0.426569,
		-0.761340, 0.142297, -0.632545,
		-0.620164, -0.444376, 0.646472,
		4.606183, 3.082956, 4.547963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.527760, 3.965218, 4.154228>,  <5.040298, 3.394019, 4.095432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.527760, 3.965218, 4.154228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.464214, 3.712637, 4.457814>,  <4.426087, 3.561088, 4.639966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.464214, 3.712637, 4.457814>,  <4.527760, 3.965218, 4.154228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.464214, 3.712637, 4.457814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116788, 0.775350, 0.620639,
		-0.980369, 0.009959, -0.196922,
		-0.158864, -0.631453, 0.758966,
		4.416555, 3.523201, 4.685504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.969748, 4.238296, 4.551753>,  <4.527760, 3.965218, 4.154228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.969748, 4.238296, 4.551753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174938, 4.018080, 4.815195>,  <4.298052, 3.885950, 4.973260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174938, 4.018080, 4.815195>,  <3.969748, 4.238296, 4.551753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.174938, 4.018080, 4.815195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122541, 0.806354, 0.578599,
		-0.849611, -0.216101, 0.481103,
		0.512976, -0.550539, 0.658606,
		4.328831, 3.852918, 5.012777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.639700, 4.352689, 5.186188>,  <3.969748, 4.238296, 4.551753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.639700, 4.352689, 5.186188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.008541, 4.216505, 5.259744>,  <4.229846, 4.134795, 5.303877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.008541, 4.216505, 5.259744>,  <3.639700, 4.352689, 5.186188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.008541, 4.216505, 5.259744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157297, 0.764000, 0.625749,
		-0.353534, -0.548079, 0.758039,
		0.922102, -0.340460, 0.183889,
		4.285172, 4.114367, 5.314910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.402084, 4.926569, 0.883664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.792114, 4.916447, 0.971836>,  <5.026132, 4.910373, 1.024739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.792114, 4.916447, 0.971836>,  <4.402084, 4.926569, 0.883664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.792114, 4.916447, 0.971836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021769, -0.999592, -0.018465,
		0.220807, 0.013207, -0.975228,
		0.975075, -0.025307, 0.220430,
		5.084637, 4.908854, 1.037965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.933010, 4.806573, 0.346633>,  <4.402084, 4.926569, 0.883664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.933010, 4.806573, 0.346633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.983383, 4.639252, 0.706447>,  <5.013607, 4.538859, 0.922336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.983383, 4.639252, 0.706447>,  <4.933010, 4.806573, 0.346633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.983383, 4.639252, 0.706447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415383, -0.845673, -0.335103,
		0.900887, -0.331451, -0.280254,
		0.125933, -0.418303, 0.899535,
		5.021163, 4.513761, 0.976308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.369926, 4.189927, 0.278208>,  <4.933010, 4.806573, 0.346633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.369926, 4.189927, 0.278208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.076988, 4.186965, 0.550565>,  <4.901226, 4.185188, 0.713980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.076988, 4.186965, 0.550565>,  <5.369926, 4.189927, 0.278208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.076988, 4.186965, 0.550565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461491, -0.729868, -0.504301,
		0.500698, -0.683548, 0.531096,
		-0.732344, -0.007406, 0.680895,
		4.857285, 4.184743, 0.754834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.349186, 3.589196, 0.749656>,  <5.369926, 4.189927, 0.278208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.349186, 3.589196, 0.749656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.001358, 3.738751, 0.620627>,  <4.792661, 3.828485, 0.543210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.001358, 3.738751, 0.620627>,  <5.349186, 3.589196, 0.749656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.001358, 3.738751, 0.620627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196179, -0.861042, -0.469170,
		-0.453165, -0.344695, 0.822087,
		-0.869572, 0.373888, -0.322572,
		4.740487, 3.850918, 0.523855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.949294, 3.003627, 0.797996>,  <5.349186, 3.589196, 0.749656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.949294, 3.003627, 0.797996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.747063, 3.258691, 0.565520>,  <4.625724, 3.411729, 0.426034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.747063, 3.258691, 0.565520>,  <4.949294, 3.003627, 0.797996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.747063, 3.258691, 0.565520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423847, -0.770299, -0.476438,
		-0.751492, 0.005455, 0.659720,
		-0.505582, 0.637659, -0.581186,
		4.595389, 3.449989, 0.391163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.455969, 2.626351, 0.685633>,  <4.949294, 3.003627, 0.797996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.455969, 2.626351, 0.685633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.415314, 2.895079, 0.392149>,  <4.390921, 3.056315, 0.216059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.415314, 2.895079, 0.392149>,  <4.455969, 2.626351, 0.685633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.415314, 2.895079, 0.392149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198348, -0.736405, -0.646811,
		-0.974847, 0.079789, 0.208101,
		-0.101638, 0.671819, -0.733709,
		4.384822, 3.096624, 0.172036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.772624, 2.586753, 0.388870>,  <4.455969, 2.626351, 0.685633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.772624, 2.586753, 0.388870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.033554, 2.726851, 0.120005>,  <4.190112, 2.810909, -0.041313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.033554, 2.726851, 0.120005>,  <3.772624, 2.586753, 0.388870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.033554, 2.726851, 0.120005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291337, -0.702829, -0.648964,
		-0.699711, 0.619160, -0.356434,
		0.652325, 0.350245, -0.672161,
		4.229251, 2.831924, -0.081643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.460887, 2.625003, -0.339522>,  <3.772624, 2.586753, 0.388870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.460887, 2.625003, -0.339522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.858223, 2.602877, -0.379954>,  <4.096624, 2.589601, -0.404214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.858223, 2.602877, -0.379954>,  <3.460887, 2.625003, -0.339522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.858223, 2.602877, -0.379954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111753, -0.676302, -0.728098,
		-0.028086, 0.734544, -0.677979,
		0.993339, -0.055317, -0.101082,
		4.156225, 2.586282, -0.410279>
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
