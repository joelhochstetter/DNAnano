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
	<1.252458, 1.828954, 1.016498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.467816, 2.077507, 1.244186>,  <1.597031, 2.226639, 1.380800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.467816, 2.077507, 1.244186>,  <1.252458, 1.828954, 1.016498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.467816, 2.077507, 1.244186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073520, 0.707540, -0.702838,
		-0.839479, 0.336556, 0.426621,
		0.538396, 0.621383, 0.569221,
		1.629335, 2.263922, 1.414953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.957820, 2.509705, 1.121433>,  <1.252458, 1.828954, 1.016498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.957820, 2.509705, 1.121433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.357020, 2.512432, 1.146568>,  <1.596540, 2.514069, 1.161649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.357020, 2.512432, 1.146568>,  <0.957820, 2.509705, 1.121433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.357020, 2.512432, 1.146568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031395, 0.809382, -0.586443,
		-0.054858, 0.587243, 0.807550,
		0.998001, 0.006819, 0.062838,
		1.656420, 2.514478, 1.165420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.206389, 3.193655, 1.246867>,  <0.957820, 2.509705, 1.121433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.206389, 3.193655, 1.246867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.482466, 2.969471, 1.063774>,  <1.648112, 2.834960, 0.953919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.482466, 2.969471, 1.063774>,  <1.206389, 3.193655, 1.246867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.482466, 2.969471, 1.063774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071651, 0.682375, -0.727482,
		0.720070, 0.469306, 0.511128,
		0.690192, -0.560461, -0.457731,
		1.689524, 2.801333, 0.926455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.805103, 3.565439, 1.189445>,  <1.206389, 3.193655, 1.246867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.805103, 3.565439, 1.189445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778738, 3.292118, 0.898582>,  <1.762920, 3.128126, 0.724065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778738, 3.292118, 0.898582>,  <1.805103, 3.565439, 1.189445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778738, 3.292118, 0.898582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196949, 0.705495, -0.680799,
		0.978196, -0.188084, 0.088076,
		-0.065910, -0.683301, -0.727156,
		1.758965, 3.087128, 0.680436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.386178, 3.725103, 0.863476>,  <1.805103, 3.565439, 1.189445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.386178, 3.725103, 0.863476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.160474, 3.529636, 0.597298>,  <2.025052, 3.412357, 0.437591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.160474, 3.529636, 0.597298>,  <2.386178, 3.725103, 0.863476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.160474, 3.529636, 0.597298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260062, 0.659780, -0.705023,
		0.783569, -0.570873, -0.245203,
		-0.564259, -0.488666, -0.665446,
		1.991196, 3.383037, 0.397664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.837194, 3.578283, 0.364929>,  <2.386178, 3.725103, 0.863476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.837194, 3.578283, 0.364929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.460040, 3.592453, 0.232437>,  <2.233748, 3.600955, 0.152942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.460040, 3.592453, 0.232437>,  <2.837194, 3.578283, 0.364929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.460040, 3.592453, 0.232437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258811, 0.703914, -0.661454,
		0.209724, -0.709401, -0.672879,
		-0.942885, 0.035426, -0.331229,
		2.177175, 3.603081, 0.133068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.895058, 3.656224, -0.374270>,  <2.837194, 3.578283, 0.364929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.895058, 3.656224, -0.374270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.527477, 3.799244, -0.307716>,  <2.306928, 3.885056, -0.267784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.527477, 3.799244, -0.307716>,  <2.895058, 3.656224, -0.374270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.527477, 3.799244, -0.307716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164045, 0.730238, -0.663206,
		-0.358630, -0.582160, -0.729708,
		-0.918953, 0.357550, 0.166385,
		2.251791, 3.906509, -0.257801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.520583, 3.835065, -1.035131>,  <2.895058, 3.656224, -0.374270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.520583, 3.835065, -1.035131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.357139, 4.054462, -0.743324>,  <2.259072, 4.186100, -0.568240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.357139, 4.054462, -0.743324>,  <2.520583, 3.835065, -1.035131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.357139, 4.054462, -0.743324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048553, 0.811218, -0.582725,
		-0.911417, -0.202687, -0.358103,
		-0.408610, 0.548492, 0.729516,
		2.234556, 4.219010, -0.524469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.998503, 5.376780, 0.523534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809071, 5.320488, 0.871307>,  <2.695411, 5.286713, 1.079972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809071, 5.320488, 0.871307>,  <2.998503, 5.376780, 0.523534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.809071, 5.320488, 0.871307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878354, -0.148227, 0.454448,
		0.064919, 0.978889, 0.193809,
		-0.473582, -0.140730, 0.869434,
		2.666996, 5.278269, 1.132138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.568005, 5.485531, -0.077342>,  <2.998503, 5.376780, 0.523534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.568005, 5.485531, -0.077342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291130, 5.348221, -0.331284>,  <2.125005, 5.265835, -0.483649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291130, 5.348221, -0.331284>,  <2.568005, 5.485531, -0.077342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.291130, 5.348221, -0.331284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086477, -0.833857, 0.545165,
		-0.716519, 0.432256, 0.547499,
		-0.692186, -0.343275, -0.634855,
		2.083474, 5.245238, -0.521740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.089075, 5.267494, 0.283161>,  <2.568005, 5.485531, -0.077342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.089075, 5.267494, 0.283161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.065605, 5.038136, -0.043709>,  <2.051523, 4.900521, -0.239831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.065605, 5.038136, -0.043709>,  <2.089075, 5.267494, 0.283161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.065605, 5.038136, -0.043709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223266, -0.790312, 0.570577,
		-0.972990, 0.215926, -0.081648,
		-0.058675, -0.573395, -0.817175,
		2.048003, 4.866117, -0.288861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.515231, 4.839573, 0.365855>,  <2.089075, 5.267494, 0.283161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.515231, 4.839573, 0.365855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.717678, 4.637905, 0.085953>,  <1.839146, 4.516904, -0.081989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.717678, 4.637905, 0.085953>,  <1.515231, 4.839573, 0.365855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.717678, 4.637905, 0.085953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288908, -0.863576, 0.413241,
		-0.812636, -0.006983, -0.582730,
		0.506117, -0.504170, -0.699756,
		1.869513, 4.486654, -0.123974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.053651, 4.314870, 0.070776>,  <1.515231, 4.839573, 0.365855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.053651, 4.314870, 0.070776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.410667, 4.180065, -0.049088>,  <1.624877, 4.099183, -0.121006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.410667, 4.180065, -0.049088>,  <1.053651, 4.314870, 0.070776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.410667, 4.180065, -0.049088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283125, -0.935959, 0.209333,
		-0.351017, -0.101997, -0.930797,
		0.892540, -0.337011, -0.299660,
		1.678429, 4.078962, -0.138985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.956921, 3.628362, -0.349028>,  <1.053651, 4.314870, 0.070776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.956921, 3.628362, -0.349028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.331402, 3.620892, -0.208641>,  <1.556090, 3.616409, -0.124409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.331402, 3.620892, -0.208641>,  <0.956921, 3.628362, -0.349028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.331402, 3.620892, -0.208641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153872, -0.919582, 0.361515,
		0.315991, -0.392455, -0.863788,
		0.936202, -0.018677, 0.350967,
		1.612262, 3.615288, -0.103351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.207365, 2.938309, -0.552555>,  <0.956921, 3.628362, -0.349028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.207365, 2.938309, -0.552555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.453384, 3.043911, -0.255363>,  <1.600996, 3.107272, -0.077049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.453384, 3.043911, -0.255363>,  <1.207365, 2.938309, -0.552555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.453384, 3.043911, -0.255363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162077, -0.879829, 0.446802,
		0.771652, -0.395225, -0.498348,
		0.615048, 0.264005, 0.742978,
		1.637899, 3.123112, -0.032470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.600700, 2.284525, -0.283015>,  <1.207365, 2.938309, -0.552555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.600700, 2.284525, -0.283015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.631851, 2.529892, 0.031349>,  <1.650542, 2.677112, 0.219967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.631851, 2.529892, 0.031349>,  <1.600700, 2.284525, -0.283015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.631851, 2.529892, 0.031349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021950, -0.787057, 0.616489,
		0.996721, -0.065262, -0.047830,
		0.077878, 0.613418, 0.785909,
		1.655215, 2.713917, 0.267122>
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
