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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.348207, 14.346020, 14.874687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.241613, 14.667295, 15.087806>,  <4.177657, 14.860061, 15.215677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.241613, 14.667295, 15.087806>,  <4.348207, 14.346020, 14.874687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.241613, 14.667295, 15.087806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463231, -0.378029, 0.801568,
		0.845223, 0.460414, -0.271323,
		-0.266485, 0.803189, 0.532797,
		4.161668, 14.908253, 15.247644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.938078, 14.709400, 15.132607>,  <4.348207, 14.346020, 14.874687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.938078, 14.709400, 15.132607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.613570, 14.698789, 15.366235>,  <4.418865, 14.692422, 15.506412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.613570, 14.698789, 15.366235>,  <4.938078, 14.709400, 15.132607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.613570, 14.698789, 15.366235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549033, -0.378009, 0.745434,
		0.201008, 0.925422, 0.321233,
		-0.811270, -0.026529, 0.584069,
		4.370189, 14.690830, 15.541455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.416642, 14.359007, 15.699076>,  <4.938078, 14.709400, 15.132607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.416642, 14.359007, 15.699076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.289779, 13.985294, 15.764225>,  <5.213661, 13.761066, 15.803315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.289779, 13.985294, 15.764225>,  <5.416642, 14.359007, 15.699076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.289779, 13.985294, 15.764225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948109, -0.308304, 0.077706,
		-0.022384, 0.179067, 0.983582,
		-0.317157, -0.934282, 0.162874,
		5.194632, 13.705009, 15.813087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.452397, 15.113380, 15.468210>,  <5.416642, 14.359007, 15.699076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.452397, 15.113380, 15.468210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.810486, 15.010072, 15.613466>,  <6.025340, 14.948087, 15.700620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.810486, 15.010072, 15.613466>,  <5.452397, 15.113380, 15.468210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.810486, 15.010072, 15.613466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159911, 0.574445, 0.802771,
		-0.415938, -0.776729, 0.472956,
		0.895223, -0.258271, 0.363141,
		6.079053, 14.932590, 15.722408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.323195, 15.027346, 16.241640>,  <5.452397, 15.113380, 15.468210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.323195, 15.027346, 16.241640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.705715, 15.098406, 16.148746>,  <5.935226, 15.141042, 16.093010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.705715, 15.098406, 16.148746>,  <5.323195, 15.027346, 16.241640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.705715, 15.098406, 16.148746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114803, 0.502345, 0.857012,
		0.268910, -0.846221, 0.459997,
		0.956299, 0.177651, -0.232234,
		5.992604, 15.151701, 16.079077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.810400, 14.778462, 16.849161>,  <5.323195, 15.027346, 16.241640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.810400, 14.778462, 16.849161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.991997, 15.064751, 16.636885>,  <6.100955, 15.236524, 16.509518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.991997, 15.064751, 16.636885>,  <5.810400, 14.778462, 16.849161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.991997, 15.064751, 16.636885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212082, 0.491689, 0.844549,
		0.865397, -0.495970, 0.071432,
		0.453993, 0.715721, -0.530692,
		6.128195, 15.279467, 16.477676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.445832, 14.934450, 17.256096>,  <5.810400, 14.778462, 16.849161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.445832, 14.934450, 17.256096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.412794, 15.260180, 17.026295>,  <6.392972, 15.455619, 16.888414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.412794, 15.260180, 17.026295>,  <6.445832, 14.934450, 17.256096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.412794, 15.260180, 17.026295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112888, 0.580407, 0.806464,
		0.990169, 0.001755, -0.139866,
		-0.082595, 0.814325, -0.574503,
		6.388016, 15.504478, 16.853945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.879847, 15.427408, 17.591625>,  <6.445832, 14.934450, 17.256096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.879847, 15.427408, 17.591625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.624596, 15.624854, 17.355274>,  <6.471445, 15.743321, 17.213465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.624596, 15.624854, 17.355274>,  <6.879847, 15.427408, 17.591625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.624596, 15.624854, 17.355274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022077, 0.778858, 0.626812,
		0.769613, 0.386942, -0.507910,
		-0.638129, 0.493616, -0.590876,
		6.433157, 15.772939, 17.178011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.150577, 16.050339, 17.569988>,  <6.879847, 15.427408, 17.591625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.150577, 16.050339, 17.569988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.768248, 16.119104, 17.474617>,  <6.538850, 16.160364, 17.417395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.768248, 16.119104, 17.474617>,  <7.150577, 16.050339, 17.569988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.768248, 16.119104, 17.474617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009607, 0.792431, 0.609886,
		0.293788, 0.585233, -0.755772,
		-0.955822, 0.171916, -0.238429,
		6.481501, 16.170679, 17.403088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.116331, 16.799131, 17.554506>,  <7.150577, 16.050339, 17.569988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.116331, 16.799131, 17.554506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.744144, 16.659739, 17.599751>,  <6.520833, 16.576103, 17.626898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.744144, 16.659739, 17.599751>,  <7.116331, 16.799131, 17.554506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.744144, 16.659739, 17.599751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176837, 0.697550, 0.694372,
		-0.320877, 0.626087, -0.710671,
		-0.930466, -0.348481, 0.113113,
		6.465005, 16.555195, 17.633684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.683950, 17.338036, 17.476294>,  <7.116331, 16.799131, 17.554506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.683950, 17.338036, 17.476294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478240, 17.076534, 17.698332>,  <6.354815, 16.919634, 17.831554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478240, 17.076534, 17.698332>,  <6.683950, 17.338036, 17.476294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.478240, 17.076534, 17.698332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105641, 0.690604, 0.715476,
		-0.851095, 0.309310, -0.424223,
		-0.514274, -0.653753, 0.555094,
		6.323958, 16.880409, 17.864861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.263914, 17.696772, 17.770016>,  <6.683950, 17.338036, 17.476294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.263914, 17.696772, 17.770016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.216101, 17.379997, 18.009531>,  <6.187413, 17.189932, 18.153240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.216101, 17.379997, 18.009531>,  <6.263914, 17.696772, 17.770016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.216101, 17.379997, 18.009531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420994, 0.586637, 0.691824,
		-0.899153, -0.169391, -0.403523,
		-0.119533, -0.791936, 0.598789,
		6.180241, 17.142416, 18.189167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.506176, 17.607277, 18.012043>,  <6.263914, 17.696772, 17.770016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.506176, 17.607277, 18.012043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.756586, 17.418844, 18.260614>,  <5.906831, 17.305784, 18.409758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.756586, 17.418844, 18.260614>,  <5.506176, 17.607277, 18.012043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.756586, 17.418844, 18.260614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311761, 0.579252, 0.753175,
		-0.714773, -0.665242, 0.215759,
		0.626023, -0.471084, 0.621430,
		5.944393, 17.277519, 18.447044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.116260, 17.398355, 18.625744>,  <5.506176, 17.607277, 18.012043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.116260, 17.398355, 18.625744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.486789, 17.402323, 18.776386>,  <5.709106, 17.404703, 18.866772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.486789, 17.402323, 18.776386>,  <5.116260, 17.398355, 18.625744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.486789, 17.402323, 18.776386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316531, 0.562586, 0.763744,
		-0.204297, -0.826679, 0.524275,
		0.926321, 0.009918, 0.376604,
		5.764685, 17.405298, 18.889368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.971195, 17.359606, 19.312832>,  <5.116260, 17.398355, 18.625744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.971195, 17.359606, 19.312832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.337378, 17.518116, 19.284822>,  <5.557088, 17.613222, 19.268017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.337378, 17.518116, 19.284822>,  <4.971195, 17.359606, 19.312832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.337378, 17.518116, 19.284822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177649, 0.554100, 0.813274,
		0.361079, -0.732079, 0.577653,
		0.915458, 0.396276, -0.070021,
		5.612015, 17.636999, 19.263817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.149463, 17.567614, 20.032724>,  <4.971195, 17.359606, 19.312832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.149463, 17.567614, 20.032724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.412504, 17.756496, 19.797920>,  <5.570329, 17.869825, 19.657038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.412504, 17.756496, 19.797920>,  <5.149463, 17.567614, 20.032724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.412504, 17.756496, 19.797920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105332, 0.713900, 0.692281,
		0.745964, -0.517077, 0.419724,
		0.657604, 0.472206, -0.587008,
		5.609785, 17.898159, 19.621817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.611024, 17.937033, 20.491291>,  <5.149463, 17.567614, 20.032724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.611024, 17.937033, 20.491291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.651831, 18.127428, 20.141886>,  <5.676316, 18.241665, 19.932241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.651831, 18.127428, 20.141886>,  <5.611024, 17.937033, 20.491291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.651831, 18.127428, 20.141886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064687, 0.879412, 0.471646,
		0.992677, 0.008389, 0.120506,
		0.102018, 0.475987, -0.873515,
		5.682436, 18.270224, 19.879831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.223770, 18.432838, 20.581524>,  <5.611024, 17.937033, 20.491291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.223770, 18.432838, 20.581524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.001834, 18.558548, 20.273397>,  <5.868673, 18.633974, 20.088522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.001834, 18.558548, 20.273397>,  <6.223770, 18.432838, 20.581524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.001834, 18.558548, 20.273397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118041, 0.886803, 0.446819,
		0.823541, 0.338842, -0.454936,
		-0.554839, 0.314272, -0.770316,
		5.835382, 18.652830, 20.042303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.357272, 19.158981, 20.645531>,  <6.223770, 18.432838, 20.581524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.357272, 19.158981, 20.645531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.067230, 19.166414, 20.370176>,  <5.893205, 19.170874, 20.204964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.067230, 19.166414, 20.370176>,  <6.357272, 19.158981, 20.645531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.067230, 19.166414, 20.370176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285259, 0.901734, 0.324814,
		0.626778, 0.431892, -0.648551,
		-0.725105, 0.018581, -0.688388,
		5.849698, 19.171989, 20.163660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.413846, 19.854618, 20.307257>,  <6.357272, 19.158981, 20.645531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.413846, 19.854618, 20.307257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.043508, 19.704451, 20.289957>,  <5.821304, 19.614351, 20.279577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.043508, 19.704451, 20.289957>,  <6.413846, 19.854618, 20.307257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.043508, 19.704451, 20.289957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375372, 0.900397, 0.219957,
		-0.043636, 0.219881, -0.974550,
		-0.925846, -0.375418, -0.043247,
		5.765754, 19.591825, 20.276983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.018949, 20.360966, 20.019924>,  <6.413846, 19.854618, 20.307257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.018949, 20.360966, 20.019924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.706602, 20.153555, 20.159279>,  <5.519193, 20.029108, 20.242891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.706602, 20.153555, 20.159279>,  <6.018949, 20.360966, 20.019924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.706602, 20.153555, 20.159279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451898, 0.853924, 0.258074,
		-0.431314, 0.044086, -0.901124,
		-0.780868, -0.518527, 0.348387,
		5.472341, 19.997997, 20.263796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.511236, 20.793173, 19.940371>,  <6.018949, 20.360966, 20.019924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.511236, 20.793173, 19.940371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.313951, 20.526476, 20.163870>,  <5.195581, 20.366459, 20.297970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.313951, 20.526476, 20.163870>,  <5.511236, 20.793173, 19.940371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.313951, 20.526476, 20.163870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501415, 0.742764, 0.443717,
		-0.710863, -0.061320, -0.700652,
		-0.493210, -0.666740, 0.558750,
		5.165988, 20.326454, 20.331495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.786520, 20.802446, 19.857702>,  <5.511236, 20.793173, 19.940371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.786520, 20.802446, 19.857702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.832966, 20.653734, 20.226114>,  <4.860833, 20.564507, 20.447161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.832966, 20.653734, 20.226114>,  <4.786520, 20.802446, 19.857702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.832966, 20.653734, 20.226114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606962, 0.707453, 0.362088,
		-0.786203, -0.601074, -0.143511,
		0.116114, -0.371780, 0.921030,
		4.867800, 20.542200, 20.502424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.065565, 20.902992, 20.230736>,  <4.786520, 20.802446, 19.857702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.065565, 20.902992, 20.230736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.335549, 20.845987, 20.520321>,  <4.497539, 20.811785, 20.694071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.335549, 20.845987, 20.520321>,  <4.065565, 20.902992, 20.230736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.335549, 20.845987, 20.520321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534319, 0.582252, 0.612769,
		-0.508855, -0.800421, 0.316849,
		0.674959, -0.142512, 0.723962,
		4.538036, 20.803234, 20.737509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.657849, 20.723383, 20.850592>,  <4.065565, 20.902992, 20.230736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.657849, 20.723383, 20.850592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.018834, 20.874376, 20.933601>,  <4.235425, 20.964972, 20.983408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.018834, 20.874376, 20.933601>,  <3.657849, 20.723383, 20.850592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.018834, 20.874376, 20.933601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421339, 0.673276, 0.607595,
		0.089634, -0.635771, 0.766656,
		0.902463, 0.377484, 0.207527,
		4.289573, 20.987621, 20.995859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.627378, 20.772543, 21.655973>,  <3.657849, 20.723383, 20.850592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.627378, 20.772543, 21.655973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.891586, 21.022423, 21.489378>,  <4.050110, 21.172352, 21.389420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.891586, 21.022423, 21.489378>,  <3.627378, 20.772543, 21.655973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.891586, 21.022423, 21.489378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217310, 0.690044, 0.690374,
		0.718671, -0.365500, 0.591542,
		0.660522, 0.624700, -0.416488,
		4.089741, 21.209833, 21.364431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.113458, 21.079407, 22.184092>,  <3.627378, 20.772543, 21.655973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.113458, 21.079407, 22.184092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134863, 21.333670, 21.876047>,  <4.147707, 21.486227, 21.691219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134863, 21.333670, 21.876047>,  <4.113458, 21.079407, 22.184092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.134863, 21.333670, 21.876047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067286, 0.771760, 0.632344,
		0.996298, 0.017979, 0.084070,
		0.053513, 0.635659, -0.770113,
		4.150918, 21.524368, 21.645014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.959002, 21.677120, 22.553780>,  <4.113458, 21.079407, 22.184092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.959002, 21.677120, 22.553780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.030411, 21.815714, 22.185415>,  <4.073257, 21.898870, 21.964397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.030411, 21.815714, 22.185415>,  <3.959002, 21.677120, 22.553780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.030411, 21.815714, 22.185415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122928, 0.936467, 0.328509,
		0.976227, 0.054559, 0.209774,
		0.178523, 0.346486, -0.920911,
		4.083968, 21.919661, 21.909142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.423048, 22.142715, 22.709972>,  <3.959002, 21.677120, 22.553780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.423048, 22.142715, 22.709972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.233399, 22.208740, 22.364033>,  <4.119609, 22.248354, 22.156469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.233399, 22.208740, 22.364033>,  <4.423048, 22.142715, 22.709972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.233399, 22.208740, 22.364033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004132, 0.982676, 0.185284,
		0.880449, 0.084274, -0.466592,
		-0.474124, 0.165061, -0.864848,
		4.091162, 22.258259, 22.104578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.853620, 22.565161, 22.280132>,  <4.423048, 22.142715, 22.709972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.853620, 22.565161, 22.280132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.486294, 22.640846, 22.141052>,  <4.265898, 22.686256, 22.057604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.486294, 22.640846, 22.141052>,  <4.853620, 22.565161, 22.280132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.486294, 22.640846, 22.141052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114594, 0.967824, 0.224020,
		0.378898, 0.165877, -0.910451,
		-0.918316, 0.189213, -0.347698,
		4.210799, 22.697611, 22.036743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.031328, 23.075668, 21.842167>,  <4.853620, 22.565161, 22.280132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.031328, 23.075668, 21.842167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.674344, 23.117390, 22.017727>,  <4.460153, 23.142424, 22.123064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.674344, 23.117390, 22.017727>,  <5.031328, 23.075668, 21.842167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.674344, 23.117390, 22.017727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126128, 0.991797, 0.020768,
		-0.433135, 0.073892, -0.898295,
		-0.892461, 0.104305, 0.438901,
		4.406605, 23.148682, 22.149397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.630962, 22.642239, 21.612316>,  <5.031328, 23.075668, 21.842167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.630962, 22.642239, 21.612316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.878638, 22.952335, 21.562355>,  <6.027243, 23.138393, 21.532377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.878638, 22.952335, 21.562355>,  <5.630962, 22.642239, 21.612316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.878638, 22.952335, 21.562355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728328, 0.507545, -0.460367,
		-0.293502, 0.376025, 0.878898,
		0.619190, 0.775244, -0.124904,
		6.064394, 23.184908, 21.524883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.927582, 22.182377, 21.156321>,  <5.630962, 22.642239, 21.612316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.927582, 22.182377, 21.156321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.321759, 22.184050, 21.088339>,  <6.558266, 22.185053, 21.047550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.321759, 22.184050, 21.088339>,  <5.927582, 22.182377, 21.156321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.321759, 22.184050, 21.088339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163849, -0.243253, -0.956024,
		-0.045340, 0.969954, -0.239027,
		0.985443, 0.004182, -0.169955,
		6.617392, 22.185305, 21.037352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.242101, 22.645329, 20.578814>,  <5.927582, 22.182377, 21.156321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.242101, 22.645329, 20.578814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.421631, 22.290297, 20.620293>,  <6.529350, 22.077276, 20.645180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.421631, 22.290297, 20.620293>,  <6.242101, 22.645329, 20.578814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.421631, 22.290297, 20.620293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238472, -0.230800, -0.943325,
		0.861212, 0.398660, -0.315252,
		0.448827, -0.887582, 0.103698,
		6.556279, 22.024021, 20.651402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.594098, 22.509586, 19.972229>,  <6.242101, 22.645329, 20.578814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.594098, 22.509586, 19.972229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.570083, 22.138571, 20.119778>,  <6.555674, 21.915960, 20.208307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.570083, 22.138571, 20.119778>,  <6.594098, 22.509586, 19.972229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.570083, 22.138571, 20.119778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021878, -0.368225, -0.929479,
		0.997956, -0.063874, 0.001814,
		-0.060038, -0.927540, 0.368870,
		6.552072, 21.860310, 20.230438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.018453, 21.958187, 19.673813>,  <6.594098, 22.509586, 19.972229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.018453, 21.958187, 19.673813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.695068, 21.781260, 19.829115>,  <6.501038, 21.675102, 19.922297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.695068, 21.781260, 19.829115>,  <7.018453, 21.958187, 19.673813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.695068, 21.781260, 19.829115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017716, -0.641096, -0.767256,
		0.588281, -0.627176, 0.510466,
		-0.808462, -0.442319, 0.388256,
		6.452529, 21.648563, 19.945591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.212723, 21.268534, 19.812748>,  <7.018453, 21.958187, 19.673813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.212723, 21.268534, 19.812748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.824852, 21.340075, 19.746132>,  <6.592129, 21.382999, 19.706161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.824852, 21.340075, 19.746132>,  <7.212723, 21.268534, 19.812748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.824852, 21.340075, 19.746132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000101, -0.681769, -0.731568,
		-0.244384, -0.709369, 0.661115,
		-0.969679, 0.178850, -0.166542,
		6.533948, 21.393730, 19.696169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.923061, 20.703114, 19.830648>,  <7.212723, 21.268534, 19.812748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.923061, 20.703114, 19.830648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.677327, 20.920473, 19.601805>,  <6.529887, 21.050890, 19.464499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.677327, 20.920473, 19.601805>,  <6.923061, 20.703114, 19.830648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.677327, 20.920473, 19.601805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055770, -0.693347, -0.718442,
		-0.787073, -0.473270, 0.395642,
		-0.614334, 0.543401, -0.572109,
		6.493027, 21.083494, 19.430172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.582758, 20.172997, 19.326836>,  <6.923061, 20.703114, 19.830648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.582758, 20.172997, 19.326836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.492848, 20.524651, 19.158741>,  <6.438903, 20.735643, 19.057884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.492848, 20.524651, 19.158741>,  <6.582758, 20.172997, 19.326836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.492848, 20.524651, 19.158741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178365, -0.386866, -0.904721,
		-0.957947, -0.278313, -0.069849,
		-0.224774, 0.879134, -0.420239,
		6.425416, 20.788391, 19.032669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.021579, 19.994816, 18.832954>,  <6.582758, 20.172997, 19.326836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.021579, 19.994816, 18.832954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.217574, 20.319342, 18.705402>,  <6.335171, 20.514057, 18.628872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.217574, 20.319342, 18.705402>,  <6.021579, 19.994816, 18.832954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.217574, 20.319342, 18.705402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188461, -0.455739, -0.869934,
		-0.851113, 0.366162, -0.376207,
		0.489989, 0.811312, -0.318878,
		6.364571, 20.562735, 18.609739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.648674, 19.989521, 18.164064>,  <6.021579, 19.994816, 18.832954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.648674, 19.989521, 18.164064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.978754, 20.215221, 18.153740>,  <6.176801, 20.350641, 18.147545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.978754, 20.215221, 18.153740>,  <5.648674, 19.989521, 18.164064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.978754, 20.215221, 18.153740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283526, -0.453305, -0.845061,
		-0.488528, 0.690025, -0.534047,
		0.825199, 0.564252, -0.025813,
		6.226313, 20.384497, 18.145996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.783800, 20.154694, 17.536930>,  <5.648674, 19.989521, 18.164064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.783800, 20.154694, 17.536930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.150362, 20.210159, 17.687117>,  <6.370299, 20.243439, 17.777229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.150362, 20.210159, 17.687117>,  <5.783800, 20.154694, 17.536930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.150362, 20.210159, 17.687117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393276, -0.486340, -0.780261,
		0.074408, 0.862697, -0.500218,
		0.916405, 0.138666, 0.375466,
		6.425283, 20.251759, 17.799757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.219193, 20.049633, 16.920063>,  <5.783800, 20.154694, 17.536930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.219193, 20.049633, 16.920063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.484929, 20.054375, 17.218998>,  <6.644371, 20.057219, 17.398359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.484929, 20.054375, 17.218998>,  <6.219193, 20.049633, 16.920063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.484929, 20.054375, 17.218998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595113, -0.613330, -0.519295,
		0.452208, 0.789738, -0.414514,
		0.664341, 0.011853, 0.747336,
		6.684231, 20.057930, 17.443199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.892272, 20.249708, 16.613245>,  <6.219193, 20.049633, 16.920063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.892272, 20.249708, 16.613245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.960203, 20.043974, 16.949488>,  <7.000961, 19.920534, 17.151234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.960203, 20.043974, 16.949488>,  <6.892272, 20.249708, 16.613245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.960203, 20.043974, 16.949488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584503, -0.634189, -0.506123,
		0.793420, 0.577290, 0.192929,
		0.169826, -0.514336, 0.840606,
		7.011151, 19.889673, 17.201670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.502146, 19.905622, 16.440357>,  <6.892272, 20.249708, 16.613245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.502146, 19.905622, 16.440357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.414604, 19.723505, 16.785566>,  <7.362079, 19.614235, 16.992691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.414604, 19.723505, 16.785566>,  <7.502146, 19.905622, 16.440357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.414604, 19.723505, 16.785566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494815, -0.814090, -0.303999,
		0.840988, 0.360505, 0.403455,
		-0.218856, -0.455294, 0.863023,
		7.348948, 19.586916, 17.044474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.190222, 19.695461, 16.701633>,  <7.502146, 19.905622, 16.440357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.190222, 19.695461, 16.701633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.889704, 19.471373, 16.841179>,  <7.709394, 19.336920, 16.924906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.889704, 19.471373, 16.841179>,  <8.190222, 19.695461, 16.701633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.889704, 19.471373, 16.841179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562120, -0.820168, -0.106515,
		0.345799, 0.116079, 0.931101,
		-0.751295, -0.560223, 0.348864,
		7.664316, 19.303305, 16.945839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.528507, 19.130224, 17.024906>,  <8.190222, 19.695461, 16.701633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.528507, 19.130224, 17.024906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.155565, 19.006096, 16.950699>,  <7.931800, 18.931618, 16.906176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.155565, 19.006096, 16.950699>,  <8.528507, 19.130224, 17.024906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.155565, 19.006096, 16.950699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360240, -0.840949, -0.403772,
		-0.030711, -0.443288, 0.895853,
		-0.932354, -0.310322, -0.185516,
		7.875859, 18.913000, 16.895044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.457398, 18.428871, 17.181017>,  <8.528507, 19.130224, 17.024906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.457398, 18.428871, 17.181017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.157984, 18.480787, 16.920910>,  <7.978335, 18.511936, 16.764847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.157984, 18.480787, 16.920910>,  <8.457398, 18.428871, 17.181017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.157984, 18.480787, 16.920910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210107, -0.883702, -0.418242,
		-0.628925, -0.449696, 0.634214,
		-0.748538, 0.129790, -0.650266,
		7.933423, 18.519724, 16.725830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.018230, 17.767580, 17.325735>,  <8.457398, 18.428871, 17.181017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.018230, 17.767580, 17.325735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.919879, 17.940838, 16.978880>,  <7.860869, 18.044792, 16.770767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.919879, 17.940838, 16.978880>,  <8.018230, 17.767580, 17.325735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.919879, 17.940838, 16.978880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021185, -0.891987, -0.451564,
		-0.969069, -0.129399, 0.210143,
		-0.245877, 0.433145, -0.867139,
		7.846116, 18.070782, 16.718739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.385467, 17.406248, 17.070066>,  <8.018230, 17.767580, 17.325735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.385467, 17.406248, 17.070066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.595719, 17.577072, 16.775766>,  <7.721871, 17.679567, 16.599186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.595719, 17.577072, 16.775766>,  <7.385467, 17.406248, 17.070066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.595719, 17.577072, 16.775766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126506, -0.894488, -0.428821,
		-0.841254, 0.132325, -0.524197,
		0.525632, 0.427061, -0.735752,
		7.753409, 17.705191, 16.555040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.188861, 17.088675, 16.400883>,  <7.385467, 17.406248, 17.070066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.188861, 17.088675, 16.400883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.539812, 17.270054, 16.338150>,  <7.750382, 17.378881, 16.300510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.539812, 17.270054, 16.338150>,  <7.188861, 17.088675, 16.400883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.539812, 17.270054, 16.338150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365828, -0.843709, -0.392842,
		-0.310455, 0.287296, -0.906134,
		0.877376, 0.453449, -0.156832,
		7.803024, 17.406088, 16.291100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.334721, 16.956274, 15.688542>,  <7.188861, 17.088675, 16.400883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.334721, 16.956274, 15.688542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.700609, 17.065905, 15.807314>,  <7.920142, 17.131683, 15.878576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.700609, 17.065905, 15.807314>,  <7.334721, 16.956274, 15.688542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.700609, 17.065905, 15.807314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382874, -0.822800, -0.420008,
		0.129197, 0.497876, -0.857570,
		0.914721, 0.274078, 0.296928,
		7.975026, 17.148129, 15.896392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.827175, 16.840620, 15.145000>,  <7.334721, 16.956274, 15.688542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.827175, 16.840620, 15.145000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.063651, 16.848394, 15.467519>,  <8.205537, 16.853060, 15.661030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.063651, 16.848394, 15.467519>,  <7.827175, 16.840620, 15.145000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.063651, 16.848394, 15.467519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481396, -0.810608, -0.333426,
		0.647110, 0.585266, -0.488581,
		0.591191, 0.019438, 0.806297,
		8.241009, 16.854225, 15.709408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.449862, 16.680670, 14.892824>,  <7.827175, 16.840620, 15.145000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.449862, 16.680670, 14.892824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.490047, 16.611401, 15.284726>,  <8.514157, 16.569839, 15.519867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.490047, 16.611401, 15.284726>,  <8.449862, 16.680670, 14.892824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.490047, 16.611401, 15.284726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521895, -0.829213, -0.200078,
		0.847073, 0.531430, 0.007072,
		0.100463, -0.173171, 0.979755,
		8.520185, 16.559450, 15.578652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.133427, 16.528370, 15.042324>,  <8.449862, 16.680670, 14.892824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.133427, 16.528370, 15.042324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.908206, 16.360983, 15.327381>,  <8.773073, 16.260551, 15.498415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.908206, 16.360983, 15.327381>,  <9.133427, 16.528370, 15.042324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.908206, 16.360983, 15.327381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415363, -0.888788, -0.193725,
		0.714455, 0.186928, 0.674249,
		-0.563052, -0.418466, 0.712642,
		8.739290, 16.235443, 15.541174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.614721, 16.246092, 15.507494>,  <9.133427, 16.528370, 15.042324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.614721, 16.246092, 15.507494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.266226, 16.052057, 15.537520>,  <9.057129, 15.935637, 15.555536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.266226, 16.052057, 15.537520>,  <9.614721, 16.246092, 15.507494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.266226, 16.052057, 15.537520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478236, -0.873307, -0.092867,
		0.110605, -0.045010, 0.992845,
		-0.871239, -0.485086, 0.075067,
		9.004854, 15.906531, 15.560040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.584402, 15.723531, 16.183573>,  <9.614721, 16.246092, 15.507494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.584402, 15.723531, 16.183573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.381096, 15.610557, 15.858144>,  <9.259112, 15.542772, 15.662887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.381096, 15.610557, 15.858144>,  <9.584402, 15.723531, 16.183573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.381096, 15.610557, 15.858144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503388, -0.863938, -0.014562,
		-0.698761, -0.416943, 0.581284,
		-0.508264, -0.282436, -0.813570,
		9.228617, 15.525826, 15.614073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.253958, 15.026758, 16.245623>,  <9.584402, 15.723531, 16.183573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.253958, 15.026758, 16.245623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.224007, 15.309787, 16.526688>,  <9.206036, 15.479604, 16.695326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.224007, 15.309787, 16.526688>,  <9.253958, 15.026758, 16.245623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.224007, 15.309787, 16.526688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984683, 0.058800, -0.164142,
		-0.157459, -0.704190, 0.692331,
		-0.074879, 0.707572, 0.702663,
		9.201543, 15.522058, 16.737486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.209345, 14.896171, 16.979660>,  <9.253958, 15.026758, 16.245623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.209345, 14.896171, 16.979660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053603, 15.175624, 17.219765>,  <8.960158, 15.343296, 17.363829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053603, 15.175624, 17.219765>,  <9.209345, 14.896171, 16.979660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.053603, 15.175624, 17.219765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233101, 0.705212, -0.669582,
		-0.891105, -0.120782, -0.437429,
		-0.389353, 0.698633, 0.600263,
		8.936797, 15.385214, 17.399843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.721094, 14.306920, 16.731686>,  <9.209345, 14.896171, 16.979660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.721094, 14.306920, 16.731686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.088502, 14.366928, 16.878010>,  <10.308947, 14.402933, 16.965805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.088502, 14.366928, 16.878010>,  <9.721094, 14.306920, 16.731686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.088502, 14.366928, 16.878010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395275, -0.369472, -0.840981,
		0.008994, 0.917052, -0.398666,
		0.918519, 0.150019, 0.365810,
		10.364058, 14.411934, 16.987753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.207075, 14.698801, 16.248661>,  <9.721094, 14.306920, 16.731686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.207075, 14.698801, 16.248661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406553, 14.461164, 16.501123>,  <10.526240, 14.318581, 16.652601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406553, 14.461164, 16.501123>,  <10.207075, 14.698801, 16.248661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.406553, 14.461164, 16.501123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243581, -0.602763, -0.759832,
		0.831849, 0.532661, -0.155884,
		0.498694, -0.594095, 0.631154,
		10.556162, 14.282935, 16.690470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.902186, 14.573194, 15.954417>,  <10.207075, 14.698801, 16.248661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.902186, 14.573194, 15.954417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767781, 14.291348, 16.204414>,  <10.687139, 14.122242, 16.354412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767781, 14.291348, 16.204414>,  <10.902186, 14.573194, 15.954417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.767781, 14.291348, 16.204414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192761, -0.700976, -0.686641,
		0.921921, -0.110246, 0.371359,
		-0.336013, -0.704612, 0.624994,
		10.666978, 14.079965, 16.391912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.459829, 14.653682, 16.520027>,  <10.902186, 14.573194, 15.954417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.459829, 14.653682, 16.520027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.355108, 14.268620, 16.547617>,  <11.292275, 14.037583, 16.564171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.355108, 14.268620, 16.547617>,  <11.459829, 14.653682, 16.520027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.355108, 14.268620, 16.547617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769433, -0.251329, -0.587202,
		0.582608, -0.100659, 0.806496,
		-0.261803, -0.962654, 0.068976,
		11.276567, 13.979824, 16.568310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.245063, 14.670631, 16.527342>,  <11.459829, 14.653682, 16.520027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.245063, 14.670631, 16.527342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.598092, 14.496976, 16.455132>,  <12.809910, 14.392783, 16.411804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.598092, 14.496976, 16.455132>,  <12.245063, 14.670631, 16.527342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.598092, 14.496976, 16.455132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062057, -0.273040, 0.959999,
		-0.466064, -0.858471, -0.214037,
		0.882572, -0.434138, -0.180528,
		12.862864, 14.366735, 16.400972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.101174, 14.007168, 16.726973>,  <12.245063, 14.670631, 16.527342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.101174, 14.007168, 16.726973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489247, 14.101039, 16.751219>,  <12.722091, 14.157361, 16.765766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489247, 14.101039, 16.751219>,  <12.101174, 14.007168, 16.726973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.489247, 14.101039, 16.751219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002537, -0.240248, 0.970708,
		0.242366, -0.941917, -0.232489,
		0.970181, 0.234677, 0.060618,
		12.780302, 14.171442, 16.769403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.419419, 13.553017, 17.209593>,  <12.101174, 14.007168, 16.726973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.419419, 13.553017, 17.209593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.706079, 13.830891, 17.234325>,  <12.878076, 13.997615, 17.249165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.706079, 13.830891, 17.234325>,  <12.419419, 13.553017, 17.209593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.706079, 13.830891, 17.234325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113036, -0.203179, 0.972595,
		0.688211, -0.690022, -0.224133,
		0.716651, 0.694685, 0.061833,
		12.921075, 14.039296, 17.252874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.997024, 13.134614, 17.400599>,  <12.419419, 13.553017, 17.209593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.997024, 13.134614, 17.400599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011543, 13.522328, 17.497894>,  <13.020255, 13.754957, 17.556273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011543, 13.522328, 17.497894>,  <12.997024, 13.134614, 17.400599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011543, 13.522328, 17.497894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250964, -0.244443, 0.936624,
		0.967316, 0.027047, -0.252129,
		0.036298, 0.969286, 0.243241,
		13.022432, 13.813114, 17.570868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.510026, 13.099673, 17.915201>,  <12.997024, 13.134614, 17.400599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.510026, 13.099673, 17.915201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372768, 13.468547, 17.986565>,  <13.290414, 13.689871, 18.029383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372768, 13.468547, 17.986565>,  <13.510026, 13.099673, 17.915201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.372768, 13.468547, 17.986565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488177, 0.012826, 0.872650,
		0.802456, 0.386539, -0.454590,
		-0.343144, 0.922184, 0.178407,
		13.269825, 13.745202, 18.040087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.068464, 13.470949, 18.271751>,  <13.510026, 13.099673, 17.915201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.068464, 13.470949, 18.271751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.734579, 13.676099, 18.351965>,  <13.534247, 13.799189, 18.400093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.734579, 13.676099, 18.351965>,  <14.068464, 13.470949, 18.271751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734579, 13.676099, 18.351965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350987, 0.214884, 0.911391,
		0.424336, 0.831135, -0.359378,
		-0.834714, 0.512873, 0.200534,
		13.484165, 13.829961, 18.412125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.404946, 14.080667, 18.659481>,  <14.068464, 13.470949, 18.271751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.404946, 14.080667, 18.659481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016756, 14.046495, 18.749708>,  <13.783842, 14.025992, 18.803844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016756, 14.046495, 18.749708>,  <14.404946, 14.080667, 18.659481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.016756, 14.046495, 18.749708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184638, 0.338620, 0.922630,
		-0.155202, 0.937037, -0.312848,
		-0.970475, -0.085431, 0.225567,
		13.725614, 14.020866, 18.817379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288607, 14.647523, 19.083874>,  <14.404946, 14.080667, 18.659481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.288607, 14.647523, 19.083874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.971356, 14.420442, 19.172115>,  <13.781006, 14.284193, 19.225060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.971356, 14.420442, 19.172115>,  <14.288607, 14.647523, 19.083874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.971356, 14.420442, 19.172115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211048, 0.083592, 0.973895,
		-0.571324, 0.818978, 0.053514,
		-0.793126, -0.567703, 0.220602,
		13.733418, 14.250131, 19.238297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109028, 14.861368, 19.704914>,  <14.288607, 14.647523, 19.083874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109028, 14.861368, 19.704914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.934156, 14.501966, 19.689108>,  <13.829233, 14.286325, 19.679625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.934156, 14.501966, 19.689108>,  <14.109028, 14.861368, 19.704914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.934156, 14.501966, 19.689108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340152, -0.205857, 0.917562,
		-0.832569, 0.387698, 0.395625,
		-0.437179, -0.898506, -0.039514,
		13.803002, 14.232413, 19.677254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.884223, 14.902779, 20.316982>,  <14.109028, 14.861368, 19.704914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.884223, 14.902779, 20.316982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.870029, 14.517616, 20.209984>,  <13.861513, 14.286519, 20.145784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.870029, 14.517616, 20.209984>,  <13.884223, 14.902779, 20.316982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870029, 14.517616, 20.209984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118934, -0.269833, 0.955534,
		-0.992268, 0.002091, 0.124096,
		-0.035484, -0.962905, -0.267498,
		13.859385, 14.228745, 20.129734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.382268, 14.524145, 20.786549>,  <13.884223, 14.902779, 20.316982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.382268, 14.524145, 20.786549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.626820, 14.254884, 20.620138>,  <13.773551, 14.093327, 20.520292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.626820, 14.254884, 20.620138>,  <13.382268, 14.524145, 20.786549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.626820, 14.254884, 20.620138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166270, -0.404719, 0.899198,
		-0.773673, -0.618924, -0.135511,
		0.611379, -0.673154, -0.416028,
		13.810233, 14.052938, 20.495329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.305725, 13.946218, 21.202057>,  <13.382268, 14.524145, 20.786549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.305725, 13.946218, 21.202057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.635857, 13.841354, 21.002014>,  <13.833936, 13.778437, 20.881989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.635857, 13.841354, 21.002014>,  <13.305725, 13.946218, 21.202057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.635857, 13.841354, 21.002014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373273, -0.411246, 0.831591,
		-0.423676, -0.873011, -0.241555,
		0.825327, -0.262160, -0.500107,
		13.883455, 13.762707, 20.851982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.449385, 13.272459, 21.510954>,  <13.305725, 13.946218, 21.202057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.449385, 13.272459, 21.510954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.796053, 13.388444, 21.348568>,  <14.004054, 13.458035, 21.251137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.796053, 13.388444, 21.348568>,  <13.449385, 13.272459, 21.510954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.796053, 13.388444, 21.348568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489713, -0.339172, 0.803208,
		0.095209, -0.894922, -0.435948,
		0.866670, 0.289962, -0.405963,
		14.056054, 13.475432, 21.226780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.964094, 12.648867, 21.370031>,  <13.449385, 13.272459, 21.510954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.964094, 12.648867, 21.370031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166095, 12.992885, 21.399143>,  <14.287295, 13.199295, 21.416611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166095, 12.992885, 21.399143>,  <13.964094, 12.648867, 21.370031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.166095, 12.992885, 21.399143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618035, -0.419177, 0.665074,
		0.602501, -0.290883, -0.743223,
		0.505001, 0.860045, 0.072778,
		14.317595, 13.250898, 21.420977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593126, 12.434270, 21.300104>,  <13.964094, 12.648867, 21.370031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.593126, 12.434270, 21.300104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628900, 12.796859, 21.465179>,  <14.650363, 13.014412, 21.564224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628900, 12.796859, 21.465179>,  <14.593126, 12.434270, 21.300104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.628900, 12.796859, 21.465179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541371, -0.392035, 0.743792,
		0.836014, 0.156897, -0.525798,
		0.089432, 0.906472, 0.412686,
		14.655729, 13.068800, 21.588985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.310572, 12.445478, 21.562752>,  <14.593126, 12.434270, 21.300104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.310572, 12.445478, 21.562752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.094076, 12.727640, 21.745821>,  <14.964179, 12.896937, 21.855663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.094076, 12.727640, 21.745821>,  <15.310572, 12.445478, 21.562752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.094076, 12.727640, 21.745821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342612, -0.312056, 0.886137,
		0.767904, 0.636416, -0.072783,
		-0.541239, 0.705405, 0.457673,
		14.931705, 12.939261, 21.883123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777038, 12.505344, 22.078247>,  <15.310572, 12.445478, 21.562752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777038, 12.505344, 22.078247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.437229, 12.677207, 22.200693>,  <15.233344, 12.780325, 22.274160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.437229, 12.677207, 22.200693>,  <15.777038, 12.505344, 22.078247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.437229, 12.677207, 22.200693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097338, -0.442638, 0.891402,
		0.518496, 0.787062, 0.334209,
		-0.849522, 0.429657, 0.306117,
		15.182373, 12.806104, 22.292528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885267, 12.734778, 22.676588>,  <15.777038, 12.505344, 22.078247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885267, 12.734778, 22.676588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485457, 12.725473, 22.684700>,  <15.245572, 12.719891, 22.689568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.485457, 12.725473, 22.684700>,  <15.885267, 12.734778, 22.676588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485457, 12.725473, 22.684700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028561, -0.448245, 0.893454,
		-0.011693, 0.893608, 0.448696,
		-0.999524, -0.023262, 0.020281,
		15.185600, 12.718494, 22.690784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837493, 12.712418, 23.346931>,  <15.885267, 12.734778, 22.676588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837493, 12.712418, 23.346931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.467555, 12.615832, 23.229385>,  <15.245592, 12.557881, 23.158857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.467555, 12.615832, 23.229385>,  <15.837493, 12.712418, 23.346931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.467555, 12.615832, 23.229385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126589, -0.533167, 0.836485,
		-0.358661, 0.810820, 0.462531,
		-0.924845, -0.241463, -0.293867,
		15.190102, 12.543393, 23.141226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464079, 12.672215, 23.925747>,  <15.837493, 12.712418, 23.346931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.464079, 12.672215, 23.925747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.216356, 12.488594, 23.670959>,  <15.067722, 12.378422, 23.518087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.216356, 12.488594, 23.670959>,  <15.464079, 12.672215, 23.925747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216356, 12.488594, 23.670959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238105, -0.663259, 0.709502,
		-0.748175, 0.591065, 0.301458,
		-0.619307, -0.459053, -0.636969,
		15.030564, 12.350878, 23.479868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896577, 12.469545, 24.302803>,  <15.464079, 12.672215, 23.925747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896577, 12.469545, 24.302803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886183, 12.195832, 24.011301>,  <14.879947, 12.031605, 23.836399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886183, 12.195832, 24.011301>,  <14.896577, 12.469545, 24.302803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886183, 12.195832, 24.011301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005206, -0.728898, 0.684603,
		-0.999649, 0.021583, 0.015377,
		-0.025984, -0.684282, -0.728754,
		14.878387, 11.990547, 23.792675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.391739, 12.054031, 24.430222>,  <14.896577, 12.469545, 24.302803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.391739, 12.054031, 24.430222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.584760, 11.811719, 24.177185>,  <14.700572, 11.666331, 24.025362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.584760, 11.811719, 24.177185>,  <14.391739, 12.054031, 24.430222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.584760, 11.811719, 24.177185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107771, -0.757825, 0.643496,
		-0.869213, -0.242344, -0.430975,
		0.482551, -0.605781, -0.632593,
		14.729525, 11.629985, 23.987408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.996882, 11.446095, 24.404840>,  <14.391739, 12.054031, 24.430222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.996882, 11.446095, 24.404840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.346923, 11.330843, 24.249313>,  <14.556947, 11.261691, 24.155996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.346923, 11.330843, 24.249313>,  <13.996882, 11.446095, 24.404840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.346923, 11.330843, 24.249313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089976, -0.886303, 0.454282,
		-0.475504, -0.362557, -0.801529,
		0.875100, -0.288131, -0.388819,
		14.609453, 11.244404, 24.132668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.901523, 10.733714, 24.149281>,  <13.996882, 11.446095, 24.404840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.901523, 10.733714, 24.149281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285008, 10.797820, 24.243244>,  <14.515100, 10.836284, 24.299622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285008, 10.797820, 24.243244>,  <13.901523, 10.733714, 24.149281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285008, 10.797820, 24.243244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005559, -0.815343, 0.578951,
		0.284315, -0.556355, -0.780790,
		0.958714, 0.160264, 0.234907,
		14.572623, 10.845900, 24.313717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221713, 9.982183, 24.180731>,  <13.901523, 10.733714, 24.149281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221713, 9.982183, 24.180731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.450915, 10.241138, 24.381750>,  <14.588437, 10.396511, 24.502361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.450915, 10.241138, 24.381750>,  <14.221713, 9.982183, 24.180731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450915, 10.241138, 24.381750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150829, -0.686025, 0.711773,
		0.805553, -0.332051, -0.490741,
		0.573005, 0.647388, 0.502547,
		14.622817, 10.435354, 24.532515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738958, 9.573552, 24.497156>,  <14.221713, 9.982183, 24.180731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.738958, 9.573552, 24.497156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.776788, 9.912089, 24.706827>,  <14.799485, 10.115211, 24.832630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.776788, 9.912089, 24.706827>,  <14.738958, 9.573552, 24.497156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.776788, 9.912089, 24.706827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229630, -0.530883, 0.815741,
		0.968672, 0.043219, -0.244553,
		0.094574, 0.846342, 0.524176,
		14.805160, 10.165992, 24.864080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.307159, 9.495042, 24.861103>,  <14.738958, 9.573552, 24.497156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.307159, 9.495042, 24.861103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.106637, 9.771836, 25.068892>,  <14.986323, 9.937913, 25.193563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.106637, 9.771836, 25.068892>,  <15.307159, 9.495042, 24.861103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.106637, 9.771836, 25.068892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230911, -0.471593, 0.851047,
		0.833891, 0.546585, 0.076625,
		-0.501305, 0.691986, 0.519469,
		14.956245, 9.979432, 25.224731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764534, 9.803079, 25.464869>,  <15.307159, 9.495042, 24.861103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764534, 9.803079, 25.464869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380947, 9.875269, 25.552332>,  <15.150795, 9.918583, 25.604811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380947, 9.875269, 25.552332>,  <15.764534, 9.803079, 25.464869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380947, 9.875269, 25.552332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162494, -0.282138, 0.945512,
		0.232334, 0.942245, 0.241235,
		-0.958966, 0.180476, 0.218659,
		15.093257, 9.929412, 25.617929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736217, 10.215422, 26.211946>,  <15.764534, 9.803079, 25.464869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.736217, 10.215422, 26.211946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.364434, 10.081603, 26.149740>,  <15.141364, 10.001312, 26.112417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.364434, 10.081603, 26.149740>,  <15.736217, 10.215422, 26.211946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364434, 10.081603, 26.149740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137101, -0.078122, 0.987472,
		-0.342504, 0.939136, 0.026745,
		-0.929459, -0.334546, -0.155514,
		15.085596, 9.981239, 26.103086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.269003, 10.681459, 26.567228>,  <15.736217, 10.215422, 26.211946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.269003, 10.681459, 26.567228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089734, 10.329876, 26.502024>,  <14.982173, 10.118926, 26.462900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089734, 10.329876, 26.502024>,  <15.269003, 10.681459, 26.567228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.089734, 10.329876, 26.502024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085308, -0.139467, 0.986545,
		-0.889868, 0.456047, -0.012477,
		-0.448171, -0.878959, -0.163012,
		14.955283, 10.066188, 26.453119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.683395, 10.639878, 26.939939>,  <15.269003, 10.681459, 26.567228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.683395, 10.639878, 26.939939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.737154, 10.246874, 26.888384>,  <14.769409, 10.011071, 26.857450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.737154, 10.246874, 26.888384>,  <14.683395, 10.639878, 26.939939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737154, 10.246874, 26.888384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186347, -0.152805, 0.970528,
		-0.973248, -0.106417, -0.203624,
		0.134396, -0.982510, -0.128887,
		14.777472, 9.952121, 26.849718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123650, 10.395243, 27.147497>,  <14.683395, 10.639878, 26.939939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123650, 10.395243, 27.147497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.328721, 10.051853, 27.142099>,  <14.451764, 9.845819, 27.138861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.328721, 10.051853, 27.142099>,  <14.123650, 10.395243, 27.147497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328721, 10.051853, 27.142099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457813, -0.286632, 0.841576,
		-0.726339, -0.425280, -0.539971,
		0.512678, -0.858475, -0.013494,
		14.482525, 9.794311, 27.138052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.664942, 9.819250, 27.282894>,  <14.123650, 10.395243, 27.147497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.664942, 9.819250, 27.282894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.035534, 9.707267, 27.383497>,  <14.257889, 9.640077, 27.443859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.035534, 9.707267, 27.383497>,  <13.664942, 9.819250, 27.282894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.035534, 9.707267, 27.383497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358009, -0.449584, 0.818354,
		-0.116031, -0.848232, -0.516759,
		0.926481, -0.279959, 0.251509,
		14.313478, 9.623280, 27.458950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.577536, 9.159491, 27.428730>,  <13.664942, 9.819250, 27.282894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.577536, 9.159491, 27.428730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948473, 9.203981, 27.571650>,  <14.171035, 9.230676, 27.657402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948473, 9.203981, 27.571650>,  <13.577536, 9.159491, 27.428730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948473, 9.203981, 27.571650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264992, -0.478985, 0.836871,
		0.264225, -0.870748, -0.414709,
		0.927343, 0.111228, 0.357301,
		14.226676, 9.237350, 27.678841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816900, 8.514348, 27.586533>,  <13.577536, 9.159491, 27.428730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.816900, 8.514348, 27.586533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057599, 8.761510, 27.788956>,  <14.202019, 8.909807, 27.910410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057599, 8.761510, 27.788956>,  <13.816900, 8.514348, 27.586533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.057599, 8.761510, 27.788956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039150, -0.655671, 0.754031,
		0.797726, -0.433924, -0.418739,
		0.601748, 0.617904, 0.506057,
		14.238123, 8.946881, 27.940773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.268323, 8.132731, 28.066610>,  <13.816900, 8.514348, 27.586533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.268323, 8.132731, 28.066610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.260530, 8.508433, 28.203678>,  <14.255856, 8.733854, 28.285919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.260530, 8.508433, 28.203678>,  <14.268323, 8.132731, 28.066610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.260530, 8.508433, 28.203678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161236, -0.341201, 0.926059,
		0.986724, -0.037211, 0.158088,
		-0.019480, 0.939253, 0.342671,
		14.254686, 8.790210, 28.306479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.669176, 8.216902, 28.675863>,  <14.268323, 8.132731, 28.066610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.669176, 8.216902, 28.675863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.411191, 8.521578, 28.700689>,  <14.256400, 8.704383, 28.715586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.411191, 8.521578, 28.700689>,  <14.669176, 8.216902, 28.675863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.411191, 8.521578, 28.700689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161535, -0.215260, 0.963104,
		0.746946, 0.611141, 0.261874,
		-0.644963, 0.761689, 0.062067,
		14.217702, 8.750085, 28.719309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.837608, 8.421860, 29.311745>,  <14.669176, 8.216902, 28.675863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.837608, 8.421860, 29.311745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.470517, 8.558604, 29.230843>,  <14.250262, 8.640651, 29.182301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.470517, 8.558604, 29.230843>,  <14.837608, 8.421860, 29.311745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.470517, 8.558604, 29.230843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327606, -0.363506, 0.872088,
		0.224612, 0.866599, 0.445595,
		-0.917727, 0.341861, -0.202256,
		14.195199, 8.661162, 29.170166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644269, 8.529855, 29.994513>,  <14.837608, 8.421860, 29.311745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644269, 8.529855, 29.994513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.302241, 8.561066, 29.789469>,  <14.097025, 8.579792, 29.666443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.302241, 8.561066, 29.789469>,  <14.644269, 8.529855, 29.994513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.302241, 8.561066, 29.789469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497170, -0.404094, 0.767809,
		-0.147231, 0.911384, 0.384322,
		-0.855070, 0.078028, -0.512607,
		14.045720, 8.584475, 29.635687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.140285, 8.670851, 30.493805>,  <14.644269, 8.529855, 29.994513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.140285, 8.670851, 30.493805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896482, 8.572852, 30.192215>,  <13.750201, 8.514053, 30.011261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896482, 8.572852, 30.192215>,  <14.140285, 8.670851, 30.493805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896482, 8.572852, 30.192215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597318, -0.483409, 0.639943,
		-0.521262, 0.840412, 0.148300,
		-0.609506, -0.244996, -0.753976,
		13.713631, 8.499353, 29.966022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434114, 8.927595, 30.648935>,  <14.140285, 8.670851, 30.493805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.434114, 8.927595, 30.648935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.445930, 8.607084, 30.409910>,  <13.453020, 8.414778, 30.266495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.445930, 8.607084, 30.409910>,  <13.434114, 8.927595, 30.648935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.445930, 8.607084, 30.409910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551841, -0.511534, 0.658639,
		-0.833426, 0.310305, -0.457287,
		0.029539, -0.801276, -0.597565,
		13.454792, 8.366701, 30.230640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.713326, 8.755514, 30.615433>,  <13.434114, 8.927595, 30.648935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.713326, 8.755514, 30.615433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.939090, 8.450913, 30.487963>,  <13.074549, 8.268152, 30.411480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.939090, 8.450913, 30.487963>,  <12.713326, 8.755514, 30.615433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.939090, 8.450913, 30.487963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488869, -0.619406, 0.614283,
		-0.665169, -0.190916, -0.721874,
		0.564409, -0.761503, -0.318677,
		13.108413, 8.222463, 30.392361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.327091, 8.169050, 30.540449>,  <12.713326, 8.755514, 30.615433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.327091, 8.169050, 30.540449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.703465, 8.058007, 30.617989>,  <12.929289, 7.991382, 30.664513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.703465, 8.058007, 30.617989>,  <12.327091, 8.169050, 30.540449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.703465, 8.058007, 30.617989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328974, -0.614087, 0.717407,
		-0.080116, -0.738804, -0.669141,
		0.940934, -0.277606, 0.193849,
		12.985744, 7.974725, 30.676144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.331701, 7.342581, 30.654852>,  <12.327091, 8.169050, 30.540449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.331701, 7.342581, 30.654852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.585244, 7.570519, 30.864042>,  <12.737370, 7.707282, 30.989555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.585244, 7.570519, 30.864042>,  <12.331701, 7.342581, 30.654852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.585244, 7.570519, 30.864042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280597, -0.460673, 0.842049,
		0.720757, -0.680484, -0.132104,
		0.633857, 0.569845, 0.522974,
		12.775401, 7.741472, 31.020935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.088155, 7.167755, 31.298342>,  <12.331701, 7.342581, 30.654852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.088155, 7.167755, 31.298342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.465095, 7.298922, 31.271660>,  <12.691258, 7.377622, 31.255651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.465095, 7.298922, 31.271660>,  <12.088155, 7.167755, 31.298342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.465095, 7.298922, 31.271660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169516, -0.295917, 0.940052,
		0.288520, -0.897164, -0.334444,
		0.942349, 0.327917, -0.066705,
		12.747799, 7.397297, 31.251648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.662343, 6.576984, 31.469213>,  <12.088155, 7.167755, 31.298342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.662343, 6.576984, 31.469213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744070, 6.954749, 31.572241>,  <12.793106, 7.181407, 31.634058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744070, 6.954749, 31.572241>,  <12.662343, 6.576984, 31.469213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744070, 6.954749, 31.572241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073413, -0.277163, 0.958014,
		0.976148, -0.176830, -0.125961,
		0.204317, 0.944411, 0.257570,
		12.805366, 7.238072, 31.649511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.328389, 6.585373, 31.746752>,  <12.662343, 6.576984, 31.469213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.328389, 6.585373, 31.746752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.085105, 6.871143, 31.885130>,  <12.939135, 7.042605, 31.968157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.085105, 6.871143, 31.885130>,  <13.328389, 6.585373, 31.746752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.085105, 6.871143, 31.885130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264857, -0.228194, 0.936898,
		0.748286, 0.661456, -0.050431,
		-0.608210, 0.714425, 0.345945,
		12.902642, 7.085471, 31.988913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512687, 5.925360, 31.730898>,  <13.328389, 6.585373, 31.746752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512687, 5.925360, 31.730898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.279633, 5.737346, 31.465687>,  <13.139800, 5.624537, 31.306561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.279633, 5.737346, 31.465687>,  <13.512687, 5.925360, 31.730898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.279633, 5.737346, 31.465687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070025, 0.841796, -0.535235,
		0.809711, -0.265418, -0.523375,
		-0.582636, -0.470035, -0.663026,
		13.104842, 5.596335, 31.266779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904469, 5.971729, 31.055601>,  <13.512687, 5.925360, 31.730898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904469, 5.971729, 31.055601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.507525, 5.932610, 31.025517>,  <13.269359, 5.909139, 31.007465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.507525, 5.932610, 31.025517>,  <13.904469, 5.971729, 31.055601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.507525, 5.932610, 31.025517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026764, 0.765749, -0.642582,
		0.120436, -0.635660, -0.762517,
		-0.992360, -0.097798, -0.075211,
		13.209817, 5.903271, 31.002953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.622767, 5.967156, 30.345648>,  <13.904469, 5.971729, 31.055601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.622767, 5.967156, 30.345648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349897, 6.130072, 30.588547>,  <13.186175, 6.227822, 30.734287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.349897, 6.130072, 30.588547>,  <13.622767, 5.967156, 30.345648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.349897, 6.130072, 30.588547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090520, 0.777065, -0.622878,
		-0.725563, -0.479881, -0.493227,
		-0.682176, 0.407290, 0.607248,
		13.145245, 6.252259, 30.770721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060305, 5.449642, 30.373140>,  <13.622767, 5.967156, 30.345648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060305, 5.449642, 30.373140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748729, 5.393727, 30.128613>,  <13.561783, 5.360178, 29.981895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748729, 5.393727, 30.128613>,  <14.060305, 5.449642, 30.373140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.748729, 5.393727, 30.128613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586768, 0.181491, -0.789154,
		0.221260, -0.973407, -0.059350,
		-0.778940, -0.139784, -0.611321,
		13.515047, 5.351791, 29.945217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.189199, 4.935035, 29.841309>,  <14.060305, 5.449642, 30.373140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.189199, 4.935035, 29.841309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910996, 5.189912, 29.708490>,  <13.744075, 5.342838, 29.628799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910996, 5.189912, 29.708490>,  <14.189199, 4.935035, 29.841309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910996, 5.189912, 29.708490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563700, 0.197332, -0.802061,
		-0.445545, -0.745013, -0.496432,
		-0.695508, 0.637194, -0.332044,
		13.702344, 5.381070, 29.608877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165474, 4.773765, 29.078148>,  <14.189199, 4.935035, 29.841309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.165474, 4.773765, 29.078148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.009583, 5.129131, 29.175169>,  <13.916049, 5.342351, 29.233381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.009583, 5.129131, 29.175169>,  <14.165474, 4.773765, 29.078148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.009583, 5.129131, 29.175169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541395, 0.434081, -0.720045,
		-0.744987, -0.149304, -0.650156,
		-0.389726, 0.888415, 0.242552,
		13.892666, 5.395656, 29.247934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.885109, 5.120214, 28.469368>,  <14.165474, 4.773765, 29.078148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.885109, 5.120214, 28.469368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.991322, 5.408211, 28.725838>,  <14.055049, 5.581008, 28.879719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.991322, 5.408211, 28.725838>,  <13.885109, 5.120214, 28.469368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.991322, 5.408211, 28.725838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531904, 0.445271, -0.720286,
		-0.804096, 0.532303, -0.264732,
		0.265533, 0.719991, 0.641175,
		14.070981, 5.624208, 28.918190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.769427, 5.784474, 28.146742>,  <13.885109, 5.120214, 28.469368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.769427, 5.784474, 28.146742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.030423, 5.856359, 28.441214>,  <14.187021, 5.899489, 28.617897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.030423, 5.856359, 28.441214>,  <13.769427, 5.784474, 28.146742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.030423, 5.856359, 28.441214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458246, 0.680157, -0.572187,
		-0.603546, 0.710697, 0.361444,
		0.652490, 0.179711, 0.736180,
		14.226171, 5.910272, 28.662067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842936, 6.507648, 28.164095>,  <13.769427, 5.784474, 28.146742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842936, 6.507648, 28.164095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.171537, 6.393077, 28.361313>,  <14.368698, 6.324335, 28.479643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.171537, 6.393077, 28.361313>,  <13.842936, 6.507648, 28.164095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.171537, 6.393077, 28.361313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516929, 0.739049, -0.431962,
		-0.240658, 0.609727, 0.755193,
		0.821504, -0.286426, 0.493043,
		14.417989, 6.307149, 28.509226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192414, 7.072705, 28.116442>,  <13.842936, 6.507648, 28.164095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.192414, 7.072705, 28.116442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468223, 6.800179, 28.214725>,  <14.633707, 6.636664, 28.273695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468223, 6.800179, 28.214725>,  <14.192414, 7.072705, 28.116442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468223, 6.800179, 28.214725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565522, 0.294513, -0.770355,
		0.452489, 0.670130, 0.588371,
		0.689520, -0.681314, 0.245710,
		14.675078, 6.595785, 28.288439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864212, 7.364484, 28.053532>,  <14.192414, 7.072705, 28.116442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864212, 7.364484, 28.053532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922659, 6.970059, 28.021702>,  <14.957726, 6.733404, 28.002604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922659, 6.970059, 28.021702>,  <14.864212, 7.364484, 28.053532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922659, 6.970059, 28.021702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654845, 0.156700, -0.739340,
		0.741504, 0.055921, 0.668614,
		0.146116, -0.986062, -0.079574,
		14.966494, 6.674240, 27.997829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589850, 7.198223, 28.264868>,  <14.864212, 7.364484, 28.053532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589850, 7.198223, 28.264868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430190, 6.937116, 28.007318>,  <15.334394, 6.780451, 27.852789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430190, 6.937116, 28.007318>,  <15.589850, 7.198223, 28.264868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430190, 6.937116, 28.007318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659061, 0.283942, -0.696431,
		0.637430, -0.702333, 0.316877,
		-0.399152, -0.652768, -0.643873,
		15.310445, 6.741285, 27.814157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217115, 6.895743, 28.003410>,  <15.589850, 7.198223, 28.264868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217115, 6.895743, 28.003410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.932431, 6.804582, 27.737619>,  <15.761621, 6.749885, 27.578144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.932431, 6.804582, 27.737619>,  <16.217115, 6.895743, 28.003410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932431, 6.804582, 27.737619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668961, 0.068799, -0.740107,
		0.214389, -0.971250, 0.103495,
		-0.711708, -0.227905, -0.664478,
		15.718919, 6.736210, 27.538277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.548029, 6.522972, 27.533527>,  <16.217115, 6.895743, 28.003410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.548029, 6.522972, 27.533527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.207586, 6.611755, 27.343220>,  <16.003321, 6.665025, 27.229036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.207586, 6.611755, 27.343220>,  <16.548029, 6.522972, 27.533527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.207586, 6.611755, 27.343220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478371, -0.045476, -0.876979,
		-0.216289, -0.973995, -0.067474,
		-0.851105, 0.221958, -0.475767,
		15.952254, 6.678343, 27.200489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.541122, 6.138855, 26.865349>,  <16.548029, 6.522972, 27.533527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.541122, 6.138855, 26.865349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.253384, 6.409608, 26.802906>,  <16.080740, 6.572061, 26.765440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.253384, 6.409608, 26.802906>,  <16.541122, 6.138855, 26.865349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253384, 6.409608, 26.802906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334024, 0.140009, -0.932108,
		-0.609074, -0.722651, -0.326811,
		-0.719345, 0.676885, -0.156107,
		16.037580, 6.612674, 26.756075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312649, 5.977902, 26.216513>,  <16.541122, 6.138855, 26.865349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.312649, 5.977902, 26.216513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177153, 6.348984, 26.279276>,  <16.095854, 6.571633, 26.316935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177153, 6.348984, 26.279276>,  <16.312649, 5.977902, 26.216513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.177153, 6.348984, 26.279276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155158, 0.219563, -0.963181,
		-0.927998, -0.301924, -0.218316,
		-0.338741, 0.927703, 0.156908,
		16.075531, 6.627295, 26.326349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894047, 6.182153, 25.674870>,  <16.312649, 5.977902, 26.216513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894047, 6.182153, 25.674870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021645, 6.524118, 25.838511>,  <16.098204, 6.729298, 25.936695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.021645, 6.524118, 25.838511>,  <15.894047, 6.182153, 25.674870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021645, 6.524118, 25.838511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141777, 0.383750, -0.912489,
		-0.937092, 0.349081, 0.001208,
		0.318995, 0.854915, 0.409100,
		16.117344, 6.780593, 25.961241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.615254, 6.693027, 25.249847>,  <15.894047, 6.182153, 25.674870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.615254, 6.693027, 25.249847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.913715, 6.870572, 25.448339>,  <16.092793, 6.977098, 25.567434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.913715, 6.870572, 25.448339>,  <15.615254, 6.693027, 25.249847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913715, 6.870572, 25.448339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241531, 0.514098, -0.823022,
		-0.620418, 0.733956, 0.276389,
		0.746153, 0.443861, 0.496229,
		16.137562, 7.003730, 25.597208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.546099, 7.466431, 25.072159>,  <15.615254, 6.693027, 25.249847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.546099, 7.466431, 25.072159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919090, 7.388311, 25.193708>,  <16.142885, 7.341439, 25.266638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919090, 7.388311, 25.193708>,  <15.546099, 7.466431, 25.072159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919090, 7.388311, 25.193708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361105, 0.525524, -0.770342,
		-0.009246, 0.828059, 0.560565,
		0.932479, -0.195300, 0.303875,
		16.198833, 7.329721, 25.284870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957428, 8.075051, 24.862850>,  <15.546099, 7.466431, 25.072159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.957428, 8.075051, 24.862850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239767, 7.805426, 24.949951>,  <16.409170, 7.643650, 25.002213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239767, 7.805426, 24.949951>,  <15.957428, 8.075051, 24.862850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239767, 7.805426, 24.949951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526369, 0.293386, -0.798035,
		0.474042, 0.677909, 0.561893,
		0.705847, -0.674065, 0.217753,
		16.451521, 7.603206, 25.015278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597279, 8.480052, 24.965879>,  <15.957428, 8.075051, 24.862850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597279, 8.480052, 24.965879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702736, 8.107812, 24.864309>,  <16.766010, 7.884468, 24.803368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702736, 8.107812, 24.864309>,  <16.597279, 8.480052, 24.965879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702736, 8.107812, 24.864309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496636, 0.356618, -0.791313,
		0.826950, 0.082515, 0.556188,
		0.263642, -0.930599, -0.253925,
		16.781828, 7.828632, 24.788132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266825, 8.435589, 24.910135>,  <16.597279, 8.480052, 24.965879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266825, 8.435589, 24.910135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.142908, 8.132653, 24.680191>,  <17.068558, 7.950892, 24.542225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.142908, 8.132653, 24.680191>,  <17.266825, 8.435589, 24.910135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142908, 8.132653, 24.680191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426524, 0.429666, -0.795905,
		0.849769, -0.491756, 0.189918,
		-0.309790, -0.757340, -0.574863,
		17.049971, 7.905451, 24.507732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823235, 8.351501, 24.491533>,  <17.266825, 8.435589, 24.910135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.823235, 8.351501, 24.491533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523186, 8.177822, 24.292017>,  <17.343157, 8.073615, 24.172308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523186, 8.177822, 24.292017>,  <17.823235, 8.351501, 24.491533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.523186, 8.177822, 24.292017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443558, 0.229083, -0.866474,
		0.490483, -0.871204, 0.020750,
		-0.750121, -0.434195, -0.498791,
		17.298149, 8.047564, 24.142380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.091944, 7.888103, 23.915712>,  <17.823235, 8.351501, 24.491533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.091944, 7.888103, 23.915712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.724131, 8.005708, 23.811390>,  <17.503443, 8.076271, 23.748796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.724131, 8.005708, 23.811390>,  <18.091944, 7.888103, 23.915712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.724131, 8.005708, 23.811390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358733, 0.356820, -0.862548,
		-0.160541, -0.886699, -0.433580,
		-0.919531, 0.294014, -0.260804,
		17.448271, 8.093912, 23.733149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.184187, 7.904828, 23.182177>,  <18.091944, 7.888103, 23.915712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.184187, 7.904828, 23.182177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.816607, 8.049366, 23.245371>,  <17.596058, 8.136089, 23.283287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.816607, 8.049366, 23.245371>,  <18.184187, 7.904828, 23.182177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816607, 8.049366, 23.245371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036829, 0.477475, -0.877873,
		-0.392649, -0.800903, -0.452084,
		-0.918950, 0.361346, 0.157984,
		17.540922, 8.157770, 23.292767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698111, 7.759721, 22.650057>,  <18.184187, 7.904828, 23.182177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698111, 7.759721, 22.650057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.534477, 8.091106, 22.803053>,  <17.436296, 8.289938, 22.894850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.534477, 8.091106, 22.803053>,  <17.698111, 7.759721, 22.650057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.534477, 8.091106, 22.803053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257308, 0.506889, -0.822713,
		-0.875467, -0.238142, -0.420531,
		-0.409084, 0.828464, 0.382489,
		17.411753, 8.339645, 22.917799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319021, 7.970908, 22.113234>,  <17.698111, 7.759721, 22.650057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319021, 7.970908, 22.113234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.371733, 8.289209, 22.349678>,  <17.403360, 8.480190, 22.491545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.371733, 8.289209, 22.349678>,  <17.319021, 7.970908, 22.113234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371733, 8.289209, 22.349678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189268, 0.565143, -0.802989,
		-0.973042, 0.217697, -0.076136,
		0.131781, 0.795752, 0.591111,
		17.411266, 8.527935, 22.527012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826838, 8.480075, 21.872608>,  <17.319021, 7.970908, 22.113234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826838, 8.480075, 21.872608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.078899, 8.697219, 22.094673>,  <17.230137, 8.827505, 22.227913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.078899, 8.697219, 22.094673>,  <16.826838, 8.480075, 21.872608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.078899, 8.697219, 22.094673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055687, 0.681548, -0.729651,
		-0.774470, 0.490708, 0.399251,
		0.630155, 0.542860, 0.555165,
		17.267946, 8.860077, 22.261223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.593485, 9.139141, 21.771416>,  <16.826838, 8.480075, 21.872608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.593485, 9.139141, 21.771416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975569, 9.174659, 21.884331>,  <17.204819, 9.195970, 21.952080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975569, 9.174659, 21.884331>,  <16.593485, 9.139141, 21.771416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975569, 9.174659, 21.884331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192001, 0.539911, -0.819531,
		-0.225179, 0.837025, 0.498681,
		0.955212, 0.088793, 0.282287,
		17.262133, 9.201297, 21.969017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.810995, 9.891066, 21.801828>,  <16.593485, 9.139141, 21.771416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.810995, 9.891066, 21.801828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126720, 9.652584, 21.743143>,  <17.316156, 9.509495, 21.707932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126720, 9.652584, 21.743143>,  <16.810995, 9.891066, 21.801828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126720, 9.652584, 21.743143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220350, 0.498098, -0.838656,
		0.573088, 0.629634, 0.524529,
		0.789314, -0.596204, -0.146714,
		17.363514, 9.473722, 21.699129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256330, 10.475163, 21.455008>,  <16.810995, 9.891066, 21.801828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256330, 10.475163, 21.455008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408810, 10.110052, 21.396324>,  <17.500298, 9.890985, 21.361115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408810, 10.110052, 21.396324>,  <17.256330, 10.475163, 21.455008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408810, 10.110052, 21.396324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317363, 0.278250, -0.906563,
		0.868313, 0.299021, 0.395751,
		0.381199, -0.912778, -0.146710,
		17.523169, 9.836219, 21.352310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002268, 10.529635, 21.236204>,  <17.256330, 10.475163, 21.455008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002268, 10.529635, 21.236204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880602, 10.161707, 21.137075>,  <17.807602, 9.940950, 21.077599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880602, 10.161707, 21.137075>,  <18.002268, 10.529635, 21.236204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880602, 10.161707, 21.137075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338438, 0.138837, -0.930690,
		0.890474, -0.366953, 0.269073,
		-0.304163, -0.919820, -0.247822,
		17.789352, 9.885761, 21.062729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.578470, 10.268114, 20.796824>,  <18.002268, 10.529635, 21.236204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.578470, 10.268114, 20.796824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.270945, 10.026409, 20.713120>,  <18.086430, 9.881386, 20.662897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.270945, 10.026409, 20.713120>,  <18.578470, 10.268114, 20.796824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.270945, 10.026409, 20.713120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211654, 0.068341, -0.974952,
		0.603428, -0.793849, 0.075353,
		-0.768815, -0.604263, -0.209260,
		18.040300, 9.845130, 20.650341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.792488, 9.830380, 20.187096>,  <18.578470, 10.268114, 20.796824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.792488, 9.830380, 20.187096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.392540, 9.826905, 20.192543>,  <18.152571, 9.824821, 20.195810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.392540, 9.826905, 20.192543>,  <18.792488, 9.830380, 20.187096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.392540, 9.826905, 20.192543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015554, 0.290658, -0.956701,
		0.004352, -0.956788, -0.290755,
		-0.999870, -0.008687, 0.013617,
		18.092579, 9.824299, 20.196629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.768356, 9.700057, 19.535824>,  <18.792488, 9.830380, 20.187096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.768356, 9.700057, 19.535824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.405069, 9.827969, 19.643812>,  <18.187098, 9.904716, 19.708605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.405069, 9.827969, 19.643812>,  <18.768356, 9.700057, 19.535824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405069, 9.827969, 19.643812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135680, 0.385263, -0.912778,
		-0.395897, -0.865630, -0.306514,
		-0.908216, 0.319778, 0.269973,
		18.132605, 9.923902, 19.724804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.348267, 9.557134, 18.861574>,  <18.768356, 9.700057, 19.535824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.348267, 9.557134, 18.861574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170652, 9.835156, 19.087751>,  <18.064083, 10.001970, 19.223457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170652, 9.835156, 19.087751>,  <18.348267, 9.557134, 18.861574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170652, 9.835156, 19.087751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091656, 0.592525, -0.800321,
		-0.891309, -0.407197, -0.199395,
		-0.444035, 0.695057, 0.565446,
		18.037441, 10.043674, 19.257385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768316, 9.677282, 18.527252>,  <18.348267, 9.557134, 18.861574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.768316, 9.677282, 18.527252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.805098, 10.006209, 18.751873>,  <17.827166, 10.203566, 18.886644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.805098, 10.006209, 18.751873>,  <17.768316, 9.677282, 18.527252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.805098, 10.006209, 18.751873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212841, 0.567138, -0.795646,
		-0.972750, -0.046359, 0.227173,
		0.091953, 0.822317, 0.561551,
		17.832684, 10.252905, 18.920338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112644, 10.181579, 18.516365>,  <17.768316, 9.677282, 18.527252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112644, 10.181579, 18.516365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408009, 10.415493, 18.650692>,  <17.585228, 10.555841, 18.731289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408009, 10.415493, 18.650692>,  <17.112644, 10.181579, 18.516365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408009, 10.415493, 18.650692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219945, 0.679607, -0.699828,
		-0.637472, 0.442901, 0.630451,
		0.738413, 0.584785, 0.335817,
		17.629532, 10.590928, 18.751436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866282, 10.871749, 18.471891>,  <17.112644, 10.181579, 18.516365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.866282, 10.871749, 18.471891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265543, 10.894673, 18.463852>,  <17.505100, 10.908428, 18.459028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265543, 10.894673, 18.463852>,  <16.866282, 10.871749, 18.471891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.265543, 10.894673, 18.463852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053186, 0.665081, -0.744875,
		-0.029321, 0.744569, 0.666902,
		0.998154, 0.057311, -0.020100,
		17.564989, 10.911866, 18.457823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973377, 11.569860, 18.533722>,  <16.866282, 10.871749, 18.471891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973377, 11.569860, 18.533722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.300369, 11.401458, 18.376505>,  <17.496565, 11.300416, 18.282175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.300369, 11.401458, 18.376505>,  <16.973377, 11.569860, 18.533722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300369, 11.401458, 18.376505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000551, 0.682988, -0.730430,
		0.575960, 0.596893, 0.558559,
		0.817478, -0.421006, -0.393044,
		17.545612, 11.275156, 18.258591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.436060, 12.100839, 18.616175>,  <16.973377, 11.569860, 18.533722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.436060, 12.100839, 18.616175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579088, 11.842931, 18.345942>,  <17.664906, 11.688187, 18.183802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579088, 11.842931, 18.345942>,  <17.436060, 12.100839, 18.616175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.579088, 11.842931, 18.345942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113736, 0.748094, -0.653773,
		0.926934, 0.156932, 0.340830,
		0.357571, -0.644769, -0.675585,
		17.686359, 11.649500, 18.143267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816938, 12.533645, 18.261251>,  <17.436060, 12.100839, 18.616175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816938, 12.533645, 18.261251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.798031, 12.214536, 18.020809>,  <17.786686, 12.023070, 17.876545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.798031, 12.214536, 18.020809>,  <17.816938, 12.533645, 18.261251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.798031, 12.214536, 18.020809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164503, 0.587343, -0.792443,
		0.985243, -0.136340, 0.103474,
		-0.047267, -0.797772, -0.601104,
		17.783852, 11.975204, 17.840477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.337275, 12.635365, 17.832487>,  <17.816938, 12.533645, 18.261251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.337275, 12.635365, 17.832487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.077469, 12.410970, 17.627186>,  <17.921585, 12.276333, 17.504005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.077469, 12.410970, 17.627186>,  <18.337275, 12.635365, 17.832487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077469, 12.410970, 17.627186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032426, 0.653970, -0.755826,
		0.759660, -0.507560, -0.406571,
		-0.649512, -0.560987, -0.513252,
		17.882616, 12.242674, 17.473209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656551, 12.698149, 17.098112>,  <18.337275, 12.635365, 17.832487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656551, 12.698149, 17.098112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265072, 12.623490, 17.132324>,  <18.030184, 12.578695, 17.152851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265072, 12.623490, 17.132324>,  <18.656551, 12.698149, 17.098112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265072, 12.623490, 17.132324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159669, 0.430050, -0.888573,
		0.129066, -0.883301, -0.450690,
		-0.978697, -0.186645, 0.085531,
		17.971462, 12.567496, 17.157984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456154, 12.757547, 17.076290>,  <18.656551, 12.698149, 17.098112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456154, 12.757547, 17.076290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.850641, 12.808643, 17.118353>,  <20.087334, 12.839301, 17.143591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.850641, 12.808643, 17.118353>,  <19.456154, 12.757547, 17.076290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.850641, 12.808643, 17.118353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028436, -0.495246, 0.868287,
		0.162994, -0.859310, -0.484788,
		0.986217, 0.127741, 0.105157,
		20.146507, 12.846966, 17.149900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761713, 12.174578, 17.194445>,  <19.456154, 12.757547, 17.076290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761713, 12.174578, 17.194445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002739, 12.440771, 17.370647>,  <20.147354, 12.600487, 17.476368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002739, 12.440771, 17.370647>,  <19.761713, 12.174578, 17.194445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.002739, 12.440771, 17.370647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071955, -0.504414, 0.860458,
		0.794818, -0.550180, -0.256058,
		0.602567, 0.665483, 0.440506,
		20.183510, 12.640416, 17.502800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.256208, 11.809716, 17.528940>,  <19.761713, 12.174578, 17.194445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.256208, 11.809716, 17.528940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.267269, 12.161858, 17.718346>,  <20.273905, 12.373142, 17.831989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.267269, 12.161858, 17.718346>,  <20.256208, 11.809716, 17.528940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267269, 12.161858, 17.718346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090948, -0.469513, 0.878229,
		0.995472, -0.067347, 0.067084,
		0.027649, 0.880353, 0.473512,
		20.275564, 12.425963, 17.860399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.810890, 11.757429, 18.128145>,  <20.256208, 11.809716, 17.528940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.810890, 11.757429, 18.128145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.598083, 12.086246, 18.209339>,  <20.470400, 12.283537, 18.258057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.598083, 12.086246, 18.209339>,  <20.810890, 11.757429, 18.128145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.598083, 12.086246, 18.209339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115209, -0.307775, 0.944458,
		0.838860, 0.479081, 0.258448,
		-0.532016, 0.822043, 0.202986,
		20.438478, 12.332860, 18.270235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.050076, 11.990600, 18.717255>,  <20.810890, 11.757429, 18.128145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.050076, 11.990600, 18.717255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684109, 12.152049, 18.715534>,  <20.464529, 12.248919, 18.714502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684109, 12.152049, 18.715534>,  <21.050076, 11.990600, 18.717255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.684109, 12.152049, 18.715534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084156, -0.180319, 0.980002,
		0.394776, 0.896980, 0.198944,
		-0.914915, 0.403623, -0.004301,
		20.409634, 12.273136, 18.714243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.016665, 12.614562, 19.130796>,  <21.050076, 11.990600, 18.717255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.016665, 12.614562, 19.130796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648125, 12.460813, 19.107553>,  <20.427002, 12.368563, 19.093607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648125, 12.460813, 19.107553>,  <21.016665, 12.614562, 19.130796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648125, 12.460813, 19.107553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022502, -0.096493, 0.995079,
		-0.388088, 0.918121, 0.080255,
		-0.921347, -0.384373, -0.058107,
		20.371721, 12.345501, 19.090122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.725800, 12.809381, 19.848410>,  <21.016665, 12.614562, 19.130796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.725800, 12.809381, 19.848410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.470224, 12.544163, 19.692394>,  <20.316879, 12.385032, 19.598785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.470224, 12.544163, 19.692394>,  <20.725800, 12.809381, 19.848410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470224, 12.544163, 19.692394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274139, -0.277485, 0.920788,
		-0.718754, 0.695250, -0.004471,
		-0.638937, -0.663045, -0.390039,
		20.278543, 12.345249, 19.575382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.218168, 12.796302, 20.308590>,  <20.725800, 12.809381, 19.848410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.218168, 12.796302, 20.308590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.133148, 12.467121, 20.097849>,  <20.082136, 12.269613, 19.971405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.133148, 12.467121, 20.097849>,  <20.218168, 12.796302, 20.308590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133148, 12.467121, 20.097849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369992, -0.431246, 0.822881,
		-0.904393, 0.369836, -0.212823,
		-0.212551, -0.822951, -0.526852,
		20.069384, 12.220236, 19.939793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.634451, 12.676744, 20.576601>,  <20.218168, 12.796302, 20.308590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.634451, 12.676744, 20.576601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.746130, 12.329099, 20.413290>,  <19.813137, 12.120512, 20.315304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.746130, 12.329099, 20.413290>,  <19.634451, 12.676744, 20.576601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.746130, 12.329099, 20.413290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197872, -0.468135, 0.861218,
		-0.939625, -0.159664, -0.302676,
		0.279199, -0.869113, -0.408278,
		19.829889, 12.068365, 20.290806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.114155, 12.180103, 20.648422>,  <19.634451, 12.676744, 20.576601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.114155, 12.180103, 20.648422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.419388, 11.927259, 20.594545>,  <19.602528, 11.775553, 20.562220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.419388, 11.927259, 20.594545>,  <19.114155, 12.180103, 20.648422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419388, 11.927259, 20.594545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340730, -0.570552, 0.747244,
		-0.549186, -0.524318, -0.650758,
		0.763085, -0.632108, -0.134689,
		19.648314, 11.737626, 20.554138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.907019, 11.434246, 20.586304>,  <19.114155, 12.180103, 20.648422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.907019, 11.434246, 20.586304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.279903, 11.458159, 20.729080>,  <19.503633, 11.472507, 20.814745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.279903, 11.458159, 20.729080>,  <18.907019, 11.434246, 20.586304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.279903, 11.458159, 20.729080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250899, -0.604034, 0.756434,
		0.260825, -0.794713, -0.548088,
		0.932213, 0.059783, 0.356940,
		19.559566, 11.476094, 20.836163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.109964, 10.774316, 20.820343>,  <18.907019, 11.434246, 20.586304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.109964, 10.774316, 20.820343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363485, 11.017072, 21.012169>,  <19.515598, 11.162725, 21.127264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363485, 11.017072, 21.012169>,  <19.109964, 10.774316, 20.820343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363485, 11.017072, 21.012169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070915, -0.571791, 0.817329,
		0.770239, -0.552032, -0.319363,
		0.633800, 0.606891, 0.479563,
		19.553625, 11.199139, 21.156038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.635571, 10.345402, 21.255009>,  <19.109964, 10.774316, 20.820343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.635571, 10.345402, 21.255009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.713724, 10.696987, 21.429020>,  <19.760616, 10.907938, 21.533426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.713724, 10.696987, 21.429020>,  <19.635571, 10.345402, 21.255009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.713724, 10.696987, 21.429020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039710, -0.436123, 0.899010,
		0.979922, -0.192928, -0.050309,
		0.195385, 0.878963, 0.435028,
		19.772339, 10.960676, 21.559528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154497, 10.193581, 21.841059>,  <19.635571, 10.345402, 21.255009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154497, 10.193581, 21.841059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.964594, 10.533156, 21.933929>,  <19.850653, 10.736902, 21.989651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.964594, 10.533156, 21.933929>,  <20.154497, 10.193581, 21.841059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.964594, 10.533156, 21.933929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104347, -0.316233, 0.942926,
		0.873909, 0.423435, 0.238718,
		-0.474758, 0.848940, 0.232175,
		19.822166, 10.787839, 22.003582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.505390, 10.497177, 22.379704>,  <20.154497, 10.193581, 21.841059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.505390, 10.497177, 22.379704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.144310, 10.663919, 22.422350>,  <19.927662, 10.763965, 22.447937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.144310, 10.663919, 22.422350>,  <20.505390, 10.497177, 22.379704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.144310, 10.663919, 22.422350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032534, -0.313204, 0.949128,
		0.429042, 0.853308, 0.296291,
		-0.902698, 0.416856, 0.106616,
		19.873501, 10.788976, 22.454334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.437500, 10.700742, 23.146727>,  <20.505390, 10.497177, 22.379704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.437500, 10.700742, 23.146727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056812, 10.694792, 23.024080>,  <19.828400, 10.691222, 22.950493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056812, 10.694792, 23.024080>,  <20.437500, 10.700742, 23.146727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056812, 10.694792, 23.024080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272376, -0.419754, 0.865805,
		-0.141581, 0.907516, 0.395435,
		-0.951717, -0.014875, -0.306615,
		19.771297, 10.690330, 22.932096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990444, 10.957657, 23.758867>,  <20.437500, 10.700742, 23.146727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990444, 10.957657, 23.758867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748678, 10.752485, 23.515036>,  <19.603619, 10.629382, 23.368736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748678, 10.752485, 23.515036>,  <19.990444, 10.957657, 23.758867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748678, 10.752485, 23.515036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545412, -0.291312, 0.785915,
		-0.580695, 0.807492, -0.103684,
		-0.604416, -0.512928, -0.609579,
		19.567354, 10.598607, 23.332161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.315594, 11.117093, 24.023386>,  <19.990444, 10.957657, 23.758867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.315594, 11.117093, 24.023386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.278570, 10.774718, 23.819895>,  <19.256357, 10.569293, 23.697800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.278570, 10.774718, 23.819895>,  <19.315594, 11.117093, 24.023386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.278570, 10.774718, 23.819895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542455, -0.385097, 0.746621,
		-0.834970, 0.345067, -0.428664,
		-0.092558, -0.855938, -0.508728,
		19.250803, 10.517937, 23.667276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597372, 10.834169, 24.098032>,  <19.315594, 11.117093, 24.023386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597372, 10.834169, 24.098032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822250, 10.519128, 23.997143>,  <18.957178, 10.330103, 23.936609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822250, 10.519128, 23.997143>,  <18.597372, 10.834169, 24.098032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822250, 10.519128, 23.997143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398190, -0.525096, 0.752142,
		-0.724831, -0.322419, -0.608823,
		0.562195, -0.787604, -0.252223,
		18.990910, 10.282846, 23.921476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133318, 10.337207, 24.171642>,  <18.597372, 10.834169, 24.098032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133318, 10.337207, 24.171642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487848, 10.152288, 24.182312>,  <18.700565, 10.041338, 24.188713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487848, 10.152288, 24.182312>,  <18.133318, 10.337207, 24.171642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487848, 10.152288, 24.182312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300348, -0.530080, 0.792973,
		-0.352447, -0.710844, -0.608672,
		0.886325, -0.462294, 0.026675,
		18.753746, 10.013599, 24.190313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.027830, 9.614106, 24.162455>,  <18.133318, 10.337207, 24.171642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.027830, 9.614106, 24.162455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.382477, 9.664269, 24.340527>,  <18.595264, 9.694367, 24.447369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.382477, 9.664269, 24.340527>,  <18.027830, 9.614106, 24.162455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.382477, 9.664269, 24.340527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294117, -0.589961, 0.751958,
		0.356940, -0.797633, -0.486185,
		0.886617, 0.125409, 0.445178,
		18.648462, 9.701892, 24.474079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.289221, 8.943882, 24.331148>,  <18.027830, 9.614106, 24.162455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.289221, 8.943882, 24.331148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.504099, 9.181706, 24.570454>,  <18.633026, 9.324401, 24.714037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.504099, 9.181706, 24.570454>,  <18.289221, 8.943882, 24.331148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504099, 9.181706, 24.570454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102872, -0.657817, 0.746119,
		0.837161, -0.462356, -0.292213,
		0.537195, 0.594561, 0.598262,
		18.665258, 9.360075, 24.749931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744139, 8.372715, 24.570545>,  <18.289221, 8.943882, 24.331148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.744139, 8.372715, 24.570545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.762627, 8.694265, 24.807745>,  <18.773720, 8.887196, 24.950064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.762627, 8.694265, 24.807745>,  <18.744139, 8.372715, 24.570545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.762627, 8.694265, 24.807745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069616, -0.589597, 0.804692,
		0.996502, -0.078477, 0.028711,
		0.046222, 0.803876, 0.592999,
		18.776493, 8.935428, 24.985645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183355, 8.196423, 25.137785>,  <18.744139, 8.372715, 24.570545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183355, 8.196423, 25.137785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.947720, 8.494770, 25.262142>,  <18.806339, 8.673779, 25.336756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.947720, 8.494770, 25.262142>,  <19.183355, 8.196423, 25.137785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.947720, 8.494770, 25.262142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179133, -0.495701, 0.849819,
		0.787964, 0.444926, 0.425621,
		-0.589087, 0.745869, 0.310894,
		18.770994, 8.718531, 25.355410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.326378, 8.153497, 25.871332>,  <19.183355, 8.196423, 25.137785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.326378, 8.153497, 25.871332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.009682, 8.395325, 25.836367>,  <18.819664, 8.540421, 25.815388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.009682, 8.395325, 25.836367>,  <19.326378, 8.153497, 25.871332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.009682, 8.395325, 25.836367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405250, -0.412774, 0.815714,
		0.457074, 0.681259, 0.571812,
		-0.791742, 0.604569, -0.087412,
		18.772160, 8.576695, 25.810143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.398808, 8.547373, 26.404629>,  <19.326378, 8.153497, 25.871332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.398808, 8.547373, 26.404629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024229, 8.486057, 26.278406>,  <18.799482, 8.449268, 26.202673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024229, 8.486057, 26.278406>,  <19.398808, 8.547373, 26.404629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024229, 8.486057, 26.278406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192696, -0.526894, 0.827798,
		-0.293157, 0.835993, 0.463869,
		-0.936444, -0.153289, -0.315555,
		18.743296, 8.440070, 26.183739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000713, 8.792829, 26.955193>,  <19.398808, 8.547373, 26.404629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000713, 8.792829, 26.955193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766422, 8.556936, 26.732790>,  <18.625849, 8.415401, 26.599348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766422, 8.556936, 26.732790>,  <19.000713, 8.792829, 26.955193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766422, 8.556936, 26.732790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253072, -0.518631, 0.816686,
		-0.769987, 0.619064, 0.154532,
		-0.585726, -0.589730, -0.556007,
		18.590704, 8.380017, 26.565989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397999, 8.796642, 27.337477>,  <19.000713, 8.792829, 26.955193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.397999, 8.796642, 27.337477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337200, 8.481715, 27.098469>,  <18.300720, 8.292759, 26.955065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337200, 8.481715, 27.098469>,  <18.397999, 8.796642, 27.337477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337200, 8.481715, 27.098469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282347, -0.544762, 0.789629,
		-0.947194, 0.288729, -0.139494,
		-0.151998, -0.787318, -0.597518,
		18.291601, 8.245520, 26.919214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.821049, 8.487596, 27.524050>,  <18.397999, 8.796642, 27.337477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.821049, 8.487596, 27.524050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.989687, 8.186367, 27.322004>,  <18.090870, 8.005630, 27.200777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.989687, 8.186367, 27.322004>,  <17.821049, 8.487596, 27.524050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.989687, 8.186367, 27.322004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228685, -0.627334, 0.744416,
		-0.877474, -0.198331, -0.436697,
		0.421596, -0.753072, -0.505114,
		18.116165, 7.960445, 27.170469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.384834, 7.984558, 27.543175>,  <17.821049, 8.487596, 27.524050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.384834, 7.984558, 27.543175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715303, 7.776664, 27.456167>,  <17.913586, 7.651928, 27.403963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715303, 7.776664, 27.456167>,  <17.384834, 7.984558, 27.543175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715303, 7.776664, 27.456167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169916, -0.597940, 0.783324,
		-0.537182, -0.610202, -0.582314,
		0.826174, -0.519732, -0.217519,
		17.963156, 7.620744, 27.390911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116629, 7.271305, 27.485846>,  <17.384834, 7.984558, 27.543175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116629, 7.271305, 27.485846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513090, 7.254307, 27.536133>,  <17.750967, 7.244109, 27.566305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513090, 7.254307, 27.536133>,  <17.116629, 7.271305, 27.485846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513090, 7.254307, 27.536133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123013, -0.649581, 0.750275,
		0.049780, -0.759104, -0.649063,
		0.991156, -0.042495, 0.125716,
		17.810436, 7.241559, 27.573847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.280790, 6.591754, 27.698938>,  <17.116629, 7.271305, 27.485846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.280790, 6.591754, 27.698938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.613352, 6.786226, 27.806568>,  <17.812889, 6.902909, 27.871145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.613352, 6.786226, 27.806568>,  <17.280790, 6.591754, 27.698938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.613352, 6.786226, 27.806568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197961, -0.711612, 0.674107,
		0.519213, -0.507187, -0.687880,
		0.831402, 0.486178, 0.269075,
		17.862772, 6.932079, 27.887291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.691393, 6.065453, 27.847841>,  <17.280790, 6.591754, 27.698938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.691393, 6.065453, 27.847841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880371, 6.359645, 28.042105>,  <17.993757, 6.536160, 28.158663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880371, 6.359645, 28.042105>,  <17.691393, 6.065453, 27.847841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880371, 6.359645, 28.042105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204487, -0.444526, 0.872113,
		0.857310, -0.511337, -0.059618,
		0.472445, 0.735480, 0.485658,
		18.022104, 6.580289, 28.187801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108288, 5.729198, 28.451233>,  <17.691393, 6.065453, 27.847841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108288, 5.729198, 28.451233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.055241, 6.112782, 28.551479>,  <18.023413, 6.342933, 28.611628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.055241, 6.112782, 28.551479>,  <18.108288, 5.729198, 28.451233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.055241, 6.112782, 28.551479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285769, -0.279104, 0.916753,
		0.949078, 0.049959, 0.311056,
		-0.132617, 0.958960, 0.250614,
		18.015455, 6.400471, 28.626663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363544, 5.730651, 29.086372>,  <18.108288, 5.729198, 28.451233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363544, 5.730651, 29.086372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118870, 6.046842, 29.073814>,  <17.972065, 6.236557, 29.066280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118870, 6.046842, 29.073814>,  <18.363544, 5.730651, 29.086372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118870, 6.046842, 29.073814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262392, -0.165286, 0.950700,
		0.746318, 0.589768, 0.308518,
		-0.611686, 0.790477, -0.031394,
		17.935364, 6.283985, 29.064396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.401495, 6.105728, 29.726767>,  <18.363544, 5.730651, 29.086372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.401495, 6.105728, 29.726767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042931, 6.191703, 29.571720>,  <17.827791, 6.243288, 29.478693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042931, 6.191703, 29.571720>,  <18.401495, 6.105728, 29.726767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.042931, 6.191703, 29.571720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427510, -0.188531, 0.884133,
		0.116955, 0.958258, 0.260889,
		-0.896413, 0.214936, -0.387616,
		17.774006, 6.256184, 29.455435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103970, 6.512325, 30.226435>,  <18.401495, 6.105728, 29.726767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103970, 6.512325, 30.226435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.814022, 6.356042, 29.999485>,  <17.640053, 6.262272, 29.863316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.814022, 6.356042, 29.999485>,  <18.103970, 6.512325, 30.226435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.814022, 6.356042, 29.999485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596669, -0.055563, 0.800561,
		-0.344310, 0.918836, -0.192847,
		-0.724870, -0.390707, -0.567372,
		17.596561, 6.238830, 29.829273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518066, 6.789036, 30.540518>,  <18.103970, 6.512325, 30.226435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518066, 6.789036, 30.540518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366947, 6.493160, 30.317762>,  <17.276276, 6.315634, 30.184109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366947, 6.493160, 30.317762>,  <17.518066, 6.789036, 30.540518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366947, 6.493160, 30.317762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742124, -0.117732, 0.659841,
		-0.553642, 0.662569, -0.504463,
		-0.377799, -0.739690, -0.556890,
		17.253607, 6.271253, 30.150696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.422745, 7.227884, 31.092775>,  <17.518066, 6.789036, 30.540518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.422745, 7.227884, 31.092775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163708, 7.467409, 31.281261>,  <17.008286, 7.611124, 31.394354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163708, 7.467409, 31.281261>,  <17.422745, 7.227884, 31.092775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163708, 7.467409, 31.281261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002642, 0.620168, -0.784464,
		-0.761981, -0.506769, -0.403199,
		-0.647594, 0.598812, 0.471217,
		16.969429, 7.647052, 31.422626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840399, 7.486354, 30.617476>,  <17.422745, 7.227884, 31.092775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840399, 7.486354, 30.617476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.877989, 7.742675, 30.922249>,  <16.900543, 7.896467, 31.105112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.877989, 7.742675, 30.922249>,  <16.840399, 7.486354, 30.617476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.877989, 7.742675, 30.922249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090666, 0.767649, -0.634425,
		-0.991437, -0.009459, 0.130240,
		0.093978, 0.640801, 0.761933,
		16.906181, 7.934915, 31.150829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.363573, 8.005077, 30.482916>,  <16.840399, 7.486354, 30.617476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.363573, 8.005077, 30.482916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.633520, 8.159603, 30.734411>,  <16.795488, 8.252318, 30.885309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.633520, 8.159603, 30.734411>,  <16.363573, 8.005077, 30.482916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.633520, 8.159603, 30.734411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044426, 0.829208, -0.557171,
		-0.736600, 0.403950, 0.542444,
		0.674868, 0.386314, 0.628740,
		16.835981, 8.275497, 30.923033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083170, 8.621858, 30.740009>,  <16.363573, 8.005077, 30.482916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.083170, 8.621858, 30.740009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.480244, 8.654761, 30.775352>,  <16.718489, 8.674503, 30.796558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.480244, 8.654761, 30.775352>,  <16.083170, 8.621858, 30.740009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.480244, 8.654761, 30.775352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012420, 0.797609, -0.603047,
		-0.120080, 0.597539, 0.792797,
		0.992687, 0.082260, 0.088356,
		16.778049, 8.679440, 30.801859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181360, 9.322927, 30.724508>,  <16.083170, 8.621858, 30.740009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181360, 9.322927, 30.724508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555901, 9.186559, 30.690994>,  <16.780624, 9.104738, 30.670885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555901, 9.186559, 30.690994>,  <16.181360, 9.322927, 30.724508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555901, 9.186559, 30.690994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244715, 0.804963, -0.540509,
		0.251714, 0.485602, 0.837156,
		0.936352, -0.340919, -0.083786,
		16.836805, 9.084283, 30.665859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457354, 9.884674, 30.583845>,  <16.181360, 9.322927, 30.724508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.457354, 9.884674, 30.583845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715950, 9.609354, 30.452215>,  <16.871109, 9.444162, 30.373238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715950, 9.609354, 30.452215>,  <16.457354, 9.884674, 30.583845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.715950, 9.609354, 30.452215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258418, 0.603402, -0.754405,
		0.717822, 0.402678, 0.567964,
		0.646492, -0.688300, -0.329076,
		16.909897, 9.402864, 30.353493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.000996, 10.253405, 30.432610>,  <16.457354, 9.884674, 30.583845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.000996, 10.253405, 30.432610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060266, 9.923982, 30.213594>,  <17.095829, 9.726328, 30.082186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060266, 9.923982, 30.213594>,  <17.000996, 10.253405, 30.432610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.060266, 9.923982, 30.213594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185919, 0.566976, -0.802478,
		0.971328, 0.017109, 0.237126,
		0.148175, -0.823556, -0.547539,
		17.104719, 9.676915, 30.049334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.705336, 10.259624, 30.079647>,  <17.000996, 10.253405, 30.432610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.705336, 10.259624, 30.079647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.438433, 10.038425, 29.880062>,  <17.278292, 9.905706, 29.760311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.438433, 10.038425, 29.880062>,  <17.705336, 10.259624, 30.079647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.438433, 10.038425, 29.880062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116116, 0.584480, -0.803056,
		0.735722, -0.593781, -0.325786,
		-0.667255, -0.552998, -0.498963,
		17.238256, 9.872526, 29.730373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.013243, 10.195181, 29.386625>,  <17.705336, 10.259624, 30.079647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.013243, 10.195181, 29.386625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.625397, 10.105715, 29.346992>,  <17.392689, 10.052035, 29.323212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.625397, 10.105715, 29.346992>,  <18.013243, 10.195181, 29.386625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.625397, 10.105715, 29.346992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004405, 0.389008, -0.921224,
		0.244588, -0.893671, -0.376204,
		-0.969617, -0.223663, -0.099083,
		17.334511, 10.038615, 29.317266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.900631, 9.916401, 28.706629>,  <18.013243, 10.195181, 29.386625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.900631, 9.916401, 28.706629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523924, 10.021960, 28.789991>,  <17.297899, 10.085296, 28.840010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523924, 10.021960, 28.789991>,  <17.900631, 9.916401, 28.706629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.523924, 10.021960, 28.789991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046688, 0.511149, -0.858223,
		-0.333010, -0.817976, -0.469062,
		-0.941767, 0.263897, 0.208407,
		17.241394, 10.101130, 28.852514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447214, 9.728082, 28.062616>,  <17.900631, 9.916401, 28.706629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.447214, 9.728082, 28.062616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264820, 10.018428, 28.268604>,  <17.155384, 10.192636, 28.392197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264820, 10.018428, 28.268604>,  <17.447214, 9.728082, 28.062616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264820, 10.018428, 28.268604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013266, 0.573020, -0.819434,
		-0.889889, -0.380481, -0.251659,
		-0.455985, 0.725866, 0.514972,
		17.128025, 10.236188, 28.423096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907616, 9.907158, 27.714695>,  <17.447214, 9.728082, 28.062616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907616, 9.907158, 27.714695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950676, 10.224430, 27.954454>,  <16.976513, 10.414793, 28.098310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950676, 10.224430, 27.954454>,  <16.907616, 9.907158, 27.714695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950676, 10.224430, 27.954454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085272, 0.593313, -0.800443,
		-0.990525, 0.137280, -0.003765,
		0.107651, 0.793180, 0.599398,
		16.982971, 10.462384, 28.134274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519791, 10.413145, 27.426462>,  <16.907616, 9.907158, 27.714695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.519791, 10.413145, 27.426462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773247, 10.615410, 27.660662>,  <16.925320, 10.736769, 27.801182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773247, 10.615410, 27.660662>,  <16.519791, 10.413145, 27.426462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773247, 10.615410, 27.660662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240452, 0.590610, -0.770300,
		-0.735311, 0.628877, 0.252647,
		0.633640, 0.505661, 0.585497,
		16.963339, 10.767108, 27.836311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336912, 11.053998, 27.266701>,  <16.519791, 10.413145, 27.426462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.336912, 11.053998, 27.266701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.708210, 11.026569, 27.412941>,  <16.930988, 11.010112, 27.500685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.708210, 11.026569, 27.412941>,  <16.336912, 11.053998, 27.266701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.708210, 11.026569, 27.412941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346466, 0.517081, -0.782680,
		-0.135374, 0.853185, 0.503735,
		0.928243, -0.068573, 0.365599,
		16.986683, 11.005998, 27.522621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.517925, 11.716472, 27.171391>,  <16.336912, 11.053998, 27.266701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.517925, 11.716472, 27.171391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860334, 11.530156, 27.261068>,  <17.065781, 11.418367, 27.314875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860334, 11.530156, 27.261068>,  <16.517925, 11.716472, 27.171391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860334, 11.530156, 27.261068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498027, 0.626884, -0.599154,
		0.138534, 0.624546, 0.768603,
		0.856024, -0.465788, 0.224196,
		17.117142, 11.390420, 27.328327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068869, 12.240057, 27.274725>,  <16.517925, 11.716472, 27.171391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068869, 12.240057, 27.274725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.263844, 11.899313, 27.198055>,  <17.380829, 11.694866, 27.152054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.263844, 11.899313, 27.198055>,  <17.068869, 12.240057, 27.274725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.263844, 11.899313, 27.198055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603298, 0.487267, -0.631349,
		0.631219, 0.192104, 0.751438,
		0.487436, -0.851861, -0.191676,
		17.410074, 11.643755, 27.140553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807308, 12.389908, 27.160568>,  <17.068869, 12.240057, 27.274725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807308, 12.389908, 27.160568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.734409, 12.036938, 26.987082>,  <17.690670, 11.825155, 26.882990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.734409, 12.036938, 26.987082>,  <17.807308, 12.389908, 27.160568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.734409, 12.036938, 26.987082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553000, 0.272738, -0.787277,
		0.813005, -0.383324, 0.438275,
		-0.182248, -0.882426, -0.433716,
		17.679735, 11.772210, 26.856966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450832, 12.273789, 26.795931>,  <17.807308, 12.389908, 27.160568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.450832, 12.273789, 26.795931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201601, 12.026533, 26.604235>,  <18.052061, 11.878180, 26.489216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201601, 12.026533, 26.604235>,  <18.450832, 12.273789, 26.795931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.201601, 12.026533, 26.604235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276499, 0.399081, -0.874232,
		0.731656, -0.677226, -0.077744,
		-0.623080, -0.618141, -0.479243,
		18.014677, 11.841091, 26.460463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.902998, 11.900030, 26.468540>,  <18.450832, 12.273789, 26.795931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.902998, 11.900030, 26.468540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.539392, 11.893261, 26.301971>,  <18.321230, 11.889199, 26.202030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.539392, 11.893261, 26.301971>,  <18.902998, 11.900030, 26.468540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.539392, 11.893261, 26.301971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373564, 0.409915, -0.832118,
		0.184780, -0.911967, -0.366296,
		-0.909014, -0.016924, -0.416422,
		18.266687, 11.888184, 26.177046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.073162, 11.609901, 25.835503>,  <18.902998, 11.900030, 26.468540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.073162, 11.609901, 25.835503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.713348, 11.772202, 25.770746>,  <18.497461, 11.869581, 25.731894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.713348, 11.772202, 25.770746>,  <19.073162, 11.609901, 25.835503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.713348, 11.772202, 25.770746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270186, 0.225533, -0.936021,
		-0.343280, -0.885721, -0.312502,
		-0.899533, 0.405750, -0.161889,
		18.443489, 11.893927, 25.722179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.748644, 11.341830, 25.139357>,  <19.073162, 11.609901, 25.835503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.748644, 11.341830, 25.139357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572075, 11.693974, 25.208773>,  <18.466133, 11.905259, 25.250423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572075, 11.693974, 25.208773>,  <18.748644, 11.341830, 25.139357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572075, 11.693974, 25.208773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188463, 0.280054, -0.941303,
		-0.877285, -0.382806, -0.289537,
		-0.441422, 0.880358, 0.173542,
		18.439648, 11.958081, 25.260836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464455, 11.563534, 24.473467>,  <18.748644, 11.341830, 25.139357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.464455, 11.563534, 24.473467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469025, 11.890198, 24.704269>,  <18.471767, 12.086196, 24.842751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469025, 11.890198, 24.704269>,  <18.464455, 11.563534, 24.473467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.469025, 11.890198, 24.704269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328629, 0.541923, -0.773513,
		-0.944390, 0.198458, -0.262187,
		0.011424, 0.816661, 0.577005,
		18.472452, 12.135196, 24.877371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909641, 12.067549, 24.169552>,  <18.464455, 11.563534, 24.473467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909641, 12.067549, 24.169552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.196541, 12.269030, 24.362150>,  <18.368681, 12.389918, 24.477709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.196541, 12.269030, 24.362150>,  <17.909641, 12.067549, 24.169552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.196541, 12.269030, 24.362150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179906, 0.533707, -0.826312,
		-0.673194, 0.679294, 0.292180,
		0.717247, 0.503703, 0.481498,
		18.411715, 12.420140, 24.506599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.141491, 12.641527, 23.715528>,  <17.909641, 12.067549, 24.169552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.141491, 12.641527, 23.715528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.438225, 12.646958, 23.983706>,  <18.616264, 12.650217, 24.144611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.438225, 12.646958, 23.983706>,  <18.141491, 12.641527, 23.715528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.438225, 12.646958, 23.983706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610635, 0.399515, -0.683749,
		-0.277137, 0.916626, 0.288083,
		0.741835, 0.013579, 0.670445,
		18.660776, 12.651031, 24.184839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.393934, 13.246026, 23.653202>,  <18.141491, 12.641527, 23.715528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.393934, 13.246026, 23.653202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711065, 13.058432, 23.808882>,  <18.901344, 12.945875, 23.902288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711065, 13.058432, 23.808882>,  <18.393934, 13.246026, 23.653202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711065, 13.058432, 23.808882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591161, 0.436554, -0.678196,
		0.148158, 0.767772, 0.623358,
		0.792829, -0.468985, 0.389197,
		18.948914, 12.917736, 23.925640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975555, 13.816333, 23.714500>,  <18.393934, 13.246026, 23.653202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975555, 13.816333, 23.714500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.116283, 13.442172, 23.700371>,  <19.200720, 13.217676, 23.691893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.116283, 13.442172, 23.700371>,  <18.975555, 13.816333, 23.714500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.116283, 13.442172, 23.700371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665398, 0.276455, -0.693410,
		0.658383, 0.220449, 0.719676,
		0.351820, -0.935401, -0.035326,
		19.221828, 13.161551, 23.689774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.645388, 13.920465, 23.900116>,  <18.975555, 13.816333, 23.714500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.645388, 13.920465, 23.900116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.617538, 13.573602, 23.702860>,  <19.600830, 13.365483, 23.584507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.617538, 13.573602, 23.702860>,  <19.645388, 13.920465, 23.900116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.617538, 13.573602, 23.702860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747483, 0.282018, -0.601444,
		0.660623, -0.410486, 0.628553,
		-0.069621, -0.867160, -0.493138,
		19.596653, 13.313454, 23.554918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.252064, 13.695208, 23.921488>,  <19.645388, 13.920465, 23.900116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.252064, 13.695208, 23.921488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.100903, 13.487474, 23.614899>,  <20.010206, 13.362835, 23.430944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.100903, 13.487474, 23.614899>,  <20.252064, 13.695208, 23.921488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.100903, 13.487474, 23.614899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724046, 0.350175, -0.594251,
		0.577014, -0.779532, 0.243688,
		-0.377905, -0.519333, -0.766473,
		19.987532, 13.331675, 23.384956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.822819, 13.376499, 23.554586>,  <20.252064, 13.695208, 23.921488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.822819, 13.376499, 23.554586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.530708, 13.373719, 23.281340>,  <20.355442, 13.372051, 23.117392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.530708, 13.373719, 23.281340>,  <20.822819, 13.376499, 23.554586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.530708, 13.373719, 23.281340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619282, 0.415436, -0.666260,
		0.288422, -0.909596, -0.299079,
		-0.730276, -0.006949, -0.683117,
		20.311626, 13.371634, 23.076405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.013575, 12.926051, 23.092735>,  <20.822819, 13.376499, 23.554586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.013575, 12.926051, 23.092735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.730970, 13.147572, 22.916487>,  <20.561407, 13.280483, 22.810738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.730970, 13.147572, 22.916487>,  <21.013575, 12.926051, 23.092735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.730970, 13.147572, 22.916487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639203, 0.232128, -0.733168,
		-0.303748, -0.799638, -0.517992,
		-0.706510, 0.553801, -0.440623,
		20.519018, 13.313711, 22.784300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194292, 12.890730, 22.384985>,  <21.013575, 12.926051, 23.092735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194292, 12.890730, 22.384985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.960096, 13.214725, 22.398375>,  <20.819578, 13.409122, 22.406408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.960096, 13.214725, 22.398375>,  <21.194292, 12.890730, 22.384985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960096, 13.214725, 22.398375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527596, 0.412065, -0.742862,
		-0.615504, -0.417277, -0.668607,
		-0.585489, 0.809989, 0.033474,
		20.784451, 13.457723, 22.408417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.229002, 13.072856, 21.628038>,  <21.194292, 12.890730, 22.384985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.229002, 13.072856, 21.628038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110294, 13.386394, 21.846218>,  <21.039070, 13.574516, 21.977125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110294, 13.386394, 21.846218>,  <21.229002, 13.072856, 21.628038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110294, 13.386394, 21.846218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368395, 0.620942, -0.691894,
		-0.881029, -0.004393, -0.473042,
		-0.296771, 0.783845, 0.545449,
		21.021263, 13.621547, 22.009853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.992035, 13.589119, 21.146534>,  <21.229002, 13.072856, 21.628038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.992035, 13.589119, 21.146534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.023897, 13.857274, 21.441624>,  <21.043015, 14.018167, 21.618677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.023897, 13.857274, 21.441624>,  <20.992035, 13.589119, 21.146534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.023897, 13.857274, 21.441624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074550, 0.733996, -0.675049,
		-0.994031, 0.108770, 0.008491,
		0.079658, 0.670387, 0.737724,
		21.047794, 14.058390, 21.662941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.365749, 14.102496, 21.154404>,  <20.992035, 13.589119, 21.146534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.365749, 14.102496, 21.154404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682272, 14.273968, 21.328791>,  <20.872185, 14.376850, 21.433424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682272, 14.273968, 21.328791>,  <20.365749, 14.102496, 21.154404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682272, 14.273968, 21.328791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084952, 0.783213, -0.615923,
		-0.605489, 0.450348, 0.656179,
		0.791307, 0.428678, 0.435968,
		20.919664, 14.402572, 21.459581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.335567, 14.864679, 20.989330>,  <20.365749, 14.102496, 21.154404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.335567, 14.864679, 20.989330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.718340, 14.838719, 21.102518>,  <20.948004, 14.823144, 21.170431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.718340, 14.838719, 21.102518>,  <20.335567, 14.864679, 20.989330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.718340, 14.838719, 21.102518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248851, 0.685355, -0.684370,
		-0.149518, 0.725312, 0.671987,
		0.956931, -0.064899, 0.282967,
		21.005419, 14.819250, 21.187408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.551891, 15.524017, 21.410494>,  <20.335567, 14.864679, 20.989330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.551891, 15.524017, 21.410494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872557, 15.340186, 21.257587>,  <21.064955, 15.229887, 21.165844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872557, 15.340186, 21.257587>,  <20.551891, 15.524017, 21.410494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872557, 15.340186, 21.257587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295601, 0.860592, -0.414730,
		0.519576, 0.219475, 0.825755,
		0.801661, -0.459578, -0.382266,
		21.113054, 15.202312, 21.142908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026588, 16.063675, 21.433172>,  <20.551891, 15.524017, 21.410494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026588, 16.063675, 21.433172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213142, 15.790569, 21.208204>,  <21.325075, 15.626705, 21.073223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213142, 15.790569, 21.208204>,  <21.026588, 16.063675, 21.433172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.213142, 15.790569, 21.208204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396723, 0.729720, -0.556883,
		0.790629, 0.036598, 0.611201,
		0.466387, -0.682765, -0.562419,
		21.353058, 15.585740, 21.039478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.807625, 16.270872, 21.311586>,  <21.026588, 16.063675, 21.433172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.807625, 16.270872, 21.311586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.684752, 16.045771, 21.004616>,  <21.611027, 15.910709, 20.820433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.684752, 16.045771, 21.004616>,  <21.807625, 16.270872, 21.311586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.684752, 16.045771, 21.004616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432779, 0.635595, -0.639314,
		0.847550, -0.528512, 0.048305,
		-0.307183, -0.562756, -0.767427,
		21.592596, 15.876944, 20.774387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.329981, 16.005791, 20.951572>,  <21.807625, 16.270872, 21.311586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.329981, 16.005791, 20.951572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.048542, 16.027637, 20.668173>,  <21.879679, 16.040745, 20.498133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.048542, 16.027637, 20.668173>,  <22.329981, 16.005791, 20.951572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.048542, 16.027637, 20.668173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632531, 0.502483, -0.589419,
		0.323817, -0.862861, -0.388090,
		-0.703595, 0.054615, -0.708499,
		21.837463, 16.044022, 20.455624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.676310, 15.717467, 20.354244>,  <22.329981, 16.005791, 20.951572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.676310, 15.717467, 20.354244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350698, 15.917753, 20.236504>,  <22.155333, 16.037924, 20.165859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350698, 15.917753, 20.236504>,  <22.676310, 15.717467, 20.354244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.350698, 15.917753, 20.236504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575105, 0.623894, -0.529160,
		-0.081314, -0.600034, -0.795831,
		-0.814029, 0.500715, -0.294351,
		22.106489, 16.067968, 20.148199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.746202, 15.734657, 19.645149>,  <22.676310, 15.717467, 20.354244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.746202, 15.734657, 19.645149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.466141, 16.015720, 19.695831>,  <22.298103, 16.184359, 19.726240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.466141, 16.015720, 19.695831>,  <22.746202, 15.734657, 19.645149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.466141, 16.015720, 19.695831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355337, 0.496843, -0.791759,
		-0.619288, -0.509332, -0.597548,
		-0.700156, 0.702658, 0.126705,
		22.256094, 16.226517, 19.733843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.331944, 15.775311, 19.085806>,  <22.746202, 15.734657, 19.645149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.331944, 15.775311, 19.085806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348511, 16.137770, 19.254179>,  <22.358450, 16.355244, 19.355204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348511, 16.137770, 19.254179>,  <22.331944, 15.775311, 19.085806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.348511, 16.137770, 19.254179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526219, 0.338348, -0.780137,
		-0.849340, 0.253814, -0.462818,
		0.041416, 0.906145, 0.420934,
		22.360935, 16.409613, 19.380459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507948, 16.185862, 18.537453>,  <22.331944, 15.775311, 19.085806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507948, 16.185862, 18.537453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.589964, 16.403744, 18.862724>,  <22.639174, 16.534473, 19.057886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.589964, 16.403744, 18.862724>,  <22.507948, 16.185862, 18.537453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.589964, 16.403744, 18.862724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765674, 0.428264, -0.479931,
		-0.609675, 0.721033, -0.329255,
		0.205038, 0.544703, 0.813178,
		22.651476, 16.567154, 19.106678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.502930, 16.839748, 18.387104>,  <22.507948, 16.185862, 18.537453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.502930, 16.839748, 18.387104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.753252, 16.800283, 18.696590>,  <22.903444, 16.776606, 18.882282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.753252, 16.800283, 18.696590>,  <22.502930, 16.839748, 18.387104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.753252, 16.800283, 18.696590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641262, 0.629776, -0.438366,
		-0.444018, 0.770486, 0.457383,
		0.625804, -0.098660, 0.773715,
		22.940992, 16.770685, 18.928705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.793634, 17.399805, 18.330647>,  <22.502930, 16.839748, 18.387104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.793634, 17.399805, 18.330647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.030571, 17.183779, 18.569799>,  <23.172733, 17.054163, 18.713291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.030571, 17.183779, 18.569799>,  <22.793634, 17.399805, 18.330647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.030571, 17.183779, 18.569799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725136, 0.680789, -0.103460,
		-0.351158, 0.494830, 0.794878,
		0.592339, -0.540064, 0.597884,
		23.208273, 17.021759, 18.749165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956118, 17.729645, 19.012583>,  <22.793634, 17.399805, 18.330647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956118, 17.729645, 19.012583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.244263, 17.491190, 18.870766>,  <23.417149, 17.348116, 18.785675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.244263, 17.491190, 18.870766>,  <22.956118, 17.729645, 19.012583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.244263, 17.491190, 18.870766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599392, 0.792256, -0.114276,
		0.349011, -0.130189, 0.928031,
		0.720361, -0.596138, -0.354540,
		23.460371, 17.312349, 18.764404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.620947, 17.924522, 19.380770>,  <22.956118, 17.729645, 19.012583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.620947, 17.924522, 19.380770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.700937, 17.739408, 19.035322>,  <23.748932, 17.628340, 18.828054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.700937, 17.739408, 19.035322>,  <23.620947, 17.924522, 19.380770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.700937, 17.739408, 19.035322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729158, 0.659054, -0.184327,
		0.654476, -0.592854, 0.469239,
		0.199975, -0.462787, -0.863619,
		23.760929, 17.600573, 18.776236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270962, 17.781105, 19.386759>,  <23.620947, 17.924522, 19.380770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270962, 17.781105, 19.386759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175768, 17.805969, 18.999048>,  <24.118650, 17.820889, 18.766422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175768, 17.805969, 18.999048>,  <24.270962, 17.781105, 19.386759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.175768, 17.805969, 18.999048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740202, 0.657742, -0.139559,
		0.628859, -0.750674, -0.202545,
		-0.237986, 0.062161, -0.969277,
		24.104372, 17.824617, 18.708265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875565, 17.627409, 18.888590>,  <24.270962, 17.781105, 19.386759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875565, 17.627409, 18.888590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611935, 17.844292, 18.680119>,  <24.453756, 17.974422, 18.555035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611935, 17.844292, 18.680119>,  <24.875565, 17.627409, 18.888590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.611935, 17.844292, 18.680119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748590, 0.539611, -0.385270,
		0.072338, -0.644072, -0.761537,
		-0.659075, 0.542209, -0.521180,
		24.414211, 18.006954, 18.523764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179987, 17.667450, 18.270111>,  <24.875565, 17.627409, 18.888590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179987, 17.667450, 18.270111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902452, 17.955322, 18.259899>,  <24.735931, 18.128046, 18.253773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902452, 17.955322, 18.259899>,  <25.179987, 17.667450, 18.270111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902452, 17.955322, 18.259899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642337, 0.602467, -0.473747,
		-0.325566, -0.345102, -0.880291,
		-0.693837, 0.719679, -0.025529,
		24.694302, 18.171227, 18.252241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124977, 17.884848, 17.601492>,  <25.179987, 17.667450, 18.270111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124977, 17.884848, 17.601492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992336, 18.189089, 17.824749>,  <24.912752, 18.371634, 17.958704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992336, 18.189089, 17.824749>,  <25.124977, 17.884848, 17.601492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992336, 18.189089, 17.824749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516938, 0.641386, -0.566921,
		-0.789186, 0.100532, -0.605870,
		-0.331603, 0.760603, 0.558142,
		24.892855, 18.417271, 17.992191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826532, 18.433567, 17.163452>,  <25.124977, 17.884848, 17.601492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826532, 18.433567, 17.163452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939184, 18.606594, 17.506048>,  <25.006775, 18.710409, 17.711605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939184, 18.606594, 17.506048>,  <24.826532, 18.433567, 17.163452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939184, 18.606594, 17.506048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359454, 0.780055, -0.512159,
		-0.889650, 0.452107, 0.064198,
		0.281629, 0.432566, 0.856488,
		25.023672, 18.736364, 17.762995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807058, 19.146969, 16.990658>,  <24.826532, 18.433567, 17.163452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807058, 19.146969, 16.990658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008307, 19.157059, 17.336197>,  <25.129055, 19.163113, 17.543520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008307, 19.157059, 17.336197>,  <24.807058, 19.146969, 16.990658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008307, 19.157059, 17.336197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382123, 0.890059, -0.248548,
		-0.775145, 0.455146, 0.438169,
		0.503123, 0.025226, 0.863847,
		25.159243, 19.164627, 17.595350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596563, 19.813454, 17.409513>,  <24.807058, 19.146969, 16.990658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596563, 19.813454, 17.409513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957748, 19.694466, 17.533562>,  <25.174459, 19.623074, 17.607990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957748, 19.694466, 17.533562>,  <24.596563, 19.813454, 17.409513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957748, 19.694466, 17.533562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365768, 0.910830, -0.191317,
		-0.225555, 0.286184, 0.931248,
		0.902961, -0.297468, 0.310119,
		25.228638, 19.605225, 17.626598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852161, 20.410500, 17.752951>,  <24.596563, 19.813454, 17.409513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852161, 20.410500, 17.752951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181473, 20.188471, 17.705441>,  <25.379059, 20.055254, 17.676933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181473, 20.188471, 17.705441>,  <24.852161, 20.410500, 17.752951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181473, 20.188471, 17.705441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523416, 0.823304, -0.219559,
		0.219661, 0.118588, 0.968342,
		0.823277, -0.555074, -0.118776,
		25.428455, 20.021948, 17.669807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484940, 20.714857, 18.106979>,  <24.852161, 20.410500, 17.752951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484940, 20.714857, 18.106979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667164, 20.460569, 17.857716>,  <25.776499, 20.307997, 17.708157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667164, 20.460569, 17.857716>,  <25.484940, 20.714857, 18.106979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667164, 20.460569, 17.857716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695579, 0.691059, -0.196486,
		0.555550, -0.343946, 0.757011,
		0.455559, -0.635719, -0.623160,
		25.803831, 20.269854, 17.670767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161518, 20.958202, 18.257488>,  <25.484940, 20.714857, 18.106979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161518, 20.958202, 18.257488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149431, 20.756804, 17.912102>,  <26.142179, 20.635963, 17.704870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149431, 20.756804, 17.912102>,  <26.161518, 20.958202, 18.257488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149431, 20.756804, 17.912102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766567, 0.542707, -0.343284,
		0.641453, -0.672280, 0.369565,
		-0.030217, -0.503497, -0.863469,
		26.140366, 20.605755, 17.653061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832331, 20.623205, 18.102398>,  <26.161518, 20.958202, 18.257488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832331, 20.623205, 18.102398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636688, 20.689327, 17.759832>,  <26.519302, 20.729000, 17.554293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636688, 20.689327, 17.759832>,  <26.832331, 20.623205, 18.102398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636688, 20.689327, 17.759832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779137, 0.524164, -0.343798,
		0.392069, -0.835419, -0.385170,
		-0.489108, 0.165307, -0.856415,
		26.489956, 20.738920, 17.502909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264666, 20.416956, 17.531693>,  <26.832331, 20.623205, 18.102398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264666, 20.416956, 17.531693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015221, 20.666258, 17.342943>,  <26.865555, 20.815840, 17.229694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015221, 20.666258, 17.342943>,  <27.264666, 20.416956, 17.531693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015221, 20.666258, 17.342943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739951, 0.275910, -0.613470,
		-0.252155, -0.731728, -0.633239,
		-0.623611, 0.623255, -0.471871,
		26.828136, 20.853235, 17.201382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589895, 20.491444, 16.760408>,  <27.264666, 20.416956, 17.531693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589895, 20.491444, 16.760408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300045, 20.766380, 16.740492>,  <27.126135, 20.931341, 16.728542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300045, 20.766380, 16.740492>,  <27.589895, 20.491444, 16.760408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300045, 20.766380, 16.740492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568339, 0.555182, -0.607260,
		-0.389751, -0.468335, -0.792942,
		-0.724628, 0.687339, -0.049790,
		27.082657, 20.972582, 16.725555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461033, 20.669920, 16.030483>,  <27.589895, 20.491444, 16.760408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461033, 20.669920, 16.030483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333763, 20.984999, 16.241501>,  <27.257402, 21.174046, 16.368111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333763, 20.984999, 16.241501>,  <27.461033, 20.669920, 16.030483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333763, 20.984999, 16.241501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490146, 0.612997, -0.619670,
		-0.811494, 0.061411, -0.581125,
		-0.318173, 0.787695, 0.527544,
		27.238312, 21.221308, 16.399763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258789, 21.165064, 15.486234>,  <27.461033, 20.669920, 16.030483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258789, 21.165064, 15.486234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321054, 21.358656, 15.830683>,  <27.358414, 21.474812, 16.037352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321054, 21.358656, 15.830683>,  <27.258789, 21.165064, 15.486234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321054, 21.358656, 15.830683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560779, 0.674357, -0.480384,
		-0.813201, 0.557677, -0.166435,
		0.155663, 0.483982, 0.861122,
		27.367754, 21.503851, 16.089020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276203, 21.847286, 15.289183>,  <27.258789, 21.165064, 15.486234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276203, 21.847286, 15.289183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476681, 21.869196, 15.634623>,  <27.596968, 21.882341, 15.841887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476681, 21.869196, 15.634623>,  <27.276203, 21.847286, 15.289183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476681, 21.869196, 15.634623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587670, 0.711007, -0.386151,
		-0.635176, 0.701049, 0.324164,
		0.501194, 0.054772, 0.863600,
		27.627039, 21.885628, 15.893703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473396, 22.515799, 15.412294>,  <27.276203, 21.847286, 15.289183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473396, 22.515799, 15.412294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721006, 22.310070, 15.649707>,  <27.869574, 22.186632, 15.792154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721006, 22.310070, 15.649707>,  <27.473396, 22.515799, 15.412294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721006, 22.310070, 15.649707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767616, 0.556005, -0.318786,
		-0.166047, 0.652940, 0.738984,
		0.619027, -0.514322, 0.593530,
		27.906713, 22.155773, 15.827766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788675, 23.037462, 15.770535>,  <27.473396, 22.515799, 15.412294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788675, 23.037462, 15.770535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034283, 22.724903, 15.815072>,  <28.181646, 22.537367, 15.841795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034283, 22.724903, 15.815072>,  <27.788675, 23.037462, 15.770535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034283, 22.724903, 15.815072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753739, 0.538635, -0.376496,
		0.234219, 0.315101, 0.919703,
		0.614019, -0.781398, 0.111345,
		28.218489, 22.490484, 15.848475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524477, 23.358849, 15.945507>,  <27.788675, 23.037462, 15.770535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524477, 23.358849, 15.945507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585306, 22.982624, 15.824038>,  <28.621803, 22.756889, 15.751156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585306, 22.982624, 15.824038>,  <28.524477, 23.358849, 15.945507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585306, 22.982624, 15.824038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733944, 0.313246, -0.602663,
		0.661966, -0.131229, 0.737957,
		0.152075, -0.940561, -0.303673,
		28.630928, 22.700455, 15.732936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296537, 23.211290, 15.861421>,  <28.524477, 23.358849, 15.945507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296537, 23.211290, 15.861421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123333, 22.936367, 15.628145>,  <29.019409, 22.771414, 15.488180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123333, 22.936367, 15.628145>,  <29.296537, 23.211290, 15.861421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123333, 22.936367, 15.628145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727213, 0.115911, -0.676554,
		0.532599, -0.717058, 0.449629,
		-0.433012, -0.687308, -0.583189,
		28.993429, 22.730175, 15.453189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922083, 22.693138, 15.590675>,  <29.296537, 23.211290, 15.861421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922083, 22.693138, 15.590675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593620, 22.671785, 15.363397>,  <29.396542, 22.658974, 15.227029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593620, 22.671785, 15.363397>,  <29.922083, 22.693138, 15.590675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593620, 22.671785, 15.363397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539635, 0.251376, -0.803495,
		0.185720, -0.966416, -0.177616,
		-0.821159, -0.053378, -0.568197,
		29.347273, 22.655771, 15.192937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067770, 22.249580, 15.041157>,  <29.922083, 22.693138, 15.590675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067770, 22.249580, 15.041157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764679, 22.485769, 14.930021>,  <29.582825, 22.627483, 14.863339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764679, 22.485769, 14.930021>,  <30.067770, 22.249580, 15.041157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764679, 22.485769, 14.930021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412150, 0.102924, -0.905284,
		-0.505948, -0.800468, -0.321351,
		-0.757726, 0.590472, -0.277839,
		29.537361, 22.662910, 14.846669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605143, 22.009016, 14.388001>,  <30.067770, 22.249580, 15.041157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605143, 22.009016, 14.388001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643389, 22.406979, 14.400784>,  <29.666336, 22.645756, 14.408455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643389, 22.406979, 14.400784>,  <29.605143, 22.009016, 14.388001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643389, 22.406979, 14.400784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277267, 0.004216, -0.960784,
		-0.956023, 0.100725, -0.275452,
		0.095613, 0.994905, 0.031958,
		29.672073, 22.705450, 14.410372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182747, 22.352106, 13.863092>,  <29.605143, 22.009016, 14.388001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182747, 22.352106, 13.863092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516243, 22.553404, 13.953978>,  <29.716341, 22.674183, 14.008509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516243, 22.553404, 13.953978>,  <29.182747, 22.352106, 13.863092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516243, 22.553404, 13.953978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330290, -0.124786, -0.935594,
		-0.442478, 0.855088, -0.270255,
		0.833739, 0.503243, 0.227212,
		29.766365, 22.704376, 14.022141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407974, 23.000401, 13.424371>,  <29.182747, 22.352106, 13.863092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407974, 23.000401, 13.424371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750090, 22.844797, 13.561281>,  <29.955359, 22.751434, 13.643428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750090, 22.844797, 13.561281>,  <29.407974, 23.000401, 13.424371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750090, 22.844797, 13.561281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323859, -0.114302, -0.939175,
		0.404471, 0.914115, 0.028223,
		0.855288, -0.389010, 0.342277,
		30.006676, 22.728094, 13.663964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685978, 23.057428, 12.781977>,  <29.407974, 23.000401, 13.424371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685978, 23.057428, 12.781977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993820, 22.952518, 13.014845>,  <30.178526, 22.889572, 13.154566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993820, 22.952518, 13.014845>,  <29.685978, 23.057428, 12.781977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993820, 22.952518, 13.014845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578027, -0.101199, -0.809718,
		0.271284, 0.959672, 0.073719,
		0.769603, -0.262275, 0.582171,
		30.224701, 22.873837, 13.189496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124474, 23.493090, 12.514871>,  <29.685978, 23.057428, 12.781977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124474, 23.493090, 12.514871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105753, 23.372400, 12.133972>,  <29.094521, 23.299986, 11.905433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105753, 23.372400, 12.133972>,  <29.124474, 23.493090, 12.514871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105753, 23.372400, 12.133972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212542, -0.928454, 0.304630,
		-0.976031, 0.216649, -0.020678,
		-0.046799, -0.301724, -0.952246,
		29.091713, 23.281883, 11.848298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618624, 22.929539, 12.409041>,  <29.124474, 23.493090, 12.514871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618624, 22.929539, 12.409041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810968, 22.922438, 12.058395>,  <28.926376, 22.918177, 11.848007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810968, 22.922438, 12.058395>,  <28.618624, 22.929539, 12.409041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810968, 22.922438, 12.058395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121378, -0.991517, -0.046502,
		-0.868354, 0.128763, -0.478938,
		0.480863, -0.017752, -0.876616,
		28.955227, 22.917112, 11.795410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085344, 22.706144, 11.835747>,  <28.618624, 22.929539, 12.409041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085344, 22.706144, 11.835747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466778, 22.590166, 11.868273>,  <28.695637, 22.520578, 11.887788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466778, 22.590166, 11.868273>,  <28.085344, 22.706144, 11.835747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466778, 22.590166, 11.868273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301028, -0.924926, 0.232150,
		0.007899, -0.245852, -0.969275,
		0.953582, -0.289945, 0.081314,
		28.752853, 22.503183, 11.892667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148247, 22.051046, 11.544960>,  <28.085344, 22.706144, 11.835747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148247, 22.051046, 11.544960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466131, 22.054516, 11.787730>,  <28.656862, 22.056597, 11.933393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466131, 22.054516, 11.787730>,  <28.148247, 22.051046, 11.544960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466131, 22.054516, 11.787730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260969, -0.897884, 0.354542,
		0.548024, -0.440147, -0.711294,
		0.794711, 0.008672, 0.606927,
		28.704544, 22.057117, 11.969809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514061, 21.383152, 11.617073>,  <28.148247, 22.051046, 11.544960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514061, 21.383152, 11.617073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601545, 21.564442, 11.962732>,  <28.654036, 21.673216, 12.170128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601545, 21.564442, 11.962732>,  <28.514061, 21.383152, 11.617073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601545, 21.564442, 11.962732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286040, -0.816906, 0.500844,
		0.932924, -0.356721, -0.049025,
		0.218711, 0.453226, 0.864148,
		28.667158, 21.700409, 12.221976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902346, 20.914312, 12.058956>,  <28.514061, 21.383152, 11.617073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902346, 20.914312, 12.058956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678122, 21.186083, 12.248335>,  <28.543587, 21.349144, 12.361962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678122, 21.186083, 12.248335>,  <28.902346, 20.914312, 12.058956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678122, 21.186083, 12.248335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521281, -0.733740, 0.435765,
		0.643457, -0.002526, 0.765478,
		-0.560562, 0.679425, 0.473447,
		28.509953, 21.389910, 12.390369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781319, 20.621857, 12.742112>,  <28.902346, 20.914312, 12.058956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781319, 20.621857, 12.742112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497480, 20.901260, 12.705097>,  <28.327177, 21.068903, 12.682888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497480, 20.901260, 12.705097>,  <28.781319, 20.621857, 12.742112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497480, 20.901260, 12.705097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601504, -0.532112, 0.595861,
		0.366972, 0.478481, 0.797739,
		-0.709594, 0.698507, -0.092538,
		28.284601, 21.110813, 12.677336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530201, 20.789524, 13.481396>,  <28.781319, 20.621857, 12.742112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530201, 20.789524, 13.481396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242403, 20.865543, 13.214200>,  <28.069725, 20.911154, 13.053883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242403, 20.865543, 13.214200>,  <28.530201, 20.789524, 13.481396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242403, 20.865543, 13.214200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658570, -0.492056, 0.569356,
		-0.220484, 0.849566, 0.479190,
		-0.719494, 0.190047, -0.667990,
		28.026554, 20.922558, 13.013803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034300, 21.139929, 13.822802>,  <28.530201, 20.789524, 13.481396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034300, 21.139929, 13.822802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849970, 20.985111, 13.503344>,  <27.739372, 20.892220, 13.311668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849970, 20.985111, 13.503344>,  <28.034300, 21.139929, 13.822802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849970, 20.985111, 13.503344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636562, -0.482900, 0.601329,
		-0.618408, 0.785495, -0.023845,
		-0.460827, -0.387046, -0.798645,
		27.711721, 20.868998, 13.263750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288239, 21.192905, 13.938382>,  <28.034300, 21.139929, 13.822802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288239, 21.192905, 13.938382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324539, 20.918011, 13.650085>,  <27.346319, 20.753073, 13.477108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324539, 20.918011, 13.650085>,  <27.288239, 21.192905, 13.938382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324539, 20.918011, 13.650085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756087, -0.518573, 0.399267,
		-0.648148, 0.508710, -0.566673,
		0.090750, -0.687238, -0.720741,
		27.351765, 20.711840, 13.433864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578810, 21.043001, 13.607394>,  <27.288239, 21.192905, 13.938382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578810, 21.043001, 13.607394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775953, 20.718742, 13.480938>,  <26.894239, 20.524187, 13.405064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775953, 20.718742, 13.480938>,  <26.578810, 21.043001, 13.607394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775953, 20.718742, 13.480938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775250, -0.574086, 0.263463,
		-0.395067, 0.115238, -0.911396,
		0.492859, -0.810645, -0.316141,
		26.923811, 20.475550, 13.386095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064623, 20.589422, 13.288387>,  <26.578810, 21.043001, 13.607394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064623, 20.589422, 13.288387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392847, 20.393951, 13.406961>,  <26.589783, 20.276669, 13.478106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392847, 20.393951, 13.406961>,  <26.064623, 20.589422, 13.288387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392847, 20.393951, 13.406961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571551, -0.699146, 0.429563,
		-0.002665, -0.521912, -0.852996,
		0.820562, -0.488675, 0.296436,
		26.639015, 20.247349, 13.495893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823851, 19.867470, 13.088064>,  <26.064623, 20.589422, 13.288387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823851, 19.867470, 13.088064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136061, 19.848919, 13.337424>,  <26.323387, 19.837790, 13.487041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136061, 19.848919, 13.337424>,  <25.823851, 19.867470, 13.088064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136061, 19.848919, 13.337424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383028, -0.823598, 0.418301,
		0.494032, -0.565275, -0.660603,
		0.780526, -0.046376, 0.623400,
		26.370218, 19.835007, 13.524445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024292, 19.080830, 13.112055>,  <25.823851, 19.867470, 13.088064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024292, 19.080830, 13.112055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122416, 19.280283, 13.444606>,  <26.181290, 19.399956, 13.644136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122416, 19.280283, 13.444606>,  <26.024292, 19.080830, 13.112055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122416, 19.280283, 13.444606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422646, -0.716784, 0.554609,
		0.872465, -0.487428, 0.034914,
		0.245307, 0.498633, 0.831378,
		26.196007, 19.429873, 13.694019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399109, 18.637159, 13.434865>,  <26.024292, 19.080830, 13.112055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399109, 18.637159, 13.434865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289114, 18.903666, 13.712131>,  <26.223118, 19.063568, 13.878489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289114, 18.903666, 13.712131>,  <26.399109, 18.637159, 13.434865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289114, 18.903666, 13.712131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255553, -0.745674, 0.615356,
		0.926863, -0.007925, 0.375317,
		-0.274987, 0.666264, 0.693163,
		26.206617, 19.103544, 13.920079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636017, 18.343996, 13.997812>,  <26.399109, 18.637159, 13.434865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636017, 18.343996, 13.997812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365576, 18.612461, 14.119417>,  <26.203310, 18.773540, 14.192380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365576, 18.612461, 14.119417>,  <26.636017, 18.343996, 13.997812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365576, 18.612461, 14.119417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464379, -0.708500, 0.531394,
		0.572044, 0.218101, 0.790694,
		-0.676105, 0.671162, 0.304012,
		26.162745, 18.813810, 14.210621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538307, 18.154263, 14.668904>,  <26.636017, 18.343996, 13.997812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538307, 18.154263, 14.668904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223240, 18.392500, 14.605854>,  <26.034199, 18.535442, 14.568024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223240, 18.392500, 14.605854>,  <26.538307, 18.154263, 14.668904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223240, 18.392500, 14.605854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568572, -0.604181, 0.558293,
		0.237280, 0.529373, 0.814532,
		-0.787670, 0.595592, -0.157626,
		25.986938, 18.571178, 14.558566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317226, 18.410210, 15.388136>,  <26.538307, 18.154263, 14.668904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317226, 18.410210, 15.388136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013464, 18.435131, 15.129085>,  <25.831207, 18.450085, 14.973654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013464, 18.435131, 15.129085>,  <26.317226, 18.410210, 15.388136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013464, 18.435131, 15.129085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627961, -0.330585, 0.704541,
		-0.170201, 0.941718, 0.290172,
		-0.759405, 0.062303, -0.647628,
		25.785643, 18.453821, 14.934796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754005, 18.570747, 15.784446>,  <26.317226, 18.410210, 15.388136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754005, 18.570747, 15.784446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587179, 18.450760, 15.441267>,  <25.487083, 18.378767, 15.235359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587179, 18.450760, 15.441267>,  <25.754005, 18.570747, 15.784446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587179, 18.450760, 15.441267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787476, -0.352059, 0.505901,
		-0.453803, 0.886608, -0.089387,
		-0.417067, -0.299969, -0.857947,
		25.462059, 18.360769, 15.183883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083847, 18.714111, 15.955298>,  <25.754005, 18.570747, 15.784446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083847, 18.714111, 15.955298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086971, 18.436815, 15.667033>,  <25.088846, 18.270437, 15.494074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086971, 18.436815, 15.667033>,  <25.083847, 18.714111, 15.955298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086971, 18.436815, 15.667033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861890, -0.370092, 0.346667,
		-0.507035, 0.618425, -0.600388,
		0.007811, -0.693241, -0.720664,
		25.089315, 18.228844, 15.450834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408104, 18.706024, 15.621894>,  <25.083847, 18.714111, 15.955298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408104, 18.706024, 15.621894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561684, 18.346647, 15.536675>,  <24.653831, 18.131021, 15.485544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561684, 18.346647, 15.536675>,  <24.408104, 18.706024, 15.621894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561684, 18.346647, 15.536675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826035, -0.437318, 0.355556,
		-0.412613, 0.039465, -0.910051,
		0.383950, -0.898441, -0.213043,
		24.676868, 18.077116, 15.472761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.751270, 18.274349, 15.512011>,  <24.408104, 18.706024, 15.621894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.751270, 18.274349, 15.512011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.049448, 18.011644, 15.557581>,  <24.228354, 17.854021, 15.584924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.049448, 18.011644, 15.557581>,  <23.751270, 18.274349, 15.512011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.049448, 18.011644, 15.557581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626014, -0.631082, 0.458085,
		-0.228954, -0.412797, -0.881577,
		0.745443, -0.656761, 0.113928,
		24.273081, 17.814615, 15.591759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.482738, 17.547373, 15.345510>,  <23.751270, 18.274349, 15.512011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.482738, 17.547373, 15.345510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.808777, 17.505398, 15.573407>,  <24.004400, 17.480213, 15.710145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.808777, 17.505398, 15.573407>,  <23.482738, 17.547373, 15.345510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.808777, 17.505398, 15.573407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398502, -0.815387, 0.419929,
		0.420494, -0.569326, -0.706436,
		0.815096, -0.104939, 0.569743,
		24.053305, 17.473917, 15.744330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.619938, 16.894911, 15.336920>,  <23.482738, 17.547373, 15.345510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.619938, 16.894911, 15.336920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.838560, 17.006823, 15.652641>,  <23.969734, 17.073969, 15.842074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.838560, 17.006823, 15.652641>,  <23.619938, 16.894911, 15.336920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.838560, 17.006823, 15.652641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295409, -0.817532, 0.494343,
		0.783588, -0.503353, -0.364178,
		0.546556, 0.279779, 0.789303,
		24.002527, 17.090757, 15.889432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.872192, 16.356308, 15.575000>,  <23.619938, 16.894911, 15.336920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.872192, 16.356308, 15.575000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.872599, 16.598202, 15.893571>,  <23.872843, 16.743338, 16.084713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.872599, 16.598202, 15.893571>,  <23.872192, 16.356308, 15.575000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.872599, 16.598202, 15.893571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397658, -0.730506, 0.555184,
		0.917533, -0.317269, 0.239736,
		0.001014, 0.604732, 0.796428,
		23.872904, 16.779621, 16.132500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.307814, 16.005669, 15.076664>,  <23.872192, 16.356308, 15.575000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.307814, 16.005669, 15.076664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511839, 15.664324, 15.033570>,  <24.634254, 15.459517, 15.007714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511839, 15.664324, 15.033570>,  <24.307814, 16.005669, 15.076664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511839, 15.664324, 15.033570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757146, 0.386025, 0.526987,
		-0.408124, -0.350367, 0.843017,
		0.510065, -0.853363, -0.107733,
		24.664858, 15.408315, 15.001250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.653332, 15.976379, 15.767355>,  <24.307814, 16.005669, 15.076664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.653332, 15.976379, 15.767355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807192, 15.845309, 15.422177>,  <24.899508, 15.766667, 15.215071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807192, 15.845309, 15.422177>,  <24.653332, 15.976379, 15.767355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807192, 15.845309, 15.422177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830333, 0.531213, 0.168402,
		0.403226, -0.781307, 0.476412,
		0.384650, -0.327676, -0.862944,
		24.922586, 15.747006, 15.163294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380878, 15.757458, 15.932353>,  <24.653332, 15.976379, 15.767355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380878, 15.757458, 15.932353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290125, 15.882775, 15.563491>,  <25.235672, 15.957966, 15.342174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290125, 15.882775, 15.563491>,  <25.380878, 15.757458, 15.932353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290125, 15.882775, 15.563491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790499, 0.612313, 0.013534,
		0.568888, -0.725892, -0.386584,
		-0.226886, 0.313293, -0.922155,
		25.222059, 15.976764, 15.286844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804192, 15.429596, 15.367415>,  <25.380878, 15.757458, 15.932353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804192, 15.429596, 15.367415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663269, 15.795718, 15.289342>,  <25.578714, 16.015390, 15.242497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663269, 15.795718, 15.289342>,  <25.804192, 15.429596, 15.367415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663269, 15.795718, 15.289342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920414, 0.376629, 0.104829,
		0.169463, -0.142718, -0.975148,
		-0.352308, 0.915305, -0.195185,
		25.557577, 16.070309, 15.230786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984877, 14.852661, 14.992716>,  <25.804192, 15.429596, 15.367415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984877, 14.852661, 14.992716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275620, 14.799440, 14.723206>,  <26.450066, 14.767509, 14.561500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275620, 14.799440, 14.723206>,  <25.984877, 14.852661, 14.992716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275620, 14.799440, 14.723206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360429, 0.908996, 0.209326,
		0.584608, -0.394999, 0.708667,
		0.726859, -0.133051, -0.673775,
		26.493677, 14.759525, 14.521073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589624, 15.045488, 15.326206>,  <25.984877, 14.852661, 14.992716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589624, 15.045488, 15.326206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583185, 15.099069, 14.929863>,  <26.579321, 15.131217, 14.692058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583185, 15.099069, 14.929863>,  <26.589624, 15.045488, 15.326206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583185, 15.099069, 14.929863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431476, 0.894896, 0.113968,
		0.901981, -0.425697, -0.072204,
		-0.016099, 0.133951, -0.990857,
		26.578356, 15.139255, 14.632606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.835782, 15.049540, 26.066645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.588696, 14.753493, 25.960320>,  <15.440443, 14.575866, 25.896524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.588696, 14.753493, 25.960320>,  <15.835782, 15.049540, 26.066645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588696, 14.753493, 25.960320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221993, 0.160152, -0.961806,
		0.754417, -0.653132, 0.065371,
		-0.617717, -0.740115, -0.265812,
		15.403380, 14.531459, 25.880575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137821, 14.841724, 25.483889>,  <15.835782, 15.049540, 26.066645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.137821, 14.841724, 25.483889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.776857, 14.675912, 25.436871>,  <15.560279, 14.576425, 25.408659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.776857, 14.675912, 25.436871>,  <16.137821, 14.841724, 25.483889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776857, 14.675912, 25.436871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103361, 0.056575, -0.993034,
		0.418294, -0.908274, -0.008208,
		-0.902411, -0.414532, -0.117545,
		15.506134, 14.551553, 25.401608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.238249, 14.229378, 25.029501>,  <16.137821, 14.841724, 25.483889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.238249, 14.229378, 25.029501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.860189, 14.357944, 25.006205>,  <15.633354, 14.435082, 24.992226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.860189, 14.357944, 25.006205>,  <16.238249, 14.229378, 25.029501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.860189, 14.357944, 25.006205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147909, 0.262135, -0.953629,
		-0.291242, -0.909933, -0.295296,
		-0.945146, 0.321414, -0.058243,
		15.576646, 14.454368, 24.988731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965530, 13.864083, 24.380629>,  <16.238249, 14.229378, 25.029501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965530, 13.864083, 24.380629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.714831, 14.155507, 24.491182>,  <15.564412, 14.330361, 24.557514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.714831, 14.155507, 24.491182>,  <15.965530, 13.864083, 24.380629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714831, 14.155507, 24.491182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093349, 0.281938, -0.954880,
		-0.773611, -0.624269, -0.108693,
		-0.626747, 0.728560, 0.276386,
		15.526807, 14.374075, 24.574099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388659, 13.847938, 23.974030>,  <15.965530, 13.864083, 24.380629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.388659, 13.847938, 23.974030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.371431, 14.226241, 24.102829>,  <15.361094, 14.453223, 24.180109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.371431, 14.226241, 24.102829>,  <15.388659, 13.847938, 23.974030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371431, 14.226241, 24.102829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164392, 0.311196, -0.936019,
		-0.985454, -0.093248, 0.142073,
		-0.043070, 0.945760, 0.321999,
		15.358510, 14.509969, 24.199429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.002013, 14.053744, 23.499615>,  <15.388659, 13.847938, 23.974030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.002013, 14.053744, 23.499615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.113677, 14.389571, 23.686031>,  <15.180676, 14.591067, 23.797882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.113677, 14.389571, 23.686031>,  <15.002013, 14.053744, 23.499615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.113677, 14.389571, 23.686031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075911, 0.464523, -0.882301,
		-0.957239, 0.281681, 0.065944,
		0.279160, 0.839568, 0.466043,
		15.197425, 14.641441, 23.825844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.520522, 14.660152, 23.316189>,  <15.002013, 14.053744, 23.499615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.520522, 14.660152, 23.316189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.879946, 14.801946, 23.419676>,  <15.095600, 14.887021, 23.481768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.879946, 14.801946, 23.419676>,  <14.520522, 14.660152, 23.316189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.879946, 14.801946, 23.419676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055332, 0.493314, -0.868089,
		-0.435351, 0.794345, 0.423658,
		0.898559, 0.354482, 0.258717,
		15.149513, 14.908290, 23.497292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.422368, 15.398404, 23.335493>,  <14.520522, 14.660152, 23.316189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.422368, 15.398404, 23.335493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.806423, 15.304818, 23.274309>,  <15.036856, 15.248667, 23.237598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.806423, 15.304818, 23.274309>,  <14.422368, 15.398404, 23.335493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.806423, 15.304818, 23.274309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014236, 0.587427, -0.809152,
		0.279168, 0.774719, 0.567341,
		0.960137, -0.233966, -0.152962,
		15.094464, 15.234629, 23.228420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.817869, 16.067778, 23.241617>,  <14.422368, 15.398404, 23.335493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.817869, 16.067778, 23.241617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.061137, 15.784758, 23.097670>,  <15.207098, 15.614946, 23.011301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.061137, 15.784758, 23.097670>,  <14.817869, 16.067778, 23.241617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061137, 15.784758, 23.097670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246871, 0.599449, -0.761391,
		0.754443, 0.374214, 0.539240,
		0.608170, -0.707549, -0.359867,
		15.243588, 15.572493, 22.989710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441858, 16.346590, 23.051916>,  <14.817869, 16.067778, 23.241617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441858, 16.346590, 23.051916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.468668, 16.003515, 22.848001>,  <15.484754, 15.797670, 22.725653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.468668, 16.003515, 22.848001>,  <15.441858, 16.346590, 23.051916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468668, 16.003515, 22.848001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322516, 0.502132, -0.802401,
		0.944188, -0.110634, 0.310272,
		0.067025, -0.857685, -0.509788,
		15.488775, 15.746210, 22.695065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.082647, 16.369755, 22.919418>,  <15.441858, 16.346590, 23.051916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.082647, 16.369755, 22.919418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.885552, 16.140976, 22.657093>,  <15.767296, 16.003710, 22.499699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.885552, 16.140976, 22.657093>,  <16.082647, 16.369755, 22.919418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885552, 16.140976, 22.657093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501047, 0.429703, -0.751204,
		0.711452, -0.698738, 0.074842,
		-0.492735, -0.571945, -0.655813,
		15.737732, 15.969393, 22.460348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544094, 16.127438, 22.438770>,  <16.082647, 16.369755, 22.919418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.544094, 16.127438, 22.438770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.193399, 16.079613, 22.252420>,  <15.982983, 16.050917, 22.140610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.193399, 16.079613, 22.252420>,  <16.544094, 16.127438, 22.438770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193399, 16.079613, 22.252420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309919, 0.600283, -0.737299,
		0.367812, -0.790800, -0.489234,
		-0.876735, -0.119564, -0.465875,
		15.930379, 16.043743, 22.112658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723654, 15.902390, 21.698868>,  <16.544094, 16.127438, 22.438770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723654, 15.902390, 21.698868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.347075, 16.035015, 21.674404>,  <16.121126, 16.114590, 21.659725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.347075, 16.035015, 21.674404>,  <16.723654, 15.902390, 21.698868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.347075, 16.035015, 21.674404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178200, 0.335348, -0.925087,
		-0.286213, -0.881821, -0.374797,
		-0.941449, 0.331561, -0.061160,
		16.064640, 16.134483, 21.656055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435976, 15.705806, 20.989634>,  <16.723654, 15.902390, 21.698868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.435976, 15.705806, 20.989634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.186192, 15.992644, 21.113455>,  <16.036322, 16.164747, 21.187748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.186192, 15.992644, 21.113455>,  <16.435976, 15.705806, 20.989634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186192, 15.992644, 21.113455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181412, 0.518651, -0.835518,
		-0.759696, -0.465592, -0.453967,
		-0.624461, 0.717095, 0.309553,
		15.998854, 16.207773, 21.206322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110422, 15.894885, 20.390142>,  <16.435976, 15.705806, 20.989634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110422, 15.894885, 20.390142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.071281, 16.190044, 20.657255>,  <16.047796, 16.367140, 20.817522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.071281, 16.190044, 20.657255>,  <16.110422, 15.894885, 20.390142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.071281, 16.190044, 20.657255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238000, 0.668880, -0.704241,
		-0.966324, 0.090020, -0.241071,
		-0.097851, 0.737899, 0.667780,
		16.041925, 16.411415, 20.857590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825708, 16.434620, 20.028986>,  <16.110422, 15.894885, 20.390142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825708, 16.434620, 20.028986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.002478, 16.615887, 20.338655>,  <16.108540, 16.724648, 20.524458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.002478, 16.615887, 20.338655>,  <15.825708, 16.434620, 20.028986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.002478, 16.615887, 20.338655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535244, 0.559356, -0.632957,
		-0.719874, 0.694090, 0.004637,
		0.441923, 0.453167, 0.774173,
		16.135054, 16.751837, 20.570908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891047, 17.091393, 19.788734>,  <15.825708, 16.434620, 20.028986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891047, 17.091393, 19.788734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.158045, 17.080988, 20.086397>,  <16.318243, 17.074745, 20.264996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.158045, 17.080988, 20.086397>,  <15.891047, 17.091393, 19.788734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158045, 17.080988, 20.086397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631797, 0.548674, -0.547530,
		-0.394058, 0.835632, 0.382672,
		0.667496, -0.026012, 0.744159,
		16.358294, 17.073185, 20.309645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023668, 17.753954, 20.021593>,  <15.891047, 17.091393, 19.788734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023668, 17.753954, 20.021593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.352869, 17.545082, 20.111029>,  <16.550390, 17.419758, 20.164690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.352869, 17.545082, 20.111029>,  <16.023668, 17.753954, 20.021593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352869, 17.545082, 20.111029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556086, 0.660340, -0.504698,
		0.115900, 0.539702, 0.833840,
		0.823004, -0.522181, 0.223587,
		16.599770, 17.388428, 20.178104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423740, 18.257631, 20.241449>,  <16.023668, 17.753954, 20.021593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423740, 18.257631, 20.241449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.672173, 17.952826, 20.168131>,  <16.821232, 17.769941, 20.124140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.672173, 17.952826, 20.168131>,  <16.423740, 18.257631, 20.241449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.672173, 17.952826, 20.168131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670837, 0.637790, -0.378419,
		0.405264, 0.112068, 0.907305,
		0.621078, -0.762014, -0.183294,
		16.858496, 17.724222, 20.113142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110693, 18.416714, 20.480951>,  <16.423740, 18.257631, 20.241449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.110693, 18.416714, 20.480951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.184320, 18.135984, 20.205688>,  <17.228497, 17.967546, 20.040531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.184320, 18.135984, 20.205688>,  <17.110693, 18.416714, 20.480951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184320, 18.135984, 20.205688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632058, 0.620686, -0.463952,
		0.752743, -0.349558, 0.557842,
		0.184067, -0.701825, -0.688157,
		17.239540, 17.925436, 19.999241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.740877, 18.467421, 20.289934>,  <17.110693, 18.416714, 20.480951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.740877, 18.467421, 20.289934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.611479, 18.283369, 19.959206>,  <17.533840, 18.172937, 19.760769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.611479, 18.283369, 19.959206>,  <17.740877, 18.467421, 20.289934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.611479, 18.283369, 19.959206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581088, 0.593022, -0.557371,
		0.746786, -0.660761, 0.075537,
		-0.323494, -0.460130, -0.826820,
		17.514431, 18.145330, 19.711159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221712, 18.560724, 19.736773>,  <17.740877, 18.467421, 20.289934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221712, 18.560724, 19.736773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.923019, 18.461872, 19.489769>,  <17.743803, 18.402561, 19.341566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.923019, 18.461872, 19.489769>,  <18.221712, 18.560724, 19.736773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.923019, 18.461872, 19.489769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385197, 0.596191, -0.704400,
		0.542230, -0.763862, -0.350002,
		-0.746733, -0.247127, -0.617510,
		17.698999, 18.387733, 19.304516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.748512, 18.073782, 19.564453>,  <18.221712, 18.560724, 19.736773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.748512, 18.073782, 19.564453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.084560, 18.138851, 19.771427>,  <19.286188, 18.177893, 19.895611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.084560, 18.138851, 19.771427>,  <18.748512, 18.073782, 19.564453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.084560, 18.138851, 19.771427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509039, -0.092954, 0.855709,
		0.187297, -0.982292, 0.004713,
		0.840118, 0.162671, 0.517435,
		19.336596, 18.187653, 19.926659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761007, 17.577276, 19.959160>,  <18.748512, 18.073782, 19.564453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761007, 17.577276, 19.959160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.993977, 17.848368, 20.138700>,  <19.133759, 18.011023, 20.246426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.993977, 17.848368, 20.138700>,  <18.761007, 17.577276, 19.959160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.993977, 17.848368, 20.138700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518181, -0.115899, 0.847382,
		0.626316, -0.726121, 0.283684,
		0.582423, 0.677728, 0.448851,
		19.168703, 18.051685, 20.273355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988850, 17.320431, 20.617153>,  <18.761007, 17.577276, 19.959160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988850, 17.320431, 20.617153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.057035, 17.711397, 20.667116>,  <19.097946, 17.945976, 20.697094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.057035, 17.711397, 20.667116>,  <18.988850, 17.320431, 20.617153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057035, 17.711397, 20.667116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337840, -0.061107, 0.939218,
		0.925638, -0.202300, 0.319794,
		0.170462, 0.977415, 0.124908,
		19.108173, 18.004622, 20.704588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293402, 17.420286, 21.299683>,  <18.988850, 17.320431, 20.617153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293402, 17.420286, 21.299683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.163698, 17.792025, 21.229055>,  <19.085876, 18.015068, 21.186680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.163698, 17.792025, 21.229055>,  <19.293402, 17.420286, 21.299683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.163698, 17.792025, 21.229055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272860, 0.086832, 0.958127,
		0.905762, 0.358858, 0.225425,
		-0.324257, 0.929345, -0.176567,
		19.066422, 18.070827, 21.176085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.630663, 17.904528, 21.829878>,  <19.293402, 17.420286, 21.299683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.630663, 17.904528, 21.829878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.306406, 18.078178, 21.672709>,  <19.111853, 18.182369, 21.578407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.306406, 18.078178, 21.672709>,  <19.630663, 17.904528, 21.829878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.306406, 18.078178, 21.672709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353071, 0.172925, 0.919477,
		0.467118, 0.884098, 0.013098,
		-0.810643, 0.434129, -0.392925,
		19.063213, 18.208418, 21.554831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703550, 18.602949, 22.213577>,  <19.630663, 17.904528, 21.829878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.703550, 18.602949, 22.213577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.318659, 18.564150, 22.111828>,  <19.087723, 18.540871, 22.050779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.318659, 18.564150, 22.111828>,  <19.703550, 18.602949, 22.213577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318659, 18.564150, 22.111828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266276, 0.140842, 0.953552,
		-0.056667, 0.985269, -0.161351,
		-0.962230, -0.096999, -0.254372,
		19.029989, 18.535049, 22.035517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.365091, 18.822676, 22.807394>,  <19.703550, 18.602949, 22.213577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.365091, 18.822676, 22.807394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.037029, 18.683979, 22.625353>,  <18.840193, 18.600761, 22.516129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.037029, 18.683979, 22.625353>,  <19.365091, 18.822676, 22.807394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.037029, 18.683979, 22.625353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446297, -0.110004, 0.888098,
		-0.358005, 0.931487, -0.064530,
		-0.820153, -0.346743, -0.455102,
		18.790983, 18.579956, 22.488823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824736, 19.098602, 23.251041>,  <19.365091, 18.822676, 22.807394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824736, 19.098602, 23.251041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.691864, 18.792913, 23.029911>,  <18.612141, 18.609499, 22.897232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.691864, 18.792913, 23.029911>,  <18.824736, 19.098602, 23.251041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691864, 18.792913, 23.029911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549358, -0.319680, 0.772017,
		-0.766722, 0.560149, -0.313641,
		-0.332180, -0.764223, -0.552828,
		18.592211, 18.563646, 22.864063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138857, 19.035734, 23.454403>,  <18.824736, 19.098602, 23.251041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.138857, 19.035734, 23.454403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.191462, 18.674858, 23.290083>,  <18.223024, 18.458332, 23.191492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.191462, 18.674858, 23.290083>,  <18.138857, 19.035734, 23.454403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.191462, 18.674858, 23.290083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431906, -0.425145, 0.795431,
		-0.892279, 0.072817, -0.445573,
		0.131512, -0.902192, -0.410798,
		18.230915, 18.404202, 23.166843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.429056, 18.595951, 23.400810>,  <18.138857, 19.035734, 23.454403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.429056, 18.595951, 23.400810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.755938, 18.366211, 23.420012>,  <17.952066, 18.228367, 23.431532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.755938, 18.366211, 23.420012>,  <17.429056, 18.595951, 23.400810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755938, 18.366211, 23.420012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440785, -0.569155, 0.694097,
		-0.371333, -0.588376, -0.718279,
		0.817203, -0.574348, 0.048001,
		18.001099, 18.193907, 23.434412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.152782, 17.852768, 23.496317>,  <17.429056, 18.595951, 23.400810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.152782, 17.852768, 23.496317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.541889, 17.822184, 23.583838>,  <17.775354, 17.803833, 23.636351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.541889, 17.822184, 23.583838>,  <17.152782, 17.852768, 23.496317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541889, 17.822184, 23.583838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211680, -0.677576, 0.704331,
		0.094403, -0.731468, -0.675310,
		0.972769, -0.076459, 0.218803,
		17.833719, 17.799246, 23.649479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.365290, 17.107307, 23.601715>,  <17.152782, 17.852768, 23.496317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.365290, 17.107307, 23.601715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.624727, 17.329538, 23.809816>,  <17.780390, 17.462877, 23.934677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.624727, 17.329538, 23.809816>,  <17.365290, 17.107307, 23.601715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.624727, 17.329538, 23.809816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121387, -0.599270, 0.791291,
		0.751394, -0.576378, -0.321242,
		0.648593, 0.555576, 0.520252,
		17.819305, 17.496212, 23.965893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.883377, 16.719906, 23.815342>,  <17.365290, 17.107307, 23.601715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.883377, 16.719906, 23.815342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.944754, 17.026541, 24.064756>,  <17.981581, 17.210522, 24.214405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.944754, 17.026541, 24.064756>,  <17.883377, 16.719906, 23.815342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944754, 17.026541, 24.064756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188775, -0.596648, 0.779984,
		0.969958, -0.237391, 0.053162,
		0.153442, 0.766588, 0.623537,
		17.990786, 17.256517, 24.251818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266140, 16.444084, 24.301796>,  <17.883377, 16.719906, 23.815342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266140, 16.444084, 24.301796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.139120, 16.775311, 24.486609>,  <18.062908, 16.974047, 24.597496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.139120, 16.775311, 24.486609>,  <18.266140, 16.444084, 24.301796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.139120, 16.775311, 24.486609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266652, -0.545567, 0.794515,
		0.909977, 0.129096, 0.394050,
		-0.317549, 0.828064, 0.462029,
		18.043856, 17.023729, 24.625217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.588148, 16.476423, 24.854477>,  <18.266140, 16.444084, 24.301796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.588148, 16.476423, 24.854477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.280312, 16.713139, 24.950411>,  <18.095610, 16.855167, 25.007971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.280312, 16.713139, 24.950411>,  <18.588148, 16.476423, 24.854477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.280312, 16.713139, 24.950411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120325, -0.503270, 0.855711,
		0.627100, 0.629688, 0.458518,
		-0.769589, 0.591788, 0.239833,
		18.049435, 16.890675, 25.022360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760944, 16.826883, 25.568060>,  <18.588148, 16.476423, 24.854477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760944, 16.826883, 25.568060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.374870, 16.797440, 25.467659>,  <18.143227, 16.779774, 25.407419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.374870, 16.797440, 25.467659>,  <18.760944, 16.826883, 25.568060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.374870, 16.797440, 25.467659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181702, -0.501596, 0.845805,
		-0.188161, 0.861965, 0.470757,
		-0.965184, -0.073610, -0.251001,
		18.085316, 16.775356, 25.392359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.448362, 16.846066, 26.283457>,  <18.760944, 16.826883, 25.568060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.448362, 16.846066, 26.283457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.189293, 16.713598, 26.008984>,  <18.033852, 16.634117, 25.844299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.189293, 16.713598, 26.008984>,  <18.448362, 16.846066, 26.283457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189293, 16.713598, 26.008984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425802, -0.589510, 0.686419,
		-0.631832, 0.736753, 0.240797,
		-0.647673, -0.331170, -0.686182,
		17.994991, 16.614246, 25.803129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.860559, 16.932758, 26.602989>,  <18.448362, 16.846066, 26.283457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.860559, 16.932758, 26.602989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.790724, 16.659990, 26.318874>,  <17.748823, 16.496330, 26.148405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.790724, 16.659990, 26.318874>,  <17.860559, 16.932758, 26.602989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.790724, 16.659990, 26.318874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371735, -0.622334, 0.688850,
		-0.911774, 0.384303, -0.144841,
		-0.174587, -0.681918, -0.710287,
		17.738348, 16.455416, 26.105789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.043251, 16.637152, 26.765987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.267527, 16.378033, 26.559692>,  <17.402092, 16.222561, 26.435915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.267527, 16.378033, 26.559692>,  <17.043251, 16.637152, 26.765987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267527, 16.378033, 26.559692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380735, -0.754799, 0.534153,
		-0.735298, -0.103139, -0.669851,
		0.560695, -0.647797, -0.515733,
		17.435734, 16.183693, 26.404972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.609493, 16.173424, 26.570417>,  <17.043251, 16.637152, 26.765987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.609493, 16.173424, 26.570417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.973623, 16.008680, 26.554028>,  <17.192101, 15.909834, 26.544193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.973623, 16.008680, 26.554028>,  <16.609493, 16.173424, 26.570417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.973623, 16.008680, 26.554028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325007, -0.772611, 0.545384,
		-0.256279, -0.483160, -0.837184,
		0.910325, -0.411861, -0.040973,
		17.246721, 15.885122, 26.541735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.486364, 15.493113, 26.495834>,  <16.609493, 16.173424, 26.570417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.486364, 15.493113, 26.495834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.868330, 15.460485, 26.610018>,  <17.097509, 15.440907, 26.678528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.868330, 15.460485, 26.610018>,  <16.486364, 15.493113, 26.495834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.868330, 15.460485, 26.610018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191099, -0.904723, 0.380733,
		0.227206, -0.418118, -0.879520,
		0.954913, -0.081571, 0.285461,
		17.154804, 15.436013, 26.695656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645609, 14.685679, 26.510202>,  <16.486364, 15.493113, 26.495834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.645609, 14.685679, 26.510202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.969301, 14.835788, 26.691010>,  <17.163517, 14.925853, 26.799494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.969301, 14.835788, 26.691010>,  <16.645609, 14.685679, 26.510202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.969301, 14.835788, 26.691010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041501, -0.730962, 0.681155,
		0.586025, -0.569970, -0.575942,
		0.809229, 0.375272, 0.452016,
		17.212070, 14.948369, 26.826614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140589, 14.127574, 26.638680>,  <16.645609, 14.685679, 26.510202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140589, 14.127574, 26.638680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.177683, 14.424577, 26.904036>,  <17.199940, 14.602778, 27.063250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.177683, 14.424577, 26.904036>,  <17.140589, 14.127574, 26.638680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177683, 14.424577, 26.904036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131298, -0.651323, 0.747355,
		0.986996, -0.156409, 0.037088,
		0.092737, 0.742506, 0.663389,
		17.205503, 14.647328, 27.103052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.575745, 13.912642, 27.112675>,  <17.140589, 14.127574, 26.638680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.575745, 13.912642, 27.112675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.415768, 14.212645, 27.323402>,  <17.319782, 14.392646, 27.449839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.415768, 14.212645, 27.323402>,  <17.575745, 13.912642, 27.112675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415768, 14.212645, 27.323402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008139, -0.571864, 0.820308,
		0.916505, 0.332362, 0.222608,
		-0.399941, 0.750004, 0.526821,
		17.295786, 14.437646, 27.481449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867512, 13.814280, 27.708721>,  <17.575745, 13.912642, 27.112675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867512, 13.814280, 27.708721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.567875, 14.059144, 27.810007>,  <17.388092, 14.206062, 27.870779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.567875, 14.059144, 27.810007>,  <17.867512, 13.814280, 27.708721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.567875, 14.059144, 27.810007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071310, -0.454522, 0.887877,
		0.658615, 0.647046, 0.384132,
		-0.749093, 0.612162, 0.253215,
		17.343147, 14.242792, 27.885971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.933329, 14.023929, 28.419605>,  <17.867512, 13.814280, 27.708721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.933329, 14.023929, 28.419605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.545311, 14.052979, 28.326880>,  <17.312500, 14.070410, 28.271244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.545311, 14.052979, 28.326880>,  <17.933329, 14.023929, 28.419605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.545311, 14.052979, 28.326880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241990, -0.372543, 0.895909,
		-0.021292, 0.925169, 0.378959,
		-0.970045, 0.072628, -0.231814,
		17.254297, 14.074768, 28.257336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672001, 14.401195, 28.962029>,  <17.933329, 14.023929, 28.419605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.672001, 14.401195, 28.962029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.361221, 14.217806, 28.789446>,  <17.174753, 14.107773, 28.685896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.361221, 14.217806, 28.789446>,  <17.672001, 14.401195, 28.962029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361221, 14.217806, 28.789446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317635, -0.306239, 0.897399,
		-0.543562, 0.834279, 0.092304,
		-0.776948, -0.458473, -0.431456,
		17.128138, 14.080264, 28.660009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034985, 14.749947, 29.252550>,  <17.672001, 14.401195, 28.962029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.034985, 14.749947, 29.252550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.936428, 14.385934, 29.119204>,  <16.877295, 14.167526, 29.039196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.936428, 14.385934, 29.119204>,  <17.034985, 14.749947, 29.252550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936428, 14.385934, 29.119204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383201, -0.224468, 0.895975,
		-0.890196, 0.348506, -0.293418,
		-0.246389, -0.910032, -0.333368,
		16.862511, 14.112925, 29.019194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509235, 14.627983, 29.730844>,  <17.034985, 14.749947, 29.252550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509235, 14.627983, 29.730844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.558582, 14.275504, 29.548298>,  <16.588190, 14.064016, 29.438770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.558582, 14.275504, 29.548298>,  <16.509235, 14.627983, 29.730844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.558582, 14.275504, 29.548298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301498, -0.471424, 0.828769,
		-0.945452, 0.035353, -0.323837,
		0.123365, -0.881198, -0.456368,
		16.595592, 14.011145, 29.411388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836706, 14.116015, 29.773409>,  <16.509235, 14.627983, 29.730844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836706, 14.116015, 29.773409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.169472, 13.901423, 29.716688>,  <16.369131, 13.772668, 29.682655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.169472, 13.901423, 29.716688>,  <15.836706, 14.116015, 29.773409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169472, 13.901423, 29.716688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236703, -0.574214, 0.783741,
		-0.501887, -0.618440, -0.604683,
		0.831914, -0.536479, -0.141804,
		16.419046, 13.740479, 29.674147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579052, 13.469427, 29.832846>,  <15.836706, 14.116015, 29.773409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.579052, 13.469427, 29.832846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.971086, 13.428414, 29.900873>,  <16.206306, 13.403807, 29.941689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.971086, 13.428414, 29.900873>,  <15.579052, 13.469427, 29.832846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.971086, 13.428414, 29.900873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196545, -0.623283, 0.756894,
		0.028394, -0.775246, -0.631021,
		0.980084, -0.102533, 0.170068,
		16.265110, 13.397655, 29.951893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762560, 12.704993, 29.978626>,  <15.579052, 13.469427, 29.832846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762560, 12.704993, 29.978626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.093048, 12.885613, 30.113361>,  <16.291342, 12.993985, 30.194202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.093048, 12.885613, 30.113361>,  <15.762560, 12.704993, 29.978626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093048, 12.885613, 30.113361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010014, -0.609605, 0.792642,
		0.563258, -0.651524, -0.508190,
		0.826221, 0.451551, 0.336840,
		16.340914, 13.021079, 30.214413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.258312, 12.189885, 30.101601>,  <15.762560, 12.704993, 29.978626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.258312, 12.189885, 30.101601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.354630, 12.500445, 30.334572>,  <16.412420, 12.686781, 30.474354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.354630, 12.500445, 30.334572>,  <16.258312, 12.189885, 30.101601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.354630, 12.500445, 30.334572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058590, -0.610617, 0.789755,
		0.968806, -0.156044, -0.192522,
		0.240794, 0.776400, 0.582427,
		16.426868, 12.733365, 30.509300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688728, 11.872568, 30.524721>,  <16.258312, 12.189885, 30.101601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688728, 11.872568, 30.524721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.570168, 12.199874, 30.721735>,  <16.499031, 12.396257, 30.839943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.570168, 12.199874, 30.721735>,  <16.688728, 11.872568, 30.524721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.570168, 12.199874, 30.721735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119221, -0.543373, 0.830982,
		0.947593, 0.187584, 0.258611,
		-0.296401, 0.818265, 0.492533,
		16.481247, 12.445354, 30.869495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962015, 11.714136, 31.206036>,  <16.688728, 11.872568, 30.524721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962015, 11.714136, 31.206036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.698120, 12.011406, 31.250652>,  <16.539783, 12.189768, 31.277422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.698120, 12.011406, 31.250652>,  <16.962015, 11.714136, 31.206036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698120, 12.011406, 31.250652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269036, -0.372156, 0.888324,
		0.701689, 0.556052, 0.445465,
		-0.659737, 0.743173, 0.111540,
		16.500198, 12.234358, 31.284115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076136, 11.849508, 31.952663>,  <16.962015, 11.714136, 31.206036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076136, 11.849508, 31.952663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.727451, 12.017532, 31.851732>,  <16.518240, 12.118347, 31.791174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.727451, 12.017532, 31.851732>,  <17.076136, 11.849508, 31.952663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727451, 12.017532, 31.851732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401963, -0.318459, 0.858493,
		0.280263, 0.849784, 0.446453,
		-0.871710, 0.420061, -0.252329,
		16.465939, 12.143551, 31.776033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818453, 12.191168, 32.472881>,  <17.076136, 11.849508, 31.952663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.818453, 12.191168, 32.472881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.487938, 12.114765, 32.260933>,  <16.289629, 12.068924, 32.133762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.487938, 12.114765, 32.260933>,  <16.818453, 12.191168, 32.472881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487938, 12.114765, 32.260933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476547, -0.264401, 0.838448,
		-0.300248, 0.945308, 0.127448,
		-0.826289, -0.191007, -0.529870,
		16.240051, 12.057463, 32.101971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285627, 12.482526, 32.859676>,  <16.818453, 12.191168, 32.472881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.285627, 12.482526, 32.859676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.126635, 12.203109, 32.621670>,  <16.031239, 12.035459, 32.478867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.126635, 12.203109, 32.621670>,  <16.285627, 12.482526, 32.859676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.126635, 12.203109, 32.621670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513336, -0.368206, 0.775184,
		-0.760588, 0.613566, -0.212232,
		-0.397481, -0.698542, -0.595018,
		16.007391, 11.993546, 32.443165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.627806, 12.424047, 33.108223>,  <16.285627, 12.482526, 32.859676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.627806, 12.424047, 33.108223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.648149, 12.092169, 32.885864>,  <15.660354, 11.893042, 32.752449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.648149, 12.092169, 32.885864>,  <15.627806, 12.424047, 33.108223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648149, 12.092169, 32.885864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389080, -0.529098, 0.754104,
		-0.919799, 0.177937, -0.349726,
		0.050856, -0.829695, -0.555895,
		15.663405, 11.843260, 32.719097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.041623, 12.141858, 33.231068>,  <15.627806, 12.424047, 33.108223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.041623, 12.141858, 33.231068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.301486, 11.857993, 33.122017>,  <15.457404, 11.687674, 33.056587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.301486, 11.857993, 33.122017>,  <15.041623, 12.141858, 33.231068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.301486, 11.857993, 33.122017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248792, -0.537327, 0.805842,
		-0.718364, -0.455695, -0.525637,
		0.649658, -0.709663, -0.272623,
		15.496384, 11.645094, 33.040230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743387, 11.473647, 33.252663>,  <15.041623, 12.141858, 33.231068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743387, 11.473647, 33.252663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.132200, 11.388131, 33.291542>,  <15.365488, 11.336822, 33.314869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.132200, 11.388131, 33.291542>,  <14.743387, 11.473647, 33.252663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.132200, 11.388131, 33.291542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203638, -0.561134, 0.802284,
		-0.116981, -0.799639, -0.588976,
		0.972032, -0.213790, 0.097195,
		15.423810, 11.323994, 33.320702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289969, 10.897215, 33.031185>,  <14.743387, 11.473647, 33.252663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289969, 10.897215, 33.031185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.275000, 10.506719, 33.116558>,  <14.266018, 10.272421, 33.167782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.275000, 10.506719, 33.116558>,  <14.289969, 10.897215, 33.031185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.275000, 10.506719, 33.116558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156345, -0.216675, -0.963643,
		0.986993, -0.002694, 0.160740,
		-0.037424, -0.976240, 0.213436,
		14.263772, 10.213846, 33.180588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972260, 10.590028, 32.815880>,  <14.289969, 10.897215, 33.031185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972260, 10.590028, 32.815880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.623856, 10.401477, 32.760540>,  <14.414813, 10.288346, 32.727337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.623856, 10.401477, 32.760540>,  <14.972260, 10.590028, 32.815880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.623856, 10.401477, 32.760540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154631, 0.004248, -0.987963,
		0.466292, -0.881921, 0.069189,
		-0.871011, -0.471378, -0.138354,
		14.362552, 10.260063, 32.719032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137821, 10.112376, 32.352257>,  <14.972260, 10.590028, 32.815880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.137821, 10.112376, 32.352257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.739926, 10.151958, 32.341637>,  <14.501189, 10.175707, 32.335262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.739926, 10.151958, 32.341637>,  <15.137821, 10.112376, 32.352257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.739926, 10.151958, 32.341637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029138, 0.024758, -0.999269,
		-0.098226, -0.994784, -0.027511,
		-0.994738, 0.098956, -0.026554,
		14.441505, 10.181643, 32.333672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060315, 9.765676, 31.721457>,  <15.137821, 10.112376, 32.352257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.060315, 9.765676, 31.721457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.708092, 9.950235, 31.764774>,  <14.496758, 10.060971, 31.790766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.708092, 9.950235, 31.764774>,  <15.060315, 9.765676, 31.721457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708092, 9.950235, 31.764774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034805, 0.164928, -0.985691,
		-0.472657, -0.871728, -0.129170,
		-0.880559, 0.461398, 0.108295,
		14.443924, 10.088655, 31.797262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609104, 9.451115, 31.270576>,  <15.060315, 9.765676, 31.721457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609104, 9.451115, 31.270576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.456007, 9.815758, 31.330549>,  <14.364148, 10.034543, 31.366533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.456007, 9.815758, 31.330549>,  <14.609104, 9.451115, 31.270576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.456007, 9.815758, 31.330549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164196, 0.092583, -0.982073,
		-0.909146, -0.400501, 0.114247,
		-0.382744, 0.911607, 0.149932,
		14.341184, 10.089240, 31.375528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042686, 9.512796, 30.701845>,  <14.609104, 9.451115, 31.270576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042686, 9.512796, 30.701845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.129884, 9.880475, 30.833029>,  <14.182203, 10.101082, 30.911739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.129884, 9.880475, 30.833029>,  <14.042686, 9.512796, 30.701845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.129884, 9.880475, 30.833029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104068, 0.356018, -0.928666,
		-0.970385, 0.168316, 0.173270,
		0.217997, 0.919196, 0.327959,
		14.195283, 10.156234, 30.931416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.628324, 10.048111, 30.341370>,  <14.042686, 9.512796, 30.701845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.628324, 10.048111, 30.341370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.883925, 10.312225, 30.499203>,  <14.037287, 10.470694, 30.593903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.883925, 10.312225, 30.499203>,  <13.628324, 10.048111, 30.341370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.883925, 10.312225, 30.499203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010593, 0.520483, -0.853806,
		-0.769130, 0.541407, 0.339586,
		0.639005, 0.660285, 0.394584,
		14.075627, 10.510311, 30.617579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.383008, 10.835548, 30.274122>,  <13.628324, 10.048111, 30.341370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.383008, 10.835548, 30.274122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.782351, 10.812649, 30.274565>,  <14.021957, 10.798909, 30.274830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.782351, 10.812649, 30.274565>,  <13.383008, 10.835548, 30.274122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.782351, 10.812649, 30.274565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031303, 0.529498, -0.847733,
		0.047944, 0.846377, 0.530422,
		0.998359, -0.057248, 0.001108,
		14.081860, 10.795474, 30.274897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.596639, 11.487953, 30.050606>,  <13.383008, 10.835548, 30.274122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.596639, 11.487953, 30.050606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.943521, 11.291315, 30.018881>,  <14.151649, 11.173332, 29.999846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.943521, 11.291315, 30.018881>,  <13.596639, 11.487953, 30.050606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943521, 11.291315, 30.018881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214504, 0.512542, -0.831438,
		0.449382, 0.704014, 0.549928,
		0.867205, -0.491594, -0.079313,
		14.203682, 11.143837, 29.995087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.152324, 11.999962, 29.760590>,  <13.596639, 11.487953, 30.050606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.152324, 11.999962, 29.760590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.346524, 11.660515, 29.676556>,  <14.463045, 11.456846, 29.626135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.346524, 11.660515, 29.676556>,  <14.152324, 11.999962, 29.760590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.346524, 11.660515, 29.676556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442939, 0.445956, -0.777772,
		0.753719, 0.284555, 0.592398,
		0.485502, -0.848618, -0.210085,
		14.492175, 11.405930, 29.613529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854226, 12.101504, 29.767065>,  <14.152324, 11.999962, 29.760590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854226, 12.101504, 29.767065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.808571, 11.790510, 29.519682>,  <14.781178, 11.603913, 29.371252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.808571, 11.790510, 29.519682>,  <14.854226, 12.101504, 29.767065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.808571, 11.790510, 29.519682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515534, 0.485793, -0.705854,
		0.849233, -0.399400, 0.345373,
		-0.114138, -0.777486, -0.618456,
		14.774329, 11.557264, 29.334145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511233, 12.037356, 29.441433>,  <14.854226, 12.101504, 29.767065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511233, 12.037356, 29.441433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.249672, 11.847616, 29.205669>,  <15.092735, 11.733772, 29.064211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.249672, 11.847616, 29.205669>,  <15.511233, 12.037356, 29.441433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.249672, 11.847616, 29.205669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410787, 0.431614, -0.803096,
		0.635346, -0.767269, -0.087377,
		-0.653904, -0.474351, -0.589408,
		15.053500, 11.705311, 29.028847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855204, 11.971825, 28.842686>,  <15.511233, 12.037356, 29.441433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855204, 11.971825, 28.842686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.470379, 11.922814, 28.745176>,  <15.239484, 11.893409, 28.686670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.470379, 11.922814, 28.745176>,  <15.855204, 11.971825, 28.842686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.470379, 11.922814, 28.745176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152825, 0.498157, -0.853512,
		0.226014, -0.858386, -0.460533,
		-0.962061, -0.122524, -0.243774,
		15.181761, 11.886057, 28.672045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.986416, 12.073128, 28.240423>,  <15.855204, 11.971825, 28.842686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.986416, 12.073128, 28.240423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.589046, 12.035872, 28.213783>,  <15.350625, 12.013519, 28.197800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.589046, 12.035872, 28.213783>,  <15.986416, 12.073128, 28.240423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589046, 12.035872, 28.213783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002980, 0.602499, -0.798114,
		0.114463, -0.792666, -0.598814,
		-0.993423, -0.093139, -0.066601,
		15.291019, 12.007931, 28.193802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714949, 11.818394, 27.551680>,  <15.986416, 12.073128, 28.240423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714949, 11.818394, 27.551680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.444138, 12.053272, 27.729143>,  <15.281651, 12.194200, 27.835621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.444138, 12.053272, 27.729143>,  <15.714949, 11.818394, 27.551680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.444138, 12.053272, 27.729143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177821, 0.454455, -0.872840,
		-0.714152, -0.669829, -0.203262,
		-0.677027, 0.587197, 0.443660,
		15.241030, 12.229431, 27.862242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194434, 11.924778, 27.026386>,  <15.714949, 11.818394, 27.551680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.194434, 11.924778, 27.026386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.121233, 12.212990, 27.293922>,  <15.077312, 12.385917, 27.454443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.121233, 12.212990, 27.293922>,  <15.194434, 11.924778, 27.026386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121233, 12.212990, 27.293922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096088, 0.663962, -0.741567,
		-0.978405, -0.199977, -0.052273,
		-0.183004, 0.720530, 0.668839,
		15.066332, 12.429149, 27.494574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.642668, 12.277120, 26.860895>,  <15.194434, 11.924778, 27.026386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.642668, 12.277120, 26.860895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.848965, 12.524631, 27.097919>,  <14.972743, 12.673137, 27.240133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.848965, 12.524631, 27.097919>,  <14.642668, 12.277120, 26.860895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848965, 12.524631, 27.097919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016369, 0.698631, -0.715295,
		-0.856588, 0.359208, 0.370441,
		0.515742, 0.618777, 0.592559,
		15.003687, 12.710263, 27.275686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.231551, 12.796787, 26.868362>,  <14.642668, 12.277120, 26.860895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.231551, 12.796787, 26.868362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.578223, 12.965275, 26.975275>,  <14.786226, 13.066367, 27.039423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.578223, 12.965275, 26.975275>,  <14.231551, 12.796787, 26.868362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578223, 12.965275, 26.975275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203845, 0.788033, -0.580906,
		-0.455317, 0.448975, 0.768836,
		0.866680, 0.421220, 0.267283,
		14.838227, 13.091640, 27.055460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055285, 13.539950, 26.834145>,  <14.231551, 12.796787, 26.868362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055285, 13.539950, 26.834145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.454932, 13.526921, 26.823538>,  <14.694720, 13.519104, 26.817173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.454932, 13.526921, 26.823538>,  <14.055285, 13.539950, 26.834145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454932, 13.526921, 26.823538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008591, 0.776456, -0.630113,
		0.041114, 0.629329, 0.776051,
		0.999117, -0.032574, -0.026517,
		14.754667, 13.517149, 26.815582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.149556, 14.206878, 26.715166>,  <14.055285, 13.539950, 26.834145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.149556, 14.206878, 26.715166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.523165, 14.079243, 26.650934>,  <14.747330, 14.002662, 26.612394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.523165, 14.079243, 26.650934>,  <14.149556, 14.206878, 26.715166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.523165, 14.079243, 26.650934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133789, 0.729297, -0.670989,
		0.331215, 0.605234, 0.723870,
		0.934022, -0.319087, -0.160581,
		14.803371, 13.983517, 26.602760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614702, 14.767982, 26.837021>,  <14.149556, 14.206878, 26.715166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614702, 14.767982, 26.837021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.773133, 14.507327, 26.578257>,  <14.868192, 14.350934, 26.422998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.773133, 14.507327, 26.578257>,  <14.614702, 14.767982, 26.837021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773133, 14.507327, 26.578257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040219, 0.716164, -0.696772,
		0.917336, 0.249957, 0.309865,
		0.396077, -0.651636, -0.646910,
		14.891956, 14.311836, 26.384184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<28.743925, 27.182518, 13.028399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.870230, 26.953117, 12.726039>,  <28.946012, 26.815477, 12.544622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.870230, 26.953117, 12.726039>,  <28.743925, 27.182518, 13.028399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870230, 26.953117, 12.726039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295908, -0.697408, 0.652733,
		-0.901517, -0.429786, -0.050512,
		0.315763, -0.573503, -0.755902,
		28.964958, 26.781067, 12.499269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572041, 26.538290, 13.243162>,  <28.743925, 27.182518, 13.028399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572041, 26.538290, 13.243162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.878660, 26.492525, 12.990397>,  <29.062632, 26.465067, 12.838738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.878660, 26.492525, 12.990397>,  <28.572041, 26.538290, 13.243162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878660, 26.492525, 12.990397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367944, -0.728228, 0.578188,
		-0.526328, -0.675718, -0.516125,
		0.766548, -0.114412, -0.631912,
		29.108625, 26.458202, 12.800823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904440, 25.773844, 13.244400>,  <28.572041, 26.538290, 13.243162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904440, 25.773844, 13.244400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.192450, 26.016800, 13.110151>,  <29.365255, 26.162575, 13.029602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.192450, 26.016800, 13.110151>,  <28.904440, 25.773844, 13.244400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192450, 26.016800, 13.110151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656368, -0.439079, 0.613507,
		0.225274, -0.662030, -0.714820,
		0.720023, 0.607392, -0.335622,
		29.408457, 26.199017, 13.009464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376951, 25.752058, 13.875188>,  <28.904440, 25.773844, 13.244400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376951, 25.752058, 13.875188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.233423, 25.383368, 13.816303>,  <28.147306, 25.162153, 13.780972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.233423, 25.383368, 13.816303>,  <28.376951, 25.752058, 13.875188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233423, 25.383368, 13.816303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074515, -0.128925, 0.988851,
		-0.930428, 0.365787, -0.022421,
		-0.358818, -0.921725, -0.147212,
		28.125778, 25.106850, 13.772140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640896, 25.623463, 14.337723>,  <28.376951, 25.752058, 13.875188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640896, 25.623463, 14.337723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.880774, 25.317734, 14.242917>,  <28.024700, 25.134296, 14.186034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.880774, 25.317734, 14.242917>,  <27.640896, 25.623463, 14.337723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880774, 25.317734, 14.242917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039965, -0.267207, 0.962810,
		-0.799230, -0.586865, -0.129697,
		0.599696, -0.764323, -0.237014,
		28.060682, 25.088436, 14.171813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398640, 24.831741, 14.512317>,  <27.640896, 25.623463, 14.337723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398640, 24.831741, 14.512317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.794718, 24.880041, 14.540420>,  <28.032364, 24.909021, 14.557281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.794718, 24.880041, 14.540420>,  <27.398640, 24.831741, 14.512317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794718, 24.880041, 14.540420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015587, -0.404279, 0.914503,
		0.138829, -0.906630, -0.398433,
		0.990194, 0.120749, 0.070257,
		28.091776, 24.916265, 14.561497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641857, 24.216082, 14.790442>,  <27.398640, 24.831741, 14.512317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641857, 24.216082, 14.790442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.934952, 24.478155, 14.864010>,  <28.110809, 24.635399, 14.908151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.934952, 24.478155, 14.864010>,  <27.641857, 24.216082, 14.790442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934952, 24.478155, 14.864010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208485, -0.473403, 0.855817,
		0.647787, -0.588746, -0.483477,
		0.732739, 0.655185, 0.183920,
		28.154774, 24.674711, 14.919186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267509, 23.994806, 14.707678>,  <27.641857, 24.216082, 14.790442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267509, 23.994806, 14.707678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.322496, 24.276674, 14.986114>,  <28.355490, 24.445795, 15.153175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.322496, 24.276674, 14.986114>,  <28.267509, 23.994806, 14.707678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322496, 24.276674, 14.986114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292096, -0.700350, 0.651298,
		0.946458, 0.113792, -0.302108,
		0.137469, 0.704671, 0.696090,
		28.363737, 24.488075, 15.194941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882635, 23.727072, 15.078627>,  <28.267509, 23.994806, 14.707678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882635, 23.727072, 15.078627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.709564, 24.001539, 15.312538>,  <28.605722, 24.166220, 15.452885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.709564, 24.001539, 15.312538>,  <28.882635, 23.727072, 15.078627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709564, 24.001539, 15.312538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400420, -0.434888, 0.806558,
		0.807747, 0.583136, -0.086590,
		-0.432676, 0.686167, 0.584779,
		28.579762, 24.207390, 15.487971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853018, 23.731987, 14.380984>,  <28.882635, 23.727072, 15.078627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853018, 23.731987, 14.380984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.046631, 23.383375, 14.349615>,  <29.162800, 23.174208, 14.330793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.046631, 23.383375, 14.349615>,  <28.853018, 23.731987, 14.380984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046631, 23.383375, 14.349615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454189, -0.326827, 0.828792,
		-0.747946, -0.365546, -0.554034,
		0.484035, -0.871527, -0.078423,
		29.191841, 23.121918, 14.326088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411133, 23.236029, 14.479605>,  <28.853018, 23.731987, 14.380984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411133, 23.236029, 14.479605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.762112, 23.068111, 14.572438>,  <28.972698, 22.967361, 14.628139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.762112, 23.068111, 14.572438>,  <28.411133, 23.236029, 14.479605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762112, 23.068111, 14.572438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452050, -0.561849, 0.692803,
		-0.160437, -0.712811, -0.682759,
		0.877446, -0.419792, 0.232085,
		29.025345, 22.942173, 14.642063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321075, 22.504547, 14.426070>,  <28.411133, 23.236029, 14.479605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321075, 22.504547, 14.426070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.641626, 22.552834, 14.660410>,  <28.833958, 22.581806, 14.801014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.641626, 22.552834, 14.660410>,  <28.321075, 22.504547, 14.426070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641626, 22.552834, 14.660410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530818, -0.307953, 0.789555,
		0.275726, -0.943712, -0.182709,
		0.801378, 0.120716, 0.585850,
		28.882040, 22.589048, 14.836165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527184, 21.819336, 14.703478>,  <28.321075, 22.504547, 14.426070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527184, 21.819336, 14.703478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.681904, 22.099072, 14.943914>,  <28.774736, 22.266912, 15.088177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.681904, 22.099072, 14.943914>,  <28.527184, 21.819336, 14.703478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681904, 22.099072, 14.943914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504150, -0.385425, 0.772840,
		0.772153, -0.601973, 0.203490,
		0.386799, 0.699340, 0.601092,
		28.797943, 22.308874, 15.124242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854248, 21.504276, 15.229312>,  <28.527184, 21.819336, 14.703478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854248, 21.504276, 15.229312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.782135, 21.860966, 15.395363>,  <28.738867, 22.074980, 15.494993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.782135, 21.860966, 15.395363>,  <28.854248, 21.504276, 15.229312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782135, 21.860966, 15.395363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428743, -0.451080, 0.782755,
		0.885256, -0.036868, 0.463640,
		-0.180280, 0.891722, 0.415128,
		28.728050, 22.128483, 15.519901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025047, 21.489214, 15.999802>,  <28.854248, 21.504276, 15.229312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025047, 21.489214, 15.999802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.774731, 21.797073, 15.949172>,  <28.624540, 21.981789, 15.918795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.774731, 21.797073, 15.949172>,  <29.025047, 21.489214, 15.999802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774731, 21.797073, 15.949172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626835, -0.399679, 0.668831,
		0.464177, 0.497891, 0.732560,
		-0.625794, 0.769650, -0.126574,
		28.586992, 22.027969, 15.911200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654650, 21.534266, 16.638510>,  <29.025047, 21.489214, 15.999802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654650, 21.534266, 16.638510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.427969, 21.738688, 16.380001>,  <28.291960, 21.861341, 16.224895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.427969, 21.738688, 16.380001>,  <28.654650, 21.534266, 16.638510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427969, 21.738688, 16.380001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807219, -0.187243, 0.559766,
		0.165061, 0.838906, 0.518645,
		-0.566703, 0.511056, -0.646274,
		28.257957, 21.892004, 16.186119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285862, 21.948889, 17.040407>,  <28.654650, 21.534266, 16.638510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285862, 21.948889, 17.040407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.083376, 21.873869, 16.703701>,  <27.961884, 21.828857, 16.501677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.083376, 21.873869, 16.703701>,  <28.285862, 21.948889, 17.040407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083376, 21.873869, 16.703701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824962, -0.179182, 0.536033,
		-0.251362, 0.965774, -0.064016,
		-0.506216, -0.187549, -0.841766,
		27.931511, 21.817604, 16.451172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615950, 22.157063, 17.158270>,  <28.285862, 21.948889, 17.040407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615950, 22.157063, 17.158270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.523857, 21.982130, 16.810537>,  <27.468601, 21.877171, 16.601898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.523857, 21.982130, 16.810537>,  <27.615950, 22.157063, 17.158270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523857, 21.982130, 16.810537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741593, -0.499582, 0.447725,
		-0.630105, 0.747770, -0.209303,
		-0.230231, -0.437331, -0.869330,
		27.454788, 21.850931, 16.549738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862074, 22.163296, 17.218485>,  <27.615950, 22.157063, 17.158270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862074, 22.163296, 17.218485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.974157, 21.901522, 16.937572>,  <27.041407, 21.744457, 16.769026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.974157, 21.901522, 16.937572>,  <26.862074, 22.163296, 17.218485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974157, 21.901522, 16.937572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743680, -0.610584, 0.272263,
		-0.606982, 0.445984, -0.657778,
		0.280204, -0.654435, -0.702282,
		27.058220, 21.705191, 16.726889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292633, 22.002419, 17.032921>,  <26.862074, 22.163296, 17.218485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292633, 22.002419, 17.032921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.517464, 21.691763, 16.919147>,  <26.652363, 21.505369, 16.850883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.517464, 21.691763, 16.919147>,  <26.292633, 22.002419, 17.032921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517464, 21.691763, 16.919147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679715, -0.629688, 0.376139,
		-0.471228, -0.018086, -0.881826,
		0.562078, -0.776638, -0.284433,
		26.686087, 21.458771, 16.833817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898109, 21.497520, 16.566418>,  <26.292633, 22.002419, 17.032921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898109, 21.497520, 16.566418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.187382, 21.300657, 16.760237>,  <26.360945, 21.182539, 16.876528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.187382, 21.300657, 16.760237>,  <25.898109, 21.497520, 16.566418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187382, 21.300657, 16.760237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643151, -0.735591, 0.212750,
		0.251722, -0.465495, -0.848499,
		0.723183, -0.492159, 0.484548,
		26.404337, 21.153009, 16.905602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998083, 20.830191, 16.276726>,  <25.898109, 21.497520, 16.566418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998083, 20.830191, 16.276726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.159515, 20.806150, 16.641912>,  <26.256374, 20.791727, 16.861025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.159515, 20.806150, 16.641912>,  <25.998083, 20.830191, 16.276726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159515, 20.806150, 16.641912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697602, -0.665860, 0.264543,
		0.592011, -0.743653, -0.310652,
		0.403579, -0.060099, 0.912969,
		26.280588, 20.788120, 16.915804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991325, 20.118027, 16.433798>,  <25.998083, 20.830191, 16.276726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991325, 20.118027, 16.433798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.068161, 20.262167, 16.798927>,  <26.114264, 20.348652, 17.018005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.068161, 20.262167, 16.798927>,  <25.991325, 20.118027, 16.433798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068161, 20.262167, 16.798927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449429, -0.794575, 0.408246,
		0.872419, -0.488670, 0.009322,
		0.192091, 0.360351, 0.912824,
		26.125788, 20.370272, 17.072775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363319, 19.483067, 16.869236>,  <25.991325, 20.118027, 16.433798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363319, 19.483067, 16.869236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.179241, 19.733995, 17.120533>,  <26.068794, 19.884552, 17.271311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.179241, 19.733995, 17.120533>,  <26.363319, 19.483067, 16.869236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179241, 19.733995, 17.120533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388417, -0.778571, 0.492910,
		0.798344, -0.017185, 0.601957,
		-0.460195, 0.627322, 0.628242,
		26.041183, 19.922192, 17.309006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532612, 19.348690, 17.560009>,  <26.363319, 19.483067, 16.869236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532612, 19.348690, 17.560009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.187746, 19.546007, 17.606205>,  <25.980827, 19.664396, 17.633923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.187746, 19.546007, 17.606205>,  <26.532612, 19.348690, 17.560009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187746, 19.546007, 17.606205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412358, -0.815697, 0.405708,
		0.294339, 0.302162, 0.906677,
		-0.862164, 0.493291, 0.115492,
		25.929096, 19.693995, 17.640852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288704, 19.143192, 18.163969>,  <26.532612, 19.348690, 17.560009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288704, 19.143192, 18.163969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.964468, 19.297163, 17.987438>,  <25.769926, 19.389545, 17.881519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.964468, 19.297163, 17.987438>,  <26.288704, 19.143192, 18.163969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964468, 19.297163, 17.987438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553098, -0.750848, 0.360986,
		-0.192416, 0.536710, 0.821534,
		-0.810592, 0.384929, -0.441328,
		25.721291, 19.412642, 17.855040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815094, 19.091017, 18.734217>,  <26.288704, 19.143192, 18.163969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815094, 19.091017, 18.734217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.612984, 19.121288, 18.390364>,  <25.491716, 19.139452, 18.184052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.612984, 19.121288, 18.390364>,  <25.815094, 19.091017, 18.734217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612984, 19.121288, 18.390364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735387, -0.559009, 0.383035,
		-0.451554, 0.825701, 0.338108,
		-0.505277, 0.075679, -0.859632,
		25.461401, 19.143991, 18.132475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206085, 19.378113, 18.874666>,  <25.815094, 19.091017, 18.734217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206085, 19.378113, 18.874666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.128786, 19.194838, 18.527630>,  <25.082407, 19.084871, 18.319408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.128786, 19.194838, 18.527630>,  <25.206085, 19.378113, 18.874666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128786, 19.194838, 18.527630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765587, -0.482607, 0.425402,
		-0.613621, 0.746427, -0.257520,
		-0.193250, -0.458190, -0.867592,
		25.070810, 19.057381, 18.267353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.471766, 19.389376, 18.735584>,  <25.206085, 19.378113, 18.874666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.471766, 19.389376, 18.735584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.622719, 19.088003, 18.520206>,  <24.713291, 18.907179, 18.390980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.622719, 19.088003, 18.520206>,  <24.471766, 19.389376, 18.735584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622719, 19.088003, 18.520206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759624, -0.584417, 0.285356,
		-0.529672, 0.301327, -0.792874,
		0.377384, -0.753432, -0.538444,
		24.735933, 18.861973, 18.358673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.910908, 19.273046, 18.386591>,  <24.471766, 19.389376, 18.735584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.910908, 19.273046, 18.386591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.141960, 18.948473, 18.351002>,  <24.280592, 18.753729, 18.329649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.141960, 18.948473, 18.351002>,  <23.910908, 19.273046, 18.386591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.141960, 18.948473, 18.351002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748143, -0.569847, 0.339937,
		-0.326537, -0.129795, -0.936230,
		0.577630, -0.811435, -0.088971,
		24.315248, 18.705042, 18.324310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.559357, 18.772270, 17.909382>,  <23.910908, 19.273046, 18.386591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.559357, 18.772270, 17.909382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.797386, 18.551886, 18.143417>,  <23.940205, 18.419655, 18.283838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.797386, 18.551886, 18.143417>,  <23.559357, 18.772270, 17.909382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.797386, 18.551886, 18.143417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707738, -0.704196, 0.056696,
		0.380780, -0.447828, -0.808985,
		0.595074, -0.550960, 0.585089,
		23.975908, 18.386597, 18.318945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.642401, 18.077301, 17.588327>,  <23.559357, 18.772270, 17.909382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.642401, 18.077301, 17.588327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.660341, 18.108068, 17.986738>,  <23.671106, 18.126530, 18.225784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.660341, 18.108068, 17.986738>,  <23.642401, 18.077301, 17.588327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.660341, 18.108068, 17.986738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784884, -0.614090, 0.082769,
		0.618018, -0.785478, 0.032828,
		0.044853, 0.076919, 0.996028,
		23.673798, 18.131144, 18.285547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.773140, 17.338005, 17.907349>,  <23.642401, 18.077301, 17.588327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.773140, 17.338005, 17.907349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.569462, 17.594631, 18.136824>,  <23.447256, 17.748606, 18.274509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.569462, 17.594631, 18.136824>,  <23.773140, 17.338005, 17.907349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569462, 17.594631, 18.136824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705721, -0.692781, 0.148364,
		0.492625, -0.329318, 0.805525,
		-0.509194, 0.641564, 0.573687,
		23.416704, 17.787100, 18.308929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.969278, 17.543211, 17.112144>,  <23.773140, 17.338005, 17.907349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.969278, 17.543211, 17.112144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.949350, 17.274612, 16.816412>,  <23.937393, 17.113453, 16.638973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.949350, 17.274612, 16.816412>,  <23.969278, 17.543211, 17.112144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.949350, 17.274612, 16.816412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679671, 0.519611, -0.517737,
		0.731823, -0.528297, 0.430508,
		-0.049822, -0.671496, -0.739332,
		23.934404, 17.073164, 16.594612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671762, 17.495075, 16.964718>,  <23.969278, 17.543211, 17.112144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671762, 17.495075, 16.964718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.466232, 17.378618, 16.641926>,  <24.342915, 17.308744, 16.448250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.466232, 17.378618, 16.641926>,  <24.671762, 17.495075, 16.964718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466232, 17.378618, 16.641926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697813, 0.405343, -0.590554,
		0.499041, -0.866563, -0.005110,
		-0.513824, -0.291145, -0.806982,
		24.312084, 17.291275, 16.399832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161085, 17.229542, 16.358774>,  <24.671762, 17.495075, 16.964718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161085, 17.229542, 16.358774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.812593, 17.329367, 16.189692>,  <24.603498, 17.389261, 16.088242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.812593, 17.329367, 16.189692>,  <25.161085, 17.229542, 16.358774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812593, 17.329367, 16.189692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489830, 0.385695, -0.781861,
		-0.032088, -0.888232, -0.458272,
		-0.871228, 0.249564, -0.422706,
		24.551226, 17.404236, 16.062880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292900, 17.040121, 15.755766>,  <25.161085, 17.229542, 16.358774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292900, 17.040121, 15.755766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.988926, 17.297251, 15.717230>,  <24.806541, 17.451529, 15.694108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.988926, 17.297251, 15.717230>,  <25.292900, 17.040121, 15.755766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.988926, 17.297251, 15.717230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520529, 0.513073, -0.682499,
		-0.389296, -0.568802, -0.724509,
		-0.759933, 0.642822, -0.096340,
		24.760946, 17.490097, 15.688328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137117, 16.936693, 15.009473>,  <25.292900, 17.040121, 15.755766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137117, 16.936693, 15.009473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.002607, 17.281546, 15.161079>,  <24.921902, 17.488457, 15.252043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.002607, 17.281546, 15.161079>,  <25.137117, 16.936693, 15.009473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.002607, 17.281546, 15.161079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607424, 0.506105, -0.612286,
		-0.719691, 0.024327, -0.693869,
		-0.336275, 0.862129, 0.379016,
		24.901726, 17.540184, 15.274784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.205465, 17.457064, 14.455597>,  <25.137117, 16.936693, 15.009473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.205465, 17.457064, 14.455597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.151211, 17.716280, 14.755370>,  <25.118658, 17.871809, 14.935234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.151211, 17.716280, 14.755370>,  <25.205465, 17.457064, 14.455597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151211, 17.716280, 14.755370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482236, 0.703954, -0.521437,
		-0.865478, 0.290679, -0.407988,
		-0.135634, 0.648039, 0.749432,
		25.110521, 17.910692, 14.980200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879887, 17.961262, 14.098539>,  <25.205465, 17.457064, 14.455597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879887, 17.961262, 14.098539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.058010, 18.091711, 14.432089>,  <25.164885, 18.169981, 14.632218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.058010, 18.091711, 14.432089>,  <24.879887, 17.961262, 14.098539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058010, 18.091711, 14.432089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360551, 0.787153, -0.500392,
		-0.819575, 0.523483, 0.232942,
		0.445308, 0.326121, 0.833874,
		25.191603, 18.189547, 14.682251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773428, 18.689646, 14.128518>,  <24.879887, 17.961262, 14.098539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773428, 18.689646, 14.128518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.071041, 18.628872, 14.388773>,  <25.249609, 18.592407, 14.544926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.071041, 18.628872, 14.388773>,  <24.773428, 18.689646, 14.128518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071041, 18.628872, 14.388773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535871, 0.717329, -0.445288,
		-0.399068, 0.679967, 0.615134,
		0.744034, -0.151933, 0.650638,
		25.294250, 18.583292, 14.583964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018471, 19.339048, 14.321583>,  <24.773428, 18.689646, 14.128518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018471, 19.339048, 14.321583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.331360, 19.114323, 14.429281>,  <25.519093, 18.979486, 14.493900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.331360, 19.114323, 14.429281>,  <25.018471, 19.339048, 14.321583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331360, 19.114323, 14.429281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622736, 0.717701, -0.311617,
		-0.018168, 0.411423, 0.911263,
		0.782221, -0.561815, 0.269247,
		25.566027, 18.945778, 14.510056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380318, 19.694963, 14.701200>,  <25.018471, 19.339048, 14.321583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380318, 19.694963, 14.701200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.636875, 19.417328, 14.570444>,  <25.790810, 19.250746, 14.491990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.636875, 19.417328, 14.570444>,  <25.380318, 19.694963, 14.701200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636875, 19.417328, 14.570444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624574, 0.719822, -0.302925,
		0.445560, -0.009874, 0.895198,
		0.641392, -0.694088, -0.326891,
		25.829292, 19.209101, 14.472377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016775, 19.875168, 14.943699>,  <25.380318, 19.694963, 14.701200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016775, 19.875168, 14.943699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.042044, 19.655218, 14.610558>,  <26.057205, 19.523249, 14.410672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.042044, 19.655218, 14.610558>,  <26.016775, 19.875168, 14.943699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042044, 19.655218, 14.610558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608475, 0.682693, -0.404584,
		0.791055, -0.481213, 0.377711,
		0.063170, -0.549876, -0.832854,
		26.060995, 19.490255, 14.360702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656719, 20.011543, 14.745280>,  <26.016775, 19.875168, 14.943699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656719, 20.011543, 14.745280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.508385, 19.846046, 14.412703>,  <26.419384, 19.746748, 14.213156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.508385, 19.846046, 14.412703>,  <26.656719, 20.011543, 14.745280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508385, 19.846046, 14.412703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721103, 0.435888, -0.538527,
		0.585227, -0.799262, 0.136707,
		-0.370835, -0.413741, -0.831444,
		26.397135, 19.721924, 14.163269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272629, 19.747007, 14.481357>,  <26.656719, 20.011543, 14.745280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272629, 19.747007, 14.481357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.999813, 19.793547, 14.192555>,  <26.836124, 19.821470, 14.019275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.999813, 19.793547, 14.192555>,  <27.272629, 19.747007, 14.481357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999813, 19.793547, 14.192555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658146, 0.528100, -0.536614,
		0.318855, -0.841174, -0.436759,
		-0.682037, 0.116349, -0.722003,
		26.795202, 19.828451, 13.975955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545288, 19.347797, 13.748333>,  <27.272629, 19.747007, 14.481357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545288, 19.347797, 13.748333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.272083, 19.632092, 13.680983>,  <27.108160, 19.802668, 13.640573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.272083, 19.632092, 13.680983>,  <27.545288, 19.347797, 13.748333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272083, 19.632092, 13.680983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589002, 0.399627, -0.702406,
		-0.431937, -0.578926, -0.691575,
		-0.683014, 0.710734, -0.168375,
		27.067179, 19.845312, 13.630470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692715, 19.513432, 13.077283>,  <27.545288, 19.347797, 13.748333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692715, 19.513432, 13.077283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.452015, 19.813879, 13.185885>,  <27.307594, 19.994148, 13.251047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.452015, 19.813879, 13.185885>,  <27.692715, 19.513432, 13.077283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452015, 19.813879, 13.185885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423560, 0.588317, -0.688825,
		-0.677123, -0.299500, -0.672164,
		-0.601749, 0.751121, 0.271507,
		27.271490, 20.039215, 13.267338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277523, 19.802217, 12.526139>,  <27.692715, 19.513432, 13.077283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277523, 19.802217, 12.526139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.310282, 20.094650, 12.797082>,  <27.329937, 20.270111, 12.959647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.310282, 20.094650, 12.797082>,  <27.277523, 19.802217, 12.526139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310282, 20.094650, 12.797082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616675, 0.496743, -0.610703,
		-0.782947, 0.467722, -0.410159,
		0.081896, 0.731083, 0.677356,
		27.334850, 20.313974, 13.000289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092535, 20.559151, 12.156989>,  <27.277523, 19.802217, 12.526139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092535, 20.559151, 12.156989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.283710, 20.641346, 12.498596>,  <27.398417, 20.690664, 12.703561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.283710, 20.641346, 12.498596>,  <27.092535, 20.559151, 12.156989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283710, 20.641346, 12.498596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513374, 0.723570, -0.461404,
		-0.712756, 0.658954, 0.240330,
		0.477939, 0.205489, 0.854019,
		27.427092, 20.702993, 12.754802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082859, 21.240398, 12.158083>,  <27.092535, 20.559151, 12.156989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082859, 21.240398, 12.158083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.377220, 21.130754, 12.405730>,  <27.553837, 21.064968, 12.554318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.377220, 21.130754, 12.405730>,  <27.082859, 21.240398, 12.158083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377220, 21.130754, 12.405730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589514, 0.709158, -0.386741,
		-0.333043, 0.649583, 0.683465,
		0.735905, -0.274111, 0.619118,
		27.597992, 21.048521, 12.591466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346003, 21.886772, 12.371215>,  <27.082859, 21.240398, 12.158083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346003, 21.886772, 12.371215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.630861, 21.611851, 12.428432>,  <27.801777, 21.446898, 12.462762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.630861, 21.611851, 12.428432>,  <27.346003, 21.886772, 12.371215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630861, 21.611851, 12.428432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671661, 0.607765, -0.423667,
		0.204252, 0.397789, 0.894452,
		0.712147, -0.687303, 0.143042,
		27.844505, 21.405659, 12.471344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.717100, 18.080563, 24.643976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441219, 17.902451, 24.415577>,  <18.275692, 17.795584, 24.278538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441219, 17.902451, 24.415577>,  <18.717100, 18.080563, 24.643976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441219, 17.902451, 24.415577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459825, 0.339817, -0.820418,
		0.559352, -0.828401, -0.029621,
		-0.689700, -0.445282, -0.570997,
		18.234308, 17.768866, 24.244278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.062391, 17.888369, 24.062040>,  <18.717100, 18.080563, 24.643976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.062391, 17.888369, 24.062040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.681919, 17.848078, 23.945347>,  <18.453636, 17.823904, 23.875332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.681919, 17.848078, 23.945347>,  <19.062391, 17.888369, 24.062040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.681919, 17.848078, 23.945347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232983, 0.385597, -0.892768,
		0.202415, -0.917153, -0.343305,
		-0.951182, -0.100726, -0.291731,
		18.396564, 17.817860, 23.857828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998993, 17.383764, 23.465504>,  <19.062391, 17.888369, 24.062040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.998993, 17.383764, 23.465504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711611, 17.661543, 23.449663>,  <18.539181, 17.828209, 23.440159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711611, 17.661543, 23.449663>,  <18.998993, 17.383764, 23.465504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711611, 17.661543, 23.449663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315973, 0.275115, -0.908005,
		-0.619664, -0.664874, -0.417083,
		-0.718455, 0.694445, -0.039603,
		18.496075, 17.869877, 23.437782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760210, 17.291513, 22.822102>,  <18.998993, 17.383764, 23.465504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760210, 17.291513, 22.822102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593924, 17.644516, 22.910067>,  <18.494152, 17.856318, 22.962845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593924, 17.644516, 22.910067>,  <18.760210, 17.291513, 22.822102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.593924, 17.644516, 22.910067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146680, 0.303687, -0.941413,
		-0.897588, -0.359105, -0.255694,
		-0.415717, 0.882506, 0.219912,
		18.469208, 17.909267, 22.976040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219732, 17.362221, 22.342834>,  <18.760210, 17.291513, 22.822102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219732, 17.362221, 22.342834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.341459, 17.720926, 22.471338>,  <18.414495, 17.936150, 22.548441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.341459, 17.720926, 22.471338>,  <18.219732, 17.362221, 22.342834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341459, 17.720926, 22.471338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123489, 0.297268, -0.946775,
		-0.944532, 0.327792, -0.020276,
		0.304318, 0.896763, 0.321257,
		18.432755, 17.989956, 22.567715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.889214, 17.875164, 21.970884>,  <18.219732, 17.362221, 22.342834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.889214, 17.875164, 21.970884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185202, 18.113197, 22.096308>,  <18.362795, 18.256018, 22.171562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185202, 18.113197, 22.096308>,  <17.889214, 17.875164, 21.970884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185202, 18.113197, 22.096308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068631, 0.396937, -0.915276,
		-0.669127, 0.698799, 0.252881,
		0.739972, 0.595081, 0.313561,
		18.407194, 18.291721, 22.190376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.764324, 18.401381, 21.625601>,  <17.889214, 17.875164, 21.970884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.764324, 18.401381, 21.625601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.145363, 18.421865, 21.745560>,  <18.373985, 18.434156, 21.817535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.145363, 18.421865, 21.745560>,  <17.764324, 18.401381, 21.625601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.145363, 18.421865, 21.745560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278959, 0.246377, -0.928160,
		-0.121421, 0.967820, 0.220412,
		0.952596, 0.051213, 0.299898,
		18.431141, 18.437229, 21.835529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.014090, 19.004316, 21.319380>,  <17.764324, 18.401381, 21.625601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.014090, 19.004316, 21.319380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.308222, 18.740131, 21.380144>,  <18.484701, 18.581621, 21.416603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.308222, 18.740131, 21.380144>,  <18.014090, 19.004316, 21.319380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.308222, 18.740131, 21.380144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366699, 0.199249, -0.908753,
		0.569929, 0.723940, 0.388705,
		0.735332, -0.660462, 0.151911,
		18.528822, 18.541992, 21.425718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.598421, 19.257952, 20.841135>,  <18.014090, 19.004316, 21.319380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.598421, 19.257952, 20.841135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.733202, 18.900505, 20.959734>,  <18.814072, 18.686037, 21.030893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.733202, 18.900505, 20.959734>,  <18.598421, 19.257952, 20.841135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.733202, 18.900505, 20.959734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592342, -0.043581, -0.804507,
		0.731842, 0.446711, 0.514642,
		0.336953, -0.893616, 0.296500,
		18.834288, 18.632420, 21.048683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.271992, 19.247782, 20.759771>,  <18.598421, 19.257952, 20.841135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.271992, 19.247782, 20.759771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245577, 18.849159, 20.779837>,  <19.229729, 18.609985, 20.791876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245577, 18.849159, 20.779837>,  <19.271992, 19.247782, 20.759771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.245577, 18.849159, 20.779837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727720, -0.082497, -0.680895,
		0.682688, -0.008459, 0.730661,
		-0.066038, -0.996555, 0.050164,
		19.225765, 18.550192, 20.794886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956839, 19.002817, 20.699696>,  <19.271992, 19.247782, 20.759771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956839, 19.002817, 20.699696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.739464, 18.676025, 20.622522>,  <19.609039, 18.479950, 20.576218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.739464, 18.676025, 20.622522>,  <19.956839, 19.002817, 20.699696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739464, 18.676025, 20.622522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587690, -0.206154, -0.782382,
		0.599416, -0.538558, 0.592162,
		-0.543435, -0.816980, -0.192933,
		19.576433, 18.430931, 20.564642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419439, 18.508577, 20.637548>,  <19.956839, 19.002817, 20.699696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419439, 18.508577, 20.637548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.093756, 18.414072, 20.425419>,  <19.898346, 18.357368, 20.298141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.093756, 18.414072, 20.425419>,  <20.419439, 18.508577, 20.637548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093756, 18.414072, 20.425419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568184, -0.136579, -0.811488,
		0.119295, -0.962042, 0.245446,
		-0.814208, -0.236265, -0.530324,
		19.849493, 18.343193, 20.266321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603149, 17.904165, 20.365675>,  <20.419439, 18.508577, 20.637548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603149, 17.904165, 20.365675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320255, 18.080631, 20.144699>,  <20.150518, 18.186510, 20.012114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320255, 18.080631, 20.144699>,  <20.603149, 17.904165, 20.365675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.320255, 18.080631, 20.144699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583324, -0.077354, -0.808548,
		-0.399435, -0.894087, -0.202634,
		-0.707237, 0.441164, -0.552440,
		20.108084, 18.212980, 19.978968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.717901, 17.647314, 19.718971>,  <20.603149, 17.904165, 20.365675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.717901, 17.647314, 19.718971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.500011, 17.977924, 19.662218>,  <20.369278, 18.176291, 19.628166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.500011, 17.977924, 19.662218>,  <20.717901, 17.647314, 19.718971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.500011, 17.977924, 19.662218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572300, 0.242715, -0.783302,
		-0.612982, -0.507883, -0.605233,
		-0.544725, 0.826525, -0.141882,
		20.336594, 18.225882, 19.619654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.275764, 17.067623, 19.953163>,  <20.717901, 17.647314, 19.718971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.275764, 17.067623, 19.953163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536781, 16.792526, 19.825914>,  <21.693392, 16.627468, 19.749565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536781, 16.792526, 19.825914>,  <21.275764, 17.067623, 19.953163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.536781, 16.792526, 19.825914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500964, -0.706532, 0.499847,
		-0.568529, -0.166803, -0.805575,
		0.652541, -0.687742, -0.318122,
		21.732544, 16.586205, 19.730478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.963076, 16.409096, 19.636156>,  <21.275764, 17.067623, 19.953163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.963076, 16.409096, 19.636156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.327227, 16.327595, 19.780209>,  <21.545717, 16.278694, 19.866640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.327227, 16.327595, 19.780209>,  <20.963076, 16.409096, 19.636156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.327227, 16.327595, 19.780209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406095, -0.606893, 0.683204,
		0.079357, -0.768222, -0.635246,
		0.910379, -0.203752, 0.360132,
		21.600340, 16.266468, 19.888248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.925911, 15.735156, 19.706091>,  <20.963076, 16.409096, 19.636156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.925911, 15.735156, 19.706091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.245462, 15.819712, 19.931339>,  <21.437193, 15.870445, 20.066488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.245462, 15.819712, 19.931339>,  <20.925911, 15.735156, 19.706091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.245462, 15.819712, 19.931339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263355, -0.718776, 0.643432,
		0.540774, -0.662326, -0.518545,
		0.798879, 0.211389, 0.563122,
		21.485126, 15.883128, 20.100275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.228771, 15.050823, 19.876892>,  <20.925911, 15.735156, 19.706091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.228771, 15.050823, 19.876892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.375948, 15.294272, 20.158089>,  <21.464254, 15.440342, 20.326807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.375948, 15.294272, 20.158089>,  <21.228771, 15.050823, 19.876892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375948, 15.294272, 20.158089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226831, -0.674439, 0.702623,
		0.901758, -0.417984, -0.110099,
		0.367940, 0.608622, 0.702993,
		21.486330, 15.476859, 20.368986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932402, 14.790328, 20.170429>,  <21.228771, 15.050823, 19.876892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932402, 14.790328, 20.170429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.715162, 15.007324, 20.426786>,  <21.584818, 15.137522, 20.580601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.715162, 15.007324, 20.426786>,  <21.932402, 14.790328, 20.170429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.715162, 15.007324, 20.426786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057692, -0.737359, 0.673033,
		0.837684, 0.402498, 0.369162,
		-0.543099, 0.542491, 0.640895,
		21.552233, 15.170072, 20.619055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.239532, 14.692678, 20.818605>,  <21.932402, 14.790328, 20.170429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.239532, 14.692678, 20.818605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.878515, 14.850558, 20.887461>,  <21.661905, 14.945286, 20.928774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.878515, 14.850558, 20.887461>,  <22.239532, 14.692678, 20.818605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878515, 14.850558, 20.887461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091835, -0.567000, 0.818582,
		0.420697, 0.722996, 0.547988,
		-0.902541, 0.394699, 0.172139,
		21.607754, 14.968968, 20.939102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220325, 14.791229, 21.534176>,  <22.239532, 14.692678, 20.818605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220325, 14.791229, 21.534176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840004, 14.782372, 21.410576>,  <21.611811, 14.777057, 21.336416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840004, 14.782372, 21.410576>,  <22.220325, 14.791229, 21.534176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.840004, 14.782372, 21.410576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243538, -0.563045, 0.789728,
		-0.191467, 0.826130, 0.529953,
		-0.950805, -0.022143, -0.308999,
		21.554762, 14.775728, 21.317877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885460, 14.894156, 22.187157>,  <22.220325, 14.791229, 21.534176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885460, 14.894156, 22.187157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621870, 14.735331, 21.931627>,  <21.463717, 14.640036, 21.778311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621870, 14.735331, 21.931627>,  <21.885460, 14.894156, 22.187157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621870, 14.735331, 21.931627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344319, -0.595853, 0.725537,
		-0.668726, 0.698070, 0.255937,
		-0.658976, -0.397061, -0.638821,
		21.424177, 14.616212, 21.739981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.352369, 14.666223, 22.697119>,  <21.885460, 14.894156, 22.187157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.352369, 14.666223, 22.697119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251879, 14.502243, 22.346388>,  <21.191584, 14.403855, 22.135948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251879, 14.502243, 22.346388>,  <21.352369, 14.666223, 22.697119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.251879, 14.502243, 22.346388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676564, -0.573459, 0.461959,
		-0.692204, 0.709287, -0.133288,
		-0.251226, -0.409948, -0.876829,
		21.176512, 14.379259, 22.083340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.631945, 14.599617, 22.740580>,  <21.352369, 14.666223, 22.697119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.631945, 14.599617, 22.740580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.735918, 14.323228, 22.470768>,  <20.798302, 14.157394, 22.308880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.735918, 14.323228, 22.470768>,  <20.631945, 14.599617, 22.740580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.735918, 14.323228, 22.470768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616343, -0.656460, 0.434950,
		-0.743341, 0.302684, -0.596513,
		0.259934, -0.690973, -0.674530,
		20.813898, 14.115936, 22.268410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.950211, 14.415254, 22.470564>,  <20.631945, 14.599617, 22.740580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.950211, 14.415254, 22.470564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201345, 14.105441, 22.439772>,  <20.352026, 13.919554, 22.421297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201345, 14.105441, 22.439772>,  <19.950211, 14.415254, 22.470564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.201345, 14.105441, 22.439772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669428, -0.587789, 0.454281,
		-0.397101, -0.233682, -0.887527,
		0.627835, -0.774530, -0.076978,
		20.389696, 13.873082, 22.416677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.548271, 13.869056, 22.089903>,  <19.950211, 14.415254, 22.470564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.548271, 13.869056, 22.089903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849813, 13.705543, 22.295658>,  <20.030739, 13.607434, 22.419111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849813, 13.705543, 22.295658>,  <19.548271, 13.869056, 22.089903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849813, 13.705543, 22.295658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643541, -0.617252, 0.452609,
		0.132488, -0.672233, -0.728389,
		0.753858, -0.408783, 0.514388,
		20.075972, 13.582908, 22.449974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399858, 13.170693, 22.073719>,  <19.548271, 13.869056, 22.089903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399858, 13.170693, 22.073719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662844, 13.237265, 22.367670>,  <19.820635, 13.277207, 22.544041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662844, 13.237265, 22.367670>,  <19.399858, 13.170693, 22.073719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662844, 13.237265, 22.367670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543149, -0.571295, 0.615314,
		0.522237, -0.803694, -0.285210,
		0.657463, 0.166428, 0.734877,
		19.860083, 13.287193, 22.588133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521421, 12.604053, 22.434765>,  <19.399858, 13.170693, 22.073719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.521421, 12.604053, 22.434765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667648, 12.839071, 22.723528>,  <19.755384, 12.980083, 22.896786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667648, 12.839071, 22.723528>,  <19.521421, 12.604053, 22.434765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.667648, 12.839071, 22.723528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595194, -0.448736, 0.666619,
		0.715616, -0.673368, 0.185662,
		0.365567, 0.587548, 0.721906,
		19.777319, 13.015336, 22.940100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819416, 12.105349, 22.042765>,  <19.521421, 12.604053, 22.434765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819416, 12.105349, 22.042765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.799532, 11.735962, 21.890587>,  <19.787601, 11.514330, 21.799280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.799532, 11.735962, 21.890587>,  <19.819416, 12.105349, 22.042765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799532, 11.735962, 21.890587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293560, 0.350580, -0.889335,
		0.954647, -0.155894, 0.253665,
		-0.049712, -0.923467, -0.380444,
		19.784618, 11.458921, 21.776453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.457802, 11.874002, 21.698471>,  <19.819416, 12.105349, 22.042765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.457802, 11.874002, 21.698471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148479, 11.673062, 21.543736>,  <19.962887, 11.552499, 21.450893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148479, 11.673062, 21.543736>,  <20.457802, 11.874002, 21.698471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.148479, 11.673062, 21.543736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316041, 0.223519, -0.922040,
		0.549652, -0.835275, -0.014086,
		-0.773306, -0.502349, -0.386839,
		19.916489, 11.522358, 21.427685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.836103, 11.547695, 21.135544>,  <20.457802, 11.874002, 21.698471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.836103, 11.547695, 21.135544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449160, 11.504997, 21.043613>,  <20.216993, 11.479379, 20.988455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449160, 11.504997, 21.043613>,  <20.836103, 11.547695, 21.135544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449160, 11.504997, 21.043613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201897, 0.223435, -0.953580,
		0.153139, -0.968856, -0.194591,
		-0.967361, -0.106743, -0.229826,
		20.158951, 11.472974, 20.974665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.789621, 11.199136, 20.474583>,  <20.836103, 11.547695, 21.135544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.789621, 11.199136, 20.474583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.426895, 11.367141, 20.488882>,  <20.209259, 11.467944, 20.497461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.426895, 11.367141, 20.488882>,  <20.789621, 11.199136, 20.474583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426895, 11.367141, 20.488882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054422, 0.200753, -0.978129,
		-0.418004, -0.885035, -0.204904,
		-0.906813, 0.420013, 0.035751,
		20.154852, 11.493145, 20.499607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.396679, 10.899094, 19.892607>,  <20.789621, 11.199136, 20.474583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.396679, 10.899094, 19.892607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249443, 11.255618, 19.998491>,  <20.161100, 11.469533, 20.062021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249443, 11.255618, 19.998491>,  <20.396679, 10.899094, 19.892607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249443, 11.255618, 19.998491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059613, 0.261491, -0.963363,
		-0.927876, -0.370387, -0.043119,
		-0.368092, 0.891312, 0.264711,
		20.139015, 11.523011, 20.077904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056744, 11.150417, 19.236845>,  <20.396679, 10.899094, 19.892607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056744, 11.150417, 19.236845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.039410, 11.483862, 19.457106>,  <20.029009, 11.683928, 19.589262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.039410, 11.483862, 19.457106>,  <20.056744, 11.150417, 19.236845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.039410, 11.483862, 19.457106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084626, 0.546124, -0.833419,
		-0.995470, -0.082717, 0.046878,
		-0.043337, 0.833610, 0.550650,
		20.026409, 11.733945, 19.622301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507431, 11.467580, 18.991806>,  <20.056744, 11.150417, 19.236845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.507431, 11.467580, 18.991806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.726030, 11.748241, 19.174681>,  <19.857191, 11.916638, 19.284405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.726030, 11.748241, 19.174681>,  <19.507431, 11.467580, 18.991806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.726030, 11.748241, 19.174681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183563, 0.633008, -0.752067,
		-0.817094, 0.327082, 0.474737,
		0.546500, 0.701654, 0.457187,
		19.889980, 11.958737, 19.311836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.123678, 12.093039, 18.983543>,  <19.507431, 11.467580, 18.991806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.123678, 12.093039, 18.983543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511013, 12.188286, 19.013531>,  <19.743414, 12.245435, 19.031523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511013, 12.188286, 19.013531>,  <19.123678, 12.093039, 18.983543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.511013, 12.188286, 19.013531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075395, 0.565227, -0.821483,
		-0.237984, 0.789822, 0.565284,
		0.968338, 0.238119, 0.074966,
		19.801514, 12.259722, 19.036020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.242554, 12.788218, 18.720623>,  <19.123678, 12.093039, 18.983543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.242554, 12.788218, 18.720623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.608059, 12.625720, 18.719738>,  <19.827362, 12.528222, 18.719208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.608059, 12.625720, 18.719738>,  <19.242554, 12.788218, 18.720623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608059, 12.625720, 18.719738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255677, 0.579310, -0.773970,
		0.315702, 0.706659, 0.633219,
		0.913762, -0.406243, -0.002213,
		19.882187, 12.503847, 18.719074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.696800, 13.355593, 18.568167>,  <19.242554, 12.788218, 18.720623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.696800, 13.355593, 18.568167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925663, 13.037990, 18.486004>,  <20.062981, 12.847428, 18.436707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925663, 13.037990, 18.486004>,  <19.696800, 13.355593, 18.568167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.925663, 13.037990, 18.486004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364502, 0.470538, -0.803575,
		0.734695, 0.384899, 0.558638,
		0.572156, -0.794007, -0.205405,
		20.097309, 12.799788, 18.424383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.220428, 13.626237, 18.232941>,  <19.696800, 13.355593, 18.568167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.220428, 13.626237, 18.232941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.251537, 13.242583, 18.124121>,  <20.270203, 13.012391, 18.058828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.251537, 13.242583, 18.124121>,  <20.220428, 13.626237, 18.232941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251537, 13.242583, 18.124121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550168, 0.268857, -0.790589,
		0.831425, -0.088186, 0.548595,
		0.077774, -0.959135, -0.272051,
		20.274870, 12.954843, 18.042505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.919315, 13.625993, 18.000526>,  <20.220428, 13.626237, 18.232941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.919315, 13.625993, 18.000526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.707924, 13.317291, 17.859043>,  <20.581089, 13.132071, 17.774153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.707924, 13.317291, 17.859043>,  <20.919315, 13.625993, 18.000526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.707924, 13.317291, 17.859043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254731, 0.253291, -0.933250,
		0.809830, -0.583301, 0.062732,
		-0.528477, -0.771754, -0.353707,
		20.549381, 13.085765, 17.752932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<17.699280, 7.904155, 25.709919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.955252, 8.037202, 25.987005>,  <18.108835, 8.117030, 26.153257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.955252, 8.037202, 25.987005>,  <17.699280, 7.904155, 25.709919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.955252, 8.037202, 25.987005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198519, 0.799304, -0.567189,
		-0.742347, 0.500479, 0.445467,
		0.639930, 0.332617, 0.692716,
		18.147230, 8.136987, 26.194820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.521957, 8.540483, 25.819120>,  <17.699280, 7.904155, 25.709919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.521957, 8.540483, 25.819120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.900524, 8.555046, 25.947477>,  <18.127665, 8.563784, 26.024490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.900524, 8.555046, 25.947477>,  <17.521957, 8.540483, 25.819120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900524, 8.555046, 25.947477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201543, 0.709802, -0.674953,
		-0.252342, 0.703459, 0.664431,
		0.946416, 0.036408, 0.320890,
		18.184448, 8.565969, 26.043745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676405, 9.225438, 25.973486>,  <17.521957, 8.540483, 25.819120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676405, 9.225438, 25.973486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.025148, 9.041302, 25.906616>,  <18.234394, 8.930820, 25.866495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.025148, 9.041302, 25.906616>,  <17.676405, 9.225438, 25.973486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.025148, 9.041302, 25.906616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228481, 0.684229, -0.692551,
		0.433194, 0.565612, 0.701731,
		0.871859, -0.460342, -0.167172,
		18.286707, 8.903199, 25.856464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.084435, 9.769412, 25.802338>,  <17.676405, 9.225438, 25.973486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.084435, 9.769412, 25.802338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.289635, 9.450027, 25.676296>,  <18.412754, 9.258397, 25.600672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.289635, 9.450027, 25.676296>,  <18.084435, 9.769412, 25.802338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289635, 9.450027, 25.676296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257804, 0.493456, -0.830685,
		0.818760, 0.344906, 0.458989,
		0.513000, -0.798461, -0.315104,
		18.443535, 9.210489, 25.581764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.812660, 9.989838, 25.720388>,  <18.084435, 9.769412, 25.802338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.812660, 9.989838, 25.720388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.810675, 9.655863, 25.500259>,  <18.809484, 9.455478, 25.368181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.810675, 9.655863, 25.500259>,  <18.812660, 9.989838, 25.720388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.810675, 9.655863, 25.500259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546142, 0.458742, -0.700918,
		0.837678, -0.304032, 0.453718,
		-0.004962, -0.834938, -0.550322,
		18.809187, 9.405381, 25.335163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564451, 9.918803, 25.546083>,  <18.812660, 9.989838, 25.720388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.564451, 9.918803, 25.546083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.291178, 9.767535, 25.296206>,  <19.127213, 9.676775, 25.146278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.291178, 9.767535, 25.296206>,  <19.564451, 9.918803, 25.546083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291178, 9.767535, 25.296206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385335, 0.539974, -0.748294,
		0.620302, -0.751941, -0.223180,
		-0.683185, -0.378169, -0.624697,
		19.086222, 9.654084, 25.108797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.873343, 9.627260, 24.857422>,  <19.564451, 9.918803, 25.546083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.873343, 9.627260, 24.857422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.489201, 9.664245, 24.752224>,  <19.258715, 9.686436, 24.689106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.489201, 9.664245, 24.752224>,  <19.873343, 9.627260, 24.857422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489201, 9.664245, 24.752224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266266, 0.583639, -0.767117,
		0.082564, -0.806732, -0.585121,
		-0.960357, 0.092461, -0.262993,
		19.201094, 9.691983, 24.673326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767937, 9.259298, 24.258636>,  <19.873343, 9.627260, 24.857422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767937, 9.259298, 24.258636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.455439, 9.508256, 24.239546>,  <19.267939, 9.657631, 24.228090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.455439, 9.508256, 24.239546>,  <19.767937, 9.259298, 24.258636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.455439, 9.508256, 24.239546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403869, 0.445683, -0.798910,
		-0.475965, -0.643422, -0.599554,
		-0.781247, 0.622395, -0.047728,
		19.221064, 9.694974, 24.225227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687601, 9.256175, 23.530066>,  <19.767937, 9.259298, 24.258636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687601, 9.256175, 23.530066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.457123, 9.565685, 23.635344>,  <19.318836, 9.751391, 23.698511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.457123, 9.565685, 23.635344>,  <19.687601, 9.256175, 23.530066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.457123, 9.565685, 23.635344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256290, 0.476839, -0.840797,
		-0.776090, -0.417008, -0.473063,
		-0.576194, 0.773776, 0.263195,
		19.284266, 9.797818, 23.714302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158392, 9.423574, 22.985518>,  <19.687601, 9.256175, 23.530066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.158392, 9.423574, 22.985518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.193689, 9.768618, 23.184765>,  <19.214869, 9.975643, 23.304314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.193689, 9.768618, 23.184765>,  <19.158392, 9.423574, 22.985518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.193689, 9.768618, 23.184765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038361, 0.496754, -0.867043,
		-0.995360, 0.095621, 0.010745,
		0.088245, 0.862608, 0.498117,
		19.220163, 10.027400, 23.334200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.836411, 9.884457, 22.554197>,  <19.158392, 9.423574, 22.985518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.836411, 9.884457, 22.554197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.040751, 10.122902, 22.801964>,  <19.163355, 10.265969, 22.950624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.040751, 10.122902, 22.801964>,  <18.836411, 9.884457, 22.554197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040751, 10.122902, 22.801964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084123, 0.682409, -0.726113,
		-0.855543, 0.423044, 0.298463,
		0.510852, 0.596113, 0.619418,
		19.194006, 10.301736, 22.987789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558062, 10.512455, 22.454376>,  <18.836411, 9.884457, 22.554197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558062, 10.512455, 22.454376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.929846, 10.562081, 22.593351>,  <19.152916, 10.591857, 22.676737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.929846, 10.562081, 22.593351>,  <18.558062, 10.512455, 22.454376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929846, 10.562081, 22.593351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206239, 0.606123, -0.768167,
		-0.305892, 0.785635, 0.537780,
		0.929460, 0.124065, 0.347436,
		19.208683, 10.599300, 22.697582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.699154, 11.320662, 22.393345>,  <18.558062, 10.512455, 22.454376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.699154, 11.320662, 22.393345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.057192, 11.146967, 22.433826>,  <19.272015, 11.042750, 22.458115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.057192, 11.146967, 22.433826>,  <18.699154, 11.320662, 22.393345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057192, 11.146967, 22.433826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364434, 0.581740, -0.727163,
		0.256888, 0.687762, 0.678964,
		0.895096, -0.434237, 0.101202,
		19.325720, 11.016696, 22.464188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.236481, 11.846487, 22.470768>,  <18.699154, 11.320662, 22.393345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.236481, 11.846487, 22.470768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.419193, 11.526237, 22.315666>,  <19.528822, 11.334088, 22.222605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.419193, 11.526237, 22.315666>,  <19.236481, 11.846487, 22.470768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419193, 11.526237, 22.315666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416349, 0.577605, -0.702158,
		0.786132, 0.159293, 0.597179,
		0.456782, -0.800623, -0.387753,
		19.556229, 11.286051, 22.199341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.641035, 12.115106, 23.059759>,  <19.236481, 11.846487, 22.470768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.641035, 12.115106, 23.059759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.616545, 12.488045, 23.202297>,  <19.601851, 12.711808, 23.287819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.616545, 12.488045, 23.202297>,  <19.641035, 12.115106, 23.059759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616545, 12.488045, 23.202297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498890, -0.337804, 0.798121,
		0.864500, -0.128911, 0.485821,
		-0.061226, 0.932347, 0.356344,
		19.598177, 12.767749, 23.309200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921474, 12.078352, 23.775503>,  <19.641035, 12.115106, 23.059759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921474, 12.078352, 23.775503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.687191, 12.402228, 23.760824>,  <19.546621, 12.596554, 23.752016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.687191, 12.402228, 23.760824>,  <19.921474, 12.078352, 23.775503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687191, 12.402228, 23.760824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379083, -0.233636, 0.895383,
		0.716409, 0.538345, 0.443782,
		-0.585709, 0.809690, -0.036698,
		19.511478, 12.645136, 23.749815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.893503, 12.268968, 24.504623>,  <19.921474, 12.078352, 23.775503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.893503, 12.268968, 24.504623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.596638, 12.480041, 24.339336>,  <19.418518, 12.606684, 24.240164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.596638, 12.480041, 24.339336>,  <19.893503, 12.268968, 24.504623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.596638, 12.480041, 24.339336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546344, -0.119209, 0.829035,
		0.388207, 0.841036, 0.376768,
		-0.742162, 0.527681, -0.413217,
		19.373989, 12.638345, 24.215372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.598213, 12.745321, 25.027737>,  <19.893503, 12.268968, 24.504623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.598213, 12.745321, 25.027737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.296139, 12.701779, 24.769173>,  <19.114895, 12.675654, 24.614035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.296139, 12.701779, 24.769173>,  <19.598213, 12.745321, 25.027737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.296139, 12.701779, 24.769173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606293, -0.258901, 0.751916,
		-0.249207, 0.959750, 0.129520,
		-0.755185, -0.108856, -0.646410,
		19.069584, 12.669123, 24.575249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087955, 13.156731, 25.282166>,  <19.598213, 12.745321, 25.027737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.087955, 13.156731, 25.282166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.896074, 12.904784, 25.037821>,  <18.780945, 12.753616, 24.891214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.896074, 12.904784, 25.037821>,  <19.087955, 13.156731, 25.282166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896074, 12.904784, 25.037821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524077, -0.352688, 0.775213,
		-0.703724, 0.692012, -0.160912,
		-0.479704, -0.629866, -0.610862,
		18.752163, 12.715824, 24.854563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443211, 13.256295, 25.533232>,  <19.087955, 13.156731, 25.282166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.443211, 13.256295, 25.533232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.426422, 12.928036, 25.305277>,  <18.416349, 12.731080, 25.168503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.426422, 12.928036, 25.305277>,  <18.443211, 13.256295, 25.533232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.426422, 12.928036, 25.305277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470107, -0.487085, 0.736035,
		-0.881611, 0.298802, -0.365349,
		-0.041973, -0.820650, -0.569888,
		18.413830, 12.681841, 25.134310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721888, 13.005940, 25.512981>,  <18.443211, 13.256295, 25.533232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721888, 13.005940, 25.512981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.963654, 12.694270, 25.446566>,  <18.108713, 12.507268, 25.406715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.963654, 12.694270, 25.446566>,  <17.721888, 13.005940, 25.512981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.963654, 12.694270, 25.446566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420717, -0.489163, 0.764013,
		-0.676522, -0.391923, -0.623469,
		0.604412, -0.779176, -0.166041,
		18.144978, 12.460517, 25.396753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252623, 12.391553, 25.594891>,  <17.721888, 13.005940, 25.512981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252623, 12.391553, 25.594891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.623838, 12.254273, 25.652800>,  <17.846567, 12.171906, 25.687544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.623838, 12.254273, 25.652800>,  <17.252623, 12.391553, 25.594891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623838, 12.254273, 25.652800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338412, -0.614465, 0.712678,
		-0.155634, -0.710385, -0.686390,
		0.928039, -0.343199, 0.144771,
		17.902250, 12.151314, 25.696230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.137154, 11.714210, 25.557055>,  <17.252623, 12.391553, 25.594891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.137154, 11.714210, 25.557055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.481709, 11.770198, 25.752367>,  <17.688442, 11.803791, 25.869555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.481709, 11.770198, 25.752367>,  <17.137154, 11.714210, 25.557055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481709, 11.770198, 25.752367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284465, -0.663463, 0.692023,
		0.420819, -0.735000, -0.531683,
		0.861389, 0.139971, 0.488280,
		17.740126, 11.812189, 25.898851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262539, 11.083912, 25.767199>,  <17.137154, 11.714210, 25.557055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262539, 11.083912, 25.767199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.485525, 11.320314, 26.000418>,  <17.619316, 11.462156, 26.140348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.485525, 11.320314, 26.000418>,  <17.262539, 11.083912, 25.767199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.485525, 11.320314, 26.000418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251332, -0.549199, 0.797002,
		0.791243, -0.590839, -0.157619,
		0.557464, 0.591008, 0.583047,
		17.652765, 11.497617, 26.175331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.530340, 10.650992, 26.325056>,  <17.262539, 11.083912, 25.767199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.530340, 10.650992, 26.325056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.602518, 11.020269, 26.460794>,  <17.645824, 11.241836, 26.542238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.602518, 11.020269, 26.460794>,  <17.530340, 10.650992, 26.325056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.602518, 11.020269, 26.460794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037278, -0.338345, 0.940284,
		0.982879, -0.182319, -0.026638,
		0.180444, 0.923192, 0.339348,
		17.656651, 11.297227, 26.562599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072647, 10.509501, 26.873838>,  <17.530340, 10.650992, 26.325056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.072647, 10.509501, 26.873838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.884705, 10.854538, 26.948854>,  <17.771938, 11.061560, 26.993864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.884705, 10.854538, 26.948854>,  <18.072647, 10.509501, 26.873838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.884705, 10.854538, 26.948854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156852, -0.290654, 0.943884,
		0.868695, 0.414075, 0.271865,
		-0.469858, 0.862590, 0.187541,
		17.743748, 11.113315, 27.005117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221924, 10.730683, 27.532911>,  <18.072647, 10.509501, 26.873838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221924, 10.730683, 27.532911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.882086, 10.926247, 27.453762>,  <17.678183, 11.043585, 27.406273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.882086, 10.926247, 27.453762>,  <18.221924, 10.730683, 27.532911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.882086, 10.926247, 27.453762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345184, -0.231753, 0.909472,
		0.398789, 0.840988, 0.365660,
		-0.849597, 0.488907, -0.197875,
		17.627207, 11.072919, 27.394400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142326, 11.146539, 28.060402>,  <18.221924, 10.730683, 27.532911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142326, 11.146539, 28.060402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.785070, 11.087760, 27.890364>,  <17.570717, 11.052493, 27.788342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.785070, 11.087760, 27.890364>,  <18.142326, 11.146539, 28.060402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.785070, 11.087760, 27.890364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394358, -0.198642, 0.897231,
		-0.216286, 0.968993, 0.119466,
		-0.893142, -0.146946, -0.425094,
		17.517128, 11.043676, 27.762836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.865325, 10.282063, 25.905758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.238711, 10.160212, 25.830032>,  <14.462744, 10.087100, 25.784597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.238711, 10.160212, 25.830032>,  <13.865325, 10.282063, 25.905758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.238711, 10.160212, 25.830032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014872, 0.560256, -0.828186,
		0.358355, 0.770269, 0.527511,
		0.933467, -0.304630, -0.189315,
		14.518751, 10.068823, 25.773237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317660, 10.924187, 25.839823>,  <13.865325, 10.282063, 25.905758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.317660, 10.924187, 25.839823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.511057, 10.622359, 25.662346>,  <14.627095, 10.441263, 25.555861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.511057, 10.622359, 25.662346>,  <14.317660, 10.924187, 25.839823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.511057, 10.622359, 25.662346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157901, 0.573742, -0.803671,
		0.860990, 0.318509, 0.396546,
		0.483492, -0.754568, -0.443693,
		14.656104, 10.395988, 25.529238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.922387, 11.281156, 25.543491>,  <14.317660, 10.924187, 25.839823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.922387, 11.281156, 25.543491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.891340, 10.943228, 25.331736>,  <14.872712, 10.740471, 25.204681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.891340, 10.943228, 25.331736>,  <14.922387, 11.281156, 25.543491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891340, 10.943228, 25.331736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118841, 0.519367, -0.846248,
		0.989875, -0.128596, 0.060089,
		-0.077616, -0.844820, -0.529390,
		14.868055, 10.689781, 25.172918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481230, 11.292911, 25.168810>,  <14.922387, 11.281156, 25.543491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.481230, 11.292911, 25.168810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.234886, 11.048296, 24.970118>,  <15.087080, 10.901527, 24.850903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.234886, 11.048296, 24.970118>,  <15.481230, 11.292911, 25.168810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234886, 11.048296, 24.970118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167075, 0.514770, -0.840891,
		0.769938, -0.600861, -0.214852,
		-0.615858, -0.611538, -0.496729,
		15.050128, 10.864835, 24.821098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874510, 11.104742, 24.584269>,  <15.481230, 11.292911, 25.168810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874510, 11.104742, 24.584269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.491719, 11.042550, 24.486273>,  <15.262045, 11.005235, 24.427475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.491719, 11.042550, 24.486273>,  <15.874510, 11.104742, 24.584269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.491719, 11.042550, 24.486273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093583, 0.633821, -0.767798,
		0.274656, -0.757692, -0.592002,
		-0.956977, -0.155479, -0.244990,
		15.204626, 10.995906, 24.412775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.824183, 10.870738, 23.932312>,  <15.874510, 11.104742, 24.584269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.824183, 10.870738, 23.932312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.455330, 11.007626, 24.004482>,  <15.234017, 11.089758, 24.047785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.455330, 11.007626, 24.004482>,  <15.824183, 10.870738, 23.932312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455330, 11.007626, 24.004482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030790, 0.529817, -0.847553,
		-0.385642, -0.776002, -0.499100,
		-0.922134, 0.342220, 0.180427,
		15.178690, 11.110291, 24.058611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.585932, 10.940702, 23.338757>,  <15.824183, 10.870738, 23.932312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.585932, 10.940702, 23.338757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.329236, 11.171112, 23.541286>,  <15.175219, 11.309358, 23.662806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.329236, 11.171112, 23.541286>,  <15.585932, 10.940702, 23.338757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.329236, 11.171112, 23.541286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053635, 0.624881, -0.778876,
		-0.765044, -0.526993, -0.370116,
		-0.641740, 0.576023, 0.506327,
		15.136714, 11.343919, 23.693184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.014464, 11.141442, 22.839443>,  <15.585932, 10.940702, 23.338757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.014464, 11.141442, 22.839443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.979990, 11.404579, 23.138727>,  <14.959306, 11.562461, 23.318296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.979990, 11.404579, 23.138727>,  <15.014464, 11.141442, 22.839443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979990, 11.404579, 23.138727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197862, 0.724741, -0.660001,
		-0.976434, -0.204925, 0.067700,
		-0.086185, 0.657842, 0.748208,
		14.954134, 11.601932, 23.363190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445828, 11.511847, 22.653198>,  <15.014464, 11.141442, 22.839443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.445828, 11.511847, 22.653198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.592204, 11.770542, 22.920876>,  <14.680029, 11.925759, 23.081482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.592204, 11.770542, 22.920876>,  <14.445828, 11.511847, 22.653198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592204, 11.770542, 22.920876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226297, 0.759321, -0.610099,
		-0.902706, 0.071823, 0.424220,
		0.365938, 0.646740, 0.669191,
		14.701985, 11.964564, 23.121634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011329, 12.007091, 22.729214>,  <14.445828, 11.511847, 22.653198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.011329, 12.007091, 22.729214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.356852, 12.180062, 22.832628>,  <14.564165, 12.283845, 22.894676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.356852, 12.180062, 22.832628>,  <14.011329, 12.007091, 22.729214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.356852, 12.180062, 22.832628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258247, 0.820638, -0.509766,
		-0.432601, 0.373574, 0.820548,
		0.863808, 0.432429, 0.258535,
		14.615994, 12.309792, 22.910189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.828205, 12.608279, 22.850328>,  <14.011329, 12.007091, 22.729214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.828205, 12.608279, 22.850328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.222980, 12.626306, 22.788464>,  <14.459846, 12.637121, 22.751345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.222980, 12.626306, 22.788464>,  <13.828205, 12.608279, 22.850328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222980, 12.626306, 22.788464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120658, 0.842923, -0.524330,
		0.106740, 0.536143, 0.837351,
		0.986939, 0.045066, -0.154664,
		14.519062, 12.639826, 22.742065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.940107, 13.258583, 22.509642>,  <13.828205, 12.608279, 22.850328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.940107, 13.258583, 22.509642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.305965, 13.101022, 22.473276>,  <14.525480, 13.006485, 22.451456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.305965, 13.101022, 22.473276>,  <13.940107, 13.258583, 22.509642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.305965, 13.101022, 22.473276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193183, 0.623435, -0.757634,
		0.355114, 0.675402, 0.646317,
		0.914644, -0.393904, -0.090915,
		14.580359, 12.982851, 22.446001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341235, 13.856637, 22.474768>,  <13.940107, 13.258583, 22.509642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341235, 13.856637, 22.474768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.535256, 13.561123, 22.287613>,  <14.651670, 13.383815, 22.175320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.535256, 13.561123, 22.287613>,  <14.341235, 13.856637, 22.474768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.535256, 13.561123, 22.287613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009567, 0.530530, -0.847612,
		0.874432, 0.415613, 0.250268,
		0.485053, -0.738785, -0.467889,
		14.680773, 13.339487, 22.147245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.852327, 14.219707, 22.186796>,  <14.341235, 13.856637, 22.474768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.852327, 14.219707, 22.186796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.801226, 13.875232, 21.990009>,  <14.770565, 13.668547, 21.871937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.801226, 13.875232, 21.990009>,  <14.852327, 14.219707, 22.186796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801226, 13.875232, 21.990009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105264, 0.505005, -0.856674,
		0.986204, -0.057656, -0.155168,
		-0.127753, -0.861189, -0.491969,
		14.762899, 13.616875, 21.842419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410134, 14.648283, 22.052237>,  <14.852327, 14.219707, 22.186796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.410134, 14.648283, 22.052237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.452768, 14.995621, 22.245987>,  <15.478349, 15.204023, 22.362238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.452768, 14.995621, 22.245987>,  <15.410134, 14.648283, 22.052237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.452768, 14.995621, 22.245987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056540, -0.481069, 0.874858,
		0.992695, -0.120633, -0.002179,
		0.106585, 0.868343, 0.484375,
		15.484744, 15.256124, 22.391300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964511, 14.540330, 22.572582>,  <15.410134, 14.648283, 22.052237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964511, 14.540330, 22.572582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.758364, 14.864500, 22.684015>,  <15.634675, 15.059002, 22.750875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.758364, 14.864500, 22.684015>,  <15.964511, 14.540330, 22.572582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758364, 14.864500, 22.684015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092592, -0.270514, 0.958253,
		0.851952, 0.519648, 0.064376,
		-0.515369, 0.810425, 0.278581,
		15.603753, 15.107628, 22.767590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.399235, 14.844755, 23.110083>,  <15.964511, 14.540330, 22.572582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.399235, 14.844755, 23.110083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.021461, 14.972913, 23.139454>,  <15.794797, 15.049808, 23.157078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.021461, 14.972913, 23.139454>,  <16.399235, 14.844755, 23.110083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021461, 14.972913, 23.139454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019510, -0.168361, 0.985532,
		0.328123, 0.932203, 0.152755,
		-0.944434, 0.320395, 0.073430,
		15.738132, 15.069032, 23.161484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.365072, 15.121746, 23.754330>,  <16.399235, 14.844755, 23.110083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.365072, 15.121746, 23.754330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.980833, 15.052135, 23.667643>,  <15.750290, 15.010369, 23.615631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.980833, 15.052135, 23.667643>,  <16.365072, 15.121746, 23.754330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980833, 15.052135, 23.667643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183941, -0.186506, 0.965081,
		-0.208370, 0.966918, 0.147147,
		-0.960598, -0.174027, -0.216718,
		15.692654, 14.999928, 23.602627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040215, 15.386185, 24.334106>,  <16.365072, 15.121746, 23.754330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040215, 15.386185, 24.334106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.736803, 15.212778, 24.139502>,  <15.554755, 15.108734, 24.022738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.736803, 15.212778, 24.139502>,  <16.040215, 15.386185, 24.334106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.736803, 15.212778, 24.139502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461259, -0.170174, 0.870793,
		-0.460294, 0.884932, -0.070881,
		-0.758531, -0.433515, -0.486513,
		15.509244, 15.082724, 23.993547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343937, 15.732563, 24.611959>,  <16.040215, 15.386185, 24.334106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343937, 15.732563, 24.611959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.341002, 15.353597, 24.483992>,  <15.339240, 15.126217, 24.407211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.341002, 15.353597, 24.483992>,  <15.343937, 15.732563, 24.611959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341002, 15.353597, 24.483992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349017, -0.297383, 0.888679,
		-0.937088, 0.118180, -0.328481,
		-0.007340, -0.947416, -0.319921,
		15.338799, 15.069372, 24.388016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.745628, 15.416736, 24.837620>,  <15.343937, 15.732563, 24.611959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.745628, 15.416736, 24.837620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.973670, 15.100615, 24.747818>,  <15.110495, 14.910942, 24.693937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.973670, 15.100615, 24.747818>,  <14.745628, 15.416736, 24.837620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973670, 15.100615, 24.747818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271311, -0.439033, 0.856528,
		-0.775482, -0.427399, -0.464712,
		0.570104, -0.790304, -0.224504,
		15.144701, 14.863523, 24.680468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.313694, 14.774105, 24.920761>,  <14.745628, 15.416736, 24.837620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.313694, 14.774105, 24.920761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.698310, 14.670098, 24.956160>,  <14.929080, 14.607695, 24.977398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.698310, 14.670098, 24.956160>,  <14.313694, 14.774105, 24.920761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.698310, 14.670098, 24.956160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226799, -0.569902, 0.789794,
		-0.154927, -0.779489, -0.606955,
		0.961540, -0.260017, 0.088494,
		14.986772, 14.592093, 24.982708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.308967, 14.074787, 25.268869>,  <14.313694, 14.774105, 24.920761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.308967, 14.074787, 25.268869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.687462, 14.197687, 25.309330>,  <14.914559, 14.271427, 25.333607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.687462, 14.197687, 25.309330>,  <14.308967, 14.074787, 25.268869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687462, 14.197687, 25.309330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069680, -0.498974, 0.863811,
		0.315878, -0.810322, -0.493557,
		0.946238, 0.307250, 0.101152,
		14.971334, 14.289862, 25.339676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667097, 13.563310, 25.495848>,  <14.308967, 14.074787, 25.268869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667097, 13.563310, 25.495848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.884036, 13.880337, 25.607344>,  <15.014199, 14.070553, 25.674242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.884036, 13.880337, 25.607344>,  <14.667097, 13.563310, 25.495848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.884036, 13.880337, 25.607344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165151, -0.425872, 0.889583,
		0.823763, -0.436428, -0.361864,
		0.542346, 0.792568, 0.278741,
		15.046740, 14.118107, 25.690966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414259, 13.440102, 25.563538>,  <14.667097, 13.563310, 25.495848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.414259, 13.440102, 25.563538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.252658, 13.697588, 25.823511>,  <15.155698, 13.852080, 25.979494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.252658, 13.697588, 25.823511>,  <15.414259, 13.440102, 25.563538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.252658, 13.697588, 25.823511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263207, -0.598648, 0.756534,
		0.876073, 0.476708, 0.072424,
		-0.404002, 0.643716, 0.649932,
		15.131457, 13.890703, 26.018490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863949, 13.372543, 26.151922>,  <15.414259, 13.440102, 25.563538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863949, 13.372543, 26.151922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.521994, 13.544798, 26.267658>,  <15.316820, 13.648150, 26.337099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.521994, 13.544798, 26.267658>,  <15.863949, 13.372543, 26.151922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521994, 13.544798, 26.267658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003153, -0.561999, 0.827132,
		0.518801, 0.706194, 0.481805,
		-0.854889, 0.430636, 0.289339,
		15.265527, 13.673988, 26.354460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074766, 13.519906, 26.840059>,  <15.863949, 13.372543, 26.151922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.074766, 13.519906, 26.840059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.677113, 13.485528, 26.813789>,  <15.438520, 13.464901, 26.798027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.677113, 13.485528, 26.813789>,  <16.074766, 13.519906, 26.840059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.677113, 13.485528, 26.813789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017843, -0.468552, 0.883256,
		-0.106683, 0.879245, 0.464270,
		-0.994133, -0.085944, -0.065675,
		15.378873, 13.459744, 26.794086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.920005, 13.656151, 27.497904>,  <16.074766, 13.519906, 26.840059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.920005, 13.656151, 27.497904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.590251, 13.483084, 27.351923>,  <15.392399, 13.379244, 27.264334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.590251, 13.483084, 27.351923>,  <15.920005, 13.656151, 27.497904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590251, 13.483084, 27.351923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144769, -0.462145, 0.874908,
		-0.547205, 0.774094, 0.318348,
		-0.824384, -0.432667, -0.364953,
		15.342936, 13.353284, 27.242437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.966899, 14.210287, 28.012072>,  <15.920005, 13.656151, 27.497904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.966899, 14.210287, 28.012072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.362169, 14.175829, 28.062807>,  <16.599331, 14.155154, 28.093248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.362169, 14.175829, 28.062807>,  <15.966899, 14.210287, 28.012072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362169, 14.175829, 28.062807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147673, 0.757294, -0.636159,
		-0.041253, 0.647367, 0.761061,
		0.988176, -0.086145, 0.126839,
		16.658623, 14.149985, 28.100859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.233768, 14.892385, 28.225430>,  <15.966899, 14.210287, 28.012072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.233768, 14.892385, 28.225430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.566217, 14.705332, 28.105057>,  <16.765686, 14.593100, 28.032833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.566217, 14.705332, 28.105057>,  <16.233768, 14.892385, 28.225430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.566217, 14.705332, 28.105057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235149, 0.785929, -0.571857,
		0.503928, 0.404518, 0.763165,
		0.831120, -0.467633, -0.300930,
		16.815554, 14.565042, 28.014778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784323, 15.429317, 28.117741>,  <16.233768, 14.892385, 28.225430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784323, 15.429317, 28.117741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.943535, 15.126808, 27.910038>,  <17.039062, 14.945303, 27.785418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.943535, 15.126808, 27.910038>,  <16.784323, 15.429317, 28.117741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943535, 15.126808, 27.910038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528999, 0.651655, -0.543604,
		0.749487, -0.058313, 0.659446,
		0.398032, -0.756270, -0.519255,
		17.062944, 14.899927, 27.754261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.491745, 15.622447, 27.960014>,  <16.784323, 15.429317, 28.117741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.491745, 15.622447, 27.960014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.422047, 15.319271, 27.708565>,  <17.380228, 15.137365, 27.557695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.422047, 15.319271, 27.708565>,  <17.491745, 15.622447, 27.960014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.422047, 15.319271, 27.708565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526351, 0.467843, -0.709984,
		0.832221, -0.454588, 0.317423,
		-0.174246, -0.757940, -0.628622,
		17.369772, 15.091889, 27.519978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.152956, 15.411188, 27.587847>,  <17.491745, 15.622447, 27.960014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.152956, 15.411188, 27.587847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.850132, 15.276066, 27.364151>,  <17.668438, 15.194992, 27.229933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.850132, 15.276066, 27.364151>,  <18.152956, 15.411188, 27.587847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850132, 15.276066, 27.364151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412967, 0.415873, -0.810252,
		0.506282, -0.844355, -0.175337,
		-0.757058, -0.337808, -0.559239,
		17.623014, 15.174725, 27.196379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.460527, 15.406779, 27.024830>,  <18.152956, 15.411188, 27.587847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.460527, 15.406779, 27.024830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.077879, 15.406137, 26.908297>,  <17.848289, 15.405752, 26.838377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.077879, 15.406137, 26.908297>,  <18.460527, 15.406779, 27.024830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077879, 15.406137, 26.908297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229421, 0.612184, -0.756702,
		0.179562, -0.790714, -0.585260,
		-0.956621, -0.001604, -0.291331,
		17.790894, 15.405656, 26.820898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.471966, 15.509076, 26.355015>,  <18.460527, 15.406779, 27.024830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.471966, 15.509076, 26.355015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.085478, 15.595857, 26.410658>,  <17.853584, 15.647924, 26.444044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.085478, 15.595857, 26.410658>,  <18.471966, 15.509076, 26.355015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085478, 15.595857, 26.410658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020467, 0.602659, -0.797736,
		-0.256904, -0.767942, -0.586742,
		-0.966220, 0.216951, 0.139108,
		17.795612, 15.660942, 26.452391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986612, 15.280330, 25.671268>,  <18.471966, 15.509076, 26.355015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986612, 15.280330, 25.671268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.852020, 15.588402, 25.888010>,  <17.771265, 15.773245, 26.018055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.852020, 15.588402, 25.888010>,  <17.986612, 15.280330, 25.671268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852020, 15.588402, 25.888010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061604, 0.556170, -0.828782,
		-0.939674, -0.312248, -0.139693,
		-0.336479, 0.770179, 0.541854,
		17.751076, 15.819455, 26.050566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449581, 15.538424, 25.196638>,  <17.986612, 15.280330, 25.671268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449581, 15.538424, 25.196638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.538618, 15.811160, 25.475363>,  <17.592041, 15.974801, 25.642597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.538618, 15.811160, 25.475363>,  <17.449581, 15.538424, 25.196638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.538618, 15.811160, 25.475363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107318, 0.693263, -0.712649,
		-0.968986, 0.233413, 0.081143,
		0.222594, 0.681839, 0.696812,
		17.605396, 16.015713, 25.684406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.096046, 16.115414, 24.965038>,  <17.449581, 15.538424, 25.196638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.096046, 16.115414, 24.965038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.361897, 16.255713, 25.228933>,  <17.521406, 16.339891, 25.387270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.361897, 16.255713, 25.228933>,  <17.096046, 16.115414, 24.965038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361897, 16.255713, 25.228933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139243, 0.809361, -0.570567,
		-0.734089, 0.471076, 0.489082,
		0.664624, 0.350745, 0.659737,
		17.561283, 16.360935, 25.426855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803337, 16.785774, 25.079102>,  <17.096046, 16.115414, 24.965038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803337, 16.785774, 25.079102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.194033, 16.765865, 25.162533>,  <17.428450, 16.753920, 25.212591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.194033, 16.765865, 25.162533>,  <16.803337, 16.785774, 25.079102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.194033, 16.765865, 25.162533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177021, 0.736113, -0.653300,
		-0.121023, 0.675026, 0.727800,
		0.976738, -0.049771, 0.208580,
		17.487055, 16.750935, 25.225107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.961975, 17.417871, 25.316792>,  <16.803337, 16.785774, 25.079102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.961975, 17.417871, 25.316792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.322542, 17.274307, 25.219934>,  <17.538881, 17.188169, 25.161821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.322542, 17.274307, 25.219934>,  <16.961975, 17.417871, 25.316792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322542, 17.274307, 25.219934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155671, 0.790555, -0.592274,
		0.403999, 0.496191, 0.768491,
		0.901416, -0.358910, -0.242141,
		17.592968, 17.166634, 25.147291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408525, 18.039331, 25.160551>,  <16.961975, 17.417871, 25.316792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408525, 18.039331, 25.160551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.615133, 17.736132, 25.001232>,  <17.739098, 17.554211, 24.905640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.615133, 17.736132, 25.001232>,  <17.408525, 18.039331, 25.160551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615133, 17.736132, 25.001232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362208, 0.614902, -0.700501,
		0.775895, 0.217555, 0.592162,
		0.516519, -0.758001, -0.398299,
		17.770088, 17.508732, 24.881742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108812, 18.216208, 25.080605>,  <17.408525, 18.039331, 25.160551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108812, 18.216208, 25.080605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.060244, 17.932922, 24.802414>,  <18.031103, 17.762951, 24.635500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.060244, 17.932922, 24.802414>,  <18.108812, 18.216208, 25.080605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.060244, 17.932922, 24.802414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488729, 0.567190, -0.662902,
		0.863945, -0.420390, 0.277257,
		-0.121421, -0.708214, -0.695478,
		18.023817, 17.720459, 24.593771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<5.449687, 24.546928, 22.909357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.655820, 24.688402, 22.597116>,  <5.779500, 24.773287, 22.409773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.655820, 24.688402, 22.597116>,  <5.449687, 24.546928, 22.909357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.655820, 24.688402, 22.597116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606241, 0.794257, -0.040352,
		0.605727, 0.494027, 0.623725,
		0.515333, 0.353685, -0.780602,
		5.810420, 24.794508, 22.362936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.719905, 24.575384, 23.007704>,  <5.449687, 24.546928, 22.909357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.719905, 24.575384, 23.007704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.389812, 24.432869, 23.182999>,  <4.191756, 24.347361, 23.288176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.389812, 24.432869, 23.182999>,  <4.719905, 24.575384, 23.007704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.389812, 24.432869, 23.182999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252284, -0.461677, -0.850416,
		0.505316, -0.812350, 0.291105,
		-0.825232, -0.356288, 0.438235,
		4.142242, 24.325983, 23.314468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.589985, 24.002573, 22.648615>,  <4.719905, 24.575384, 23.007704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.589985, 24.002573, 22.648615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.229512, 24.048433, 22.815815>,  <4.013227, 24.075949, 22.916134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.229512, 24.048433, 22.815815>,  <4.589985, 24.002573, 22.648615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.229512, 24.048433, 22.815815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422676, -0.446012, -0.788935,
		0.095982, -0.887654, 0.450398,
		-0.901183, 0.114649, 0.417999,
		3.959157, 24.082829, 22.941216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.091704, 23.338823, 22.690506>,  <4.589985, 24.002573, 22.648615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.091704, 23.338823, 22.690506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.943732, 23.705057, 22.627449>,  <3.854948, 23.924797, 22.589615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.943732, 23.705057, 22.627449>,  <4.091704, 23.338823, 22.690506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.943732, 23.705057, 22.627449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448665, -0.324642, -0.832651,
		-0.813542, -0.237295, 0.530887,
		-0.369932, 0.915586, -0.157644,
		3.832752, 23.979733, 22.580156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.568524, 23.233229, 22.248173>,  <4.091704, 23.338823, 22.690506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.568524, 23.233229, 22.248173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.620548, 23.628746, 22.218859>,  <3.651762, 23.866056, 22.201271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.620548, 23.628746, 22.218859>,  <3.568524, 23.233229, 22.248173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.620548, 23.628746, 22.218859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343839, -0.024346, -0.938713,
		-0.929978, 0.147286, 0.336820,
		0.130059, 0.988794, -0.073284,
		3.659566, 23.925385, 22.196873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.194791, 22.732922, 21.931667>,  <3.568524, 23.233229, 22.248173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.194791, 22.732922, 21.931667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.520015, 22.848038, 21.729239>,  <3.715149, 22.917107, 21.607780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.520015, 22.848038, 21.729239>,  <3.194791, 22.732922, 21.931667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.520015, 22.848038, 21.729239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266255, -0.956852, -0.116368,
		-0.517728, -0.040131, -0.854604,
		0.813060, 0.287789, -0.506074,
		3.763933, 22.934374, 21.577415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.316587, 22.312851, 21.299604>,  <3.194791, 22.732922, 21.931667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.316587, 22.312851, 21.299604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.673459, 22.447113, 21.420504>,  <3.887582, 22.527670, 21.493042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.673459, 22.447113, 21.420504>,  <3.316587, 22.312851, 21.299604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.673459, 22.447113, 21.420504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416429, -0.870419, -0.262599,
		0.174939, 0.360149, -0.916346,
		0.892179, 0.335654, 0.302247,
		3.941113, 22.547810, 21.511177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.894698, 22.374649, 20.787773>,  <3.316587, 22.312851, 21.299604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.894698, 22.374649, 20.787773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.057236, 22.292953, 21.144014>,  <4.154759, 22.243937, 21.357759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.057236, 22.292953, 21.144014>,  <3.894698, 22.374649, 20.787773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.057236, 22.292953, 21.144014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499985, -0.766125, -0.403815,
		0.764787, 0.609376, -0.209195,
		0.406345, -0.204238, 0.890601,
		4.179140, 22.231682, 21.411194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.725671, 22.259993, 20.712898>,  <3.894698, 22.374649, 20.787773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.725671, 22.259993, 20.712898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.590888, 22.076921, 21.042015>,  <4.510018, 21.967079, 21.239485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.590888, 22.076921, 21.042015>,  <4.725671, 22.259993, 20.712898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.590888, 22.076921, 21.042015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433015, -0.851325, -0.296216,
		0.836036, 0.256469, 0.485043,
		-0.336958, -0.457679, 0.822793,
		4.489800, 21.939617, 21.288853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.304724, 21.817974, 20.823870>,  <4.725671, 22.259993, 20.712898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.304724, 21.817974, 20.823870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.998628, 21.684946, 21.044342>,  <4.814970, 21.605129, 21.176626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.998628, 21.684946, 21.044342>,  <5.304724, 21.817974, 20.823870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.998628, 21.684946, 21.044342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246023, -0.942308, -0.227000,
		0.594876, -0.038107, 0.802914,
		-0.765242, -0.332572, 0.551181,
		4.769055, 21.585175, 21.209696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383730, 21.465368, 21.522427>,  <5.304724, 21.817974, 20.823870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383730, 21.465368, 21.522427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.047839, 21.306416, 21.374401>,  <4.846304, 21.211044, 21.285585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.047839, 21.306416, 21.374401>,  <5.383730, 21.465368, 21.522427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.047839, 21.306416, 21.374401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512843, -0.804370, -0.299967,
		-0.178465, -0.441675, 0.879246,
		-0.839727, -0.397382, -0.370062,
		4.795921, 21.187201, 21.263382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.354022, 20.749449, 21.751114>,  <5.383730, 21.465368, 21.522427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.354022, 20.749449, 21.751114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.121547, 20.764223, 21.425941>,  <4.982062, 20.773088, 21.230839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.121547, 20.764223, 21.425941>,  <5.354022, 20.749449, 21.751114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.121547, 20.764223, 21.425941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279496, -0.929140, -0.242035,
		-0.764267, -0.367879, 0.529680,
		-0.581187, 0.036936, -0.812931,
		4.947191, 20.775305, 21.182062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.014142, 20.104168, 21.702904>,  <5.354022, 20.749449, 21.751114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.014142, 20.104168, 21.702904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.018225, 20.252083, 21.331280>,  <5.020674, 20.340832, 21.108305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.018225, 20.252083, 21.331280>,  <5.014142, 20.104168, 21.702904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.018225, 20.252083, 21.331280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247095, -0.901229, -0.355993,
		-0.968937, -0.225933, -0.100571,
		0.010207, 0.369786, -0.929061,
		5.021287, 20.363018, 21.052561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.665324, 19.701759, 21.304976>,  <5.014142, 20.104168, 21.702904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.665324, 19.701759, 21.304976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.845853, 19.884079, 20.998106>,  <4.954170, 19.993471, 20.813984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.845853, 19.884079, 20.998106>,  <4.665324, 19.701759, 21.304976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.845853, 19.884079, 20.998106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125133, -0.883544, -0.451321,
		-0.883544, 0.107692, -0.455798,
		0.451321, 0.455798, -0.767175,
		4.981249, 20.020819, 20.767954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.389005, 19.516504, 20.673256>,  <4.665324, 19.701759, 21.304976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.389005, 19.516504, 20.673256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.766446, 19.614807, 20.584517>,  <4.992911, 19.673790, 20.531273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.766446, 19.614807, 20.584517>,  <4.389005, 19.516504, 20.673256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.766446, 19.614807, 20.584517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085108, -0.827609, -0.554815,
		-0.319954, 0.504644, -0.801850,
		0.943603, 0.245759, -0.221848,
		5.049527, 19.688536, 20.517962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.523869, 19.150986, 20.152319>,  <4.389005, 19.516504, 20.673256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.523869, 19.150986, 20.152319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.901053, 19.275330, 20.199970>,  <5.127364, 19.349936, 20.228561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.901053, 19.275330, 20.199970>,  <4.523869, 19.150986, 20.152319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.901053, 19.275330, 20.199970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311506, -0.697709, -0.645109,
		-0.117421, 0.645422, -0.754747,
		0.942961, 0.310858, 0.119127,
		5.183942, 19.368587, 20.235708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.702422, 19.400457, 19.447769>,  <4.523869, 19.150986, 20.152319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.702422, 19.400457, 19.447769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.024719, 19.299658, 19.662161>,  <5.218097, 19.239178, 19.790796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.024719, 19.299658, 19.662161>,  <4.702422, 19.400457, 19.447769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.024719, 19.299658, 19.662161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230877, -0.699733, -0.676069,
		0.545413, 0.668483, -0.505624,
		0.805742, -0.252000, 0.535981,
		5.266441, 19.224058, 19.822956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.253054, 19.184946, 18.965368>,  <4.702422, 19.400457, 19.447769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.253054, 19.184946, 18.965368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.431258, 19.026405, 19.286472>,  <5.538180, 18.931280, 19.479136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.431258, 19.026405, 19.286472>,  <5.253054, 19.184946, 18.965368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.431258, 19.026405, 19.286472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332539, -0.759254, -0.559421,
		0.831227, 0.516177, -0.206452,
		0.445510, -0.396353, 0.802761,
		5.564911, 18.907499, 19.527300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.924013, 18.913057, 18.784330>,  <5.253054, 19.184946, 18.965368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.924013, 18.913057, 18.784330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.826193, 18.701641, 19.109499>,  <5.767501, 18.574791, 19.304600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.826193, 18.701641, 19.109499>,  <5.924013, 18.913057, 18.784330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.826193, 18.701641, 19.109499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421536, -0.812957, -0.401757,
		0.873214, 0.244425, 0.421608,
		-0.244549, -0.528542, 0.812920,
		5.752828, 18.543077, 19.353374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.532761, 18.526768, 18.941093>,  <5.924013, 18.913057, 18.784330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.532761, 18.526768, 18.941093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.237095, 18.344179, 19.139193>,  <6.059696, 18.234625, 19.258051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.237095, 18.344179, 19.139193>,  <6.532761, 18.526768, 18.941093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.237095, 18.344179, 19.139193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281335, -0.877338, -0.388752,
		0.611953, -0.148022, 0.776919,
		-0.739165, -0.456473, 0.495246,
		6.015346, 18.207237, 19.287766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.850336, 18.010685, 19.383213>,  <6.532761, 18.526768, 18.941093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.850336, 18.010685, 19.383213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.476260, 17.878777, 19.331566>,  <6.251814, 17.799631, 19.300577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.476260, 17.878777, 19.331566>,  <6.850336, 18.010685, 19.383213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.476260, 17.878777, 19.331566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352291, -0.828996, -0.434346,
		0.036196, -0.451683, 0.891444,
		-0.935190, -0.329770, -0.129117,
		6.195703, 17.779846, 19.292831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.891939, 17.288914, 19.498877>,  <6.850336, 18.010685, 19.383213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.891939, 17.288914, 19.498877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.545364, 17.341702, 19.306265>,  <6.337419, 17.373375, 19.190699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.545364, 17.341702, 19.306265>,  <6.891939, 17.288914, 19.498877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.545364, 17.341702, 19.306265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275553, -0.677867, -0.681592,
		-0.416363, -0.723243, 0.550964,
		-0.866437, 0.131970, -0.481530,
		6.285433, 17.381292, 19.161806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.540810, 16.551565, 19.293777>,  <6.891939, 17.288914, 19.498877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.540810, 16.551565, 19.293777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.348379, 16.793741, 19.040163>,  <6.232920, 16.939047, 18.887995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.348379, 16.793741, 19.040163>,  <6.540810, 16.551565, 19.293777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.348379, 16.793741, 19.040163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078573, -0.750094, -0.656647,
		-0.873149, -0.266081, 0.408426,
		-0.481079, 0.605442, -0.634037,
		6.204055, 16.975374, 18.849953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.967407, 16.170208, 19.017561>,  <6.540810, 16.551565, 19.293777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.967407, 16.170208, 19.017561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.031684, 16.468748, 18.759216>,  <6.070251, 16.647873, 18.604210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.031684, 16.468748, 18.759216>,  <5.967407, 16.170208, 19.017561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.031684, 16.468748, 18.759216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096206, -0.639406, -0.762827,
		-0.982304, 0.184717, -0.030945,
		0.160694, 0.746351, -0.645862,
		6.079893, 16.692654, 18.565458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.468920, 16.149433, 18.481766>,  <5.967407, 16.170208, 19.017561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.468920, 16.149433, 18.481766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.747684, 16.361048, 18.288092>,  <5.914943, 16.488016, 18.171886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.747684, 16.361048, 18.288092>,  <5.468920, 16.149433, 18.481766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.747684, 16.361048, 18.288092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192156, -0.512708, -0.836783,
		-0.690935, 0.676202, -0.255654,
		0.696911, 0.529037, -0.484184,
		5.956758, 16.519758, 18.142836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.273358, 16.019331, 17.756014>,  <5.468920, 16.149433, 18.481766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.273358, 16.019331, 17.756014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.623034, 16.209400, 17.716007>,  <5.832839, 16.323442, 17.692003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.623034, 16.209400, 17.716007>,  <5.273358, 16.019331, 17.756014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.623034, 16.209400, 17.716007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110173, -0.394689, -0.912186,
		-0.472923, 0.786403, -0.397384,
		0.874189, 0.475174, -0.100017,
		5.885290, 16.351952, 17.686003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.270236, 16.334742, 17.042522>,  <5.273358, 16.019331, 17.756014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.270236, 16.334742, 17.042522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.639470, 16.264042, 17.179152>,  <5.861011, 16.221622, 17.261129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.639470, 16.264042, 17.179152>,  <5.270236, 16.334742, 17.042522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.639470, 16.264042, 17.179152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220016, -0.485764, -0.845947,
		0.315443, 0.856034, -0.409515,
		0.923086, -0.176748, 0.341572,
		5.916396, 16.211018, 17.281624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.653818, 16.505465, 16.496147>,  <5.270236, 16.334742, 17.042522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.653818, 16.505465, 16.496147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.878972, 16.260296, 16.717953>,  <6.014064, 16.113195, 16.851036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.878972, 16.260296, 16.717953>,  <5.653818, 16.505465, 16.496147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.878972, 16.260296, 16.717953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122611, -0.601550, -0.789370,
		0.817390, 0.512314, -0.263453,
		0.562885, -0.612921, 0.554516,
		6.047837, 16.076420, 16.884308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.231078, 16.453335, 16.011023>,  <5.653818, 16.505465, 16.496147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.231078, 16.453335, 16.011023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.277180, 16.156116, 16.274719>,  <6.304841, 15.977785, 16.432938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.277180, 16.156116, 16.274719>,  <6.231078, 16.453335, 16.011023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.277180, 16.156116, 16.274719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395906, -0.574311, -0.716537,
		0.911029, 0.343582, 0.227985,
		0.115255, -0.743047, 0.659241,
		6.311756, 15.933203, 16.472492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.905823, 16.183008, 15.958488>,  <6.231078, 16.453335, 16.011023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.905823, 16.183008, 15.958488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.652124, 15.903492, 16.090805>,  <6.499905, 15.735783, 16.170197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.652124, 15.903492, 16.090805>,  <6.905823, 16.183008, 15.958488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.652124, 15.903492, 16.090805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336676, -0.634803, -0.695468,
		0.695974, -0.329728, 0.637887,
		-0.634247, -0.698789, 0.330795,
		6.461850, 15.693855, 16.190044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.206414, 15.621747, 15.636103>,  <6.905823, 16.183008, 15.958488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.206414, 15.621747, 15.636103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.864058, 15.471333, 15.778115>,  <6.658644, 15.381083, 15.863322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.864058, 15.471333, 15.778115>,  <7.206414, 15.621747, 15.636103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.864058, 15.471333, 15.778115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028675, -0.650942, -0.758586,
		0.516361, -0.659447, 0.546352,
		-0.855891, -0.376037, 0.355031,
		6.607290, 15.358521, 15.884624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.778240, 15.605353, 15.970906>,  <7.206414, 15.621747, 15.636103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.778240, 15.605353, 15.970906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.173111, 15.654675, 15.930354>,  <8.410033, 15.684267, 15.906023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.173111, 15.654675, 15.930354>,  <7.778240, 15.605353, 15.970906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.173111, 15.654675, 15.930354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090706, 0.955893, 0.279359,
		0.131353, -0.266581, 0.954820,
		0.987177, 0.123302, -0.101379,
		8.469264, 15.691666, 15.899940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.112223, 15.794669, 16.574028>,  <7.778240, 15.605353, 15.970906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.112223, 15.794669, 16.574028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.329924, 15.935493, 16.269438>,  <8.460544, 16.019987, 16.086683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.329924, 15.935493, 16.269438>,  <8.112223, 15.794669, 16.574028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.329924, 15.935493, 16.269438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158162, 0.934465, 0.318997,
		0.823878, -0.053178, 0.564267,
		0.544252, 0.352060, -0.761474,
		8.493199, 16.041111, 16.040995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.541792, 16.301594, 16.860661>,  <8.112223, 15.794669, 16.574028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.541792, 16.301594, 16.860661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.531240, 16.380138, 16.468590>,  <8.524908, 16.427265, 16.233347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.531240, 16.380138, 16.468590>,  <8.541792, 16.301594, 16.860661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.531240, 16.380138, 16.468590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070323, 0.977724, 0.197762,
		0.997175, 0.074146, -0.011986,
		-0.026382, 0.196360, -0.980177,
		8.523325, 16.439047, 16.174538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.994327, 16.860214, 16.729387>,  <8.541792, 16.301594, 16.860661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.994327, 16.860214, 16.729387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.769977, 16.871410, 16.398417>,  <8.635366, 16.878128, 16.199835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.769977, 16.871410, 16.398417>,  <8.994327, 16.860214, 16.729387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.769977, 16.871410, 16.398417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287484, 0.930654, 0.226356,
		0.776384, 0.364830, -0.513933,
		-0.560875, 0.027992, -0.827427,
		8.601714, 16.879808, 16.150188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.065228, 17.554804, 16.473658>,  <8.994327, 16.860214, 16.729387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.065228, 17.554804, 16.473658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.735115, 17.416996, 16.294674>,  <8.537047, 17.334312, 16.187284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.735115, 17.416996, 16.294674>,  <9.065228, 17.554804, 16.473658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.735115, 17.416996, 16.294674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448095, 0.881720, 0.147580,
		0.343689, 0.322299, -0.882044,
		-0.825281, -0.344518, -0.447458,
		8.487531, 17.313641, 16.160437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.830168, 18.055443, 15.807087>,  <9.065228, 17.554804, 16.473658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.830168, 18.055443, 15.807087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.534389, 17.843920, 15.973740>,  <8.356923, 17.717005, 16.073730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.534389, 17.843920, 15.973740>,  <8.830168, 18.055443, 15.807087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.534389, 17.843920, 15.973740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499246, 0.845908, 0.187597,
		-0.451635, -0.069284, -0.889509,
		-0.739445, -0.528810, 0.416631,
		8.312556, 17.685276, 16.098728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.229145, 18.263857, 15.520516>,  <8.830168, 18.055443, 15.807087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.229145, 18.263857, 15.520516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.109890, 18.124865, 15.876127>,  <8.038337, 18.041470, 16.089495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.109890, 18.124865, 15.876127>,  <8.229145, 18.263857, 15.520516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.109890, 18.124865, 15.876127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515050, 0.842722, 0.156659,
		-0.803640, -0.411188, -0.430217,
		-0.298137, -0.347481, 0.889028,
		8.020449, 18.020620, 16.142836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.591614, 18.537191, 15.568675>,  <8.229145, 18.263857, 15.520516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.591614, 18.537191, 15.568675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.681133, 18.411270, 15.937634>,  <7.734844, 18.335718, 16.159008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.681133, 18.411270, 15.937634>,  <7.591614, 18.537191, 15.568675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.681133, 18.411270, 15.937634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433097, 0.815706, 0.383472,
		-0.873122, -0.485307, 0.046212,
		0.223797, -0.314803, 0.922395,
		7.748272, 18.316830, 16.214352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.930255, 18.580975, 15.940593>,  <7.591614, 18.537191, 15.568675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.930255, 18.580975, 15.940593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.245112, 18.564524, 16.186752>,  <7.434026, 18.554653, 16.334448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.245112, 18.564524, 16.186752>,  <6.930255, 18.580975, 15.940593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.245112, 18.564524, 16.186752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344132, 0.798738, 0.493549,
		-0.511840, -0.600272, 0.614568,
		0.787142, -0.041126, 0.615399,
		7.481255, 18.552187, 16.371372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.632299, 18.481136, 16.622766>,  <6.930255, 18.580975, 15.940593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.632299, 18.481136, 16.622766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.999551, 18.630972, 16.674484>,  <7.219903, 18.720873, 16.705515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.999551, 18.630972, 16.674484>,  <6.632299, 18.481136, 16.622766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.999551, 18.630972, 16.674484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354476, 0.630483, 0.690534,
		0.177149, -0.679833, 0.711650,
		0.918131, 0.374590, 0.129295,
		7.274991, 18.743349, 16.713272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.703266, 18.491533, 17.339945>,  <6.632299, 18.481136, 16.622766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.703266, 18.491533, 17.339945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.995249, 18.738575, 17.222830>,  <7.170439, 18.886801, 17.152561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.995249, 18.738575, 17.222830>,  <6.703266, 18.491533, 17.339945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.995249, 18.738575, 17.222830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260040, 0.647101, 0.716686,
		0.632096, -0.447011, 0.632957,
		0.729954, 0.617609, -0.292789,
		7.214237, 18.923857, 17.134995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.878187, 18.779938, 17.924847>,  <6.703266, 18.491533, 17.339945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.878187, 18.779938, 17.924847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.027985, 19.043222, 17.663616>,  <7.117864, 19.201193, 17.506878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.027985, 19.043222, 17.663616>,  <6.878187, 18.779938, 17.924847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.027985, 19.043222, 17.663616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210511, 0.746294, 0.631451,
		0.903016, -0.098996, 0.418045,
		0.374495, 0.658214, -0.653076,
		7.140334, 19.240686, 17.467693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.266639, 19.226625, 18.334423>,  <6.878187, 18.779938, 17.924847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.266639, 19.226625, 18.334423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.219365, 19.432573, 17.994789>,  <7.191001, 19.556141, 17.791010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.219365, 19.432573, 17.994789>,  <7.266639, 19.226625, 18.334423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.219365, 19.432573, 17.994789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216569, 0.821127, 0.528060,
		0.969087, 0.246294, 0.014460,
		-0.118185, 0.514868, -0.849084,
		7.183910, 19.587034, 17.740065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.526941, 19.878010, 18.380512>,  <7.266639, 19.226625, 18.334423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.526941, 19.878010, 18.380512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.272052, 19.972527, 18.087088>,  <7.119118, 20.029236, 17.911034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.272052, 19.972527, 18.087088>,  <7.526941, 19.878010, 18.380512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.272052, 19.972527, 18.087088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334403, 0.772793, 0.539413,
		0.694350, 0.589032, -0.413425,
		-0.637223, 0.236291, -0.733562,
		7.080885, 20.043413, 17.867020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.569402, 20.591885, 18.251440>,  <7.526941, 19.878010, 18.380512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.569402, 20.591885, 18.251440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.208422, 20.479599, 18.120729>,  <6.991834, 20.412228, 18.042303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.208422, 20.479599, 18.120729>,  <7.569402, 20.591885, 18.251440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.208422, 20.479599, 18.120729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426845, 0.685150, 0.590231,
		0.058205, 0.672137, -0.738135,
		-0.902450, -0.280715, -0.326777,
		6.937687, 20.395384, 18.022696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.263149, 21.220892, 18.036367>,  <7.569402, 20.591885, 18.251440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.263149, 21.220892, 18.036367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.973436, 20.952562, 18.100130>,  <6.799608, 20.791565, 18.138388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.973436, 20.952562, 18.100130>,  <7.263149, 21.220892, 18.036367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.973436, 20.952562, 18.100130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396743, 0.594548, 0.699362,
		-0.563924, 0.443292, -0.696765,
		-0.724282, -0.670824, 0.159407,
		6.756151, 20.751316, 18.147953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.715190, 21.655031, 18.092680>,  <7.263149, 21.220892, 18.036367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.715190, 21.655031, 18.092680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.621196, 21.296453, 18.242971>,  <6.564799, 21.081306, 18.333147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.621196, 21.296453, 18.242971>,  <6.715190, 21.655031, 18.092680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.621196, 21.296453, 18.242971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537138, 0.441930, 0.718457,
		-0.810101, -0.032991, -0.585361,
		-0.234986, -0.896443, 0.375729,
		6.550700, 21.027521, 18.355690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.098511, 21.835251, 18.345705>,  <6.715190, 21.655031, 18.092680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.098511, 21.835251, 18.345705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.205441, 21.524441, 18.573660>,  <6.269598, 21.337955, 18.710432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.205441, 21.524441, 18.573660>,  <6.098511, 21.835251, 18.345705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.205441, 21.524441, 18.573660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317944, 0.487164, 0.813378,
		-0.909643, -0.398626, -0.116820,
		0.267323, -0.777026, 0.569886,
		6.285637, 21.291332, 18.744625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.553376, 21.723139, 18.725695>,  <6.098511, 21.835251, 18.345705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.553376, 21.723139, 18.725695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.860939, 21.562180, 18.924433>,  <6.045477, 21.465605, 19.043676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.860939, 21.562180, 18.924433>,  <5.553376, 21.723139, 18.725695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.860939, 21.562180, 18.924433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232442, 0.547991, 0.803540,
		-0.595609, -0.733337, 0.327821,
		0.768909, -0.402397, 0.496846,
		6.091611, 21.441460, 19.073486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.284348, 21.665064, 19.334248>,  <5.553376, 21.723139, 18.725695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.284348, 21.665064, 19.334248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.667627, 21.595764, 19.425322>,  <5.897594, 21.554184, 19.479965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.667627, 21.595764, 19.425322>,  <5.284348, 21.665064, 19.334248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.667627, 21.595764, 19.425322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133732, 0.432309, 0.891754,
		-0.252928, -0.884925, 0.391069,
		0.958198, -0.173251, 0.227686,
		5.955086, 21.543789, 19.493628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.268128, 21.589546, 20.089357>,  <5.284348, 21.665064, 19.334248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.268128, 21.589546, 20.089357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.647988, 21.660465, 19.986031>,  <5.875905, 21.703016, 19.924034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.647988, 21.660465, 19.986031>,  <5.268128, 21.589546, 20.089357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.647988, 21.660465, 19.986031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139890, 0.497798, 0.855937,
		0.280344, -0.848978, 0.447933,
		0.949651, 0.177296, -0.258318,
		5.932884, 21.713654, 19.908535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.727404, 11.439380, 28.622015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.492308, 11.232492, 28.373163>,  <17.351250, 11.108360, 28.223852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.492308, 11.232492, 28.373163>,  <17.727404, 11.439380, 28.622015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492308, 11.232492, 28.373163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496907, -0.376063, 0.782087,
		-0.638469, 0.768806, -0.035981,
		-0.587742, -0.517217, -0.622130,
		17.315985, 11.077328, 28.186523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988949, 11.465419, 28.923655>,  <17.727404, 11.439380, 28.622015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.988949, 11.465419, 28.923655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026558, 11.141831, 28.691540>,  <17.049124, 10.947680, 28.552271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026558, 11.141831, 28.691540>,  <16.988949, 11.465419, 28.923655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026558, 11.141831, 28.691540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327620, -0.575544, 0.749276,
		-0.940120, 0.119665, -0.319147,
		0.094021, -0.808968, -0.580285,
		17.054764, 10.899141, 28.517454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351316, 11.082420, 29.104502>,  <16.988949, 11.465419, 28.923655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351316, 11.082420, 29.104502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.598305, 10.838840, 28.905342>,  <16.746498, 10.692691, 28.785847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.598305, 10.838840, 28.905342>,  <16.351316, 11.082420, 29.104502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598305, 10.838840, 28.905342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206941, -0.736446, 0.644067,
		-0.758881, -0.294659, -0.580754,
		0.617474, -0.608952, -0.497898,
		16.783546, 10.656154, 28.755972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.062115, 10.344801, 29.129091>,  <16.351316, 11.082420, 29.104502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.062115, 10.344801, 29.129091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.451435, 10.293077, 29.053236>,  <16.685028, 10.262042, 29.007723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.451435, 10.293077, 29.053236>,  <16.062115, 10.344801, 29.129091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451435, 10.293077, 29.053236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061129, -0.650329, 0.757189,
		-0.221240, -0.748565, -0.625062,
		0.973301, -0.129311, -0.189638,
		16.743425, 10.254283, 28.996346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117823, 9.677966, 29.172941>,  <16.062115, 10.344801, 29.129091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.117823, 9.677966, 29.172941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.503317, 9.781916, 29.197208>,  <16.734613, 9.844285, 29.211769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.503317, 9.781916, 29.197208>,  <16.117823, 9.677966, 29.172941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503317, 9.781916, 29.197208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127548, -0.648254, 0.750665,
		0.234406, -0.715705, -0.657891,
		0.963735, 0.259873, 0.060668,
		16.792437, 9.859878, 29.215408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429245, 9.168616, 28.986578>,  <16.117823, 9.677966, 29.172941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.429245, 9.168616, 28.986578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.680147, 9.368182, 29.225790>,  <16.830688, 9.487922, 29.369316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.680147, 9.368182, 29.225790>,  <16.429245, 9.168616, 28.986578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.680147, 9.368182, 29.225790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025803, -0.754135, 0.656212,
		0.778388, -0.427042, -0.460160,
		0.627253, 0.498914, 0.598029,
		16.868322, 9.517857, 29.405199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967985, 8.701492, 29.235130>,  <16.429245, 9.168616, 28.986578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.967985, 8.701492, 29.235130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.022186, 8.991138, 29.505625>,  <17.054707, 9.164927, 29.667921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.022186, 8.991138, 29.505625>,  <16.967985, 8.701492, 29.235130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022186, 8.991138, 29.505625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160210, -0.689562, 0.706284,
		0.977738, 0.012638, -0.209447,
		0.135501, 0.724116, 0.676236,
		17.062838, 9.208373, 29.708496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435730, 8.454839, 29.725096>,  <16.967985, 8.701492, 29.235130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435730, 8.454839, 29.725096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.293591, 8.751785, 29.952293>,  <17.208307, 8.929954, 30.088612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.293591, 8.751785, 29.952293>,  <17.435730, 8.454839, 29.725096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293591, 8.751785, 29.952293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133547, -0.561100, 0.816904,
		0.925145, 0.366139, 0.100244,
		-0.355347, 0.742367, 0.567996,
		17.186987, 8.974496, 30.122692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.959198, 8.564125, 30.329283>,  <17.435730, 8.454839, 29.725096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.959198, 8.564125, 30.329283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.620440, 8.744312, 30.442308>,  <17.417185, 8.852425, 30.510124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.620440, 8.744312, 30.442308>,  <17.959198, 8.564125, 30.329283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620440, 8.744312, 30.442308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004534, -0.537482, 0.843263,
		0.531737, 0.712876, 0.457235,
		-0.846897, 0.450468, 0.282566,
		17.366371, 8.879453, 30.527079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076933, 8.737894, 31.017134>,  <17.959198, 8.564125, 30.329283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076933, 8.737894, 31.017134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.683245, 8.718126, 30.949169>,  <17.447033, 8.706265, 30.908390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.683245, 8.718126, 30.949169>,  <18.076933, 8.737894, 31.017134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683245, 8.718126, 30.949169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090012, -0.686875, 0.721180,
		-0.152349, 0.725093, 0.671587,
		-0.984219, -0.049420, -0.169912,
		17.387980, 8.703300, 30.898195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707527, 8.820727, 31.682772>,  <18.076933, 8.737894, 31.017134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.707527, 8.820727, 31.682772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.459747, 8.630820, 31.432690>,  <17.311079, 8.516876, 31.282640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.459747, 8.630820, 31.432690>,  <17.707527, 8.820727, 31.682772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459747, 8.630820, 31.432690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296257, -0.596139, 0.746224,
		-0.726991, 0.647468, 0.228624,
		-0.619448, -0.474767, -0.625205,
		17.273912, 8.488390, 31.245129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.030684, 8.854180, 32.065933>,  <17.707527, 8.820727, 31.682772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.030684, 8.854180, 32.065933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.023174, 8.546214, 31.810787>,  <17.018669, 8.361434, 31.657700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.023174, 8.546214, 31.810787>,  <17.030684, 8.854180, 32.065933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.023174, 8.546214, 31.810787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367214, -0.588084, 0.720633,
		-0.929947, 0.247764, -0.271682,
		-0.018775, -0.769916, -0.637869,
		17.017542, 8.315239, 31.619427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.653669, 9.265205, 32.531452>,  <17.030684, 8.854180, 32.065933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.653669, 9.265205, 32.531452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.976299, 9.194420, 32.757061>,  <17.169878, 9.151949, 32.892426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.976299, 9.194420, 32.757061>,  <16.653669, 9.265205, 32.531452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976299, 9.194420, 32.757061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551605, -0.568359, 0.610492,
		0.212532, -0.803525, -0.556037,
		0.806574, -0.176963, 0.564023,
		17.218271, 9.141331, 32.926270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.668610, 10.023821, 32.222958>,  <16.653669, 9.265205, 32.531452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.668610, 10.023821, 32.222958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.658857, 10.417752, 32.291679>,  <16.653006, 10.654111, 32.332912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.658857, 10.417752, 32.291679>,  <16.668610, 10.023821, 32.222958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658857, 10.417752, 32.291679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488408, -0.161689, 0.857505,
		0.872275, -0.063005, 0.484940,
		-0.024383, 0.984829, 0.171809,
		16.651543, 10.713201, 32.343224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.191956, 10.608751, 32.546360>,  <16.668610, 10.023821, 32.222958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.191956, 10.608751, 32.546360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.960971, 10.907397, 32.678482>,  <15.822380, 11.086585, 32.757755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.960971, 10.907397, 32.678482>,  <16.191956, 10.608751, 32.546360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.960971, 10.907397, 32.678482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120158, 0.477900, -0.870157,
		-0.807527, -0.462794, -0.365681,
		-0.577462, 0.746615, 0.330308,
		15.787732, 11.131382, 32.777576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651111, 10.772588, 32.036430>,  <16.191956, 10.608751, 32.546360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651111, 10.772588, 32.036430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.644231, 11.114595, 32.243755>,  <15.640103, 11.319799, 32.368149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.644231, 11.114595, 32.243755>,  <15.651111, 10.772588, 32.036430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.644231, 11.114595, 32.243755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036940, 0.518579, -0.854231,
		-0.999170, 0.004455, -0.040504,
		-0.017199, 0.855018, 0.518313,
		15.639071, 11.371100, 32.399250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.313709, 11.217855, 31.635973>,  <15.651111, 10.772588, 32.036430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.313709, 11.217855, 31.635973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.479319, 11.482208, 31.886354>,  <15.578684, 11.640821, 32.036583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.479319, 11.482208, 31.886354>,  <15.313709, 11.217855, 31.635973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.479319, 11.482208, 31.886354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137301, 0.634453, -0.760670,
		-0.899852, 0.400879, 0.171938,
		0.414023, 0.660883, 0.625954,
		15.603525, 11.680473, 32.074142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275121, 11.840928, 31.308182>,  <15.313709, 11.217855, 31.635973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275121, 11.840928, 31.308182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.561893, 11.918474, 31.576040>,  <15.733955, 11.965002, 31.736755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.561893, 11.918474, 31.576040>,  <15.275121, 11.840928, 31.308182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561893, 11.918474, 31.576040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345831, 0.735135, -0.583076,
		-0.605320, 0.649609, 0.459996,
		0.716930, 0.193866, 0.669647,
		15.776972, 11.976634, 31.776934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279079, 12.559202, 31.382849>,  <15.275121, 11.840928, 31.308182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279079, 12.559202, 31.382849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.646572, 12.444203, 31.491127>,  <15.867068, 12.375204, 31.556093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.646572, 12.444203, 31.491127>,  <15.279079, 12.559202, 31.382849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646572, 12.444203, 31.491127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393243, 0.728488, -0.560950,
		-0.035927, 0.621812, 0.782342,
		0.918732, -0.287497, 0.270696,
		15.922192, 12.357954, 31.572336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.565653, 13.097251, 31.509468>,  <15.279079, 12.559202, 31.382849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.565653, 13.097251, 31.509468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.869042, 12.842569, 31.453863>,  <16.051077, 12.689760, 31.420500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.869042, 12.842569, 31.453863>,  <15.565653, 13.097251, 31.509468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869042, 12.842569, 31.453863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495112, 0.701669, -0.512371,
		0.423771, 0.319793, 0.847438,
		0.758473, -0.636705, -0.139013,
		16.096584, 12.651558, 31.412159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289495, 13.474086, 31.581810>,  <15.565653, 13.097251, 31.509468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.289495, 13.474086, 31.581810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.365120, 13.177922, 31.323803>,  <16.410496, 13.000224, 31.168999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.365120, 13.177922, 31.323803>,  <16.289495, 13.474086, 31.581810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365120, 13.177922, 31.323803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412263, 0.656020, -0.632200,
		0.891232, -0.146392, 0.429273,
		0.189063, -0.740410, -0.645018,
		16.421839, 12.955799, 31.130297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.857952, 13.632268, 31.330065>,  <16.289495, 13.474086, 31.581810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.857952, 13.632268, 31.330065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.705635, 13.373594, 31.065702>,  <16.614244, 13.218390, 30.907085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.705635, 13.373594, 31.065702>,  <16.857952, 13.632268, 31.330065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705635, 13.373594, 31.065702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276151, 0.602601, -0.748741,
		0.882462, -0.467623, -0.050881,
		-0.380790, -0.646685, -0.660907,
		16.591398, 13.179589, 30.867430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297695, 13.695083, 30.683733>,  <16.857952, 13.632268, 31.330065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297695, 13.695083, 30.683733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.001371, 13.473462, 30.531822>,  <16.823578, 13.340490, 30.440676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.001371, 13.473462, 30.531822>,  <17.297695, 13.695083, 30.683733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001371, 13.473462, 30.531822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183275, 0.377215, -0.907810,
		0.646231, -0.742116, -0.177900,
		-0.740807, -0.554051, -0.379779,
		16.779129, 13.307247, 30.417889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.531218, 13.285697, 30.127745>,  <17.297695, 13.695083, 30.683733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.531218, 13.285697, 30.127745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.137054, 13.320294, 30.069111>,  <16.900557, 13.341053, 30.033930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.137054, 13.320294, 30.069111>,  <17.531218, 13.285697, 30.127745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.137054, 13.320294, 30.069111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162855, 0.228888, -0.959733,
		-0.049460, -0.969602, -0.239635,
		-0.985409, 0.086494, -0.146584,
		16.841431, 13.346243, 30.025135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405369, 12.889389, 29.516907>,  <17.531218, 13.285697, 30.127745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.405369, 12.889389, 29.516907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.104168, 13.149003, 29.560249>,  <16.923447, 13.304771, 29.586256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.104168, 13.149003, 29.560249>,  <17.405369, 12.889389, 29.516907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.104168, 13.149003, 29.560249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055302, 0.226511, -0.972438,
		-0.655690, -0.726255, -0.206456,
		-0.753002, 0.649035, 0.108358,
		16.878267, 13.343714, 29.592756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852161, 12.843667, 28.942057>,  <17.405369, 12.889389, 29.516907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.852161, 12.843667, 28.942057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.795244, 13.219960, 29.065197>,  <16.761093, 13.445736, 29.139082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.795244, 13.219960, 29.065197>,  <16.852161, 12.843667, 28.942057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.795244, 13.219960, 29.065197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016123, 0.313177, -0.949558,
		-0.989693, -0.130153, -0.059730,
		-0.142294, 0.940734, 0.307851,
		16.752556, 13.502180, 29.157553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.264095, 13.032564, 28.682041>,  <16.852161, 12.843667, 28.942057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.264095, 13.032564, 28.682041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.497431, 13.349319, 28.754292>,  <16.637432, 13.539372, 28.797642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.497431, 13.349319, 28.754292>,  <16.264095, 13.032564, 28.682041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.497431, 13.349319, 28.754292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027741, 0.241678, -0.969960,
		-0.811753, 0.560807, 0.162949,
		0.583341, 0.791889, 0.180625,
		16.672434, 13.586886, 28.808479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.156555, 13.459543, 28.147028>,  <16.264095, 13.032564, 28.682041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.156555, 13.459543, 28.147028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.462553, 13.662257, 28.306000>,  <16.646152, 13.783886, 28.401382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.462553, 13.662257, 28.306000>,  <16.156555, 13.459543, 28.147028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462553, 13.662257, 28.306000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034310, 0.584147, -0.810923,
		-0.643119, 0.633989, 0.429483,
		0.764997, 0.506785, 0.397428,
		16.692053, 13.814293, 28.425228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441360, 13.626497, 28.067444>,  <16.156555, 13.459543, 28.147028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441360, 13.626497, 28.067444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.292349, 13.345280, 27.825138>,  <15.202942, 13.176549, 27.679754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.292349, 13.345280, 27.825138>,  <15.441360, 13.626497, 28.067444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.292349, 13.345280, 27.825138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098207, -0.619218, 0.779053,
		-0.922810, 0.349710, 0.161632,
		-0.372528, -0.703045, -0.605765,
		15.180591, 13.134366, 27.643408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762292, 13.370095, 28.397448>,  <15.441360, 13.626497, 28.067444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762292, 13.370095, 28.397448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.864635, 13.086928, 28.134119>,  <14.926040, 12.917028, 27.976122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.864635, 13.086928, 28.134119>,  <14.762292, 13.370095, 28.397448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864635, 13.086928, 28.134119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169250, -0.703274, 0.690478,
		-0.951783, -0.065243, -0.299753,
		0.255857, -0.707919, -0.658323,
		14.941392, 12.874553, 27.936623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.259852, 12.876827, 28.441864>,  <14.762292, 13.370095, 28.397448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.259852, 12.876827, 28.441864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.568604, 12.686410, 28.273298>,  <14.753854, 12.572160, 28.172159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.568604, 12.686410, 28.273298>,  <14.259852, 12.876827, 28.441864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568604, 12.686410, 28.273298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250584, -0.836976, 0.486496,
		-0.584306, -0.269916, -0.765331,
		0.771877, -0.476042, -0.421414,
		14.800166, 12.543597, 28.146873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020894, 12.345103, 28.204321>,  <14.259852, 12.876827, 28.441864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020894, 12.345103, 28.204321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.407811, 12.243759, 28.199350>,  <14.639961, 12.182953, 28.196367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.407811, 12.243759, 28.199350>,  <14.020894, 12.345103, 28.204321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.407811, 12.243759, 28.199350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222605, -0.871328, 0.437304,
		-0.121624, -0.420235, -0.899228,
		0.967293, -0.253360, -0.012428,
		14.697999, 12.167751, 28.195621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062464, 11.598431, 28.058340>,  <14.020894, 12.345103, 28.204321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.062464, 11.598431, 28.058340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.399831, 11.703336, 28.245899>,  <14.602251, 11.766278, 28.358435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.399831, 11.703336, 28.245899>,  <14.062464, 11.598431, 28.058340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399831, 11.703336, 28.245899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180577, -0.683609, 0.707157,
		0.506004, -0.681100, -0.529209,
		0.843417, 0.262262, 0.468900,
		14.652856, 11.782014, 28.386570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328107, 11.013443, 28.222616>,  <14.062464, 11.598431, 28.058340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.328107, 11.013443, 28.222616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.544776, 11.245345, 28.466084>,  <14.674777, 11.384486, 28.612164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.544776, 11.245345, 28.466084>,  <14.328107, 11.013443, 28.222616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.544776, 11.245345, 28.466084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210681, -0.607349, 0.765990,
		0.813760, -0.543150, -0.206841,
		0.541672, 0.579755, 0.608667,
		14.707277, 11.419271, 28.648684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.771191, 10.535273, 28.541447>,  <14.328107, 11.013443, 28.222616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.771191, 10.535273, 28.541447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.780782, 10.847437, 28.791368>,  <14.786536, 11.034736, 28.941322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.780782, 10.847437, 28.791368>,  <14.771191, 10.535273, 28.541447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.780782, 10.847437, 28.791368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109925, -0.619139, 0.777550,
		0.993651, -0.087325, 0.070941,
		0.023977, 0.780411, 0.624807,
		14.787975, 11.081560, 28.978811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954164, 9.847128, 28.636189>,  <14.771191, 10.535273, 28.541447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.954164, 9.847128, 28.636189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.750662, 9.573606, 28.426970>,  <14.628561, 9.409492, 28.301439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.750662, 9.573606, 28.426970>,  <14.954164, 9.847128, 28.636189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.750662, 9.573606, 28.426970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505678, 0.254343, -0.824378,
		0.696748, -0.683900, 0.216388,
		-0.508755, -0.683806, -0.523045,
		14.598035, 9.368464, 28.270056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441452, 9.590309, 28.127361>,  <14.954164, 9.847128, 28.636189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441452, 9.590309, 28.127361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.080623, 9.458373, 28.016027>,  <14.864125, 9.379211, 27.949228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.080623, 9.458373, 28.016027>,  <15.441452, 9.590309, 28.127361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080623, 9.458373, 28.016027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234063, 0.167937, -0.957607,
		0.362600, -0.928980, -0.074288,
		-0.902073, -0.329840, -0.278333,
		14.810000, 9.359422, 27.932528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568469, 9.201976, 27.563463>,  <15.441452, 9.590309, 28.127361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568469, 9.201976, 27.563463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.192414, 9.335786, 27.537432>,  <14.966782, 9.416072, 27.521812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.192414, 9.335786, 27.537432>,  <15.568469, 9.201976, 27.563463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.192414, 9.335786, 27.537432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123932, 0.157709, -0.979678,
		-0.317464, -0.929097, -0.189726,
		-0.940137, 0.334526, -0.065078,
		14.910373, 9.436144, 27.517908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.248574, 8.735069, 27.129011>,  <15.568469, 9.201976, 27.563463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.248574, 8.735069, 27.129011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.003907, 9.051511, 27.130606>,  <14.857107, 9.241376, 27.131563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.003907, 9.051511, 27.130606>,  <15.248574, 8.735069, 27.129011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003907, 9.051511, 27.130606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005892, 0.009594, -0.999937,
		-0.791093, -0.611606, -0.010529,
		-0.611668, 0.791105, 0.003986,
		14.820407, 9.288842, 27.131802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.814033, 8.729242, 26.638275>,  <15.248574, 8.735069, 27.129011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.814033, 8.729242, 26.638275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.794718, 9.121931, 26.711912>,  <14.783129, 9.357544, 26.756094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.794718, 9.121931, 26.711912>,  <14.814033, 8.729242, 26.638275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.794718, 9.121931, 26.711912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175600, 0.173094, -0.969125,
		-0.983277, -0.079123, 0.164033,
		-0.048287, 0.981722, 0.184094,
		14.780231, 9.416448, 26.767139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.294409, 8.959764, 26.140793>,  <14.814033, 8.729242, 26.638275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.294409, 8.959764, 26.140793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.473816, 9.296652, 26.260458>,  <14.581460, 9.498785, 26.332256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.473816, 9.296652, 26.260458>,  <14.294409, 8.959764, 26.140793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.473816, 9.296652, 26.260458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090929, 0.375980, -0.922155,
		-0.889137, 0.386400, 0.245216,
		0.448517, 0.842220, 0.299163,
		14.608371, 9.549317, 26.350206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893447, 9.563913, 25.908062>,  <14.294409, 8.959764, 26.140793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893447, 9.563913, 25.908062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.259561, 9.699343, 25.995352>,  <14.479229, 9.780601, 26.047726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.259561, 9.699343, 25.995352>,  <13.893447, 9.563913, 25.908062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.259561, 9.699343, 25.995352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049369, 0.443385, -0.894970,
		-0.399772, 0.829926, 0.389109,
		0.915284, 0.338574, 0.218226,
		14.534145, 9.800915, 26.060820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.085524, 5.124557, 29.858894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.915573, 5.479668, 29.929701>,  <16.813602, 5.692734, 29.972185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.915573, 5.479668, 29.929701>,  <17.085524, 5.124557, 29.858894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915573, 5.479668, 29.929701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561965, 0.411968, -0.717271,
		-0.709700, -0.205275, -0.673935,
		-0.424877, 0.887775, 0.177017,
		16.788111, 5.746000, 29.982805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718079, 5.342911, 29.293461>,  <17.085524, 5.124557, 29.858894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718079, 5.342911, 29.293461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.853382, 5.638879, 29.526045>,  <16.934565, 5.816460, 29.665596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.853382, 5.638879, 29.526045>,  <16.718079, 5.342911, 29.293461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853382, 5.638879, 29.526045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455174, 0.412156, -0.789268,
		-0.823648, 0.531645, -0.197376,
		0.338261, 0.739920, 0.581462,
		16.954861, 5.860855, 29.700483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.593500, 5.989198, 28.995932>,  <16.718079, 5.342911, 29.293461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.593500, 5.989198, 28.995932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.902472, 6.058095, 29.240452>,  <17.087854, 6.099432, 29.387165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.902472, 6.058095, 29.240452>,  <16.593500, 5.989198, 28.995932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.902472, 6.058095, 29.240452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436916, 0.554450, -0.708301,
		-0.460935, 0.814198, 0.353016,
		0.772426, 0.172242, 0.611302,
		17.134199, 6.109767, 29.423841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.694870, 6.698807, 28.961782>,  <16.593500, 5.989198, 28.995932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.694870, 6.698807, 28.961782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.041506, 6.560961, 29.106152>,  <17.249487, 6.478254, 29.192772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.041506, 6.560961, 29.106152>,  <16.694870, 6.698807, 28.961782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041506, 6.560961, 29.106152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497907, 0.548808, -0.671490,
		0.033328, 0.761611, 0.647176,
		0.866590, -0.344613, 0.360921,
		17.301483, 6.457577, 29.214428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.100939, 7.305034, 28.920912>,  <16.694870, 6.698807, 28.961782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.100939, 7.305034, 28.920912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.361498, 7.005364, 28.968948>,  <17.517834, 6.825562, 28.997770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.361498, 7.005364, 28.968948>,  <17.100939, 7.305034, 28.920912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361498, 7.005364, 28.968948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561043, 0.369039, -0.740973,
		0.510798, 0.550044, 0.660709,
		0.651395, -0.749174, 0.120094,
		17.556917, 6.780612, 29.004976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.804680, 7.642723, 28.970114>,  <17.100939, 7.305034, 28.920912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.804680, 7.642723, 28.970114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.849422, 7.263331, 28.851538>,  <17.876268, 7.035696, 28.780392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.849422, 7.263331, 28.851538>,  <17.804680, 7.642723, 28.970114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849422, 7.263331, 28.851538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410880, 0.315760, -0.855262,
		0.904801, -0.026134, 0.425031,
		0.111856, -0.948479, -0.296438,
		17.882978, 6.978787, 28.762606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449209, 7.645967, 28.772678>,  <17.804680, 7.642723, 28.970114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449209, 7.645967, 28.772678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.334669, 7.302345, 28.602961>,  <18.265945, 7.096171, 28.501129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.334669, 7.302345, 28.602961>,  <18.449209, 7.645967, 28.772678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334669, 7.302345, 28.602961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425534, 0.282741, -0.859638,
		0.858444, -0.426708, 0.284595,
		-0.286348, -0.859056, -0.424296,
		18.248764, 7.044628, 28.475672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.973827, 7.325088, 28.360975>,  <18.449209, 7.645967, 28.772678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.973827, 7.325088, 28.360975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.621260, 7.240098, 28.192234>,  <18.409719, 7.189104, 28.090990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.621260, 7.240098, 28.192234>,  <18.973827, 7.325088, 28.360975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621260, 7.240098, 28.192234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334329, 0.350245, -0.874959,
		0.333640, -0.912245, -0.237684,
		-0.881424, -0.212457, -0.421846,
		18.356834, 7.176355, 28.065680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.129164, 7.193549, 27.665522>,  <18.973827, 7.325088, 28.360975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.129164, 7.193549, 27.665522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.729994, 7.198251, 27.640205>,  <18.490492, 7.201073, 27.625015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.729994, 7.198251, 27.640205>,  <19.129164, 7.193549, 27.665522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.729994, 7.198251, 27.640205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063243, 0.362368, -0.929887,
		0.012002, -0.931961, -0.362360,
		-0.997926, 0.011756, -0.063289,
		18.430616, 7.201778, 27.621218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.962833, 6.842355, 27.017879>,  <19.129164, 7.193549, 27.665522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.962833, 6.842355, 27.017879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.667973, 7.089598, 27.127094>,  <18.491056, 7.237944, 27.192623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.667973, 7.089598, 27.127094>,  <18.962833, 6.842355, 27.017879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.667973, 7.089598, 27.127094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010429, 0.414425, -0.910024,
		-0.675648, -0.667977, -0.311940,
		-0.737150, 0.618109, 0.273039,
		18.446827, 7.275031, 27.209005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556683, 6.918882, 26.453318>,  <18.962833, 6.842355, 27.017879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556683, 6.918882, 26.453318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.440699, 7.234302, 26.670246>,  <18.371107, 7.423554, 26.800404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.440699, 7.234302, 26.670246>,  <18.556683, 6.918882, 26.453318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440699, 7.234302, 26.670246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005129, 0.565376, -0.824818,
		-0.957025, -0.241946, -0.159892,
		-0.289961, 0.788551, 0.542320,
		18.353710, 7.470867, 26.832943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022076, 7.210550, 26.209400>,  <18.556683, 6.918882, 26.453318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022076, 7.210550, 26.209400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.141113, 7.531754, 26.415939>,  <18.212536, 7.724476, 26.539864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.141113, 7.531754, 26.415939>,  <18.022076, 7.210550, 26.209400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.141113, 7.531754, 26.415939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018891, 0.535793, -0.844138,
		-0.954506, 0.260964, 0.144279,
		0.297593, 0.803009, 0.516348,
		18.230391, 7.772656, 26.570843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409424, 7.168282, 25.718857>,  <18.022076, 7.210550, 26.209400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409424, 7.168282, 25.718857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.035820, 7.207680, 25.581495>,  <16.811659, 7.231319, 25.499079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.035820, 7.207680, 25.581495>,  <17.409424, 7.168282, 25.718857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.035820, 7.207680, 25.581495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355631, -0.164903, 0.919964,
		0.033984, 0.981380, 0.189049,
		-0.934008, 0.098496, -0.343405,
		16.755617, 7.237228, 25.478474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.067459, 7.689502, 26.108438>,  <17.409424, 7.168282, 25.718857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.067459, 7.689502, 26.108438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.782017, 7.454530, 25.955759>,  <16.610752, 7.313547, 25.864151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.782017, 7.454530, 25.955759>,  <17.067459, 7.689502, 26.108438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782017, 7.454530, 25.955759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430352, -0.062339, 0.900506,
		-0.552778, 0.806871, -0.208316,
		-0.713606, -0.587429, -0.381699,
		16.567936, 7.278302, 25.841249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444002, 7.909701, 26.408997>,  <17.067459, 7.689502, 26.108438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.444002, 7.909701, 26.408997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.334570, 7.555169, 26.259560>,  <16.268909, 7.342450, 26.169897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.334570, 7.555169, 26.259560>,  <16.444002, 7.909701, 26.408997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.334570, 7.555169, 26.259560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461256, -0.219938, 0.859575,
		-0.844035, 0.407486, -0.348655,
		-0.273582, -0.886331, -0.373591,
		16.252495, 7.289270, 26.147482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685803, 7.861130, 26.485886>,  <16.444002, 7.909701, 26.408997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.685803, 7.861130, 26.485886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.802167, 7.480412, 26.446987>,  <15.871985, 7.251981, 26.423649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.802167, 7.480412, 26.446987>,  <15.685803, 7.861130, 26.485886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.802167, 7.480412, 26.446987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514464, -0.241313, 0.822858,
		-0.806659, -0.189348, -0.559865,
		0.290909, -0.951796, -0.097245,
		15.889440, 7.194873, 26.417814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078231, 7.494790, 26.604431>,  <15.685803, 7.861130, 26.485886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.078231, 7.494790, 26.604431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.376047, 7.233208, 26.658098>,  <15.554737, 7.076259, 26.690298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.376047, 7.233208, 26.658098>,  <15.078231, 7.494790, 26.604431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.376047, 7.233208, 26.658098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518283, -0.439567, 0.733596,
		-0.420752, -0.615740, -0.666208,
		0.744547, -0.653946, 0.134179,
		15.599409, 7.037021, 26.698349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.767830, 6.870732, 26.608187>,  <15.078231, 7.494790, 26.604431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.767830, 6.870732, 26.608187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.117075, 6.805383, 26.791918>,  <15.326622, 6.766174, 26.902157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.117075, 6.805383, 26.791918>,  <14.767830, 6.870732, 26.608187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.117075, 6.805383, 26.791918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470999, -0.525851, 0.708266,
		0.125828, -0.834739, -0.536076,
		0.873114, -0.163372, 0.459328,
		15.379009, 6.756371, 26.929716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.806960, 6.176889, 26.671576>,  <14.767830, 6.870732, 26.608187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.806960, 6.176889, 26.671576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.059625, 6.339784, 26.935442>,  <15.211224, 6.437520, 27.093761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.059625, 6.339784, 26.935442>,  <14.806960, 6.176889, 26.671576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059625, 6.339784, 26.935442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472327, -0.472590, 0.744020,
		0.614744, -0.781548, -0.106168,
		0.631662, 0.407236, 0.659668,
		15.249124, 6.461955, 27.133343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988204, 5.668372, 27.190023>,  <14.806960, 6.176889, 26.671576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.988204, 5.668372, 27.190023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.098722, 6.000954, 27.382832>,  <15.165032, 6.200503, 27.498516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.098722, 6.000954, 27.382832>,  <14.988204, 5.668372, 27.190023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.098722, 6.000954, 27.382832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350085, -0.380015, 0.856171,
		0.895043, -0.405304, 0.186084,
		0.276294, 0.831455, 0.482020,
		15.181610, 6.250390, 27.527437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159883, 5.462374, 27.797905>,  <14.988204, 5.668372, 27.190023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159883, 5.462374, 27.797905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.120804, 5.855199, 27.862413>,  <15.097356, 6.090894, 27.901119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.120804, 5.855199, 27.862413>,  <15.159883, 5.462374, 27.797905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.120804, 5.855199, 27.862413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180826, -0.176868, 0.967481,
		0.978651, 0.065359, 0.194862,
		-0.097699, 0.982062, 0.161273,
		15.091495, 6.149817, 27.910795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480626, 5.557706, 28.393764>,  <15.159883, 5.462374, 27.797905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480626, 5.557706, 28.393764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.231681, 5.869775, 28.368481>,  <15.082314, 6.057016, 28.353312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.231681, 5.869775, 28.368481>,  <15.480626, 5.557706, 28.393764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.231681, 5.869775, 28.368481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378901, -0.229626, 0.896496,
		0.684907, 0.581896, 0.438519,
		-0.622364, 0.780172, -0.063208,
		15.044971, 6.103827, 28.349518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492259, 5.929531, 29.081720>,  <15.480626, 5.557706, 28.393764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492259, 5.929531, 29.081720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.153595, 6.008594, 28.884096>,  <14.950397, 6.056032, 28.765522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.153595, 6.008594, 28.884096>,  <15.492259, 5.929531, 29.081720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.153595, 6.008594, 28.884096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531403, -0.265447, 0.804455,
		0.027860, 0.943647, 0.329780,
		-0.846661, 0.197658, -0.494061,
		14.899597, 6.067892, 28.735878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058818, 6.357529, 29.474651>,  <15.492259, 5.929531, 29.081720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.058818, 6.357529, 29.474651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.787544, 6.187957, 29.234533>,  <14.624781, 6.086215, 29.090464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.787544, 6.187957, 29.234533>,  <15.058818, 6.357529, 29.474651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787544, 6.187957, 29.234533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590783, -0.171327, 0.788430,
		-0.437084, 0.889343, -0.134259,
		-0.678183, -0.423929, -0.600293,
		14.584089, 6.060779, 29.054445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464458, 6.591330, 29.689682>,  <15.058818, 6.357529, 29.474651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464458, 6.591330, 29.689682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.336919, 6.283075, 29.468973>,  <14.260395, 6.098122, 29.336548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.336919, 6.283075, 29.468973>,  <14.464458, 6.591330, 29.689682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.336919, 6.283075, 29.468973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704316, -0.196919, 0.682028,
		-0.634251, 0.606086, -0.479985,
		-0.318850, -0.770638, -0.551772,
		14.241264, 6.051884, 29.303442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.713559, 6.580881, 29.669367>,  <14.464458, 6.591330, 29.689682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.713559, 6.580881, 29.669367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.804770, 6.206769, 29.561104>,  <13.859495, 5.982301, 29.496147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.804770, 6.206769, 29.561104>,  <13.713559, 6.580881, 29.669367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804770, 6.206769, 29.561104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572881, -0.353648, 0.739419,
		-0.787282, -0.013552, -0.616445,
		0.228025, -0.935281, -0.270656,
		13.873178, 5.926184, 29.479906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757883, 7.221648, 29.914209>,  <13.713559, 6.580881, 29.669367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757883, 7.221648, 29.914209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.520300, 7.510341, 30.056374>,  <13.377750, 7.683557, 30.141672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.520300, 7.510341, 30.056374>,  <13.757883, 7.221648, 29.914209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.520300, 7.510341, 30.056374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187762, 0.553944, -0.811105,
		-0.782279, -0.415029, -0.464533,
		-0.593957, 0.721732, 0.355412,
		13.342113, 7.726860, 30.162996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.383540, 7.383528, 29.383055>,  <13.757883, 7.221648, 29.914209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.383540, 7.383528, 29.383055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.406789, 7.691375, 29.637396>,  <13.420738, 7.876083, 29.790001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.406789, 7.691375, 29.637396>,  <13.383540, 7.383528, 29.383055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.406789, 7.691375, 29.637396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335980, 0.584697, -0.738408,
		-0.940074, 0.256551, -0.224593,
		0.058121, 0.769617, 0.635855,
		13.424225, 7.922260, 29.828152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.015364, 7.907474, 29.067356>,  <13.383540, 7.383528, 29.383055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.015364, 7.907474, 29.067356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.250338, 8.110058, 29.319838>,  <13.391322, 8.231608, 29.471327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.250338, 8.110058, 29.319838>,  <13.015364, 7.907474, 29.067356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250338, 8.110058, 29.319838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163920, 0.689332, -0.705657,
		-0.792496, 0.517994, 0.321919,
		0.587436, 0.506461, 0.631203,
		13.426568, 8.261996, 29.509199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.950363, 8.558925, 28.741739>,  <13.015364, 7.907474, 29.067356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.950363, 8.558925, 28.741739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.251407, 8.605421, 29.000990>,  <13.432033, 8.633319, 29.156540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.251407, 8.605421, 29.000990>,  <12.950363, 8.558925, 28.741739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.251407, 8.605421, 29.000990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392891, 0.710607, -0.583673,
		-0.528410, 0.693921, 0.489139,
		0.752608, 0.116240, 0.648127,
		13.477189, 8.640293, 29.195429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.075040, 9.279332, 28.973812>,  <12.950363, 8.558925, 28.741739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.075040, 9.279332, 28.973812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.419788, 9.083895, 29.028149>,  <13.626637, 8.966632, 29.060751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.419788, 9.083895, 29.028149>,  <13.075040, 9.279332, 28.973812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.419788, 9.083895, 29.028149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430541, 0.563425, -0.705115,
		0.267977, 0.666204, 0.695960,
		0.861872, -0.488594, 0.135843,
		13.678349, 8.937317, 29.068901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.583089, 9.799267, 28.986626>,  <13.075040, 9.279332, 28.973812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.583089, 9.799267, 28.986626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.745703, 9.455264, 28.863260>,  <13.843271, 9.248862, 28.789242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.745703, 9.455264, 28.863260>,  <13.583089, 9.799267, 28.986626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.745703, 9.455264, 28.863260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519022, 0.495198, -0.696703,
		0.751895, 0.123161, 0.647677,
		0.406535, -0.860006, -0.308414,
		13.867663, 9.197262, 28.770737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.253974, 9.999842, 28.843197>,  <13.583089, 9.799267, 28.986626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.253974, 9.999842, 28.843197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.207557, 9.656847, 28.642696>,  <14.179707, 9.451050, 28.522396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.207557, 9.656847, 28.642696>,  <14.253974, 9.999842, 28.843197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.207557, 9.656847, 28.642696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370820, 0.430766, -0.822759,
		0.921426, -0.281349, 0.267986,
		-0.116043, -0.857486, -0.501249,
		14.172744, 9.399601, 28.492321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797058, 10.223585, 29.226330>,  <14.253974, 9.999842, 28.843197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.797058, 10.223585, 29.226330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.730758, 10.599442, 29.346062>,  <14.690977, 10.824957, 29.417900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.730758, 10.599442, 29.346062>,  <14.797058, 10.223585, 29.226330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.730758, 10.599442, 29.346062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239057, -0.332759, 0.912208,
		0.956754, 0.079642, 0.279784,
		-0.165751, 0.939643, 0.299330,
		14.681032, 10.881335, 29.435860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.216665, 10.368049, 29.783148>,  <14.797058, 10.223585, 29.226330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.216665, 10.368049, 29.783148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.912216, 10.623501, 29.828480>,  <14.729548, 10.776772, 29.855679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.912216, 10.623501, 29.828480>,  <15.216665, 10.368049, 29.783148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912216, 10.623501, 29.828480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048150, -0.118614, 0.991772,
		0.646820, 0.760316, 0.059530,
		-0.761122, 0.638631, 0.113331,
		14.683880, 10.815090, 29.862478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319916, 10.677425, 30.391214>,  <15.216665, 10.368049, 29.783148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319916, 10.677425, 30.391214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.924715, 10.736156, 30.372044>,  <14.687594, 10.771394, 30.360542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.924715, 10.736156, 30.372044>,  <15.319916, 10.677425, 30.391214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924715, 10.736156, 30.372044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091943, -0.309802, 0.946345,
		0.124100, 0.939396, 0.319584,
		-0.988001, 0.146826, -0.047925,
		14.628315, 10.780203, 30.357666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078854, 11.240629, 30.892857>,  <15.319916, 10.677425, 30.391214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.078854, 11.240629, 30.892857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.769035, 11.001132, 30.811287>,  <14.583144, 10.857433, 30.762344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.769035, 11.001132, 30.811287>,  <15.078854, 11.240629, 30.892857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.769035, 11.001132, 30.811287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046217, -0.267966, 0.962319,
		-0.630827, 0.754785, 0.179880,
		-0.774545, -0.598744, -0.203924,
		14.536672, 10.821508, 30.750109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.588894, 11.326239, 31.448711>,  <15.078854, 11.240629, 30.892857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.588894, 11.326239, 31.448711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.467742, 10.981583, 31.285816>,  <14.395051, 10.774789, 31.188080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.467742, 10.981583, 31.285816>,  <14.588894, 11.326239, 31.448711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.467742, 10.981583, 31.285816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085248, -0.401102, 0.912058,
		-0.949209, 0.310959, 0.048032,
		-0.302879, -0.861639, -0.407238,
		14.376879, 10.723091, 31.163645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.980670, 11.239214, 31.707485>,  <14.588894, 11.326239, 31.448711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.980670, 11.239214, 31.707485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.101418, 10.878632, 31.583387>,  <14.173867, 10.662282, 31.508928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.101418, 10.878632, 31.583387>,  <13.980670, 11.239214, 31.707485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.101418, 10.878632, 31.583387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284018, -0.395685, 0.873366,
		-0.910059, -0.175528, -0.375475,
		0.301870, -0.901456, -0.310243,
		14.191979, 10.608194, 31.490314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387330, 10.867928, 31.927044>,  <13.980670, 11.239214, 31.707485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387330, 10.867928, 31.927044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.685080, 10.604032, 31.885763>,  <13.863729, 10.445694, 31.860994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.685080, 10.604032, 31.885763>,  <13.387330, 10.867928, 31.927044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.685080, 10.604032, 31.885763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156917, -0.323039, 0.933286,
		-0.649064, -0.678520, -0.343986,
		0.744374, -0.659739, -0.103201,
		13.908392, 10.406110, 31.854803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.183843, 10.205724, 32.170864>,  <13.387330, 10.867928, 31.927044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.183843, 10.205724, 32.170864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.579385, 10.190945, 32.228554>,  <13.816710, 10.182077, 32.263168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.579385, 10.190945, 32.228554>,  <13.183843, 10.205724, 32.170864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.579385, 10.190945, 32.228554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147950, -0.352006, 0.924231,
		0.016621, -0.935268, -0.353550,
		0.988855, -0.036946, 0.144223,
		13.876041, 10.179860, 32.271820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.273961, 9.583774, 32.436390>,  <13.183843, 10.205724, 32.170864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.273961, 9.583774, 32.436390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.598521, 9.790772, 32.545074>,  <13.793258, 9.914972, 32.610283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.598521, 9.790772, 32.545074>,  <13.273961, 9.583774, 32.436390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.598521, 9.790772, 32.545074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132321, -0.290159, 0.947786,
		0.569316, -0.804987, -0.166959,
		0.811400, 0.517498, 0.271709,
		13.841941, 9.946022, 32.626587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.700657, 17.998617, 18.600195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028862, 18.108192, 18.800879>,  <17.225786, 18.173937, 18.921289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028862, 18.108192, 18.800879>,  <16.700657, 17.998617, 18.600195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028862, 18.108192, 18.800879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143905, -0.750434, 0.645089,
		0.553215, -0.601504, -0.576321,
		0.820515, 0.273938, 0.501711,
		17.275017, 18.190374, 18.951391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012945, 17.308298, 18.808878>,  <16.700657, 17.998617, 18.600195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012945, 17.308298, 18.808878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181631, 17.567799, 19.062263>,  <17.282843, 17.723499, 19.214294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181631, 17.567799, 19.062263>,  <17.012945, 17.308298, 18.808878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181631, 17.567799, 19.062263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162130, -0.633416, 0.756636,
		0.892115, -0.421789, -0.161939,
		0.421715, 0.648751, 0.633465,
		17.308146, 17.762424, 19.252302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.532213, 16.951300, 19.145130>,  <17.012945, 17.308298, 18.808878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.532213, 16.951300, 19.145130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.424213, 17.247746, 19.391008>,  <17.359413, 17.425613, 19.538536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.424213, 17.247746, 19.391008>,  <17.532213, 16.951300, 19.145130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.424213, 17.247746, 19.391008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217616, -0.668854, 0.710828,
		0.937947, 0.058154, 0.341868,
		-0.269998, 0.741115, 0.614695,
		17.343214, 17.470079, 19.575417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687944, 16.703846, 19.832237>,  <17.532213, 16.951300, 19.145130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687944, 16.703846, 19.832237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445795, 17.012882, 19.908791>,  <17.300505, 17.198303, 19.954723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445795, 17.012882, 19.908791>,  <17.687944, 16.703846, 19.832237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445795, 17.012882, 19.908791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458612, -0.535101, 0.709466,
		0.650536, 0.341722, 0.678255,
		-0.605375, 0.772589, 0.191385,
		17.264183, 17.244659, 19.966206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647404, 16.741074, 20.532747>,  <17.687944, 16.703846, 19.832237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647404, 16.741074, 20.532747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316656, 16.939188, 20.426180>,  <17.118208, 17.058056, 20.362240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316656, 16.939188, 20.426180>,  <17.647404, 16.741074, 20.532747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.316656, 16.939188, 20.426180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512323, -0.467974, 0.720087,
		0.231973, 0.731910, 0.640700,
		-0.826870, 0.495286, -0.266417,
		17.068596, 17.087774, 20.346254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.333931, 17.067371, 21.174202>,  <17.647404, 16.741074, 20.532747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.333931, 17.067371, 21.174202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.032810, 17.025694, 20.914223>,  <16.852139, 17.000687, 20.758236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.032810, 17.025694, 20.914223>,  <17.333931, 17.067371, 21.174202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.032810, 17.025694, 20.914223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620701, -0.216342, 0.753609,
		-0.219132, 0.970742, 0.098190,
		-0.752802, -0.104194, -0.649948,
		16.806969, 16.994436, 20.719238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.808250, 17.297733, 21.518644>,  <17.333931, 17.067371, 21.174202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.808250, 17.297733, 21.518644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.605616, 17.105104, 21.232578>,  <16.484034, 16.989527, 21.060940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.605616, 17.105104, 21.232578>,  <16.808250, 17.297733, 21.518644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.605616, 17.105104, 21.232578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610535, -0.385318, 0.691937,
		-0.608781, 0.787159, -0.098817,
		-0.506589, -0.481570, -0.715163,
		16.453638, 16.960634, 21.018030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036177, 17.447500, 21.631342>,  <16.808250, 17.297733, 21.518644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.036177, 17.447500, 21.631342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040216, 17.114189, 21.410236>,  <16.042641, 16.914202, 21.277573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040216, 17.114189, 21.410236>,  <16.036177, 17.447500, 21.631342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040216, 17.114189, 21.410236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494373, -0.484667, 0.721591,
		-0.869191, 0.265984, -0.416844,
		0.010099, -0.833277, -0.552764,
		16.043245, 16.864206, 21.244408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.288338, 17.180788, 21.588770>,  <16.036177, 17.447500, 21.631342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.288338, 17.180788, 21.588770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.547509, 16.878735, 21.548855>,  <15.703012, 16.697502, 21.524906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.547509, 16.878735, 21.548855>,  <15.288338, 17.180788, 21.588770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547509, 16.878735, 21.548855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533652, -0.543510, 0.647930,
		-0.543510, -0.366561, -0.755136,
		-0.647930, 0.755136, 0.099788,
		15.741888, 16.652193, 21.518919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864267, 16.581680, 21.632433>,  <15.288338, 17.180788, 21.588770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864267, 16.581680, 21.632433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.234898, 16.432064, 21.648195>,  <15.457275, 16.342295, 21.657652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.234898, 16.432064, 21.648195>,  <14.864267, 16.581680, 21.632433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234898, 16.432064, 21.648195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323988, -0.740567, 0.588721,
		-0.191024, -0.558260, -0.807376,
		0.926575, -0.374039, 0.039404,
		15.512870, 16.319853, 21.660017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.790539, 15.871908, 21.559547>,  <14.864267, 16.581680, 21.632433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.790539, 15.871908, 21.559547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152804, 15.917995, 21.722763>,  <15.370164, 15.945648, 21.820692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152804, 15.917995, 21.722763>,  <14.790539, 15.871908, 21.559547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.152804, 15.917995, 21.722763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248863, -0.634703, 0.731587,
		0.343275, -0.764119, -0.546154,
		0.905665, 0.115218, 0.408039,
		15.424504, 15.952560, 21.845175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.132828, 15.160343, 21.608063>,  <14.790539, 15.871908, 21.559547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.132828, 15.160343, 21.608063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.309895, 15.400572, 21.874403>,  <15.416135, 15.544709, 22.034208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.309895, 15.400572, 21.874403>,  <15.132828, 15.160343, 21.608063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.309895, 15.400572, 21.874403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080714, -0.712868, 0.696638,
		0.893046, -0.362123, -0.267089,
		0.442668, 0.600571, 0.665852,
		15.442695, 15.580743, 22.074160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051188, 14.371114, 21.470856>,  <15.132828, 15.160343, 21.608063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051188, 14.371114, 21.470856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.834435, 14.039031, 21.418522>,  <14.704382, 13.839782, 21.387121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.834435, 14.039031, 21.418522>,  <15.051188, 14.371114, 21.470856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.834435, 14.039031, 21.418522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080642, 0.206312, -0.975158,
		0.836575, -0.517872, -0.178747,
		-0.541884, -0.830207, -0.130833,
		14.671869, 13.789968, 21.379272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.117144, 14.109111, 20.780434>,  <15.051188, 14.371114, 21.470856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.117144, 14.109111, 20.780434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.797514, 13.890174, 20.879950>,  <14.605736, 13.758812, 20.939659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.797514, 13.890174, 20.879950>,  <15.117144, 14.109111, 20.780434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.797514, 13.890174, 20.879950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265850, -0.049487, -0.962743,
		0.539262, -0.835444, -0.105967,
		-0.799075, -0.547342, 0.248790,
		14.557792, 13.725971, 20.954586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.104125, 13.590350, 20.412214>,  <15.117144, 14.109111, 20.780434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.104125, 13.590350, 20.412214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720410, 13.641837, 20.512774>,  <14.490181, 13.672729, 20.573109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720410, 13.641837, 20.512774>,  <15.104125, 13.590350, 20.412214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720410, 13.641837, 20.512774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230305, 0.158738, -0.960084,
		-0.163486, -0.978894, -0.122631,
		-0.959287, 0.128718, 0.251396,
		14.432624, 13.680452, 20.588192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594589, 13.217457, 19.871958>,  <15.104125, 13.590350, 20.412214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594589, 13.217457, 19.871958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351054, 13.460931, 20.075455>,  <14.204933, 13.607016, 20.197554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351054, 13.460931, 20.075455>,  <14.594589, 13.217457, 19.871958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.351054, 13.460931, 20.075455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527362, 0.168532, -0.832758,
		-0.592628, -0.775305, 0.218390,
		-0.608837, 0.608686, 0.508743,
		14.168404, 13.643537, 20.228077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.940224, 12.974027, 19.811279>,  <14.594589, 13.217457, 19.871958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.940224, 12.974027, 19.811279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.929603, 13.365769, 19.891436>,  <13.923230, 13.600815, 19.939529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.929603, 13.365769, 19.891436>,  <13.940224, 12.974027, 19.811279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.929603, 13.365769, 19.891436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570366, 0.149786, -0.807618,
		-0.820961, -0.135740, 0.554614,
		-0.026553, 0.979356, 0.200390,
		13.921637, 13.659576, 19.951553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.302159, 13.031202, 19.626314>,  <13.940224, 12.974027, 19.811279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.302159, 13.031202, 19.626314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463656, 13.396783, 19.642731>,  <13.560555, 13.616131, 19.652580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463656, 13.396783, 19.642731>,  <13.302159, 13.031202, 19.626314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.463656, 13.396783, 19.642731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462906, 0.242774, -0.852513,
		-0.789120, 0.325198, 0.521091,
		0.403743, 0.913951, 0.041042,
		13.584780, 13.670968, 19.655043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.817966, 13.367617, 19.462229>,  <13.302159, 13.031202, 19.626314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.817966, 13.367617, 19.462229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.106206, 13.637411, 19.397976>,  <13.279150, 13.799288, 19.359425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.106206, 13.637411, 19.397976>,  <12.817966, 13.367617, 19.462229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.106206, 13.637411, 19.397976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403109, 0.219059, -0.888547,
		-0.564125, 0.705040, 0.429746,
		0.720601, 0.674486, -0.160632,
		13.322387, 13.839757, 19.349787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440592, 13.891519, 19.222155>,  <12.817966, 13.367617, 19.462229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440592, 13.891519, 19.222155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.822870, 13.907388, 19.105488>,  <13.052238, 13.916909, 19.035488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.822870, 13.907388, 19.105488>,  <12.440592, 13.891519, 19.222155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.822870, 13.907388, 19.105488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293624, 0.198241, -0.935139,
		0.020722, 0.979350, 0.201107,
		0.955696, 0.039672, -0.291669,
		13.109579, 13.919290, 19.017986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.517536, 14.537819, 18.855042>,  <12.440592, 13.891519, 19.222155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.517536, 14.537819, 18.855042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.806110, 14.302933, 18.708233>,  <12.979255, 14.162001, 18.620148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.806110, 14.302933, 18.708233>,  <12.517536, 14.537819, 18.855042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.806110, 14.302933, 18.708233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264638, 0.255990, -0.929750,
		0.639919, 0.767884, 0.029280,
		0.721436, -0.587216, -0.367024,
		13.022541, 14.126768, 18.598125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.638296, 14.857254, 18.251242>,  <12.517536, 14.537819, 18.855042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.638296, 14.857254, 18.251242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.836937, 14.516326, 18.185591>,  <12.956121, 14.311769, 18.146200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.836937, 14.516326, 18.185591>,  <12.638296, 14.857254, 18.251242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.836937, 14.516326, 18.185591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027877, 0.173332, -0.984469,
		0.867530, 0.493465, 0.062318,
		0.496603, -0.852319, -0.164127,
		12.985918, 14.260631, 18.136353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.147762, 15.072921, 17.841253>,  <12.638296, 14.857254, 18.251242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.147762, 15.072921, 17.841253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.120904, 14.678833, 17.778219>,  <13.104789, 14.442380, 17.740398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.120904, 14.678833, 17.778219>,  <13.147762, 15.072921, 17.841253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.120904, 14.678833, 17.778219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048778, 0.154512, -0.986786,
		0.996550, -0.073946, 0.037682,
		-0.067146, -0.985220, -0.157586,
		13.100760, 14.383267, 17.730944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.635609, 15.076234, 17.285614>,  <13.147762, 15.072921, 17.841253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.635609, 15.076234, 17.285614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.434657, 14.730885, 17.266840>,  <13.314086, 14.523675, 17.255575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.434657, 14.730885, 17.266840>,  <13.635609, 15.076234, 17.285614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.434657, 14.730885, 17.266840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060225, 0.019209, -0.998000,
		0.862547, -0.504201, 0.042347,
		-0.502380, -0.863373, -0.046934,
		13.283943, 14.471873, 17.252760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025586, 14.696339, 16.855185>,  <13.635609, 15.076234, 17.285614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025586, 14.696339, 16.855185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.656326, 14.542594, 16.852079>,  <13.434771, 14.450347, 16.850216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.656326, 14.542594, 16.852079>,  <14.025586, 14.696339, 16.855185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.656326, 14.542594, 16.852079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031613, -0.055777, -0.997943,
		0.383139, -0.921496, 0.063641,
		-0.923150, -0.384363, -0.007761,
		13.379381, 14.427285, 16.849751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472255, 14.005919, 17.126825>,  <14.025586, 14.696339, 16.855185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472255, 14.005919, 17.126825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611798, 13.775330, 17.422386>,  <14.695524, 13.636976, 17.599724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611798, 13.775330, 17.422386>,  <14.472255, 14.005919, 17.126825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611798, 13.775330, 17.422386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544714, -0.766307, -0.340676,
		0.762617, -0.283643, -0.581345,
		0.348858, -0.576473, 0.738903,
		14.716455, 13.602387, 17.644056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857183, 13.434615, 16.898579>,  <14.472255, 14.005919, 17.126825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.857183, 13.434615, 16.898579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.690509, 13.345001, 17.250984>,  <14.590505, 13.291233, 17.462427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.690509, 13.345001, 17.250984>,  <14.857183, 13.434615, 16.898579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.690509, 13.345001, 17.250984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313354, -0.874359, -0.370547,
		0.853337, -0.430469, 0.294130,
		-0.416684, -0.224035, 0.881012,
		14.565503, 13.277791, 17.515287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383043, 12.849813, 16.907404>,  <14.857183, 13.434615, 16.898579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.383043, 12.849813, 16.907404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.555534, 13.183585, 16.770134>,  <15.659029, 13.383848, 16.687771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.555534, 13.183585, 16.770134>,  <15.383043, 12.849813, 16.907404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.555534, 13.183585, 16.770134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602852, 0.016514, 0.797682,
		0.671277, -0.550867, -0.495917,
		0.431227, 0.834430, -0.343177,
		15.684902, 13.433914, 16.667181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199286, 12.778970, 16.909304>,  <15.383043, 12.849813, 16.907404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.199286, 12.778970, 16.909304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.072001, 13.152783, 16.973038>,  <15.995629, 13.377071, 17.011278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.072001, 13.152783, 16.973038>,  <16.199286, 12.778970, 16.909304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.072001, 13.152783, 16.973038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770389, 0.156960, 0.617951,
		0.552486, 0.319392, -0.769901,
		-0.318212, 0.934533, 0.159337,
		15.976537, 13.433144, 17.020840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788523, 12.179945, 16.968855>,  <16.199286, 12.778970, 16.909304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.788523, 12.179945, 16.968855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.186405, 12.219143, 16.956511>,  <17.425135, 12.242661, 16.949104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.186405, 12.219143, 16.956511>,  <16.788523, 12.179945, 16.968855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.186405, 12.219143, 16.956511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101266, -0.884506, 0.455406,
		0.017332, -0.456121, -0.889749,
		0.994708, 0.097995, -0.030859,
		17.484818, 12.248542, 16.947252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.124617, 11.496001, 16.722136>,  <16.788523, 12.179945, 16.968855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.124617, 11.496001, 16.722136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.370068, 11.711792, 16.952761>,  <17.517338, 11.841267, 17.091135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.370068, 11.711792, 16.952761>,  <17.124617, 11.496001, 16.722136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.370068, 11.711792, 16.952761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017932, -0.739534, 0.672881,
		0.789390, -0.402560, -0.463474,
		0.613630, 0.539477, 0.576562,
		17.554157, 11.873635, 17.125729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554897, 10.956932, 17.036909>,  <17.124617, 11.496001, 16.722136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554897, 10.956932, 17.036909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.626360, 11.281724, 17.259178>,  <17.669237, 11.476599, 17.392540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.626360, 11.281724, 17.259178>,  <17.554897, 10.956932, 17.036909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626360, 11.281724, 17.259178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092546, -0.576121, 0.812108,
		0.979549, -0.093664, -0.178074,
		0.178657, 0.811980, 0.555671,
		17.679956, 11.525318, 17.425879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279430, 10.835984, 17.216511>,  <17.554897, 10.956932, 17.036909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279430, 10.835984, 17.216511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070580, 11.060966, 17.472956>,  <17.945269, 11.195954, 17.626823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070580, 11.060966, 17.472956>,  <18.279430, 10.835984, 17.216511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070580, 11.060966, 17.472956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160750, -0.673341, 0.721645,
		0.837580, 0.479850, 0.261157,
		-0.522129, 0.562454, 0.641113,
		17.913940, 11.229702, 17.665289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685221, 10.858193, 17.801155>,  <18.279430, 10.835984, 17.216511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685221, 10.858193, 17.801155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.324032, 10.968289, 17.933147>,  <18.107319, 11.034348, 18.012342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.324032, 10.968289, 17.933147>,  <18.685221, 10.858193, 17.801155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.324032, 10.968289, 17.933147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034648, -0.718791, 0.694362,
		0.428304, 0.638421, 0.639511,
		-0.902970, 0.275241, 0.329981,
		18.053141, 11.050861, 18.032143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.821228, 11.139337, 18.508848>,  <18.685221, 10.858193, 17.801155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.821228, 11.139337, 18.508848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.425514, 11.081082, 18.504774>,  <18.188086, 11.046129, 18.502329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.425514, 11.081082, 18.504774>,  <18.821228, 11.139337, 18.508848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.425514, 11.081082, 18.504774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038625, -0.328374, 0.943758,
		-0.140790, 0.933253, 0.330481,
		-0.989286, -0.145636, -0.010185,
		18.128729, 11.037392, 18.501719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.607059, 11.353623, 19.109068>,  <18.821228, 11.139337, 18.508848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.607059, 11.353623, 19.109068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.314283, 11.109331, 18.988222>,  <18.138618, 10.962755, 18.915714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.314283, 11.109331, 18.988222>,  <18.607059, 11.353623, 19.109068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.314283, 11.109331, 18.988222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055702, -0.388274, 0.919859,
		-0.679090, 0.690109, 0.250174,
		-0.731939, -0.610731, -0.302113,
		18.094702, 10.926111, 18.897589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098053, 11.284966, 19.659142>,  <18.607059, 11.353623, 19.109068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098053, 11.284966, 19.659142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001637, 10.969346, 19.433117>,  <17.943787, 10.779974, 19.297503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001637, 10.969346, 19.433117>,  <18.098053, 11.284966, 19.659142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001637, 10.969346, 19.433117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146285, -0.546040, 0.824888,
		-0.959426, 0.281494, 0.016193,
		-0.241043, -0.789051, -0.565064,
		17.929323, 10.732631, 19.263597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414387, 11.043548, 19.848379>,  <18.098053, 11.284966, 19.659142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414387, 11.043548, 19.848379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.631868, 10.740341, 19.704269>,  <17.762358, 10.558417, 19.617804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.631868, 10.740341, 19.704269>,  <17.414387, 11.043548, 19.848379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.631868, 10.740341, 19.704269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183072, -0.526047, 0.830518,
		-0.819067, -0.385599, -0.424785,
		0.543703, -0.758016, -0.360276,
		17.794979, 10.512937, 19.596188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.004215, 10.543826, 20.028618>,  <17.414387, 11.043548, 19.848379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.004215, 10.543826, 20.028618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333925, 10.337762, 19.934654>,  <17.531752, 10.214123, 19.878277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333925, 10.337762, 19.934654>,  <17.004215, 10.543826, 20.028618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333925, 10.337762, 19.934654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088970, -0.527586, 0.844830,
		-0.559163, -0.675468, -0.480708,
		0.824270, -0.515166, -0.234910,
		17.581207, 10.183213, 19.864182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788681, 9.928114, 20.163618>,  <17.004215, 10.543826, 20.028618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.788681, 9.928114, 20.163618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.186552, 9.894630, 20.139601>,  <17.425276, 9.874540, 20.125191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.186552, 9.894630, 20.139601>,  <16.788681, 9.928114, 20.163618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.186552, 9.894630, 20.139601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002077, -0.599050, 0.800709,
		-0.102995, -0.796324, -0.596036,
		0.994680, -0.083707, -0.060045,
		17.484957, 9.869518, 20.121588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.959049, 9.230724, 20.582855>,  <16.788681, 9.928114, 20.163618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.959049, 9.230724, 20.582855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.324982, 9.392251, 20.581423>,  <17.544542, 9.489167, 20.580563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.324982, 9.392251, 20.581423>,  <16.959049, 9.230724, 20.582855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.324982, 9.392251, 20.581423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141159, -0.311455, 0.939718,
		0.378358, -0.860191, -0.341932,
		0.914833, 0.403816, -0.003583,
		17.599432, 9.513396, 20.580349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413204, 8.701427, 20.769657>,  <16.959049, 9.230724, 20.582855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413204, 8.701427, 20.769657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.571096, 9.058746, 20.855640>,  <17.665833, 9.273138, 20.907230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.571096, 9.058746, 20.855640>,  <17.413204, 8.701427, 20.769657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.571096, 9.058746, 20.855640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061260, -0.259022, 0.963927,
		0.916752, -0.367325, -0.156967,
		0.394733, 0.893297, 0.214956,
		17.689516, 9.326735, 20.920128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.090134, 8.631112, 21.189156>,  <17.413204, 8.701427, 20.769657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.090134, 8.631112, 21.189156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.942362, 8.998511, 21.245556>,  <17.853699, 9.218951, 21.279396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.942362, 8.998511, 21.245556>,  <18.090134, 8.631112, 21.189156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.942362, 8.998511, 21.245556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026425, -0.141290, 0.989615,
		0.928883, 0.369320, 0.027926,
		-0.369430, 0.918499, 0.141001,
		17.831533, 9.274061, 21.287857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545116, 8.973550, 21.576736>,  <18.090134, 8.631112, 21.189156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.545116, 8.973550, 21.576736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180639, 9.132077, 21.621744>,  <17.961952, 9.227194, 21.648748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180639, 9.132077, 21.621744>,  <18.545116, 8.973550, 21.576736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180639, 9.132077, 21.621744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069412, -0.121528, 0.990158,
		0.406092, 0.910034, 0.083226,
		-0.911192, 0.396318, 0.112518,
		17.907282, 9.250973, 21.655500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.516939, 9.299295, 22.286987>,  <18.545116, 8.973550, 21.576736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.516939, 9.299295, 22.286987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125505, 9.280938, 22.206718>,  <17.890646, 9.269923, 22.158558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125505, 9.280938, 22.206718>,  <18.516939, 9.299295, 22.286987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125505, 9.280938, 22.206718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181698, -0.265599, 0.946807,
		-0.096750, 0.962990, 0.251572,
		-0.978583, -0.045894, -0.200670,
		17.831930, 9.267170, 22.146517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144922, 9.557206, 22.891966>,  <18.516939, 9.299295, 22.286987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144922, 9.557206, 22.891966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.871807, 9.340066, 22.696369>,  <17.707937, 9.209782, 22.579012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.871807, 9.340066, 22.696369>,  <18.144922, 9.557206, 22.891966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.871807, 9.340066, 22.696369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198630, -0.506155, 0.839257,
		-0.703098, 0.670164, 0.237770,
		-0.682788, -0.542851, -0.488991,
		17.666971, 9.177211, 22.549671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.535707, 9.546679, 23.279520>,  <18.144922, 9.557206, 22.891966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.535707, 9.546679, 23.279520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.500467, 9.224426, 23.045187>,  <17.479324, 9.031075, 22.904587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.500467, 9.224426, 23.045187>,  <17.535707, 9.546679, 23.279520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.500467, 9.224426, 23.045187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496689, -0.474263, 0.726893,
		-0.863446, 0.355015, -0.358366,
		-0.088099, -0.805630, -0.585832,
		17.474037, 8.982738, 22.869438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.828638, 9.378801, 23.473684>,  <17.535707, 9.546679, 23.279520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.828638, 9.378801, 23.473684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026834, 9.066176, 23.322081>,  <17.145752, 8.878601, 23.231119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026834, 9.066176, 23.322081>,  <16.828638, 9.378801, 23.473684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026834, 9.066176, 23.322081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313593, -0.567868, 0.761043,
		-0.810030, -0.258235, -0.526466,
		0.495491, -0.781563, -0.379010,
		17.175482, 8.831708, 23.208378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482523, 8.808965, 23.379494>,  <16.828638, 9.378801, 23.473684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482523, 8.808965, 23.379494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.825687, 8.603682, 23.389330>,  <17.031586, 8.480512, 23.395231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.825687, 8.603682, 23.389330>,  <16.482523, 8.808965, 23.379494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.825687, 8.603682, 23.389330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400847, -0.638606, 0.656890,
		-0.321416, -0.573412, -0.753585,
		0.857912, -0.513207, 0.024593,
		17.083061, 8.449719, 23.396708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272421, 8.161321, 23.350330>,  <16.482523, 8.808965, 23.379494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272421, 8.161321, 23.350330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.639317, 8.151921, 23.509386>,  <16.859455, 8.146281, 23.604820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.639317, 8.151921, 23.509386>,  <16.272421, 8.161321, 23.350330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.639317, 8.151921, 23.509386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346292, -0.540377, 0.766860,
		0.196856, -0.841095, -0.503793,
		0.917240, -0.023498, 0.397641,
		16.914488, 8.144872, 23.628679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336151, 7.354011, 23.598825>,  <16.272421, 8.161321, 23.350330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.336151, 7.354011, 23.598825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.625397, 7.571410, 23.769341>,  <16.798944, 7.701849, 23.871649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.625397, 7.571410, 23.769341>,  <16.336151, 7.354011, 23.598825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.625397, 7.571410, 23.769341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177901, -0.449791, 0.875237,
		0.667428, -0.708731, -0.228561,
		0.723112, 0.543497, 0.426287,
		16.842331, 7.734458, 23.897226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758017, 6.826483, 23.863472>,  <16.336151, 7.354011, 23.598825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758017, 6.826483, 23.863472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.826593, 7.179646, 24.038324>,  <16.867739, 7.391543, 24.143236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.826593, 7.179646, 24.038324>,  <16.758017, 6.826483, 23.863472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826593, 7.179646, 24.038324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014872, -0.441331, 0.897221,
		0.985082, -0.160321, -0.062531,
		0.171440, 0.882906, 0.437132,
		16.878025, 7.444518, 24.169464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.158642, 6.650685, 24.408342>,  <16.758017, 6.826483, 23.863472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.158642, 6.650685, 24.408342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003281, 7.003296, 24.515713>,  <16.910063, 7.214862, 24.580135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003281, 7.003296, 24.515713>,  <17.158642, 6.650685, 24.408342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003281, 7.003296, 24.515713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114720, -0.335285, 0.935106,
		0.914320, 0.332406, 0.231356,
		-0.388405, 0.881527, 0.268424,
		16.886759, 7.267754, 24.596239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233128, 6.587478, 25.072569>,  <17.158642, 6.650685, 24.408342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233128, 6.587478, 25.072569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990524, 6.905058, 25.055649>,  <16.844961, 7.095606, 25.045496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990524, 6.905058, 25.055649>,  <17.233128, 6.587478, 25.072569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.990524, 6.905058, 25.055649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145705, -0.058688, 0.987586,
		0.781611, 0.605144, 0.151278,
		-0.606510, 0.793950, -0.042301,
		16.808571, 7.143243, 25.042959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
