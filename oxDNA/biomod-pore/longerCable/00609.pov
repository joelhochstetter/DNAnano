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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.392632, 35.259705, 34.758636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220657, 35.131393, 35.096218>,  <24.117472, 35.054405, 35.298767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220657, 35.131393, 35.096218>,  <24.392632, 35.259705, 34.758636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.220657, 35.131393, 35.096218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843008, 0.192046, 0.502450,
		-0.323253, 0.927480, 0.187851,
		-0.429936, -0.320778, 0.843953,
		24.091677, 35.035160, 35.349403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822300, 35.570873, 35.333569>,  <24.392632, 35.259705, 34.758636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822300, 35.570873, 35.333569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622831, 35.248123, 35.460232>,  <24.503151, 35.054474, 35.536232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622831, 35.248123, 35.460232>,  <24.822300, 35.570873, 35.333569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622831, 35.248123, 35.460232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819729, -0.320257, 0.474848,
		-0.281732, 0.496368, 0.821124,
		-0.498670, -0.806879, 0.316661,
		24.473230, 35.006058, 35.555229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143414, 35.533268, 35.998825>,  <24.822300, 35.570873, 35.333569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143414, 35.533268, 35.998825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007298, 35.164310, 35.925724>,  <24.925629, 34.942936, 35.881863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007298, 35.164310, 35.925724>,  <25.143414, 35.533268, 35.998825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007298, 35.164310, 35.925724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819957, -0.386210, 0.422508,
		-0.460299, -0.006077, 0.887743,
		-0.340288, -0.922391, -0.182754,
		24.905210, 34.887592, 35.870899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587164, 35.240932, 36.531189>,  <25.143414, 35.533268, 35.998825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587164, 35.240932, 36.531189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522053, 34.957294, 36.256763>,  <25.482986, 34.787109, 36.092110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522053, 34.957294, 36.256763>,  <25.587164, 35.240932, 36.531189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522053, 34.957294, 36.256763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835029, -0.469400, 0.287037,
		-0.525575, -0.526158, 0.668527,
		-0.162780, -0.709099, -0.686062,
		25.473219, 34.744564, 36.050945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555998, 34.594994, 36.810757>,  <25.587164, 35.240932, 36.531189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555998, 34.594994, 36.810757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700914, 34.534546, 36.442863>,  <25.787865, 34.498280, 36.222126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700914, 34.534546, 36.442863>,  <25.555998, 34.594994, 36.810757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700914, 34.534546, 36.442863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680612, -0.631280, 0.371823,
		-0.636800, -0.760689, -0.125850,
		0.362288, -0.151122, -0.919733,
		25.809603, 34.489212, 36.166943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597477, 33.955322, 36.719830>,  <25.555998, 34.594994, 36.810757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597477, 33.955322, 36.719830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846327, 34.114204, 36.449959>,  <25.995636, 34.209534, 36.288036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846327, 34.114204, 36.449959>,  <25.597477, 33.955322, 36.719830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846327, 34.114204, 36.449959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718906, -0.631096, 0.291361,
		-0.310059, -0.666295, -0.678170,
		0.622123, 0.397202, -0.674681,
		26.032963, 34.233364, 36.247555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838701, 33.357479, 36.141857>,  <25.597477, 33.955322, 36.719830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838701, 33.357479, 36.141857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071779, 33.658543, 36.264473>,  <26.211626, 33.839180, 36.338043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071779, 33.658543, 36.264473>,  <25.838701, 33.357479, 36.141857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071779, 33.658543, 36.264473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675190, -0.658278, 0.332849,
		0.452308, 0.013019, -0.891767,
		0.582697, 0.752663, 0.306535,
		26.246588, 33.884342, 36.356434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570570, 33.371166, 35.869751>,  <25.838701, 33.357479, 36.141857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570570, 33.371166, 35.869751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515038, 33.501720, 36.243744>,  <26.481718, 33.580055, 36.468140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515038, 33.501720, 36.243744>,  <26.570570, 33.371166, 35.869751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515038, 33.501720, 36.243744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660284, -0.673142, 0.333024,
		0.738073, 0.663589, -0.122057,
		-0.138830, 0.326388, 0.934985,
		26.473389, 33.599636, 36.524239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189066, 33.318886, 36.207542>,  <26.570570, 33.371166, 35.869751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189066, 33.318886, 36.207542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948771, 33.391190, 36.519039>,  <26.804592, 33.434574, 36.705936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948771, 33.391190, 36.519039>,  <27.189066, 33.318886, 36.207542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948771, 33.391190, 36.519039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511317, -0.661929, 0.548092,
		0.614545, 0.727444, 0.305220,
		-0.600741, 0.180763, 0.778740,
		26.768549, 33.445419, 36.752663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492777, 33.432209, 36.822811>,  <27.189066, 33.318886, 36.207542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492777, 33.432209, 36.822811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139214, 33.260136, 36.896183>,  <26.927074, 33.156891, 36.940205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139214, 33.260136, 36.896183>,  <27.492777, 33.432209, 36.822811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139214, 33.260136, 36.896183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455319, -0.702123, 0.547455,
		-0.106715, 0.567421, 0.816484,
		-0.883910, -0.430183, 0.183430,
		26.874041, 33.131081, 36.951214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109524, 33.850452, 36.538818>,  <27.492777, 33.432209, 36.822811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109524, 33.850452, 36.538818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448929, 33.669094, 36.429668>,  <28.652573, 33.560280, 36.364178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448929, 33.669094, 36.429668>,  <28.109524, 33.850452, 36.538818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448929, 33.669094, 36.429668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487686, 0.469863, 0.735793,
		-0.205390, -0.757407, 0.619798,
		0.848514, -0.453392, -0.272872,
		28.703484, 33.533077, 36.347805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524801, 33.391369, 36.978718>,  <28.109524, 33.850452, 36.538818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524801, 33.391369, 36.978718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308411, 33.344784, 37.311893>,  <28.178576, 33.316833, 37.511799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308411, 33.344784, 37.311893>,  <28.524801, 33.391369, 36.978718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308411, 33.344784, 37.311893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087678, -0.992779, -0.081862,
		0.836455, 0.028745, 0.547280,
		-0.540976, -0.116459, 0.832936,
		28.146118, 33.309845, 37.561775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729435, 32.714314, 37.215717>,  <28.524801, 33.391369, 36.978718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729435, 32.714314, 37.215717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379625, 32.821922, 37.377129>,  <28.169739, 32.886486, 37.473976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379625, 32.821922, 37.377129>,  <28.729435, 32.714314, 37.215717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379625, 32.821922, 37.377129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355828, -0.921277, -0.156957,
		0.329538, -0.280850, 0.901403,
		-0.874524, 0.269021, 0.403530,
		28.117268, 32.902630, 37.498188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468201, 32.122009, 37.638073>,  <28.729435, 32.714314, 37.215717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468201, 32.122009, 37.638073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178801, 32.336872, 37.464634>,  <28.005161, 32.465790, 37.360573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178801, 32.336872, 37.464634>,  <28.468201, 32.122009, 37.638073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178801, 32.336872, 37.464634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448839, -0.843257, -0.295738,
		-0.524491, -0.019352, 0.851196,
		-0.723500, 0.537162, -0.433595,
		27.961750, 32.498020, 37.334557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067381, 32.427322, 37.917191>,  <28.468201, 32.122009, 37.638073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067381, 32.427322, 37.917191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100004, 32.337387, 37.528801>,  <29.119579, 32.283424, 37.295765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100004, 32.337387, 37.528801>,  <29.067381, 32.427322, 37.917191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100004, 32.337387, 37.528801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540507, 0.828496, -0.146447,
		0.837377, -0.512874, 0.189100,
		0.081560, -0.224841, -0.970976,
		29.124472, 32.269936, 37.237507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810728, 32.310368, 37.754238>,  <29.067381, 32.427322, 37.917191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810728, 32.310368, 37.754238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602123, 32.424862, 37.432720>,  <29.476959, 32.493557, 37.239807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602123, 32.424862, 37.432720>,  <29.810728, 32.310368, 37.754238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602123, 32.424862, 37.432720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670524, 0.720062, -0.178628,
		0.527656, -0.632124, -0.567449,
		-0.521514, 0.286234, -0.803799,
		29.445669, 32.510731, 37.191582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199259, 32.403549, 37.060520>,  <29.810728, 32.310368, 37.754238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199259, 32.403549, 37.060520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884981, 32.647758, 37.020622>,  <29.696415, 32.794285, 36.996681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884981, 32.647758, 37.020622>,  <30.199259, 32.403549, 37.060520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884981, 32.647758, 37.020622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618608, 0.776134, -0.122229,
		0.002794, -0.157740, -0.987477,
		-0.785695, 0.610520, -0.099748,
		29.649273, 32.830914, 36.990696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311743, 32.228504, 36.304379>,  <30.199259, 32.403549, 37.060520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311743, 32.228504, 36.304379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449930, 31.965540, 36.036510>,  <30.532843, 31.807762, 35.875790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449930, 31.965540, 36.036510>,  <30.311743, 32.228504, 36.304379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449930, 31.965540, 36.036510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639607, -0.357236, 0.680650,
		-0.686699, -0.663470, 0.297072,
		0.345466, -0.657411, -0.669674,
		30.553570, 31.768316, 35.835609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252302, 31.512636, 36.537212>,  <30.311743, 32.228504, 36.304379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252302, 31.512636, 36.537212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570326, 31.555372, 36.298393>,  <30.761141, 31.581013, 36.155102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570326, 31.555372, 36.298393>,  <30.252302, 31.512636, 36.537212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570326, 31.555372, 36.298393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593246, -0.341882, 0.728818,
		-0.126253, -0.933650, -0.335199,
		0.795059, 0.106840, -0.597048,
		30.808844, 31.587423, 36.119278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681816, 30.895660, 36.642216>,  <30.252302, 31.512636, 36.537212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681816, 30.895660, 36.642216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921085, 31.203913, 36.554291>,  <31.064646, 31.388865, 36.501537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921085, 31.203913, 36.554291>,  <30.681816, 30.895660, 36.642216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921085, 31.203913, 36.554291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682149, -0.345705, 0.644330,
		0.420551, -0.535364, -0.732477,
		0.598172, 0.770632, -0.219812,
		31.100536, 31.435102, 36.488346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353573, 30.642632, 36.305882>,  <30.681816, 30.895660, 36.642216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353573, 30.642632, 36.305882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358019, 30.985531, 36.511795>,  <31.360687, 31.191271, 36.635342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358019, 30.985531, 36.511795>,  <31.353573, 30.642632, 36.305882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358019, 30.985531, 36.511795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782986, -0.327665, 0.528743,
		0.621940, 0.397188, -0.674857,
		0.011117, 0.857249, 0.514781,
		31.361355, 31.242706, 36.666229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999594, 30.744389, 36.306839>,  <31.353573, 30.642632, 36.305882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999594, 30.744389, 36.306839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854002, 30.925867, 36.632214>,  <31.766647, 31.034754, 36.827438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854002, 30.925867, 36.632214>,  <31.999594, 30.744389, 36.306839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854002, 30.925867, 36.632214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685169, -0.461163, 0.563801,
		0.630922, 0.762553, -0.143006,
		-0.363979, 0.453698, 0.813436,
		31.744808, 31.061975, 36.876244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516045, 31.082268, 36.733040>,  <31.999594, 30.744389, 36.306839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516045, 31.082268, 36.733040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226788, 30.994320, 36.994949>,  <32.053234, 30.941551, 37.152096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226788, 30.994320, 36.994949>,  <32.516045, 31.082268, 36.733040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226788, 30.994320, 36.994949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668263, -0.462380, 0.582777,
		0.174617, 0.858989, 0.481298,
		-0.723141, -0.219871, 0.654770,
		32.009846, 30.928358, 37.191380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840992, 31.276033, 37.418941>,  <32.516045, 31.082268, 36.733040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840992, 31.276033, 37.418941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586899, 30.967226, 37.427551>,  <32.434441, 30.781942, 37.432716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586899, 30.967226, 37.427551>,  <32.840992, 31.276033, 37.418941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586899, 30.967226, 37.427551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665595, -0.533110, 0.522281,
		-0.391737, 0.346096, 0.852502,
		-0.635237, -0.772018, 0.021521,
		32.396328, 30.735620, 37.434006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584465, 30.941208, 38.187847>,  <32.840992, 31.276033, 37.418941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584465, 30.941208, 38.187847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594414, 30.655617, 37.907959>,  <32.600384, 30.484262, 37.740025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594414, 30.655617, 37.907959>,  <32.584465, 30.941208, 38.187847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594414, 30.655617, 37.907959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674553, -0.504596, 0.538852,
		-0.737807, -0.485404, 0.469067,
		0.024872, -0.713979, -0.699725,
		32.601875, 30.441423, 37.698040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442715, 30.219519, 38.509747>,  <32.584465, 30.941208, 38.187847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442715, 30.219519, 38.509747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676487, 30.254772, 38.187092>,  <32.816750, 30.275925, 37.993500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676487, 30.254772, 38.187092>,  <32.442715, 30.219519, 38.509747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676487, 30.254772, 38.187092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757435, -0.415854, 0.503347,
		-0.291083, -0.905151, -0.309794,
		0.584434, 0.088133, -0.806641,
		32.851818, 30.281212, 37.945099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685276, 29.712608, 38.072521>,  <32.442715, 30.219519, 38.509747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685276, 29.712608, 38.072521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778996, 30.081776, 38.194721>,  <32.835228, 30.303276, 38.268040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778996, 30.081776, 38.194721>,  <32.685276, 29.712608, 38.072521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778996, 30.081776, 38.194721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405979, 0.378418, -0.831854,
		-0.883337, 0.070877, 0.463348,
		0.234299, 0.922917, 0.305496,
		32.849285, 30.358650, 38.286369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668262, 28.956352, 37.933281>,  <32.685276, 29.712608, 38.072521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668262, 28.956352, 37.933281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272606, 28.897612, 37.931072>,  <32.035210, 28.862368, 37.929745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272606, 28.897612, 37.931072>,  <32.668262, 28.956352, 37.933281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272606, 28.897612, 37.931072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107542, 0.697726, 0.708247,
		-0.100150, 0.701152, -0.705944,
		-0.989144, -0.146849, -0.005526,
		31.975863, 28.853558, 37.929413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977610, 29.247084, 38.241074>,  <32.668262, 28.956352, 37.933281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977610, 29.247084, 38.241074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926102, 28.985159, 38.538971>,  <31.895197, 28.828005, 38.717709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926102, 28.985159, 38.538971>,  <31.977610, 29.247084, 38.241074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926102, 28.985159, 38.538971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818043, -0.494651, -0.293472,
		0.560557, 0.571441, 0.599359,
		-0.128772, -0.654810, 0.744743,
		31.887470, 28.788715, 38.762394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591919, 29.098106, 38.717381>,  <31.977610, 29.247084, 38.241074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591919, 29.098106, 38.717381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399502, 28.757837, 38.802189>,  <32.284050, 28.553677, 38.853073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399502, 28.757837, 38.802189>,  <32.591919, 29.098106, 38.717381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399502, 28.757837, 38.802189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815285, -0.522990, -0.248580,
		0.322347, 0.053284, 0.945121,
		-0.481043, -0.850672, 0.212026,
		32.255188, 28.502636, 38.865795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694729, 28.446424, 38.454346>,  <32.591919, 29.098106, 38.717381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694729, 28.446424, 38.454346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987152, 28.701044, 38.552620>,  <33.162605, 28.853815, 38.611584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987152, 28.701044, 38.552620>,  <32.694729, 28.446424, 38.454346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987152, 28.701044, 38.552620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610222, 0.448873, 0.652796,
		0.305253, -0.627155, 0.716587,
		0.731060, 0.636545, 0.245684,
		33.206470, 28.892008, 38.626324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399227, 28.246941, 38.646671>,  <32.694729, 28.446424, 38.454346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399227, 28.246941, 38.646671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615711, 27.915249, 38.590855>,  <33.745602, 27.716234, 38.557365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615711, 27.915249, 38.590855>,  <33.399227, 28.246941, 38.646671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615711, 27.915249, 38.590855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837801, 0.545952, 0.005038,
		0.072008, -0.119638, 0.990203,
		0.541206, -0.829230, -0.139546,
		33.778072, 27.666479, 38.548992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849575, 28.259970, 39.203770>,  <33.399227, 28.246941, 38.646671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849575, 28.259970, 39.203770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973225, 28.066565, 38.876194>,  <34.047413, 27.950521, 38.679649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973225, 28.066565, 38.876194>,  <33.849575, 28.259970, 39.203770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973225, 28.066565, 38.876194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829843, 0.557766, -0.016078,
		0.464549, -0.674619, 0.573657,
		0.309120, -0.483514, -0.818938,
		34.065960, 27.921511, 38.630512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577602, 28.110596, 39.363831>,  <33.849575, 28.259970, 39.203770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577602, 28.110596, 39.363831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506023, 28.069386, 38.972450>,  <34.463078, 28.044661, 38.737621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506023, 28.069386, 38.972450>,  <34.577602, 28.110596, 39.363831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506023, 28.069386, 38.972450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961301, 0.193425, -0.196179,
		0.209468, -0.975691, 0.064425,
		-0.178949, -0.103025, -0.978449,
		34.452339, 28.038479, 38.678917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035564, 27.590622, 39.058891>,  <34.577602, 28.110596, 39.363831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035564, 27.590622, 39.058891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895039, 27.853182, 38.791843>,  <34.810722, 28.010717, 38.631615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895039, 27.853182, 38.791843>,  <35.035564, 27.590622, 39.058891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895039, 27.853182, 38.791843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934669, 0.287402, -0.209270,
		0.054510, -0.697523, -0.714486,
		-0.351315, 0.656401, -0.667619,
		34.789642, 28.050102, 38.591557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432598, 27.769367, 38.305077>,  <35.035564, 27.590622, 39.058891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432598, 27.769367, 38.305077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249470, 28.102762, 38.428818>,  <35.139591, 28.302799, 38.503063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249470, 28.102762, 38.428818>,  <35.432598, 27.769367, 38.305077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249470, 28.102762, 38.428818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824698, 0.528114, -0.202407,
		-0.332076, 0.162455, -0.929157,
		-0.457820, 0.833489, 0.309351,
		35.112125, 28.352808, 38.521622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681137, 28.287340, 37.868458>,  <35.432598, 27.769367, 38.305077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681137, 28.287340, 37.868458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569275, 28.421461, 38.228317>,  <35.502159, 28.501934, 38.444233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569275, 28.421461, 38.228317>,  <35.681137, 28.287340, 37.868458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569275, 28.421461, 38.228317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850888, 0.520599, 0.070464,
		-0.444729, 0.785205, -0.430893,
		-0.279652, 0.335305, 0.899647,
		35.485378, 28.522053, 38.498211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513977, 28.969311, 38.013458>,  <35.681137, 28.287340, 37.868458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513977, 28.969311, 38.013458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697037, 28.801517, 38.327042>,  <35.806873, 28.700842, 38.515190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697037, 28.801517, 38.327042>,  <35.513977, 28.969311, 38.013458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697037, 28.801517, 38.327042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852505, 0.457484, -0.252871,
		-0.252573, 0.784054, 0.566980,
		0.457649, -0.419485, 0.783957,
		35.834332, 28.675673, 38.562229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895512, 29.574051, 38.429520>,  <35.513977, 28.969311, 38.013458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895512, 29.574051, 38.429520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076656, 29.221277, 38.481834>,  <36.185345, 29.009613, 38.513226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076656, 29.221277, 38.481834>,  <35.895512, 29.574051, 38.429520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076656, 29.221277, 38.481834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887418, 0.431715, -0.161591,
		0.086049, 0.189244, 0.978153,
		0.452863, -0.881935, 0.130790,
		36.212517, 28.956697, 38.521072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439117, 29.682997, 38.861801>,  <35.895512, 29.574051, 38.429520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439117, 29.682997, 38.861801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504189, 29.351715, 38.647282>,  <36.543232, 29.152946, 38.518570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504189, 29.351715, 38.647282>,  <36.439117, 29.682997, 38.861801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504189, 29.351715, 38.647282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942928, 0.290555, -0.162679,
		0.290556, -0.479225, 0.828203,
		0.162679, -0.828203, -0.536298,
		36.552994, 29.103254, 38.486393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039967, 29.300144, 39.012016>,  <36.439117, 29.682997, 38.861801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039967, 29.300144, 39.012016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947937, 29.257717, 38.625065>,  <36.892719, 29.232262, 38.392895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947937, 29.257717, 38.625065>,  <37.039967, 29.300144, 39.012016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947937, 29.257717, 38.625065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860146, 0.442806, -0.253123,
		0.455208, -0.890321, -0.010645,
		-0.230075, -0.106067, -0.967376,
		36.878914, 29.225897, 38.334854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700771, 29.294420, 38.744736>,  <37.039967, 29.300144, 39.012016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700771, 29.294420, 38.744736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467136, 29.383074, 38.432396>,  <37.326954, 29.436266, 38.244991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467136, 29.383074, 38.432396>,  <37.700771, 29.294420, 38.744736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467136, 29.383074, 38.432396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764543, 0.473315, -0.437547,
		0.272611, -0.852556, -0.445906,
		-0.584087, 0.221634, -0.780846,
		37.291912, 29.449564, 38.198143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952538, 28.987892, 38.136108>,  <37.700771, 29.294420, 38.744736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952538, 28.987892, 38.136108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744003, 29.323664, 38.074703>,  <37.618881, 29.525127, 38.037861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744003, 29.323664, 38.074703>,  <37.952538, 28.987892, 38.136108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744003, 29.323664, 38.074703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842525, 0.477764, -0.248783,
		-0.135493, -0.259039, -0.956316,
		-0.521338, 0.839429, -0.153513,
		37.587601, 29.575493, 38.028648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097099, 29.253569, 37.501125>,  <37.952538, 28.987892, 38.136108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097099, 29.253569, 37.501125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999809, 29.583633, 37.705067>,  <37.941433, 29.781673, 37.827431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999809, 29.583633, 37.705067>,  <38.097099, 29.253569, 37.501125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999809, 29.583633, 37.705067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909226, 0.377048, -0.176474,
		-0.337857, 0.420644, -0.841969,
		-0.243229, 0.825163, 0.509849,
		37.926842, 29.831182, 37.858021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297173, 29.827057, 37.103363>,  <38.097099, 29.253569, 37.501125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297173, 29.827057, 37.103363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275566, 29.920042, 37.491806>,  <38.262600, 29.975834, 37.724873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275566, 29.920042, 37.491806>,  <38.297173, 29.827057, 37.103363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275566, 29.920042, 37.491806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911116, 0.409423, -0.047325,
		-0.408593, 0.882232, -0.233919,
		-0.054020, 0.232464, 0.971104,
		38.259361, 29.989780, 37.783138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566498, 30.499166, 37.191616>,  <38.297173, 29.827057, 37.103363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566498, 30.499166, 37.191616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609943, 30.331860, 37.552338>,  <38.636009, 30.231476, 37.768772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609943, 30.331860, 37.552338>,  <38.566498, 30.499166, 37.191616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609943, 30.331860, 37.552338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936563, 0.347165, 0.048223,
		-0.333246, 0.839362, 0.429440,
		0.108610, -0.418268, 0.901807,
		38.642525, 30.206379, 37.822880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104103, 30.018255, 37.415298>,  <38.566498, 30.499166, 37.191616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104103, 30.018255, 37.415298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443092, 29.845079, 37.538162>,  <39.646488, 29.741175, 37.611881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443092, 29.845079, 37.538162>,  <39.104103, 30.018255, 37.415298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443092, 29.845079, 37.538162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395762, 0.129671, -0.909153,
		0.353777, 0.892048, 0.281233,
		0.847475, -0.432938, 0.307164,
		39.697334, 29.715199, 37.630310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556461, 30.431063, 37.062786>,  <39.104103, 30.018255, 37.415298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556461, 30.431063, 37.062786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758923, 30.102850, 37.169022>,  <39.880402, 29.905922, 37.232761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758923, 30.102850, 37.169022>,  <39.556461, 30.431063, 37.062786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758923, 30.102850, 37.169022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377721, -0.065934, -0.923569,
		0.775328, 0.567787, 0.276559,
		0.506156, -0.820531, 0.265586,
		39.910770, 29.856691, 37.248695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049442, 30.611305, 36.762001>,  <39.556461, 30.431063, 37.062786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049442, 30.611305, 36.762001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090923, 30.220480, 36.836395>,  <40.115810, 29.985985, 36.881031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090923, 30.220480, 36.836395>,  <40.049442, 30.611305, 36.762001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090923, 30.220480, 36.836395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383484, -0.133253, -0.913884,
		0.917707, 0.166094, 0.360870,
		0.103704, -0.977065, 0.185981,
		40.122036, 29.927361, 36.892189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767994, 30.471012, 36.606483>,  <40.049442, 30.611305, 36.762001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767994, 30.471012, 36.606483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516502, 30.163729, 36.558228>,  <40.365608, 29.979359, 36.529274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516502, 30.163729, 36.558228>,  <40.767994, 30.471012, 36.606483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516502, 30.163729, 36.558228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485547, -0.266641, -0.832554,
		0.607406, -0.582031, 0.540647,
		-0.628731, -0.768208, -0.120644,
		40.327885, 29.933266, 36.522034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061619, 30.430323, 35.939228>,  <40.767994, 30.471012, 36.606483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061619, 30.430323, 35.939228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110264, 30.034536, 35.907818>,  <41.139450, 29.797064, 35.888969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110264, 30.034536, 35.907818>,  <41.061619, 30.430323, 35.939228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110264, 30.034536, 35.907818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721252, -0.033740, -0.691851,
		0.681913, 0.140779, -0.717758,
		0.121615, -0.989466, -0.078529,
		41.146748, 29.737696, 35.884258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612083, 30.034756, 35.407574>,  <41.061619, 30.430323, 35.939228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612083, 30.034756, 35.407574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236408, 29.899925, 35.433830>,  <41.011005, 29.819027, 35.449585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236408, 29.899925, 35.433830>,  <41.612083, 30.034756, 35.407574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236408, 29.899925, 35.433830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075002, 0.014802, -0.997074,
		0.335118, -0.941361, -0.039184,
		-0.939186, -0.337077, 0.065643,
		40.954651, 29.798803, 35.453522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584942, 29.521564, 34.852444>,  <41.612083, 30.034756, 35.407574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584942, 29.521564, 34.852444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230713, 29.674244, 34.958328>,  <41.018177, 29.765852, 35.021858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230713, 29.674244, 34.958328>,  <41.584942, 29.521564, 34.852444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230713, 29.674244, 34.958328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187050, 0.228601, -0.955381,
		-0.425180, -0.895572, -0.131046,
		-0.885570, 0.381697, 0.264713,
		40.965042, 29.788754, 35.037743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921104, 29.157690, 34.469238>,  <41.584942, 29.521564, 34.852444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921104, 29.157690, 34.469238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855721, 29.532923, 34.591408>,  <40.816490, 29.758062, 34.664711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855721, 29.532923, 34.591408>,  <40.921104, 29.157690, 34.469238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855721, 29.532923, 34.591408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369598, 0.228814, -0.900578,
		-0.914701, -0.260096, 0.309310,
		-0.163462, 0.938080, 0.305428,
		40.806683, 29.814346, 34.683037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248291, 29.346617, 34.383900>,  <40.921104, 29.157690, 34.469238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248291, 29.346617, 34.383900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477707, 29.671492, 34.341183>,  <40.615356, 29.866417, 34.315552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477707, 29.671492, 34.341183>,  <40.248291, 29.346617, 34.383900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477707, 29.671492, 34.341183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353358, 0.127674, -0.926735,
		-0.739045, 0.569258, 0.360219,
		0.573542, 0.812185, -0.106795,
		40.649769, 29.915148, 34.309143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828167, 30.044548, 34.282112>,  <40.248291, 29.346617, 34.383900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828167, 30.044548, 34.282112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171684, 29.982304, 34.086864>,  <40.377796, 29.944956, 33.969715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171684, 29.982304, 34.086864>,  <39.828167, 30.044548, 34.282112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171684, 29.982304, 34.086864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474640, 0.116978, -0.872372,
		0.192851, 0.980867, 0.026600,
		0.858793, -0.155612, -0.488118,
		40.429321, 29.935619, 33.940430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023674, 30.494171, 33.601036>,  <39.828167, 30.044548, 34.282112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023674, 30.494171, 33.601036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186798, 30.128975, 33.596310>,  <40.284672, 29.909857, 33.593475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186798, 30.128975, 33.596310>,  <40.023674, 30.494171, 33.601036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186798, 30.128975, 33.596310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260960, -0.104147, -0.959715,
		0.874982, 0.394461, -0.280727,
		0.407807, -0.912992, -0.011812,
		40.309139, 29.855078, 33.592766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678371, 30.293404, 33.175198>,  <40.023674, 30.494171, 33.601036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678371, 30.293404, 33.175198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462215, 29.957935, 33.202354>,  <40.332520, 29.756655, 33.218647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462215, 29.957935, 33.202354>,  <40.678371, 30.293404, 33.175198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462215, 29.957935, 33.202354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128152, 0.002295, -0.991752,
		0.831596, -0.544636, -0.108718,
		-0.540393, -0.838670, 0.067888,
		40.300098, 29.706335, 33.222721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869812, 29.700737, 32.678169>,  <40.678371, 30.293404, 33.175198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869812, 29.700737, 32.678169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486046, 29.641779, 32.774338>,  <40.255787, 29.606403, 32.832039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486046, 29.641779, 32.774338>,  <40.869812, 29.700737, 32.678169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486046, 29.641779, 32.774338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218724, -0.149232, -0.964308,
		0.178014, -0.977755, 0.110936,
		-0.959412, -0.147396, 0.240423,
		40.198223, 29.597561, 32.846466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710632, 29.130655, 32.388191>,  <40.869812, 29.700737, 32.678169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710632, 29.130655, 32.388191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361961, 29.323282, 32.424553>,  <40.152760, 29.438858, 32.446369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361961, 29.323282, 32.424553>,  <40.710632, 29.130655, 32.388191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361961, 29.323282, 32.424553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212707, -0.204660, -0.955442,
		-0.441507, -0.852177, 0.280831,
		-0.871681, 0.481569, 0.090905,
		40.100456, 29.467752, 32.451824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195015, 28.742016, 32.058670>,  <40.710632, 29.130655, 32.388191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195015, 28.742016, 32.058670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014954, 29.098785, 32.075779>,  <39.906918, 29.312847, 32.086044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014954, 29.098785, 32.075779>,  <40.195015, 28.742016, 32.058670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014954, 29.098785, 32.075779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374412, -0.145049, -0.915847,
		-0.810663, -0.428289, 0.399242,
		-0.450157, 0.891925, 0.042771,
		39.879906, 29.366364, 32.088612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394615, 28.734282, 31.875345>,  <40.195015, 28.742016, 32.058670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394615, 28.734282, 31.875345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544670, 29.097952, 31.803045>,  <39.634705, 29.316154, 31.759665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544670, 29.097952, 31.803045>,  <39.394615, 28.734282, 31.875345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544670, 29.097952, 31.803045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315948, -0.057909, -0.947007,
		-0.871463, 0.412366, 0.265528,
		0.375137, 0.909176, -0.180752,
		39.657211, 29.370705, 31.748819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839161, 29.064531, 31.558367>,  <39.394615, 28.734282, 31.875345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839161, 29.064531, 31.558367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175831, 29.241167, 31.434053>,  <39.377831, 29.347149, 31.359467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175831, 29.241167, 31.434053>,  <38.839161, 29.064531, 31.558367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175831, 29.241167, 31.434053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405672, 0.137240, -0.903656,
		-0.356394, 0.886658, 0.294653,
		0.841673, 0.441591, -0.310781,
		39.428333, 29.373644, 31.340818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606453, 29.789267, 31.355865>,  <38.839161, 29.064531, 31.558367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606453, 29.789267, 31.355865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900242, 29.621567, 31.142406>,  <39.076515, 29.520947, 31.014332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900242, 29.621567, 31.142406>,  <38.606453, 29.789267, 31.355865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900242, 29.621567, 31.142406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529739, 0.137312, -0.836972,
		0.424177, 0.897427, -0.121241,
		0.734473, -0.419250, -0.533647,
		39.120583, 29.495792, 30.982313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606922, 30.174816, 30.849895>,  <38.606453, 29.789267, 31.355865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606922, 30.174816, 30.849895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771713, 29.840391, 30.704969>,  <38.870590, 29.639736, 30.618013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771713, 29.840391, 30.704969>,  <38.606922, 30.174816, 30.849895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771713, 29.840391, 30.704969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444972, 0.162392, -0.880698,
		0.795155, 0.524051, -0.305121,
		0.411982, -0.836062, -0.362315,
		38.895309, 29.589573, 30.596275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454258, 30.178474, 30.174187>,  <38.606922, 30.174816, 30.849895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454258, 30.178474, 30.174187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647129, 29.828413, 30.190229>,  <38.762852, 29.618376, 30.199854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647129, 29.828413, 30.190229>,  <38.454258, 30.178474, 30.174187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647129, 29.828413, 30.190229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273827, -0.194037, -0.942002,
		0.832181, 0.443229, -0.333201,
		0.482177, -0.875156, 0.040106,
		38.791782, 29.565866, 30.202261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742054, 30.175213, 29.532532>,  <38.454258, 30.178474, 30.174187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742054, 30.175213, 29.532532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690121, 29.803818, 29.671700>,  <38.658958, 29.580980, 29.755201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690121, 29.803818, 29.671700>,  <38.742054, 30.175213, 29.532532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690121, 29.803818, 29.671700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460907, -0.254162, -0.850274,
		0.877899, -0.270755, -0.394948,
		-0.129835, -0.928490, 0.347922,
		38.651169, 29.525270, 29.776075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344158, 30.305561, 29.752438>,  <38.742054, 30.175213, 29.532532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344158, 30.305561, 29.752438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253601, 30.088667, 29.428778>,  <39.199268, 29.958530, 29.234581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253601, 30.088667, 29.428778>,  <39.344158, 30.305561, 29.752438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253601, 30.088667, 29.428778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497867, 0.778421, -0.382348,
		0.837184, 0.316291, -0.446186,
		-0.226387, -0.542237, -0.809153,
		39.185684, 29.925995, 29.186031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505020, 30.653791, 29.170183>,  <39.344158, 30.305561, 29.752438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505020, 30.653791, 29.170183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231308, 30.395502, 29.034655>,  <39.067081, 30.240528, 28.953337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231308, 30.395502, 29.034655>,  <39.505020, 30.653791, 29.170183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231308, 30.395502, 29.034655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371996, 0.708736, -0.599426,
		0.627200, -0.284135, -0.725181,
		-0.684280, -0.645725, -0.338822,
		39.026024, 30.201784, 28.933008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476562, 30.841930, 28.558105>,  <39.505020, 30.653791, 29.170183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476562, 30.841930, 28.558105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138302, 30.633133, 28.602644>,  <38.935345, 30.507854, 28.629368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138302, 30.633133, 28.602644>,  <39.476562, 30.841930, 28.558105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138302, 30.633133, 28.602644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503718, 0.711555, -0.489855,
		0.176470, -0.470335, -0.864664,
		-0.845651, -0.521991, 0.111348,
		38.884605, 30.476536, 28.636049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069363, 30.969368, 27.983629>,  <39.476562, 30.841930, 28.558105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069363, 30.969368, 27.983629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782341, 30.823154, 28.220781>,  <38.610130, 30.735426, 28.363071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782341, 30.823154, 28.220781>,  <39.069363, 30.969368, 27.983629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782341, 30.823154, 28.220781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660839, 0.626195, -0.413728,
		-0.220027, -0.688669, -0.690886,
		-0.717551, -0.365534, 0.592879,
		38.567074, 30.713493, 28.398645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528004, 30.867033, 27.534279>,  <39.069363, 30.969368, 27.983629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528004, 30.867033, 27.534279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358871, 30.873091, 27.896711>,  <38.257393, 30.876726, 28.114170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358871, 30.873091, 27.896711>,  <38.528004, 30.867033, 27.534279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358871, 30.873091, 27.896711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766585, 0.527246, -0.366550,
		-0.483278, -0.849578, -0.211328,
		-0.422835, 0.015145, 0.906081,
		38.232021, 30.877634, 28.168535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872082, 30.588442, 27.466314>,  <38.528004, 30.867033, 27.534279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872082, 30.588442, 27.466314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861595, 30.833820, 27.782034>,  <37.855305, 30.981049, 27.971466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861595, 30.833820, 27.782034>,  <37.872082, 30.588442, 27.466314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861595, 30.833820, 27.782034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788170, 0.472991, -0.393786,
		-0.614899, -0.632424, 0.471103,
		-0.026212, 0.613448, 0.789300,
		37.853733, 31.017855, 28.018824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334446, 30.486435, 27.792486>,  <37.872082, 30.588442, 27.466314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334446, 30.486435, 27.792486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415989, 30.846596, 27.946222>,  <37.464912, 31.062693, 28.038464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415989, 30.846596, 27.946222>,  <37.334446, 30.486435, 27.792486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415989, 30.846596, 27.946222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834678, 0.365010, -0.412409,
		-0.511622, -0.236728, 0.825956,
		0.203854, 0.900404, 0.384339,
		37.477146, 31.116716, 28.061523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655617, 30.817369, 27.916632>,  <37.334446, 30.486435, 27.792486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655617, 30.817369, 27.916632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909237, 31.126589, 27.908947>,  <37.061409, 31.312120, 27.904335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909237, 31.126589, 27.908947>,  <36.655617, 30.817369, 27.916632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909237, 31.126589, 27.908947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713832, 0.575568, -0.398956,
		-0.297354, 0.266675, 0.916769,
		0.634054, 0.773050, -0.019213,
		37.099453, 31.358503, 27.903183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395592, 31.348673, 28.321085>,  <36.655617, 30.817369, 27.916632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395592, 31.348673, 28.321085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637817, 31.540634, 28.067160>,  <36.783154, 31.655811, 27.914804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637817, 31.540634, 28.067160>,  <36.395592, 31.348673, 28.321085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637817, 31.540634, 28.067160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773229, 0.543460, -0.326754,
		0.188185, 0.688725, 0.700174,
		0.605560, 0.479905, -0.634813,
		36.819485, 31.684605, 27.876715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264675, 32.060112, 28.395178>,  <36.395592, 31.348673, 28.321085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264675, 32.060112, 28.395178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430870, 32.006489, 28.035313>,  <36.530586, 31.974316, 27.819393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430870, 32.006489, 28.035313>,  <36.264675, 32.060112, 28.395178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430870, 32.006489, 28.035313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767346, 0.479433, -0.425822,
		0.488413, 0.867279, 0.096332,
		0.415491, -0.134057, -0.899664,
		36.555519, 31.966272, 27.765413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947975, 32.604061, 27.995668>,  <36.264675, 32.060112, 28.395178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947975, 32.604061, 27.995668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114876, 32.396748, 27.697063>,  <36.215015, 32.272362, 27.517900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114876, 32.396748, 27.697063>,  <35.947975, 32.604061, 27.995668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114876, 32.396748, 27.697063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726439, 0.303365, -0.616649,
		0.546064, 0.799597, -0.249918,
		0.417255, -0.518280, -0.746515,
		36.240051, 32.241264, 27.473108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005421, 33.114456, 27.521990>,  <35.947975, 32.604061, 27.995668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005421, 33.114456, 27.521990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054508, 32.776112, 27.314350>,  <36.083961, 32.573105, 27.189766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054508, 32.776112, 27.314350>,  <36.005421, 33.114456, 27.521990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054508, 32.776112, 27.314350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684188, 0.306786, -0.661642,
		0.718908, 0.436354, -0.541079,
		0.122714, -0.845859, -0.519099,
		36.091324, 32.522354, 27.158621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321156, 33.341381, 26.825724>,  <36.005421, 33.114456, 27.521990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321156, 33.341381, 26.825724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155918, 32.978821, 26.790407>,  <36.056774, 32.761284, 26.769217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155918, 32.978821, 26.790407>,  <36.321156, 33.341381, 26.825724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155918, 32.978821, 26.790407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492820, 0.304023, -0.815290,
		0.765819, -0.293282, -0.572281,
		-0.413097, -0.906397, -0.088291,
		36.031990, 32.706902, 26.763920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123341, 33.343418, 26.199669>,  <36.321156, 33.341381, 26.825724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123341, 33.343418, 26.199669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924435, 33.015209, 26.312437>,  <35.805092, 32.818283, 26.380098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924435, 33.015209, 26.312437>,  <36.123341, 33.343418, 26.199669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924435, 33.015209, 26.312437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581983, 0.074471, -0.809784,
		0.643448, -0.566749, -0.514559,
		-0.497264, -0.820518, 0.281920,
		35.775257, 32.769054, 26.397013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282795, 32.746429, 25.683327>,  <36.123341, 33.343418, 26.199669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282795, 32.746429, 25.683327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925457, 32.720634, 25.861216>,  <35.711056, 32.705158, 25.967949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925457, 32.720634, 25.861216>,  <36.282795, 32.746429, 25.683327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925457, 32.720634, 25.861216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448724, 0.181191, -0.875109,
		-0.024150, -0.981332, -0.190801,
		-0.893344, -0.064483, 0.444723,
		35.657455, 32.701290, 25.994633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875294, 32.354275, 25.237633>,  <36.282795, 32.746429, 25.683327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875294, 32.354275, 25.237633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637680, 32.570930, 25.475540>,  <35.495113, 32.700924, 25.618286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637680, 32.570930, 25.475540>,  <35.875294, 32.354275, 25.237633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637680, 32.570930, 25.475540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528548, 0.294577, -0.796154,
		-0.606433, -0.787307, 0.111292,
		-0.594034, 0.541637, 0.594771,
		35.459469, 32.733421, 25.653971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215054, 32.206696, 24.894859>,  <35.875294, 32.354275, 25.237633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215054, 32.206696, 24.894859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155338, 32.519238, 25.137249>,  <35.119511, 32.706760, 25.282682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155338, 32.519238, 25.137249>,  <35.215054, 32.206696, 24.894859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155338, 32.519238, 25.137249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533579, 0.452295, -0.714649,
		-0.832470, -0.430022, 0.349391,
		-0.149287, 0.781352, 0.605973,
		35.110554, 32.753643, 25.319040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452953, 32.314659, 24.948959>,  <35.215054, 32.206696, 24.894859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452953, 32.314659, 24.948959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594810, 32.674622, 25.050465>,  <34.679924, 32.890598, 25.111368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594810, 32.674622, 25.050465>,  <34.452953, 32.314659, 24.948959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594810, 32.674622, 25.050465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720899, 0.436011, -0.538702,
		-0.595425, 0.008110, 0.803370,
		0.354647, 0.899905, 0.253765,
		34.701206, 32.944592, 25.126595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897831, 32.734623, 24.992413>,  <34.452953, 32.314659, 24.948959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897831, 32.734623, 24.992413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194462, 33.000252, 24.954330>,  <34.372440, 33.159630, 24.931480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194462, 33.000252, 24.954330>,  <33.897831, 32.734623, 24.992413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194462, 33.000252, 24.954330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631983, 0.643920, -0.431235,
		-0.225068, 0.379963, 0.897202,
		0.741580, 0.664074, -0.095205,
		34.416935, 33.199474, 24.925770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574978, 33.426754, 25.110355>,  <33.897831, 32.734623, 24.992413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574978, 33.426754, 25.110355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916813, 33.485878, 24.911224>,  <34.121914, 33.521351, 24.791746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916813, 33.485878, 24.911224>,  <33.574978, 33.426754, 25.110355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916813, 33.485878, 24.911224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500914, 0.487491, -0.715149,
		0.136983, 0.860527, 0.490642,
		0.854588, 0.147806, -0.497828,
		34.173191, 33.530220, 24.761875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568592, 34.234768, 24.889715>,  <33.574978, 33.426754, 25.110355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568592, 34.234768, 24.889715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837105, 34.085793, 24.633383>,  <33.998215, 33.996407, 24.479584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837105, 34.085793, 24.633383>,  <33.568592, 34.234768, 24.889715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837105, 34.085793, 24.633383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412318, 0.530822, -0.740420,
		0.615929, 0.761259, 0.202769,
		0.671286, -0.372441, -0.640830,
		34.038490, 33.974060, 24.441133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588917, 34.679031, 24.323530>,  <33.568592, 34.234768, 24.889715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588917, 34.679031, 24.323530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754639, 34.354542, 24.158476>,  <33.854073, 34.159847, 24.059443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754639, 34.354542, 24.158476>,  <33.588917, 34.679031, 24.323530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754639, 34.354542, 24.158476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271089, 0.322811, -0.906810,
		0.868830, 0.487553, -0.086173,
		0.414300, -0.811224, -0.412638,
		33.878929, 34.111176, 24.034685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847099, 34.901836, 23.682913>,  <33.588917, 34.679031, 24.323530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847099, 34.901836, 23.682913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822212, 34.503960, 23.650137>,  <33.807278, 34.265232, 23.630470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822212, 34.503960, 23.650137>,  <33.847099, 34.901836, 23.682913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822212, 34.503960, 23.650137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535947, 0.102558, -0.837999,
		0.841956, -0.008226, -0.539484,
		-0.062222, -0.994693, -0.081941,
		33.803547, 34.205551, 23.625555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047413, 34.782955, 22.933388>,  <33.847099, 34.901836, 23.682913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047413, 34.782955, 22.933388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823605, 34.481705, 23.071802>,  <33.689320, 34.300957, 23.154852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823605, 34.481705, 23.071802>,  <34.047413, 34.782955, 22.933388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823605, 34.481705, 23.071802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536389, 0.010753, -0.843902,
		0.631842, -0.657791, -0.409984,
		-0.559520, -0.753124, 0.346038,
		33.655750, 34.255768, 23.175613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103695, 34.321545, 22.446165>,  <34.047413, 34.782955, 22.933388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103695, 34.321545, 22.446165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774086, 34.197365, 22.635735>,  <33.576321, 34.122856, 22.749477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774086, 34.197365, 22.635735>,  <34.103695, 34.321545, 22.446165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774086, 34.197365, 22.635735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523954, 0.099341, -0.845934,
		0.215542, -0.945384, -0.244522,
		-0.824023, -0.310452, 0.473925,
		33.526878, 34.104229, 22.777912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799339, 33.722771, 22.075672>,  <34.103695, 34.321545, 22.446165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799339, 33.722771, 22.075672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500156, 33.881321, 22.288631>,  <33.320644, 33.976452, 22.416407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500156, 33.881321, 22.288631>,  <33.799339, 33.722771, 22.075672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500156, 33.881321, 22.288631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578988, 0.002577, -0.815332,
		-0.324548, -0.918086, 0.227568,
		-0.747959, 0.396373, 0.532397,
		33.275768, 34.000233, 22.448351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255199, 33.352425, 21.921156>,  <33.799339, 33.722771, 22.075672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255199, 33.352425, 21.921156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109955, 33.705841, 22.039476>,  <33.022808, 33.917892, 22.110468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109955, 33.705841, 22.039476>,  <33.255199, 33.352425, 21.921156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109955, 33.705841, 22.039476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515561, 0.073912, -0.853659,
		-0.776109, -0.462478, 0.428683,
		-0.363114, 0.883544, 0.295800,
		33.001022, 33.970905, 22.128216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583107, 33.326248, 21.679131>,  <33.255199, 33.352425, 21.921156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583107, 33.326248, 21.679131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632141, 33.715687, 21.756163>,  <32.661564, 33.949348, 21.802382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632141, 33.715687, 21.756163>,  <32.583107, 33.326248, 21.679131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632141, 33.715687, 21.756163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544617, 0.228207, -0.807040,
		-0.829678, -0.005949, 0.558211,
		0.122587, 0.973594, 0.192578,
		32.668919, 34.007767, 21.813936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947920, 33.740387, 21.939613>,  <32.583107, 33.326248, 21.679131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947920, 33.740387, 21.939613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197453, 33.974152, 21.732038>,  <32.347172, 34.114410, 21.607494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197453, 33.974152, 21.732038>,  <31.947920, 33.740387, 21.939613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197453, 33.974152, 21.732038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744785, 0.243257, -0.621387,
		-0.236912, 0.774136, 0.587014,
		0.623833, 0.584413, -0.518935,
		32.384602, 34.149475, 21.576359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718924, 34.490269, 21.950285>,  <31.947920, 33.740387, 21.939613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718924, 34.490269, 21.950285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933201, 34.415604, 21.620874>,  <32.061768, 34.370804, 21.423229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933201, 34.415604, 21.620874>,  <31.718924, 34.490269, 21.950285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933201, 34.415604, 21.620874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747392, 0.349074, -0.565290,
		0.392987, 0.918317, 0.047489,
		0.535692, -0.186659, -0.823524,
		32.093910, 34.359608, 21.373817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439156, 34.934898, 21.523296>,  <31.718924, 34.490269, 21.950285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439156, 34.934898, 21.523296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654556, 34.722092, 21.261923>,  <31.783796, 34.594410, 21.105099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654556, 34.722092, 21.261923>,  <31.439156, 34.934898, 21.523296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654556, 34.722092, 21.261923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654882, 0.223731, -0.721855,
		0.530230, 0.816643, -0.227927,
		0.538503, -0.532013, -0.653434,
		31.816107, 34.562489, 21.065893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678442, 35.360260, 20.987551>,  <31.439156, 34.934898, 21.523296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678442, 35.360260, 20.987551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637323, 34.984886, 20.855623>,  <31.612652, 34.759663, 20.776466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637323, 34.984886, 20.855623>,  <31.678442, 35.360260, 20.987551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637323, 34.984886, 20.855623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690486, 0.305996, -0.655436,
		0.716004, 0.160361, -0.679428,
		-0.102796, -0.938430, -0.329821,
		31.606485, 34.703358, 20.756678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348503, 35.482716, 20.339073>,  <31.678442, 35.360260, 20.987551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348503, 35.482716, 20.339073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330126, 35.083164, 20.343702>,  <31.319099, 34.843433, 20.346479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330126, 35.083164, 20.343702>,  <31.348503, 35.482716, 20.339073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330126, 35.083164, 20.343702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719651, 0.025063, -0.693883,
		0.692814, -0.040207, -0.719994,
		-0.045944, -0.998877, 0.011571,
		31.316343, 34.783501, 20.347174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527395, 35.247734, 19.687744>,  <31.348503, 35.482716, 20.339073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527395, 35.247734, 19.687744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296989, 34.975960, 19.869545>,  <31.158745, 34.812897, 19.978626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296989, 34.975960, 19.869545>,  <31.527395, 35.247734, 19.687744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296989, 34.975960, 19.869545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720985, 0.160264, -0.674163,
		0.385209, -0.716019, -0.582177,
		-0.576016, -0.679435, 0.454504,
		31.124186, 34.772129, 20.005896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171701, 34.952522, 19.136778>,  <31.527395, 35.247734, 19.687744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171701, 34.952522, 19.136778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961910, 34.805824, 19.444134>,  <30.836037, 34.717804, 19.628548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961910, 34.805824, 19.444134>,  <31.171701, 34.952522, 19.136778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961910, 34.805824, 19.444134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838650, 0.066777, -0.540562,
		0.146940, -0.927920, -0.342596,
		-0.524477, -0.366748, 0.768388,
		30.804567, 34.695801, 19.674650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788115, 34.386593, 18.888487>,  <31.171701, 34.952522, 19.136778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788115, 34.386593, 18.888487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591513, 34.498341, 19.218426>,  <30.473551, 34.565388, 19.416389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591513, 34.498341, 19.218426>,  <30.788115, 34.386593, 18.888487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591513, 34.498341, 19.218426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870154, -0.196048, -0.452103,
		0.035407, -0.939957, 0.339451,
		-0.491506, 0.279367, 0.824849,
		30.444061, 34.582150, 19.465879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314848, 33.909107, 19.030190>,  <30.788115, 34.386593, 18.888487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314848, 33.909107, 19.030190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155403, 34.222385, 19.221066>,  <30.059736, 34.410355, 19.335590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155403, 34.222385, 19.221066>,  <30.314848, 33.909107, 19.030190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155403, 34.222385, 19.221066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859036, -0.136622, -0.493347,
		-0.321193, -0.606577, 0.727255,
		-0.398612, 0.783198, 0.477189,
		30.035820, 34.457344, 19.364222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575153, 33.728073, 19.062153>,  <30.314848, 33.909107, 19.030190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575153, 33.728073, 19.062153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582836, 34.123230, 19.123732>,  <29.587446, 34.360325, 19.160679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582836, 34.123230, 19.123732>,  <29.575153, 33.728073, 19.062153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582836, 34.123230, 19.123732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925279, 0.075901, -0.371615,
		-0.378801, -0.135308, 0.915534,
		0.019207, 0.987892, 0.153949,
		29.588598, 34.419598, 19.169916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885382, 33.849480, 19.129040>,  <29.575153, 33.728073, 19.062153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885382, 33.849480, 19.129040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009007, 34.222881, 19.056322>,  <29.083181, 34.446922, 19.012691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009007, 34.222881, 19.056322>,  <28.885382, 33.849480, 19.129040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009007, 34.222881, 19.056322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855658, 0.189497, -0.481602,
		-0.415129, 0.304399, 0.857327,
		0.309060, 0.933505, -0.181796,
		29.101725, 34.502934, 19.001783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380482, 34.376003, 19.369179>,  <28.885382, 33.849480, 19.129040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380482, 34.376003, 19.369179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587849, 34.543678, 19.071045>,  <28.712269, 34.644283, 18.892164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587849, 34.543678, 19.071045>,  <28.380482, 34.376003, 19.369179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587849, 34.543678, 19.071045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853414, 0.308760, -0.419943,
		0.054094, 0.853785, 0.517808,
		0.518419, 0.419188, -0.745334,
		28.743374, 34.669434, 18.847445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962410, 34.968739, 19.210089>,  <28.380482, 34.376003, 19.369179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962410, 34.968739, 19.210089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204294, 34.953289, 18.891886>,  <28.349424, 34.944019, 18.700964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204294, 34.953289, 18.891886>,  <27.962410, 34.968739, 19.210089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204294, 34.953289, 18.891886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693253, 0.466183, -0.549612,
		0.392078, 0.883845, 0.255133,
		0.604710, -0.038619, -0.795509,
		28.385708, 34.941704, 18.653233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958252, 35.649361, 18.902264>,  <27.962410, 34.968739, 19.210089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958252, 35.649361, 18.902264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098606, 35.400322, 18.622478>,  <28.182819, 35.250896, 18.454607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098606, 35.400322, 18.622478>,  <27.958252, 35.649361, 18.902264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098606, 35.400322, 18.622478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628714, 0.396928, -0.668705,
		0.693973, 0.674401, -0.252162,
		0.350885, -0.622600, -0.699463,
		28.203871, 35.213543, 18.412640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034164, 35.968140, 18.301054>,  <27.958252, 35.649361, 18.902264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034164, 35.968140, 18.301054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973824, 35.579357, 18.228903>,  <27.937618, 35.346088, 18.185612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973824, 35.579357, 18.228903>,  <28.034164, 35.968140, 18.301054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973824, 35.579357, 18.228903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771128, 0.229868, -0.593736,
		0.618551, 0.049527, -0.784182,
		-0.150853, -0.971960, -0.180377,
		27.928568, 35.287769, 18.174789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966030, 36.033966, 17.673405>,  <28.034164, 35.968140, 18.301054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966030, 36.033966, 17.673405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763596, 35.715889, 17.807003>,  <27.642136, 35.525043, 17.887161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763596, 35.715889, 17.807003>,  <27.966030, 36.033966, 17.673405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763596, 35.715889, 17.807003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817987, 0.319747, -0.478183,
		0.273453, -0.515203, -0.812274,
		-0.506084, -0.795190, 0.333994,
		27.611771, 35.477333, 17.907202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727360, 35.715946, 17.069601>,  <27.966030, 36.033966, 17.673405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727360, 35.715946, 17.069601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522131, 35.647060, 17.405958>,  <27.398994, 35.605728, 17.607773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522131, 35.647060, 17.405958>,  <27.727360, 35.715946, 17.069601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522131, 35.647060, 17.405958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827600, 0.359107, -0.431417,
		-0.227676, -0.917270, -0.326770,
		-0.513071, -0.172212, 0.840893,
		27.368210, 35.595398, 17.658226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917082, 35.684551, 16.403091>,  <27.727360, 35.715946, 17.069601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917082, 35.684551, 16.403091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024784, 35.530964, 16.049805>,  <28.089405, 35.438812, 15.837833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024784, 35.530964, 16.049805>,  <27.917082, 35.684551, 16.403091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024784, 35.530964, 16.049805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116726, -0.897312, 0.425683,
		-0.955969, -0.217712, -0.196787,
		0.269256, -0.383970, -0.883215,
		28.105560, 35.415771, 15.784841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547956, 35.004337, 16.217455>,  <27.917082, 35.684551, 16.403091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547956, 35.004337, 16.217455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906347, 35.028465, 16.041462>,  <28.121382, 35.042942, 15.935866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906347, 35.028465, 16.041462>,  <27.547956, 35.004337, 16.217455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906347, 35.028465, 16.041462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212258, -0.928409, 0.304964,
		-0.390087, -0.366631, -0.844638,
		0.895979, 0.060319, -0.439981,
		28.175140, 35.046562, 15.909468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560999, 34.263729, 16.134954>,  <27.547956, 35.004337, 16.217455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560999, 34.263729, 16.134954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923237, 34.378513, 16.010021>,  <28.140579, 34.447384, 15.935061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923237, 34.378513, 16.010021>,  <27.560999, 34.263729, 16.134954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923237, 34.378513, 16.010021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332578, -0.937432, 0.103018,
		-0.263228, -0.197168, -0.944370,
		0.905595, 0.286959, -0.312332,
		28.194916, 34.464600, 15.916322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043257, 33.811943, 16.207476>,  <27.560999, 34.263729, 16.134954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043257, 33.811943, 16.207476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686932, 33.678970, 16.331373>,  <26.473137, 33.599186, 16.405712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686932, 33.678970, 16.331373>,  <27.043257, 33.811943, 16.207476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686932, 33.678970, 16.331373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133501, -0.460113, -0.877766,
		0.434313, -0.823277, 0.365495,
		-0.890814, -0.332432, 0.309742,
		26.419687, 33.579243, 16.424295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395828, 33.827835, 16.810143>,  <27.043257, 33.811943, 16.207476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395828, 33.827835, 16.810143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282431, 33.472343, 16.666040>,  <27.214392, 33.259048, 16.579578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282431, 33.472343, 16.666040>,  <27.395828, 33.827835, 16.810143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282431, 33.472343, 16.666040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594015, -0.457662, 0.661583,
		-0.752847, -0.026444, 0.657664,
		-0.283492, -0.888733, -0.360257,
		27.197384, 33.205723, 16.557962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059557, 33.351643, 17.337914>,  <27.395828, 33.827835, 16.810143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059557, 33.351643, 17.337914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293617, 33.211136, 17.045555>,  <27.434053, 33.126831, 16.870140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293617, 33.211136, 17.045555>,  <27.059557, 33.351643, 17.337914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293617, 33.211136, 17.045555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606847, -0.408170, 0.682007,
		-0.537899, -0.842618, -0.025674,
		0.585151, -0.351271, -0.730894,
		27.469162, 33.105755, 16.826286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226576, 32.666225, 17.449297>,  <27.059557, 33.351643, 17.337914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226576, 32.666225, 17.449297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521557, 32.797127, 17.212969>,  <27.698545, 32.875668, 17.071173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521557, 32.797127, 17.212969>,  <27.226576, 32.666225, 17.449297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521557, 32.797127, 17.212969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674900, -0.323432, 0.663250,
		0.025965, -0.887859, -0.459383,
		0.737452, 0.327259, -0.590819,
		27.742792, 32.895306, 17.035723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639259, 32.069561, 17.108582>,  <27.226576, 32.666225, 17.449297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639259, 32.069561, 17.108582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894186, 32.377144, 17.128731>,  <28.047142, 32.561691, 17.140820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894186, 32.377144, 17.128731>,  <27.639259, 32.069561, 17.108582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894186, 32.377144, 17.128731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592507, -0.530773, 0.605983,
		0.492709, -0.356358, -0.793881,
		0.637318, 0.768953, 0.050371,
		28.085381, 32.607830, 17.143843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343082, 31.845781, 16.914320>,  <27.639259, 32.069561, 17.108582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343082, 31.845781, 16.914320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401964, 32.177952, 17.129251>,  <28.437292, 32.377254, 17.258211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401964, 32.177952, 17.129251>,  <28.343082, 31.845781, 16.914320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401964, 32.177952, 17.129251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803865, -0.416969, 0.424190,
		0.576309, 0.369499, -0.728930,
		0.147203, 0.830426, 0.537330,
		28.446125, 32.427078, 17.290451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995646, 32.023907, 16.889956>,  <28.343082, 31.845781, 16.914320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995646, 32.023907, 16.889956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875145, 32.207264, 17.224411>,  <28.802845, 32.317276, 17.425083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875145, 32.207264, 17.224411>,  <28.995646, 32.023907, 16.889956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875145, 32.207264, 17.224411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787331, -0.375093, 0.489302,
		0.537920, 0.805719, -0.247908,
		-0.301251, 0.458391, 0.836137,
		28.784769, 32.344780, 17.475252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583349, 32.356876, 17.180605>,  <28.995646, 32.023907, 16.889956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583349, 32.356876, 17.180605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344223, 32.346478, 17.501091>,  <29.200748, 32.340237, 17.693382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344223, 32.346478, 17.501091>,  <29.583349, 32.356876, 17.180605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344223, 32.346478, 17.501091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793226, -0.163572, 0.586546,
		0.115808, 0.986189, 0.118407,
		-0.597813, -0.025997, 0.801214,
		29.164879, 32.338676, 17.741455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964163, 32.684845, 17.676598>,  <29.583349, 32.356876, 17.180605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964163, 32.684845, 17.676598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686790, 32.497772, 17.895845>,  <29.520367, 32.385529, 18.027393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686790, 32.497772, 17.895845>,  <29.964163, 32.684845, 17.676598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686790, 32.497772, 17.895845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684192, -0.188875, 0.704420,
		-0.225916, 0.863483, 0.450953,
		-0.693429, -0.467678, 0.548118,
		29.478762, 32.357468, 18.060282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078405, 32.949932, 18.377405>,  <29.964163, 32.684845, 17.676598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078405, 32.949932, 18.377405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910124, 32.587624, 18.397738>,  <29.809155, 32.370239, 18.409937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910124, 32.587624, 18.397738>,  <30.078405, 32.949932, 18.377405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910124, 32.587624, 18.397738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617501, -0.244862, 0.747486,
		-0.664606, 0.345857, 0.662331,
		-0.420703, -0.905774, 0.050830,
		29.783913, 32.315891, 18.412987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123108, 32.811871, 19.070927>,  <30.078405, 32.949932, 18.377405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123108, 32.811871, 19.070927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057701, 32.441578, 18.934525>,  <30.018457, 32.219402, 18.852682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057701, 32.441578, 18.934525>,  <30.123108, 32.811871, 19.070927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057701, 32.441578, 18.934525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529273, -0.374024, 0.761562,
		-0.832545, -0.055956, 0.551124,
		-0.163519, -0.925730, -0.341008,
		30.008646, 32.163860, 18.832222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030512, 32.655407, 19.787178>,  <30.123108, 32.811871, 19.070927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030512, 32.655407, 19.787178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078182, 32.362335, 19.519154>,  <30.106785, 32.186493, 19.358339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078182, 32.362335, 19.519154>,  <30.030512, 32.655407, 19.787178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078182, 32.362335, 19.519154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460378, -0.557159, 0.691105,
		-0.879687, -0.390845, 0.270907,
		0.119177, -0.732676, -0.670062,
		30.113935, 32.142532, 19.318134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702461, 32.049000, 20.032549>,  <30.030512, 32.655407, 19.787178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702461, 32.049000, 20.032549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972782, 31.938396, 19.759247>,  <30.134974, 31.872034, 19.595266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972782, 31.938396, 19.759247>,  <29.702461, 32.049000, 20.032549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972782, 31.938396, 19.759247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383217, -0.660027, 0.646149,
		-0.629629, -0.698504, -0.340087,
		0.675805, -0.276507, -0.683251,
		30.175522, 31.855444, 19.554272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775122, 31.327997, 20.107651>,  <29.702461, 32.049000, 20.032549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775122, 31.327997, 20.107651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102150, 31.437954, 19.905260>,  <30.298367, 31.503929, 19.783827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102150, 31.437954, 19.905260>,  <29.775122, 31.327997, 20.107651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102150, 31.437954, 19.905260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574668, -0.445255, 0.686662,
		-0.036530, -0.852163, -0.522000,
		0.817571, 0.274893, -0.505976,
		30.347422, 31.520422, 19.753468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209766, 30.781494, 20.258570>,  <29.775122, 31.327997, 20.107651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209766, 30.781494, 20.258570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447378, 31.065117, 20.106588>,  <30.589945, 31.235291, 20.015400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447378, 31.065117, 20.106588>,  <30.209766, 30.781494, 20.258570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447378, 31.065117, 20.106588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763295, -0.347688, 0.544512,
		0.253986, -0.613472, -0.747758,
		0.594030, 0.709059, -0.379953,
		30.625587, 31.277834, 19.992603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812128, 30.429199, 19.981583>,  <30.209766, 30.781494, 20.258570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812128, 30.429199, 19.981583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918552, 30.808767, 20.049423>,  <30.982407, 31.036509, 20.090128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918552, 30.808767, 20.049423>,  <30.812128, 30.429199, 19.981583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918552, 30.808767, 20.049423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758874, -0.314681, 0.570164,
		0.594410, -0.022991, -0.803834,
		0.266060, 0.948919, 0.169602,
		30.998371, 31.093443, 20.100304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533390, 30.469851, 19.921762>,  <30.812128, 30.429199, 19.981583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533390, 30.469851, 19.921762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469883, 30.795378, 20.145367>,  <31.431778, 30.990694, 20.279530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469883, 30.795378, 20.145367>,  <31.533390, 30.469851, 19.921762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469883, 30.795378, 20.145367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815432, -0.211137, 0.538973,
		0.556654, 0.541407, -0.630091,
		-0.158768, 0.813818, 0.559011,
		31.422253, 31.039522, 20.313070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168568, 30.670210, 20.083445>,  <31.533390, 30.469851, 19.921762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168568, 30.670210, 20.083445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968618, 30.870920, 20.365820>,  <31.848648, 30.991346, 20.535244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968618, 30.870920, 20.365820>,  <32.168568, 30.670210, 20.083445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968618, 30.870920, 20.365820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765869, -0.124525, 0.630824,
		0.404440, 0.855987, -0.322048,
		-0.499873, 0.501777, 0.705936,
		31.818657, 31.021454, 20.577600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627628, 31.181871, 20.403822>,  <32.168568, 30.670210, 20.083445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627628, 31.181871, 20.403822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336151, 31.095066, 20.663641>,  <32.161266, 31.042982, 20.819532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336151, 31.095066, 20.663641>,  <32.627628, 31.181871, 20.403822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336151, 31.095066, 20.663641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681769, -0.140175, 0.718012,
		-0.064769, 0.966052, 0.250099,
		-0.728694, -0.217014, 0.649545,
		32.117542, 31.029963, 20.858505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631973, 31.663013, 20.953777>,  <32.627628, 31.181871, 20.403822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631973, 31.663013, 20.953777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453979, 31.344866, 21.118399>,  <32.347183, 31.153976, 21.217171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453979, 31.344866, 21.118399>,  <32.631973, 31.663013, 20.953777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453979, 31.344866, 21.118399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574218, 0.099245, 0.812665,
		-0.687214, 0.597942, 0.412555,
		-0.444983, -0.795371, 0.411552,
		32.320484, 31.106255, 21.241865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429119, 31.919220, 21.615061>,  <32.631973, 31.663013, 20.953777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429119, 31.919220, 21.615061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422787, 31.519270, 21.614819>,  <32.418987, 31.279301, 21.614674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422787, 31.519270, 21.614819>,  <32.429119, 31.919220, 21.615061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422787, 31.519270, 21.614819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733445, -0.012023, 0.679642,
		-0.679564, 0.010314, 0.733544,
		-0.015829, -0.999875, -0.000606,
		32.418037, 31.219307, 21.614637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404289, 31.704237, 22.319817>,  <32.429119, 31.919220, 21.615061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404289, 31.704237, 22.319817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552219, 31.389776, 22.121748>,  <32.640976, 31.201099, 22.002907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552219, 31.389776, 22.121748>,  <32.404289, 31.704237, 22.319817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552219, 31.389776, 22.121748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687376, -0.127064, 0.715101,
		-0.625097, -0.604831, 0.493390,
		0.369823, -0.786152, -0.495173,
		32.663166, 31.153931, 21.973196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473717, 31.268806, 22.891886>,  <32.404289, 31.704237, 22.319817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473717, 31.268806, 22.891886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700706, 31.150150, 22.584644>,  <32.836899, 31.078957, 22.400299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700706, 31.150150, 22.584644>,  <32.473717, 31.268806, 22.891886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700706, 31.150150, 22.584644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714877, -0.285382, 0.638363,
		-0.408567, -0.911351, 0.050115,
		0.567471, -0.296640, -0.768102,
		32.870949, 31.061159, 22.354214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743904, 30.665918, 23.118128>,  <32.473717, 31.268806, 22.891886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743904, 30.665918, 23.118128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013863, 30.765491, 22.840265>,  <33.175838, 30.825235, 22.673548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013863, 30.765491, 22.840265>,  <32.743904, 30.665918, 23.118128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013863, 30.765491, 22.840265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725361, -0.396683, 0.562577,
		-0.135514, -0.883558, -0.448288,
		0.674898, 0.248933, -0.694654,
		33.216331, 30.840172, 22.631868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231274, 30.069836, 23.078739>,  <32.743904, 30.665918, 23.118128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231274, 30.069836, 23.078739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412884, 30.364506, 22.878271>,  <33.521851, 30.541307, 22.757990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412884, 30.364506, 22.878271>,  <33.231274, 30.069836, 23.078739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412884, 30.364506, 22.878271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883240, -0.298099, 0.361971,
		0.117256, -0.606999, -0.786004,
		0.454024, 0.736674, -0.501172,
		33.549091, 30.585508, 22.727919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775352, 29.799797, 22.730644>,  <33.231274, 30.069836, 23.078739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775352, 29.799797, 22.730644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842304, 30.182180, 22.827082>,  <33.882477, 30.411610, 22.884945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842304, 30.182180, 22.827082>,  <33.775352, 29.799797, 22.730644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842304, 30.182180, 22.827082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808293, -0.273082, 0.521622,
		0.564487, 0.107565, -0.818403,
		0.167383, 0.955958, 0.241095,
		33.892521, 30.468967, 22.899410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391624, 29.808399, 22.577324>,  <33.775352, 29.799797, 22.730644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391624, 29.808399, 22.577324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354176, 30.134584, 22.805799>,  <34.331707, 30.330296, 22.942884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354176, 30.134584, 22.805799>,  <34.391624, 29.808399, 22.577324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354176, 30.134584, 22.805799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788614, -0.289452, 0.542500,
		0.607720, 0.501237, -0.615985,
		-0.093623, 0.815462, 0.571188,
		34.326088, 30.379223, 22.977156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064278, 30.070963, 22.703161>,  <34.391624, 29.808399, 22.577324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064278, 30.070963, 22.703161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827915, 30.171377, 23.009838>,  <34.686100, 30.231625, 23.193844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827915, 30.171377, 23.009838>,  <35.064278, 30.070963, 22.703161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827915, 30.171377, 23.009838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691649, -0.331566, 0.641627,
		0.415279, 0.909421, 0.022296,
		-0.590902, 0.251033, 0.766692,
		34.650646, 30.246687, 23.239845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511150, 30.374395, 23.210564>,  <35.064278, 30.070963, 22.703161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511150, 30.374395, 23.210564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189255, 30.324551, 23.442726>,  <34.996117, 30.294643, 23.582024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189255, 30.324551, 23.442726>,  <35.511150, 30.374395, 23.210564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189255, 30.324551, 23.442726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592733, -0.114790, 0.797177,
		-0.032712, 0.985543, 0.166237,
		-0.804735, -0.124612, 0.580408,
		34.947834, 30.287167, 23.616848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604961, 30.868795, 23.785263>,  <35.511150, 30.374395, 23.210564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604961, 30.868795, 23.785263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384354, 30.546278, 23.870787>,  <35.251987, 30.352768, 23.922100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384354, 30.546278, 23.870787>,  <35.604961, 30.868795, 23.785263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384354, 30.546278, 23.870787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591307, -0.197103, 0.781989,
		-0.588371, 0.557709, 0.585475,
		-0.551521, -0.806295, 0.213807,
		35.218899, 30.304390, 23.934929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641094, 30.879091, 24.576994>,  <35.604961, 30.868795, 23.785263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641094, 30.879091, 24.576994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475891, 30.523195, 24.499245>,  <35.376770, 30.309658, 24.452595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475891, 30.523195, 24.499245>,  <35.641094, 30.879091, 24.576994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475891, 30.523195, 24.499245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586387, -0.423100, 0.690751,
		-0.696829, 0.171309, 0.696478,
		-0.413012, -0.889741, -0.194375,
		35.351986, 30.256273, 24.440931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311680, 30.615850, 25.193726>,  <35.641094, 30.879091, 24.576994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311680, 30.615850, 25.193726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388767, 30.299286, 24.961681>,  <35.435020, 30.109348, 24.822454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388767, 30.299286, 24.961681>,  <35.311680, 30.615850, 25.193726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388767, 30.299286, 24.961681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468244, -0.445370, 0.763147,
		-0.862326, -0.418709, 0.284741,
		0.192721, -0.791409, -0.580112,
		35.446583, 30.061863, 24.787647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180176, 29.991682, 25.603756>,  <35.311680, 30.615850, 25.193726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180176, 29.991682, 25.603756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435246, 29.864038, 25.323317>,  <35.588287, 29.787453, 25.155052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435246, 29.864038, 25.323317>,  <35.180176, 29.991682, 25.603756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435246, 29.864038, 25.323317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459873, -0.572456, 0.678830,
		-0.617971, -0.755289, -0.218290,
		0.637675, -0.319111, -0.701099,
		35.626549, 29.768305, 25.112988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268162, 29.399817, 25.803349>,  <35.180176, 29.991682, 25.603756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268162, 29.399817, 25.803349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565296, 29.421402, 25.536430>,  <35.743576, 29.434353, 25.376280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565296, 29.421402, 25.536430>,  <35.268162, 29.399817, 25.803349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565296, 29.421402, 25.536430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544163, -0.629287, 0.554873,
		-0.389978, -0.775297, -0.496821,
		0.742835, 0.053963, -0.667296,
		35.788147, 29.437592, 25.336241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463284, 28.701670, 25.653345>,  <35.268162, 29.399817, 25.803349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463284, 28.701670, 25.653345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771072, 28.949453, 25.591150>,  <35.955746, 29.098124, 25.553833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771072, 28.949453, 25.591150>,  <35.463284, 28.701670, 25.653345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771072, 28.949453, 25.591150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576439, -0.568776, 0.586696,
		0.274999, -0.541076, -0.794741,
		0.769476, 0.619460, -0.155485,
		36.001915, 29.135292, 25.544504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061363, 28.270779, 25.695192>,  <35.463284, 28.701670, 25.653345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061363, 28.270779, 25.695192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222569, 28.636240, 25.716440>,  <36.319290, 28.855516, 25.729189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222569, 28.636240, 25.716440>,  <36.061363, 28.270779, 25.695192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222569, 28.636240, 25.716440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604028, -0.309143, 0.734561,
		0.687556, -0.263949, -0.676460,
		0.403010, 0.913653, 0.053120,
		36.343472, 28.910336, 25.732376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662838, 28.147999, 25.743994>,  <36.061363, 28.270779, 25.695192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662838, 28.147999, 25.743994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653496, 28.521717, 25.886286>,  <36.647888, 28.745949, 25.971661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653496, 28.521717, 25.886286>,  <36.662838, 28.147999, 25.743994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653496, 28.521717, 25.886286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652321, -0.255400, 0.713616,
		0.757583, 0.248720, -0.603496,
		-0.023358, 0.934296, 0.355732,
		36.646488, 28.802006, 25.993006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290154, 28.230000, 25.937647>,  <36.662838, 28.147999, 25.743994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290154, 28.230000, 25.937647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125523, 28.543455, 26.123772>,  <37.026745, 28.731529, 26.235447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125523, 28.543455, 26.123772>,  <37.290154, 28.230000, 25.937647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125523, 28.543455, 26.123772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553060, -0.191047, 0.810941,
		0.724381, 0.591110, -0.354769,
		-0.411577, 0.783639, 0.465310,
		37.002048, 28.778547, 26.263365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825211, 28.665905, 26.320152>,  <37.290154, 28.230000, 25.937647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825211, 28.665905, 26.320152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481438, 28.735519, 26.512440>,  <37.275173, 28.777288, 26.627813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481438, 28.735519, 26.512440>,  <37.825211, 28.665905, 26.320152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481438, 28.735519, 26.512440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486074, -0.013306, 0.873817,
		0.158470, 0.984650, -0.073157,
		-0.859430, 0.174034, 0.480721,
		37.223610, 28.787729, 26.656656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963688, 29.211742, 26.756918>,  <37.825211, 28.665905, 26.320152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963688, 29.211742, 26.756918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639824, 29.019413, 26.891539>,  <37.445507, 28.904016, 26.972311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639824, 29.019413, 26.891539>,  <37.963688, 29.211742, 26.756918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639824, 29.019413, 26.891539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421773, -0.077922, 0.903347,
		-0.408125, 0.873349, 0.265888,
		-0.809655, -0.480823, 0.336553,
		37.396927, 28.875166, 26.992504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959148, 29.487349, 27.351305>,  <37.963688, 29.211742, 26.756918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959148, 29.487349, 27.351305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717804, 29.169130, 27.373440>,  <37.572998, 28.978199, 27.386721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717804, 29.169130, 27.373440>,  <37.959148, 29.487349, 27.351305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717804, 29.169130, 27.373440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229437, -0.106714, 0.967456,
		-0.763750, 0.596421, 0.246915,
		-0.603360, -0.795546, 0.055338,
		37.536797, 28.930466, 27.390041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497799, 29.593624, 27.954971>,  <37.959148, 29.487349, 27.351305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497799, 29.593624, 27.954971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529305, 29.202993, 27.874878>,  <37.548206, 28.968615, 27.826822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529305, 29.202993, 27.874878>,  <37.497799, 29.593624, 27.954971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529305, 29.202993, 27.874878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288791, -0.169892, 0.942198,
		-0.954147, -0.132036, 0.268646,
		0.078763, -0.976577, -0.200233,
		37.552933, 28.910021, 27.814808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244225, 29.265162, 28.521002>,  <37.497799, 29.593624, 27.954971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244225, 29.265162, 28.521002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448189, 28.974939, 28.336153>,  <37.570568, 28.800806, 28.225245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448189, 28.974939, 28.336153>,  <37.244225, 29.265162, 28.521002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448189, 28.974939, 28.336153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298230, -0.354788, 0.886106,
		-0.806874, -0.589657, 0.035471,
		0.509914, -0.725555, -0.462122,
		37.601162, 28.757273, 28.197515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198032, 28.768303, 28.929770>,  <37.244225, 29.265162, 28.521002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198032, 28.768303, 28.929770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482002, 28.620625, 28.689871>,  <37.652386, 28.532017, 28.545931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482002, 28.620625, 28.689871>,  <37.198032, 28.768303, 28.929770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482002, 28.620625, 28.689871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310352, -0.600440, 0.736990,
		-0.632208, -0.709341, -0.311687,
		0.709926, -0.369198, -0.599748,
		37.694981, 28.509867, 28.509947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194233, 28.012642, 28.909685>,  <37.198032, 28.768303, 28.929770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194233, 28.012642, 28.909685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568424, 28.117422, 28.814802>,  <37.792938, 28.180290, 28.757874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568424, 28.117422, 28.814802>,  <37.194233, 28.012642, 28.909685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568424, 28.117422, 28.814802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352971, -0.659939, 0.663244,
		0.017194, -0.704175, -0.709818,
		0.935476, 0.261949, -0.237206,
		37.849068, 28.196007, 28.743641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924152, 27.509510, 28.310741>,  <37.194233, 28.012642, 28.909685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924152, 27.509510, 28.310741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688717, 27.490856, 28.633577>,  <36.547455, 27.479664, 28.827278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688717, 27.490856, 28.633577>,  <36.924152, 27.509510, 28.310741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688717, 27.490856, 28.633577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799139, 0.184534, -0.572123,
		-0.122257, -0.981719, -0.145878,
		-0.588584, -0.046631, 0.807090,
		36.512142, 27.476866, 28.875704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423267, 27.207611, 28.029819>,  <36.924152, 27.509510, 28.310741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423267, 27.207611, 28.029819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258884, 27.352791, 28.364336>,  <36.160255, 27.439899, 28.565046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258884, 27.352791, 28.364336>,  <36.423267, 27.207611, 28.029819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258884, 27.352791, 28.364336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842170, 0.200124, -0.500699,
		-0.349091, -0.910064, 0.223425,
		-0.410956, 0.362951, 0.836290,
		36.135597, 27.461676, 28.615223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647655, 26.900492, 28.195263>,  <36.423267, 27.207611, 28.029819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647655, 26.900492, 28.195263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668453, 27.246021, 28.395704>,  <35.680931, 27.453339, 28.515970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668453, 27.246021, 28.395704>,  <35.647655, 26.900492, 28.195263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668453, 27.246021, 28.395704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923758, 0.232251, -0.304517,
		-0.379431, -0.447067, 0.810039,
		0.051993, 0.863823, 0.501105,
		35.684052, 27.505169, 28.546036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963257, 26.989254, 28.430202>,  <35.647655, 26.900492, 28.195263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963257, 26.989254, 28.430202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124649, 27.355021, 28.443182>,  <35.221485, 27.574480, 28.450970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124649, 27.355021, 28.443182>,  <34.963257, 26.989254, 28.430202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124649, 27.355021, 28.443182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880545, 0.397682, -0.257854,
		-0.248689, 0.075466, 0.965639,
		0.403477, 0.914414, 0.032449,
		35.245693, 27.629345, 28.452917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434341, 27.443283, 28.617380>,  <34.963257, 26.989254, 28.430202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434341, 27.443283, 28.617380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685265, 27.710995, 28.458107>,  <34.835819, 27.871622, 28.362543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685265, 27.710995, 28.458107>,  <34.434341, 27.443283, 28.617380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685265, 27.710995, 28.458107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761487, 0.420013, -0.493687,
		-0.163173, 0.612905, 0.773125,
		0.627305, 0.669281, -0.398184,
		34.873455, 27.911779, 28.338652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097828, 28.145525, 28.668390>,  <34.434341, 27.443283, 28.617380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097828, 28.145525, 28.668390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370579, 28.190935, 28.379349>,  <34.534229, 28.218182, 28.205923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370579, 28.190935, 28.379349>,  <34.097828, 28.145525, 28.668390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370579, 28.190935, 28.379349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692110, 0.419822, -0.587140,
		0.236710, 0.900478, 0.364839,
		0.681874, 0.113527, -0.722606,
		34.575142, 28.224993, 28.162567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005844, 28.825274, 28.313118>,  <34.097828, 28.145525, 28.668390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005844, 28.825274, 28.313118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190899, 28.594648, 28.043736>,  <34.301933, 28.456274, 27.882107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190899, 28.594648, 28.043736>,  <34.005844, 28.825274, 28.313118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190899, 28.594648, 28.043736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548843, 0.410298, -0.728304,
		0.696229, 0.706563, -0.126622,
		0.462640, -0.576562, -0.673454,
		34.329693, 28.421680, 27.841700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940804, 29.250587, 27.747538>,  <34.005844, 28.825274, 28.313118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940804, 29.250587, 27.747538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041420, 28.893152, 27.598825>,  <34.101791, 28.678690, 27.509598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041420, 28.893152, 27.598825>,  <33.940804, 29.250587, 27.747538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041420, 28.893152, 27.598825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581771, 0.167388, -0.795943,
		0.773478, 0.416507, -0.477759,
		0.251544, -0.893590, -0.371782,
		34.116882, 28.625074, 27.487291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844604, 29.439344, 27.114902>,  <33.940804, 29.250587, 27.747538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844604, 29.439344, 27.114902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874096, 29.041071, 27.092340>,  <33.891788, 28.802107, 27.078802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874096, 29.041071, 27.092340>,  <33.844604, 29.439344, 27.114902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874096, 29.041071, 27.092340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534097, 0.008345, -0.845382,
		0.842203, 0.092453, -0.531175,
		0.073725, -0.995682, -0.056406,
		33.896214, 28.742367, 27.075418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027122, 29.362329, 26.461802>,  <33.844604, 29.439344, 27.114902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027122, 29.362329, 26.461802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839172, 29.038952, 26.603584>,  <33.726402, 28.844925, 26.688654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839172, 29.038952, 26.603584>,  <34.027122, 29.362329, 26.461802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839172, 29.038952, 26.603584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526848, -0.065348, -0.847444,
		0.708273, -0.584936, -0.395220,
		-0.469874, -0.808442, 0.354457,
		33.698212, 28.796419, 26.709921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036701, 28.923655, 25.852480>,  <34.027122, 29.362329, 26.461802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036701, 28.923655, 25.852480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756645, 28.808130, 26.113672>,  <33.588612, 28.738815, 26.270388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756645, 28.808130, 26.113672>,  <34.036701, 28.923655, 25.852480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756645, 28.808130, 26.113672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607705, -0.239054, -0.757330,
		0.374824, -0.927060, -0.008141,
		-0.700144, -0.288813, 0.652982,
		33.546600, 28.721487, 26.309566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813011, 28.289946, 25.573915>,  <34.036701, 28.923655, 25.852480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813011, 28.289946, 25.573915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507874, 28.414673, 25.800488>,  <33.324791, 28.489510, 25.936430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507874, 28.414673, 25.800488>,  <33.813011, 28.289946, 25.573915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507874, 28.414673, 25.800488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640573, -0.245255, -0.727679,
		-0.087983, -0.917943, 0.386833,
		-0.762841, 0.311818, 0.566431,
		33.279022, 28.508219, 25.970417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325214, 27.841032, 25.440468>,  <33.813011, 28.289946, 25.573915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325214, 27.841032, 25.440468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112236, 28.132292, 25.613117>,  <32.984447, 28.307047, 25.716707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112236, 28.132292, 25.613117>,  <33.325214, 27.841032, 25.440468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112236, 28.132292, 25.613117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727250, -0.132594, -0.673444,
		-0.433136, -0.672473, 0.600145,
		-0.532448, 0.728148, 0.431625,
		32.952503, 28.350737, 25.742605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560791, 27.692928, 25.328053>,  <33.325214, 27.841032, 25.440468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560791, 27.692928, 25.328053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545597, 28.078163, 25.434649>,  <32.536480, 28.309305, 25.498606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545597, 28.078163, 25.434649>,  <32.560791, 27.692928, 25.328053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545597, 28.078163, 25.434649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704116, 0.163436, -0.691021,
		-0.709069, -0.213888, 0.671918,
		-0.037985, 0.963089, 0.266489,
		32.534203, 28.367090, 25.514595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857641, 27.952415, 25.303837>,  <32.560791, 27.692928, 25.328053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857641, 27.952415, 25.303837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109566, 28.260450, 25.263233>,  <32.260719, 28.445271, 25.238871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109566, 28.260450, 25.263233>,  <31.857641, 27.952415, 25.303837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109566, 28.260450, 25.263233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555942, 0.355644, -0.751296,
		-0.542461, 0.529609, 0.652112,
		0.629813, 0.770085, -0.101509,
		32.298512, 28.491476, 25.232780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361095, 28.493778, 25.226503>,  <31.857641, 27.952415, 25.303837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361095, 28.493778, 25.226503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703056, 28.649675, 25.089542>,  <31.908234, 28.743214, 25.007366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703056, 28.649675, 25.089542>,  <31.361095, 28.493778, 25.226503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703056, 28.649675, 25.089542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473453, 0.316303, -0.822067,
		-0.212093, 0.864900, 0.454934,
		0.854903, 0.389745, -0.342404,
		31.959528, 28.766600, 24.986822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186720, 29.169790, 25.068222>,  <31.361095, 28.493778, 25.226503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186720, 29.169790, 25.068222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523851, 29.102718, 24.863665>,  <31.726130, 29.062475, 24.740931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523851, 29.102718, 24.863665>,  <31.186720, 29.169790, 25.068222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523851, 29.102718, 24.863665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439852, 0.332931, -0.834079,
		0.310116, 0.927923, 0.206850,
		0.842828, -0.167678, -0.511396,
		31.776699, 29.052416, 24.710245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389404, 29.872257, 24.790226>,  <31.186720, 29.169790, 25.068222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389404, 29.872257, 24.790226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524063, 29.571396, 24.563622>,  <31.604858, 29.390879, 24.427658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524063, 29.571396, 24.563622>,  <31.389404, 29.872257, 24.790226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524063, 29.571396, 24.563622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504183, 0.364137, -0.783073,
		0.795278, 0.549246, -0.256636,
		0.336649, -0.752152, -0.566511,
		31.625057, 29.345751, 24.393669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732555, 30.149944, 24.252640>,  <31.389404, 29.872257, 24.790226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732555, 30.149944, 24.252640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597815, 29.798243, 24.117914>,  <31.516970, 29.587221, 24.037079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597815, 29.798243, 24.117914>,  <31.732555, 30.149944, 24.252640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597815, 29.798243, 24.117914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377574, 0.453839, -0.807136,
		0.862536, -0.144713, -0.484860,
		-0.336852, -0.879254, -0.336813,
		31.496759, 29.534466, 24.016870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990438, 30.228954, 23.576525>,  <31.732555, 30.149944, 24.252640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990438, 30.228954, 23.576525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734547, 29.922184, 23.556232>,  <31.581011, 29.738123, 23.544056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734547, 29.922184, 23.556232>,  <31.990438, 30.228954, 23.576525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734547, 29.922184, 23.556232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426644, 0.409238, -0.806536,
		0.639314, -0.494319, -0.589005,
		-0.639728, -0.766925, -0.050733,
		31.542627, 29.692106, 23.541012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893600, 30.134823, 22.878613>,  <31.990438, 30.228954, 23.576525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893600, 30.134823, 22.878613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575371, 29.961849, 23.048347>,  <31.384434, 29.858065, 23.150188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575371, 29.961849, 23.048347>,  <31.893600, 30.134823, 22.878613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575371, 29.961849, 23.048347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596444, 0.436028, -0.673895,
		0.106393, -0.789227, -0.604816,
		-0.795572, -0.432436, 0.424339,
		31.336699, 29.832119, 23.175650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483114, 29.680477, 22.325636>,  <31.893600, 30.134823, 22.878613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483114, 29.680477, 22.325636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228533, 29.756752, 22.624584>,  <31.075783, 29.802517, 22.803953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228533, 29.756752, 22.624584>,  <31.483114, 29.680477, 22.325636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228533, 29.756752, 22.624584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698182, 0.269398, -0.663300,
		-0.327822, -0.943962, -0.038326,
		-0.636455, 0.190686, 0.747371,
		31.037596, 29.813957, 22.848795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711065, 29.421478, 22.154980>,  <31.483114, 29.680477, 22.325636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711065, 29.421478, 22.154980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682783, 29.704979, 22.435743>,  <30.665813, 29.875078, 22.604200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682783, 29.704979, 22.435743>,  <30.711065, 29.421478, 22.154980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682783, 29.704979, 22.435743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690276, 0.473207, -0.547353,
		-0.720084, -0.523209, 0.455776,
		-0.070703, 0.708751, 0.701907,
		30.661572, 29.917604, 22.646315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014568, 29.495111, 22.438267>,  <30.711065, 29.421478, 22.154980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014568, 29.495111, 22.438267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142862, 29.867445, 22.508322>,  <30.219839, 30.090845, 22.550356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142862, 29.867445, 22.508322>,  <30.014568, 29.495111, 22.438267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142862, 29.867445, 22.508322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800889, 0.365244, -0.474525,
		-0.505673, 0.011931, 0.862643,
		0.320736, 0.930835, 0.175139,
		30.239082, 30.146696, 22.560863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357779, 29.981544, 22.590590>,  <30.014568, 29.495111, 22.438267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357779, 29.981544, 22.590590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652956, 30.247229, 22.542818>,  <29.830063, 30.406639, 22.514154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652956, 30.247229, 22.542818>,  <29.357779, 29.981544, 22.590590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652956, 30.247229, 22.542818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646069, 0.644173, -0.409433,
		-0.195015, 0.379300, 0.904489,
		0.737946, 0.664208, -0.119431,
		29.874340, 30.446491, 22.506989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206268, 30.687675, 22.997248>,  <29.357779, 29.981544, 22.590590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206268, 30.687675, 22.997248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449575, 30.724770, 22.681929>,  <29.595560, 30.747026, 22.492737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449575, 30.724770, 22.681929>,  <29.206268, 30.687675, 22.997248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449575, 30.724770, 22.681929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592195, 0.714307, -0.372921,
		0.528504, 0.693661, 0.489405,
		0.608266, 0.092734, -0.788297,
		29.632055, 30.752590, 22.445440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186001, 31.374544, 22.980392>,  <29.206268, 30.687675, 22.997248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186001, 31.374544, 22.980392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301575, 31.214087, 22.632690>,  <29.370918, 31.117813, 22.424068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301575, 31.214087, 22.632690>,  <29.186001, 31.374544, 22.980392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301575, 31.214087, 22.632690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593811, 0.637119, -0.491394,
		0.750937, 0.658153, -0.054118,
		0.288933, -0.401142, -0.869254,
		29.388254, 31.093744, 22.371914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518698, 31.889477, 22.553234>,  <29.186001, 31.374544, 22.980392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518698, 31.889477, 22.553234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391838, 31.608147, 22.298754>,  <29.315723, 31.439348, 22.146067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391838, 31.608147, 22.298754>,  <29.518698, 31.889477, 22.553234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391838, 31.608147, 22.298754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495111, 0.694945, -0.521456,
		0.808877, 0.149611, -0.568625,
		-0.317147, -0.703326, -0.636199,
		29.296694, 31.397148, 22.107893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439661, 32.256390, 21.936880>,  <29.518698, 31.889477, 22.553234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439661, 32.256390, 21.936880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267372, 31.904224, 21.857527>,  <29.164000, 31.692926, 21.809916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267372, 31.904224, 21.857527>,  <29.439661, 32.256390, 21.936880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267372, 31.904224, 21.857527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717765, 0.467435, -0.516061,
		0.547077, -0.079886, -0.833262,
		-0.430722, -0.880411, -0.198384,
		29.138155, 31.640100, 21.798012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173376, 32.391083, 21.318382>,  <29.439661, 32.256390, 21.936880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173376, 32.391083, 21.318382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980589, 32.056351, 21.422249>,  <28.864916, 31.855513, 21.484570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980589, 32.056351, 21.422249>,  <29.173376, 32.391083, 21.318382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980589, 32.056351, 21.422249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824090, 0.332278, -0.458766,
		0.297623, -0.435106, -0.849766,
		-0.481971, -0.836824, 0.259673,
		28.835999, 31.805304, 21.500149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960890, 31.951004, 20.722965>,  <29.173376, 32.391083, 21.318382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960890, 31.951004, 20.722965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697790, 31.886532, 21.017281>,  <28.539930, 31.847849, 21.193871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697790, 31.886532, 21.017281>,  <28.960890, 31.951004, 20.722965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697790, 31.886532, 21.017281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741083, 0.313243, -0.593865,
		-0.134763, -0.935896, -0.325482,
		-0.657750, -0.161178, 0.735790,
		28.500465, 31.838179, 21.238018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391693, 31.718456, 20.351345>,  <28.960890, 31.951004, 20.722965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391693, 31.718456, 20.351345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213017, 31.786339, 20.702724>,  <28.105810, 31.827068, 20.913551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213017, 31.786339, 20.702724>,  <28.391693, 31.718456, 20.351345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213017, 31.786339, 20.702724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851298, 0.221440, -0.475664,
		-0.275246, -0.960294, 0.045555,
		-0.446689, 0.169705, 0.878446,
		28.079010, 31.837250, 20.966259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741703, 31.291008, 20.500607>,  <28.391693, 31.718456, 20.351345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741703, 31.291008, 20.500607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697496, 31.632803, 20.703638>,  <27.670973, 31.837881, 20.825457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697496, 31.632803, 20.703638>,  <27.741703, 31.291008, 20.500607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697496, 31.632803, 20.703638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883836, 0.149076, -0.443407,
		-0.454554, -0.497619, 0.738753,
		-0.110518, 0.854489, 0.507577,
		27.664341, 31.889151, 20.855911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025429, 31.433733, 20.546438>,  <27.741703, 31.291008, 20.500607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025429, 31.433733, 20.546438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139282, 31.781029, 20.708990>,  <27.207594, 31.989407, 20.806520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139282, 31.781029, 20.708990>,  <27.025429, 31.433733, 20.546438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139282, 31.781029, 20.708990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879785, 0.404954, -0.248978,
		-0.380737, -0.286657, 0.879129,
		0.284636, 0.868240, 0.406377,
		27.224672, 32.041500, 20.830904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336868, 31.746119, 20.799166>,  <27.025429, 31.433733, 20.546438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336868, 31.746119, 20.799166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605431, 32.036407, 20.739115>,  <26.766567, 32.210583, 20.703085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605431, 32.036407, 20.739115>,  <26.336868, 31.746119, 20.799166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605431, 32.036407, 20.739115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732830, 0.619998, -0.280291,
		-0.110335, 0.298207, 0.948103,
		0.671407, 0.725724, -0.150127,
		26.806852, 32.254124, 20.694077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991245, 32.323589, 21.073078>,  <26.336868, 31.746119, 20.799166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991245, 32.323589, 21.073078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276321, 32.481487, 20.841129>,  <26.447367, 32.576225, 20.701960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276321, 32.481487, 20.841129>,  <25.991245, 32.323589, 21.073078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276321, 32.481487, 20.841129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611723, 0.754313, -0.238341,
		0.343322, 0.524584, 0.779064,
		0.712689, 0.394743, -0.579873,
		26.490128, 32.599911, 20.667168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846617, 33.071808, 21.072506>,  <25.991245, 32.323589, 21.073078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846617, 33.071808, 21.072506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082943, 33.031616, 20.752296>,  <26.224739, 33.007500, 20.560171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082943, 33.031616, 20.752296>,  <25.846617, 33.071808, 21.072506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082943, 33.031616, 20.752296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556482, 0.667674, -0.494509,
		0.584180, 0.737641, 0.338555,
		0.590814, -0.100483, -0.800526,
		26.260187, 33.001472, 20.512138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965239, 33.779236, 21.201403>,  <25.846617, 33.071808, 21.072506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965239, 33.779236, 21.201403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599771, 33.783340, 21.363935>,  <25.380491, 33.785801, 21.461454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599771, 33.783340, 21.363935>,  <25.965239, 33.779236, 21.201403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599771, 33.783340, 21.363935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307793, -0.635456, 0.708138,
		0.265472, 0.772069, 0.577438,
		-0.913668, 0.010259, 0.406333,
		25.325672, 33.786419, 21.485836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138971, 33.861229, 21.910442>,  <25.965239, 33.779236, 21.201403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138971, 33.861229, 21.910442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754868, 33.749668, 21.914686>,  <25.524405, 33.682732, 21.917233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754868, 33.749668, 21.914686>,  <26.138971, 33.861229, 21.910442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754868, 33.749668, 21.914686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208700, -0.692263, 0.690808,
		-0.185327, 0.665569, 0.722960,
		-0.960260, -0.278907, 0.010609,
		25.466789, 33.665997, 21.917870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091749, 33.833412, 22.654598>,  <26.138971, 33.861229, 21.910442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091749, 33.833412, 22.654598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787863, 33.614922, 22.513479>,  <25.605532, 33.483826, 22.428808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787863, 33.614922, 22.513479>,  <26.091749, 33.833412, 22.654598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787863, 33.614922, 22.513479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280485, -0.764758, 0.580064,
		-0.586654, 0.341728, 0.734206,
		-0.759714, -0.546230, -0.352799,
		25.559948, 33.451054, 22.407639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674517, 33.603233, 23.248135>,  <26.091749, 33.833412, 22.654598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674517, 33.603233, 23.248135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637569, 33.344822, 22.945055>,  <25.615400, 33.189774, 22.763206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637569, 33.344822, 22.945055>,  <25.674517, 33.603233, 23.248135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637569, 33.344822, 22.945055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229677, -0.754258, 0.615097,
		-0.968874, -0.117210, 0.218049,
		-0.092369, -0.646032, -0.757701,
		25.609859, 33.151012, 22.717745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352043, 32.990723, 23.580318>,  <25.674517, 33.603233, 23.248135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352043, 32.990723, 23.580318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469896, 32.838123, 23.229856>,  <25.540607, 32.746563, 23.019579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469896, 32.838123, 23.229856>,  <25.352043, 32.990723, 23.580318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469896, 32.838123, 23.229856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216949, -0.866212, 0.450123,
		-0.930659, -0.322702, -0.172447,
		0.294631, -0.381499, -0.876157,
		25.558285, 32.723675, 22.967009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074759, 32.196888, 23.634495>,  <25.352043, 32.990723, 23.580318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074759, 32.196888, 23.634495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372297, 32.220055, 23.368160>,  <25.550821, 32.233955, 23.208361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372297, 32.220055, 23.368160>,  <25.074759, 32.196888, 23.634495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372297, 32.220055, 23.368160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460774, -0.766077, 0.448123,
		-0.484126, -0.640134, -0.596532,
		0.743848, 0.057919, -0.665834,
		25.595451, 32.237431, 23.168409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177057, 31.517897, 23.408308>,  <25.074759, 32.196888, 23.634495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177057, 31.517897, 23.408308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518711, 31.718567, 23.353504>,  <25.723703, 31.838970, 23.320621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518711, 31.718567, 23.353504>,  <25.177057, 31.517897, 23.408308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518711, 31.718567, 23.353504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504679, -0.736030, 0.451175,
		0.125501, -0.454511, -0.881856,
		0.854136, 0.501677, -0.137009,
		25.774952, 31.869070, 23.312401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624207, 31.074059, 23.198700>,  <25.177057, 31.517897, 23.408308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624207, 31.074059, 23.198700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872540, 31.353773, 23.340441>,  <26.021540, 31.521603, 23.425486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872540, 31.353773, 23.340441>,  <25.624207, 31.074059, 23.198700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872540, 31.353773, 23.340441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463947, -0.692094, 0.552955,
		0.631920, -0.178890, -0.754106,
		0.620830, 0.699289, 0.354352,
		26.058788, 31.563560, 23.446747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290674, 30.780783, 23.110706>,  <25.624207, 31.074059, 23.198700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290674, 30.780783, 23.110706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349419, 31.086275, 23.362150>,  <26.384666, 31.269571, 23.513016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349419, 31.086275, 23.362150>,  <26.290674, 30.780783, 23.110706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349419, 31.086275, 23.362150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683739, -0.537612, 0.493431,
		0.714795, 0.357337, -0.601148,
		0.146863, 0.763730, 0.628608,
		26.393478, 31.315393, 23.550732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980854, 30.772154, 23.159857>,  <26.290674, 30.780783, 23.110706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980854, 30.772154, 23.159857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873259, 30.966824, 23.492311>,  <26.808701, 31.083626, 23.691784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873259, 30.966824, 23.492311>,  <26.980854, 30.772154, 23.159857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873259, 30.966824, 23.492311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824460, -0.329760, 0.459918,
		0.497907, 0.808953, -0.312543,
		-0.268988, 0.486676, 0.831139,
		26.792562, 31.112827, 23.741653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572283, 31.030619, 23.402946>,  <26.980854, 30.772154, 23.159857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572283, 31.030619, 23.402946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341713, 31.018074, 23.729567>,  <27.203371, 31.010548, 23.925539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341713, 31.018074, 23.729567>,  <27.572283, 31.030619, 23.402946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341713, 31.018074, 23.729567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717084, -0.498562, 0.487058,
		0.391825, 0.866286, 0.309873,
		-0.576423, -0.031363, 0.816550,
		27.168787, 31.008665, 23.974531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008245, 31.219315, 23.888660>,  <27.572283, 31.030619, 23.402946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008245, 31.219315, 23.888660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712986, 31.043491, 24.093374>,  <27.535830, 30.937998, 24.216202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712986, 31.043491, 24.093374>,  <28.008245, 31.219315, 23.888660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712986, 31.043491, 24.093374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674437, -0.462393, 0.575610,
		-0.016367, 0.770054, 0.637769,
		-0.738151, -0.439556, 0.511785,
		27.491541, 30.911625, 24.246910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914906, 31.449587, 24.673779>,  <28.008245, 31.219315, 23.888660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914906, 31.449587, 24.673779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727861, 31.096497, 24.655315>,  <27.615635, 30.884642, 24.644238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727861, 31.096497, 24.655315>,  <27.914906, 31.449587, 24.673779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727861, 31.096497, 24.655315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321124, -0.218300, 0.921534,
		-0.823540, 0.416097, 0.385545,
		-0.467612, -0.882728, -0.046160,
		27.587578, 30.831678, 24.641468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369274, 31.320490, 25.271490>,  <27.914906, 31.449587, 24.673779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369274, 31.320490, 25.271490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504629, 30.971882, 25.129534>,  <27.585842, 30.762716, 25.044361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504629, 30.971882, 25.129534>,  <27.369274, 31.320490, 25.271490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504629, 30.971882, 25.129534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338279, -0.239263, 0.910121,
		-0.878101, -0.428025, 0.213853,
		0.338388, -0.871520, -0.354889,
		27.606146, 30.710426, 25.023067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692108, 30.894388, 25.785217>,  <27.369274, 31.320490, 25.271490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692108, 30.894388, 25.785217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825344, 30.614634, 25.532265>,  <27.905285, 30.446781, 25.380493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825344, 30.614634, 25.532265>,  <27.692108, 30.894388, 25.785217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825344, 30.614634, 25.532265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640146, -0.324689, 0.696269,
		-0.692290, -0.636736, 0.339560,
		0.333088, -0.699388, -0.632383,
		27.925270, 30.404818, 25.342550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727911, 30.219378, 26.188061>,  <27.692108, 30.894388, 25.785217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727911, 30.219378, 26.188061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947378, 30.161274, 25.858730>,  <28.079058, 30.126411, 25.661133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947378, 30.161274, 25.858730>,  <27.727911, 30.219378, 26.188061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947378, 30.161274, 25.858730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599090, -0.618584, 0.508375,
		-0.583141, -0.772175, -0.252375,
		0.548669, -0.145259, -0.823324,
		28.111979, 30.117695, 25.611732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917681, 29.512856, 26.275728>,  <27.727911, 30.219378, 26.188061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917681, 29.512856, 26.275728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162846, 29.655592, 25.993734>,  <28.309944, 29.741234, 25.824537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162846, 29.655592, 25.993734>,  <27.917681, 29.512856, 26.275728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162846, 29.655592, 25.993734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734381, -0.586513, 0.341593,
		-0.291588, -0.727095, -0.621538,
		0.612911, 0.356842, -0.704985,
		28.346720, 29.762644, 25.782238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304619, 28.902058, 26.019901>,  <27.917681, 29.512856, 26.275728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304619, 28.902058, 26.019901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520033, 29.230703, 25.945143>,  <28.649282, 29.427891, 25.900288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520033, 29.230703, 25.945143>,  <28.304619, 28.902058, 26.019901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520033, 29.230703, 25.945143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816368, -0.453857, 0.357150,
		0.208614, -0.344915, -0.915158,
		0.538537, 0.821613, -0.186897,
		28.681595, 29.477186, 25.889074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965443, 28.593306, 25.957567>,  <28.304619, 28.902058, 26.019901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965443, 28.593306, 25.957567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046352, 28.983917, 25.987175>,  <29.094898, 29.218285, 26.004940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046352, 28.983917, 25.987175>,  <28.965443, 28.593306, 25.957567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046352, 28.983917, 25.987175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954545, -0.213487, 0.208005,
		0.218925, 0.028582, -0.975323,
		0.202274, 0.976528, 0.074021,
		29.107035, 29.276876, 26.009380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626627, 28.687294, 25.644991>,  <28.965443, 28.593306, 25.957567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626627, 28.687294, 25.644991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568344, 29.016197, 25.865049>,  <29.533375, 29.213539, 25.997084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568344, 29.016197, 25.865049>,  <29.626627, 28.687294, 25.644991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568344, 29.016197, 25.865049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848421, -0.182173, 0.496985,
		0.508873, 0.539168, -0.671079,
		-0.145706, 0.822259, 0.550145,
		29.524632, 29.262875, 26.030092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151606, 29.139137, 25.609869>,  <29.626627, 28.687294, 25.644991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151606, 29.139137, 25.609869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981535, 29.182055, 25.969360>,  <29.879494, 29.207806, 26.185055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981535, 29.182055, 25.969360>,  <30.151606, 29.139137, 25.609869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981535, 29.182055, 25.969360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878768, -0.188881, 0.438281,
		0.216779, 0.976121, -0.013980,
		-0.425175, 0.107295, 0.898729,
		29.853983, 29.214243, 26.238979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670872, 29.508631, 25.978857>,  <30.151606, 29.139137, 25.609869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670872, 29.508631, 25.978857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426380, 29.350983, 26.253395>,  <30.279684, 29.256393, 26.418118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426380, 29.350983, 26.253395>,  <30.670872, 29.508631, 25.978857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426380, 29.350983, 26.253395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791221, -0.283269, 0.541967,
		-0.019180, 0.874316, 0.484978,
		-0.611230, -0.394120, 0.686344,
		30.243011, 29.232746, 26.459299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952972, 29.763048, 26.613110>,  <30.670872, 29.508631, 25.978857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952972, 29.763048, 26.613110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707909, 29.462090, 26.709896>,  <30.560871, 29.281513, 26.767967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707909, 29.462090, 26.709896>,  <30.952972, 29.763048, 26.613110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707909, 29.462090, 26.709896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669204, -0.330959, 0.665306,
		-0.420494, 0.569530, 0.706272,
		-0.612659, -0.752398, 0.241965,
		30.524111, 29.236370, 26.782486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999859, 29.823851, 27.312078>,  <30.952972, 29.763048, 26.613110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999859, 29.823851, 27.312078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871355, 29.453274, 27.233593>,  <30.794252, 29.230928, 27.186502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871355, 29.453274, 27.233593>,  <30.999859, 29.823851, 27.312078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871355, 29.453274, 27.233593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570098, -0.354648, 0.741089,
		-0.756162, 0.126221, 0.642096,
		-0.321259, -0.926441, -0.196212,
		30.774977, 29.175341, 27.174728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922722, 29.627253, 27.940969>,  <30.999859, 29.823851, 27.312078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922722, 29.627253, 27.940969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949883, 29.295084, 27.719778>,  <30.966179, 29.095783, 27.587063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949883, 29.295084, 27.719778>,  <30.922722, 29.627253, 27.940969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949883, 29.295084, 27.719778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572678, -0.421416, 0.703170,
		-0.816963, -0.364426, 0.446951,
		0.067901, -0.830423, -0.552980,
		30.970253, 29.045958, 27.553885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741192, 29.058901, 28.341635>,  <30.922722, 29.627253, 27.940969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741192, 29.058901, 28.341635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969122, 28.894485, 28.057003>,  <31.105881, 28.795835, 27.886225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969122, 28.894485, 28.057003>,  <30.741192, 29.058901, 28.341635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969122, 28.894485, 28.057003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543154, -0.461415, 0.701484,
		-0.616671, -0.786221, -0.039668,
		0.569825, -0.411039, -0.711580,
		31.140070, 28.771173, 27.843529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759640, 28.318340, 28.434423>,  <30.741192, 29.058901, 28.341635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759640, 28.318340, 28.434423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084776, 28.436535, 28.233635>,  <31.279858, 28.507452, 28.113161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084776, 28.436535, 28.233635>,  <30.759640, 28.318340, 28.434423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084776, 28.436535, 28.233635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568526, -0.214939, 0.794090,
		0.126750, -0.930854, -0.342703,
		0.812842, 0.295487, -0.501971,
		31.328629, 28.525181, 28.083044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190973, 27.755201, 28.484791>,  <30.759640, 28.318340, 28.434423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190973, 27.755201, 28.484791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423841, 28.069992, 28.403061>,  <31.563562, 28.258865, 28.354023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423841, 28.069992, 28.403061>,  <31.190973, 27.755201, 28.484791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423841, 28.069992, 28.403061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635862, -0.284065, 0.717625,
		0.506713, -0.547701, -0.665782,
		0.582169, 0.786976, -0.204323,
		31.598492, 28.306086, 28.341764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780998, 27.461348, 28.520126>,  <31.190973, 27.755201, 28.484791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780998, 27.461348, 28.520126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872301, 27.849684, 28.549421>,  <31.927084, 28.082685, 28.566999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872301, 27.849684, 28.549421>,  <31.780998, 27.461348, 28.520126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872301, 27.849684, 28.549421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583273, -0.196591, 0.788127,
		0.779545, -0.137179, -0.611139,
		0.228259, 0.970842, 0.073239,
		31.940779, 28.140936, 28.571394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533997, 27.478453, 28.569723>,  <31.780998, 27.461348, 28.520126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533997, 27.478453, 28.569723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414665, 27.827742, 28.723860>,  <32.343067, 28.037315, 28.816341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414665, 27.827742, 28.723860>,  <32.533997, 27.478453, 28.569723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414665, 27.827742, 28.723860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553498, -0.170634, 0.815184,
		0.777588, 0.456474, -0.432422,
		-0.298325, 0.873221, 0.385340,
		32.325169, 28.089708, 28.839462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116608, 27.758097, 28.930641>,  <32.533997, 27.478453, 28.569723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116608, 27.758097, 28.930641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813374, 27.963802, 29.091061>,  <32.631432, 28.087225, 29.187311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813374, 27.963802, 29.091061>,  <33.116608, 27.758097, 28.930641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813374, 27.963802, 29.091061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518326, 0.101914, 0.849089,
		0.395783, 0.851556, -0.343816,
		-0.758086, 0.514263, 0.401048,
		32.585949, 28.118082, 29.211374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441746, 28.353186, 29.173687>,  <33.116608, 27.758097, 28.930641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441746, 28.353186, 29.173687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111591, 28.292919, 29.391327>,  <32.913498, 28.256760, 29.521910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111591, 28.292919, 29.391327>,  <33.441746, 28.353186, 29.173687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111591, 28.292919, 29.391327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556828, -0.058157, 0.828589,
		-0.093199, 0.986872, 0.131898,
		-0.825383, -0.150668, 0.544098,
		32.863976, 28.247719, 29.554556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663376, 28.585144, 29.859585>,  <33.441746, 28.353186, 29.173687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663376, 28.585144, 29.859585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324772, 28.397673, 29.960585>,  <33.121609, 28.285191, 30.021185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324772, 28.397673, 29.960585>,  <33.663376, 28.585144, 29.859585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324772, 28.397673, 29.960585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357815, -0.149704, 0.921714,
		-0.394186, 0.870592, 0.294426,
		-0.846514, -0.468677, 0.252500,
		33.070816, 28.257071, 30.036335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381840, 28.933443, 30.440775>,  <33.663376, 28.585144, 29.859585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381840, 28.933443, 30.440775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237606, 28.561024, 30.463150>,  <33.151066, 28.337572, 30.476576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237606, 28.561024, 30.463150>,  <33.381840, 28.933443, 30.440775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237606, 28.561024, 30.463150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491846, -0.138841, 0.859541,
		-0.792509, 0.337446, 0.507996,
		-0.360580, -0.931050, 0.055938,
		33.129433, 28.281710, 30.479931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066467, 28.801973, 31.134659>,  <33.381840, 28.933443, 30.440775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066467, 28.801973, 31.134659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157463, 28.441589, 30.986866>,  <33.212063, 28.225359, 30.898190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157463, 28.441589, 30.986866>,  <33.066467, 28.801973, 31.134659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157463, 28.441589, 30.986866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543836, -0.197196, 0.815693,
		-0.807768, -0.386502, 0.445115,
		0.227492, -0.900961, -0.369482,
		33.225712, 28.171301, 30.876020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060078, 28.308748, 31.748980>,  <33.066467, 28.801973, 31.134659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060078, 28.308748, 31.748980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223759, 28.096766, 31.451874>,  <33.321968, 27.969576, 31.273609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223759, 28.096766, 31.451874>,  <33.060078, 28.308748, 31.748980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223759, 28.096766, 31.451874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621221, -0.434425, 0.652196,
		-0.668312, -0.728300, 0.151454,
		0.409199, -0.529956, -0.742767,
		33.346519, 27.937778, 31.229044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068115, 27.632896, 31.987413>,  <33.060078, 28.308748, 31.748980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068115, 27.632896, 31.987413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357426, 27.598166, 31.713381>,  <33.531010, 27.577326, 31.548962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357426, 27.598166, 31.713381>,  <33.068115, 27.632896, 31.987413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357426, 27.598166, 31.713381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579164, -0.464024, 0.670262,
		-0.376091, -0.881557, -0.285330,
		0.723274, -0.086827, -0.685081,
		33.574406, 27.572117, 31.507856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242096, 26.953695, 31.953667>,  <33.068115, 27.632896, 31.987413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242096, 26.953695, 31.953667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559685, 27.147564, 31.806860>,  <33.750237, 27.263885, 31.718777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559685, 27.147564, 31.806860>,  <33.242096, 26.953695, 31.953667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559685, 27.147564, 31.806860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591989, -0.478907, 0.648226,
		0.138411, -0.731943, -0.667160,
		0.793972, 0.484673, -0.367016,
		33.797878, 27.292965, 31.696754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796673, 26.397650, 32.001610>,  <33.242096, 26.953695, 31.953667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796673, 26.397650, 32.001610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969200, 26.757431, 31.973484>,  <34.072716, 26.973301, 31.956608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969200, 26.757431, 31.973484>,  <33.796673, 26.397650, 32.001610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969200, 26.757431, 31.973484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619249, -0.238469, 0.748107,
		0.656120, -0.366216, -0.659843,
		0.431321, 0.899454, -0.070314,
		34.098595, 27.027267, 31.952391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534859, 26.385374, 31.753546>,  <33.796673, 26.397650, 32.001610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534859, 26.385374, 31.753546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466000, 26.689697, 32.003838>,  <34.424683, 26.872292, 32.154015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466000, 26.689697, 32.003838>,  <34.534859, 26.385374, 31.753546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466000, 26.689697, 32.003838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757470, -0.303860, 0.577848,
		0.629765, 0.573448, -0.523979,
		-0.172150, 0.760807, 0.625730,
		34.414356, 26.917940, 32.191555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159412, 26.885584, 31.870510>,  <34.534859, 26.385374, 31.753546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159412, 26.885584, 31.870510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914288, 26.851400, 32.184746>,  <34.767212, 26.830891, 32.373287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914288, 26.851400, 32.184746>,  <35.159412, 26.885584, 31.870510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914288, 26.851400, 32.184746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768712, -0.294863, 0.567572,
		0.183137, 0.951710, 0.246391,
		-0.612815, -0.085460, 0.785591,
		34.730442, 26.825762, 32.420422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466457, 27.352631, 32.412827>,  <35.159412, 26.885584, 31.870510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466457, 27.352631, 32.412827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245258, 27.025501, 32.476517>,  <35.112537, 26.829224, 32.514732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245258, 27.025501, 32.476517>,  <35.466457, 27.352631, 32.412827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245258, 27.025501, 32.476517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777573, -0.437931, 0.451218,
		-0.299287, 0.373334, 0.878094,
		-0.552999, -0.817825, 0.159227,
		35.079357, 26.780153, 32.524284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444981, 27.127285, 33.158348>,  <35.466457, 27.352631, 32.412827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444981, 27.127285, 33.158348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281704, 27.324793, 33.465481>,  <35.183739, 27.443296, 33.649761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281704, 27.324793, 33.465481>,  <35.444981, 27.127285, 33.158348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281704, 27.324793, 33.465481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867162, 0.472605, 0.157081,
		-0.285321, 0.729957, -0.621091,
		-0.408193, 0.493768, 0.767836,
		35.159245, 27.472923, 33.695831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645309, 27.772196, 33.015156>,  <35.444981, 27.127285, 33.158348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645309, 27.772196, 33.015156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572025, 27.731546, 33.406277>,  <35.528053, 27.707157, 33.640949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572025, 27.731546, 33.406277>,  <35.645309, 27.772196, 33.015156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572025, 27.731546, 33.406277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906032, 0.368529, 0.208066,
		-0.381495, 0.924044, 0.024557,
		-0.183212, -0.101626, 0.977806,
		35.517063, 27.701059, 33.699619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468998, 27.659096, 33.002846>,  <35.645309, 27.772196, 33.015156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468998, 27.659096, 33.002846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489697, 27.367294, 32.730038>,  <36.502117, 27.192213, 32.566353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489697, 27.367294, 32.730038>,  <36.468998, 27.659096, 33.002846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489697, 27.367294, 32.730038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722566, 0.498768, -0.478675,
		0.689363, -0.468031, 0.552924,
		0.051746, -0.729505, -0.682016,
		36.505219, 27.148443, 32.525433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069416, 27.299555, 32.983101>,  <36.468998, 27.659096, 33.002846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069416, 27.299555, 32.983101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914783, 27.296555, 32.614212>,  <36.822002, 27.294754, 32.392879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914783, 27.296555, 32.614212>,  <37.069416, 27.299555, 32.983101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914783, 27.296555, 32.614212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901265, 0.209054, -0.379498,
		0.195639, -0.977875, -0.074062,
		-0.386584, -0.007495, -0.922223,
		36.798809, 27.294304, 32.337543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392338, 26.791115, 32.431828>,  <37.069416, 27.299555, 32.983101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392338, 26.791115, 32.431828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232704, 27.096092, 32.228096>,  <37.136925, 27.279079, 32.105858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232704, 27.096092, 32.228096>,  <37.392338, 26.791115, 32.431828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232704, 27.096092, 32.228096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882111, 0.167660, -0.440193,
		-0.250228, -0.624956, -0.739470,
		-0.399081, 0.762443, -0.509328,
		37.112980, 27.324825, 32.075298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970791, 26.975115, 32.012455>,  <37.392338, 26.791115, 32.431828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970791, 26.975115, 32.012455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689217, 27.238964, 31.907104>,  <37.520271, 27.397274, 31.843895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689217, 27.238964, 31.907104>,  <37.970791, 26.975115, 32.012455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689217, 27.238964, 31.907104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653524, 0.456305, -0.603897,
		-0.278167, -0.597228, -0.752292,
		-0.703939, 0.659625, -0.263374,
		37.478035, 27.436852, 31.828093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040684, 27.091631, 31.308546>,  <37.970791, 26.975115, 32.012455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040684, 27.091631, 31.308546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879784, 27.426344, 31.457134>,  <37.783245, 27.627172, 31.546288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879784, 27.426344, 31.457134>,  <38.040684, 27.091631, 31.308546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879784, 27.426344, 31.457134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561855, 0.545977, -0.621473,
		-0.722852, -0.041274, -0.689769,
		-0.402249, 0.836783, 0.371470,
		37.759109, 27.677380, 31.568575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733646, 27.590412, 30.802946>,  <38.040684, 27.091631, 31.308546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733646, 27.590412, 30.802946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834724, 27.838959, 31.099607>,  <37.895370, 27.988087, 31.277605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834724, 27.838959, 31.099607>,  <37.733646, 27.590412, 30.802946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834724, 27.838959, 31.099607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289102, 0.683022, -0.670746,
		-0.923345, 0.383907, -0.007042,
		0.252694, 0.621366, 0.741654,
		37.910534, 28.025368, 31.322104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478561, 28.302248, 30.629864>,  <37.733646, 27.590412, 30.802946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478561, 28.302248, 30.629864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814960, 28.352280, 30.840420>,  <38.016800, 28.382298, 30.966753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814960, 28.352280, 30.840420>,  <37.478561, 28.302248, 30.629864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814960, 28.352280, 30.840420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253280, 0.768710, -0.587312,
		-0.478100, 0.627249, 0.614800,
		0.840993, 0.125077, 0.526389,
		38.067257, 28.389803, 30.998337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464310, 28.327517, 29.967831>,  <37.478561, 28.302248, 30.629864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464310, 28.327517, 29.967831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692856, 28.626085, 30.104294>,  <37.829983, 28.805227, 30.186172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692856, 28.626085, 30.104294>,  <37.464310, 28.327517, 29.967831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692856, 28.626085, 30.104294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820688, 0.518087, 0.240951,
		0.003101, -0.417658, 0.908599,
		0.571369, 0.746423, 0.341160,
		37.864265, 28.850012, 30.206642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779598, 29.017782, 29.619993>,  <37.464310, 28.327517, 29.967831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779598, 29.017782, 29.619993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149940, 29.081974, 29.483149>,  <38.372147, 29.120489, 29.401043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149940, 29.081974, 29.483149>,  <37.779598, 29.017782, 29.619993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149940, 29.081974, 29.483149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377778, -0.413911, 0.828228,
		-0.008691, -0.896060, -0.443847,
		0.925855, 0.160478, -0.342109,
		38.427696, 29.130117, 29.380516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197342, 28.441055, 29.847118>,  <37.779598, 29.017782, 29.619993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197342, 28.441055, 29.847118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425610, 28.765604, 29.796499>,  <38.562569, 28.960333, 29.766129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425610, 28.765604, 29.796499>,  <38.197342, 28.441055, 29.847118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425610, 28.765604, 29.796499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545165, -0.259086, 0.797289,
		0.614111, -0.523976, -0.590183,
		0.570669, 0.811371, -0.126546,
		38.596809, 29.009016, 29.758535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666435, 28.332106, 30.406769>,  <38.197342, 28.441055, 29.847118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666435, 28.332106, 30.406769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786449, 28.681168, 30.252647>,  <38.858456, 28.890604, 30.160175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786449, 28.681168, 30.252647>,  <38.666435, 28.332106, 30.406769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786449, 28.681168, 30.252647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508378, 0.195499, 0.838649,
		0.807176, -0.447500, -0.384982,
		0.300031, 0.872653, -0.385302,
		38.876457, 28.942963, 30.137056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399426, 28.383005, 30.322834>,  <38.666435, 28.332106, 30.406769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399426, 28.383005, 30.322834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274784, 28.757435, 30.388155>,  <39.200001, 28.982094, 30.427347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274784, 28.757435, 30.388155>,  <39.399426, 28.383005, 30.322834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274784, 28.757435, 30.388155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599913, 0.060522, 0.797773,
		0.736892, 0.346554, -0.580422,
		-0.311600, 0.936076, 0.163304,
		39.181305, 29.038258, 30.437145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017387, 28.921307, 30.277336>,  <39.399426, 28.383005, 30.322834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017387, 28.921307, 30.277336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718044, 29.047123, 30.510925>,  <39.538437, 29.122612, 30.651079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718044, 29.047123, 30.510925>,  <40.017387, 28.921307, 30.277336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718044, 29.047123, 30.510925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631384, 0.068015, 0.772482,
		0.203257, 0.946805, -0.249494,
		-0.748359, 0.314539, 0.583973,
		39.493538, 29.141485, 30.686117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225876, 29.612352, 30.747719>,  <40.017387, 28.921307, 30.277336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225876, 29.612352, 30.747719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949795, 29.371378, 30.908062>,  <39.784145, 29.226793, 31.004267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949795, 29.371378, 30.908062>,  <40.225876, 29.612352, 30.747719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949795, 29.371378, 30.908062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553328, -0.082417, 0.828876,
		-0.466307, 0.793901, 0.390229,
		-0.690207, -0.602435, 0.400856,
		39.742733, 29.190647, 31.028318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275959, 30.113895, 31.337517>,  <40.225876, 29.612352, 30.747719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275959, 30.113895, 31.337517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906303, 29.961094, 31.334827>,  <39.684509, 29.869413, 31.333214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906303, 29.961094, 31.334827>,  <40.275959, 30.113895, 31.337517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906303, 29.961094, 31.334827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018994, -0.063510, 0.997800,
		-0.381590, 0.921976, 0.065947,
		-0.924136, -0.382004, -0.006723,
		39.629063, 29.846493, 31.332811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776978, 30.584309, 31.638727>,  <40.275959, 30.113895, 31.337517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776978, 30.584309, 31.638727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664703, 30.203455, 31.687149>,  <39.597340, 29.974943, 31.716202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664703, 30.203455, 31.687149>,  <39.776978, 30.584309, 31.638727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664703, 30.203455, 31.687149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077561, 0.103214, 0.991631,
		-0.956660, 0.287727, 0.044877,
		-0.280687, -0.952135, 0.121057,
		39.580498, 29.917814, 31.723467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336109, 30.503887, 32.159454>,  <39.776978, 30.584309, 31.638727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336109, 30.503887, 32.159454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492989, 30.136852, 32.133492>,  <39.587116, 29.916632, 32.117912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492989, 30.136852, 32.133492>,  <39.336109, 30.503887, 32.159454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492989, 30.136852, 32.133492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132826, -0.013330, 0.991050,
		-0.910239, -0.397312, 0.116651,
		0.392201, -0.917587, -0.064907,
		39.610649, 29.861576, 32.114021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996513, 30.207100, 32.670010>,  <39.336109, 30.503887, 32.159454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996513, 30.207100, 32.670010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303997, 29.958420, 32.609921>,  <39.488487, 29.809212, 32.573868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303997, 29.958420, 32.609921>,  <38.996513, 30.207100, 32.670010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303997, 29.958420, 32.609921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113558, -0.098482, 0.988638,
		-0.629432, -0.777039, -0.005105,
		0.768713, -0.621701, -0.150226,
		39.534611, 29.771910, 32.564854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890820, 29.628281, 33.043278>,  <38.996513, 30.207100, 32.670010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890820, 29.628281, 33.043278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287827, 29.621666, 32.994896>,  <39.526031, 29.617697, 32.965866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287827, 29.621666, 32.994896>,  <38.890820, 29.628281, 33.043278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287827, 29.621666, 32.994896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119825, -0.057651, 0.991120,
		-0.023357, -0.998200, -0.055239,
		0.992520, -0.016530, -0.120956,
		39.585583, 29.616705, 32.958611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141399, 28.997065, 33.298065>,  <38.890820, 29.628281, 33.043278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141399, 28.997065, 33.298065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413834, 29.289400, 33.315933>,  <39.577293, 29.464802, 33.326653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413834, 29.289400, 33.315933>,  <39.141399, 28.997065, 33.298065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413834, 29.289400, 33.315933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065357, -0.121442, 0.990444,
		0.729280, -0.671659, -0.130478,
		0.681086, 0.730839, 0.044668,
		39.618160, 29.508652, 33.329334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768299, 28.938931, 33.778301>,  <39.141399, 28.997065, 33.298065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768299, 28.938931, 33.778301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744350, 29.335714, 33.733700>,  <39.729980, 29.573784, 33.706940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744350, 29.335714, 33.733700>,  <39.768299, 28.938931, 33.778301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744350, 29.335714, 33.733700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035040, 0.109548, 0.993364,
		0.997591, 0.063380, 0.028199,
		-0.059870, 0.991959, -0.111505,
		39.726391, 29.633303, 33.700249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104549, 28.561462, 33.213261>,  <39.768299, 28.938931, 33.778301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104549, 28.561462, 33.213261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351578, 28.422743, 33.495632>,  <40.499794, 28.339512, 33.665054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351578, 28.422743, 33.495632>,  <40.104549, 28.561462, 33.213261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351578, 28.422743, 33.495632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783707, -0.195601, 0.589528,
		-0.066366, -0.917318, -0.392585,
		0.617574, -0.346796, 0.705928,
		40.536850, 28.318703, 33.707409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770203, 27.861561, 33.576160>,  <40.104549, 28.561462, 33.213261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770203, 27.861561, 33.576160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040333, 28.017357, 33.826675>,  <40.202412, 28.110834, 33.976982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040333, 28.017357, 33.826675>,  <39.770203, 27.861561, 33.576160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040333, 28.017357, 33.826675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637601, -0.118465, 0.761204,
		0.370676, -0.913379, 0.168337,
		0.675326, 0.389492, 0.626283,
		40.242931, 28.134205, 34.014561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819336, 27.490536, 34.150459>,  <39.770203, 27.861561, 33.576160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819336, 27.490536, 34.150459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944157, 27.834389, 34.312279>,  <40.019051, 28.040701, 34.409370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944157, 27.834389, 34.312279>,  <39.819336, 27.490536, 34.150459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944157, 27.834389, 34.312279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535016, -0.192870, 0.822532,
		0.785099, -0.473113, 0.399730,
		0.312054, 0.859631, 0.404545,
		40.037773, 28.092278, 34.433643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166294, 27.445637, 34.905247>,  <39.819336, 27.490536, 34.150459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166294, 27.445637, 34.905247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990067, 27.796700, 34.829754>,  <39.884331, 28.007338, 34.784458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990067, 27.796700, 34.829754>,  <40.166294, 27.445637, 34.905247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990067, 27.796700, 34.829754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568544, -0.110091, 0.815253,
		0.694734, 0.466478, 0.547488,
		-0.440571, 0.877655, -0.188729,
		39.857895, 28.059996, 34.773136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256348, 28.045723, 35.384182>,  <40.166294, 27.445637, 34.905247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256348, 28.045723, 35.384182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889061, 28.062199, 35.226612>,  <39.668690, 28.072084, 35.132072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889061, 28.062199, 35.226612>,  <40.256348, 28.045723, 35.384182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889061, 28.062199, 35.226612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394640, -0.179549, 0.901122,
		-0.033612, 0.982886, 0.181121,
		-0.918221, 0.041189, -0.393922,
		39.613594, 28.074556, 35.108437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832123, 28.527500, 35.856106>,  <40.256348, 28.045723, 35.384182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832123, 28.527500, 35.856106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592682, 28.287533, 35.643776>,  <39.449017, 28.143553, 35.516376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592682, 28.287533, 35.643776>,  <39.832123, 28.527500, 35.856106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592682, 28.287533, 35.643776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577478, -0.136066, 0.804988,
		-0.555154, 0.788406, -0.264991,
		-0.598601, -0.599919, -0.530824,
		39.413101, 28.107557, 35.484528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362816, 29.179565, 36.022209>,  <39.832123, 28.527500, 35.856106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362816, 29.179565, 36.022209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709545, 29.356096, 36.115036>,  <39.917583, 29.462015, 36.170731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709545, 29.356096, 36.115036>,  <39.362816, 29.179565, 36.022209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709545, 29.356096, 36.115036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131658, -0.246317, 0.960205,
		0.480927, -0.862878, -0.155408,
		0.866819, 0.441328, 0.232065,
		39.969589, 29.488495, 36.184654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684181, 28.741217, 36.515644>,  <39.362816, 29.179565, 36.022209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684181, 28.741217, 36.515644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932083, 29.053904, 36.543430>,  <40.080826, 29.241516, 36.560104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932083, 29.053904, 36.543430>,  <39.684181, 28.741217, 36.515644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932083, 29.053904, 36.543430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053618, -0.046135, 0.997495,
		0.782963, -0.621926, 0.013322,
		0.619754, 0.781716, 0.069469,
		40.118008, 29.288418, 36.564270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213562, 28.584152, 36.979912>,  <39.684181, 28.741217, 36.515644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213562, 28.584152, 36.979912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191818, 28.983341, 36.966698>,  <40.178772, 29.222855, 36.958767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191818, 28.983341, 36.966698>,  <40.213562, 28.584152, 36.979912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191818, 28.983341, 36.966698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037231, 0.035091, 0.998690,
		0.997827, 0.053063, -0.039063,
		-0.054364, 0.997974, -0.033039,
		40.175510, 29.282734, 36.956787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252117, 28.672951, 37.723389>,  <40.213562, 28.584152, 36.979912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252117, 28.672951, 37.723389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181076, 29.009068, 37.518501>,  <40.138451, 29.210737, 37.395569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181076, 29.009068, 37.518501>,  <40.252117, 28.672951, 37.723389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181076, 29.009068, 37.518501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071864, 0.508028, 0.858337,
		0.981475, 0.189252, -0.029840,
		-0.177601, 0.840292, -0.512218,
		40.127796, 29.261154, 37.364838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802021, 29.161026, 37.836678>,  <40.252117, 28.672951, 37.723389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802021, 29.161026, 37.836678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436810, 29.323256, 37.819260>,  <40.217682, 29.420593, 37.808807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436810, 29.323256, 37.819260>,  <40.802021, 29.161026, 37.836678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436810, 29.323256, 37.819260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130551, 0.391692, 0.910787,
		0.386450, 0.825885, -0.410572,
		-0.913024, 0.405574, -0.043549,
		40.162903, 29.444927, 37.806194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832245, 29.950247, 38.013981>,  <40.802021, 29.161026, 37.836678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832245, 29.950247, 38.013981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481129, 29.792940, 38.123405>,  <40.270458, 29.698557, 38.189060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481129, 29.792940, 38.123405>,  <40.832245, 29.950247, 38.013981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481129, 29.792940, 38.123405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016901, 0.545263, 0.838095,
		-0.478755, 0.740291, -0.471978,
		-0.877786, -0.393265, 0.273559,
		40.217793, 29.674961, 38.205475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185631, 30.455122, 37.944988>,  <40.832245, 29.950247, 38.013981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185631, 30.455122, 37.944988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222641, 30.171095, 38.224201>,  <40.244846, 30.000679, 38.391727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222641, 30.171095, 38.224201>,  <40.185631, 30.455122, 37.944988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222641, 30.171095, 38.224201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170985, 0.701954, 0.691393,
		-0.980920, 0.055384, 0.186357,
		0.092522, -0.710066, 0.698030,
		40.250397, 29.958075, 38.433609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625610, 30.541523, 38.415955>,  <40.185631, 30.455122, 37.944988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625610, 30.541523, 38.415955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969448, 30.399918, 38.563339>,  <40.175751, 30.314955, 38.651772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969448, 30.399918, 38.563339>,  <39.625610, 30.541523, 38.415955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969448, 30.399918, 38.563339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001684, 0.723064, 0.690778,
		-0.510968, -0.593171, 0.622141,
		0.859598, -0.354013, 0.368464,
		40.227329, 30.293715, 38.673878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509525, 30.308546, 39.163410>,  <39.625610, 30.541523, 38.415955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509525, 30.308546, 39.163410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901566, 30.381077, 39.131084>,  <40.136787, 30.424595, 39.111691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901566, 30.381077, 39.131084>,  <39.509525, 30.308546, 39.163410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901566, 30.381077, 39.131084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028968, 0.533352, 0.845397,
		0.196395, -0.826230, 0.527990,
		0.980097, 0.181326, -0.080813,
		40.195595, 30.435474, 39.106842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921886, 30.230671, 39.773083>,  <39.509525, 30.308546, 39.163410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921886, 30.230671, 39.773083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147350, 30.484722, 39.561840>,  <40.282627, 30.637154, 39.435093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147350, 30.484722, 39.561840>,  <39.921886, 30.230671, 39.773083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147350, 30.484722, 39.561840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045446, 0.614539, 0.787576,
		0.824757, -0.467924, 0.317526,
		0.563658, 0.635129, -0.528111,
		40.316448, 30.675261, 39.403408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513840, 30.618961, 40.193134>,  <39.921886, 30.230671, 39.773083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513840, 30.618961, 40.193134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447971, 30.845533, 39.870140>,  <40.408451, 30.981478, 39.676342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447971, 30.845533, 39.870140>,  <40.513840, 30.618961, 40.193134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447971, 30.845533, 39.870140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078246, 0.823587, 0.561767,
		0.983240, 0.029325, -0.179944,
		-0.164673, 0.566432, -0.807489,
		40.398571, 31.015463, 39.627895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059334, 31.185690, 40.128994>,  <40.513840, 30.618961, 40.193134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059334, 31.185690, 40.128994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729584, 31.295429, 39.930950>,  <40.531734, 31.361273, 39.812122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729584, 31.295429, 39.930950>,  <41.059334, 31.185690, 40.128994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729584, 31.295429, 39.930950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033805, 0.896991, 0.440755,
		0.565030, 0.346611, -0.748733,
		-0.824377, 0.274351, -0.495110,
		40.482269, 31.377735, 39.782417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311317, 31.715897, 40.003551>,  <41.059334, 31.185690, 40.128994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311317, 31.715897, 40.003551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925465, 31.793331, 39.931980>,  <40.693954, 31.839792, 39.889038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925465, 31.793331, 39.931980>,  <41.311317, 31.715897, 40.003551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925465, 31.793331, 39.931980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107135, 0.908075, 0.404873,
		0.240857, 0.371383, -0.896695,
		-0.964629, 0.193584, -0.178928,
		40.636074, 31.851406, 39.878304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151848, 32.329056, 39.543430>,  <41.311317, 31.715897, 40.003551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151848, 32.329056, 39.543430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845310, 32.294823, 39.798115>,  <40.661388, 32.274284, 39.950924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845310, 32.294823, 39.798115>,  <41.151848, 32.329056, 39.543430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845310, 32.294823, 39.798115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002569, 0.990671, 0.136252,
		-0.642428, 0.106051, -0.758973,
		-0.766342, -0.085583, 0.636707,
		40.615406, 32.269150, 39.989128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573025, 32.172832, 38.947247>,  <41.151848, 32.329056, 39.543430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573025, 32.172832, 38.947247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754642, 31.816607, 38.958065>,  <41.863613, 31.602871, 38.964558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754642, 31.816607, 38.958065>,  <41.573025, 32.172832, 38.947247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754642, 31.816607, 38.958065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754460, 0.368149, -0.543375,
		0.473955, 0.267123, 0.839054,
		0.454045, -0.890568, 0.027047,
		41.890858, 31.549437, 38.966179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319752, 32.380844, 39.131485>,  <41.573025, 32.172832, 38.947247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319752, 32.380844, 39.131485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224438, 32.060925, 38.911106>,  <42.167248, 31.868973, 38.778877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224438, 32.060925, 38.911106>,  <42.319752, 32.380844, 39.131485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224438, 32.060925, 38.911106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628885, 0.305222, -0.715083,
		0.740082, -0.516878, 0.430250,
		-0.238289, -0.799798, -0.550946,
		42.152950, 31.820986, 38.745823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992550, 31.990374, 38.928436>,  <42.319752, 32.380844, 39.131485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992550, 31.990374, 38.928436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702202, 31.959476, 38.655045>,  <42.527992, 31.940939, 38.491009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702202, 31.959476, 38.655045>,  <42.992550, 31.990374, 38.928436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702202, 31.959476, 38.655045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663358, 0.184109, -0.725300,
		0.181818, -0.979870, -0.082439,
		-0.725878, -0.077186, -0.683479,
		42.484440, 31.936304, 38.450001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147701, 31.464716, 38.344143>,  <42.992550, 31.990374, 38.928436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147701, 31.464716, 38.344143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897900, 31.751514, 38.220264>,  <42.748020, 31.923594, 38.145935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897900, 31.751514, 38.220264>,  <43.147701, 31.464716, 38.344143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897900, 31.751514, 38.220264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601611, 0.188742, -0.776170,
		-0.498058, -0.671039, -0.549223,
		-0.624502, 0.716996, -0.309700,
		42.710548, 31.966614, 38.127354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084316, 31.450327, 37.629658>,  <43.147701, 31.464716, 38.344143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084316, 31.450327, 37.629658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988205, 31.828615, 37.717178>,  <42.930538, 32.055588, 37.769691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988205, 31.828615, 37.717178>,  <43.084316, 31.450327, 37.629658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988205, 31.828615, 37.717178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737187, 0.324427, -0.592707,
		-0.631522, 0.018881, -0.775128,
		-0.240282, 0.945722, 0.218802,
		42.916119, 32.112331, 37.782818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914700, 31.852213, 37.033630>,  <43.084316, 31.450327, 37.629658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914700, 31.852213, 37.033630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085217, 32.068462, 37.323734>,  <43.187527, 32.198212, 37.497795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085217, 32.068462, 37.323734>,  <42.914700, 31.852213, 37.033630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085217, 32.068462, 37.323734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784168, 0.178830, -0.594222,
		-0.450949, 0.822038, -0.347706,
		0.426292, 0.540624, 0.725259,
		43.213104, 32.230648, 37.541313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982960, 32.447117, 36.714630>,  <42.914700, 31.852213, 37.033630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982960, 32.447117, 36.714630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275986, 32.425964, 36.986084>,  <43.451801, 32.413273, 37.148956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275986, 32.425964, 36.986084>,  <42.982960, 32.447117, 36.714630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275986, 32.425964, 36.986084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662829, 0.282334, -0.693502,
		-0.154930, 0.957858, 0.241879,
		0.732567, -0.052880, 0.678638,
		43.495754, 32.410099, 37.189674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301102, 33.089668, 36.631931>,  <42.982960, 32.447117, 36.714630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301102, 33.089668, 36.631931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530567, 32.767109, 36.689381>,  <43.668247, 32.573574, 36.723850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530567, 32.767109, 36.689381>,  <43.301102, 33.089668, 36.631931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530567, 32.767109, 36.689381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316298, 0.056354, -0.946985,
		0.755556, 0.588678, 0.287392,
		0.573665, -0.806401, 0.143619,
		43.702667, 32.525188, 36.732468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882977, 33.134712, 36.237617>,  <43.301102, 33.089668, 36.631931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882977, 33.134712, 36.237617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890869, 32.735973, 36.268368>,  <43.895607, 32.496731, 36.286819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890869, 32.735973, 36.268368>,  <43.882977, 33.134712, 36.237617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890869, 32.735973, 36.268368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332759, -0.065957, -0.940703,
		0.942806, 0.044145, 0.330407,
		0.019735, -0.996846, 0.076875,
		43.896790, 32.436920, 36.291431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614929, 32.722210, 36.152851>,  <43.882977, 33.134712, 36.237617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614929, 32.722210, 36.152851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288395, 32.527157, 36.029037>,  <44.092476, 32.410126, 35.954750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288395, 32.527157, 36.029037>,  <44.614929, 32.722210, 36.152851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288395, 32.527157, 36.029037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391066, -0.072258, -0.917522,
		0.425047, -0.870053, 0.249684,
		-0.816334, -0.487633, -0.309535,
		44.043495, 32.380867, 35.936176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850372, 32.129951, 35.820621>,  <44.614929, 32.722210, 36.152851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850372, 32.129951, 35.820621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486923, 32.215233, 35.676987>,  <44.268852, 32.266403, 35.590805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486923, 32.215233, 35.676987>,  <44.850372, 32.129951, 35.820621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486923, 32.215233, 35.676987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321811, -0.190536, -0.927434,
		-0.266157, -0.958247, 0.104512,
		-0.908624, 0.213210, -0.359087,
		44.214336, 32.279194, 35.569260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545963, 31.555746, 35.388607>,  <44.850372, 32.129951, 35.820621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545963, 31.555746, 35.388607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455044, 31.930676, 35.282959>,  <44.400494, 32.155632, 35.219570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455044, 31.930676, 35.282959>,  <44.545963, 31.555746, 35.388607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455044, 31.930676, 35.282959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255334, -0.204369, -0.945007,
		-0.939755, -0.282239, -0.192877,
		-0.227299, 0.937323, -0.264122,
		44.386852, 32.211872, 35.203724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915218, 32.037399, 34.837883>,  <44.545963, 31.555746, 35.388607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915218, 32.037399, 34.837883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182674, 31.927732, 34.561405>,  <45.343147, 31.861933, 34.395519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182674, 31.927732, 34.561405>,  <44.915218, 32.037399, 34.837883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182674, 31.927732, 34.561405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650544, 0.665910, 0.365179,
		0.360155, -0.693828, 0.623612,
		0.668641, -0.274166, -0.691196,
		45.383266, 31.845482, 34.354046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598301, 31.808338, 35.188400>,  <44.915218, 32.037399, 34.837883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598301, 31.808338, 35.188400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657337, 31.974077, 34.829170>,  <45.692760, 32.073521, 34.613632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657337, 31.974077, 34.829170>,  <45.598301, 31.808338, 35.188400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657337, 31.974077, 34.829170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733201, 0.563578, 0.380521,
		0.663802, -0.714629, -0.220620,
		0.147595, 0.414349, -0.898070,
		45.701614, 32.098381, 34.559750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204319, 31.691511, 34.937305>,  <45.598301, 31.808338, 35.188400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204319, 31.691511, 34.937305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095192, 32.054794, 34.810356>,  <46.029716, 32.272766, 34.734188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095192, 32.054794, 34.810356>,  <46.204319, 31.691511, 34.937305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095192, 32.054794, 34.810356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774552, 0.403021, 0.487485,
		0.570647, -0.112828, -0.813408,
		-0.272819, 0.908209, -0.317374,
		46.013348, 32.327255, 34.715145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.770664, 31.960779, 34.642334>,  <46.204319, 31.691511, 34.937305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.770664, 31.960779, 34.642334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545467, 32.279545, 34.729935>,  <46.410347, 32.470806, 34.782497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545467, 32.279545, 34.729935>,  <46.770664, 31.960779, 34.642334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.545467, 32.279545, 34.729935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825679, 0.553875, 0.107132,
		-0.035927, 0.241144, -0.969824,
		-0.562995, 0.796914, 0.219007,
		46.376568, 32.518620, 34.795635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.873409, 32.574223, 34.127296>,  <46.770664, 31.960779, 34.642334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.873409, 32.574223, 34.127296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779644, 32.666924, 34.504940>,  <46.723385, 32.722546, 34.731525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779644, 32.666924, 34.504940>,  <46.873409, 32.574223, 34.127296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779644, 32.666924, 34.504940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845023, 0.528707, 0.080029,
		-0.480609, 0.816553, -0.319775,
		-0.234415, 0.231755, 0.944108,
		46.709320, 32.736450, 34.788174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.938007, 33.294216, 34.164635>,  <46.873409, 32.574223, 34.127296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.938007, 33.294216, 34.164635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956661, 33.153500, 34.538601>,  <46.967854, 33.069069, 34.762981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956661, 33.153500, 34.538601>,  <46.938007, 33.294216, 34.164635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956661, 33.153500, 34.538601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828230, 0.536853, 0.160699,
		-0.558445, 0.766831, 0.316400,
		0.046631, -0.351793, 0.934915,
		46.970650, 33.047962, 34.819077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.972408, 33.956089, 34.725441>,  <46.938007, 33.294216, 34.164635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.972408, 33.956089, 34.725441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119560, 33.633530, 34.910645>,  <47.207851, 33.439995, 35.021767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119560, 33.633530, 34.910645>,  <46.972408, 33.956089, 34.725441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119560, 33.633530, 34.910645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866889, 0.477561, 0.142962,
		-0.336401, 0.348788, 0.874746,
		0.367882, -0.806401, 0.463013,
		47.229923, 33.391609, 35.049549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012466, 34.098804, 35.474155>,  <46.972408, 33.956089, 34.725441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012466, 34.098804, 35.474155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289654, 33.843796, 35.339478>,  <47.455967, 33.690788, 35.258671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289654, 33.843796, 35.339478>,  <47.012466, 34.098804, 35.474155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289654, 33.843796, 35.339478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710185, 0.684072, 0.166384,
		0.124249, -0.354413, 0.926797,
		0.692964, -0.637525, -0.336694,
		47.497543, 33.652538, 35.238468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.511398, 34.639542, 35.732689>,  <47.012466, 34.098804, 35.474155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.511398, 34.639542, 35.732689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431763, 34.913315, 35.452141>,  <47.383984, 35.077579, 35.283813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431763, 34.913315, 35.452141>,  <47.511398, 34.639542, 35.732689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431763, 34.913315, 35.452141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807349, -0.291122, -0.513259,
		-0.555474, -0.668432, -0.494618,
		-0.199085, 0.684432, -0.701369,
		47.372036, 35.118645, 35.241730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.578285, 34.311115, 35.085957>,  <47.511398, 34.639542, 35.732689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.578285, 34.311115, 35.085957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613182, 34.700386, 35.000801>,  <47.634121, 34.933949, 34.949707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613182, 34.700386, 35.000801>,  <47.578285, 34.311115, 35.085957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.613182, 34.700386, 35.000801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757807, -0.203546, -0.619917,
		-0.646620, -0.107249, -0.755235,
		0.087240, 0.973173, -0.212891,
		47.639355, 34.992336, 34.936935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.809858, 33.397770, 25.781498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.050806, 33.442131, 25.465309>,  <31.195375, 33.468746, 25.275595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.050806, 33.442131, 25.465309>,  <30.809858, 33.397770, 25.781498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050806, 33.442131, 25.465309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778169, -0.302142, 0.550603,
		-0.177771, -0.946790, -0.268304,
		0.602371, 0.110904, -0.790474,
		31.231518, 33.475403, 25.228167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047089, 32.692013, 25.694675>,  <30.809858, 33.397770, 25.781498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047089, 32.692013, 25.694675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.310326, 32.948120, 25.536200>,  <31.468267, 33.101784, 25.441114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.310326, 32.948120, 25.536200>,  <31.047089, 32.692013, 25.694675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310326, 32.948120, 25.536200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743782, -0.471002, 0.474284,
		0.117064, -0.606802, -0.786185,
		0.658091, 0.640272, -0.396191,
		31.507753, 33.140202, 25.417341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650839, 32.317142, 25.584774>,  <31.047089, 32.692013, 25.694675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650839, 32.317142, 25.584774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758839, 32.701805, 25.604015>,  <31.823639, 32.932602, 25.615561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758839, 32.701805, 25.604015>,  <31.650839, 32.317142, 25.584774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758839, 32.701805, 25.604015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870750, -0.265188, 0.414088,
		0.410968, -0.069916, -0.908965,
		0.269998, 0.961658, 0.048105,
		31.839838, 32.990303, 25.618446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290730, 32.363842, 25.337183>,  <31.650839, 32.317142, 25.584774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290730, 32.363842, 25.337183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249142, 32.679771, 25.578966>,  <32.224190, 32.869328, 25.724037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249142, 32.679771, 25.578966>,  <32.290730, 32.363842, 25.337183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249142, 32.679771, 25.578966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852010, -0.242805, 0.463815,
		0.513097, 0.563230, -0.647691,
		-0.103973, 0.789821, 0.604460,
		32.217949, 32.916718, 25.760303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928944, 32.490635, 25.516706>,  <32.290730, 32.363842, 25.337183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928944, 32.490635, 25.516706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.740181, 32.699631, 25.800764>,  <32.626923, 32.825027, 25.971199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.740181, 32.699631, 25.800764>,  <32.928944, 32.490635, 25.516706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740181, 32.699631, 25.800764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767653, -0.152636, 0.622424,
		0.433605, 0.838871, -0.329062,
		-0.471907, 0.522491, 0.710145,
		32.598610, 32.856377, 26.013807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449863, 32.852726, 25.856455>,  <32.928944, 32.490635, 25.516706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449863, 32.852726, 25.856455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.144505, 32.872856, 26.114042>,  <32.961288, 32.884933, 26.268595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.144505, 32.872856, 26.114042>,  <33.449863, 32.852726, 25.856455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144505, 32.872856, 26.114042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639761, -0.078568, 0.764547,
		0.089073, 0.995638, 0.027781,
		-0.763394, 0.050328, 0.643969,
		32.915485, 32.887955, 26.307234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689522, 33.293797, 26.379585>,  <33.449863, 32.852726, 25.856455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689522, 33.293797, 26.379585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.378544, 33.103382, 26.544008>,  <33.191956, 32.989132, 26.642662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.378544, 33.103382, 26.544008>,  <33.689522, 33.293797, 26.379585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378544, 33.103382, 26.544008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466973, 0.000923, 0.884271,
		-0.421324, 0.879426, 0.221578,
		-0.777446, -0.476035, 0.411057,
		33.145309, 32.960571, 26.667326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564453, 33.623894, 26.989052>,  <33.689522, 33.293797, 26.379585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564453, 33.623894, 26.989052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.370728, 33.278320, 27.044266>,  <33.254494, 33.070976, 27.077394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.370728, 33.278320, 27.044266>,  <33.564453, 33.623894, 26.989052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370728, 33.278320, 27.044266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607573, -0.218597, 0.763590,
		-0.629519, 0.453685, 0.630774,
		-0.484315, -0.863936, 0.138036,
		33.225433, 33.019138, 27.085676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286255, 33.557304, 27.702402>,  <33.564453, 33.623894, 26.989052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286255, 33.557304, 27.702402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.331467, 33.185989, 27.560698>,  <33.358593, 32.963200, 27.475676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.331467, 33.185989, 27.560698>,  <33.286255, 33.557304, 27.702402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331467, 33.185989, 27.560698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583954, -0.226406, 0.779576,
		-0.803880, -0.294982, 0.516490,
		0.113025, -0.928292, -0.354259,
		33.365376, 32.907501, 27.454420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405499, 33.221539, 28.242908>,  <33.286255, 33.557304, 27.702402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405499, 33.221539, 28.242908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.493160, 32.936138, 27.976707>,  <33.545757, 32.764900, 27.816986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.493160, 32.936138, 27.976707>,  <33.405499, 33.221539, 28.242908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493160, 32.936138, 27.976707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554344, -0.470250, 0.686707,
		-0.802917, -0.519411, 0.292467,
		0.219151, -0.713496, -0.665504,
		33.558907, 32.722088, 27.777056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294636, 32.445095, 28.539700>,  <33.405499, 33.221539, 28.242908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294636, 32.445095, 28.539700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576317, 32.436275, 28.255838>,  <33.745327, 32.430984, 28.085522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576317, 32.436275, 28.255838>,  <33.294636, 32.445095, 28.539700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576317, 32.436275, 28.255838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628383, -0.445915, 0.637412,
		-0.330500, -0.894804, -0.300160,
		0.704205, -0.022049, -0.709655,
		33.787579, 32.429661, 28.042942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570915, 31.708792, 28.537279>,  <33.294636, 32.445095, 28.539700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570915, 31.708792, 28.537279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.859997, 31.930893, 28.372650>,  <34.033447, 32.064156, 28.273872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.859997, 31.930893, 28.372650>,  <33.570915, 31.708792, 28.537279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859997, 31.930893, 28.372650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682660, -0.480362, 0.550661,
		0.108053, -0.678929, -0.726210,
		0.722703, 0.555255, -0.411573,
		34.076809, 32.097469, 28.249178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105331, 31.241840, 28.284264>,  <33.570915, 31.708792, 28.537279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105331, 31.241840, 28.284264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276505, 31.602398, 28.310678>,  <34.379208, 31.818733, 28.326527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276505, 31.602398, 28.310678>,  <34.105331, 31.241840, 28.284264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276505, 31.602398, 28.310678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594038, -0.335580, 0.731098,
		0.681168, -0.273635, -0.679069,
		0.427936, 0.901394, 0.066037,
		34.404884, 31.872816, 28.330490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834774, 31.090113, 28.374699>,  <34.105331, 31.241840, 28.284264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834774, 31.090113, 28.374699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792530, 31.465788, 28.505404>,  <34.767185, 31.691193, 28.583826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792530, 31.465788, 28.505404>,  <34.834774, 31.090113, 28.374699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792530, 31.465788, 28.505404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678671, -0.172098, 0.713994,
		0.726810, 0.297166, -0.619225,
		-0.105608, 0.939188, 0.326760,
		34.760849, 31.747545, 28.603432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593845, 31.306471, 28.469799>,  <34.834774, 31.090113, 28.374699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593845, 31.306471, 28.469799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.369415, 31.561359, 28.681133>,  <35.234756, 31.714293, 28.807934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.369415, 31.561359, 28.681133>,  <35.593845, 31.306471, 28.469799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369415, 31.561359, 28.681133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570987, -0.164167, 0.804377,
		0.599303, 0.752991, -0.271736,
		-0.561079, 0.637223, 0.528334,
		35.201092, 31.752527, 28.839634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077122, 31.437626, 29.007738>,  <35.593845, 31.306471, 28.469799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077122, 31.437626, 29.007738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737251, 31.580893, 29.162540>,  <35.533329, 31.666853, 29.255421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737251, 31.580893, 29.162540>,  <36.077122, 31.437626, 29.007738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737251, 31.580893, 29.162540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419321, 0.013934, 0.907731,
		0.319725, 0.933554, -0.162025,
		-0.849674, 0.358165, 0.387004,
		35.482349, 31.688343, 29.278643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260380, 32.032429, 29.487724>,  <36.077122, 31.437626, 29.007738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260380, 32.032429, 29.487724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908867, 31.872856, 29.592487>,  <35.697960, 31.777113, 29.655346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908867, 31.872856, 29.592487>,  <36.260380, 32.032429, 29.487724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908867, 31.872856, 29.592487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261723, 0.056038, 0.963515,
		-0.399054, 0.915267, 0.055165,
		-0.878782, -0.398932, 0.261909,
		35.645233, 31.753176, 29.671061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944080, 32.462204, 29.997314>,  <36.260380, 32.032429, 29.487724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944080, 32.462204, 29.997314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770306, 32.107971, 30.063063>,  <35.666042, 31.895432, 30.102512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770306, 32.107971, 30.063063>,  <35.944080, 32.462204, 29.997314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770306, 32.107971, 30.063063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297875, 0.030962, 0.954102,
		-0.850022, 0.463457, 0.250341,
		-0.434434, -0.885578, 0.164371,
		35.639977, 31.842299, 30.112373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717476, 32.495075, 30.684231>,  <35.944080, 32.462204, 29.997314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717476, 32.495075, 30.684231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713177, 32.103638, 30.602022>,  <35.710598, 31.868774, 30.552698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713177, 32.103638, 30.602022>,  <35.717476, 32.495075, 30.684231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713177, 32.103638, 30.602022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380253, -0.194091, 0.904288,
		-0.924820, -0.068429, 0.374199,
		-0.010749, -0.978594, -0.205519,
		35.709953, 31.810059, 30.540367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372135, 32.108212, 31.291422>,  <35.717476, 32.495075, 30.684231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372135, 32.108212, 31.291422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546921, 31.811066, 31.088560>,  <35.651794, 31.632776, 30.966843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546921, 31.811066, 31.088560>,  <35.372135, 32.108212, 31.291422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546921, 31.811066, 31.088560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386333, -0.354171, 0.851651,
		-0.812284, -0.568075, 0.132234,
		0.436968, -0.742869, -0.507153,
		35.678013, 31.588205, 30.936415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244282, 31.493361, 31.701420>,  <35.372135, 32.108212, 31.291422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244282, 31.493361, 31.701420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554932, 31.416965, 31.461296>,  <35.741322, 31.371128, 31.317221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554932, 31.416965, 31.461296>,  <35.244282, 31.493361, 31.701420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554932, 31.416965, 31.461296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504337, -0.382517, 0.774161,
		-0.377476, -0.903996, -0.200757,
		0.776631, -0.190978, -0.600310,
		35.787918, 31.359669, 31.281202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453472, 30.850111, 32.137447>,  <35.244282, 31.493361, 31.701420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453472, 30.850111, 32.137447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307713, 30.485550, 32.213932>,  <35.220257, 30.266813, 32.259823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307713, 30.485550, 32.213932>,  <35.453472, 30.850111, 32.137447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307713, 30.485550, 32.213932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810987, 0.209652, -0.546211,
		0.457728, -0.354110, -0.815531,
		-0.364397, -0.911401, 0.191215,
		35.198395, 30.212130, 32.271297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314285, 30.629154, 31.503790>,  <35.453472, 30.850111, 32.137447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314285, 30.629154, 31.503790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079147, 30.413225, 31.744799>,  <34.938065, 30.283669, 31.889404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079147, 30.413225, 31.744799>,  <35.314285, 30.629154, 31.503790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079147, 30.413225, 31.744799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784364, 0.198020, -0.587844,
		0.198020, -0.818156, -0.539822,
		0.587844, 0.539822, -0.602521,
		34.902794, 30.251278, 31.925554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952110, 30.194666, 31.066452>,  <35.314285, 30.629154, 31.503790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952110, 30.194666, 31.066452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.748337, 30.160162, 31.408920>,  <34.626072, 30.139460, 31.614401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.748337, 30.160162, 31.408920>,  <34.952110, 30.194666, 31.066452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748337, 30.160162, 31.408920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859140, 0.107049, -0.500418,
		-0.048485, -0.990505, -0.128647,
		-0.509438, -0.086263, 0.856173,
		34.595505, 30.134283, 31.665771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401237, 29.628220, 30.967451>,  <34.952110, 30.194666, 31.066452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401237, 29.628220, 30.967451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288067, 29.901804, 31.236420>,  <34.220165, 30.065954, 31.397800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288067, 29.901804, 31.236420>,  <34.401237, 29.628220, 30.967451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288067, 29.901804, 31.236420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801241, 0.216828, -0.557672,
		-0.527225, -0.696552, 0.486671,
		-0.282924, 0.683960, 0.672423,
		34.203190, 30.106993, 31.438147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719936, 29.565536, 30.991930>,  <34.401237, 29.628220, 30.967451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719936, 29.565536, 30.991930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.771473, 29.937059, 31.130907>,  <33.802395, 30.159973, 31.214294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.771473, 29.937059, 31.130907>,  <33.719936, 29.565536, 30.991930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771473, 29.937059, 31.130907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837784, 0.289406, -0.462993,
		-0.530584, -0.231433, 0.815426,
		0.128837, 0.928807, 0.347445,
		33.810123, 30.215702, 31.235140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035805, 29.753681, 31.095673>,  <33.719936, 29.565536, 30.991930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035805, 29.753681, 31.095673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.248047, 30.092308, 31.112579>,  <33.375393, 30.295485, 31.122723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.248047, 30.092308, 31.112579>,  <33.035805, 29.753681, 31.095673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248047, 30.092308, 31.112579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744192, 0.489146, -0.454880,
		-0.405760, 0.209906, 0.889549,
		0.530602, 0.846567, 0.042265,
		33.407227, 30.346279, 31.125259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506245, 30.322105, 31.373405>,  <33.035805, 29.753681, 31.095673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506245, 30.322105, 31.373405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.803558, 30.478786, 31.156485>,  <32.981949, 30.572796, 31.026333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.803558, 30.478786, 31.156485>,  <32.506245, 30.322105, 31.373405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803558, 30.478786, 31.156485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651633, 0.607300, -0.454490,
		0.151315, 0.691199, 0.706646,
		0.743289, 0.391702, -0.542302,
		33.026546, 30.596296, 30.993793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319969, 31.090239, 31.335985>,  <32.506245, 30.322105, 31.373405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319969, 31.090239, 31.335985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.563961, 30.983551, 31.037512>,  <32.710354, 30.919538, 30.858427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.563961, 30.983551, 31.037512>,  <32.319969, 31.090239, 31.335985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563961, 30.983551, 31.037512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577717, 0.494838, -0.649137,
		0.542377, 0.827041, 0.147751,
		0.609975, -0.266719, -0.746184,
		32.746952, 30.903536, 30.813656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219948, 31.713314, 30.848131>,  <32.319969, 31.090239, 31.335985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219948, 31.713314, 30.848131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.381706, 31.428394, 30.618666>,  <32.478764, 31.257442, 30.480986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.381706, 31.428394, 30.618666>,  <32.219948, 31.713314, 30.848131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381706, 31.428394, 30.618666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459645, 0.383985, -0.800801,
		0.790688, 0.587526, -0.172121,
		0.404400, -0.712299, -0.573665,
		32.503025, 31.214705, 30.446566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262123, 32.040016, 30.260729>,  <32.219948, 31.713314, 30.848131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262123, 32.040016, 30.260729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.293396, 31.658529, 30.144585>,  <32.312160, 31.429636, 30.074898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.293396, 31.658529, 30.144585>,  <32.262123, 32.040016, 30.260729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293396, 31.658529, 30.144585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474100, 0.220639, -0.852378,
		0.876993, 0.204302, -0.434908,
		0.078185, -0.953718, -0.290358,
		32.316853, 31.372414, 30.057478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467583, 32.135330, 29.633717>,  <32.262123, 32.040016, 30.260729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467583, 32.135330, 29.633717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.314953, 31.765968, 29.650377>,  <32.223377, 31.544352, 29.660374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.314953, 31.765968, 29.650377>,  <32.467583, 32.135330, 29.633717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314953, 31.765968, 29.650377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427135, 0.136183, -0.893874,
		0.819731, -0.358866, -0.446380,
		-0.381570, -0.923401, 0.041651,
		32.200481, 31.488949, 29.662872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683727, 31.771278, 29.089186>,  <32.467583, 32.135330, 29.633717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683727, 31.771278, 29.089186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.336979, 31.605648, 29.200239>,  <32.128929, 31.506269, 29.266872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.336979, 31.605648, 29.200239>,  <32.683727, 31.771278, 29.089186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336979, 31.605648, 29.200239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357648, 0.128554, -0.924966,
		0.347314, -0.901119, -0.259533,
		-0.866868, -0.414075, 0.277635,
		32.076920, 31.481426, 29.283529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508842, 31.363550, 28.371323>,  <32.683727, 31.771278, 29.089186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508842, 31.363550, 28.371323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.178680, 31.391203, 28.595440>,  <31.980583, 31.407795, 28.729910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.178680, 31.391203, 28.595440>,  <32.508842, 31.363550, 28.371323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178680, 31.391203, 28.595440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557202, 0.059739, -0.828225,
		-0.090732, -0.995817, -0.010786,
		-0.825405, 0.069137, 0.560292,
		31.931059, 31.411943, 28.763527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050781, 30.953325, 27.982996>,  <32.508842, 31.363550, 28.371323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050781, 30.953325, 27.982996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.800684, 31.168467, 28.209192>,  <31.650625, 31.297552, 28.344910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.800684, 31.168467, 28.209192>,  <32.050781, 30.953325, 27.982996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800684, 31.168467, 28.209192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607585, 0.119289, -0.785245,
		-0.489805, -0.834555, 0.252208,
		-0.625245, 0.537855, 0.565491,
		31.613110, 31.329823, 28.378839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335176, 30.642500, 27.887175>,  <32.050781, 30.953325, 27.982996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335176, 30.642500, 27.887175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.301188, 31.023098, 28.005451>,  <31.280794, 31.251457, 28.076418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.301188, 31.023098, 28.005451>,  <31.335176, 30.642500, 27.887175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301188, 31.023098, 28.005451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665660, 0.166609, -0.727419,
		-0.741402, -0.258641, 0.619216,
		-0.084973, 0.951497, 0.295691,
		31.275696, 31.308548, 28.094158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573664, 30.774378, 27.822027>,  <31.335176, 30.642500, 27.887175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573664, 30.774378, 27.822027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.723539, 31.142122, 27.870007>,  <30.813465, 31.362768, 27.898794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.723539, 31.142122, 27.870007>,  <30.573664, 30.774378, 27.822027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723539, 31.142122, 27.870007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742983, 0.375126, -0.554307,
		-0.554603, 0.118573, 0.823623,
		0.374688, 0.919359, 0.119949,
		30.835945, 31.417931, 27.905991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126236, 31.161688, 28.079573>,  <30.573664, 30.774378, 27.822027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126236, 31.161688, 28.079573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.346767, 31.433767, 27.886341>,  <30.479086, 31.597015, 27.770403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.346767, 31.433767, 27.886341>,  <30.126236, 31.161688, 28.079573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346767, 31.433767, 27.886341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783683, 0.223641, -0.579505,
		-0.286142, 0.698080, 0.656360,
		0.551330, 0.680198, -0.483080,
		30.512167, 31.637827, 27.741417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809725, 31.845764, 28.088587>,  <30.126236, 31.161688, 28.079573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809725, 31.845764, 28.088587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.065603, 31.843285, 27.781145>,  <30.219130, 31.841797, 27.596680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.065603, 31.843285, 27.781145>,  <29.809725, 31.845764, 28.088587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065603, 31.843285, 27.781145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696759, 0.417520, -0.583269,
		0.324522, 0.908646, 0.262768,
		0.639697, -0.006197, -0.768602,
		30.257513, 31.841425, 27.550564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720259, 32.478050, 27.785162>,  <29.809725, 31.845764, 28.088587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720259, 32.478050, 27.785162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.912098, 32.268394, 27.503662>,  <30.027201, 32.142601, 27.334763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.912098, 32.268394, 27.503662>,  <29.720259, 32.478050, 27.785162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912098, 32.268394, 27.503662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594134, 0.396234, -0.700002,
		0.645748, 0.753842, -0.121375,
		0.479598, -0.524138, -0.703751,
		30.055977, 32.111153, 27.292538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.892149, 32.979347, 27.271143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.940878, 32.642845, 27.060448>,  <29.970116, 32.440945, 26.934031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.940878, 32.642845, 27.060448>,  <29.892149, 32.979347, 27.271143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940878, 32.642845, 27.060448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575862, 0.372336, -0.727839,
		0.808420, 0.391996, -0.439086,
		0.121823, -0.841252, -0.526739,
		29.977425, 32.390469, 26.902426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226742, 33.176662, 26.640841>,  <29.892149, 32.979347, 27.271143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226742, 33.176662, 26.640841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.029530, 32.834354, 26.578140>,  <29.911201, 32.628967, 26.540520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.029530, 32.834354, 26.578140>,  <30.226742, 33.176662, 26.640841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029530, 32.834354, 26.578140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473877, 0.415247, -0.776538,
		0.729630, -0.308578, -0.610262,
		-0.493032, -0.855774, -0.156749,
		29.881620, 32.577621, 26.531116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230459, 32.947498, 25.777657>,  <30.226742, 33.176662, 26.640841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230459, 32.947498, 25.777657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934637, 32.742878, 25.952644>,  <29.757145, 32.620106, 26.057636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934637, 32.742878, 25.952644>,  <30.230459, 32.947498, 25.777657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934637, 32.742878, 25.952644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643388, 0.346282, -0.682744,
		0.197768, -0.786389, -0.585218,
		-0.739553, -0.511548, 0.437470,
		29.712770, 32.589413, 26.083885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915459, 32.593342, 25.240828>,  <30.230459, 32.947498, 25.777657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915459, 32.593342, 25.240828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.654943, 32.606377, 25.544079>,  <29.498634, 32.614197, 25.726030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.654943, 32.606377, 25.544079>,  <29.915459, 32.593342, 25.240828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654943, 32.606377, 25.544079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665748, 0.454897, -0.591480,
		-0.364146, -0.889947, -0.274574,
		-0.651289, 0.032588, 0.758130,
		29.459557, 32.616154, 25.771517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311434, 32.427849, 24.960917>,  <29.915459, 32.593342, 25.240828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311434, 32.427849, 24.960917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202019, 32.632099, 25.286968>,  <29.136370, 32.754650, 25.482599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202019, 32.632099, 25.286968>,  <29.311434, 32.427849, 24.960917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202019, 32.632099, 25.286968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634955, 0.540699, -0.551794,
		-0.722502, -0.668506, 0.176326,
		-0.273538, 0.510630, 0.815128,
		29.119957, 32.785290, 25.531507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596268, 32.290092, 24.976641>,  <29.311434, 32.427849, 24.960917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596268, 32.290092, 24.976641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.704760, 32.610748, 25.189737>,  <28.769854, 32.803143, 25.317595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.704760, 32.610748, 25.189737>,  <28.596268, 32.290092, 24.976641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704760, 32.610748, 25.189737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748800, 0.523500, -0.406505,
		-0.604759, -0.288660, 0.742255,
		0.271229, 0.801638, 0.532739,
		28.786129, 32.851238, 25.349560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888912, 32.595146, 25.198404>,  <28.596268, 32.290092, 24.976641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888912, 32.595146, 25.198404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.168285, 32.878983, 25.235638>,  <28.335909, 33.049286, 25.257977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.168285, 32.878983, 25.235638>,  <27.888912, 32.595146, 25.198404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168285, 32.878983, 25.235638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620173, 0.665003, -0.416120,
		-0.357176, 0.232906, 0.904533,
		0.698434, 0.709595, 0.093081,
		28.377815, 33.091862, 25.263561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526953, 33.128380, 25.333431>,  <27.888912, 32.595146, 25.198404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526953, 33.128380, 25.333431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.888281, 33.278179, 25.249748>,  <28.105078, 33.368057, 25.199537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.888281, 33.278179, 25.249748>,  <27.526953, 33.128380, 25.333431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888281, 33.278179, 25.249748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428406, 0.812591, -0.395176,
		0.022009, 0.446596, 0.894465,
		0.903318, 0.374497, -0.209209,
		28.159277, 33.390530, 25.186985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464085, 33.756302, 25.398863>,  <27.526953, 33.128380, 25.333431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464085, 33.756302, 25.398863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754021, 33.719151, 25.125811>,  <27.927982, 33.696857, 24.961979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754021, 33.719151, 25.125811>,  <27.464085, 33.756302, 25.398863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754021, 33.719151, 25.125811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442254, 0.697009, -0.564438,
		0.528224, 0.711022, 0.464141,
		0.724838, -0.092882, -0.682629,
		27.971472, 33.691284, 24.921022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465033, 34.411289, 25.168314>,  <27.464085, 33.756302, 25.398863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465033, 34.411289, 25.168314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.679548, 34.225002, 24.886747>,  <27.808258, 34.113228, 24.717808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.679548, 34.225002, 24.886747>,  <27.465033, 34.411289, 25.168314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679548, 34.225002, 24.886747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278892, 0.689368, -0.668574,
		0.796627, 0.554864, 0.239814,
		0.536288, -0.465722, -0.703917,
		27.840435, 34.085285, 24.675571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784857, 35.024826, 24.723665>,  <27.465033, 34.411289, 25.168314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784857, 35.024826, 24.723665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805452, 34.693771, 24.500107>,  <27.817810, 34.495140, 24.365971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805452, 34.693771, 24.500107>,  <27.784857, 35.024826, 24.723665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805452, 34.693771, 24.500107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312239, 0.518242, -0.796198,
		0.948607, 0.215504, -0.231737,
		0.051488, -0.827637, -0.558897,
		27.820898, 34.445480, 24.332438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103399, 35.220684, 24.129105>,  <27.784857, 35.024826, 24.723665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103399, 35.220684, 24.129105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.923351, 34.879715, 24.022701>,  <27.815323, 34.675133, 23.958858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.923351, 34.879715, 24.022701>,  <28.103399, 35.220684, 24.129105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923351, 34.879715, 24.022701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316895, 0.430990, -0.844882,
		0.834848, -0.296000, -0.464126,
		-0.450119, -0.852427, -0.266010,
		27.788315, 34.623985, 23.942898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304239, 35.107460, 23.400921>,  <28.103399, 35.220684, 24.129105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304239, 35.107460, 23.400921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.955082, 34.937603, 23.497032>,  <27.745586, 34.835690, 23.554699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.955082, 34.937603, 23.497032>,  <28.304239, 35.107460, 23.400921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955082, 34.937603, 23.497032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397514, 0.333412, -0.854879,
		0.282903, -0.841735, -0.459835,
		-0.872897, -0.424639, 0.240279,
		27.693213, 34.810211, 23.569115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969152, 34.800404, 22.690001>,  <28.304239, 35.107460, 23.400921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969152, 34.800404, 22.690001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.684395, 34.859810, 22.964563>,  <27.513540, 34.895454, 23.129301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.684395, 34.859810, 22.964563>,  <27.969152, 34.800404, 22.690001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684395, 34.859810, 22.964563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594528, 0.392812, -0.701595,
		-0.373824, -0.907548, -0.191345,
		-0.711893, 0.148513, 0.686405,
		27.470827, 34.904366, 23.170485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389742, 34.469448, 22.387358>,  <27.969152, 34.800404, 22.690001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389742, 34.469448, 22.387358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.252890, 34.718880, 22.668526>,  <27.170778, 34.868538, 22.837227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.252890, 34.718880, 22.668526>,  <27.389742, 34.469448, 22.387358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252890, 34.718880, 22.668526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706974, 0.321949, -0.629712,
		-0.618979, -0.712391, 0.330703,
		-0.342131, 0.623577, 0.702922,
		27.150249, 34.905952, 22.879402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741991, 34.553902, 22.207899>,  <27.389742, 34.469448, 22.387358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741991, 34.553902, 22.207899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.783991, 34.856476, 22.466131>,  <26.809191, 35.038021, 22.621071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.783991, 34.856476, 22.466131>,  <26.741991, 34.553902, 22.207899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783991, 34.856476, 22.466131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754183, 0.483710, -0.444109,
		-0.648216, -0.440256, 0.621281,
		0.104998, 0.756438, 0.645582,
		26.815491, 35.083408, 22.659805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058731, 34.715214, 22.514988>,  <26.741991, 34.553902, 22.207899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058731, 34.715214, 22.514988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.295706, 35.034424, 22.559135>,  <26.437891, 35.225948, 22.585625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.295706, 35.034424, 22.559135>,  <26.058731, 34.715214, 22.514988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295706, 35.034424, 22.559135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651507, 0.555174, -0.517031,
		-0.473876, 0.234402, 0.848821,
		0.592436, 0.798021, 0.110369,
		26.473436, 35.273830, 22.592247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711884, 35.199383, 22.892838>,  <26.058731, 34.715214, 22.514988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711884, 35.199383, 22.892838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.986185, 35.411263, 22.693174>,  <26.150766, 35.538391, 22.573376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.986185, 35.411263, 22.693174>,  <25.711884, 35.199383, 22.892838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986185, 35.411263, 22.693174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726739, 0.535961, -0.429647,
		0.039945, 0.657389, 0.752492,
		0.685752, 0.529703, -0.499159,
		26.191910, 35.570175, 22.543427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433531, 35.835049, 22.875143>,  <25.711884, 35.199383, 22.892838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433531, 35.835049, 22.875143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.715981, 35.885044, 22.596355>,  <25.885450, 35.915043, 22.429083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.715981, 35.885044, 22.596355>,  <25.433531, 35.835049, 22.875143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715981, 35.885044, 22.596355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609211, 0.608920, -0.508014,
		0.360904, 0.783323, 0.506116,
		0.706123, 0.124987, -0.696971,
		25.927818, 35.922539, 22.387264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.477806, 36.680824, 22.622469>,  <25.433531, 35.835049, 22.875143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.477806, 36.680824, 22.622469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.666639, 36.468418, 22.341000>,  <25.779940, 36.340973, 22.172117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.666639, 36.468418, 22.341000>,  <25.477806, 36.680824, 22.622469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666639, 36.468418, 22.341000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373182, 0.602792, -0.705250,
		0.798668, 0.595536, 0.086404,
		0.472085, -0.531016, -0.703674,
		25.808266, 36.309113, 22.129898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799805, 37.127060, 22.230120>,  <25.477806, 36.680824, 22.622469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799805, 37.127060, 22.230120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.747713, 36.792500, 22.017153>,  <25.716457, 36.591763, 21.889374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.747713, 36.792500, 22.017153>,  <25.799805, 37.127060, 22.230120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.747713, 36.792500, 22.017153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366512, 0.539564, -0.757984,
		0.921254, 0.096424, -0.376821,
		-0.130231, -0.836405, -0.532416,
		25.708643, 36.541576, 21.857428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034803, 37.280334, 21.521090>,  <25.799805, 37.127060, 22.230120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034803, 37.280334, 21.521090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.794897, 36.961277, 21.495668>,  <25.650953, 36.769840, 21.480415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.794897, 36.961277, 21.495668>,  <26.034803, 37.280334, 21.521090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794897, 36.961277, 21.495668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562132, 0.476534, -0.675961,
		0.569464, -0.369692, -0.734192,
		-0.599765, -0.797648, -0.063554,
		25.614967, 36.721981, 21.476603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911621, 37.042404, 20.769312>,  <26.034803, 37.280334, 21.521090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911621, 37.042404, 20.769312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.609938, 36.959148, 21.018423>,  <25.428928, 36.909195, 21.167889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.609938, 36.959148, 21.018423>,  <25.911621, 37.042404, 20.769312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609938, 36.959148, 21.018423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646767, 0.399290, -0.649815,
		-0.113417, -0.892886, -0.435764,
		-0.754207, -0.208138, 0.622776,
		25.383675, 36.896706, 21.205256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222935, 37.162434, 20.139093>,  <25.911621, 37.042404, 20.769312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222935, 37.162434, 20.139093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.043154, 37.252506, 19.793310>,  <25.935286, 37.306549, 19.585840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.043154, 37.252506, 19.793310>,  <26.222935, 37.162434, 20.139093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043154, 37.252506, 19.793310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417301, 0.908555, 0.019700,
		0.789842, -0.351885, -0.502321,
		-0.449454, 0.225179, -0.864457,
		25.908318, 37.320061, 19.533974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754353, 37.682693, 19.808853>,  <26.222935, 37.162434, 20.139093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754353, 37.682693, 19.808853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.089411, 37.613567, 19.601589>,  <27.290445, 37.572090, 19.477232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.089411, 37.613567, 19.601589>,  <26.754353, 37.682693, 19.808853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089411, 37.613567, 19.601589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435899, -0.360162, 0.824788,
		-0.329151, -0.916744, -0.226360,
		0.837647, -0.172810, -0.518155,
		27.340704, 37.561722, 19.446142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928902, 36.909866, 19.882202>,  <26.754353, 37.682693, 19.808853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928902, 36.909866, 19.882202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.272528, 37.093731, 19.792114>,  <27.478703, 37.204048, 19.738062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.272528, 37.093731, 19.792114>,  <26.928902, 36.909866, 19.882202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272528, 37.093731, 19.792114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463821, -0.512916, 0.722348,
		0.216515, -0.725005, -0.653827,
		0.859064, 0.459658, -0.225219,
		27.530247, 37.231628, 19.724548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524656, 36.417442, 19.769230>,  <26.928902, 36.909866, 19.882202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524656, 36.417442, 19.769230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.750963, 36.741520, 19.830528>,  <27.886747, 36.935966, 19.867308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.750963, 36.741520, 19.830528>,  <27.524656, 36.417442, 19.769230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750963, 36.741520, 19.830528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549342, -0.508958, 0.662711,
		0.614922, -0.290758, -0.733028,
		0.565769, 0.810199, 0.153244,
		27.920694, 36.984581, 19.876501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225348, 36.199364, 19.677603>,  <27.524656, 36.417442, 19.769230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225348, 36.199364, 19.677603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.229506, 36.532692, 19.898680>,  <28.232000, 36.732689, 20.031326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.229506, 36.532692, 19.898680>,  <28.225348, 36.199364, 19.677603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229506, 36.532692, 19.898680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672268, -0.414990, 0.613057,
		0.740235, 0.365182, -0.564530,
		0.010397, 0.833322, 0.552690,
		28.232624, 36.782688, 20.064487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898638, 36.447014, 19.553310>,  <28.225348, 36.199364, 19.677603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898638, 36.447014, 19.553310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745691, 36.594860, 19.892056>,  <28.653923, 36.683567, 20.095303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745691, 36.594860, 19.892056>,  <28.898638, 36.447014, 19.553310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745691, 36.594860, 19.892056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715055, -0.462112, 0.524547,
		0.585228, 0.806123, -0.087601,
		-0.382368, 0.369618, 0.846863,
		28.630981, 36.705746, 20.146114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515907, 36.404411, 20.037498>,  <28.898638, 36.447014, 19.553310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515907, 36.404411, 20.037498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.200134, 36.470531, 20.273962>,  <29.010670, 36.510204, 20.415840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.200134, 36.470531, 20.273962>,  <29.515907, 36.404411, 20.037498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200134, 36.470531, 20.273962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402196, -0.588239, 0.701580,
		0.463715, 0.791613, 0.397892,
		-0.789434, 0.165303, 0.591158,
		28.963305, 36.520123, 20.451309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771561, 36.640217, 20.683722>,  <29.515907, 36.404411, 20.037498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771561, 36.640217, 20.683722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.409756, 36.531647, 20.815289>,  <29.192673, 36.466503, 20.894230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.409756, 36.531647, 20.815289>,  <29.771561, 36.640217, 20.683722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409756, 36.531647, 20.815289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421014, -0.691140, 0.587429,
		0.067884, 0.669815, 0.739419,
		-0.904510, -0.271428, 0.328919,
		29.138403, 36.450218, 20.913963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601709, 36.847095, 21.550636>,  <29.771561, 36.640217, 20.683722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601709, 36.847095, 21.550636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.400663, 36.528214, 21.416862>,  <29.280037, 36.336884, 21.336597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.400663, 36.528214, 21.416862>,  <29.601709, 36.847095, 21.550636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400663, 36.528214, 21.416862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317909, -0.530181, 0.786029,
		-0.803937, 0.288748, 0.519914,
		-0.502613, -0.797203, -0.334436,
		29.249880, 36.289051, 21.316532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214756, 36.589050, 22.125608>,  <29.601709, 36.847095, 21.550636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214756, 36.589050, 22.125608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.194750, 36.269485, 21.885864>,  <29.182747, 36.077747, 21.742018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.194750, 36.269485, 21.885864>,  <29.214756, 36.589050, 22.125608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194750, 36.269485, 21.885864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043290, -0.597814, 0.800465,
		-0.997810, 0.065982, -0.004685,
		-0.050016, -0.798915, -0.599361,
		29.179745, 36.029812, 21.706057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754524, 36.170670, 22.456726>,  <29.214756, 36.589050, 22.125608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754524, 36.170670, 22.456726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.927719, 35.910702, 22.206886>,  <29.031635, 35.754719, 22.056982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.927719, 35.910702, 22.206886>,  <28.754524, 36.170670, 22.456726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927719, 35.910702, 22.206886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036232, -0.679811, 0.732492,
		-0.900672, -0.339789, -0.270801,
		0.432986, -0.649923, -0.624599,
		29.057615, 35.715725, 22.019506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510193, 35.489243, 22.688118>,  <28.754524, 36.170670, 22.456726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510193, 35.489243, 22.688118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.846399, 35.403034, 22.489286>,  <29.048122, 35.351311, 22.369987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.846399, 35.403034, 22.489286>,  <28.510193, 35.489243, 22.688118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846399, 35.403034, 22.489286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181311, -0.752687, 0.632921,
		-0.510551, -0.622105, -0.593568,
		0.840514, -0.215518, -0.497080,
		29.098553, 35.338379, 22.340162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731955, 34.772091, 22.848118>,  <28.510193, 35.489243, 22.688118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731955, 34.772091, 22.848118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.080824, 34.900738, 22.700674>,  <29.290146, 34.977924, 22.612207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.080824, 34.900738, 22.700674>,  <28.731955, 34.772091, 22.848118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080824, 34.900738, 22.700674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487601, -0.632281, 0.602052,
		-0.039437, -0.704830, -0.708279,
		0.872175, 0.321614, -0.368611,
		29.342476, 34.997223, 22.590090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129169, 34.200394, 22.651012>,  <28.731955, 34.772091, 22.848118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129169, 34.200394, 22.651012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.390659, 34.491352, 22.734474>,  <29.547552, 34.665928, 22.784552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.390659, 34.491352, 22.734474>,  <29.129169, 34.200394, 22.651012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390659, 34.491352, 22.734474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470137, -0.606458, 0.641234,
		0.592974, -0.321092, -0.738432,
		0.653723, 0.727399, 0.208656,
		29.586777, 34.709572, 22.797071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696487, 33.785175, 22.635426>,  <29.129169, 34.200394, 22.651012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696487, 33.785175, 22.635426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.796312, 34.139782, 22.791275>,  <29.856207, 34.352547, 22.884785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.796312, 34.139782, 22.791275>,  <29.696487, 33.785175, 22.635426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796312, 34.139782, 22.791275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682960, -0.446377, 0.578198,
		0.686502, 0.121801, -0.716854,
		0.249562, 0.886517, 0.389623,
		29.871181, 34.405739, 22.908161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497438, 33.739418, 22.647610>,  <29.696487, 33.785175, 22.635426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497438, 33.739418, 22.647610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346752, 34.004429, 22.906574>,  <30.256340, 34.163437, 23.061953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346752, 34.004429, 22.906574>,  <30.497438, 33.739418, 22.647610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346752, 34.004429, 22.906574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495346, -0.446501, 0.745163,
		0.782762, 0.601408, -0.159976,
		-0.376718, 0.662529, 0.647409,
		30.233736, 34.203186, 23.100798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132441, 34.084667, 22.946568>,  <30.497438, 33.739418, 22.647610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132441, 34.084667, 22.946568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810587, 34.123463, 23.180885>,  <30.617474, 34.146740, 23.321476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810587, 34.123463, 23.180885>,  <31.132441, 34.084667, 22.946568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810587, 34.123463, 23.180885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482968, -0.466998, 0.740712,
		0.345404, 0.878924, 0.328922,
		-0.804636, 0.096986, 0.585795,
		30.569197, 34.152557, 23.356625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363276, 34.423412, 23.519672>,  <31.132441, 34.084667, 22.946568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363276, 34.423412, 23.519672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015514, 34.277748, 23.653250>,  <30.806858, 34.190350, 23.733397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015514, 34.277748, 23.653250>,  <31.363276, 34.423412, 23.519672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015514, 34.277748, 23.653250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444928, -0.283072, 0.849653,
		-0.214883, 0.887274, 0.408131,
		-0.869405, -0.364165, 0.333946,
		30.754692, 34.168499, 23.753433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282766, 34.746731, 24.193991>,  <31.363276, 34.423412, 23.519672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282766, 34.746731, 24.193991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057400, 34.416267, 24.192137>,  <30.922180, 34.217987, 24.191025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057400, 34.416267, 24.192137>,  <31.282766, 34.746731, 24.193991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057400, 34.416267, 24.192137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443567, -0.307222, 0.841940,
		-0.697003, 0.472305, 0.539551,
		-0.563414, -0.826162, -0.004636,
		30.888376, 34.168419, 24.190746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060839, 34.691540, 24.869749>,  <31.282766, 34.746731, 24.193991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060839, 34.691540, 24.869749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025517, 34.331318, 24.699472>,  <31.004324, 34.115185, 24.597307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025517, 34.331318, 24.699472>,  <31.060839, 34.691540, 24.869749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025517, 34.331318, 24.699472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374644, -0.426007, 0.823505,
		-0.922954, -0.086762, 0.375005,
		-0.088306, -0.900550, -0.425690,
		30.999025, 34.061153, 24.571766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676815, 34.232033, 25.395391>,  <31.060839, 34.691540, 24.869749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676815, 34.232033, 25.395391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905645, 34.034172, 25.133692>,  <31.042944, 33.915455, 24.976671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905645, 34.034172, 25.133692>,  <30.676815, 34.232033, 25.395391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905645, 34.034172, 25.133692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614825, -0.269344, 0.741245,
		-0.542878, -0.826300, 0.150040,
		0.572078, -0.494654, -0.654251,
		31.077269, 33.885777, 24.937416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.771183, 31.400480, 29.386057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.119518, 31.378571, 29.190653>,  <31.328520, 31.365425, 29.073410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.119518, 31.378571, 29.190653>,  <30.771183, 31.400480, 29.386057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119518, 31.378571, 29.190653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426640, -0.409418, 0.806446,
		-0.244175, -0.910702, -0.333169,
		0.870837, -0.054771, -0.488511,
		31.380770, 31.362139, 29.044100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065168, 30.737177, 29.547831>,  <30.771183, 31.400480, 29.386057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065168, 30.737177, 29.547831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.375761, 30.974899, 29.464046>,  <31.562117, 31.117533, 29.413776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.375761, 30.974899, 29.464046>,  <31.065168, 30.737177, 29.547831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375761, 30.974899, 29.464046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460637, -0.308517, 0.832244,
		0.429986, -0.742709, -0.513318,
		0.776483, 0.594307, -0.209461,
		31.608706, 31.153191, 29.401209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606899, 30.329550, 29.780750>,  <31.065168, 30.737177, 29.547831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606899, 30.329550, 29.780750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.785046, 30.685600, 29.742130>,  <31.891933, 30.899231, 29.718958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.785046, 30.685600, 29.742130>,  <31.606899, 30.329550, 29.780750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785046, 30.685600, 29.742130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628038, -0.233722, 0.742255,
		0.638137, -0.391210, -0.663126,
		0.445364, 0.890129, -0.096548,
		31.918655, 30.952639, 29.713165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302532, 30.098183, 29.731794>,  <31.606899, 30.329550, 29.780750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302532, 30.098183, 29.731794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.296581, 30.486412, 29.827929>,  <32.293011, 30.719351, 29.885609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.296581, 30.486412, 29.827929>,  <32.302532, 30.098183, 29.731794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296581, 30.486412, 29.827929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771169, -0.141862, 0.620623,
		0.636456, 0.194572, -0.746368,
		-0.014874, 0.970576, 0.240337,
		32.292118, 30.777584, 29.900030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937450, 30.256268, 29.661785>,  <32.302532, 30.098183, 29.731794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937450, 30.256268, 29.661785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.795147, 30.531353, 29.914921>,  <32.709766, 30.696405, 30.066801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.795147, 30.531353, 29.914921>,  <32.937450, 30.256268, 29.661785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795147, 30.531353, 29.914921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850506, -0.042445, 0.524250,
		0.387395, 0.724739, -0.569805,
		-0.355759, 0.687714, 0.632838,
		32.688419, 30.737667, 30.104773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556446, 30.698359, 29.861965>,  <32.937450, 30.256268, 29.661785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556446, 30.698359, 29.861965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.316002, 30.776867, 30.171841>,  <33.171734, 30.823973, 30.357767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.316002, 30.776867, 30.171841>,  <33.556446, 30.698359, 29.861965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316002, 30.776867, 30.171841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777957, -0.078135, 0.623440,
		0.182894, 0.977431, -0.105723,
		-0.601109, 0.196271, 0.774691,
		33.135670, 30.835749, 30.404247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894352, 31.181564, 30.257381>,  <33.556446, 30.698359, 29.861965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894352, 31.181564, 30.257381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.632694, 31.000887, 30.500053>,  <33.475700, 30.892481, 30.645657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.632694, 31.000887, 30.500053>,  <33.894352, 31.181564, 30.257381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632694, 31.000887, 30.500053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747980, -0.267209, 0.607557,
		-0.112320, 0.851217, 0.512653,
		-0.654149, -0.451695, 0.606681,
		33.436451, 30.865379, 30.682058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984383, 31.492529, 30.953396>,  <33.894352, 31.181564, 30.257381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984383, 31.492529, 30.953396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.809864, 31.140779, 31.029654>,  <33.705154, 30.929729, 31.075407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.809864, 31.140779, 31.029654>,  <33.984383, 31.492529, 30.953396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809864, 31.140779, 31.029654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609020, -0.132633, 0.781986,
		-0.662373, 0.457284, 0.593425,
		-0.436298, -0.879374, 0.190643,
		33.678974, 30.876966, 31.086845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785641, 31.375723, 31.764858>,  <33.984383, 31.492529, 30.953396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785641, 31.375723, 31.764858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816761, 31.022556, 31.579641>,  <33.835434, 30.810656, 31.468512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816761, 31.022556, 31.579641>,  <33.785641, 31.375723, 31.764858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816761, 31.022556, 31.579641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649641, -0.307413, 0.695316,
		-0.756250, -0.354904, 0.549663,
		0.077797, -0.882916, -0.463041,
		33.840099, 30.757681, 31.440729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722618, 30.822826, 32.367275>,  <33.785641, 31.375723, 31.764858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722618, 30.822826, 32.367275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.875690, 30.605537, 32.068356>,  <33.967533, 30.475164, 31.889004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.875690, 30.605537, 32.068356>,  <33.722618, 30.822826, 32.367275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875690, 30.605537, 32.068356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594446, -0.474425, 0.649273,
		-0.707239, -0.692698, 0.141362,
		0.382684, -0.543223, -0.747303,
		33.990498, 30.442570, 31.844164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811443, 30.130732, 32.658234>,  <33.722618, 30.822826, 32.367275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811443, 30.130732, 32.658234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057308, 30.148468, 32.343216>,  <34.204826, 30.159111, 32.154205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057308, 30.148468, 32.343216>,  <33.811443, 30.130732, 32.658234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057308, 30.148468, 32.343216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669861, -0.556539, 0.491478,
		-0.416505, -0.829637, -0.371788,
		0.614663, 0.044343, -0.787543,
		34.241707, 30.161770, 32.106953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200710, 29.460115, 32.748302>,  <33.811443, 30.130732, 32.658234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200710, 29.460115, 32.748302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.411930, 29.689072, 32.497375>,  <34.538662, 29.826445, 32.346817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.411930, 29.689072, 32.497375>,  <34.200710, 29.460115, 32.748302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411930, 29.689072, 32.497375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848787, -0.379145, 0.368525,
		-0.026905, -0.727062, -0.686045,
		0.528051, 0.572390, -0.627321,
		34.570347, 29.860788, 32.309177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709579, 29.082920, 32.304810>,  <34.200710, 29.460115, 32.748302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709579, 29.082920, 32.304810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.854935, 29.454077, 32.338211>,  <34.942146, 29.676771, 32.358250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.854935, 29.454077, 32.338211>,  <34.709579, 29.082920, 32.304810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854935, 29.454077, 32.338211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837544, -0.364620, 0.406906,
		0.408010, -0.077927, -0.909646,
		0.363383, 0.927890, 0.083501,
		34.963951, 29.732445, 32.363262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517525, 29.069252, 32.206478>,  <34.709579, 29.082920, 32.304810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517525, 29.069252, 32.206478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.449486, 29.393278, 32.430927>,  <35.408661, 29.587694, 32.565598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.449486, 29.393278, 32.430927>,  <35.517525, 29.069252, 32.206478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449486, 29.393278, 32.430927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770493, -0.245657, 0.588212,
		0.614334, 0.532397, -0.582363,
		-0.170101, 0.810065, 0.561124,
		35.398457, 29.636297, 32.599266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286572, 28.578999, 31.639647>,  <35.517525, 29.069252, 32.206478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286572, 28.578999, 31.639647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.388962, 28.193972, 31.675299>,  <35.450394, 27.962955, 31.696690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.388962, 28.193972, 31.675299>,  <35.286572, 28.578999, 31.639647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388962, 28.193972, 31.675299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013375, 0.088667, 0.995972,
		-0.966591, -0.256135, 0.009822,
		0.255974, -0.962566, 0.089130,
		35.465755, 27.905201, 31.702038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826225, 28.105152, 31.803122>,  <35.286572, 28.578999, 31.639647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826225, 28.105152, 31.803122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.587803, 27.785639, 31.835758>,  <34.444748, 27.593931, 31.855339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.587803, 27.785639, 31.835758>,  <34.826225, 28.105152, 31.803122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587803, 27.785639, 31.835758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502976, 0.292243, -0.813394,
		0.625883, -0.525868, -0.575964,
		-0.596059, -0.798785, 0.081589,
		34.408985, 27.546003, 31.860235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836807, 27.760630, 31.163403>,  <34.826225, 28.105152, 31.803122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836807, 27.760630, 31.163403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.503426, 27.628054, 31.340261>,  <34.303394, 27.548508, 31.446377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.503426, 27.628054, 31.340261>,  <34.836807, 27.760630, 31.163403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503426, 27.628054, 31.340261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530803, 0.257783, -0.807339,
		0.153606, -0.907577, -0.390780,
		-0.833459, -0.331439, 0.442148,
		34.253387, 27.528622, 31.472906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512848, 27.304066, 30.663572>,  <34.836807, 27.760630, 31.163403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512848, 27.304066, 30.663572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.235073, 27.435747, 30.919506>,  <34.068409, 27.514755, 31.073067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.235073, 27.435747, 30.919506>,  <34.512848, 27.304066, 30.663572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235073, 27.435747, 30.919506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647704, 0.101347, -0.755121,
		-0.313435, -0.938804, 0.142849,
		-0.694433, 0.329205, 0.639833,
		34.026745, 27.534508, 31.111456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976345, 27.351555, 30.283979>,  <34.512848, 27.304066, 30.663572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976345, 27.351555, 30.283979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.779675, 27.515526, 30.591282>,  <33.661671, 27.613909, 30.775663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.779675, 27.515526, 30.591282>,  <33.976345, 27.351555, 30.283979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779675, 27.515526, 30.591282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749334, 0.250238, -0.613090,
		-0.443569, -0.877121, 0.184135,
		-0.491676, 0.409926, 0.768254,
		33.632172, 27.638504, 30.821758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308094, 27.018011, 30.311903>,  <33.976345, 27.351555, 30.283979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308094, 27.018011, 30.311903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.290104, 27.379486, 30.482233>,  <33.279308, 27.596371, 30.584431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.290104, 27.379486, 30.482233>,  <33.308094, 27.018011, 30.311903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290104, 27.379486, 30.482233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826944, 0.205470, -0.523398,
		-0.560483, -0.375674, 0.738057,
		-0.044978, 0.903688, 0.425824,
		33.276611, 27.650593, 30.609980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546551, 27.145678, 30.425943>,  <33.308094, 27.018011, 30.311903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546551, 27.145678, 30.425943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.744030, 27.493259, 30.439680>,  <32.862518, 27.701809, 30.447922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.744030, 27.493259, 30.439680>,  <32.546551, 27.145678, 30.425943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744030, 27.493259, 30.439680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615057, 0.376816, -0.692614,
		-0.614792, 0.320819, 0.720490,
		0.493696, 0.868956, 0.034341,
		32.892139, 27.753946, 30.449982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001335, 27.588932, 30.295164>,  <32.546551, 27.145678, 30.425943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001335, 27.588932, 30.295164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.329678, 27.802235, 30.213346>,  <32.526684, 27.930216, 30.164257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.329678, 27.802235, 30.213346>,  <32.001335, 27.588932, 30.295164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329678, 27.802235, 30.213346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456065, 0.396407, -0.796785,
		-0.343809, 0.747328, 0.568592,
		0.820853, 0.533256, -0.204542,
		32.575935, 27.962212, 30.151983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688740, 28.156038, 30.120729>,  <32.001335, 27.588932, 30.295164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688740, 28.156038, 30.120729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.058098, 28.193205, 29.971756>,  <32.279713, 28.215506, 29.882372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.058098, 28.193205, 29.971756>,  <31.688740, 28.156038, 30.120729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058098, 28.193205, 29.971756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375698, 0.417675, -0.827284,
		0.078689, 0.903833, 0.420587,
		0.923395, 0.092916, -0.372435,
		32.335117, 28.221079, 29.860025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646498, 28.833296, 29.792805>,  <31.688740, 28.156038, 30.120729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646498, 28.833296, 29.792805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.940298, 28.618147, 29.627298>,  <32.116577, 28.489058, 29.527994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.940298, 28.618147, 29.627298>,  <31.646498, 28.833296, 29.792805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940298, 28.618147, 29.627298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231301, 0.374786, -0.897794,
		0.637974, 0.755134, 0.150870,
		0.734499, -0.537873, -0.413768,
		32.160648, 28.456785, 29.503168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978790, 29.279936, 29.380123>,  <31.646498, 28.833296, 29.792805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978790, 29.279936, 29.380123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.064754, 28.923122, 29.221083>,  <32.116333, 28.709034, 29.125658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.064754, 28.923122, 29.221083>,  <31.978790, 29.279936, 29.380123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064754, 28.923122, 29.221083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333122, 0.315746, -0.888445,
		0.918064, 0.323388, -0.229298,
		0.214913, -0.892034, -0.397603,
		32.129227, 28.655512, 29.101801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121769, 29.405109, 28.681265>,  <31.978790, 29.279936, 29.380123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121769, 29.405109, 28.681265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.076633, 29.008965, 28.649134>,  <32.049553, 28.771278, 28.629856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.076633, 29.008965, 28.649134>,  <32.121769, 29.405109, 28.681265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076633, 29.008965, 28.649134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358261, 0.115958, -0.926392,
		0.926777, -0.075758, -0.367892,
		-0.112842, -0.990361, -0.080326,
		32.042782, 28.711857, 28.625036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431931, 29.254539, 28.089758>,  <32.121769, 29.405109, 28.681265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431931, 29.254539, 28.089758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.175095, 28.954046, 28.150902>,  <32.020992, 28.773750, 28.187588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.175095, 28.954046, 28.150902>,  <32.431931, 29.254539, 28.089758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175095, 28.954046, 28.150902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231475, -0.000104, -0.972841,
		0.730848, -0.660035, -0.173825,
		-0.642091, -0.751235, 0.152858,
		31.982468, 28.728676, 28.196758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452450, 28.764202, 27.487576>,  <32.431931, 29.254539, 28.089758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452450, 28.764202, 27.487576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.099033, 28.732662, 27.672243>,  <31.886984, 28.713737, 27.783045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.099033, 28.732662, 27.672243>,  <32.452450, 28.764202, 27.487576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099033, 28.732662, 27.672243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466535, 0.061350, -0.882372,
		0.041236, -0.994998, -0.090984,
		-0.883541, -0.078833, 0.461672,
		31.833971, 28.709007, 27.810743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601852, 28.208916, 27.071520>,  <32.452450, 28.764202, 27.487576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601852, 28.208916, 27.071520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.899822, 28.344547, 26.841700>,  <33.078606, 28.425926, 26.703808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.899822, 28.344547, 26.841700>,  <32.601852, 28.208916, 27.071520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899822, 28.344547, 26.841700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642600, -0.133227, 0.754530,
		0.179299, -0.931277, -0.317136,
		0.744928, 0.339078, -0.574551,
		33.123299, 28.446270, 26.669334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161198, 27.702751, 27.094683>,  <32.601852, 28.208916, 27.071520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161198, 27.702751, 27.094683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.337120, 28.041224, 26.974318>,  <33.442673, 28.244307, 26.902098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.337120, 28.041224, 26.974318>,  <33.161198, 27.702751, 27.094683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337120, 28.041224, 26.974318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671171, -0.087054, 0.736173,
		0.596739, -0.525739, -0.606218,
		0.439809, 0.846179, -0.300913,
		33.469063, 28.295078, 26.884045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808018, 27.480114, 27.158457>,  <33.161198, 27.702751, 27.094683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808018, 27.480114, 27.158457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.862518, 27.875120, 27.126842>,  <33.895218, 28.112123, 27.107874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.862518, 27.875120, 27.126842>,  <33.808018, 27.480114, 27.158457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862518, 27.875120, 27.126842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764611, -0.054096, 0.642217,
		0.629924, -0.147937, -0.762437,
		0.136253, 0.987516, -0.079038,
		33.903393, 28.171375, 27.103130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414413, 27.507429, 26.886990>,  <33.808018, 27.480114, 27.158457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414413, 27.507429, 26.886990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.325024, 27.847448, 27.077768>,  <34.271389, 28.051460, 27.192236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.325024, 27.847448, 27.077768>,  <34.414413, 27.507429, 26.886990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325024, 27.847448, 27.077768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852247, -0.067049, 0.518826,
		0.473005, 0.522421, -0.709466,
		-0.223476, 0.850047, 0.476946,
		34.257980, 28.102463, 27.220852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084000, 27.789515, 27.028156>,  <34.414413, 27.507429, 26.886990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084000, 27.789515, 27.028156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.841576, 27.991215, 27.274220>,  <34.696121, 28.112236, 27.421858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.841576, 27.991215, 27.274220>,  <35.084000, 27.789515, 27.028156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841576, 27.991215, 27.274220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722749, 0.026161, 0.690615,
		0.332151, 0.863160, -0.380303,
		-0.606060, 0.504252, 0.615159,
		34.659756, 28.142490, 27.458767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588619, 28.164345, 27.333509>,  <35.084000, 27.789515, 27.028156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588619, 28.164345, 27.333509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.257256, 28.158863, 27.557491>,  <35.058437, 28.155575, 27.691879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.257256, 28.158863, 27.557491>,  <35.588619, 28.164345, 27.333509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257256, 28.158863, 27.557491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533946, -0.321354, 0.782070,
		0.169226, 0.946860, 0.273530,
		-0.828411, -0.013704, 0.559954,
		35.008732, 28.154751, 27.725477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719852, 28.762474, 27.838392>,  <35.588619, 28.164345, 27.333509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719852, 28.762474, 27.838392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464527, 28.491814, 27.985199>,  <35.311333, 28.329418, 28.073282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464527, 28.491814, 27.985199>,  <35.719852, 28.762474, 27.838392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464527, 28.491814, 27.985199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639792, -0.201222, 0.741738,
		-0.428046, 0.708275, 0.561358,
		-0.638312, -0.676651, 0.367016,
		35.273033, 28.288818, 28.095304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807625, 28.822258, 28.539301>,  <35.719852, 28.762474, 27.838392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807625, 28.822258, 28.539301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.641575, 28.460949, 28.495901>,  <35.541943, 28.244164, 28.469862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.641575, 28.460949, 28.495901>,  <35.807625, 28.822258, 28.539301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641575, 28.460949, 28.495901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651505, -0.378401, 0.657536,
		-0.634989, 0.202274, 0.745570,
		-0.415127, -0.903271, -0.108498,
		35.517036, 28.189968, 28.463352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596462, 28.564425, 29.250170>,  <35.807625, 28.822258, 28.539301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596462, 28.564425, 29.250170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.649338, 28.248396, 29.010733>,  <35.681061, 28.058779, 28.867071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.649338, 28.248396, 29.010733>,  <35.596462, 28.564425, 29.250170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649338, 28.248396, 29.010733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578358, -0.428962, 0.693898,
		-0.805003, -0.437923, 0.400243,
		0.132184, -0.790073, -0.598592,
		35.688992, 28.011374, 28.831156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679653, 28.104424, 29.659025>,  <35.596462, 28.564425, 29.250170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679653, 28.104424, 29.659025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822269, 27.909784, 29.340000>,  <35.907837, 27.793001, 29.148586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822269, 27.909784, 29.340000>,  <35.679653, 28.104424, 29.659025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822269, 27.909784, 29.340000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776384, -0.320562, 0.542649,
		-0.519720, -0.812688, 0.263493,
		0.356539, -0.486598, -0.797561,
		35.929230, 27.763805, 29.100733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699810, 27.485535, 29.856798>,  <35.679653, 28.104424, 29.659025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699810, 27.485535, 29.856798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.965099, 27.536495, 29.561798>,  <36.124271, 27.567072, 29.384798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.965099, 27.536495, 29.561798>,  <35.699810, 27.485535, 29.856798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965099, 27.536495, 29.561798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747303, -0.166618, 0.643254,
		-0.040930, -0.977756, -0.205712,
		0.663221, 0.127401, -0.737500,
		36.164066, 27.574715, 29.340548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120029, 26.914459, 29.855846>,  <35.699810, 27.485535, 29.856798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120029, 26.914459, 29.855846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.314617, 27.214800, 29.677155>,  <36.431370, 27.395004, 29.569939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.314617, 27.214800, 29.677155>,  <36.120029, 26.914459, 29.855846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314617, 27.214800, 29.677155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848341, -0.283646, 0.447060,
		0.208962, -0.596462, -0.774963,
		0.486470, 0.750852, -0.446732,
		36.460560, 27.440056, 29.543135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.648487, 28.745068, 23.499472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906128, 29.050318, 23.520536>,  <31.060713, 29.233469, 23.533176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906128, 29.050318, 23.520536>,  <30.648487, 28.745068, 23.499472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906128, 29.050318, 23.520536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638597, -0.574339, 0.512181,
		0.421105, -0.296265, -0.857262,
		0.644100, 0.763126, 0.052663,
		31.099358, 29.279255, 23.536335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377077, 28.367092, 23.541573>,  <30.648487, 28.745068, 23.499472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377077, 28.367092, 23.541573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460350, 28.734480, 23.676077>,  <31.510313, 28.954912, 23.756779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460350, 28.734480, 23.676077>,  <31.377077, 28.367092, 23.541573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460350, 28.734480, 23.676077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536634, -0.394684, 0.745820,
		0.817731, 0.025183, -0.575049,
		0.208181, 0.918472, 0.336259,
		31.522804, 29.010021, 23.776955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159500, 28.335114, 23.741499>,  <31.377077, 28.367092, 23.541573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159500, 28.335114, 23.741499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993135, 28.652239, 23.919697>,  <31.893318, 28.842514, 24.026615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993135, 28.652239, 23.919697>,  <32.159500, 28.335114, 23.741499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993135, 28.652239, 23.919697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548048, -0.172417, 0.818484,
		0.725717, 0.584566, -0.362791,
		-0.415907, 0.792814, 0.445496,
		31.868362, 28.890083, 24.053345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739838, 28.594490, 24.025654>,  <32.159500, 28.335114, 23.741499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739838, 28.594490, 24.025654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429707, 28.762167, 24.214605>,  <32.243629, 28.862774, 24.327976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429707, 28.762167, 24.214605>,  <32.739838, 28.594490, 24.025654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429707, 28.762167, 24.214605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548634, 0.076554, 0.832551,
		0.312838, 0.904664, -0.289338,
		-0.775328, 0.419194, 0.472380,
		32.197109, 28.887926, 24.356319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950844, 29.264706, 24.390854>,  <32.739838, 28.594490, 24.025654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950844, 29.264706, 24.390854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658531, 29.078672, 24.590715>,  <32.483143, 28.967052, 24.710632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658531, 29.078672, 24.590715>,  <32.950844, 29.264706, 24.390854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658531, 29.078672, 24.590715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562614, 0.004127, 0.826710,
		-0.386549, 0.885259, 0.258645,
		-0.730784, -0.465081, 0.499654,
		32.439297, 28.939148, 24.740612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021679, 29.585426, 24.998150>,  <32.950844, 29.264706, 24.390854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021679, 29.585426, 24.998150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807152, 29.255602, 25.070223>,  <32.678436, 29.057707, 25.113466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807152, 29.255602, 25.070223>,  <33.021679, 29.585426, 24.998150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807152, 29.255602, 25.070223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475169, -0.118542, 0.871873,
		-0.697551, 0.553218, 0.455381,
		-0.536318, -0.824559, 0.180183,
		32.646255, 29.008234, 25.124277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705585, 29.652353, 25.662796>,  <33.021679, 29.585426, 24.998150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705585, 29.652353, 25.662796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646847, 29.260315, 25.609356>,  <32.611603, 29.025091, 25.577291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646847, 29.260315, 25.609356>,  <32.705585, 29.652353, 25.662796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646847, 29.260315, 25.609356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419520, -0.184022, 0.888898,
		-0.895790, 0.074481, 0.438192,
		-0.146843, -0.980096, -0.133599,
		32.602795, 28.966286, 25.569277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420612, 29.378838, 26.268873>,  <32.705585, 29.652353, 25.662796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420612, 29.378838, 26.268873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580471, 29.062216, 26.083952>,  <32.676388, 28.872242, 25.973000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580471, 29.062216, 26.083952>,  <32.420612, 29.378838, 26.268873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580471, 29.062216, 26.083952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532962, -0.209683, 0.819747,
		-0.745812, -0.573998, 0.338070,
		0.399645, -0.791555, -0.462303,
		32.700363, 28.824749, 25.945261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264931, 28.799543, 26.735844>,  <32.420612, 29.378838, 26.268873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264931, 28.799543, 26.735844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570648, 28.697433, 26.498968>,  <32.754078, 28.636168, 26.356842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570648, 28.697433, 26.498968>,  <32.264931, 28.799543, 26.735844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570648, 28.697433, 26.498968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490546, -0.365937, 0.790856,
		-0.418593, -0.894943, -0.154458,
		0.764293, -0.255278, -0.592190,
		32.799938, 28.620852, 26.321312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809298, 28.282589, 26.856232>,  <32.264931, 28.799543, 26.735844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809298, 28.282589, 26.856232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566359, 28.383833, 27.157446>,  <31.420595, 28.444580, 27.338175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566359, 28.383833, 27.157446>,  <31.809298, 28.282589, 26.856232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566359, 28.383833, 27.157446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652895, 0.381007, -0.654647,
		-0.452609, -0.889252, -0.066150,
		-0.607349, 0.253110, 0.753035,
		31.384153, 28.459766, 27.383356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110630, 27.999050, 26.771685>,  <31.809298, 28.282589, 26.856232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110630, 27.999050, 26.771685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070473, 28.317924, 27.009815>,  <31.046379, 28.509249, 27.152695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070473, 28.317924, 27.009815>,  <31.110630, 27.999050, 26.771685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070473, 28.317924, 27.009815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656506, 0.396529, -0.641688,
		-0.747610, -0.455258, 0.483549,
		-0.100393, 0.797186, 0.595329,
		31.040356, 28.557079, 27.188414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397427, 27.961115, 27.007704>,  <31.110630, 27.999050, 26.771685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397427, 27.961115, 27.007704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493296, 28.345238, 27.064795>,  <30.550817, 28.575710, 27.099049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493296, 28.345238, 27.064795>,  <30.397427, 27.961115, 27.007704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493296, 28.345238, 27.064795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828104, 0.278947, -0.486243,
		-0.506754, -0.001652, 0.862089,
		0.239674, 0.960305, 0.142726,
		30.565197, 28.633329, 27.107613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804817, 28.248554, 27.298561>,  <30.397427, 27.961115, 27.007704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804817, 28.248554, 27.298561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007177, 28.562153, 27.154667>,  <30.128593, 28.750313, 27.068331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007177, 28.562153, 27.154667>,  <29.804817, 28.248554, 27.298561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007177, 28.562153, 27.154667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828603, 0.325776, -0.455289,
		-0.239751, 0.528411, 0.814433,
		0.505902, 0.783998, -0.359737,
		30.158949, 28.797352, 27.046745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457594, 28.799786, 27.438711>,  <29.804817, 28.248554, 27.298561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457594, 28.799786, 27.438711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685074, 28.953962, 27.148052>,  <29.821562, 29.046469, 26.973656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685074, 28.953962, 27.148052>,  <29.457594, 28.799786, 27.438711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685074, 28.953962, 27.148052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805605, 0.439373, -0.397432,
		0.166083, 0.811410, 0.560384,
		0.568698, 0.385442, -0.726648,
		29.855682, 29.069595, 26.930058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332912, 29.516371, 27.398241>,  <29.457594, 28.799786, 27.438711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332912, 29.516371, 27.398241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477243, 29.404177, 27.042458>,  <29.563843, 29.336861, 26.828987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477243, 29.404177, 27.042458>,  <29.332912, 29.516371, 27.398241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477243, 29.404177, 27.042458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786062, 0.421784, -0.451890,
		0.501906, 0.862222, -0.068285,
		0.360828, -0.280483, -0.889456,
		29.585491, 29.320032, 26.775621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196585, 30.096291, 26.929882>,  <29.332912, 29.516371, 27.398241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196585, 30.096291, 26.929882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310148, 29.834276, 26.649790>,  <29.378286, 29.677067, 26.481735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310148, 29.834276, 26.649790>,  <29.196585, 30.096291, 26.929882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310148, 29.834276, 26.649790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602837, 0.445959, -0.661595,
		0.745644, 0.609956, -0.268270,
		0.283907, -0.655037, -0.700231,
		29.395321, 29.637766, 26.439720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357719, 30.520138, 26.361694>,  <29.196585, 30.096291, 26.929882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357719, 30.520138, 26.361694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273331, 30.149416, 26.237419>,  <29.222698, 29.926983, 26.162853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273331, 30.149416, 26.237419>,  <29.357719, 30.520138, 26.361694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273331, 30.149416, 26.237419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610406, 0.373165, -0.698679,
		0.763476, 0.042246, -0.644453,
		-0.210971, -0.926803, -0.310690,
		29.210039, 29.871376, 26.144213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552698, 30.440187, 25.690277>,  <29.357719, 30.520138, 26.361694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552698, 30.440187, 25.690277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280748, 30.150560, 25.736748>,  <29.117579, 29.976784, 25.764629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280748, 30.150560, 25.736748>,  <29.552698, 30.440187, 25.690277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280748, 30.150560, 25.736748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545043, 0.392946, -0.740623,
		0.490610, -0.566851, -0.661801,
		-0.679875, -0.724067, 0.116175,
		29.076786, 29.933340, 25.771601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334179, 30.159651, 25.021687>,  <29.552698, 30.440187, 25.690277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334179, 30.159651, 25.021687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028090, 30.092409, 25.270258>,  <28.844435, 30.052065, 25.419401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028090, 30.092409, 25.270258>,  <29.334179, 30.159651, 25.021687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028090, 30.092409, 25.270258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629878, 0.394915, -0.668802,
		-0.132983, -0.903207, -0.408083,
		-0.765225, -0.168103, 0.621427,
		28.798523, 30.041979, 25.456686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849945, 29.869865, 24.551334>,  <29.334179, 30.159651, 25.021687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849945, 29.869865, 24.551334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625904, 29.943228, 24.874481>,  <28.491480, 29.987246, 25.068369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625904, 29.943228, 24.874481>,  <28.849945, 29.869865, 24.551334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625904, 29.943228, 24.874481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727961, 0.356510, -0.585639,
		-0.395421, -0.916113, -0.066171,
		-0.560102, 0.183404, 0.807867,
		28.457874, 29.998249, 25.116840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163498, 29.566383, 24.413157>,  <28.849945, 29.869865, 24.551334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163498, 29.566383, 24.413157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101488, 29.826370, 24.710749>,  <28.064283, 29.982363, 24.889305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101488, 29.826370, 24.710749>,  <28.163498, 29.566383, 24.413157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101488, 29.826370, 24.710749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680211, 0.475916, -0.557510,
		-0.716437, -0.592492, 0.368337,
		-0.155022, 0.649967, 0.743983,
		28.054981, 30.021360, 24.933943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507004, 29.724339, 24.249754>,  <28.163498, 29.566383, 24.413157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507004, 29.724339, 24.249754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564110, 30.018183, 24.515074>,  <27.598373, 30.194489, 24.674267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564110, 30.018183, 24.515074>,  <27.507004, 29.724339, 24.249754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564110, 30.018183, 24.515074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602235, 0.596303, -0.530788,
		-0.785450, -0.323686, 0.527537,
		0.142763, 0.734609, 0.663301,
		27.606939, 30.238565, 24.714064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870255, 29.780493, 24.556747>,  <27.507004, 29.724339, 24.249754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870255, 29.780493, 24.556747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088682, 30.113813, 24.591200>,  <27.219738, 30.313805, 24.611872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088682, 30.113813, 24.591200>,  <26.870255, 29.780493, 24.556747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088682, 30.113813, 24.591200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652186, 0.487394, -0.580603,
		-0.525796, 0.260878, 0.809618,
		0.546070, 0.833301, 0.086129,
		27.252502, 30.363804, 24.617039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.909416, 35.232246, 22.210176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.786037, 34.866623, 22.104839>,  <32.712009, 34.647247, 22.041637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.786037, 34.866623, 22.104839>,  <32.909416, 35.232246, 22.210176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786037, 34.866623, 22.104839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441125, -0.382722, 0.811746,
		-0.842775, 0.134212, 0.521265,
		-0.308445, -0.914063, -0.263345,
		32.693504, 34.592403, 22.025835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410202, 34.988102, 22.596069>,  <32.909416, 35.232246, 22.210176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410202, 34.988102, 22.596069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.602077, 34.663879, 22.461672>,  <32.717205, 34.469345, 22.381033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.602077, 34.663879, 22.461672>,  <32.410202, 34.988102, 22.596069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602077, 34.663879, 22.461672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319642, -0.195188, 0.927216,
		-0.817144, -0.552177, 0.165458,
		0.479693, -0.810556, -0.335996,
		32.745987, 34.420712, 22.360872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262672, 34.483818, 23.072407>,  <32.410202, 34.988102, 22.596069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262672, 34.483818, 23.072407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.578201, 34.332859, 22.878361>,  <32.767517, 34.242283, 22.761932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.578201, 34.332859, 22.878361>,  <32.262672, 34.483818, 23.072407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578201, 34.332859, 22.878361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367297, -0.343398, 0.864390,
		-0.492803, -0.860030, -0.132264,
		0.788821, -0.377394, -0.485114,
		32.814846, 34.219643, 22.732826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467781, 33.967983, 23.530128>,  <32.262672, 34.483818, 23.072407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467781, 33.967983, 23.530128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795700, 33.989216, 23.302052>,  <32.992451, 34.001957, 23.165205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795700, 33.989216, 23.302052>,  <32.467781, 33.967983, 23.530128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795700, 33.989216, 23.302052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562332, -0.262840, 0.784026,
		-0.108251, -0.963378, -0.245325,
		0.819795, 0.053082, -0.570191,
		33.041637, 34.005142, 23.130995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835850, 33.362114, 23.745731>,  <32.467781, 33.967983, 23.530128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835850, 33.362114, 23.745731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.079952, 33.624924, 23.568689>,  <33.226414, 33.782612, 23.462463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.079952, 33.624924, 23.568689>,  <32.835850, 33.362114, 23.745731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079952, 33.624924, 23.568689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673928, -0.136885, 0.726005,
		0.416419, -0.741335, -0.526325,
		0.610259, 0.657027, -0.442605,
		33.263031, 33.822033, 23.435907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541229, 32.967888, 23.781055>,  <32.835850, 33.362114, 23.745731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541229, 32.967888, 23.781055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.651058, 33.340435, 23.685419>,  <33.716957, 33.563965, 23.628038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.651058, 33.340435, 23.685419>,  <33.541229, 32.967888, 23.781055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651058, 33.340435, 23.685419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732299, -0.041395, 0.679724,
		0.623176, -0.361718, -0.693406,
		0.274572, 0.931368, -0.239089,
		33.733429, 33.619846, 23.613691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237473, 32.942818, 23.631794>,  <33.541229, 32.967888, 23.781055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237473, 32.942818, 23.631794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.137268, 33.312916, 23.745756>,  <34.077145, 33.534973, 23.814133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.137268, 33.312916, 23.745756>,  <34.237473, 32.942818, 23.631794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137268, 33.312916, 23.745756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631245, -0.067018, 0.772683,
		0.734013, 0.373407, -0.567267,
		-0.250508, 0.925244, 0.284903,
		34.062115, 33.590488, 23.831226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908073, 33.351269, 23.667362>,  <34.237473, 32.942818, 23.631794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908073, 33.351269, 23.667362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646919, 33.527267, 23.913984>,  <34.490227, 33.632866, 24.061958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646919, 33.527267, 23.913984>,  <34.908073, 33.351269, 23.667362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646919, 33.527267, 23.913984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585364, -0.223500, 0.779357,
		0.480717, 0.869740, -0.111640,
		-0.652886, 0.440000, 0.616555,
		34.451054, 33.659267, 24.098951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276909, 33.816349, 24.150034>,  <34.908073, 33.351269, 23.667362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276909, 33.816349, 24.150034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.936066, 33.727112, 24.339407>,  <34.731560, 33.673569, 24.453032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.936066, 33.727112, 24.339407>,  <35.276909, 33.816349, 24.150034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936066, 33.727112, 24.339407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522178, -0.301523, 0.797756,
		-0.035223, 0.926992, 0.373424,
		-0.852109, -0.223093, 0.473434,
		34.680431, 33.660183, 24.481438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376671, 34.021614, 24.824207>,  <35.276909, 33.816349, 24.150034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376671, 34.021614, 24.824207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064747, 33.773380, 24.857128>,  <34.877594, 33.624439, 24.876881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.064747, 33.773380, 24.857128>,  <35.376671, 34.021614, 24.824207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064747, 33.773380, 24.857128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381513, -0.366875, 0.848440,
		-0.496336, 0.693019, 0.522853,
		-0.779806, -0.620587, 0.082302,
		34.830807, 33.587204, 24.881819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125153, 34.134624, 25.505638>,  <35.376671, 34.021614, 24.824207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125153, 34.134624, 25.505638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006947, 33.772118, 25.384743>,  <34.936024, 33.554615, 25.312206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006947, 33.772118, 25.384743>,  <35.125153, 34.134624, 25.505638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006947, 33.772118, 25.384743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300195, -0.388433, 0.871207,
		-0.906947, 0.166725, 0.386846,
		-0.295516, -0.906268, -0.302238,
		34.918293, 33.500237, 25.294071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999683, 33.775639, 26.144381>,  <35.125153, 34.134624, 25.505638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999683, 33.775639, 26.144381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.027252, 33.462914, 25.896505>,  <35.043793, 33.275276, 25.747780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.027252, 33.462914, 25.896505>,  <34.999683, 33.775639, 26.144381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027252, 33.462914, 25.896505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301215, -0.575866, 0.760031,
		-0.951062, -0.239043, 0.195804,
		0.068923, -0.781816, -0.619688,
		35.047928, 33.228367, 25.710598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569485, 33.243435, 26.374615>,  <34.999683, 33.775639, 26.144381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569485, 33.243435, 26.374615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.840500, 33.073025, 26.134800>,  <35.003109, 32.970779, 25.990911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.840500, 33.073025, 26.134800>,  <34.569485, 33.243435, 26.374615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840500, 33.073025, 26.134800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307608, -0.576296, 0.757140,
		-0.668072, -0.697413, -0.259413,
		0.677537, -0.426027, -0.599537,
		35.043762, 32.945217, 25.954939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489269, 32.580021, 26.589861>,  <34.569485, 33.243435, 26.374615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489269, 32.580021, 26.589861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844975, 32.601826, 26.408205>,  <35.058395, 32.614910, 26.299212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844975, 32.601826, 26.408205>,  <34.489269, 32.580021, 26.589861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844975, 32.601826, 26.408205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390884, -0.606189, 0.692636,
		-0.237538, -0.793450, -0.560368,
		0.889261, 0.054512, -0.454140,
		35.111752, 32.618179, 26.271963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164093, 31.986980, 26.922926>,  <34.489269, 32.580021, 26.589861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164093, 31.986980, 26.922926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974255, 32.211151, 27.194420>,  <33.860352, 32.345654, 27.357317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974255, 32.211151, 27.194420>,  <34.164093, 31.986980, 26.922926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974255, 32.211151, 27.194420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740842, 0.162057, -0.651836,
		-0.475299, -0.812195, 0.338275,
		-0.474598, 0.560425, 0.678734,
		33.831875, 32.379280, 27.398041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474922, 31.743273, 26.914150>,  <34.164093, 31.986980, 26.922926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474922, 31.743273, 26.914150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.455235, 32.098316, 27.097334>,  <33.443424, 32.311344, 27.207245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.455235, 32.098316, 27.097334>,  <33.474922, 31.743273, 26.914150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455235, 32.098316, 27.097334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877130, 0.180902, -0.444880,
		-0.477725, -0.423586, 0.769645,
		-0.049215, 0.887609, 0.457961,
		33.440472, 32.364597, 27.234722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767494, 31.816893, 27.126408>,  <33.474922, 31.743273, 26.914150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767494, 31.816893, 27.126408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.910133, 32.190594, 27.127272>,  <32.995716, 32.414814, 27.127790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.910133, 32.190594, 27.127272>,  <32.767494, 31.816893, 27.126408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910133, 32.190594, 27.127272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785240, 0.300972, -0.541123,
		-0.506197, 0.191270, 0.840941,
		0.356600, 0.934255, 0.002159,
		33.017113, 32.470871, 27.127920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235996, 32.276199, 27.263365>,  <32.767494, 31.816893, 27.126408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235996, 32.276199, 27.263365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.511791, 32.499283, 27.078512>,  <32.677269, 32.633133, 26.967600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.511791, 32.499283, 27.078512>,  <32.235996, 32.276199, 27.263365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511791, 32.499283, 27.078512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705832, 0.374222, -0.601464,
		-0.162501, 0.740890, 0.651671,
		0.689488, 0.557709, -0.462133,
		32.718639, 32.666595, 26.939873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148926, 32.917515, 27.290014>,  <32.235996, 32.276199, 27.263365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148926, 32.917515, 27.290014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.386024, 32.930573, 26.968124>,  <32.528286, 32.938408, 26.774990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.386024, 32.930573, 26.968124>,  <32.148926, 32.917515, 27.290014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386024, 32.930573, 26.968124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733492, 0.434540, -0.522652,
		0.332623, 0.900061, 0.281518,
		0.592749, 0.032645, -0.804725,
		32.563850, 32.940365, 26.726707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990158, 33.535755, 26.891153>,  <32.148926, 32.917515, 27.290014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990158, 33.535755, 26.891153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.187160, 33.322628, 26.615894>,  <32.305363, 33.194752, 26.450739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.187160, 33.322628, 26.615894>,  <31.990158, 33.535755, 26.891153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187160, 33.322628, 26.615894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528699, 0.444905, -0.722867,
		0.691315, 0.719838, -0.062582,
		0.492504, -0.532816, -0.688147,
		32.334911, 33.162785, 26.409451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201683, 34.027122, 26.424543>,  <31.990158, 33.535755, 26.891153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201683, 34.027122, 26.424543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.209484, 33.691727, 26.206718>,  <32.214165, 33.490490, 26.076023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.209484, 33.691727, 26.206718>,  <32.201683, 34.027122, 26.424543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209484, 33.691727, 26.206718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620301, 0.417020, -0.664319,
		0.784121, 0.350747, -0.511987,
		0.019499, -0.838493, -0.544563,
		32.215332, 33.440178, 26.043350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288940, 34.221672, 25.662294>,  <32.201683, 34.027122, 26.424543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288940, 34.221672, 25.662294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.141739, 33.849823, 25.670101>,  <32.053417, 33.626713, 25.674786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.141739, 33.849823, 25.670101>,  <32.288940, 34.221672, 25.662294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141739, 33.849823, 25.670101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507096, 0.183058, -0.842225,
		0.779377, -0.319837, -0.538772,
		-0.368002, -0.929620, 0.019517,
		32.031338, 33.570938, 25.675957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240456, 34.054424, 24.938805>,  <32.288940, 34.221672, 25.662294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240456, 34.054424, 24.938805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.025043, 33.740314, 25.061007>,  <31.895798, 33.551849, 25.134327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.025043, 33.740314, 25.061007>,  <32.240456, 34.054424, 24.938805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025043, 33.740314, 25.061007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717093, 0.236737, -0.655540,
		0.442457, -0.572098, -0.690605,
		-0.538526, -0.785276, 0.305502,
		31.863485, 33.504730, 25.152658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110439, 33.656494, 24.339037>,  <32.240456, 34.054424, 24.938805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110439, 33.656494, 24.339037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.828903, 33.616562, 24.620359>,  <31.659981, 33.592602, 24.789152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.828903, 33.616562, 24.620359>,  <32.110439, 33.656494, 24.339037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828903, 33.616562, 24.620359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707316, 0.007015, -0.706862,
		0.065632, -0.994980, -0.075548,
		-0.703843, -0.099829, 0.703305,
		31.617750, 33.586613, 24.831350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600555, 33.099758, 24.064957>,  <32.110439, 33.656494, 24.339037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600555, 33.099758, 24.064957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.435827, 33.336571, 24.342058>,  <31.336990, 33.478657, 24.508318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.435827, 33.336571, 24.342058>,  <31.600555, 33.099758, 24.064957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435827, 33.336571, 24.342058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715094, 0.261255, -0.648372,
		-0.564841, -0.762394, 0.315768,
		-0.411819, 0.592031, 0.692751,
		31.312281, 33.514179, 24.549883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871681, 32.884407, 24.116304>,  <31.600555, 33.099758, 24.064957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871681, 32.884407, 24.116304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.928614, 33.262032, 24.235300>,  <30.962772, 33.488605, 24.306698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.928614, 33.262032, 24.235300>,  <30.871681, 32.884407, 24.116304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928614, 33.262032, 24.235300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851586, 0.269984, -0.449344,
		-0.504523, -0.189382, 0.842372,
		0.142329, 0.944057, 0.297488,
		30.971312, 33.545250, 24.324547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169355, 33.118752, 24.253859>,  <30.871681, 32.884407, 24.116304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169355, 33.118752, 24.253859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.410229, 33.433674, 24.200909>,  <30.554752, 33.622627, 24.169138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.410229, 33.433674, 24.200909>,  <30.169355, 33.118752, 24.253859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410229, 33.433674, 24.200909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749773, 0.500751, -0.432537,
		-0.274251, 0.359720, 0.891845,
		0.602185, 0.787305, -0.132377,
		30.590885, 33.669865, 24.161196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655010, 33.636959, 24.185583>,  <30.169355, 33.118752, 24.253859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655010, 33.636959, 24.185583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.999779, 33.798534, 24.062996>,  <30.206640, 33.895481, 23.989443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.999779, 33.798534, 24.062996>,  <29.655010, 33.636959, 24.185583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999779, 33.798534, 24.062996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496494, 0.549723, -0.671788,
		-0.102891, 0.731188, 0.674373,
		0.861921, 0.403942, -0.306469,
		30.258354, 33.919716, 23.971056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275362, 33.962421, 24.735065>,  <29.655010, 33.636959, 24.185583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275362, 33.962421, 24.735065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.936659, 33.810261, 24.883818>,  <28.733437, 33.718964, 24.973068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.936659, 33.810261, 24.883818>,  <29.275362, 33.962421, 24.735065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936659, 33.810261, 24.883818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528594, -0.522910, 0.668696,
		-0.059915, 0.762797, 0.643857,
		-0.846758, -0.380404, 0.371879,
		28.682632, 33.696140, 24.995382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236229, 34.082031, 25.469664>,  <29.275362, 33.962421, 24.735065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236229, 34.082031, 25.469664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.985888, 33.774639, 25.416370>,  <28.835682, 33.590206, 25.384394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.985888, 33.774639, 25.416370>,  <29.236229, 34.082031, 25.469664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985888, 33.774639, 25.416370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481695, -0.515203, 0.708897,
		-0.613413, 0.379487, 0.692613,
		-0.625854, -0.768476, -0.133235,
		28.798132, 33.544098, 25.376400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927595, 33.928917, 26.128399>,  <29.236229, 34.082031, 25.469664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927595, 33.928917, 26.128399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.863268, 33.590103, 25.925749>,  <28.824671, 33.386814, 25.804159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.863268, 33.590103, 25.925749>,  <28.927595, 33.928917, 26.128399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863268, 33.590103, 25.925749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430262, -0.522130, 0.736379,
		-0.888263, -0.099557, 0.448416,
		-0.160820, -0.847035, -0.506625,
		28.815022, 33.335991, 25.773762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776300, 33.447350, 26.613825>,  <28.927595, 33.928917, 26.128399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776300, 33.447350, 26.613825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.867353, 33.228279, 26.291773>,  <28.921986, 33.096836, 26.098541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.867353, 33.228279, 26.291773>,  <28.776300, 33.447350, 26.613825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867353, 33.228279, 26.291773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456960, -0.670055, 0.584990,
		-0.859866, -0.501076, 0.097738,
		0.227635, -0.547676, -0.805130,
		28.935644, 33.063976, 26.050234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588064, 32.702168, 26.726456>,  <28.776300, 33.447350, 26.613825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588064, 32.702168, 26.726456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.859978, 32.672264, 26.434618>,  <29.023127, 32.654320, 26.259516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.859978, 32.672264, 26.434618>,  <28.588064, 32.702168, 26.726456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859978, 32.672264, 26.434618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467477, -0.722350, 0.509583,
		-0.565118, -0.687474, -0.456093,
		0.679784, -0.074762, -0.729592,
		29.063913, 32.649834, 26.215740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711933, 31.935167, 26.608150>,  <28.588064, 32.702168, 26.726456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711933, 31.935167, 26.608150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.020893, 32.124966, 26.439270>,  <29.206268, 32.238846, 26.337942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.020893, 32.124966, 26.439270>,  <28.711933, 31.935167, 26.608150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020893, 32.124966, 26.439270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634098, -0.538050, 0.555358,
		0.036351, -0.696674, -0.716466,
		0.772398, 0.474497, -0.422201,
		29.252613, 32.267315, 26.312611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281275, 31.436378, 26.443192>,  <28.711933, 31.935167, 26.608150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281275, 31.436378, 26.443192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.469929, 31.789040, 26.449459>,  <29.583120, 32.000637, 26.453220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.469929, 31.789040, 26.449459>,  <29.281275, 31.436378, 26.443192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469929, 31.789040, 26.449459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685625, -0.377829, 0.622225,
		0.554508, -0.282718, -0.782682,
		0.471634, 0.881655, 0.015670,
		29.611420, 32.053535, 26.454161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950508, 31.233995, 26.280285>,  <29.281275, 31.436378, 26.443192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950508, 31.233995, 26.280285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.964863, 31.591276, 26.459574>,  <29.973476, 31.805645, 26.567146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.964863, 31.591276, 26.459574>,  <29.950508, 31.233995, 26.280285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964863, 31.591276, 26.459574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763747, -0.313773, 0.564125,
		0.644517, 0.322084, -0.693440,
		0.035887, 0.893201, 0.448223,
		29.975630, 31.859236, 26.594040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673620, 31.514574, 26.329584>,  <29.950508, 31.233995, 26.280285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673620, 31.514574, 26.329584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.489281, 31.701366, 26.631458>,  <30.378677, 31.813442, 26.812582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.489281, 31.701366, 26.631458>,  <30.673620, 31.514574, 26.329584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489281, 31.701366, 26.631458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790720, -0.170058, 0.588083,
		0.402963, 0.867761, -0.290880,
		-0.460849, 0.466980, 0.754684,
		30.351027, 31.841461, 26.857862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121681, 32.010067, 26.611137>,  <30.673620, 31.514574, 26.329584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121681, 32.010067, 26.611137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.846106, 31.956999, 26.896166>,  <30.680759, 31.925158, 27.067183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.846106, 31.956999, 26.896166>,  <31.121681, 32.010067, 26.611137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846106, 31.956999, 26.896166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724079, -0.081585, 0.684875,
		-0.032727, 0.987797, 0.152270,
		-0.688940, -0.132670, 0.712573,
		30.639423, 31.917198, 27.109938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463526, 32.293041, 27.134212>,  <31.121681, 32.010067, 26.611137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463526, 32.293041, 27.134212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.174749, 32.094707, 27.327272>,  <31.001484, 31.975706, 27.443108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.174749, 32.094707, 27.327272>,  <31.463526, 32.293041, 27.134212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174749, 32.094707, 27.327272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640302, -0.214270, 0.737633,
		-0.262329, 0.841567, 0.472175,
		-0.721940, -0.495837, 0.482648,
		30.958168, 31.945957, 27.472067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438871, 32.542862, 27.863821>,  <31.463526, 32.293041, 27.134212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438871, 32.542862, 27.863821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.259329, 32.185448, 27.868181>,  <31.151604, 31.970999, 27.870796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.259329, 32.185448, 27.868181>,  <31.438871, 32.542862, 27.863821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259329, 32.185448, 27.868181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309789, -0.144154, 0.939814,
		-0.838188, 0.425218, 0.341512,
		-0.448857, -0.893537, 0.010900,
		31.124672, 31.917387, 27.871450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171858, 32.514431, 28.519039>,  <31.438871, 32.542862, 27.863821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171858, 32.514431, 28.519039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.184589, 32.140511, 28.377542>,  <31.192228, 31.916159, 28.292645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.184589, 32.140511, 28.377542>,  <31.171858, 32.514431, 28.519039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184589, 32.140511, 28.377542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546625, -0.280023, 0.789169,
		-0.836773, -0.218482, 0.502073,
		0.031827, -0.934801, -0.353744,
		31.194138, 31.860071, 28.271420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862299, 32.192440, 29.040619>,  <31.171858, 32.514431, 28.519039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862299, 32.192440, 29.040619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.099098, 31.944530, 28.834543>,  <31.241179, 31.795784, 28.710897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.099098, 31.944530, 28.834543>,  <30.862299, 32.192440, 29.040619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099098, 31.944530, 28.834543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388821, -0.340293, 0.856166,
		-0.705943, -0.707165, 0.039528,
		0.591999, -0.619774, -0.515188,
		31.276697, 31.758598, 28.679987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<26.534292, 30.340055, 24.888882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.826815, 30.536179, 24.699234>,  <27.002329, 30.653852, 24.585445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.826815, 30.536179, 24.699234>,  <26.534292, 30.340055, 24.888882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826815, 30.536179, 24.699234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681861, 0.541809, -0.491435,
		0.015928, 0.682674, 0.730550,
		0.731308, 0.490306, -0.474119,
		27.046207, 30.683270, 24.556999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434143, 31.104403, 25.028254>,  <26.534292, 30.340055, 24.888882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434143, 31.104403, 25.028254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.649878, 31.063374, 24.693926>,  <26.779318, 31.038755, 24.493330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.649878, 31.063374, 24.693926>,  <26.434143, 31.104403, 25.028254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649878, 31.063374, 24.693926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573510, 0.682036, -0.453776,
		0.616605, 0.724089, 0.309020,
		0.539337, -0.102574, -0.835820,
		26.811678, 31.032600, 24.443180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491434, 31.825043, 24.864580>,  <26.434143, 31.104403, 25.028254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491434, 31.825043, 24.864580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.581499, 31.633099, 24.525396>,  <26.635538, 31.517933, 24.321886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.581499, 31.633099, 24.525396>,  <26.491434, 31.825043, 24.864580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581499, 31.633099, 24.525396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486552, 0.698645, -0.524559,
		0.844138, 0.530688, -0.076167,
		0.225164, -0.479860, -0.847960,
		26.649048, 31.489141, 24.271008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664909, 32.300694, 24.344917>,  <26.491434, 31.825043, 24.864580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664909, 32.300694, 24.344917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.573721, 31.986408, 24.114897>,  <26.519009, 31.797838, 23.976885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.573721, 31.986408, 24.114897>,  <26.664909, 32.300694, 24.344917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573721, 31.986408, 24.114897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407129, 0.613417, -0.676731,
		0.884463, 0.079846, -0.459728,
		-0.227971, -0.785712, -0.575052,
		26.505329, 31.750694, 23.942381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777533, 32.567719, 23.805790>,  <26.664909, 32.300694, 24.344917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777533, 32.567719, 23.805790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.544432, 32.256634, 23.711504>,  <26.404572, 32.069981, 23.654932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.544432, 32.256634, 23.711504>,  <26.777533, 32.567719, 23.805790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544432, 32.256634, 23.711504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410115, 0.531857, -0.740901,
		0.701576, -0.335090, -0.628893,
		-0.582750, -0.777716, -0.235713,
		26.369606, 32.023319, 23.640791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845751, 32.554070, 23.079733>,  <26.777533, 32.567719, 23.805790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845751, 32.554070, 23.079733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.515451, 32.337330, 23.142397>,  <26.317272, 32.207287, 23.179995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.515451, 32.337330, 23.142397>,  <26.845751, 32.554070, 23.079733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515451, 32.337330, 23.142397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468516, 0.504265, -0.725404,
		0.314060, -0.672398, -0.670259,
		-0.825747, -0.541847, 0.156660,
		26.267727, 32.174774, 23.189394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601643, 32.246136, 22.345322>,  <26.845751, 32.554070, 23.079733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601643, 32.246136, 22.345322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.300751, 32.273766, 22.607430>,  <26.120214, 32.290344, 22.764694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.300751, 32.273766, 22.607430>,  <26.601643, 32.246136, 22.345322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300751, 32.273766, 22.607430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489202, 0.607655, -0.625649,
		-0.441395, -0.791191, -0.423304,
		-0.752231, 0.069077, 0.655269,
		26.075081, 32.294487, 22.804010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049065, 32.295502, 21.888048>,  <26.601643, 32.246136, 22.345322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049065, 32.295502, 21.888048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.879326, 32.402981, 22.233934>,  <25.777483, 32.467468, 22.441465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.879326, 32.402981, 22.233934>,  <26.049065, 32.295502, 21.888048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879326, 32.402981, 22.233934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668579, 0.551063, -0.499331,
		-0.610681, -0.790020, -0.054197,
		-0.424348, 0.268697, 0.864714,
		25.752022, 32.483589, 22.493349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425140, 32.400692, 21.675196>,  <26.049065, 32.295502, 21.888048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425140, 32.400692, 21.675196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.474028, 32.615448, 22.009098>,  <25.503361, 32.744301, 22.209438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.474028, 32.615448, 22.009098>,  <25.425140, 32.400692, 21.675196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474028, 32.615448, 22.009098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583296, 0.719337, -0.377253,
		-0.803012, -0.440802, 0.401080,
		0.122218, 0.536887, 0.834755,
		25.510693, 32.776512, 22.259525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682049, 32.629383, 21.916864>,  <25.425140, 32.400692, 21.675196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682049, 32.629383, 21.916864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.935640, 32.900696, 22.065462>,  <25.087795, 33.063484, 22.154621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.935640, 32.900696, 22.065462>,  <24.682049, 32.629383, 21.916864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935640, 32.900696, 22.065462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531607, 0.731108, -0.427640,
		-0.561660, 0.073627, 0.824085,
		0.633981, 0.678277, 0.371494,
		25.125835, 33.104179, 22.176910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.258400, 33.147049, 22.109322>,  <24.682049, 32.629383, 21.916864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.258400, 33.147049, 22.109322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.614136, 33.315582, 22.038265>,  <24.827578, 33.416702, 21.995632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.614136, 33.315582, 22.038265>,  <24.258400, 33.147049, 22.109322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614136, 33.315582, 22.038265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443962, 0.702700, -0.555977,
		-0.109422, 0.573317, 0.811994,
		0.889339, 0.421331, -0.177640,
		24.880938, 33.441982, 21.984974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.119184, 33.856789, 21.974945>,  <24.258400, 33.147049, 22.109322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.119184, 33.856789, 21.974945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.488987, 33.797157, 21.834625>,  <24.710869, 33.761379, 21.750433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.488987, 33.797157, 21.834625>,  <24.119184, 33.856789, 21.974945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488987, 33.797157, 21.834625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193637, 0.609039, -0.769140,
		0.328315, 0.779004, 0.534193,
		0.924507, -0.149081, -0.350800,
		24.766338, 33.752434, 21.729385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.425842, 34.449707, 21.941837>,  <24.119184, 33.856789, 21.974945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.425842, 34.449707, 21.941837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.530264, 34.196518, 21.650305>,  <24.592916, 34.044605, 21.475386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.530264, 34.196518, 21.650305>,  <24.425842, 34.449707, 21.941837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530264, 34.196518, 21.650305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124988, 0.726495, -0.675710,
		0.957198, 0.267493, 0.110540,
		0.261054, -0.632972, -0.728833,
		24.608580, 34.006626, 21.431656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693222, 34.872559, 21.368311>,  <24.425842, 34.449707, 21.941837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693222, 34.872559, 21.368311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.590399, 34.540092, 21.171099>,  <24.528706, 34.340611, 21.052771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.590399, 34.540092, 21.171099>,  <24.693222, 34.872559, 21.368311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590399, 34.540092, 21.171099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155623, 0.539119, -0.827727,
		0.953783, -0.136047, -0.267934,
		-0.257059, -0.831169, -0.493031,
		24.513281, 34.290741, 21.023190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940073, 35.606991, 21.388309>,  <24.693222, 34.872559, 21.368311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940073, 35.606991, 21.388309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.147312, 35.949116, 21.390135>,  <25.271656, 36.154388, 21.391230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.147312, 35.949116, 21.390135>,  <24.940073, 35.606991, 21.388309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147312, 35.949116, 21.390135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768089, -0.467599, 0.437483,
		0.376316, -0.223155, -0.899215,
		0.518098, 0.855309, 0.004562,
		25.302742, 36.205708, 21.391504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651346, 35.521595, 21.062725>,  <24.940073, 35.606991, 21.388309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651346, 35.521595, 21.062725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.637665, 35.822540, 21.325871>,  <25.629456, 36.003105, 21.483757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.637665, 35.822540, 21.325871>,  <25.651346, 35.521595, 21.062725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637665, 35.822540, 21.325871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797015, -0.376615, 0.472152,
		0.602990, 0.540477, -0.586760,
		-0.034205, 0.752360, 0.657864,
		25.627403, 36.048248, 21.523230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251251, 35.485844, 21.205362>,  <25.651346, 35.521595, 21.062725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251251, 35.485844, 21.205362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.136736, 35.764179, 21.468830>,  <26.068027, 35.931183, 21.626911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.136736, 35.764179, 21.468830>,  <26.251251, 35.485844, 21.205362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136736, 35.764179, 21.468830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864997, -0.107965, 0.490024,
		0.412092, 0.710034, -0.570992,
		-0.286286, 0.695841, 0.658669,
		26.050850, 35.972931, 21.666431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824352, 35.948059, 21.416759>,  <26.251251, 35.485844, 21.205362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824352, 35.948059, 21.416759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.550034, 35.941090, 21.707792>,  <26.385443, 35.936909, 21.882412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.550034, 35.941090, 21.707792>,  <26.824352, 35.948059, 21.416759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550034, 35.941090, 21.707792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718746, -0.173351, 0.673316,
		0.114398, 0.984706, 0.131405,
		-0.685797, -0.017421, 0.727584,
		26.344294, 35.935863, 21.926067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191082, 36.157917, 21.978167>,  <26.824352, 35.948059, 21.416759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191082, 36.157917, 21.978167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.863243, 36.011028, 22.154081>,  <26.666540, 35.922894, 22.259630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.863243, 36.011028, 22.154081>,  <27.191082, 36.157917, 21.978167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863243, 36.011028, 22.154081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567408, -0.413816, 0.711902,
		-0.079434, 0.833010, 0.547526,
		-0.819596, -0.367220, 0.439786,
		26.617365, 35.900864, 22.286016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226141, 36.342590, 22.792032>,  <27.191082, 36.157917, 21.978167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226141, 36.342590, 22.792032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.993782, 36.025936, 22.716272>,  <26.854366, 35.835945, 22.670816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.993782, 36.025936, 22.716272>,  <27.226141, 36.342590, 22.792032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993782, 36.025936, 22.716272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381414, -0.470287, 0.795835,
		-0.719083, 0.390059, 0.575129,
		-0.580899, -0.791634, -0.189402,
		26.819513, 35.788445, 22.659452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947756, 36.109627, 23.437668>,  <27.226141, 36.342590, 22.792032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947756, 36.109627, 23.437668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.909117, 35.794376, 23.194511>,  <26.885933, 35.605228, 23.048616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.909117, 35.794376, 23.194511>,  <26.947756, 36.109627, 23.437668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909117, 35.794376, 23.194511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374306, -0.594680, 0.711512,
		-0.922260, -0.158806, 0.352445,
		-0.096599, -0.788122, -0.607892,
		26.880136, 35.557941, 23.012144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598648, 35.609192, 23.812323>,  <26.947756, 36.109627, 23.437668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598648, 35.609192, 23.812323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.793200, 35.420998, 23.517818>,  <26.909931, 35.308083, 23.341116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.793200, 35.420998, 23.517818>,  <26.598648, 35.609192, 23.812323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793200, 35.420998, 23.517818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233350, -0.742097, 0.628363,
		-0.842012, -0.477429, -0.251153,
		0.486378, -0.470483, -0.736262,
		26.939114, 35.279854, 23.296940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409113, 34.902027, 23.864635>,  <26.598648, 35.609192, 23.812323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409113, 34.902027, 23.864635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.759188, 34.912567, 23.671410>,  <26.969233, 34.918892, 23.555475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.759188, 34.912567, 23.671410>,  <26.409113, 34.902027, 23.864635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759188, 34.912567, 23.671410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346672, -0.730613, 0.588237,
		-0.337435, -0.682283, -0.648558,
		0.875189, 0.026346, -0.483063,
		27.021744, 34.920471, 23.526491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597439, 34.144821, 23.801991>,  <26.409113, 34.902027, 23.864635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597439, 34.144821, 23.801991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.929956, 34.360252, 23.747021>,  <27.129467, 34.489510, 23.714039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.929956, 34.360252, 23.747021>,  <26.597439, 34.144821, 23.801991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929956, 34.360252, 23.747021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530308, -0.694439, 0.486342,
		0.166497, -0.477173, -0.862893,
		0.831296, 0.538573, -0.137426,
		27.179346, 34.521824, 23.705793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100622, 33.652672, 23.528360>,  <26.597439, 34.144821, 23.801991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100622, 33.652672, 23.528360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.314459, 33.959633, 23.669954>,  <27.442760, 34.143810, 23.754911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.314459, 33.959633, 23.669954>,  <27.100622, 33.652672, 23.528360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314459, 33.959633, 23.669954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493375, -0.623471, 0.606519,
		0.686144, -0.149591, -0.711919,
		0.534591, 0.767402, 0.353986,
		27.474836, 34.189854, 23.776150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788094, 33.521076, 23.446173>,  <27.100622, 33.652672, 23.528360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788094, 33.521076, 23.446173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.767612, 33.779938, 23.750429>,  <27.755323, 33.935253, 23.932983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.767612, 33.779938, 23.750429>,  <27.788094, 33.521076, 23.446173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767612, 33.779938, 23.750429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566301, -0.608538, 0.555864,
		0.822607, 0.459212, -0.335325,
		-0.051201, 0.647152, 0.760639,
		27.752253, 33.974083, 23.978621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429367, 33.607159, 23.641441>,  <27.788094, 33.521076, 23.446173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429367, 33.607159, 23.641441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.258890, 33.746861, 23.975239>,  <28.156605, 33.830681, 24.175518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.258890, 33.746861, 23.975239>,  <28.429367, 33.607159, 23.641441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258890, 33.746861, 23.975239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586544, -0.595606, 0.548835,
		0.688715, 0.723376, 0.048986,
		-0.426191, 0.349258, 0.834494,
		28.131033, 33.851639, 24.225588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938950, 33.777103, 23.961645>,  <28.429367, 33.607159, 23.641441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938950, 33.777103, 23.961645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.664532, 33.751190, 24.251513>,  <28.499882, 33.735641, 24.425434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.664532, 33.751190, 24.251513>,  <28.938950, 33.777103, 23.961645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664532, 33.751190, 24.251513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666109, -0.456559, 0.589790,
		0.292647, 0.887331, 0.356372,
		-0.686044, -0.064782, 0.724670,
		28.458719, 33.731754, 24.468914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477842, 34.369987, 24.134577>,  <28.938950, 33.777103, 23.961645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477842, 34.369987, 24.134577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.813198, 34.304813, 23.926517>,  <30.014412, 34.265709, 23.801682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.813198, 34.304813, 23.926517>,  <29.477842, 34.369987, 24.134577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813198, 34.304813, 23.926517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317910, 0.628987, -0.709443,
		0.442762, 0.760149, 0.475536,
		0.838389, -0.162937, -0.520150,
		30.064714, 34.255932, 23.770472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739458, 34.997505, 24.057890>,  <29.477842, 34.369987, 24.134577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739458, 34.997505, 24.057890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.895647, 34.775311, 23.764235>,  <29.989361, 34.641994, 23.588041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.895647, 34.775311, 23.764235>,  <29.739458, 34.997505, 24.057890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895647, 34.775311, 23.764235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265720, 0.695503, -0.667584,
		0.881433, 0.455749, 0.123970,
		0.390473, -0.555490, -0.734141,
		30.012789, 34.608665, 23.543993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170828, 35.454010, 23.641296>,  <29.739458, 34.997505, 24.057890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170828, 35.454010, 23.641296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.083403, 35.153271, 23.392473>,  <30.030949, 34.972828, 23.243179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.083403, 35.153271, 23.392473>,  <30.170828, 35.454010, 23.641296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083403, 35.153271, 23.392473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242879, 0.659323, -0.711550,
		0.945114, -0.004432, -0.326710,
		-0.218561, -0.751847, -0.622059,
		30.017834, 34.927715, 23.205856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520498, 35.552441, 23.077684>,  <30.170828, 35.454010, 23.641296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520498, 35.552441, 23.077684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223095, 35.308304, 22.968370>,  <30.044653, 35.161823, 22.902782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223095, 35.308304, 22.968370>,  <30.520498, 35.552441, 23.077684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223095, 35.308304, 22.968370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217951, 0.607512, -0.763823,
		0.632214, -0.508346, -0.584713,
		-0.743507, -0.610339, -0.273284,
		30.000042, 35.125202, 22.886385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478655, 35.529987, 22.273432>,  <30.520498, 35.552441, 23.077684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478655, 35.529987, 22.273432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.123623, 35.372322, 22.368793>,  <29.910604, 35.277721, 22.426010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.123623, 35.372322, 22.368793>,  <30.478655, 35.529987, 22.273432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123623, 35.372322, 22.368793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395078, 0.385223, -0.833977,
		0.236884, -0.834409, -0.497641,
		-0.887581, -0.394163, 0.238403,
		29.857349, 35.254074, 22.440315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203829, 35.261909, 21.626654>,  <30.478655, 35.529987, 22.273432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203829, 35.261909, 21.626654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870226, 35.264549, 21.847340>,  <29.670065, 35.266132, 21.979752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870226, 35.264549, 21.847340>,  <30.203829, 35.261909, 21.626654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870226, 35.264549, 21.847340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506276, 0.388374, -0.769968,
		-0.219353, -0.921478, -0.320565,
		-0.834008, 0.006601, 0.551713,
		29.620024, 35.266529, 22.012854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691015, 34.909618, 21.223768>,  <30.203829, 35.261909, 21.626654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691015, 34.909618, 21.223768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.515860, 35.165051, 21.476898>,  <29.410767, 35.318310, 21.628777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.515860, 35.165051, 21.476898>,  <29.691015, 34.909618, 21.223768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515860, 35.165051, 21.476898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391781, 0.498001, -0.773630,
		-0.809173, -0.586691, 0.032116,
		-0.437888, 0.638583, 0.632823,
		29.384493, 35.356625, 21.666746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137209, 34.449997, 20.792820>,  <29.691015, 34.909618, 21.223768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137209, 34.449997, 20.792820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.321356, 34.481907, 20.439165>,  <30.431845, 34.501053, 20.226973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.321356, 34.481907, 20.439165>,  <30.137209, 34.449997, 20.792820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321356, 34.481907, 20.439165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825454, -0.404919, 0.393276,
		-0.326632, -0.910866, -0.252261,
		0.460367, 0.079773, -0.884137,
		30.459465, 34.505840, 20.173923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491304, 33.758881, 20.527771>,  <30.137209, 34.449997, 20.792820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491304, 33.758881, 20.527771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.686165, 34.068146, 20.365339>,  <30.803082, 34.253704, 20.267879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.686165, 34.068146, 20.365339>,  <30.491304, 33.758881, 20.527771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686165, 34.068146, 20.365339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829007, -0.263172, 0.493445,
		0.274646, -0.577025, -0.769163,
		0.487153, 0.773164, -0.406079,
		30.832310, 34.300095, 20.243515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133715, 33.497383, 20.313192>,  <30.491304, 33.758881, 20.527771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133715, 33.497383, 20.313192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194895, 33.889439, 20.363672>,  <31.231604, 34.124672, 20.393959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.194895, 33.889439, 20.363672>,  <31.133715, 33.497383, 20.313192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194895, 33.889439, 20.363672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899920, -0.190911, 0.392043,
		0.408350, 0.053604, -0.911250,
		0.152953, 0.980143, 0.126198,
		31.240780, 34.183483, 20.401531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701677, 33.502522, 20.254923>,  <31.133715, 33.497383, 20.313192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701677, 33.502522, 20.254923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654488, 33.863224, 20.421255>,  <31.626173, 34.079647, 20.521055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654488, 33.863224, 20.421255>,  <31.701677, 33.502522, 20.254923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654488, 33.863224, 20.421255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911967, -0.067312, 0.404703,
		0.392935, 0.426969, -0.814432,
		-0.117974, 0.901758, 0.415831,
		31.619095, 34.133751, 20.546005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375675, 33.724670, 20.267624>,  <31.701677, 33.502522, 20.254923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375675, 33.724670, 20.267624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202545, 33.979572, 20.522676>,  <32.098667, 34.132511, 20.675707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202545, 33.979572, 20.522676>,  <32.375675, 33.724670, 20.267624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202545, 33.979572, 20.522676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850683, 0.054653, 0.522830,
		0.298326, 0.768716, -0.565754,
		-0.432828, 0.637251, 0.637629,
		32.072697, 34.170746, 20.713964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882641, 34.196815, 20.396780>,  <32.375675, 33.724670, 20.267624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882641, 34.196815, 20.396780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626041, 34.244423, 20.699913>,  <32.472080, 34.272987, 20.881794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626041, 34.244423, 20.699913>,  <32.882641, 34.196815, 20.396780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626041, 34.244423, 20.699913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766868, 0.124982, 0.629518,
		-0.019789, 0.984994, -0.171451,
		-0.641500, 0.119023, 0.757834,
		32.433590, 34.280128, 20.927263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285213, 34.733070, 20.844664>,  <32.882641, 34.196815, 20.396780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285213, 34.733070, 20.844664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015404, 34.536339, 21.064888>,  <32.853516, 34.418301, 21.197023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015404, 34.536339, 21.064888>,  <33.285213, 34.733070, 20.844664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015404, 34.536339, 21.064888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684202, -0.136381, 0.716428,
		-0.277270, 0.859947, 0.428500,
		-0.674529, -0.491824, 0.550563,
		32.813046, 34.388790, 21.230057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.001188, 32.743393, 19.525879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786108, 32.866901, 19.839705>,  <26.657061, 32.941006, 20.028000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786108, 32.866901, 19.839705>,  <27.001188, 32.743393, 19.525879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786108, 32.866901, 19.839705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672624, -0.403992, 0.619974,
		0.508387, 0.861076, 0.009540,
		-0.537699, 0.308770, 0.784564,
		26.624798, 32.959534, 20.075073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477270, 33.105892, 19.959042>,  <27.001188, 32.743393, 19.525879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477270, 33.105892, 19.959042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163748, 32.981277, 20.173925>,  <26.975634, 32.906509, 20.302855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163748, 32.981277, 20.173925>,  <27.477270, 33.105892, 19.959042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163748, 32.981277, 20.173925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616472, -0.494678, 0.612581,
		0.074902, 0.811319, 0.579786,
		-0.783806, -0.311538, 0.537208,
		26.928606, 32.887817, 20.335089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556528, 33.341991, 20.678652>,  <27.477270, 33.105892, 19.959042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556528, 33.341991, 20.678652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343605, 33.003506, 20.688137>,  <27.215851, 32.800415, 20.693829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343605, 33.003506, 20.688137>,  <27.556528, 33.341991, 20.678652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343605, 33.003506, 20.688137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657724, -0.395777, 0.640905,
		-0.532961, 0.356756, 0.767254,
		-0.532308, -0.846219, 0.023714,
		27.183912, 32.749641, 20.695251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342863, 33.169521, 21.408464>,  <27.556528, 33.341991, 20.678652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342863, 33.169521, 21.408464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347885, 32.829826, 21.197323>,  <27.350899, 32.626007, 21.070637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347885, 32.829826, 21.197323>,  <27.342863, 33.169521, 21.408464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347885, 32.829826, 21.197323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683251, -0.378150, 0.624637,
		-0.730076, -0.368498, 0.575498,
		0.012553, -0.849242, -0.527855,
		27.351650, 32.575054, 21.038967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445280, 32.627289, 21.859735>,  <27.342863, 33.169521, 21.408464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445280, 32.627289, 21.859735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535414, 32.442238, 21.516760>,  <27.589495, 32.331207, 21.310974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535414, 32.442238, 21.516760>,  <27.445280, 32.627289, 21.859735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535414, 32.442238, 21.516760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638616, -0.594511, 0.488597,
		-0.735794, -0.657671, 0.161479,
		0.225335, -0.462630, -0.857437,
		27.603014, 32.303448, 21.259529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631857, 32.120899, 22.161770>,  <27.445280, 32.627289, 21.859735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631857, 32.120899, 22.161770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.748158, 32.014381, 21.794172>,  <27.817938, 31.950470, 21.573614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.748158, 32.014381, 21.794172>,  <27.631857, 32.120899, 22.161770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748158, 32.014381, 21.794172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784280, -0.483842, 0.388332,
		-0.548060, -0.833656, 0.068174,
		0.290750, -0.266297, -0.918994,
		27.835382, 31.934492, 21.518475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727333, 31.387791, 22.155928>,  <27.631857, 32.120899, 22.161770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727333, 31.387791, 22.155928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.951387, 31.516340, 21.850519>,  <28.085819, 31.593470, 21.667274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.951387, 31.516340, 21.850519>,  <27.727333, 31.387791, 22.155928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951387, 31.516340, 21.850519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771618, -0.537768, 0.339723,
		-0.301419, -0.779439, -0.549201,
		0.560136, 0.321374, -0.763522,
		28.119429, 31.612753, 21.621462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011829, 30.853477, 21.812431>,  <27.727333, 31.387791, 22.155928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011829, 30.853477, 21.812431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.276615, 31.142725, 21.733538>,  <28.435486, 31.316275, 21.686201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.276615, 31.142725, 21.733538>,  <28.011829, 30.853477, 21.812431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276615, 31.142725, 21.733538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743648, -0.600699, 0.293510,
		0.093764, -0.340967, -0.935387,
		0.661964, 0.723120, -0.197236,
		28.475204, 31.359661, 21.674366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554420, 30.460829, 21.558716>,  <28.011829, 30.853477, 21.812431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554420, 30.460829, 21.558716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.710291, 30.820707, 21.637407>,  <28.803814, 31.036634, 21.684622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.710291, 30.820707, 21.637407>,  <28.554420, 30.460829, 21.558716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710291, 30.820707, 21.637407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908939, -0.410106, 0.075123,
		0.148268, 0.149541, -0.977576,
		0.389675, 0.899695, 0.196729,
		28.827194, 31.090616, 21.696426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170343, 30.468670, 21.172405>,  <28.554420, 30.460829, 21.558716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170343, 30.468670, 21.172405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195927, 30.734991, 21.469757>,  <29.211277, 30.894785, 21.648169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195927, 30.734991, 21.469757>,  <29.170343, 30.468670, 21.172405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195927, 30.734991, 21.469757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856672, -0.418716, 0.301314,
		0.511881, 0.617560, -0.597158,
		0.063960, 0.665805, 0.743379,
		29.215115, 30.934732, 21.692770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867216, 30.789835, 21.189878>,  <29.170343, 30.468670, 21.172405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867216, 30.789835, 21.189878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701107, 30.827541, 21.551798>,  <29.601442, 30.850166, 21.768950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701107, 30.827541, 21.551798>,  <29.867216, 30.789835, 21.189878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701107, 30.827541, 21.551798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819859, -0.392196, 0.417149,
		0.394183, 0.915038, 0.085582,
		-0.415273, 0.094268, 0.904800,
		29.576525, 30.855822, 21.823238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397726, 31.168917, 21.524475>,  <29.867216, 30.789835, 21.189878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397726, 31.168917, 21.524475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146133, 30.990768, 21.779356>,  <29.995178, 30.883879, 21.932285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146133, 30.990768, 21.779356>,  <30.397726, 31.168917, 21.524475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146133, 30.990768, 21.779356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771953, -0.454842, 0.444080,
		0.092045, 0.771208, 0.629894,
		-0.628980, -0.445373, 0.637202,
		29.957439, 30.857157, 21.970516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070337, 31.433739, 21.582571>,  <30.397726, 31.168917, 21.524475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070337, 31.433739, 21.582571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.297377, 31.344393, 21.265600>,  <31.433601, 31.290785, 21.075418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.297377, 31.344393, 21.265600>,  <31.070337, 31.433739, 21.582571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297377, 31.344393, 21.265600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609732, 0.532710, -0.586896,
		0.553224, 0.816290, 0.166175,
		0.567600, -0.223363, -0.792426,
		31.467657, 31.277384, 21.027872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120827, 32.039433, 21.067646>,  <31.070337, 31.433739, 21.582571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120827, 32.039433, 21.067646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208862, 31.724142, 20.837774>,  <31.261684, 31.534967, 20.699852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208862, 31.724142, 20.837774>,  <31.120827, 32.039433, 21.067646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208862, 31.724142, 20.837774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525479, 0.400540, -0.750626,
		0.821847, 0.467188, -0.326042,
		0.220091, -0.788228, -0.574680,
		31.274889, 31.487675, 20.665371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318457, 32.333805, 20.370710>,  <31.120827, 32.039433, 21.067646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318457, 32.333805, 20.370710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208895, 31.953093, 20.315445>,  <31.143158, 31.724665, 20.282286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208895, 31.953093, 20.315445>,  <31.318457, 32.333805, 20.370710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208895, 31.953093, 20.315445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431710, 0.250046, -0.866662,
		0.859419, -0.177737, -0.479383,
		-0.273905, -0.951781, -0.138163,
		31.126722, 31.667559, 20.273996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431534, 32.260204, 19.628256>,  <31.318457, 32.333805, 20.370710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431534, 32.260204, 19.628256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.180689, 31.965397, 19.729080>,  <31.030182, 31.788513, 19.789576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.180689, 31.965397, 19.729080>,  <31.431534, 32.260204, 19.628256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180689, 31.965397, 19.729080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602949, 0.254442, -0.756117,
		0.493136, -0.626151, -0.603948,
		-0.627113, -0.737017, 0.252062,
		30.992556, 31.744291, 19.804699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350182, 31.887856, 19.059284>,  <31.431534, 32.260204, 19.628256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350182, 31.887856, 19.059284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.045141, 31.779993, 19.294477>,  <30.862116, 31.715275, 19.435593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.045141, 31.779993, 19.294477>,  <31.350182, 31.887856, 19.059284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045141, 31.779993, 19.294477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616076, 0.025670, -0.787268,
		0.197200, -0.962614, -0.185706,
		-0.762603, -0.269658, 0.587981,
		30.816360, 31.699097, 19.470873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067751, 31.368235, 18.663551>,  <31.350182, 31.887856, 19.059284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067751, 31.368235, 18.663551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.806299, 31.520178, 18.925385>,  <30.649429, 31.611343, 19.082485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.806299, 31.520178, 18.925385>,  <31.067751, 31.368235, 18.663551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806299, 31.520178, 18.925385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657322, 0.143738, -0.739775,
		-0.375098, -0.913809, 0.155737,
		-0.653628, 0.379858, 0.654583,
		30.610210, 31.634134, 19.121759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485636, 31.060192, 18.445036>,  <31.067751, 31.368235, 18.663551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485636, 31.060192, 18.445036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392038, 31.376444, 18.671364>,  <30.335880, 31.566195, 18.807159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392038, 31.376444, 18.671364>,  <30.485636, 31.060192, 18.445036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392038, 31.376444, 18.671364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721915, 0.248524, -0.645813,
		-0.651220, -0.559587, 0.512616,
		-0.233991, 0.790632, 0.565818,
		30.321840, 31.613634, 18.841108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847181, 30.986128, 18.339878>,  <30.485636, 31.060192, 18.445036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847181, 30.986128, 18.339878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.865732, 31.343201, 18.519196>,  <29.876863, 31.557446, 18.626785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.865732, 31.343201, 18.519196>,  <29.847181, 30.986128, 18.339878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865732, 31.343201, 18.519196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864876, 0.260441, -0.429139,
		-0.499839, -0.367815, 0.784138,
		0.046378, 0.892683, 0.448293,
		29.879646, 31.611006, 18.653683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138872, 31.220282, 18.613737>,  <29.847181, 30.986128, 18.339878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138872, 31.220282, 18.613737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341806, 31.558777, 18.548632>,  <29.463568, 31.761873, 18.509569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341806, 31.558777, 18.548632>,  <29.138872, 31.220282, 18.613737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341806, 31.558777, 18.548632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746600, 0.337311, -0.573419,
		-0.430346, 0.412436, 0.802931,
		0.507337, 0.846237, -0.162764,
		29.494007, 31.812649, 18.499802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562344, 31.755857, 18.626665>,  <29.138872, 31.220282, 18.613737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562344, 31.755857, 18.626665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855595, 31.956614, 18.443089>,  <29.031546, 32.077068, 18.332943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855595, 31.956614, 18.443089>,  <28.562344, 31.755857, 18.626665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855595, 31.956614, 18.443089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675016, 0.619288, -0.401043,
		0.082938, 0.603809, 0.792802,
		0.733127, 0.501893, -0.458944,
		29.075533, 32.107182, 18.305405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401295, 32.462212, 18.792389>,  <28.562344, 31.755857, 18.626665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401295, 32.462212, 18.792389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636934, 32.428650, 18.470913>,  <28.778318, 32.408512, 18.278027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636934, 32.428650, 18.470913>,  <28.401295, 32.462212, 18.792389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636934, 32.428650, 18.470913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603493, 0.615722, -0.506638,
		0.537361, 0.783483, 0.312086,
		0.589100, -0.083906, -0.803692,
		28.813663, 32.403477, 18.229805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634628, 33.060516, 18.463919>,  <28.401295, 32.462212, 18.792389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634628, 33.060516, 18.463919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641556, 32.806129, 18.155310>,  <28.645712, 32.653500, 17.970144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641556, 32.806129, 18.155310>,  <28.634628, 33.060516, 18.463919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641556, 32.806129, 18.155310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471270, 0.675355, -0.567274,
		0.881819, 0.373421, -0.288014,
		0.017321, -0.635965, -0.771523,
		28.646751, 32.615341, 17.923853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628801, 33.575294, 17.899010>,  <28.634628, 33.060516, 18.463919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628801, 33.575294, 17.899010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566505, 33.217632, 17.731092>,  <28.529127, 33.003036, 17.630342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566505, 33.217632, 17.731092>,  <28.628801, 33.575294, 17.899010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566505, 33.217632, 17.731092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530391, 0.434219, -0.728107,
		0.833325, 0.109259, -0.541878,
		-0.155741, -0.894157, -0.419796,
		28.519783, 32.949387, 17.605154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909685, 33.620186, 17.203688>,  <28.628801, 33.575294, 17.899010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909685, 33.620186, 17.203688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.650759, 33.315315, 17.207121>,  <28.495403, 33.132393, 17.209181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.650759, 33.315315, 17.207121>,  <28.909685, 33.620186, 17.203688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650759, 33.315315, 17.207121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466082, 0.386884, -0.795668,
		0.603118, -0.519048, -0.605672,
		-0.647315, -0.762174, 0.008582,
		28.456564, 33.086662, 17.209696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658350, 34.379364, 17.496792>,  <28.909685, 33.620186, 17.203688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658350, 34.379364, 17.496792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521751, 34.638737, 17.768942>,  <28.439793, 34.794361, 17.932232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521751, 34.638737, 17.768942>,  <28.658350, 34.379364, 17.496792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521751, 34.638737, 17.768942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751373, -0.246537, 0.612093,
		0.564640, 0.720244, -0.403025,
		-0.341495, 0.648434, 0.680378,
		28.419302, 34.833267, 17.973055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224106, 34.834118, 17.630348>,  <28.658350, 34.379364, 17.496792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224106, 34.834118, 17.630348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968893, 34.871708, 17.936050>,  <28.815765, 34.894260, 18.119471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968893, 34.871708, 17.936050>,  <29.224106, 34.834118, 17.630348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968893, 34.871708, 17.936050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754988, -0.118745, 0.644897,
		0.151355, 0.988468, 0.004814,
		-0.638032, 0.093974, 0.764254,
		28.777483, 34.899899, 18.165327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442455, 35.381756, 18.034143>,  <29.224106, 34.834118, 17.630348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442455, 35.381756, 18.034143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.223276, 35.152378, 18.277756>,  <29.091768, 35.014751, 18.423923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.223276, 35.152378, 18.277756>,  <29.442455, 35.381756, 18.034143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223276, 35.152378, 18.277756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762833, -0.043769, 0.645112,
		-0.343279, 0.818074, 0.461426,
		-0.547946, -0.573444, 0.609030,
		29.058893, 34.980343, 18.460464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532949, 35.683079, 18.671940>,  <29.442455, 35.381756, 18.034143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532949, 35.683079, 18.671940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426464, 35.307255, 18.758060>,  <29.362574, 35.081760, 18.809732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426464, 35.307255, 18.758060>,  <29.532949, 35.683079, 18.671940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426464, 35.307255, 18.758060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675585, -0.022549, 0.736937,
		-0.687542, 0.341638, 0.640756,
		-0.266214, -0.939561, 0.215302,
		29.346600, 35.025387, 18.822651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518980, 35.713207, 19.371151>,  <29.532949, 35.683079, 18.671940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518980, 35.713207, 19.371151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527687, 35.315983, 19.324938>,  <29.532911, 35.077648, 19.297211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527687, 35.315983, 19.324938>,  <29.518980, 35.713207, 19.371151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527687, 35.315983, 19.324938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728765, -0.063350, 0.681827,
		-0.684418, -0.099037, 0.722332,
		0.021766, -0.993065, -0.115532,
		29.534218, 35.018063, 19.290277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544981, 35.443798, 19.968966>,  <29.518980, 35.713207, 19.371151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544981, 35.443798, 19.968966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686071, 35.142365, 19.747087>,  <29.770725, 34.961502, 19.613960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686071, 35.142365, 19.747087>,  <29.544981, 35.443798, 19.968966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686071, 35.142365, 19.747087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695611, -0.185322, 0.694104,
		-0.625866, -0.630683, 0.458836,
		0.352727, -0.753588, -0.554697,
		29.791889, 34.916286, 19.580679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799294, 35.084984, 20.481871>,  <29.544981, 35.443798, 19.968966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799294, 35.084984, 20.481871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993809, 34.936077, 20.165657>,  <30.110518, 34.846733, 19.975929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993809, 34.936077, 20.165657>,  <29.799294, 35.084984, 20.481871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993809, 34.936077, 20.165657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847767, -0.018190, 0.530058,
		-0.211703, -0.927947, 0.306752,
		0.486286, -0.372268, -0.790533,
		30.139694, 34.824398, 19.928497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097830, 35.077259, 20.849224>,  <29.799294, 35.084984, 20.481871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097830, 35.077259, 20.849224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134443, 35.358688, 21.131105>,  <29.156410, 35.527546, 21.300234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134443, 35.358688, 21.131105>,  <29.097830, 35.077259, 20.849224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134443, 35.358688, 21.131105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462383, 0.656787, -0.595679,
		-0.881943, -0.271318, 0.385438,
		0.091532, 0.703575, 0.704701,
		29.161903, 35.569759, 21.342516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406332, 35.371517, 20.882841>,  <29.097830, 35.077259, 20.849224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406332, 35.371517, 20.882841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666088, 35.643253, 21.019541>,  <28.821941, 35.806293, 21.101561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666088, 35.643253, 21.019541>,  <28.406332, 35.371517, 20.882841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666088, 35.643253, 21.019541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403621, 0.688782, -0.602220,
		-0.644501, 0.253139, 0.721484,
		0.649391, 0.679337, 0.341749,
		28.860905, 35.847054, 21.122065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057158, 35.941029, 21.295376>,  <28.406332, 35.371517, 20.882841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057158, 35.941029, 21.295376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394192, 36.106586, 21.157539>,  <28.596413, 36.205921, 21.074837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394192, 36.106586, 21.157539>,  <28.057158, 35.941029, 21.295376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394192, 36.106586, 21.157539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524952, 0.774113, -0.353799,
		0.120317, 0.478999, 0.869531,
		0.842585, 0.413894, -0.344590,
		28.646967, 36.230755, 21.054163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907948, 36.692829, 21.260796>,  <28.057158, 35.941029, 21.295376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907948, 36.692829, 21.260796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230070, 36.637844, 21.030115>,  <28.423344, 36.604851, 20.891706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230070, 36.637844, 21.030115>,  <27.907948, 36.692829, 21.260796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230070, 36.637844, 21.030115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290298, 0.756719, -0.585750,
		0.516922, 0.639123, 0.569485,
		0.805307, -0.137466, -0.576701,
		28.471663, 36.596603, 20.857105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346279, 37.265739, 21.270313>,  <27.907948, 36.692829, 21.260796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346279, 37.265739, 21.270313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.401014, 37.064949, 20.928717>,  <28.433855, 36.944477, 20.723759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.401014, 37.064949, 20.928717>,  <28.346279, 37.265739, 21.270313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401014, 37.064949, 20.928717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397631, 0.761763, -0.511475,
		0.907284, 0.409563, -0.095360,
		0.136840, -0.501971, -0.853990,
		28.442066, 36.914356, 20.672520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259453, 37.812984, 20.843721>,  <28.346279, 37.265739, 21.270313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259453, 37.812984, 20.843721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254332, 37.503723, 20.590086>,  <28.251259, 37.318165, 20.437904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254332, 37.503723, 20.590086>,  <28.259453, 37.812984, 20.843721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254332, 37.503723, 20.590086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416458, 0.580647, -0.699580,
		0.909065, 0.255117, -0.329419,
		-0.012802, -0.773152, -0.634091,
		28.250490, 37.271778, 20.399858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522623, 38.080181, 20.188118>,  <28.259453, 37.812984, 20.843721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522623, 38.080181, 20.188118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319286, 37.747910, 20.097292>,  <28.197285, 37.548546, 20.042795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319286, 37.747910, 20.097292>,  <28.522623, 38.080181, 20.188118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319286, 37.747910, 20.097292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416875, 0.468096, -0.779167,
		0.753527, -0.301426, -0.584243,
		-0.508343, -0.830679, -0.227066,
		28.166782, 37.498707, 20.029173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685051, 37.786343, 19.453447>,  <28.522623, 38.080181, 20.188118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685051, 37.786343, 19.453447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339748, 37.602413, 19.536730>,  <28.132566, 37.492054, 19.586699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339748, 37.602413, 19.536730>,  <28.685051, 37.786343, 19.453447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339748, 37.602413, 19.536730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425744, 0.441693, -0.789714,
		0.271168, -0.770368, -0.577062,
		-0.863256, -0.459826, 0.208207,
		28.080772, 37.464466, 19.599192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462822, 37.347778, 18.932743>,  <28.685051, 37.786343, 19.453447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462822, 37.347778, 18.932743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113495, 37.449791, 19.098766>,  <27.903898, 37.510998, 19.198380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113495, 37.449791, 19.098766>,  <28.462822, 37.347778, 18.932743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113495, 37.449791, 19.098766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297498, 0.395474, -0.868962,
		-0.385756, -0.882361, -0.269504,
		-0.873320, 0.255030, 0.415057,
		27.851500, 37.526299, 19.223284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.148891, 31.569685, 31.057098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866528, 31.296646, 31.132730>,  <36.697109, 31.132822, 31.178110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866528, 31.296646, 31.132730>,  <37.148891, 31.569685, 31.057098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866528, 31.296646, 31.132730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548183, 0.357457, -0.756122,
		0.448542, -0.637401, -0.626522,
		-0.705907, -0.682601, 0.189078,
		36.654755, 31.091867, 31.189455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968563, 31.201424, 30.458788>,  <37.148891, 31.569685, 31.057098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968563, 31.201424, 30.458788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633286, 31.194765, 30.676834>,  <36.432117, 31.190771, 30.807661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633286, 31.194765, 30.676834>,  <36.968563, 31.201424, 30.458788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633286, 31.194765, 30.676834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538062, 0.188315, -0.821600,
		-0.088979, -0.981968, -0.166800,
		-0.838196, -0.016644, 0.545116,
		36.381828, 31.189772, 30.840368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446152, 30.780663, 30.334679>,  <36.968563, 31.201424, 30.458788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446152, 30.780663, 30.334679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201550, 31.033203, 30.525448>,  <36.054787, 31.184727, 30.639910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201550, 31.033203, 30.525448>,  <36.446152, 30.780663, 30.334679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201550, 31.033203, 30.525448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504418, 0.153332, -0.849736,
		-0.609610, -0.760188, 0.224701,
		-0.611505, 0.631350, 0.476925,
		36.018097, 31.222609, 30.668526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764626, 30.551556, 30.150488>,  <36.446152, 30.780663, 30.334679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764626, 30.551556, 30.150488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767826, 30.927885, 30.286011>,  <35.769745, 31.153683, 30.367325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767826, 30.927885, 30.286011>,  <35.764626, 30.551556, 30.150488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767826, 30.927885, 30.286011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593902, 0.277056, -0.755328,
		-0.804498, -0.195176, 0.560972,
		0.007998, 0.940822, 0.338806,
		35.770226, 31.210133, 30.387653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099670, 30.678596, 30.195208>,  <35.764626, 30.551556, 30.150488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099670, 30.678596, 30.195208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.286755, 31.029367, 30.150953>,  <35.399006, 31.239830, 30.124401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.286755, 31.029367, 30.150953>,  <35.099670, 30.678596, 30.195208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286755, 31.029367, 30.150953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520003, 0.171785, -0.836712,
		-0.714731, 0.448873, 0.536352,
		0.467714, 0.876928, -0.110635,
		35.427071, 31.292446, 30.117764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530910, 31.059622, 29.815756>,  <35.099670, 30.678596, 30.195208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530910, 31.059622, 29.815756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861172, 31.283892, 29.790668>,  <35.059330, 31.418453, 29.775616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861172, 31.283892, 29.790668>,  <34.530910, 31.059622, 29.815756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861172, 31.283892, 29.790668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373863, 0.460494, -0.805092,
		-0.422512, 0.688179, 0.589825,
		0.825658, 0.560675, -0.062720,
		35.108868, 31.452093, 29.771852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303806, 31.753096, 29.738131>,  <34.530910, 31.059622, 29.815756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303806, 31.753096, 29.738131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681267, 31.765566, 29.606348>,  <34.907745, 31.773048, 29.527279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681267, 31.765566, 29.606348>,  <34.303806, 31.753096, 29.738131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681267, 31.765566, 29.606348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296196, 0.523567, -0.798840,
		0.147588, 0.851414, 0.503301,
		0.943655, 0.031177, -0.329458,
		34.964363, 31.774920, 29.507511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447990, 32.481113, 29.617241>,  <34.303806, 31.753096, 29.738131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447990, 32.481113, 29.617241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681492, 32.279491, 29.362631>,  <34.821590, 32.158516, 29.209866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681492, 32.279491, 29.362631>,  <34.447990, 32.481113, 29.617241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681492, 32.279491, 29.362631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445068, 0.457033, -0.770088,
		0.679081, 0.732835, 0.042453,
		0.583749, -0.504057, -0.636524,
		34.856617, 32.128273, 29.171673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752213, 32.941978, 29.098963>,  <34.447990, 32.481113, 29.617241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752213, 32.941978, 29.098963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730915, 32.576996, 28.936687>,  <34.718136, 32.358006, 28.839321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730915, 32.576996, 28.936687>,  <34.752213, 32.941978, 29.098963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730915, 32.576996, 28.936687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334411, 0.399100, -0.853750,
		0.940922, 0.090213, -0.326384,
		-0.053240, -0.912459, -0.405690,
		34.714943, 32.303257, 28.814980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967346, 33.046425, 28.384037>,  <34.752213, 32.941978, 29.098963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967346, 33.046425, 28.384037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789593, 32.688091, 28.383278>,  <34.682941, 32.473091, 28.382822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789593, 32.688091, 28.383278>,  <34.967346, 33.046425, 28.384037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789593, 32.688091, 28.383278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478685, 0.239241, -0.844763,
		0.757224, -0.374486, -0.535138,
		-0.444379, -0.895837, -0.001898,
		34.656281, 32.419342, 28.382708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936069, 32.908772, 27.711096>,  <34.967346, 33.046425, 28.384037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936069, 32.908772, 27.711096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669403, 32.662365, 27.878942>,  <34.509403, 32.514523, 27.979650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669403, 32.662365, 27.878942>,  <34.936069, 32.908772, 27.711096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669403, 32.662365, 27.878942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624215, 0.153780, -0.765968,
		0.407320, -0.772578, -0.487046,
		-0.666668, -0.616016, 0.419617,
		34.469402, 32.477562, 28.004827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773285, 32.413403, 27.224361>,  <34.936069, 32.908772, 27.711096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773285, 32.413403, 27.224361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461952, 32.461433, 27.470867>,  <34.275154, 32.490250, 27.618771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461952, 32.461433, 27.470867>,  <34.773285, 32.413403, 27.224361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461952, 32.461433, 27.470867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588081, 0.204368, -0.782556,
		-0.219910, -0.971502, -0.088453,
		-0.778332, 0.120075, 0.616265,
		34.228455, 32.497456, 27.655746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839603, 31.899418, 26.711372>,  <34.773285, 32.413403, 27.224361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839603, 31.899418, 26.711372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133995, 32.148876, 26.605991>,  <35.310631, 32.298550, 26.542763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133995, 32.148876, 26.605991>,  <34.839603, 31.899418, 26.711372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133995, 32.148876, 26.605991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595707, -0.411648, 0.689695,
		0.321675, -0.664540, -0.674472,
		0.735975, 0.623645, -0.263454,
		35.354786, 32.335968, 26.526955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429001, 31.517015, 26.588928>,  <34.839603, 31.899418, 26.711372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429001, 31.517015, 26.588928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628784, 31.862816, 26.611492>,  <35.748653, 32.070297, 26.625031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628784, 31.862816, 26.611492>,  <35.429001, 31.517015, 26.588928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628784, 31.862816, 26.611492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737097, -0.458256, 0.496678,
		0.455229, -0.206489, -0.866100,
		0.499454, 0.864502, 0.056409,
		35.778622, 32.122166, 26.628414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114410, 31.358551, 26.521620>,  <35.429001, 31.517015, 26.588928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114410, 31.358551, 26.521620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102985, 31.708261, 26.715454>,  <36.096130, 31.918089, 26.831755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102985, 31.708261, 26.715454>,  <36.114410, 31.358551, 26.521620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102985, 31.708261, 26.715454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734760, -0.310322, 0.603181,
		0.677725, 0.373280, -0.633522,
		-0.028560, 0.874278, 0.484584,
		36.094418, 31.970545, 26.860830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719994, 31.468275, 26.587206>,  <36.114410, 31.358551, 26.521620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719994, 31.468275, 26.587206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592968, 31.737326, 26.854555>,  <36.516754, 31.898756, 27.014965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592968, 31.737326, 26.854555>,  <36.719994, 31.468275, 26.587206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592968, 31.737326, 26.854555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780148, -0.215329, 0.587369,
		0.539001, 0.707959, -0.456369,
		-0.317564, 0.672628, 0.668375,
		36.497700, 31.939114, 27.055067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254753, 31.776899, 26.689108>,  <36.719994, 31.468275, 26.587206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254753, 31.776899, 26.689108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024231, 31.859951, 27.005276>,  <36.885918, 31.909782, 27.194977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024231, 31.859951, 27.005276>,  <37.254753, 31.776899, 26.689108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024231, 31.859951, 27.005276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769865, -0.186565, 0.610329,
		0.274187, 0.960252, -0.052329,
		-0.576307, 0.207630, 0.790418,
		36.851337, 31.922239, 27.242401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707134, 32.132446, 27.088999>,  <37.254753, 31.776899, 26.689108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707134, 32.132446, 27.088999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419277, 32.011692, 27.339113>,  <37.246563, 31.939240, 27.489182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419277, 32.011692, 27.339113>,  <37.707134, 32.132446, 27.088999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419277, 32.011692, 27.339113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693335, -0.361066, 0.623633,
		0.037503, 0.882324, 0.469146,
		-0.719639, -0.301887, 0.625287,
		37.203384, 31.921125, 27.526699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881718, 32.445236, 27.805420>,  <37.707134, 32.132446, 27.088999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881718, 32.445236, 27.805420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672321, 32.104588, 27.816076>,  <37.546684, 31.900200, 27.822470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672321, 32.104588, 27.816076>,  <37.881718, 32.445236, 27.805420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672321, 32.104588, 27.816076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656044, -0.382925, 0.650365,
		-0.543661, 0.357934, 0.759155,
		-0.523487, -0.851617, 0.026639,
		37.515274, 31.849102, 27.824068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058640, 32.182030, 28.420525>,  <37.881718, 32.445236, 27.805420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058640, 32.182030, 28.420525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859737, 31.858072, 28.296070>,  <37.740395, 31.663698, 28.221397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859737, 31.858072, 28.296070>,  <38.058640, 32.182030, 28.420525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859737, 31.858072, 28.296070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420079, -0.538525, 0.730428,
		-0.759124, 0.232510, 0.608005,
		-0.497257, -0.809895, -0.311135,
		37.710560, 31.615103, 28.202730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854454, 31.797024, 29.011799>,  <38.058640, 32.182030, 28.420525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854454, 31.797024, 29.011799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848236, 31.531694, 28.712530>,  <37.844505, 31.372498, 28.532969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848236, 31.531694, 28.712530>,  <37.854454, 31.797024, 29.011799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848236, 31.531694, 28.712530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480068, -0.661329, 0.576350,
		-0.877094, -0.350213, 0.328722,
		-0.015548, -0.663321, -0.748173,
		37.843571, 31.332699, 28.488079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692375, 31.107115, 29.291389>,  <37.854454, 31.797024, 29.011799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692375, 31.107115, 29.291389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872490, 31.044241, 28.939816>,  <37.980560, 31.006516, 28.728870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872490, 31.044241, 28.939816>,  <37.692375, 31.107115, 29.291389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872490, 31.044241, 28.939816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486850, -0.781954, 0.389262,
		-0.748474, -0.603192, -0.275582,
		0.450292, -0.157185, -0.878937,
		38.007576, 30.997086, 28.676134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714790, 30.338333, 29.260384>,  <37.692375, 31.107115, 29.291389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714790, 30.338333, 29.260384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979088, 30.450876, 28.982029>,  <38.137665, 30.518402, 28.815016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979088, 30.450876, 28.982029>,  <37.714790, 30.338333, 29.260384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979088, 30.450876, 28.982029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494252, -0.860821, 0.121251,
		-0.564918, -0.424058, -0.707844,
		0.660745, 0.281356, -0.695884,
		38.177311, 30.535282, 28.773264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785114, 29.751001, 28.850861>,  <37.714790, 30.338333, 29.260384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785114, 29.751001, 28.850861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.110008, 29.972692, 28.778074>,  <38.304943, 30.105707, 28.734402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.110008, 29.972692, 28.778074>,  <37.785114, 29.751001, 28.850861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110008, 29.972692, 28.778074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578857, -0.804356, 0.133925,
		-0.072141, -0.214110, -0.974142,
		0.812232, 0.554228, -0.181966,
		38.353676, 30.138960, 28.723484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207062, 29.291775, 28.459076>,  <37.785114, 29.751001, 28.850861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207062, 29.291775, 28.459076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465446, 29.572956, 28.578135>,  <38.620476, 29.741665, 28.649570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465446, 29.572956, 28.578135>,  <38.207062, 29.291775, 28.459076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465446, 29.572956, 28.578135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703235, -0.699662, 0.126224,
		0.296983, 0.127782, -0.946294,
		0.645957, 0.702954, 0.297649,
		38.659233, 29.783842, 28.667429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746368, 29.268173, 28.093641>,  <38.207062, 29.291775, 28.459076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746368, 29.268173, 28.093641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.887932, 29.461891, 28.413694>,  <38.972870, 29.578121, 28.605726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.887932, 29.461891, 28.413694>,  <38.746368, 29.268173, 28.093641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887932, 29.461891, 28.413694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642013, -0.747900, 0.168713,
		0.680125, 0.453986, -0.575609,
		0.353905, 0.484295, 0.800131,
		38.994102, 29.607180, 28.653734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461105, 29.216818, 28.064476>,  <38.746368, 29.268173, 28.093641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461105, 29.216818, 28.064476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.378708, 29.265619, 28.452843>,  <39.329269, 29.294901, 28.685863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.378708, 29.265619, 28.452843>,  <39.461105, 29.216818, 28.064476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378708, 29.265619, 28.452843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704051, -0.670613, 0.233644,
		0.679616, 0.731705, 0.052245,
		-0.205994, 0.122005, 0.970918,
		39.316910, 29.302221, 28.744118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085213, 28.580549, 28.165236>,  <39.461105, 29.216818, 28.064476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085213, 28.580549, 28.165236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.743813, 28.433846, 28.313303>,  <38.538971, 28.345823, 28.402143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.743813, 28.433846, 28.313303>,  <39.085213, 28.580549, 28.165236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743813, 28.433846, 28.313303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410116, 0.034543, -0.911379,
		0.321472, -0.929673, -0.179898,
		-0.853499, -0.366761, 0.370169,
		38.487762, 28.323818, 28.424355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725197, 28.151440, 27.722683>,  <39.085213, 28.580549, 28.165236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725197, 28.151440, 27.722683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.410175, 28.230370, 27.956202>,  <38.221161, 28.277727, 28.096312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.410175, 28.230370, 27.956202>,  <38.725197, 28.151440, 27.722683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410175, 28.230370, 27.956202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587080, 0.047724, -0.808121,
		-0.187325, -0.979175, 0.078261,
		-0.787557, 0.197327, 0.583794,
		38.173908, 28.289568, 28.131340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163040, 27.759199, 27.525835>,  <38.725197, 28.151440, 27.722683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163040, 27.759199, 27.525835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013626, 28.074263, 27.721821>,  <37.923977, 28.263300, 27.839413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013626, 28.074263, 27.721821>,  <38.163040, 27.759199, 27.525835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013626, 28.074263, 27.721821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707922, 0.099268, -0.699280,
		-0.599432, -0.608061, 0.520522,
		-0.373534, 0.787659, 0.489964,
		37.901566, 28.310560, 27.868811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477875, 27.621334, 27.467516>,  <38.163040, 27.759199, 27.525835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477875, 27.621334, 27.467516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509308, 27.997332, 27.600327>,  <37.528168, 28.222929, 27.680012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509308, 27.997332, 27.600327>,  <37.477875, 27.621334, 27.467516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509308, 27.997332, 27.600327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567425, 0.316014, -0.760371,
		-0.819667, -0.128649, 0.558208,
		0.078581, 0.939992, 0.332025,
		37.532883, 28.279329, 27.699934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872013, 27.891476, 27.367796>,  <37.477875, 27.621334, 27.467516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872013, 27.891476, 27.367796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062366, 28.238834, 27.423542>,  <37.176579, 28.447250, 27.456989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062366, 28.238834, 27.423542>,  <36.872013, 27.891476, 27.367796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062366, 28.238834, 27.423542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627481, 0.446256, -0.638062,
		-0.616285, 0.216191, 0.757268,
		0.475879, 0.868399, 0.139365,
		37.205132, 28.499353, 27.465351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372864, 28.370659, 27.596304>,  <36.872013, 27.891476, 27.367796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372864, 28.370659, 27.596304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675201, 28.540319, 27.396786>,  <36.856606, 28.642115, 27.277075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675201, 28.540319, 27.396786>,  <36.372864, 28.370659, 27.596304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675201, 28.540319, 27.396786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645652, 0.356248, -0.675442,
		-0.108793, 0.832577, 0.543120,
		0.755843, 0.424149, -0.498798,
		36.901955, 28.667564, 27.247147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075386, 28.941174, 27.243990>,  <36.372864, 28.370659, 27.596304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075386, 28.941174, 27.243990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.436558, 28.914015, 27.074230>,  <36.653259, 28.897718, 26.972374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.436558, 28.914015, 27.074230>,  <36.075386, 28.941174, 27.243990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436558, 28.914015, 27.074230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366053, 0.395982, -0.842142,
		0.225235, 0.915745, 0.332687,
		0.902925, -0.067899, -0.424400,
		36.707436, 28.893644, 26.946911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303902, 29.621582, 26.916733>,  <36.075386, 28.941174, 27.243990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303902, 29.621582, 26.916733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534657, 29.355139, 26.727629>,  <36.673111, 29.195272, 26.614166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534657, 29.355139, 26.727629>,  <36.303902, 29.621582, 26.916733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534657, 29.355139, 26.727629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167950, 0.469681, -0.866713,
		0.799369, 0.579398, 0.159082,
		0.576890, -0.666106, -0.472758,
		36.707722, 29.155308, 26.585802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523762, 30.002850, 26.440327>,  <36.303902, 29.621582, 26.916733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523762, 30.002850, 26.440327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585461, 29.638042, 26.288313>,  <36.622482, 29.419157, 26.197105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585461, 29.638042, 26.288313>,  <36.523762, 30.002850, 26.440327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585461, 29.638042, 26.288313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303122, 0.322407, -0.896756,
		0.940385, 0.253521, -0.226722,
		0.154250, -0.912020, -0.380034,
		36.631737, 29.364437, 26.174303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915508, 30.097998, 25.879421>,  <36.523762, 30.002850, 26.440327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915508, 30.097998, 25.879421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742752, 29.740530, 25.830715>,  <36.639099, 29.526049, 25.801493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742752, 29.740530, 25.830715>,  <36.915508, 30.097998, 25.879421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742752, 29.740530, 25.830715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390274, 0.306882, -0.868049,
		0.813117, -0.327379, -0.481315,
		-0.431888, -0.893670, -0.121763,
		36.613186, 29.472429, 25.794186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063301, 29.806328, 25.170160>,  <36.915508, 30.097998, 25.879421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063301, 29.806328, 25.170160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743980, 29.593449, 25.282927>,  <36.552387, 29.465721, 25.350586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743980, 29.593449, 25.282927>,  <37.063301, 29.806328, 25.170160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743980, 29.593449, 25.282927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493512, 0.309763, -0.812707,
		0.345199, -0.787913, -0.509933,
		-0.798301, -0.532203, 0.281914,
		36.504490, 29.433788, 25.367502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774380, 29.577021, 24.581055>,  <37.063301, 29.806328, 25.170160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774380, 29.577021, 24.581055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461567, 29.485504, 24.812944>,  <36.273880, 29.430593, 24.952080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461567, 29.485504, 24.812944>,  <36.774380, 29.577021, 24.581055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461567, 29.485504, 24.812944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622280, 0.338290, -0.705924,
		-0.034606, -0.912806, -0.406925,
		-0.782030, -0.228793, 0.579727,
		36.226959, 29.416866, 24.986862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336845, 29.264772, 24.121363>,  <36.774380, 29.577021, 24.581055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336845, 29.264772, 24.121363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130882, 29.422810, 24.425671>,  <36.007305, 29.517632, 24.608255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130882, 29.422810, 24.425671>,  <36.336845, 29.264772, 24.121363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130882, 29.422810, 24.425671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722558, 0.277505, -0.633167,
		-0.461277, -0.875724, 0.142589,
		-0.514910, 0.395094, 0.760768,
		35.976410, 29.541338, 24.653900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712872, 29.119209, 23.882122>,  <36.336845, 29.264772, 24.121363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712872, 29.119209, 23.882122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634323, 29.395779, 24.160221>,  <35.587193, 29.561720, 24.327080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634323, 29.395779, 24.160221>,  <35.712872, 29.119209, 23.882122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634323, 29.395779, 24.160221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787592, 0.311135, -0.531878,
		-0.584070, -0.652016, 0.483463,
		-0.196370, 0.691426, 0.695248,
		35.575413, 29.603207, 24.368795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946087, 29.056786, 24.220158>,  <35.712872, 29.119209, 23.882122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946087, 29.056786, 24.220158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081055, 29.432384, 24.246788>,  <35.162033, 29.657743, 24.262766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081055, 29.432384, 24.246788>,  <34.946087, 29.056786, 24.220158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081055, 29.432384, 24.246788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757580, 0.312844, -0.572888,
		-0.558769, 0.142863, 0.816925,
		0.337415, 0.938998, 0.066578,
		35.182278, 29.714085, 24.266762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320873, 29.446224, 24.149286>,  <34.946087, 29.056786, 24.220158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320873, 29.446224, 24.149286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616940, 29.702568, 24.067848>,  <34.794579, 29.856375, 24.018986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616940, 29.702568, 24.067848>,  <34.320873, 29.446224, 24.149286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616940, 29.702568, 24.067848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632569, 0.560926, -0.534058,
		-0.228055, 0.524080, 0.820567,
		0.740167, 0.640860, -0.203594,
		34.838989, 29.894827, 24.006769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936729, 30.059048, 24.316925>,  <34.320873, 29.446224, 24.149286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936729, 30.059048, 24.316925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255409, 30.123072, 24.083809>,  <34.446617, 30.161486, 23.943939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255409, 30.123072, 24.083809>,  <33.936729, 30.059048, 24.316925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255409, 30.123072, 24.083809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552224, 0.584636, -0.594348,
		0.245590, 0.795350, 0.554170,
		0.796702, 0.160060, -0.582792,
		34.494419, 30.171089, 23.908972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880741, 30.797287, 24.147001>,  <33.936729, 30.059048, 24.316925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880741, 30.797287, 24.147001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140167, 30.639423, 23.886660>,  <34.295822, 30.544706, 23.730455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140167, 30.639423, 23.886660>,  <33.880741, 30.797287, 24.147001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140167, 30.639423, 23.886660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209112, 0.729795, -0.650900,
		0.731872, 0.558252, 0.390791,
		0.648564, -0.394657, -0.650854,
		34.334736, 30.521027, 23.691404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160656, 31.417990, 23.730639>,  <33.880741, 30.797287, 24.147001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160656, 31.417990, 23.730639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207729, 31.084663, 23.514587>,  <34.235973, 30.884668, 23.384956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207729, 31.084663, 23.514587>,  <34.160656, 31.417990, 23.730639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207729, 31.084663, 23.514587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411696, 0.454024, -0.790170,
		0.903691, 0.315358, -0.289641,
		0.117683, -0.833313, -0.540129,
		34.243034, 30.834669, 23.352549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319798, 31.715897, 23.029419>,  <34.160656, 31.417990, 23.730639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319798, 31.715897, 23.029419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188244, 31.339544, 22.996973>,  <34.109314, 31.113733, 22.977505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188244, 31.339544, 22.996973>,  <34.319798, 31.715897, 23.029419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188244, 31.339544, 22.996973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536980, 0.256971, -0.803504,
		0.776846, -0.220700, -0.589747,
		-0.328881, -0.940881, -0.081116,
		34.089581, 31.057280, 22.972639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135815, 31.644629, 22.324053>,  <34.319798, 31.715897, 23.029419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135815, 31.644629, 22.324053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.942070, 31.320068, 22.454908>,  <33.825821, 31.125332, 22.533421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.942070, 31.320068, 22.454908>,  <34.135815, 31.644629, 22.324053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942070, 31.320068, 22.454908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595799, 0.032116, -0.802491,
		0.640636, -0.583607, -0.498988,
		-0.484365, -0.811401, 0.327137,
		33.796761, 31.076649, 22.553049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074932, 31.139883, 21.681440>,  <34.135815, 31.644629, 22.324053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074932, 31.139883, 21.681440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804707, 31.078735, 21.969952>,  <33.642570, 31.042046, 22.143059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804707, 31.078735, 21.969952>,  <34.074932, 31.139883, 21.681440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804707, 31.078735, 21.969952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718492, -0.083055, -0.690558,
		0.165472, -0.984750, -0.053729,
		-0.675565, -0.152872, 0.721278,
		33.602036, 31.032873, 22.186335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602512, 30.594801, 21.436792>,  <34.074932, 31.139883, 21.681440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602512, 30.594801, 21.436792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374256, 30.774744, 21.711601>,  <33.237301, 30.882710, 21.876486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374256, 30.774744, 21.711601>,  <33.602512, 30.594801, 21.436792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374256, 30.774744, 21.711601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805101, -0.141629, -0.575981,
		-0.161816, -0.881792, 0.443011,
		-0.570639, 0.449871, 0.687013,
		33.203064, 30.909700, 21.917707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080303, 30.087900, 21.421787>,  <33.602512, 30.594801, 21.436792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080303, 30.087900, 21.421787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953705, 30.433170, 21.579145>,  <32.877747, 30.640333, 21.673561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953705, 30.433170, 21.579145>,  <33.080303, 30.087900, 21.421787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953705, 30.433170, 21.579145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867801, -0.095984, -0.487555,
		-0.383085, -0.495697, 0.779442,
		-0.316493, 0.863175, 0.393396,
		32.858757, 30.692123, 21.697165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286057, 29.913956, 21.596825>,  <33.080303, 30.087900, 21.421787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286057, 29.913956, 21.596825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331501, 30.310837, 21.617308>,  <32.358768, 30.548965, 21.629597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331501, 30.310837, 21.617308>,  <32.286057, 29.913956, 21.596825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331501, 30.310837, 21.617308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863122, 0.124091, -0.489511,
		-0.492050, 0.011416, 0.870492,
		0.113609, 0.992205, 0.051206,
		32.365585, 30.608498, 21.632669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627470, 30.145792, 21.731806>,  <32.286057, 29.913956, 21.596825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627470, 30.145792, 21.731806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.850977, 30.448572, 21.596273>,  <31.985081, 30.630239, 21.514954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.850977, 30.448572, 21.596273>,  <31.627470, 30.145792, 21.731806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850977, 30.448572, 21.596273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796328, 0.375612, -0.474107,
		-0.231605, 0.534738, 0.812659,
		0.558768, 0.756948, -0.338833,
		32.018608, 30.675657, 21.494623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183294, 30.730537, 21.737057>,  <31.627470, 30.145792, 21.731806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183294, 30.730537, 21.737057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.466682, 30.844603, 21.478830>,  <31.636715, 30.913042, 21.323895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.466682, 30.844603, 21.478830>,  <31.183294, 30.730537, 21.737057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466682, 30.844603, 21.478830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686831, 0.488927, -0.537786,
		0.162276, 0.824398, 0.542249,
		0.708470, 0.285164, -0.645563,
		31.679224, 30.930151, 21.285162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034649, 31.052879, 22.306156>,  <31.183294, 30.730537, 21.737057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034649, 31.052879, 22.306156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667639, 30.910347, 22.376778>,  <30.447432, 30.824827, 22.419149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667639, 30.910347, 22.376778>,  <31.034649, 31.052879, 22.306156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667639, 30.910347, 22.376778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387030, -0.698119, 0.602360,
		-0.091386, 0.621013, 0.778455,
		-0.917527, -0.356333, 0.176553,
		30.392380, 30.803448, 22.429743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756538, 31.143372, 23.083052>,  <31.034649, 31.052879, 22.306156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756538, 31.143372, 23.083052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.608612, 30.829950, 22.883341>,  <30.519855, 30.641897, 22.763514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.608612, 30.829950, 22.883341>,  <30.756538, 31.143372, 23.083052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608612, 30.829950, 22.883341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595461, -0.612389, 0.520006,
		-0.713206, -0.104995, 0.693047,
		-0.369816, -0.783553, -0.499279,
		30.497667, 30.594885, 22.733557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670536, 30.779737, 23.610958>,  <30.756538, 31.143372, 23.083052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670536, 30.779737, 23.610958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657309, 30.510946, 23.315025>,  <30.649372, 30.349670, 23.137466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657309, 30.510946, 23.315025>,  <30.670536, 30.779737, 23.610958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657309, 30.510946, 23.315025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504354, -0.650291, 0.568109,
		-0.862864, -0.354350, 0.360420,
		-0.033069, -0.671980, -0.739831,
		30.647388, 30.309353, 23.093077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453245, 30.150904, 23.972609>,  <30.670536, 30.779737, 23.610958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453245, 30.150904, 23.972609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.598801, 30.042555, 23.616135>,  <30.686134, 29.977545, 23.402250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.598801, 30.042555, 23.616135>,  <30.453245, 30.150904, 23.972609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598801, 30.042555, 23.616135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478029, -0.766858, 0.428273,
		-0.799421, -0.581856, -0.149563,
		0.363887, -0.270875, -0.891186,
		30.707968, 29.961292, 23.348780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323317, 29.355797, 23.812244>,  <30.453245, 30.150904, 23.972609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323317, 29.355797, 23.812244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.631355, 29.474588, 23.586412>,  <30.816179, 29.545864, 23.450912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.631355, 29.474588, 23.586412>,  <30.323317, 29.355797, 23.812244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631355, 29.474588, 23.586412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549737, -0.757943, 0.351158,
		-0.323632, -0.580796, -0.746952,
		0.770098, 0.296981, -0.564580,
		30.862385, 29.563683, 23.417038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
