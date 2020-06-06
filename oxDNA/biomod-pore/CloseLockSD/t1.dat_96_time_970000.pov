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
	<4.059105, 14.880421, 14.310129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.246360, 14.998845, 14.643163>,  <4.358713, 15.069900, 14.842983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.246360, 14.998845, 14.643163>,  <4.059105, 14.880421, 14.310129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246360, 14.998845, 14.643163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332601, -0.931949, 0.144384,
		0.818673, 0.209327, -0.534750,
		0.468136, 0.296062, 0.832584,
		4.386801, 15.087664, 14.892938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.726739, 14.489895, 14.416471>,  <4.059105, 14.880421, 14.310129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.726739, 14.489895, 14.416471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652812, 14.611963, 14.790148>,  <4.608456, 14.685205, 15.014354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652812, 14.611963, 14.790148>,  <4.726739, 14.489895, 14.416471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.652812, 14.611963, 14.790148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335825, -0.873737, 0.351860,
		0.923614, 0.378755, 0.058999,
		-0.184818, 0.305170, 0.934191,
		4.597367, 14.703514, 15.070405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.319133, 14.338822, 14.936465>,  <4.726739, 14.489895, 14.416471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.319133, 14.338822, 14.936465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.947621, 14.345168, 15.084582>,  <4.724714, 14.348975, 15.173452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.947621, 14.345168, 15.084582>,  <5.319133, 14.338822, 14.936465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.947621, 14.345168, 15.084582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103831, -0.947941, 0.301044,
		0.355791, 0.318051, 0.878781,
		-0.928780, 0.015864, 0.370293,
		4.668987, 14.349927, 15.195670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.357731, 13.762970, 15.379251>,  <5.319133, 14.338822, 14.936465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.357731, 13.762970, 15.379251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698451, 13.711857, 15.582470>,  <5.902882, 13.681190, 15.704401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698451, 13.711857, 15.582470>,  <5.357731, 13.762970, 15.379251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.698451, 13.711857, 15.582470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149077, 0.870576, 0.468907,
		-0.502212, -0.475152, 0.722506,
		0.851798, -0.127782, 0.508047,
		5.953990, 13.673522, 15.734884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.232502, 13.910949, 16.169922>,  <5.357731, 13.762970, 15.379251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.232502, 13.910949, 16.169922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.603301, 13.982721, 16.038177>,  <5.825780, 14.025784, 15.959130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.603301, 13.982721, 16.038177>,  <5.232502, 13.910949, 16.169922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.603301, 13.982721, 16.038177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035986, 0.831542, 0.554295,
		0.373336, -0.525683, 0.764381,
		0.926998, 0.179431, -0.329362,
		5.881400, 14.036551, 15.939369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.539759, 14.152018, 16.735620>,  <5.232502, 13.910949, 16.169922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.539759, 14.152018, 16.735620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.775085, 14.269507, 16.434261>,  <5.916281, 14.340001, 16.253445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.775085, 14.269507, 16.434261>,  <5.539759, 14.152018, 16.735620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.775085, 14.269507, 16.434261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183094, 0.859114, 0.477912,
		0.787631, -0.419106, 0.451650,
		0.588315, 0.293724, -0.753401,
		5.951580, 14.357624, 16.208241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.207886, 14.279224, 16.988573>,  <5.539759, 14.152018, 16.735620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.207886, 14.279224, 16.988573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.160203, 14.514913, 16.668921>,  <6.131593, 14.656325, 16.477129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.160203, 14.514913, 16.668921>,  <6.207886, 14.279224, 16.988573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.160203, 14.514913, 16.668921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298518, 0.788898, 0.537147,
		0.946930, -0.174522, -0.269936,
		-0.119208, 0.589222, -0.799129,
		6.124440, 14.691679, 16.429182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.718974, 14.632245, 17.097540>,  <6.207886, 14.279224, 16.988573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.718974, 14.632245, 17.097540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.497962, 14.821919, 16.823357>,  <6.365354, 14.935724, 16.658846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.497962, 14.821919, 16.823357>,  <6.718974, 14.632245, 17.097540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.497962, 14.821919, 16.823357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176192, 0.870261, 0.460003,
		0.814656, 0.133394, -0.564395,
		-0.552532, 0.474186, -0.685460,
		6.332202, 14.964175, 16.617718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.034548, 15.276562, 16.970270>,  <6.718974, 14.632245, 17.097540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.034548, 15.276562, 16.970270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.664377, 15.332312, 16.829325>,  <6.442275, 15.365762, 16.744757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.664377, 15.332312, 16.829325>,  <7.034548, 15.276562, 16.970270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.664377, 15.332312, 16.829325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006110, 0.935267, 0.353891,
		0.378879, 0.325347, -0.866372,
		-0.925426, 0.139375, -0.352365,
		6.386749, 15.374125, 16.723616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.050927, 15.964758, 16.793367>,  <7.034548, 15.276562, 16.970270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.050927, 15.964758, 16.793367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.666200, 15.861493, 16.829720>,  <6.435364, 15.799534, 16.851530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.666200, 15.861493, 16.829720>,  <7.050927, 15.964758, 16.793367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.666200, 15.861493, 16.829720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198457, 0.886514, 0.417980,
		-0.188472, 0.383985, -0.903899,
		-0.961818, -0.258163, 0.090879,
		6.377655, 15.784044, 16.856983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.755625, 16.505833, 16.481224>,  <7.050927, 15.964758, 16.793367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.755625, 16.505833, 16.481224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.530714, 16.305012, 16.744066>,  <6.395766, 16.184519, 16.901772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.530714, 16.305012, 16.744066>,  <6.755625, 16.505833, 16.481224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.530714, 16.305012, 16.744066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259300, 0.861579, 0.436400,
		-0.785242, 0.074992, -0.614631,
		-0.562279, -0.502053, 0.657103,
		6.362030, 16.154396, 16.941196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.359894, 17.032537, 16.681370>,  <6.755625, 16.505833, 16.481224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.359894, 17.032537, 16.681370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.308969, 16.758059, 16.967844>,  <6.278413, 16.593370, 17.139729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.308969, 16.758059, 16.967844>,  <6.359894, 17.032537, 16.681370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.308969, 16.758059, 16.967844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148161, 0.727118, 0.670334,
		-0.980734, -0.020768, -0.194240,
		-0.127314, -0.686198, 0.716187,
		6.270774, 16.552198, 17.182699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.832389, 17.346912, 17.087376>,  <6.359894, 17.032537, 16.681370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.832389, 17.346912, 17.087376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.999722, 17.090803, 17.345074>,  <6.100122, 16.937138, 17.499693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.999722, 17.090803, 17.345074>,  <5.832389, 17.346912, 17.087376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.999722, 17.090803, 17.345074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094722, 0.736176, 0.670129,
		-0.903341, -0.219312, 0.368614,
		0.418333, -0.640271, 0.644245,
		6.125222, 16.898722, 17.538347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.458511, 17.406799, 17.771389>,  <5.832389, 17.346912, 17.087376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.458511, 17.406799, 17.771389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.808992, 17.225880, 17.837954>,  <6.019281, 17.117327, 17.877893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.808992, 17.225880, 17.837954>,  <5.458511, 17.406799, 17.771389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.808992, 17.225880, 17.837954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129838, 0.554064, 0.822287,
		-0.464124, -0.698883, 0.544198,
		0.876203, -0.452300, 0.166413,
		6.071853, 17.090189, 17.887877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.381839, 17.109707, 18.319458>,  <5.458511, 17.406799, 17.771389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.381839, 17.109707, 18.319458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779782, 17.136662, 18.289219>,  <6.018548, 17.152834, 18.271076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779782, 17.136662, 18.289219>,  <5.381839, 17.109707, 18.319458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.779782, 17.136662, 18.289219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006305, 0.703828, 0.710342,
		0.101075, -0.707167, 0.699785,
		0.994859, 0.067386, -0.075598,
		6.078240, 17.156878, 18.266539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.629517, 17.313562, 18.998159>,  <5.381839, 17.109707, 18.319458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.629517, 17.313562, 18.998159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.938599, 17.391386, 18.756474>,  <6.124048, 17.438080, 18.611462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.938599, 17.391386, 18.756474>,  <5.629517, 17.313562, 18.998159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.938599, 17.391386, 18.756474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290645, 0.737784, 0.609262,
		0.564317, -0.646391, 0.513542,
		0.772704, 0.194558, -0.604214,
		6.170410, 17.449753, 18.575209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.269117, 17.131575, 19.379166>,  <5.629517, 17.313562, 18.998159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.269117, 17.131575, 19.379166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.332275, 17.392883, 19.082973>,  <6.370171, 17.549667, 18.905258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.332275, 17.392883, 19.082973>,  <6.269117, 17.131575, 19.379166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.332275, 17.392883, 19.082973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532226, 0.575336, 0.621066,
		0.831748, -0.492166, -0.256844,
		0.157896, 0.653270, -0.740478,
		6.379644, 17.588863, 18.860830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.995385, 17.282164, 19.424110>,  <6.269117, 17.131575, 19.379166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.995385, 17.282164, 19.424110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.862498, 17.588947, 19.204508>,  <6.782766, 17.773018, 19.072746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.862498, 17.588947, 19.204508>,  <6.995385, 17.282164, 19.424110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.862498, 17.588947, 19.204508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577983, 0.625515, 0.524087,
		0.745364, -0.143206, -0.651094,
		-0.332216, 0.766957, -0.549007,
		6.762833, 17.819035, 19.039806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.627855, 17.649519, 19.227554>,  <6.995385, 17.282164, 19.424110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.627855, 17.649519, 19.227554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.324394, 17.903645, 19.169836>,  <7.142318, 18.056120, 19.135204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.324394, 17.903645, 19.169836>,  <7.627855, 17.649519, 19.227554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.324394, 17.903645, 19.169836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589000, 0.763501, 0.264852,
		0.278436, 0.115940, -0.953432,
		-0.758652, 0.635315, -0.144297,
		7.096798, 18.094238, 19.126547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.876459, 18.237093, 18.883320>,  <7.627855, 17.649519, 19.227554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.876459, 18.237093, 18.883320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541281, 18.353682, 19.067881>,  <7.340175, 18.423635, 19.178617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541281, 18.353682, 19.067881>,  <7.876459, 18.237093, 18.883320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.541281, 18.353682, 19.067881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486925, 0.781111, 0.390858,
		-0.246483, 0.552186, -0.796453,
		-0.837944, 0.291473, 0.461403,
		7.289898, 18.441124, 19.206301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.904724, 18.964058, 18.819561>,  <7.876459, 18.237093, 18.883320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.904724, 18.964058, 18.819561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.622224, 18.928272, 19.100475>,  <7.452724, 18.906801, 19.269024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.622224, 18.928272, 19.100475>,  <7.904724, 18.964058, 18.819561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.622224, 18.928272, 19.100475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390455, 0.778253, 0.491799,
		-0.590556, 0.621545, -0.514709,
		-0.706249, -0.089464, 0.702288,
		7.410349, 18.901434, 19.311161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.640138, 19.738098, 18.978106>,  <7.904724, 18.964058, 18.819561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.640138, 19.738098, 18.978106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.545167, 19.504387, 19.288525>,  <7.488184, 19.364161, 19.474775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.545167, 19.504387, 19.288525>,  <7.640138, 19.738098, 18.978106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.545167, 19.504387, 19.288525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442733, 0.646007, 0.621822,
		-0.864648, 0.491219, 0.105299,
		-0.237427, -0.584276, 0.776048,
		7.473939, 19.329103, 19.521339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.465489, 20.156948, 19.415028>,  <7.640138, 19.738098, 18.978106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.465489, 20.156948, 19.415028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.543479, 19.847321, 19.655962>,  <7.590272, 19.661545, 19.800522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.543479, 19.847321, 19.655962>,  <7.465489, 20.156948, 19.415028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.543479, 19.847321, 19.655962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485489, 0.609775, 0.626478,
		-0.852224, 0.170280, 0.494691,
		0.194974, -0.774067, 0.602334,
		7.601971, 19.615101, 19.836662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.414888, 20.438932, 20.031200>,  <7.465489, 20.156948, 19.415028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.414888, 20.438932, 20.031200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.637774, 20.113350, 20.096909>,  <7.771504, 19.917999, 20.136333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.637774, 20.113350, 20.096909>,  <7.414888, 20.438932, 20.031200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.637774, 20.113350, 20.096909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524146, 0.498211, 0.690694,
		-0.644038, -0.298760, 0.704242,
		0.557213, -0.813959, 0.164273,
		7.804937, 19.869162, 20.146191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.434046, 20.376652, 20.760468>,  <7.414888, 20.438932, 20.031200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.434046, 20.376652, 20.760468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.742453, 20.174641, 20.605301>,  <7.927497, 20.053434, 20.512201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.742453, 20.174641, 20.605301>,  <7.434046, 20.376652, 20.760468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.742453, 20.174641, 20.605301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616932, 0.441339, 0.651625,
		-0.157884, -0.741734, 0.651847,
		0.771017, -0.505026, -0.387919,
		7.973758, 20.023132, 20.488926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.858690, 19.949001, 21.277079>,  <7.434046, 20.376652, 20.760468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.858690, 19.949001, 21.277079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.054788, 20.116035, 20.971064>,  <8.172446, 20.216255, 20.787455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.054788, 20.116035, 20.971064>,  <7.858690, 19.949001, 21.277079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.054788, 20.116035, 20.971064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559701, 0.522025, 0.643602,
		0.668129, -0.743714, 0.022196,
		0.490243, 0.417586, -0.765038,
		8.201860, 20.241312, 20.741552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.573148, 19.783855, 21.208138>,  <7.858690, 19.949001, 21.277079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.573148, 19.783855, 21.208138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.541849, 20.147799, 21.045147>,  <8.523070, 20.366165, 20.947353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.541849, 20.147799, 21.045147>,  <8.573148, 19.783855, 21.208138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.541849, 20.147799, 21.045147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692851, 0.343516, 0.633998,
		0.716822, -0.232711, -0.657276,
		-0.078247, 0.909858, -0.407474,
		8.518375, 20.420755, 20.922905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.681104, 20.067673, 21.793356>,  <8.573148, 19.783855, 21.208138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.681104, 20.067673, 21.793356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.621051, 19.895452, 22.149353>,  <8.585019, 19.792120, 22.362951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.621051, 19.895452, 22.149353>,  <8.681104, 20.067673, 21.793356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.621051, 19.895452, 22.149353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413242, -0.845116, -0.339131,
		0.898160, 0.316868, 0.304800,
		-0.150132, -0.430550, 0.889993,
		8.576011, 19.766287, 22.416351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.225974, 19.769932, 22.187656>,  <8.681104, 20.067673, 21.793356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.225974, 19.769932, 22.187656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.903251, 19.548338, 22.269787>,  <8.709617, 19.415380, 22.319065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.903251, 19.548338, 22.269787>,  <9.225974, 19.769932, 22.187656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.903251, 19.548338, 22.269787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351031, -0.729024, -0.587623,
		0.475223, -0.402023, 0.782649,
		-0.806808, -0.553987, 0.205327,
		8.661208, 19.382141, 22.331385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.574292, 19.779259, 22.855013>,  <9.225974, 19.769932, 22.187656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.574292, 19.779259, 22.855013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.256145, 19.537045, 22.844303>,  <9.065257, 19.391716, 22.837877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.256145, 19.537045, 22.844303>,  <9.574292, 19.779259, 22.855013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.256145, 19.537045, 22.844303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566142, -0.757952, 0.324025,
		-0.216504, 0.242560, 0.945670,
		-0.795368, -0.605536, -0.026776,
		9.017535, 19.355383, 22.836269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.528326, 19.312092, 23.505007>,  <9.574292, 19.779259, 22.855013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.528326, 19.312092, 23.505007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353326, 19.159803, 23.179148>,  <9.248326, 19.068430, 22.983633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353326, 19.159803, 23.179148>,  <9.528326, 19.312092, 23.505007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.353326, 19.159803, 23.179148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350493, -0.906496, 0.235415,
		-0.828100, -0.182533, 0.530031,
		-0.437499, -0.380719, -0.814645,
		9.222076, 19.045588, 22.934753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.048751, 19.005508, 23.103128>,  <9.528326, 19.312092, 23.505007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.048751, 19.005508, 23.103128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.439218, 18.993378, 23.017174>,  <10.673498, 18.986099, 22.965601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.439218, 18.993378, 23.017174>,  <10.048751, 19.005508, 23.103128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.439218, 18.993378, 23.017174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216981, -0.118066, -0.969010,
		0.004014, 0.992543, -0.121832,
		0.976168, -0.030325, -0.214889,
		10.732068, 18.984280, 22.952707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.279148, 19.419899, 22.542635>,  <10.048751, 19.005508, 23.103128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.279148, 19.419899, 22.542635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.510490, 19.095325, 22.576288>,  <10.649296, 18.900581, 22.596481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.510490, 19.095325, 22.576288>,  <10.279148, 19.419899, 22.542635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.510490, 19.095325, 22.576288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160702, -0.214435, -0.963427,
		0.799800, 0.543683, -0.254419,
		0.578355, -0.811435, 0.084134,
		10.683997, 18.851894, 22.601528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.559839, 19.444363, 21.922812>,  <10.279148, 19.419899, 22.542635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.559839, 19.444363, 21.922812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584268, 19.076935, 22.079018>,  <10.598925, 18.856478, 22.172741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584268, 19.076935, 22.079018>,  <10.559839, 19.444363, 21.922812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.584268, 19.076935, 22.079018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096000, -0.394836, -0.913722,
		0.993506, 0.018311, -0.112296,
		0.061070, -0.918569, 0.390514,
		10.602589, 18.801365, 22.196173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.128045, 18.925861, 21.730959>,  <10.559839, 19.444363, 21.922812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.128045, 18.925861, 21.730959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.801546, 18.716417, 21.828587>,  <10.605647, 18.590750, 21.887163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.801546, 18.716417, 21.828587>,  <11.128045, 18.925861, 21.730959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.801546, 18.716417, 21.828587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011022, -0.436522, -0.899626,
		0.577598, -0.731627, 0.362081,
		-0.816247, -0.523612, 0.244071,
		10.556672, 18.559334, 21.901808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.103604, 18.337818, 21.349867>,  <11.128045, 18.925861, 21.730959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.103604, 18.337818, 21.349867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.726833, 18.358809, 21.482542>,  <10.500771, 18.371403, 21.562147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.726833, 18.358809, 21.482542>,  <11.103604, 18.337818, 21.349867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.726833, 18.358809, 21.482542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251695, -0.764189, -0.593856,
		0.222310, -0.642854, 0.733019,
		-0.941928, 0.052477, 0.331690,
		10.444255, 18.374552, 21.582048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.861726, 17.621481, 21.603254>,  <11.103604, 18.337818, 21.349867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.861726, 17.621481, 21.603254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.522722, 17.824898, 21.542440>,  <10.319320, 17.946947, 21.505953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.522722, 17.824898, 21.542440>,  <10.861726, 17.621481, 21.603254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.522722, 17.824898, 21.542440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280920, -0.672785, -0.684430,
		-0.450347, -0.537351, 0.713051,
		-0.847509, 0.508541, -0.152034,
		10.268470, 17.977461, 21.496830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.214475, 17.105356, 21.696268>,  <10.861726, 17.621481, 21.603254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.214475, 17.105356, 21.696268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.079643, 17.419382, 21.488401>,  <9.998744, 17.607798, 21.363682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.079643, 17.419382, 21.488401>,  <10.214475, 17.105356, 21.696268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.079643, 17.419382, 21.488401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416205, -0.619363, -0.665705,
		-0.844483, -0.008107, 0.535521,
		-0.337079, 0.785063, -0.519668,
		9.978519, 17.654902, 21.332500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.609275, 16.869814, 21.455223>,  <10.214475, 17.105356, 21.696268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.609275, 16.869814, 21.455223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.662970, 17.174706, 21.201929>,  <9.695187, 17.357641, 21.049953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.662970, 17.174706, 21.201929>,  <9.609275, 16.869814, 21.455223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.662970, 17.174706, 21.201929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428585, -0.531503, -0.730629,
		-0.893474, 0.369473, 0.255332,
		0.134238, 0.762230, -0.633235,
		9.703241, 17.403374, 21.011959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.108841, 16.807211, 21.017523>,  <9.609275, 16.869814, 21.455223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.108841, 16.807211, 21.017523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353642, 17.048044, 20.812407>,  <9.500522, 17.192543, 20.689337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353642, 17.048044, 20.812407>,  <9.108841, 16.807211, 21.017523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.353642, 17.048044, 20.812407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184444, -0.521855, -0.832856,
		-0.769048, 0.604289, -0.208325,
		0.612001, 0.602082, -0.512789,
		9.537242, 17.228668, 20.658569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.691275, 17.069298, 20.420948>,  <9.108841, 16.807211, 21.017523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.691275, 17.069298, 20.420948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.083864, 17.066389, 20.344366>,  <9.319418, 17.064644, 20.298416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.083864, 17.066389, 20.344366>,  <8.691275, 17.069298, 20.420948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.083864, 17.066389, 20.344366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168946, -0.504145, -0.846933,
		-0.090363, 0.863588, -0.496034,
		0.981474, -0.007272, -0.191456,
		9.378306, 17.064207, 20.286930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.867559, 17.394787, 19.790051>,  <8.691275, 17.069298, 20.420948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.867559, 17.394787, 19.790051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.160766, 17.132399, 19.862040>,  <9.336689, 16.974966, 19.905233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.160766, 17.132399, 19.862040>,  <8.867559, 17.394787, 19.790051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.160766, 17.132399, 19.862040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126274, -0.391213, -0.911596,
		0.668389, 0.645488, -0.369597,
		0.733015, -0.655971, 0.179974,
		9.380671, 16.935608, 19.916031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.133698, 17.362862, 19.205193>,  <8.867559, 17.394787, 19.790051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.133698, 17.362862, 19.205193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.299041, 17.045521, 19.383957>,  <9.398247, 16.855116, 19.491215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.299041, 17.045521, 19.383957>,  <9.133698, 17.362862, 19.205193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.299041, 17.045521, 19.383957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217199, -0.562541, -0.797729,
		0.884285, 0.232679, -0.404846,
		0.413357, -0.793352, 0.446910,
		9.423048, 16.807514, 19.518030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.427227, 17.045237, 18.751827>,  <9.133698, 17.362862, 19.205193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.427227, 17.045237, 18.751827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.433579, 16.739334, 19.009478>,  <9.437390, 16.555792, 19.164068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.433579, 16.739334, 19.009478>,  <9.427227, 17.045237, 18.751827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.433579, 16.739334, 19.009478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186302, -0.635188, -0.749552,
		0.982364, -0.108098, -0.152562,
		0.015880, -0.764756, 0.644124,
		9.438344, 16.509907, 19.202715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.039106, 16.593283, 18.594795>,  <9.427227, 17.045237, 18.751827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.039106, 16.593283, 18.594795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.759688, 16.384991, 18.791111>,  <9.592037, 16.260015, 18.908901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.759688, 16.384991, 18.791111>,  <10.039106, 16.593283, 18.594795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.759688, 16.384991, 18.791111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003311, -0.688221, -0.725494,
		0.715558, -0.505165, 0.482477,
		-0.698545, -0.520730, 0.490789,
		9.550125, 16.228771, 18.938349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.251451, 15.949735, 18.492697>,  <10.039106, 16.593283, 18.594795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.251451, 15.949735, 18.492697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.871004, 15.913184, 18.610701>,  <9.642736, 15.891253, 18.681503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.871004, 15.913184, 18.610701>,  <10.251451, 15.949735, 18.492697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.871004, 15.913184, 18.610701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150559, -0.696838, -0.701248,
		0.269651, -0.711384, 0.649016,
		-0.951115, -0.091377, 0.295008,
		9.585670, 15.885771, 18.699203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.138118, 15.261281, 18.548170>,  <10.251451, 15.949735, 18.492697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.138118, 15.261281, 18.548170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.767028, 15.408084, 18.520947>,  <9.544374, 15.496165, 18.504612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.767028, 15.408084, 18.520947>,  <10.138118, 15.261281, 18.548170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.767028, 15.408084, 18.520947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172087, -0.582344, -0.794520,
		-0.331227, -0.725385, 0.603412,
		-0.927725, 0.367006, -0.068059,
		9.488710, 15.518186, 18.500528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.759845, 14.657158, 18.436794>,  <10.138118, 15.261281, 18.548170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.759845, 14.657158, 18.436794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.538613, 14.965239, 18.309738>,  <9.405874, 15.150086, 18.233505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.538613, 14.965239, 18.309738>,  <9.759845, 14.657158, 18.436794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.538613, 14.965239, 18.309738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201943, -0.493825, -0.845787,
		-0.808284, -0.403642, 0.428661,
		-0.553079, 0.770201, -0.317638,
		9.372689, 15.196299, 18.214447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.303560, 14.313860, 18.158987>,  <9.759845, 14.657158, 18.436794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.303560, 14.313860, 18.158987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.243741, 14.678998, 18.007015>,  <9.207850, 14.898081, 17.915833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.243741, 14.678998, 18.007015>,  <9.303560, 14.313860, 18.158987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.243741, 14.678998, 18.007015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263757, -0.407159, -0.874445,
		-0.952926, -0.030562, 0.301659,
		-0.149548, 0.912846, -0.379931,
		9.198876, 14.952852, 17.893036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.685435, 14.239593, 17.891760>,  <9.303560, 14.313860, 18.158987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.685435, 14.239593, 17.891760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.864876, 14.555557, 17.724525>,  <8.972540, 14.745136, 17.624184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.864876, 14.555557, 17.724525>,  <8.685435, 14.239593, 17.891760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.864876, 14.555557, 17.724525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214220, -0.359129, -0.908370,
		-0.867679, 0.497059, 0.008109,
		0.448601, 0.789911, -0.418088,
		8.999456, 14.792530, 17.599098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.142107, 14.655731, 17.375864>,  <8.685435, 14.239593, 17.891760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.142107, 14.655731, 17.375864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.515854, 14.752194, 17.270945>,  <8.740102, 14.810072, 17.207993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.515854, 14.752194, 17.270945>,  <8.142107, 14.655731, 17.375864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.515854, 14.752194, 17.270945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173426, -0.335262, -0.926025,
		-0.311256, 0.910737, -0.271435,
		0.934368, 0.241157, -0.262298,
		8.796165, 14.824542, 17.192255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.075125, 14.996562, 16.694469>,  <8.142107, 14.655731, 17.375864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.075125, 14.996562, 16.694469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.463183, 14.899981, 16.703569>,  <8.696018, 14.842033, 16.709030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.463183, 14.899981, 16.703569>,  <8.075125, 14.996562, 16.694469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.463183, 14.899981, 16.703569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026312, -0.198050, -0.979839,
		0.241088, 0.949988, -0.198491,
		0.970147, -0.241450, 0.022751,
		8.754228, 14.827546, 16.710394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.355202, 15.348047, 16.091272>,  <8.075125, 14.996562, 16.694469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.355202, 15.348047, 16.091272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.570666, 15.036800, 16.220503>,  <8.699945, 14.850052, 16.298040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.570666, 15.036800, 16.220503>,  <8.355202, 15.348047, 16.091272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.570666, 15.036800, 16.220503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068934, -0.422880, -0.903560,
		0.839697, 0.464442, -0.281428,
		0.538662, -0.778117, 0.323075,
		8.732265, 14.803365, 16.317425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.641696, 15.163964, 15.542970>,  <8.355202, 15.348047, 16.091272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.641696, 15.163964, 15.542970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.721819, 14.830912, 15.749503>,  <8.769893, 14.631080, 15.873424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.721819, 14.830912, 15.749503>,  <8.641696, 15.163964, 15.542970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.721819, 14.830912, 15.749503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228937, -0.552203, -0.801660,
		0.952609, 0.042371, -0.301231,
		0.200308, -0.832632, 0.516334,
		8.781911, 14.581122, 15.904404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.217864, 14.793751, 15.178292>,  <8.641696, 15.163964, 15.542970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.217864, 14.793751, 15.178292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.996850, 14.525306, 15.376004>,  <8.864242, 14.364239, 15.494632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.996850, 14.525306, 15.376004>,  <9.217864, 14.793751, 15.178292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.996850, 14.525306, 15.376004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158756, -0.497428, -0.852855,
		0.818231, -0.549701, 0.168302,
		-0.552534, -0.671113, 0.494280,
		8.831090, 14.323972, 15.524288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.536490, 14.026296, 15.096879>,  <9.217864, 14.793751, 15.178292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.536490, 14.026296, 15.096879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.149715, 13.989089, 15.191855>,  <8.917650, 13.966765, 15.248841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.149715, 13.989089, 15.191855>,  <9.536490, 14.026296, 15.096879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.149715, 13.989089, 15.191855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135036, -0.603084, -0.786165,
		0.216324, -0.792236, 0.570584,
		-0.966938, -0.093017, 0.237442,
		8.859634, 13.961185, 15.263088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.473176, 13.382475, 14.823644>,  <9.536490, 14.026296, 15.096879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.473176, 13.382475, 14.823644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.132341, 13.587671, 14.865193>,  <8.927840, 13.710789, 14.890123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.132341, 13.587671, 14.865193>,  <9.473176, 13.382475, 14.823644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.132341, 13.587671, 14.865193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342269, -0.395980, -0.852086,
		-0.395980, -0.761604, 0.512990,
		0.852086, -0.512990, -0.103873,
		8.876716, 13.741569, 14.896356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.915273, 12.777751, 15.008346>,  <9.473176, 13.382475, 14.823644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.915273, 12.777751, 15.008346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136820, 12.558867, 14.757334>,  <10.269748, 12.427537, 14.606727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136820, 12.558867, 14.757334>,  <9.915273, 12.777751, 15.008346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.136820, 12.558867, 14.757334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825483, 0.459274, 0.328094,
		0.108672, -0.699736, 0.706088,
		0.553867, -0.547209, -0.627530,
		10.302980, 12.394705, 14.569075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.544289, 12.840963, 15.321212>,  <9.915273, 12.777751, 15.008346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.544289, 12.840963, 15.321212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.630426, 12.650676, 14.980080>,  <10.682109, 12.536503, 14.775400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.630426, 12.650676, 14.980080>,  <10.544289, 12.840963, 15.321212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.630426, 12.650676, 14.980080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961884, 0.254058, 0.101164,
		0.168543, -0.842108, 0.512297,
		0.215345, -0.475719, -0.852829,
		10.695030, 12.507960, 14.724231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.295753, 12.770032, 15.096091>,  <10.544289, 12.840963, 15.321212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.295753, 12.770032, 15.096091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.193706, 13.135996, 15.221219>,  <11.132478, 13.355574, 15.296296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.193706, 13.135996, 15.221219>,  <11.295753, 12.770032, 15.096091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.193706, 13.135996, 15.221219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844765, -0.053504, -0.532455,
		-0.470411, -0.400098, 0.786533,
		-0.255117, 0.914909, 0.312820,
		11.117170, 13.410469, 15.315065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.101861, 12.756465, 15.194561>,  <11.295753, 12.770032, 15.096091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.101861, 12.756465, 15.194561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.396317, 12.490367, 15.144688>,  <12.572991, 12.330709, 15.114764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.396317, 12.490367, 15.144688>,  <12.101861, 12.756465, 15.194561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.396317, 12.490367, 15.144688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658715, 0.661846, 0.357846,
		-0.155535, -0.345555, 0.925419,
		0.736141, -0.665245, -0.124682,
		12.617160, 12.290793, 15.107283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170327, 13.433400, 15.008860>,  <12.101861, 12.756465, 15.194561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170327, 13.433400, 15.008860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799561, 13.512476, 15.136449>,  <11.577101, 13.559921, 15.213002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799561, 13.512476, 15.136449>,  <12.170327, 13.433400, 15.008860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.799561, 13.512476, 15.136449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247099, -0.318186, 0.915259,
		0.282430, 0.927187, 0.246083,
		-0.926917, 0.197690, 0.318972,
		11.521485, 13.571783, 15.232141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.037857, 14.062062, 15.288986>,  <12.170327, 13.433400, 15.008860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.037857, 14.062062, 15.288986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834845, 13.786565, 15.496078>,  <11.713037, 13.621266, 15.620334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834845, 13.786565, 15.496078>,  <12.037857, 14.062062, 15.288986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.834845, 13.786565, 15.496078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601618, 0.146879, 0.785164,
		-0.616820, 0.709971, 0.339815,
		-0.507531, -0.688744, 0.517730,
		11.682585, 13.579942, 15.651398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.026529, 14.261519, 16.027723>,  <12.037857, 14.062062, 15.288986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.026529, 14.261519, 16.027723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.943366, 13.870949, 16.004526>,  <11.893468, 13.636606, 15.990607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.943366, 13.870949, 16.004526>,  <12.026529, 14.261519, 16.027723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.943366, 13.870949, 16.004526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541236, -0.164225, 0.824678,
		-0.814763, 0.140069, 0.562621,
		-0.207908, -0.976428, -0.057994,
		11.880994, 13.578020, 15.987128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.740468, 13.968570, 16.653210>,  <12.026529, 14.261519, 16.027723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.740468, 13.968570, 16.653210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948619, 13.704371, 16.436708>,  <12.073509, 13.545853, 16.306808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948619, 13.704371, 16.436708>,  <11.740468, 13.968570, 16.653210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.948619, 13.704371, 16.436708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592761, -0.176858, 0.785720,
		-0.614689, -0.729703, 0.299483,
		0.520376, -0.660495, -0.541252,
		12.104732, 13.506223, 16.274332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.708379, 13.283747, 16.895180>,  <11.740468, 13.968570, 16.653210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.708379, 13.283747, 16.895180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.069361, 13.354513, 16.738068>,  <12.285950, 13.396973, 16.643801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.069361, 13.354513, 16.738068>,  <11.708379, 13.283747, 16.895180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.069361, 13.354513, 16.738068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421960, -0.179427, 0.888682,
		0.086747, -0.967733, -0.236576,
		0.902455, 0.176916, -0.392780,
		12.340097, 13.407588, 16.620234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.105715, 12.746758, 17.169138>,  <11.708379, 13.283747, 16.895180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.105715, 12.746758, 17.169138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.357617, 13.042623, 17.074221>,  <12.508759, 13.220141, 17.017271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.357617, 13.042623, 17.074221>,  <12.105715, 12.746758, 17.169138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.357617, 13.042623, 17.074221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390317, -0.037196, 0.919929,
		0.671610, -0.671950, -0.312127,
		0.629756, 0.739662, -0.237292,
		12.546544, 13.264521, 17.003033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.723386, 12.546829, 17.460848>,  <12.105715, 12.746758, 17.169138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.723386, 12.546829, 17.460848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798924, 12.927654, 17.364588>,  <12.844248, 13.156149, 17.306831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798924, 12.927654, 17.364588>,  <12.723386, 12.546829, 17.460848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798924, 12.927654, 17.364588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557049, 0.097961, 0.824681,
		0.808723, -0.289793, -0.511847,
		0.188846, 0.952063, -0.240652,
		12.855578, 13.213273, 17.292393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.472548, 12.556264, 17.575562>,  <12.723386, 12.546829, 17.460848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.472548, 12.556264, 17.575562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309454, 12.918636, 17.621239>,  <13.211597, 13.136060, 17.648645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309454, 12.918636, 17.621239>,  <13.472548, 12.556264, 17.575562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309454, 12.918636, 17.621239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474355, 0.103294, 0.874253,
		0.780218, 0.410631, -0.471850,
		-0.407735, 0.905932, 0.114193,
		13.187134, 13.190416, 17.655497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985119, 13.056209, 17.722870>,  <13.472548, 12.556264, 17.575562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985119, 13.056209, 17.722870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.650836, 13.213165, 17.876556>,  <13.450266, 13.307340, 17.968769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.650836, 13.213165, 17.876556>,  <13.985119, 13.056209, 17.722870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.650836, 13.213165, 17.876556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487095, 0.206501, 0.848584,
		0.253637, 0.896318, -0.363707,
		-0.835707, 0.392393, 0.384216,
		13.400124, 13.330883, 17.991821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.229617, 13.637907, 18.061407>,  <13.985119, 13.056209, 17.722870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.229617, 13.637907, 18.061407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873647, 13.594443, 18.238596>,  <13.660065, 13.568365, 18.344910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873647, 13.594443, 18.238596>,  <14.229617, 13.637907, 18.061407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.873647, 13.594443, 18.238596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424857, 0.155796, 0.891753,
		-0.165911, 0.981795, -0.092482,
		-0.889927, -0.108660, 0.442971,
		13.606668, 13.561846, 18.371487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.244583, 14.190253, 18.532043>,  <14.229617, 13.637907, 18.061407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.244583, 14.190253, 18.532043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.941791, 13.960051, 18.655832>,  <13.760116, 13.821929, 18.730106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.941791, 13.960051, 18.655832>,  <14.244583, 14.190253, 18.532043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.941791, 13.960051, 18.655832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318819, 0.088117, 0.943711,
		-0.570381, 0.813036, 0.116780,
		-0.756981, -0.575506, 0.309472,
		13.714696, 13.787398, 18.748674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.972619, 14.607352, 19.117008>,  <14.244583, 14.190253, 18.532043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.972619, 14.607352, 19.117008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.871358, 14.220944, 19.137865>,  <13.810601, 13.989100, 19.150379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.871358, 14.220944, 19.137865>,  <13.972619, 14.607352, 19.117008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.871358, 14.220944, 19.137865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152595, 0.013352, 0.988199,
		-0.955316, 0.258123, 0.144030,
		-0.253154, -0.966020, 0.052143,
		13.795412, 13.931138, 19.153507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.504842, 14.586832, 19.683153>,  <13.972619, 14.607352, 19.117008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.504842, 14.586832, 19.683153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.619145, 14.205317, 19.645992>,  <13.687727, 13.976407, 19.623695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.619145, 14.205317, 19.645992>,  <13.504842, 14.586832, 19.683153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.619145, 14.205317, 19.645992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134905, -0.055942, 0.989278,
		-0.948759, -0.295227, 0.112685,
		0.285758, -0.953788, -0.092903,
		13.704873, 13.919180, 19.618122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.119819, 14.287169, 20.215790>,  <13.504842, 14.586832, 19.683153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.119819, 14.287169, 20.215790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418515, 14.037745, 20.123228>,  <13.597733, 13.888089, 20.067690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418515, 14.037745, 20.123228>,  <13.119819, 14.287169, 20.215790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418515, 14.037745, 20.123228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159953, -0.169344, 0.972490,
		-0.645596, -0.763212, -0.026715,
		0.746740, -0.623563, -0.231406,
		13.642537, 13.850676, 20.053806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.890802, 13.539641, 20.282125>,  <13.119819, 14.287169, 20.215790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.890802, 13.539641, 20.282125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287218, 13.526243, 20.333849>,  <13.525067, 13.518205, 20.364883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287218, 13.526243, 20.333849>,  <12.890802, 13.539641, 20.282125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.287218, 13.526243, 20.333849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131269, -0.423385, 0.896389,
		0.024724, -0.905331, -0.423987,
		0.991038, -0.033494, 0.129309,
		13.584530, 13.516194, 20.372643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.979562, 13.101839, 20.861088>,  <12.890802, 13.539641, 20.282125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.979562, 13.101839, 20.861088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.364530, 13.195889, 20.806732>,  <13.595510, 13.252318, 20.774118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.364530, 13.195889, 20.806732>,  <12.979562, 13.101839, 20.861088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.364530, 13.195889, 20.806732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218511, -0.373350, 0.901589,
		0.161251, -0.897400, -0.410697,
		0.962420, 0.235124, -0.135888,
		13.653255, 13.266425, 20.765966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.391492, 12.527446, 20.927937>,  <12.979562, 13.101839, 20.861088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.391492, 12.527446, 20.927937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.647440, 12.829982, 20.982368>,  <13.801008, 13.011503, 21.015028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.647440, 12.829982, 20.982368>,  <13.391492, 12.527446, 20.927937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.647440, 12.829982, 20.982368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216849, -0.347583, 0.912230,
		0.737254, -0.554199, -0.386419,
		0.639869, 0.756340, 0.136080,
		13.839401, 13.056884, 21.023191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.061327, 12.188440, 21.064657>,  <13.391492, 12.527446, 20.927937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.061327, 12.188440, 21.064657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001844, 12.549187, 21.226904>,  <13.966155, 12.765635, 21.324253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001844, 12.549187, 21.226904>,  <14.061327, 12.188440, 21.064657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001844, 12.549187, 21.226904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005543, -0.409412, 0.912333,
		0.988866, 0.137918, 0.055883,
		-0.148706, 0.901865, 0.405619,
		13.957232, 12.819746, 21.348589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579641, 12.280554, 21.565102>,  <14.061327, 12.188440, 21.064657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579641, 12.280554, 21.565102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.313325, 12.565071, 21.655243>,  <14.153535, 12.735782, 21.709328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.313325, 12.565071, 21.655243>,  <14.579641, 12.280554, 21.565102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.313325, 12.565071, 21.655243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130008, -0.186813, 0.973755,
		0.734724, 0.677616, 0.031905,
		-0.665792, 0.711293, 0.225351,
		14.113587, 12.778459, 21.722849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988895, 12.712087, 22.024445>,  <14.579641, 12.280554, 21.565102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.988895, 12.712087, 22.024445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.599334, 12.780444, 22.084185>,  <14.365597, 12.821459, 22.120029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.599334, 12.780444, 22.084185>,  <14.988895, 12.712087, 22.024445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.599334, 12.780444, 22.084185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133296, -0.101909, 0.985823,
		0.183691, 0.980005, 0.076470,
		-0.973905, 0.170893, 0.149350,
		14.307162, 12.831712, 22.128990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848514, 13.230468, 22.572510>,  <14.988895, 12.712087, 22.024445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848514, 13.230468, 22.572510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.514626, 13.010203, 22.573935>,  <14.314293, 12.878044, 22.574789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.514626, 13.010203, 22.573935>,  <14.848514, 13.230468, 22.572510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.514626, 13.010203, 22.573935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048609, -0.067237, 0.996552,
		-0.548523, 0.832016, 0.082892,
		-0.834721, -0.550662, 0.003563,
		14.264209, 12.845005, 22.575003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.580386, 13.246320, 23.287668>,  <14.848514, 13.230468, 22.572510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.580386, 13.246320, 23.287668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.327945, 12.959251, 23.169918>,  <14.176480, 12.787010, 23.099268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.327945, 12.959251, 23.169918>,  <14.580386, 13.246320, 23.287668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.327945, 12.959251, 23.169918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054223, -0.337754, 0.939671,
		-0.773802, 0.608991, 0.174243,
		-0.631102, -0.717672, -0.294375,
		14.138614, 12.743950, 23.081606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923617, 13.296176, 23.722450>,  <14.580386, 13.246320, 23.287668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.923617, 13.296176, 23.722450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943954, 12.930970, 23.560553>,  <13.956155, 12.711846, 23.463413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943954, 12.930970, 23.560553>,  <13.923617, 13.296176, 23.722450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943954, 12.930970, 23.560553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385201, -0.391838, 0.835514,
		-0.921431, 0.113431, -0.371615,
		0.050840, -0.913015, -0.404745,
		13.959206, 12.657065, 23.439129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.333215, 12.943205, 23.895111>,  <13.923617, 13.296176, 23.722450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.333215, 12.943205, 23.895111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593719, 12.653359, 23.804960>,  <13.750021, 12.479452, 23.750870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593719, 12.653359, 23.804960>,  <13.333215, 12.943205, 23.895111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.593719, 12.653359, 23.804960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270612, -0.499233, 0.823125,
		-0.708964, -0.475079, -0.521220,
		0.651259, -0.724615, -0.225376,
		13.789097, 12.435975, 23.737347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.997698, 12.233091, 23.883684>,  <13.333215, 12.943205, 23.895111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.997698, 12.233091, 23.883684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.378679, 12.134897, 23.955870>,  <13.607268, 12.075981, 23.999182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.378679, 12.134897, 23.955870>,  <12.997698, 12.233091, 23.883684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.378679, 12.134897, 23.955870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271964, -0.417980, 0.866792,
		-0.137353, -0.874660, -0.464870,
		0.952454, -0.245485, 0.180465,
		13.664415, 12.061252, 24.010010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.887260, 11.640278, 24.155708>,  <12.997698, 12.233091, 23.883684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.887260, 11.640278, 24.155708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.271388, 11.716988, 24.236710>,  <13.501864, 11.763014, 24.285311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.271388, 11.716988, 24.236710>,  <12.887260, 11.640278, 24.155708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.271388, 11.716988, 24.236710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171321, -0.167330, 0.970902,
		0.220080, -0.967069, -0.127835,
		0.960319, 0.191775, 0.202505,
		13.559484, 11.774520, 24.297461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.133622, 11.104841, 24.557413>,  <12.887260, 11.640278, 24.155708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.133622, 11.104841, 24.557413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377319, 11.407911, 24.651009>,  <13.523538, 11.589753, 24.707167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377319, 11.407911, 24.651009>,  <13.133622, 11.104841, 24.557413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377319, 11.407911, 24.651009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151001, -0.178828, 0.972224,
		0.778475, -0.627652, 0.005461,
		0.609242, 0.757676, 0.233989,
		13.560092, 11.635214, 24.721205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.655304, 10.761550, 24.954891>,  <13.133622, 11.104841, 24.557413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.655304, 10.761550, 24.954891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.640073, 11.150051, 25.048883>,  <13.630935, 11.383152, 25.105280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.640073, 11.150051, 25.048883>,  <13.655304, 10.761550, 24.954891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.640073, 11.150051, 25.048883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141629, -0.227534, 0.963416,
		0.989187, 0.069964, -0.128894,
		-0.038077, 0.971254, 0.234982,
		13.628650, 11.441427, 25.119379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144374, 10.848042, 25.605631>,  <13.655304, 10.761550, 24.954891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144374, 10.848042, 25.605631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961545, 11.203324, 25.586987>,  <13.851848, 11.416494, 25.575800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961545, 11.203324, 25.586987>,  <14.144374, 10.848042, 25.605631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.961545, 11.203324, 25.586987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087242, 0.096922, 0.991461,
		0.885141, 0.449102, -0.121789,
		-0.457071, 0.888208, -0.046609,
		13.824424, 11.469787, 25.573004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.585654, 11.481921, 25.879925>,  <14.144374, 10.848042, 25.605631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.585654, 11.481921, 25.879925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202310, 11.596126, 25.877823>,  <13.972303, 11.664648, 25.876562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202310, 11.596126, 25.877823>,  <14.585654, 11.481921, 25.879925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.202310, 11.596126, 25.877823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092012, 0.326159, 0.940826,
		0.270329, 0.901168, -0.338849,
		-0.958361, 0.285511, -0.005252,
		13.914802, 11.681779, 25.876247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626058, 12.079308, 26.189520>,  <14.585654, 11.481921, 25.879925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626058, 12.079308, 26.189520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244358, 11.969820, 26.237667>,  <14.015339, 11.904128, 26.266556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244358, 11.969820, 26.237667>,  <14.626058, 12.079308, 26.189520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244358, 11.969820, 26.237667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075323, 0.169526, 0.982643,
		-0.289373, 0.946752, -0.141153,
		-0.954248, -0.273718, 0.120369,
		13.958083, 11.887705, 26.273777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.366550, 12.557828, 26.677895>,  <14.626058, 12.079308, 26.189520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.366550, 12.557828, 26.677895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.103250, 12.256719, 26.680304>,  <13.945269, 12.076053, 26.681749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.103250, 12.256719, 26.680304>,  <14.366550, 12.557828, 26.677895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.103250, 12.256719, 26.680304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122875, -0.099549, 0.987417,
		-0.742701, 0.650709, 0.158026,
		-0.658253, -0.752773, 0.006021,
		13.905774, 12.030887, 26.682110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.841592, 12.763403, 27.095369>,  <14.366550, 12.557828, 26.677895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.841592, 12.763403, 27.095369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831189, 12.364037, 27.075420>,  <13.824947, 12.124416, 27.063452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831189, 12.364037, 27.075420>,  <13.841592, 12.763403, 27.095369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.831189, 12.364037, 27.075420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092055, -0.052069, 0.994392,
		-0.995414, 0.021271, 0.093263,
		-0.026008, -0.998417, -0.049872,
		13.823387, 12.064511, 27.060459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358438, 12.678500, 27.596151>,  <13.841592, 12.763403, 27.095369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358438, 12.678500, 27.596151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548671, 12.330730, 27.542601>,  <13.662810, 12.122068, 27.510469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548671, 12.330730, 27.542601>,  <13.358438, 12.678500, 27.596151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548671, 12.330730, 27.542601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050941, -0.179155, 0.982501,
		-0.878196, -0.460438, -0.129492,
		0.475580, -0.869425, -0.133878,
		13.691345, 12.069902, 27.502438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.118326, 12.374996, 28.134405>,  <13.358438, 12.678500, 27.596151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.118326, 12.374996, 28.134405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.430881, 12.168923, 27.993538>,  <13.618413, 12.045280, 27.909018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.430881, 12.168923, 27.993538>,  <13.118326, 12.374996, 28.134405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.430881, 12.168923, 27.993538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175788, -0.359767, 0.916333,
		-0.598778, -0.777917, -0.190554,
		0.781386, -0.515183, -0.352168,
		13.665297, 12.014369, 27.887888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.998278, 11.676448, 28.232628>,  <13.118326, 12.374996, 28.134405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.998278, 11.676448, 28.232628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.397841, 11.682861, 28.250162>,  <13.637580, 11.686709, 28.260683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.397841, 11.682861, 28.250162>,  <12.998278, 11.676448, 28.232628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.397841, 11.682861, 28.250162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030075, -0.497164, 0.867135,
		0.035698, -0.867509, -0.496139,
		0.998910, 0.016034, 0.043838,
		13.697515, 11.687672, 28.263313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.311626, 10.866247, 28.277830>,  <12.998278, 11.676448, 28.232628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.311626, 10.866247, 28.277830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573941, 11.141123, 28.402866>,  <13.731330, 11.306048, 28.477888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573941, 11.141123, 28.402866>,  <13.311626, 10.866247, 28.277830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573941, 11.141123, 28.402866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167610, -0.536252, 0.827249,
		0.736105, -0.490105, -0.466847,
		0.655787, 0.687190, 0.312591,
		13.770678, 11.347280, 28.496643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.685491, 10.499031, 28.648148>,  <13.311626, 10.866247, 28.277830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.685491, 10.499031, 28.648148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821952, 10.862139, 28.745777>,  <13.903829, 11.080003, 28.804354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821952, 10.862139, 28.745777>,  <13.685491, 10.499031, 28.648148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.821952, 10.862139, 28.745777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458611, -0.387384, 0.799756,
		0.820543, -0.160905, -0.548470,
		0.341153, 0.907768, 0.244072,
		13.924297, 11.134469, 28.818998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.356222, 10.385743, 28.784746>,  <13.685491, 10.499031, 28.648148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.356222, 10.385743, 28.784746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278596, 10.721987, 28.987019>,  <14.232020, 10.923733, 29.108383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278596, 10.721987, 28.987019>,  <14.356222, 10.385743, 28.784746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.278596, 10.721987, 28.987019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277321, -0.447445, 0.850227,
		0.940974, 0.305236, -0.146285,
		-0.194065, 0.840609, 0.505682,
		14.220376, 10.974170, 29.138723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965062, 10.473605, 29.198568>,  <14.356222, 10.385743, 28.784746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965062, 10.473605, 29.198568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646289, 10.665113, 29.345903>,  <14.455025, 10.780019, 29.434305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646289, 10.665113, 29.345903>,  <14.965062, 10.473605, 29.198568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.646289, 10.665113, 29.345903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077230, -0.524009, 0.848204,
		0.599110, 0.704409, 0.380625,
		-0.796934, 0.478772, 0.368340,
		14.407208, 10.808745, 29.456406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.064749, 10.419092, 29.900772>,  <14.965062, 10.473605, 29.198568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.064749, 10.419092, 29.900772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687966, 10.551073, 29.925589>,  <14.461897, 10.630261, 29.940477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687966, 10.551073, 29.925589>,  <15.064749, 10.419092, 29.900772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687966, 10.551073, 29.925589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077320, -0.393021, 0.916273,
		0.326709, 0.858293, 0.395721,
		-0.941957, 0.329952, 0.062040,
		14.405379, 10.650059, 29.944201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067992, 10.626377, 30.494228>,  <15.064749, 10.419092, 29.900772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067992, 10.626377, 30.494228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673071, 10.639487, 30.432058>,  <14.436118, 10.647353, 30.394756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673071, 10.639487, 30.432058>,  <15.067992, 10.626377, 30.494228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673071, 10.639487, 30.432058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150801, -0.500827, 0.852310,
		-0.049908, 0.864927, 0.499411,
		-0.987304, 0.032775, -0.155426,
		14.376880, 10.649320, 30.385431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.656836, 10.726728, 31.190325>,  <15.067992, 10.626377, 30.494228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.656836, 10.726728, 31.190325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361786, 10.578521, 30.964537>,  <14.184756, 10.489596, 30.829063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361786, 10.578521, 30.964537>,  <14.656836, 10.726728, 31.190325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.361786, 10.578521, 30.964537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411918, -0.415469, 0.810992,
		-0.535008, 0.830723, 0.153836,
		-0.737624, -0.370519, -0.564469,
		14.140498, 10.467365, 30.795197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943245, 11.009814, 31.451061>,  <14.656836, 10.726728, 31.190325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943245, 11.009814, 31.451061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.904515, 10.677073, 31.232468>,  <13.881278, 10.477428, 31.101311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.904515, 10.677073, 31.232468>,  <13.943245, 11.009814, 31.451061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.904515, 10.677073, 31.232468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386209, -0.474643, 0.790921,
		-0.917316, 0.287637, -0.275313,
		-0.096823, -0.831852, -0.546486,
		13.875468, 10.427518, 31.068521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317803, 10.789685, 31.347326>,  <13.943245, 11.009814, 31.451061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317803, 10.789685, 31.347326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526308, 10.448605, 31.361101>,  <13.651411, 10.243957, 31.369366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526308, 10.448605, 31.361101>,  <13.317803, 10.789685, 31.347326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.526308, 10.448605, 31.361101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551149, -0.305565, 0.776443,
		-0.651552, -0.423710, -0.629246,
		0.521263, -0.852701, 0.034436,
		13.682687, 10.192794, 31.371431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.897801, 10.197191, 31.190413>,  <13.317803, 10.789685, 31.347326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.897801, 10.197191, 31.190413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189392, 10.133085, 31.456617>,  <13.364347, 10.094622, 31.616341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189392, 10.133085, 31.456617>,  <12.897801, 10.197191, 31.190413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.189392, 10.133085, 31.456617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683966, -0.210321, 0.698539,
		0.028020, -0.964407, -0.262935,
		0.728976, -0.160265, 0.665514,
		13.408085, 10.085006, 31.656271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.825424, 9.557242, 31.592894>,  <12.897801, 10.197191, 31.190413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.825424, 9.557242, 31.592894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.996276, 9.831855, 31.828260>,  <13.098787, 9.996622, 31.969481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.996276, 9.831855, 31.828260>,  <12.825424, 9.557242, 31.592894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.996276, 9.831855, 31.828260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567481, -0.303099, 0.765569,
		0.703936, -0.660913, 0.260130,
		0.427130, 0.686531, 0.588418,
		13.124414, 10.037814, 32.004787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.646046, 9.243584, 32.237972>,  <12.825424, 9.557242, 31.592894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.646046, 9.243584, 32.237972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.829400, 9.591577, 32.310650>,  <12.939413, 9.800372, 32.354256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.829400, 9.591577, 32.310650>,  <12.646046, 9.243584, 32.237972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.829400, 9.591577, 32.310650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395037, 0.016315, 0.918521,
		0.796133, -0.492811, 0.351154,
		0.458386, 0.869983, 0.181689,
		12.966916, 9.852571, 32.365158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.962208, 9.151447, 32.935833>,  <12.646046, 9.243584, 32.237972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.962208, 9.151447, 32.935833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.936915, 9.544293, 32.864895>,  <12.921740, 9.780002, 32.822334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.936915, 9.544293, 32.864895>,  <12.962208, 9.151447, 32.935833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.936915, 9.544293, 32.864895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487134, 0.124717, 0.864376,
		0.871035, 0.141045, 0.470536,
		-0.063232, 0.982116, -0.177341,
		12.917946, 9.838928, 32.811691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.136389, 8.516050, 32.803051>,  <12.962208, 9.151447, 32.935833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.136389, 8.516050, 32.803051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.465980, 8.719007, 32.903938>,  <13.663734, 8.840782, 32.964470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.465980, 8.719007, 32.903938>,  <13.136389, 8.516050, 32.803051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.465980, 8.719007, 32.903938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499494, -0.440282, -0.746095,
		-0.267518, 0.740746, -0.616222,
		0.823978, 0.507393, 0.252215,
		13.713173, 8.871225, 32.979603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.460239, 8.961259, 32.230164>,  <13.136389, 8.516050, 32.803051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.460239, 8.961259, 32.230164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.733837, 8.836221, 32.493813>,  <13.897996, 8.761198, 32.652000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.733837, 8.836221, 32.493813>,  <13.460239, 8.961259, 32.230164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.733837, 8.836221, 32.493813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582216, -0.310454, -0.751427,
		0.439518, 0.897721, -0.030351,
		0.683994, -0.312595, 0.659118,
		13.939035, 8.742442, 32.691547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.996404, 9.359482, 32.094475>,  <13.460239, 8.961259, 32.230164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.996404, 9.359482, 32.094475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.077078, 9.006223, 32.263885>,  <14.125483, 8.794268, 32.365532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.077078, 9.006223, 32.263885>,  <13.996404, 9.359482, 32.094475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.077078, 9.006223, 32.263885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324896, -0.347604, -0.879553,
		0.923994, 0.314995, 0.216825,
		0.201686, -0.883147, 0.423525,
		14.137584, 8.741279, 32.390942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.756987, 9.031189, 31.960634>,  <13.996404, 9.359482, 32.094475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.756987, 9.031189, 31.960634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482046, 8.744749, 32.009216>,  <14.317081, 8.572886, 32.038364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482046, 8.744749, 32.009216>,  <14.756987, 9.031189, 31.960634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482046, 8.744749, 32.009216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302167, -0.433989, -0.848734,
		0.660488, -0.546678, 0.514684,
		-0.687351, -0.716099, 0.121456,
		14.275841, 8.529920, 32.045654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.046083, 8.304164, 31.944614>,  <14.756987, 9.031189, 31.960634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.046083, 8.304164, 31.944614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.685699, 8.345459, 31.776037>,  <14.469469, 8.370235, 31.674891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.685699, 8.345459, 31.776037>,  <15.046083, 8.304164, 31.944614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.685699, 8.345459, 31.776037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383585, -0.264490, -0.884821,
		-0.202815, -0.958847, 0.198693,
		-0.900960, 0.103240, -0.421442,
		14.415411, 8.376430, 31.649605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797877, 7.727056, 31.520584>,  <15.046083, 8.304164, 31.944614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.797877, 7.727056, 31.520584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.668803, 8.074087, 31.369226>,  <14.591358, 8.282306, 31.278412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.668803, 8.074087, 31.369226>,  <14.797877, 7.727056, 31.520584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.668803, 8.074087, 31.369226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460022, -0.205633, -0.863767,
		-0.827196, -0.452796, -0.332750,
		-0.322686, 0.867578, -0.378395,
		14.571998, 8.334360, 31.255709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.502557, 7.564113, 30.872093>,  <14.797877, 7.727056, 31.520584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.502557, 7.564113, 30.872093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603020, 7.951008, 30.857281>,  <14.663298, 8.183146, 30.848394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603020, 7.951008, 30.857281>,  <14.502557, 7.564113, 30.872093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.603020, 7.951008, 30.857281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398512, -0.138191, -0.906693,
		-0.882105, 0.212965, -0.420163,
		0.251157, 0.967238, -0.037030,
		14.678367, 8.241179, 30.846172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.227636, 7.724094, 30.309763>,  <14.502557, 7.564113, 30.872093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.227636, 7.724094, 30.309763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478321, 8.024037, 30.394566>,  <14.628732, 8.204003, 30.445446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478321, 8.024037, 30.394566>,  <14.227636, 7.724094, 30.309763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.478321, 8.024037, 30.394566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242005, 0.071320, -0.967650,
		-0.740720, 0.657744, -0.136772,
		0.626712, 0.749857, 0.212006,
		14.666335, 8.248995, 30.458168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044394, 8.250234, 29.800268>,  <14.227636, 7.724094, 30.309763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044394, 8.250234, 29.800268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.421222, 8.290840, 29.928144>,  <14.647318, 8.315204, 30.004869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.421222, 8.290840, 29.928144>,  <14.044394, 8.250234, 29.800268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.421222, 8.290840, 29.928144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303619, 0.146995, -0.941386,
		-0.142559, 0.983914, 0.107657,
		0.942068, 0.101516, 0.319690,
		14.703842, 8.321295, 30.024052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.236214, 8.868299, 29.522711>,  <14.044394, 8.250234, 29.800268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.236214, 8.868299, 29.522711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.578317, 8.672669, 29.591227>,  <14.783578, 8.555291, 29.632336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.578317, 8.672669, 29.591227>,  <14.236214, 8.868299, 29.522711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578317, 8.672669, 29.591227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311880, 0.221824, -0.923864,
		0.413843, 0.843563, 0.342250,
		0.855257, -0.489076, 0.171291,
		14.834894, 8.525947, 29.642614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809213, 9.269757, 29.255884>,  <14.236214, 8.868299, 29.522711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809213, 9.269757, 29.255884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939724, 8.894158, 29.299385>,  <15.018031, 8.668799, 29.325485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939724, 8.894158, 29.299385>,  <14.809213, 9.269757, 29.255884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939724, 8.894158, 29.299385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424253, 0.042655, -0.904539,
		0.844720, 0.341271, 0.412289,
		0.326279, -0.938996, 0.108754,
		15.037608, 8.612459, 29.332010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592246, 9.339159, 29.132227>,  <14.809213, 9.269757, 29.255884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592246, 9.339159, 29.132227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.487370, 8.958247, 29.069721>,  <15.424445, 8.729700, 29.032217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.487370, 8.958247, 29.069721>,  <15.592246, 9.339159, 29.132227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.487370, 8.958247, 29.069721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316717, 0.068046, -0.946076,
		0.911563, -0.297543, 0.283762,
		-0.262190, -0.952280, -0.156265,
		15.408713, 8.672564, 29.022842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166145, 8.954460, 28.909929>,  <15.592246, 9.339159, 29.132227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166145, 8.954460, 28.909929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857895, 8.730618, 28.787960>,  <15.672944, 8.596313, 28.714779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857895, 8.730618, 28.787960>,  <16.166145, 8.954460, 28.909929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857895, 8.730618, 28.787960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374631, -0.010724, -0.927112,
		0.515545, -0.828691, 0.217908,
		-0.770627, -0.559603, -0.304925,
		15.626707, 8.562737, 28.696484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489830, 8.328523, 28.508154>,  <16.166145, 8.954460, 28.909929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489830, 8.328523, 28.508154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104118, 8.342023, 28.403059>,  <15.872692, 8.350122, 28.340002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104118, 8.342023, 28.403059>,  <16.489830, 8.328523, 28.508154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104118, 8.342023, 28.403059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257666, -0.110631, -0.959880,
		-0.061458, -0.993289, 0.097984,
		-0.964277, 0.033745, -0.262736,
		15.814836, 8.352148, 28.324238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538130, 7.920374, 27.887930>,  <16.489830, 8.328523, 28.508154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.538130, 7.920374, 27.887930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188740, 8.111796, 27.852085>,  <15.979106, 8.226649, 27.830578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188740, 8.111796, 27.852085>,  <16.538130, 7.920374, 27.887930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188740, 8.111796, 27.852085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122699, 0.038257, -0.991706,
		-0.471158, -0.877224, -0.092135,
		-0.873473, 0.478555, -0.089610,
		15.926698, 8.255363, 27.825203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134228, 7.644273, 27.354837>,  <16.538130, 7.920374, 27.887930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134228, 7.644273, 27.354837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.991764, 8.014841, 27.403658>,  <15.906286, 8.237182, 27.432951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.991764, 8.014841, 27.403658>,  <16.134228, 7.644273, 27.354837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.991764, 8.014841, 27.403658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032362, 0.142766, -0.989227,
		-0.933865, -0.348371, -0.080828,
		-0.356157, 0.926421, 0.122051,
		15.884917, 8.292768, 27.440273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479279, 7.860562, 26.881552>,  <16.134228, 7.644273, 27.354837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.479279, 7.860562, 26.881552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.689980, 8.190798, 26.962481>,  <15.816400, 8.388940, 27.011038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.689980, 8.190798, 26.962481>,  <15.479279, 7.860562, 26.881552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689980, 8.190798, 26.962481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051067, 0.206852, -0.977039,
		-0.848484, 0.524989, 0.066799,
		0.526752, 0.825590, 0.202320,
		15.848005, 8.438475, 27.023176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.222401, 8.296000, 26.338905>,  <15.479279, 7.860562, 26.881552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.222401, 8.296000, 26.338905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573138, 8.438637, 26.467892>,  <15.783581, 8.524220, 26.545282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573138, 8.438637, 26.467892>,  <15.222401, 8.296000, 26.338905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573138, 8.438637, 26.467892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258844, 0.215064, -0.941673,
		-0.405145, 0.909169, 0.096276,
		0.876845, 0.356594, 0.322465,
		15.836192, 8.545615, 26.564631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230291, 9.043418, 26.268469>,  <15.222401, 8.296000, 26.338905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230291, 9.043418, 26.268469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.582367, 8.859217, 26.222500>,  <15.793612, 8.748696, 26.194920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.582367, 8.859217, 26.222500>,  <15.230291, 9.043418, 26.268469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.582367, 8.859217, 26.222500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032748, 0.300477, -0.953227,
		0.473494, 0.835256, 0.279557,
		0.880188, -0.460502, -0.114921,
		15.846423, 8.721066, 26.188023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.749326, 9.505733, 25.929996>,  <15.230291, 9.043418, 26.268469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.749326, 9.505733, 25.929996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851902, 9.124532, 25.865475>,  <15.913448, 8.895810, 25.826761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851902, 9.124532, 25.865475>,  <15.749326, 9.505733, 25.929996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851902, 9.124532, 25.865475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347893, 0.246705, -0.904493,
		0.901781, 0.175834, 0.394809,
		0.256442, -0.953005, -0.161302,
		15.928835, 8.838630, 25.817083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520369, 9.434071, 25.717806>,  <15.749326, 9.505733, 25.929996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.520369, 9.434071, 25.717806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288685, 9.136177, 25.585211>,  <16.149673, 8.957440, 25.505653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288685, 9.136177, 25.585211>,  <16.520369, 9.434071, 25.717806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288685, 9.136177, 25.585211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249488, 0.225183, -0.941832,
		0.776061, -0.628222, 0.055374,
		-0.579210, -0.744735, -0.331489,
		16.114922, 8.912757, 25.485764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908951, 9.177969, 25.100149>,  <16.520369, 9.434071, 25.717806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908951, 9.177969, 25.100149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552612, 8.999090, 25.068136>,  <16.338808, 8.891763, 25.048929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552612, 8.999090, 25.068136>,  <16.908951, 9.177969, 25.100149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552612, 8.999090, 25.068136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165464, -0.155326, -0.973908,
		0.423098, -0.880846, 0.212367,
		-0.890848, -0.447197, -0.080030,
		16.285358, 8.864931, 25.044127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010988, 8.566776, 24.644421>,  <16.908951, 9.177969, 25.100149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.010988, 8.566776, 24.644421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.616070, 8.629210, 24.632507>,  <16.379120, 8.666670, 24.625359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.616070, 8.629210, 24.632507>,  <17.010988, 8.566776, 24.644421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.616070, 8.629210, 24.632507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023732, -0.040495, -0.998898,
		-0.157119, -0.986913, 0.036276,
		-0.987294, 0.156085, -0.029784,
		16.319881, 8.676034, 24.623571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825577, 8.206839, 24.021759>,  <17.010988, 8.566776, 24.644421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825577, 8.206839, 24.021759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526354, 8.458853, 24.105154>,  <16.346821, 8.610062, 24.155191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526354, 8.458853, 24.105154>,  <16.825577, 8.206839, 24.021759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526354, 8.458853, 24.105154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264573, 0.004985, -0.964353,
		-0.608617, -0.776549, 0.162962,
		-0.748055, 0.630037, 0.208488,
		16.301937, 8.647863, 24.167700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244682, 8.044279, 23.512695>,  <16.825577, 8.206839, 24.021759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.244682, 8.044279, 23.512695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165426, 8.412070, 23.648520>,  <16.117872, 8.632745, 23.730015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165426, 8.412070, 23.648520>,  <16.244682, 8.044279, 23.512695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165426, 8.412070, 23.648520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324597, 0.265328, -0.907875,
		-0.924865, -0.290109, 0.245887,
		-0.198142, 0.919477, 0.339561,
		16.105984, 8.687913, 23.750387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639050, 8.226778, 23.115324>,  <16.244682, 8.044279, 23.512695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639050, 8.226778, 23.115324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.780232, 8.574641, 23.253378>,  <15.864942, 8.783360, 23.336210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.780232, 8.574641, 23.253378>,  <15.639050, 8.226778, 23.115324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.780232, 8.574641, 23.253378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186815, 0.426950, -0.884768,
		-0.916801, 0.247807, 0.313159,
		0.352954, 0.869658, 0.345134,
		15.886119, 8.835539, 23.356918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051639, 8.776550, 22.977551>,  <15.639050, 8.226778, 23.115324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051639, 8.776550, 22.977551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421770, 8.921846, 23.021042>,  <15.643849, 9.009024, 23.047136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421770, 8.921846, 23.021042>,  <15.051639, 8.776550, 22.977551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421770, 8.921846, 23.021042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125366, 0.563731, -0.816389,
		-0.357838, 0.741798, 0.567175,
		0.925330, 0.363240, 0.108729,
		15.699369, 9.030818, 23.053661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.031973, 9.442945, 22.848915>,  <15.051639, 8.776550, 22.977551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.031973, 9.442945, 22.848915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426626, 9.405470, 22.795584>,  <15.663418, 9.382984, 22.763584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426626, 9.405470, 22.795584>,  <15.031973, 9.442945, 22.848915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426626, 9.405470, 22.795584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058571, 0.559629, -0.826671,
		0.152065, 0.823431, 0.546661,
		0.986634, -0.093689, -0.133329,
		15.722616, 9.377363, 22.755585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254394, 10.046249, 22.574318>,  <15.031973, 9.442945, 22.848915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254394, 10.046249, 22.574318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581089, 9.837679, 22.475481>,  <15.777106, 9.712537, 22.416180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581089, 9.837679, 22.475481>,  <15.254394, 10.046249, 22.574318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581089, 9.837679, 22.475481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035263, 0.472532, -0.880608,
		0.575929, 0.710513, 0.404322,
		0.816739, -0.521425, -0.247090,
		15.826111, 9.681252, 22.401354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728328, 10.483833, 22.215782>,  <15.254394, 10.046249, 22.574318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728328, 10.483833, 22.215782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.807844, 10.111815, 22.092169>,  <15.855554, 9.888605, 22.018002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.807844, 10.111815, 22.092169>,  <15.728328, 10.483833, 22.215782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.807844, 10.111815, 22.092169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219358, 0.349549, -0.910877,
		0.955178, 0.113286, 0.273500,
		0.198791, -0.930044, -0.309032,
		15.867481, 9.832802, 21.999460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428396, 10.512264, 21.962328>,  <15.728328, 10.483833, 22.215782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428396, 10.512264, 21.962328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.234148, 10.214275, 21.779379>,  <16.117599, 10.035482, 21.669609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.234148, 10.214275, 21.779379>,  <16.428396, 10.512264, 21.962328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.234148, 10.214275, 21.779379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316562, 0.337829, -0.886375,
		0.814837, -0.575229, 0.071772,
		-0.485622, -0.744972, -0.457371,
		16.088461, 9.990784, 21.642168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839430, 10.346431, 21.326132>,  <16.428396, 10.512264, 21.962328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.839430, 10.346431, 21.326132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.517237, 10.143300, 21.203945>,  <16.323921, 10.021421, 21.130634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.517237, 10.143300, 21.203945>,  <16.839430, 10.346431, 21.326132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.517237, 10.143300, 21.203945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219085, 0.223760, -0.949702,
		0.550636, -0.831891, -0.068977,
		-0.805483, -0.507828, -0.305465,
		16.275591, 9.990952, 21.112307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.045370, 9.867986, 20.773968>,  <16.839430, 10.346431, 21.326132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.045370, 9.867986, 20.773968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.655243, 9.942927, 20.727222>,  <16.421167, 9.987892, 20.699175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.655243, 9.942927, 20.727222>,  <17.045370, 9.867986, 20.773968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.655243, 9.942927, 20.727222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159322, 0.230648, -0.959905,
		-0.152890, -0.954829, -0.254804,
		-0.975316, 0.187356, -0.116861,
		16.362648, 9.999134, 20.692163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001011, 9.852613, 20.077343>,  <17.045370, 9.867986, 20.773968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.001011, 9.852613, 20.077343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637041, 10.001041, 20.151472>,  <16.418659, 10.090098, 20.195950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637041, 10.001041, 20.151472>,  <17.001011, 9.852613, 20.077343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637041, 10.001041, 20.151472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042528, 0.527919, -0.848229,
		-0.412589, -0.763943, -0.496147,
		-0.909924, 0.371070, 0.185324,
		16.364063, 10.112363, 20.207069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542751, 9.682468, 19.471176>,  <17.001011, 9.852613, 20.077343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542751, 9.682468, 19.471176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.407526, 10.010574, 19.655731>,  <16.326391, 10.207438, 19.766464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.407526, 10.010574, 19.655731>,  <16.542751, 9.682468, 19.471176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407526, 10.010574, 19.655731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024976, 0.482260, -0.875672,
		-0.940791, -0.307558, -0.142549,
		-0.338065, 0.820264, 0.461388,
		16.306107, 10.256654, 19.794147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.035614, 9.934415, 18.948792>,  <16.542751, 9.682468, 19.471176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.035614, 9.934415, 18.948792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.092083, 10.234738, 19.206894>,  <16.125963, 10.414932, 19.361755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.092083, 10.234738, 19.206894>,  <16.035614, 9.934415, 18.948792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092083, 10.234738, 19.206894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047233, 0.645934, -0.761931,
		-0.988858, 0.138040, 0.055724,
		0.141171, 0.750809, 0.645257,
		16.134434, 10.459981, 19.400471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.499381, 10.325829, 18.871922>,  <16.035614, 9.934415, 18.948792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.499381, 10.325829, 18.871922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790279, 10.556380, 19.021000>,  <15.964818, 10.694711, 19.110447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790279, 10.556380, 19.021000>,  <15.499381, 10.325829, 18.871922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.790279, 10.556380, 19.021000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181632, 0.685238, -0.705307,
		-0.661910, 0.445237, 0.603025,
		0.727245, 0.576378, 0.372697,
		16.008453, 10.729294, 19.132809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.171885, 11.008718, 18.846357>,  <15.499381, 10.325829, 18.871922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.171885, 11.008718, 18.846357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.567537, 11.067489, 18.848537>,  <15.804929, 11.102751, 18.849846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.567537, 11.067489, 18.848537>,  <15.171885, 11.008718, 18.846357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567537, 11.067489, 18.848537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111548, 0.774077, -0.623187,
		-0.095782, 0.615806, 0.782054,
		0.989133, 0.146927, 0.005451,
		15.864277, 11.111567, 18.850172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.240753, 11.706951, 18.858995>,  <15.171885, 11.008718, 18.846357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.240753, 11.706951, 18.858995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.600727, 11.595116, 18.725161>,  <15.816711, 11.528014, 18.644859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.600727, 11.595116, 18.725161>,  <15.240753, 11.706951, 18.858995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600727, 11.595116, 18.725161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034619, 0.810752, -0.584365,
		0.434650, 0.514306, 0.739302,
		0.899934, -0.279589, -0.334588,
		15.870708, 11.511239, 18.624784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628687, 12.363861, 18.710775>,  <15.240753, 11.706951, 18.858995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628687, 12.363861, 18.710775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.822657, 12.079995, 18.506336>,  <15.939038, 11.909676, 18.383673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.822657, 12.079995, 18.506336>,  <15.628687, 12.363861, 18.710775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822657, 12.079995, 18.506336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099499, 0.625384, -0.773947,
		0.868877, 0.324452, 0.373876,
		0.484925, -0.709665, -0.511099,
		15.968134, 11.867096, 18.353006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262548, 12.612087, 18.464966>,  <15.628687, 12.363861, 18.710775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262548, 12.612087, 18.464966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.174726, 12.304417, 18.224911>,  <16.122034, 12.119814, 18.080877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.174726, 12.304417, 18.224911>,  <16.262548, 12.612087, 18.464966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174726, 12.304417, 18.224911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068186, 0.625739, -0.777046,
		0.973215, -0.129682, -0.189830,
		-0.219553, -0.769177, -0.600136,
		16.108860, 12.073664, 18.044870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656694, 12.867723, 17.868975>,  <16.262548, 12.612087, 18.464966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656694, 12.867723, 17.868975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.442902, 12.557811, 17.733892>,  <16.314627, 12.371863, 17.652843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.442902, 12.557811, 17.733892>,  <16.656694, 12.867723, 17.868975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.442902, 12.557811, 17.733892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022671, 0.412562, -0.910647,
		0.844876, -0.479068, -0.238072,
		-0.534481, -0.774781, -0.337703,
		16.282557, 12.325377, 17.632582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879196, 12.635186, 17.210123>,  <16.656694, 12.867723, 17.868975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879196, 12.635186, 17.210123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503544, 12.498146, 17.199890>,  <16.278152, 12.415922, 17.193750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503544, 12.498146, 17.199890>,  <16.879196, 12.635186, 17.210123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503544, 12.498146, 17.199890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082083, 0.296070, -0.951633,
		0.333609, -0.891608, -0.306171,
		-0.939131, -0.342605, -0.025586,
		16.221804, 12.395366, 17.192215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.767654, 12.095630, 16.637678>,  <16.879196, 12.635186, 17.210123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.767654, 12.095630, 16.637678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.414146, 12.257287, 16.732010>,  <16.202042, 12.354281, 16.788609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.414146, 12.257287, 16.732010>,  <16.767654, 12.095630, 16.637678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414146, 12.257287, 16.732010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172198, 0.187721, -0.967010,
		-0.435082, -0.895225, -0.096310,
		-0.883771, 0.404144, 0.235830,
		16.149015, 12.378531, 16.802759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518465, 11.987379, 16.346235>,  <16.767654, 12.095630, 16.637678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518465, 11.987379, 16.346235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.868336, 11.997510, 16.152618>,  <18.078259, 12.003589, 16.036449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.868336, 11.997510, 16.152618>,  <17.518465, 11.987379, 16.346235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.868336, 11.997510, 16.152618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391961, -0.624429, 0.675615,
		-0.285137, -0.780671, -0.556102,
		0.874679, 0.025328, -0.484041,
		18.130739, 12.005108, 16.007406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640938, 11.231941, 16.351660>,  <17.518465, 11.987379, 16.346235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640938, 11.231941, 16.351660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.008774, 11.388386, 16.336760>,  <18.229475, 11.482253, 16.327820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.008774, 11.388386, 16.336760>,  <17.640938, 11.231941, 16.351660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008774, 11.388386, 16.336760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233753, -0.468454, 0.852004,
		0.315779, -0.792201, -0.522209,
		0.919589, 0.391113, -0.037251,
		18.284651, 11.505719, 16.325584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229387, 10.735540, 16.704683>,  <17.640938, 11.231941, 16.351660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229387, 10.735540, 16.704683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.379843, 11.106165, 16.705748>,  <18.470116, 11.328540, 16.706387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.379843, 11.106165, 16.705748>,  <18.229387, 10.735540, 16.704683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379843, 11.106165, 16.705748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300138, -0.124559, 0.945728,
		0.876606, -0.354924, -0.324948,
		0.376137, 0.926560, 0.002663,
		18.492683, 11.384133, 16.706547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832159, 10.718266, 16.994949>,  <18.229387, 10.735540, 16.704683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.832159, 10.718266, 16.994949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.777733, 11.109273, 17.059378>,  <18.745077, 11.343878, 17.098034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.777733, 11.109273, 17.059378>,  <18.832159, 10.718266, 16.994949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777733, 11.109273, 17.059378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480252, -0.077119, 0.873734,
		0.866513, 0.196240, -0.458962,
		-0.136067, 0.977519, 0.161069,
		18.736914, 11.402529, 17.107698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.486326, 10.989294, 17.252161>,  <18.832159, 10.718266, 16.994949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.486326, 10.989294, 17.252161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189375, 11.239548, 17.348038>,  <19.011204, 11.389700, 17.405563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189375, 11.239548, 17.348038>,  <19.486326, 10.989294, 17.252161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.189375, 11.239548, 17.348038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316227, 0.011807, 0.948610,
		0.590654, 0.780026, -0.206609,
		-0.742380, 0.625635, 0.239692,
		18.966661, 11.427238, 17.419945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.821114, 11.452577, 17.731485>,  <19.486326, 10.989294, 17.252161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.821114, 11.452577, 17.731485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433081, 11.516682, 17.804430>,  <19.200260, 11.555144, 17.848196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433081, 11.516682, 17.804430>,  <19.821114, 11.452577, 17.731485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.433081, 11.516682, 17.804430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196402, 0.076522, 0.977533,
		0.142707, 0.984104, -0.105708,
		-0.970083, 0.160262, 0.182360,
		19.142056, 11.564760, 17.859138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787281, 11.941124, 18.293020>,  <19.821114, 11.452577, 17.731485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.787281, 11.941124, 18.293020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441174, 11.740706, 18.299530>,  <19.233509, 11.620456, 18.303436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441174, 11.740706, 18.299530>,  <19.787281, 11.941124, 18.293020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.441174, 11.740706, 18.299530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082600, -0.110471, 0.990441,
		-0.494456, 0.858342, 0.136973,
		-0.865269, -0.501044, 0.016276,
		19.181593, 11.590393, 18.304413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.254412, 12.348247, 18.805264>,  <19.787281, 11.941124, 18.293020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.254412, 12.348247, 18.805264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155512, 11.960810, 18.794683>,  <19.096172, 11.728348, 18.788336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155512, 11.960810, 18.794683>,  <19.254412, 12.348247, 18.805264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.155512, 11.960810, 18.794683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120348, -0.057782, 0.991049,
		-0.961450, 0.241851, 0.130855,
		-0.247248, -0.968591, -0.026448,
		19.081337, 11.670233, 18.786749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742815, 12.238760, 19.466753>,  <19.254412, 12.348247, 18.805264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742815, 12.238760, 19.466753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.874479, 11.880849, 19.346071>,  <18.953478, 11.666102, 19.273663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.874479, 11.880849, 19.346071>,  <18.742815, 12.238760, 19.466753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.874479, 11.880849, 19.346071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125761, -0.275123, 0.953148,
		-0.935863, -0.351680, 0.021969,
		0.329159, -0.894779, -0.301705,
		18.973227, 11.612415, 19.255560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455196, 11.857954, 19.894779>,  <18.742815, 12.238760, 19.466753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.455196, 11.857954, 19.894779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.737791, 11.619958, 19.741488>,  <18.907349, 11.477160, 19.649513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.737791, 11.619958, 19.741488>,  <18.455196, 11.857954, 19.894779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.737791, 11.619958, 19.741488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163747, -0.389378, 0.906406,
		-0.688523, -0.703116, -0.177663,
		0.706486, -0.594990, -0.383229,
		18.949738, 11.441462, 19.626518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.267673, 11.198702, 20.164007>,  <18.455196, 11.857954, 19.894779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.267673, 11.198702, 20.164007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.650259, 11.168098, 20.051348>,  <18.879810, 11.149736, 19.983753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.650259, 11.168098, 20.051348>,  <18.267673, 11.198702, 20.164007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.650259, 11.168098, 20.051348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231078, -0.390951, 0.890932,
		-0.178275, -0.917226, -0.356251,
		0.956463, -0.076509, -0.281647,
		18.937199, 11.145145, 19.966854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407385, 10.508415, 20.292061>,  <18.267673, 11.198702, 20.164007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407385, 10.508415, 20.292061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781300, 10.650372, 20.286011>,  <19.005648, 10.735545, 20.282381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781300, 10.650372, 20.286011>,  <18.407385, 10.508415, 20.292061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781300, 10.650372, 20.286011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135207, -0.316115, 0.939037,
		0.328475, -0.879843, -0.343483,
		0.934785, 0.354891, -0.015125,
		19.061735, 10.756839, 20.281473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.852379, 9.979249, 20.476259>,  <18.407385, 10.508415, 20.292061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.852379, 9.979249, 20.476259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060553, 10.312990, 20.548925>,  <19.185457, 10.513235, 20.592525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060553, 10.312990, 20.548925>,  <18.852379, 9.979249, 20.476259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.060553, 10.312990, 20.548925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262204, -0.358618, 0.895903,
		0.812648, -0.418627, -0.405408,
		0.520436, 0.834353, 0.181665,
		19.216684, 10.563296, 20.603424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.424637, 9.686234, 20.839617>,  <18.852379, 9.979249, 20.476259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.424637, 9.686234, 20.839617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350079, 10.071287, 20.918203>,  <19.305344, 10.302319, 20.965355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350079, 10.071287, 20.918203>,  <19.424637, 9.686234, 20.839617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.350079, 10.071287, 20.918203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104817, -0.179345, 0.978186,
		0.976867, 0.202922, -0.067472,
		-0.186394, 0.962631, 0.196466,
		19.294161, 10.360076, 20.977142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.897480, 9.766910, 21.374081>,  <19.424637, 9.686234, 20.839617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.897480, 9.766910, 21.374081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657276, 10.086163, 21.393574>,  <19.513155, 10.277715, 21.405270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.657276, 10.086163, 21.393574>,  <19.897480, 9.766910, 21.374081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.657276, 10.086163, 21.393574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045395, -0.094876, 0.994453,
		0.798329, 0.594965, 0.093205,
		-0.600508, 0.798133, 0.048734,
		19.477123, 10.325603, 21.408194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116690, 10.093386, 21.937103>,  <19.897480, 9.766910, 21.374081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116690, 10.093386, 21.937103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.749651, 10.237189, 21.869261>,  <19.529427, 10.323471, 21.828556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.749651, 10.237189, 21.869261>,  <20.116690, 10.093386, 21.937103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.749651, 10.237189, 21.869261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230763, -0.134356, 0.963689,
		0.323668, 0.923418, 0.206246,
		-0.917599, 0.359509, -0.169604,
		19.474371, 10.345042, 21.818380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.047556, 10.515916, 22.498859>,  <20.116690, 10.093386, 21.937103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.047556, 10.515916, 22.498859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679289, 10.459960, 22.353094>,  <19.458328, 10.426387, 22.265635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679289, 10.459960, 22.353094>,  <20.047556, 10.515916, 22.498859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679289, 10.459960, 22.353094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337116, -0.185671, 0.922973,
		-0.196776, 0.972603, 0.123782,
		-0.920669, -0.139890, -0.364416,
		19.403088, 10.417994, 22.243769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.593824, 11.049980, 22.902054>,  <20.047556, 10.515916, 22.498859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.593824, 11.049980, 22.902054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.397490, 10.732181, 22.759029>,  <19.279690, 10.541501, 22.673214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.397490, 10.732181, 22.759029>,  <19.593824, 11.049980, 22.902054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.397490, 10.732181, 22.759029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320802, -0.216759, 0.922010,
		-0.810041, 0.567262, -0.148484,
		-0.490835, -0.794500, -0.357562,
		19.250238, 10.493831, 22.651760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.948412, 11.075483, 23.259108>,  <19.593824, 11.049980, 22.902054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.948412, 11.075483, 23.259108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968056, 10.699234, 23.124756>,  <18.979843, 10.473484, 23.044144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.968056, 10.699234, 23.124756>,  <18.948412, 11.075483, 23.259108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968056, 10.699234, 23.124756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475761, -0.317717, 0.820188,
		-0.878202, 0.119519, -0.463116,
		0.049112, -0.940623, -0.335882,
		18.982790, 10.417048, 23.023991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302557, 10.803267, 23.472498>,  <18.948412, 11.075483, 23.259108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.302557, 10.803267, 23.472498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545887, 10.493276, 23.403975>,  <18.691885, 10.307281, 23.362860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545887, 10.493276, 23.403975>,  <18.302557, 10.803267, 23.472498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545887, 10.493276, 23.403975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313999, -0.433224, 0.844821,
		-0.728934, -0.460135, -0.506884,
		0.608326, -0.774980, -0.171309,
		18.728384, 10.260782, 23.352581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.953957, 10.181685, 23.578693>,  <18.302557, 10.803267, 23.472498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.953957, 10.181685, 23.578693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.324253, 10.037117, 23.623198>,  <18.546431, 9.950376, 23.649900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.324253, 10.037117, 23.623198>,  <17.953957, 10.181685, 23.578693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.324253, 10.037117, 23.623198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226040, -0.292987, 0.929013,
		-0.303169, -0.885173, -0.352925,
		0.925740, -0.361423, 0.111260,
		18.601974, 9.928691, 23.656576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935167, 9.640819, 24.041826>,  <17.953957, 10.181685, 23.578693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935167, 9.640819, 24.041826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.326292, 9.712646, 24.084986>,  <18.560966, 9.755742, 24.110882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.326292, 9.712646, 24.084986>,  <17.935167, 9.640819, 24.041826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.326292, 9.712646, 24.084986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060402, -0.251516, 0.965966,
		0.200594, -0.951050, -0.235089,
		0.977811, 0.179567, 0.107898,
		18.619635, 9.766516, 24.117355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221027, 8.983686, 24.285967>,  <17.935167, 9.640819, 24.041826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221027, 8.983686, 24.285967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.452715, 9.293192, 24.388571>,  <18.591726, 9.478895, 24.450134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.452715, 9.293192, 24.388571>,  <18.221027, 8.983686, 24.285967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.452715, 9.293192, 24.388571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088346, -0.253232, 0.963363,
		0.810372, -0.580658, -0.078317,
		0.579217, 0.773763, 0.256511,
		18.626480, 9.525321, 24.465525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663563, 8.717791, 24.791710>,  <18.221027, 8.983686, 24.285967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.663563, 8.717791, 24.791710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.692316, 9.114129, 24.837420>,  <18.709568, 9.351932, 24.864845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.692316, 9.114129, 24.837420>,  <18.663563, 8.717791, 24.791710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.692316, 9.114129, 24.837420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022618, -0.116159, 0.992973,
		0.997157, -0.068793, -0.030761,
		0.071883, 0.990846, 0.114273,
		18.713881, 9.411383, 24.871702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.001959, 8.742607, 25.409580>,  <18.663563, 8.717791, 24.791710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.001959, 8.742607, 25.409580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.903128, 9.129578, 25.387527>,  <18.843828, 9.361760, 25.374296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.903128, 9.129578, 25.387527>,  <19.001959, 8.742607, 25.409580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.903128, 9.129578, 25.387527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129774, 0.089419, 0.987503,
		0.960266, 0.236835, -0.147640,
		-0.247077, 0.967426, -0.055131,
		18.829004, 9.419806, 25.370989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531038, 9.140020, 25.692690>,  <19.001959, 8.742607, 25.409580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531038, 9.140020, 25.692690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.209772, 9.378320, 25.691418>,  <19.017014, 9.521299, 25.690655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.209772, 9.378320, 25.691418>,  <19.531038, 9.140020, 25.692690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.209772, 9.378320, 25.691418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131997, 0.183157, 0.974182,
		0.580951, 0.782008, -0.225742,
		-0.803164, 0.595749, -0.003182,
		18.968822, 9.557044, 25.690462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595301, 9.616724, 26.308889>,  <19.531038, 9.140020, 25.692690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595301, 9.616724, 26.308889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206268, 9.634223, 26.217524>,  <18.972849, 9.644723, 26.162704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206268, 9.634223, 26.217524>,  <19.595301, 9.616724, 26.308889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206268, 9.634223, 26.217524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230228, -0.042223, 0.972220,
		0.032889, 0.998150, 0.051137,
		-0.972581, 0.043748, -0.228414,
		18.914494, 9.647347, 26.149000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.318045, 10.165419, 26.633204>,  <19.595301, 9.616724, 26.308889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.318045, 10.165419, 26.633204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.023409, 9.903619, 26.565004>,  <18.846628, 9.746539, 26.524086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.023409, 9.903619, 26.565004>,  <19.318045, 10.165419, 26.633204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.023409, 9.903619, 26.565004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158957, -0.077499, 0.984239,
		-0.657397, 0.752080, -0.046953,
		-0.736588, -0.654499, -0.170496,
		18.802433, 9.707269, 26.513855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791626, 10.351001, 26.994974>,  <19.318045, 10.165419, 26.633204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791626, 10.351001, 26.994974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701447, 9.964288, 26.946802>,  <18.647339, 9.732260, 26.917898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701447, 9.964288, 26.946802>,  <18.791626, 10.351001, 26.994974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.701447, 9.964288, 26.946802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037505, -0.114908, 0.992668,
		-0.973533, 0.228310, -0.010354,
		-0.225446, -0.966783, -0.120430,
		18.633812, 9.674253, 26.910673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306927, 10.214540, 27.402592>,  <18.791626, 10.351001, 26.994974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306927, 10.214540, 27.402592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.444691, 9.843229, 27.346466>,  <18.527349, 9.620443, 27.312792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.444691, 9.843229, 27.346466>,  <18.306927, 10.214540, 27.402592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.444691, 9.843229, 27.346466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180223, -0.212049, 0.960497,
		-0.921359, -0.305515, -0.240328,
		0.344408, -0.928276, -0.140313,
		18.548014, 9.564747, 27.304373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872797, 9.843966, 27.718031>,  <18.306927, 10.214540, 27.402592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.872797, 9.843966, 27.718031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.185751, 9.596066, 27.693436>,  <18.373524, 9.447325, 27.678679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.185751, 9.596066, 27.693436>,  <17.872797, 9.843966, 27.718031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185751, 9.596066, 27.693436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053642, -0.165421, 0.984763,
		-0.620481, -0.767165, -0.162668,
		0.782385, -0.619753, -0.061488,
		18.420465, 9.410140, 27.674990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662142, 9.251695, 27.957682>,  <17.872797, 9.843966, 27.718031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662142, 9.251695, 27.957682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054455, 9.185963, 27.999760>,  <18.289843, 9.146523, 28.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054455, 9.185963, 27.999760>,  <17.662142, 9.251695, 27.957682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.054455, 9.185963, 27.999760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148505, -0.279012, 0.948735,
		-0.126556, -0.946122, -0.298054,
		0.980781, -0.164331, 0.105193,
		18.348688, 9.136663, 28.031317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712648, 8.629389, 28.365183>,  <17.662142, 9.251695, 27.957682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712648, 8.629389, 28.365183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061714, 8.822982, 28.391163>,  <18.271154, 8.939137, 28.406752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061714, 8.822982, 28.391163>,  <17.712648, 8.629389, 28.365183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061714, 8.822982, 28.391163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044095, -0.210563, 0.976585,
		0.486326, -0.849367, -0.205092,
		0.872664, 0.483982, 0.064950,
		18.323513, 8.968177, 28.410648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041912, 8.294955, 28.832407>,  <17.712648, 8.629389, 28.365183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041912, 8.294955, 28.832407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.269781, 8.623680, 28.828482>,  <18.406502, 8.820915, 28.826126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.269781, 8.623680, 28.828482>,  <18.041912, 8.294955, 28.832407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.269781, 8.623680, 28.828482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141782, -0.086507, 0.986111,
		0.809550, -0.563152, -0.165799,
		0.569673, 0.821813, -0.009813,
		18.440683, 8.870224, 28.825539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745407, 8.257672, 29.275936>,  <18.041912, 8.294955, 28.832407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.745407, 8.257672, 29.275936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625120, 8.638843, 29.260443>,  <18.552948, 8.867545, 29.251146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625120, 8.638843, 29.260443>,  <18.745407, 8.257672, 29.275936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.625120, 8.638843, 29.260443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270474, -0.046265, 0.961615,
		0.914556, 0.299651, 0.271654,
		-0.300717, 0.952926, -0.038735,
		18.534904, 8.924721, 29.248821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.944166, 8.529321, 29.891499>,  <18.745407, 8.257672, 29.275936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.944166, 8.529321, 29.891499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.682495, 8.806119, 29.769388>,  <18.525492, 8.972198, 29.696123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.682495, 8.806119, 29.769388>,  <18.944166, 8.529321, 29.891499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.682495, 8.806119, 29.769388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339220, 0.092310, 0.936167,
		0.676004, 0.715975, 0.174352,
		-0.654178, 0.691996, -0.305274,
		18.486242, 9.013718, 29.677805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.918018, 8.967641, 30.491596>,  <18.944166, 8.529321, 29.891499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.918018, 8.967641, 30.491596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586546, 9.050376, 30.283556>,  <18.387663, 9.100017, 30.158731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586546, 9.050376, 30.283556>,  <18.918018, 8.967641, 30.491596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586546, 9.050376, 30.283556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544578, -0.083266, 0.834567,
		0.129313, 0.974826, 0.181640,
		-0.828682, 0.206837, -0.520101,
		18.337942, 9.112427, 30.127525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.483715, 9.500562, 30.910378>,  <18.918018, 8.967641, 30.491596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.483715, 9.500562, 30.910378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235962, 9.313122, 30.658415>,  <18.087311, 9.200658, 30.507238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235962, 9.313122, 30.658415>,  <18.483715, 9.500562, 30.910378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235962, 9.313122, 30.658415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640089, -0.163162, 0.750776,
		-0.454590, 0.868212, -0.198886,
		-0.619382, -0.468600, -0.629905,
		18.050148, 9.172542, 30.469444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.137629, 10.277140, 31.004196>,  <18.483715, 9.500562, 30.910378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.137629, 10.277140, 31.004196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927643, 10.501001, 31.260696>,  <17.801651, 10.635318, 31.414597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927643, 10.501001, 31.260696>,  <18.137629, 10.277140, 31.004196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927643, 10.501001, 31.260696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531799, 0.372562, -0.760518,
		-0.664531, -0.740261, 0.102041,
		-0.524965, 0.559653, 0.641249,
		17.770153, 10.668898, 31.453072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.486269, 10.255518, 30.818937>,  <18.137629, 10.277140, 31.004196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.486269, 10.255518, 30.818937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559023, 10.606148, 30.997166>,  <17.602674, 10.816525, 31.104103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559023, 10.606148, 30.997166>,  <17.486269, 10.255518, 30.818937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.559023, 10.606148, 30.997166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242434, 0.479117, -0.843607,
		-0.952966, 0.045418, 0.299656,
		0.181886, 0.876575, 0.445571,
		17.613588, 10.869121, 31.130836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998091, 10.679063, 30.590878>,  <17.486269, 10.255518, 30.818937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998091, 10.679063, 30.590878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256813, 10.954854, 30.721272>,  <17.412046, 11.120329, 30.799507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256813, 10.954854, 30.721272>,  <16.998091, 10.679063, 30.590878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.256813, 10.954854, 30.721272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262944, 0.602828, -0.753298,
		-0.715894, 0.401521, 0.571206,
		0.646804, 0.689477, 0.325984,
		17.450855, 11.161697, 30.819067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692169, 11.376813, 30.462021>,  <16.998091, 10.679063, 30.590878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692169, 11.376813, 30.462021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084503, 11.447703, 30.494411>,  <17.319902, 11.490237, 30.513845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084503, 11.447703, 30.494411>,  <16.692169, 11.376813, 30.462021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084503, 11.447703, 30.494411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020567, 0.507430, -0.861448,
		-0.193761, 0.843271, 0.501349,
		0.980833, 0.177226, 0.080977,
		17.378754, 11.500871, 30.518705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773575, 11.962400, 30.097221>,  <16.692169, 11.376813, 30.462021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.773575, 11.962400, 30.097221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151646, 11.835970, 30.130062>,  <17.378489, 11.760112, 30.149767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151646, 11.835970, 30.130062>,  <16.773575, 11.962400, 30.097221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151646, 11.835970, 30.130062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241624, 0.507735, -0.826936,
		0.219688, 0.801437, 0.556270,
		0.945175, -0.316076, 0.082103,
		17.435198, 11.741147, 30.154694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140375, 12.549497, 29.968002>,  <16.773575, 11.962400, 30.097221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140375, 12.549497, 29.968002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.388298, 12.242028, 29.904776>,  <17.537052, 12.057547, 29.866840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.388298, 12.242028, 29.904776>,  <17.140375, 12.549497, 29.968002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388298, 12.242028, 29.904776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284940, 0.408110, -0.867327,
		0.731197, 0.492535, 0.471974,
		0.619806, -0.768671, -0.158065,
		17.574240, 12.011427, 29.857355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.810188, 12.799418, 29.577682>,  <17.140375, 12.549497, 29.968002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.810188, 12.799418, 29.577682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.800325, 12.405135, 29.511021>,  <17.794407, 12.168566, 29.471024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.800325, 12.405135, 29.511021>,  <17.810188, 12.799418, 29.577682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.800325, 12.405135, 29.511021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182805, 0.159447, -0.970134,
		0.982840, -0.054387, 0.176260,
		-0.024659, -0.985707, -0.166653,
		17.792929, 12.109423, 29.461025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406107, 12.746659, 29.260361>,  <17.810188, 12.799418, 29.577682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.406107, 12.746659, 29.260361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.211271, 12.413752, 29.154474>,  <18.094370, 12.214007, 29.090942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.211271, 12.413752, 29.154474>,  <18.406107, 12.746659, 29.260361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211271, 12.413752, 29.154474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180011, 0.200920, -0.962926,
		0.854600, -0.516680, 0.051951,
		-0.487087, -0.832269, -0.264715,
		18.065145, 12.164071, 29.075060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.888222, 12.230995, 28.811693>,  <18.406107, 12.746659, 29.260361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.888222, 12.230995, 28.811693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.528030, 12.089123, 28.711023>,  <18.311916, 12.004000, 28.650621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.528030, 12.089123, 28.711023>,  <18.888222, 12.230995, 28.811693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.528030, 12.089123, 28.711023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229460, 0.104118, -0.967733,
		0.369441, -0.929172, -0.012371,
		-0.900478, -0.354681, -0.251674,
		18.257887, 11.982718, 28.635521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979822, 11.666541, 28.355593>,  <18.888222, 12.230995, 28.811693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979822, 11.666541, 28.355593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.602745, 11.789710, 28.304190>,  <18.376499, 11.863611, 28.273348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.602745, 11.789710, 28.304190>,  <18.979822, 11.666541, 28.355593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602745, 11.789710, 28.304190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139611, 0.014214, -0.990104,
		-0.303049, -0.951305, -0.056389,
		-0.942693, 0.307923, -0.128506,
		18.319937, 11.882087, 28.265638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.769491, 11.264227, 27.711180>,  <18.979822, 11.666541, 28.355593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.769491, 11.264227, 27.711180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532278, 11.584709, 27.743135>,  <18.389950, 11.776999, 27.762310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.532278, 11.584709, 27.743135>,  <18.769491, 11.264227, 27.711180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.532278, 11.584709, 27.743135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110711, 0.179418, -0.977523,
		-0.797531, -0.570858, -0.195103,
		-0.593032, 0.801205, 0.079891,
		18.354368, 11.825070, 27.767103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.312674, 11.149392, 27.231241>,  <18.769491, 11.264227, 27.711180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.312674, 11.149392, 27.231241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311563, 11.542641, 27.304415>,  <18.310898, 11.778590, 27.348318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311563, 11.542641, 27.304415>,  <18.312674, 11.149392, 27.231241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311563, 11.542641, 27.304415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095114, 0.181844, -0.978717,
		-0.995463, -0.020117, 0.093003,
		-0.002777, 0.983122, 0.182932,
		18.310730, 11.837577, 27.359295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781364, 11.337294, 26.751158>,  <18.312674, 11.149392, 27.231241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781364, 11.337294, 26.751158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.007395, 11.656647, 26.834366>,  <18.143013, 11.848259, 26.884291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.007395, 11.656647, 26.834366>,  <17.781364, 11.337294, 26.751158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.007395, 11.656647, 26.834366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129760, 0.162992, -0.978057,
		-0.814770, 0.579670, -0.011495,
		0.565077, 0.798383, 0.208019,
		18.176918, 11.896162, 26.896772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466093, 11.896125, 26.420200>,  <17.781364, 11.337294, 26.751158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.466093, 11.896125, 26.420200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836130, 12.031577, 26.488937>,  <18.058153, 12.112848, 26.530180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836130, 12.031577, 26.488937>,  <17.466093, 11.896125, 26.420200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836130, 12.031577, 26.488937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088214, 0.248508, -0.964605,
		-0.369348, 0.907509, 0.200021,
		0.925095, 0.338631, 0.171841,
		18.113659, 12.133166, 26.540489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473515, 12.528139, 26.084743>,  <17.466093, 11.896125, 26.420200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.473515, 12.528139, 26.084743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.843561, 12.380769, 26.121445>,  <18.065590, 12.292346, 26.143465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.843561, 12.380769, 26.121445>,  <17.473515, 12.528139, 26.084743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843561, 12.380769, 26.121445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165887, 0.174842, -0.970521,
		0.341524, 0.913067, 0.222867,
		0.925118, -0.368427, 0.091753,
		18.121096, 12.270241, 26.148970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773275, 12.819471, 25.623419>,  <17.473515, 12.528139, 26.084743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773275, 12.819471, 25.623419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079721, 12.578753, 25.713671>,  <18.263590, 12.434323, 25.767822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079721, 12.578753, 25.713671>,  <17.773275, 12.819471, 25.623419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079721, 12.578753, 25.713671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393437, 0.161536, -0.905049,
		0.508205, 0.782145, 0.360523,
		0.766117, -0.601794, 0.225632,
		18.309557, 12.398215, 25.781361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.385918, 13.257241, 25.639132>,  <17.773275, 12.819471, 25.623419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.385918, 13.257241, 25.639132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430534, 12.873560, 25.535217>,  <18.457304, 12.643352, 25.472868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430534, 12.873560, 25.535217>,  <18.385918, 13.257241, 25.639132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430534, 12.873560, 25.535217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425939, 0.282333, -0.859572,
		0.897850, -0.014775, 0.440054,
		0.111541, -0.959203, -0.259786,
		18.463997, 12.585799, 25.457281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.067282, 13.212614, 25.342899>,  <18.385918, 13.257241, 25.639132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.067282, 13.212614, 25.342899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.866289, 12.894041, 25.208315>,  <18.745693, 12.702897, 25.127563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.866289, 12.894041, 25.208315>,  <19.067282, 13.212614, 25.342899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866289, 12.894041, 25.208315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422156, 0.113607, -0.899376,
		0.754518, -0.593959, 0.279134,
		-0.502481, -0.796433, -0.336462,
		18.715546, 12.655111, 25.107376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551624, 12.812433, 25.052896>,  <19.067282, 13.212614, 25.342899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.551624, 12.812433, 25.052896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.218628, 12.652633, 24.899347>,  <19.018829, 12.556752, 24.807219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.218628, 12.652633, 24.899347>,  <19.551624, 12.812433, 25.052896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.218628, 12.652633, 24.899347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396428, 0.054507, -0.916446,
		0.387046, -0.915110, 0.112997,
		-0.832490, -0.399502, -0.383873,
		18.968882, 12.532783, 24.784185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.809132, 12.293217, 24.641094>,  <19.551624, 12.812433, 25.052896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.809132, 12.293217, 24.641094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.448837, 12.396732, 24.501549>,  <19.232660, 12.458842, 24.417822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.448837, 12.396732, 24.501549>,  <19.809132, 12.293217, 24.641094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.448837, 12.396732, 24.501549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339795, -0.080515, -0.937047,
		-0.270587, -0.962572, -0.015413,
		-0.900734, 0.258790, -0.348863,
		19.178617, 12.474369, 24.396891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761732, 11.847804, 24.153112>,  <19.809132, 12.293217, 24.641094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761732, 11.847804, 24.153112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.495691, 12.134100, 24.067923>,  <19.336067, 12.305878, 24.016809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.495691, 12.134100, 24.067923>,  <19.761732, 11.847804, 24.153112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.495691, 12.134100, 24.067923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234078, -0.071002, -0.969622,
		-0.709118, -0.694749, -0.120315,
		-0.665101, 0.715739, -0.212974,
		19.296162, 12.348822, 24.004030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.376863, 11.646492, 23.524750>,  <19.761732, 11.847804, 24.153112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.376863, 11.646492, 23.524750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.307014, 12.040345, 23.523869>,  <19.265104, 12.276657, 23.523340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.307014, 12.040345, 23.523869>,  <19.376863, 11.646492, 23.524750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.307014, 12.040345, 23.523869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111410, 0.017537, -0.993620,
		-0.978312, -0.173753, -0.112761,
		-0.174622, 0.984633, -0.002201,
		19.254627, 12.335735, 23.523209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.102688, 11.699379, 22.862947>,  <19.376863, 11.646492, 23.524750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.102688, 11.699379, 22.862947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.194178, 12.067489, 22.989931>,  <19.249071, 12.288355, 23.066122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.194178, 12.067489, 22.989931>,  <19.102688, 11.699379, 22.862947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194178, 12.067489, 22.989931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034225, 0.318303, -0.947371,
		-0.972890, 0.227551, 0.041307,
		0.228723, 0.920274, 0.317461,
		19.262794, 12.343571, 23.085169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566881, 12.136747, 22.601873>,  <19.102688, 11.699379, 22.862947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566881, 12.136747, 22.601873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.879047, 12.372172, 22.686298>,  <19.066347, 12.513428, 22.736954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.879047, 12.372172, 22.686298>,  <18.566881, 12.136747, 22.601873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.879047, 12.372172, 22.686298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050929, 0.396270, -0.916720,
		-0.623184, 0.704673, 0.339230,
		0.780415, 0.588563, 0.211061,
		19.113173, 12.548741, 22.749617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464077, 12.835720, 22.232557>,  <18.566881, 12.136747, 22.601873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.464077, 12.835720, 22.232557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.855354, 12.810275, 22.311640>,  <19.090120, 12.795008, 22.359089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.855354, 12.810275, 22.311640>,  <18.464077, 12.835720, 22.232557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.855354, 12.810275, 22.311640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205644, 0.429865, -0.879163,
		-0.029060, 0.900650, 0.433573,
		0.978195, -0.063613, 0.197705,
		19.148813, 12.791191, 22.370951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.699207, 13.491068, 22.050720>,  <18.464077, 12.835720, 22.232557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.699207, 13.491068, 22.050720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.014845, 13.245875, 22.066647>,  <19.204227, 13.098760, 22.076202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.014845, 13.245875, 22.066647>,  <18.699207, 13.491068, 22.050720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014845, 13.245875, 22.066647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305355, 0.335193, -0.891293,
		0.532999, 0.715472, 0.451676,
		0.789094, -0.612980, 0.039815,
		19.251574, 13.061981, 22.078590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280483, 13.958919, 22.126200>,  <18.699207, 13.491068, 22.050720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280483, 13.958919, 22.126200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.392134, 13.600966, 21.986900>,  <19.459124, 13.386195, 21.903320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.392134, 13.600966, 21.986900>,  <19.280483, 13.958919, 22.126200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392134, 13.600966, 21.986900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279939, 0.422741, -0.861930,
		0.918543, 0.143101, 0.368512,
		0.279129, -0.894881, -0.348246,
		19.475872, 13.332502, 21.882427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985718, 13.961953, 21.910923>,  <19.280483, 13.958919, 22.126200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985718, 13.961953, 21.910923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867573, 13.623091, 21.734249>,  <19.796686, 13.419773, 21.628244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867573, 13.623091, 21.734249>,  <19.985718, 13.961953, 21.910923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867573, 13.623091, 21.734249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492007, 0.261418, -0.830415,
		0.818956, -0.462587, 0.339593,
		-0.295363, -0.847156, -0.441686,
		19.778963, 13.368944, 21.601744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.575109, 13.687578, 21.523474>,  <19.985718, 13.961953, 21.910923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.575109, 13.687578, 21.523474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.266138, 13.510454, 21.341364>,  <20.080755, 13.404180, 21.232098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.266138, 13.510454, 21.341364>,  <20.575109, 13.687578, 21.523474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.266138, 13.510454, 21.341364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343707, 0.311346, -0.885962,
		0.534062, -0.840822, -0.088295,
		-0.772427, -0.442811, -0.455275,
		20.034410, 13.377611, 21.204782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.825674, 13.274409, 20.961262>,  <20.575109, 13.687578, 21.523474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.825674, 13.274409, 20.961262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446001, 13.375537, 20.886282>,  <20.218197, 13.436213, 20.841293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446001, 13.375537, 20.886282>,  <20.825674, 13.274409, 20.961262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446001, 13.375537, 20.886282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291963, 0.484905, -0.824393,
		-0.117528, -0.837227, -0.534077,
		-0.949181, 0.252820, -0.187449,
		20.161247, 13.451383, 20.830048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.859509, 13.380759, 20.236874>,  <20.825674, 13.274409, 20.961262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.859509, 13.380759, 20.236874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494026, 13.517261, 20.325134>,  <20.274736, 13.599161, 20.378092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494026, 13.517261, 20.325134>,  <20.859509, 13.380759, 20.236874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494026, 13.517261, 20.325134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026776, 0.592354, -0.805233,
		-0.405493, -0.729837, -0.550375,
		-0.913706, 0.341253, 0.220654,
		20.219913, 13.619637, 20.391331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.563692, 13.468240, 19.648651>,  <20.859509, 13.380759, 20.236874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.563692, 13.468240, 19.648651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.346401, 13.719788, 19.871155>,  <20.216026, 13.870716, 20.004658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.346401, 13.719788, 19.871155>,  <20.563692, 13.468240, 19.648651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.346401, 13.719788, 19.871155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069856, 0.626392, -0.776372,
		-0.836673, -0.460606, -0.296344,
		-0.543229, 0.628869, 0.556261,
		20.183432, 13.908448, 20.038033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091784, 13.691235, 19.139767>,  <20.563692, 13.468240, 19.648651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091784, 13.691235, 19.139767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.088659, 13.968019, 19.428524>,  <20.086784, 14.134090, 19.601778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.088659, 13.968019, 19.428524>,  <20.091784, 13.691235, 19.139767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.088659, 13.968019, 19.428524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106653, 0.717219, -0.688638,
		-0.994266, -0.082371, 0.068197,
		-0.007812, 0.691962, 0.721891,
		20.086315, 14.175609, 19.645092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618204, 14.114971, 19.074877>,  <20.091784, 13.691235, 19.139767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618204, 14.114971, 19.074877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.854269, 14.344729, 19.301779>,  <19.995909, 14.482585, 19.437920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.854269, 14.344729, 19.301779>,  <19.618204, 14.114971, 19.074877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.854269, 14.344729, 19.301779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030000, 0.686579, -0.726436,
		-0.806727, 0.445733, 0.387961,
		0.590162, 0.574397, 0.567254,
		20.031317, 14.517049, 19.471954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.421501, 14.732197, 18.861832>,  <19.618204, 14.114971, 19.074877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.421501, 14.732197, 18.861832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.777493, 14.785921, 19.036140>,  <19.991087, 14.818156, 19.140726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.777493, 14.785921, 19.036140>,  <19.421501, 14.732197, 18.861832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.777493, 14.785921, 19.036140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242144, 0.670574, -0.701211,
		-0.386399, 0.729583, 0.564274,
		0.889979, 0.134311, 0.435773,
		20.044487, 14.826215, 19.166872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422989, 15.463413, 18.899900>,  <19.421501, 14.732197, 18.861832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422989, 15.463413, 18.899900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.799301, 15.335153, 18.943933>,  <20.025087, 15.258196, 18.970352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.799301, 15.335153, 18.943933>,  <19.422989, 15.463413, 18.899900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799301, 15.335153, 18.943933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299811, 0.635305, -0.711689,
		0.158269, 0.702545, 0.693816,
		0.940779, -0.320652, 0.110082,
		20.081535, 15.238957, 18.976957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.824455, 15.997010, 18.893305>,  <19.422989, 15.463413, 18.899900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.824455, 15.997010, 18.893305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.095156, 15.715002, 18.808496>,  <20.257576, 15.545797, 18.757610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.095156, 15.715002, 18.808496>,  <19.824455, 15.997010, 18.893305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.095156, 15.715002, 18.808496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336631, 0.552457, -0.762542,
		0.654741, 0.444679, 0.611208,
		0.676753, -0.705019, -0.212023,
		20.298182, 15.503496, 18.744890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.529408, 16.314627, 18.811192>,  <19.824455, 15.997010, 18.893305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.529408, 16.314627, 18.811192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560249, 15.965864, 18.617765>,  <20.578754, 15.756607, 18.501709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560249, 15.965864, 18.617765>,  <20.529408, 16.314627, 18.811192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.560249, 15.965864, 18.617765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389113, 0.472862, -0.790565,
		0.917958, -0.127207, 0.375729,
		0.077103, -0.871906, -0.483565,
		20.583380, 15.704292, 18.472696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027943, 16.468765, 18.399393>,  <20.529408, 16.314627, 18.811192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027943, 16.468765, 18.399393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903721, 16.126564, 18.233662>,  <20.829187, 15.921243, 18.134224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903721, 16.126564, 18.233662>,  <21.027943, 16.468765, 18.399393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903721, 16.126564, 18.233662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274077, 0.336778, -0.900812,
		0.910185, -0.393310, 0.129886,
		-0.310556, -0.855504, -0.414328,
		20.810555, 15.869913, 18.109364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621996, 16.058870, 18.116592>,  <21.027943, 16.468765, 18.399393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.621996, 16.058870, 18.116592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265102, 15.988251, 17.950338>,  <21.050966, 15.945879, 17.850586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265102, 15.988251, 17.950338>,  <21.621996, 16.058870, 18.116592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.265102, 15.988251, 17.950338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391220, 0.157487, -0.906722,
		0.225538, -0.971611, -0.071446,
		-0.892233, -0.176549, -0.415633,
		20.997433, 15.935287, 17.825649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.746479, 15.655934, 17.424826>,  <21.621996, 16.058870, 18.116592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.746479, 15.655934, 17.424826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.371977, 15.785715, 17.370924>,  <21.147276, 15.863584, 17.338583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.371977, 15.785715, 17.370924>,  <21.746479, 15.655934, 17.424826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.371977, 15.785715, 17.370924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271218, 0.423701, -0.864244,
		-0.223311, -0.845700, -0.484689,
		-0.936254, 0.324452, -0.134752,
		21.091101, 15.883051, 17.330498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520079, 15.447141, 16.627514>,  <21.746479, 15.655934, 17.424826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520079, 15.447141, 16.627514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.399508, 15.796539, 16.780428>,  <21.327166, 16.006178, 16.872177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.399508, 15.796539, 16.780428>,  <21.520079, 15.447141, 16.627514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399508, 15.796539, 16.780428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588477, 0.485892, -0.646223,
		-0.750224, 0.030178, -0.660494,
		-0.301427, 0.873498, 0.382287,
		21.309080, 16.058588, 16.895115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147757, 15.884943, 16.164011>,  <21.520079, 15.447141, 16.627514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147757, 15.884943, 16.164011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.367151, 16.107897, 16.413326>,  <21.498789, 16.241669, 16.562916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.367151, 16.107897, 16.413326>,  <21.147757, 15.884943, 16.164011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.367151, 16.107897, 16.413326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608935, 0.244576, -0.754573,
		-0.573028, 0.793414, -0.205264,
		0.548486, 0.557384, 0.623287,
		21.531696, 16.275112, 16.600313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520124, 16.415327, 15.717034>,  <21.147757, 15.884943, 16.164011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520124, 16.415327, 15.717034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.720430, 16.359589, 16.058752>,  <21.840614, 16.326145, 16.263783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.720430, 16.359589, 16.058752>,  <21.520124, 16.415327, 15.717034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.720430, 16.359589, 16.058752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863293, 0.152160, -0.481220,
		-0.062933, 0.978483, 0.196493,
		0.500764, -0.139347, 0.854294,
		21.870659, 16.317785, 16.315041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.153624, 16.714415, 15.592340>,  <21.520124, 16.415327, 15.717034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.153624, 16.714415, 15.592340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225712, 16.495165, 15.919039>,  <22.268965, 16.363615, 16.115059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225712, 16.495165, 15.919039>,  <22.153624, 16.714415, 15.592340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.225712, 16.495165, 15.919039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938059, -0.154025, -0.310358,
		0.295915, 0.822092, 0.486414,
		0.180223, -0.548125, 0.816749,
		22.279779, 16.330727, 16.164064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.576227, 17.078632, 16.090530>,  <22.153624, 16.714415, 15.592340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.576227, 17.078632, 16.090530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602623, 16.679571, 16.097849>,  <22.618460, 16.440134, 16.102240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602623, 16.679571, 16.097849>,  <22.576227, 17.078632, 16.090530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.602623, 16.679571, 16.097849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959471, 0.058407, -0.275687,
		0.273971, 0.035747, 0.961073,
		0.065988, -0.997653, 0.018297,
		22.622419, 16.380276, 16.103338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.155193, 16.938505, 16.467052>,  <22.576227, 17.078632, 16.090530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.155193, 16.938505, 16.467052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.073944, 16.647566, 16.204845>,  <23.025194, 16.473001, 16.047522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.073944, 16.647566, 16.204845>,  <23.155193, 16.938505, 16.467052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.073944, 16.647566, 16.204845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929017, 0.068318, -0.363676,
		0.309304, -0.682857, 0.661844,
		-0.203123, -0.727350, -0.655517,
		23.013008, 16.429361, 16.008190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.722258, 16.378164, 16.507763>,  <23.155193, 16.938505, 16.467052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.722258, 16.378164, 16.507763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.575605, 16.401318, 16.136337>,  <23.487614, 16.415211, 15.913482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.575605, 16.401318, 16.136337>,  <23.722258, 16.378164, 16.507763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.575605, 16.401318, 16.136337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884820, 0.330147, -0.328781,
		0.287531, -0.942153, -0.172259,
		-0.366633, 0.057884, -0.928563,
		23.465616, 16.418682, 15.857768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195108, 15.904756, 16.075239>,  <23.722258, 16.378164, 16.507763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195108, 15.904756, 16.075239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.021030, 16.225895, 15.912247>,  <23.916584, 16.418579, 15.814451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.021030, 16.225895, 15.912247>,  <24.195108, 15.904756, 16.075239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.021030, 16.225895, 15.912247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889156, 0.312145, -0.334615,
		-0.141452, -0.507936, -0.849701,
		-0.435193, 0.802849, -0.407481,
		23.890472, 16.466749, 15.790003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529448, 16.000048, 15.410067>,  <24.195108, 15.904756, 16.075239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529448, 16.000048, 15.410067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348473, 16.353813, 15.455879>,  <24.239887, 16.566072, 15.483367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348473, 16.353813, 15.455879>,  <24.529448, 16.000048, 15.410067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348473, 16.353813, 15.455879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801242, 0.459516, -0.383219,
		-0.391553, -0.081614, -0.916529,
		-0.452436, 0.884412, 0.114533,
		24.212742, 16.619137, 15.490239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567883, 16.362663, 14.889720>,  <24.529448, 16.000048, 15.410067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567883, 16.362663, 14.889720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528313, 16.664534, 15.149158>,  <24.504570, 16.845655, 15.304822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528313, 16.664534, 15.149158>,  <24.567883, 16.362663, 14.889720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.528313, 16.664534, 15.149158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861677, 0.390977, -0.323498,
		-0.497722, 0.526879, -0.688964,
		-0.098924, 0.754676, 0.648597,
		24.498636, 16.890936, 15.343738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922783, 16.865192, 14.563809>,  <24.567883, 16.362663, 14.889720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922783, 16.865192, 14.563809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881733, 16.997286, 14.939131>,  <24.857103, 17.076542, 15.164324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881733, 16.997286, 14.939131>,  <24.922783, 16.865192, 14.563809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881733, 16.997286, 14.939131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799112, 0.589098, -0.119933,
		-0.592359, 0.737502, -0.324350,
		-0.102623, 0.330235, 0.938303,
		24.850946, 17.096357, 15.220622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875244, 17.531389, 14.507797>,  <24.922783, 16.865192, 14.563809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875244, 17.531389, 14.507797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981884, 17.502481, 14.892235>,  <25.045868, 17.485138, 15.122897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981884, 17.502481, 14.892235>,  <24.875244, 17.531389, 14.507797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981884, 17.502481, 14.892235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701841, 0.697996, -0.142199,
		-0.660564, 0.712446, 0.236804,
		0.266597, -0.072268, 0.961095,
		25.061863, 17.480801, 15.180563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876984, 18.225573, 14.865422>,  <24.875244, 17.531389, 14.507797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876984, 18.225573, 14.865422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113060, 17.978619, 15.073464>,  <25.254705, 17.830446, 15.198290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113060, 17.978619, 15.073464>,  <24.876984, 18.225573, 14.865422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113060, 17.978619, 15.073464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714881, 0.699000, 0.018523,
		-0.374990, 0.360882, 0.853901,
		0.590193, -0.617384, 0.520105,
		25.290117, 17.793404, 15.229496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166492, 18.642046, 15.214120>,  <24.876984, 18.225573, 14.865422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166492, 18.642046, 15.214120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411173, 18.333099, 15.282555>,  <25.557981, 18.147732, 15.323615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411173, 18.333099, 15.282555>,  <25.166492, 18.642046, 15.214120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411173, 18.333099, 15.282555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779492, 0.625364, 0.036219,
		-0.134966, 0.111206, 0.984590,
		0.611699, -0.772368, 0.171087,
		25.594683, 18.101389, 15.333880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658213, 18.881731, 15.758484>,  <25.166492, 18.642046, 15.214120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658213, 18.881731, 15.758484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829014, 18.559959, 15.593285>,  <25.931494, 18.366898, 15.494165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829014, 18.559959, 15.593285>,  <25.658213, 18.881731, 15.758484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829014, 18.559959, 15.593285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871854, 0.487412, -0.047953,
		0.239875, -0.339598, 0.909469,
		0.427001, -0.804427, -0.412998,
		25.957115, 18.318632, 15.469385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285290, 18.951710, 16.009441>,  <25.658213, 18.881731, 15.758484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285290, 18.951710, 16.009441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298683, 18.721952, 15.682284>,  <26.306719, 18.584099, 15.485990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298683, 18.721952, 15.682284>,  <26.285290, 18.951710, 16.009441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298683, 18.721952, 15.682284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833593, 0.467514, -0.294201,
		0.551364, -0.671940, 0.494463,
		0.033483, -0.574393, -0.817895,
		26.308727, 18.549635, 15.436916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872129, 18.709820, 16.007238>,  <26.285290, 18.951710, 16.009441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872129, 18.709820, 16.007238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761944, 18.688768, 15.623290>,  <26.695831, 18.676138, 15.392921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761944, 18.688768, 15.623290>,  <26.872129, 18.709820, 16.007238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761944, 18.688768, 15.623290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905381, 0.321412, -0.277452,
		0.323111, -0.945477, -0.040906,
		-0.275472, -0.052612, -0.959868,
		26.679304, 18.672979, 15.335329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469252, 18.593771, 15.661530>,  <26.872129, 18.709820, 16.007238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469252, 18.593771, 15.661530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235003, 18.690727, 15.352134>,  <27.094452, 18.748901, 15.166495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235003, 18.690727, 15.352134>,  <27.469252, 18.593771, 15.661530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235003, 18.690727, 15.352134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791135, 0.378694, -0.480309,
		0.176494, -0.893217, -0.413537,
		-0.585624, 0.242392, -0.773493,
		27.059315, 18.763445, 15.120086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862926, 18.403273, 15.142228>,  <27.469252, 18.593771, 15.661530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862926, 18.403273, 15.142228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598572, 18.669544, 15.003606>,  <27.439959, 18.829308, 14.920433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598572, 18.669544, 15.003606>,  <27.862926, 18.403273, 15.142228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598572, 18.669544, 15.003606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715169, 0.418626, -0.559720,
		-0.227517, -0.617756, -0.752737,
		-0.660885, 0.665680, -0.346555,
		27.400307, 18.869247, 14.899639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997614, 18.463976, 14.377407>,  <27.862926, 18.403273, 15.142228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997614, 18.463976, 14.377407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792360, 18.800953, 14.443116>,  <27.669209, 19.003139, 14.482542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792360, 18.800953, 14.443116>,  <27.997614, 18.463976, 14.377407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792360, 18.800953, 14.443116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571754, 0.478247, -0.666617,
		-0.640148, -0.248140, -0.727074,
		-0.513135, 0.842441, 0.164274,
		27.638420, 19.053684, 14.492398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898664, 18.731804, 13.722435>,  <27.997614, 18.463976, 14.377407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898664, 18.731804, 13.722435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870762, 19.005447, 14.012849>,  <27.854021, 19.169634, 14.187098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870762, 19.005447, 14.012849>,  <27.898664, 18.731804, 13.722435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870762, 19.005447, 14.012849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757976, 0.509515, -0.407269,
		-0.648542, 0.521907, -0.554081,
		-0.069756, 0.684111, 0.726035,
		27.849834, 19.210680, 14.230659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771076, 19.374638, 13.345447>,  <27.898664, 18.731804, 13.722435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771076, 19.374638, 13.345447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942163, 19.438307, 13.701362>,  <28.044817, 19.476507, 13.914910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942163, 19.438307, 13.701362>,  <27.771076, 19.374638, 13.345447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942163, 19.438307, 13.701362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731398, 0.517481, -0.444152,
		-0.531144, 0.840761, 0.104919,
		0.427719, 0.159171, 0.889787,
		28.070478, 19.486057, 13.968298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932474, 20.071003, 13.268500>,  <27.771076, 19.374638, 13.345447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932474, 20.071003, 13.268500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154167, 19.926432, 13.568419>,  <28.287184, 19.839689, 13.748369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154167, 19.926432, 13.568419>,  <27.932474, 20.071003, 13.268500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154167, 19.926432, 13.568419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772726, 0.558246, -0.302086,
		-0.309388, 0.746813, 0.588684,
		0.554232, -0.361430, 0.749797,
		28.320436, 19.818003, 13.793358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411108, 20.665705, 13.394986>,  <27.932474, 20.071003, 13.268500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411108, 20.665705, 13.394986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575729, 20.340475, 13.559686>,  <28.674501, 20.145338, 13.658505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575729, 20.340475, 13.559686>,  <28.411108, 20.665705, 13.394986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575729, 20.340475, 13.559686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902808, 0.301863, -0.306295,
		0.124748, 0.497787, 0.858281,
		0.411553, -0.813072, 0.411750,
		28.699196, 20.096554, 13.683210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022911, 20.917614, 13.742194>,  <28.411108, 20.665705, 13.394986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022911, 20.917614, 13.742194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073576, 20.526110, 13.677718>,  <29.103975, 20.291206, 13.639032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073576, 20.526110, 13.677718>,  <29.022911, 20.917614, 13.742194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073576, 20.526110, 13.677718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940804, 0.170037, -0.293215,
		0.314396, -0.114510, 0.942360,
		0.126661, -0.978762, -0.161190,
		29.111574, 20.232481, 13.629361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707256, 20.881498, 13.883291>,  <29.022911, 20.917614, 13.742194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707256, 20.881498, 13.883291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627535, 20.533705, 13.702504>,  <29.579702, 20.325029, 13.594032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627535, 20.533705, 13.702504>,  <29.707256, 20.881498, 13.883291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627535, 20.533705, 13.702504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958805, -0.077756, -0.273216,
		0.202414, -0.487801, 0.849163,
		-0.199303, -0.869485, -0.451967,
		29.567743, 20.272860, 13.566914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266994, 20.418844, 14.054288>,  <29.707256, 20.881498, 13.883291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266994, 20.418844, 14.054288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089338, 20.271149, 13.727755>,  <29.982744, 20.182531, 13.531835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089338, 20.271149, 13.727755>,  <30.266994, 20.418844, 14.054288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089338, 20.271149, 13.727755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894147, -0.240544, -0.377676,
		-0.056911, -0.897664, 0.436990,
		-0.444142, -0.369240, -0.816334,
		29.956097, 20.160378, 13.482855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687073, 19.919250, 13.765118>,  <30.266994, 20.418844, 14.054288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687073, 19.919250, 13.765118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476868, 19.941704, 13.425545>,  <30.350744, 19.955175, 13.221801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476868, 19.941704, 13.425545>,  <30.687073, 19.919250, 13.765118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476868, 19.941704, 13.425545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809357, -0.274594, -0.519172,
		-0.262252, -0.959921, 0.098874,
		-0.525514, 0.056129, -0.848932,
		30.319214, 19.958544, 13.170865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706772, 19.209320, 13.380955>,  <30.687073, 19.919250, 13.765118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706772, 19.209320, 13.380955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640694, 19.518923, 13.136456>,  <30.601048, 19.704683, 12.989756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640694, 19.518923, 13.136456>,  <30.706772, 19.209320, 13.380955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640694, 19.518923, 13.136456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803218, -0.254063, -0.538789,
		-0.572321, -0.579971, -0.579725,
		-0.165195, 0.774006, -0.611249,
		30.591135, 19.751125, 12.953081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757618, 18.918734, 12.721473>,  <30.706772, 19.209320, 13.380955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757618, 18.918734, 12.721473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811758, 19.309299, 12.654192>,  <30.844242, 19.543640, 12.613824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811758, 19.309299, 12.654192>,  <30.757618, 18.918734, 12.721473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811758, 19.309299, 12.654192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784309, -0.209321, -0.583990,
		-0.605426, -0.052879, -0.794143,
		0.135350, 0.976416, -0.168202,
		30.852364, 19.602224, 12.603731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942801, 18.971825, 12.027975>,  <30.757618, 18.918734, 12.721473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942801, 18.971825, 12.027975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069939, 19.297318, 12.222630>,  <31.146221, 19.492613, 12.339422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069939, 19.297318, 12.222630>,  <30.942801, 18.971825, 12.027975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069939, 19.297318, 12.222630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882723, -0.066622, -0.465146,
		-0.346083, 0.577411, -0.739475,
		0.317845, 0.813731, 0.486637,
		31.165293, 19.541437, 12.368621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586996, 19.092258, 12.036273>,  <30.942801, 18.971825, 12.027975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586996, 19.092258, 12.036273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469299, 19.228451, 11.679063>,  <31.398682, 19.310165, 11.464737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469299, 19.228451, 11.679063>,  <31.586996, 19.092258, 12.036273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469299, 19.228451, 11.679063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194965, -0.893359, -0.404844,
		-0.935634, -0.293231, 0.196481,
		-0.294241, 0.340479, -0.893027,
		31.381027, 19.330595, 11.411155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973413, 18.363201, 12.006694>,  <31.586996, 19.092258, 12.036273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973413, 18.363201, 12.006694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001453, 18.016584, 11.809031>,  <32.018276, 17.808615, 11.690433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001453, 18.016584, 11.809031>,  <31.973413, 18.363201, 12.006694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001453, 18.016584, 11.809031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997085, -0.075829, -0.008474,
		-0.030128, 0.493312, -0.869331,
		0.070101, -0.866541, -0.494158,
		32.022484, 17.756622, 11.660783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643135, 18.613256, 11.511215>,  <31.973413, 18.363201, 12.006694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643135, 18.613256, 11.511215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681505, 18.223902, 11.594463>,  <31.704527, 17.990288, 11.644412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681505, 18.223902, 11.594463>,  <31.643135, 18.613256, 11.511215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681505, 18.223902, 11.594463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976786, -0.051817, 0.207855,
		-0.191540, -0.223228, -0.955762,
		0.095924, -0.973388, 0.208121,
		31.710283, 17.931885, 11.656899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173063, 18.293404, 11.124716>,  <31.643135, 18.613256, 11.511215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173063, 18.293404, 11.124716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241388, 18.134979, 11.485595>,  <31.282383, 18.039925, 11.702122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241388, 18.134979, 11.485595>,  <31.173063, 18.293404, 11.124716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241388, 18.134979, 11.485595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960675, 0.136497, 0.241808,
		-0.218918, -0.908023, -0.357169,
		0.170814, -0.396060, 0.902197,
		31.292633, 18.016161, 11.756254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787859, 17.623426, 11.387062>,  <31.173063, 18.293404, 11.124716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787859, 17.623426, 11.387062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862209, 17.834700, 11.718477>,  <30.906818, 17.961464, 11.917327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862209, 17.834700, 11.718477>,  <30.787859, 17.623426, 11.387062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862209, 17.834700, 11.718477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977903, 0.017323, 0.208339,
		0.095688, -0.848953, 0.519733,
		0.185873, 0.528184, 0.828537,
		30.917971, 17.993155, 11.967039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776806, 17.368423, 12.070094>,  <30.787859, 17.623426, 11.387062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776806, 17.368423, 12.070094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657026, 17.749800, 12.055761>,  <30.585159, 17.978624, 12.047162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657026, 17.749800, 12.055761>,  <30.776806, 17.368423, 12.070094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657026, 17.749800, 12.055761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945857, -0.291718, 0.142321,
		0.125242, 0.076509, 0.989172,
		-0.299448, 0.953439, -0.035831,
		30.567192, 18.035831, 12.045012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460051, 17.675285, 12.686697>,  <30.776806, 17.368423, 12.070094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460051, 17.675285, 12.686697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291275, 17.885052, 12.390871>,  <30.190010, 18.010912, 12.213375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291275, 17.885052, 12.390871>,  <30.460051, 17.675285, 12.686697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291275, 17.885052, 12.390871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897510, -0.356980, 0.258922,
		-0.128228, 0.773017, 0.621291,
		-0.421940, 0.524414, -0.739565,
		30.164694, 18.042376, 12.169002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891447, 18.049255, 13.034702>,  <30.460051, 17.675285, 12.686697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891447, 18.049255, 13.034702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820847, 18.015713, 12.642413>,  <29.778486, 17.995586, 12.407040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820847, 18.015713, 12.642413>,  <29.891447, 18.049255, 13.034702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820847, 18.015713, 12.642413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918407, -0.344394, 0.194734,
		-0.354084, 0.935073, -0.016229,
		-0.176501, -0.083857, -0.980722,
		29.767897, 17.990555, 12.348197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246264, 18.314188, 12.969455>,  <29.891447, 18.049255, 13.034702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246264, 18.314188, 12.969455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286686, 18.085415, 12.643834>,  <29.310940, 17.948151, 12.448462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286686, 18.085415, 12.643834>,  <29.246264, 18.314188, 12.969455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286686, 18.085415, 12.643834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920877, -0.363450, 0.141031,
		-0.376528, 0.735390, -0.563408,
		0.101058, -0.571932, -0.814053,
		29.317003, 17.913836, 12.399618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624557, 18.428974, 12.625180>,  <29.246264, 18.314188, 12.969455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624557, 18.428974, 12.625180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757458, 18.093098, 12.453353>,  <28.837198, 17.891571, 12.350256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757458, 18.093098, 12.453353>,  <28.624557, 18.428974, 12.625180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757458, 18.093098, 12.453353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903493, -0.414084, 0.110615,
		-0.270760, 0.351360, -0.896234,
		0.332250, -0.839691, -0.429568,
		28.857132, 17.841190, 12.324482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134857, 18.209053, 12.060583>,  <28.624557, 18.428974, 12.625180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134857, 18.209053, 12.060583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314241, 17.861967, 12.146329>,  <28.421871, 17.653715, 12.197776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314241, 17.861967, 12.146329>,  <28.134857, 18.209053, 12.060583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314241, 17.861967, 12.146329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890479, -0.454417, 0.023508,
		0.077012, -0.201429, -0.976471,
		0.448460, -0.867717, 0.214364,
		28.448780, 17.601652, 12.210638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036285, 17.792433, 11.552857>,  <28.134857, 18.209053, 12.060583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036285, 17.792433, 11.552857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112490, 17.571314, 11.877357>,  <28.158213, 17.438643, 12.072056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112490, 17.571314, 11.877357>,  <28.036285, 17.792433, 11.552857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112490, 17.571314, 11.877357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832061, -0.529456, -0.165380,
		0.520941, -0.643501, -0.560827,
		0.190511, -0.552796, 0.811247,
		28.169643, 17.405476, 12.120730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699738, 17.125790, 11.441133>,  <28.036285, 17.792433, 11.552857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699738, 17.125790, 11.441133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780165, 17.118109, 11.832890>,  <27.828421, 17.113501, 12.067943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780165, 17.118109, 11.832890>,  <27.699738, 17.125790, 11.441133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780165, 17.118109, 11.832890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875064, -0.452880, 0.170772,
		0.440267, -0.891365, -0.107860,
		0.201068, -0.019199, 0.979389,
		27.840485, 17.112349, 12.126706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517494, 16.463125, 11.642014>,  <27.699738, 17.125790, 11.441133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517494, 16.463125, 11.642014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528763, 16.656410, 11.992033>,  <27.535524, 16.772381, 12.202044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528763, 16.656410, 11.992033>,  <27.517494, 16.463125, 11.642014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528763, 16.656410, 11.992033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819959, -0.489516, 0.296716,
		0.571728, -0.725864, 0.382424,
		0.028173, 0.483213, 0.875050,
		27.537214, 16.801374, 12.254548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513060, 15.949302, 12.101164>,  <27.517494, 16.463125, 11.642014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513060, 15.949302, 12.101164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399607, 16.277006, 12.300508>,  <27.331535, 16.473629, 12.420115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399607, 16.277006, 12.300508>,  <27.513060, 15.949302, 12.101164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399607, 16.277006, 12.300508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848441, -0.456591, 0.267719,
		0.446879, -0.346897, 0.824598,
		-0.283633, 0.819260, 0.498362,
		27.314516, 16.522785, 12.450017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281197, 15.716682, 12.769726>,  <27.513060, 15.949302, 12.101164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281197, 15.716682, 12.769726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113693, 16.078094, 12.733335>,  <27.013191, 16.294941, 12.711501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113693, 16.078094, 12.733335>,  <27.281197, 15.716682, 12.769726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113693, 16.078094, 12.733335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821109, -0.333952, 0.462878,
		0.387842, 0.268535, 0.881741,
		-0.418758, 0.903529, -0.090976,
		26.988066, 16.349154, 12.706042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993399, 15.777324, 13.457666>,  <27.281197, 15.716682, 12.769726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993399, 15.777324, 13.457666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813625, 16.032436, 13.207469>,  <26.705761, 16.185503, 13.057350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813625, 16.032436, 13.207469>,  <26.993399, 15.777324, 13.457666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813625, 16.032436, 13.207469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892323, -0.287568, 0.347943,
		0.042040, 0.714521, 0.698350,
		-0.449435, 0.637781, -0.625494,
		26.678795, 16.223770, 13.019821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646292, 16.123960, 13.858507>,  <26.993399, 15.777324, 13.457666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646292, 16.123960, 13.858507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441181, 16.133955, 13.515244>,  <26.318115, 16.139952, 13.309285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441181, 16.133955, 13.515244>,  <26.646292, 16.123960, 13.858507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441181, 16.133955, 13.515244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838390, -0.229767, 0.494276,
		-0.184827, 0.972925, 0.138766,
		-0.512778, 0.024984, -0.858158,
		26.287348, 16.141451, 13.257796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029324, 16.345211, 14.031235>,  <26.646292, 16.123960, 13.858507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029324, 16.345211, 14.031235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947231, 16.216228, 13.661607>,  <25.897976, 16.138840, 13.439830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947231, 16.216228, 13.661607>,  <26.029324, 16.345211, 14.031235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947231, 16.216228, 13.661607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807043, -0.478381, 0.346170,
		-0.553681, 0.816808, -0.162057,
		-0.205229, -0.322455, -0.924069,
		25.885662, 16.119492, 13.384386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325550, 16.642418, 13.850533>,  <26.029324, 16.345211, 14.031235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325550, 16.642418, 13.850533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381565, 16.314983, 13.627712>,  <25.415174, 16.118523, 13.494020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381565, 16.314983, 13.627712>,  <25.325550, 16.642418, 13.850533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381565, 16.314983, 13.627712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920499, -0.314902, 0.231342,
		-0.364789, 0.480369, -0.797605,
		0.140038, -0.818586, -0.557052,
		25.423576, 16.069408, 13.460597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.688967, 16.651857, 13.506699>,  <25.325550, 16.642418, 13.850533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.688967, 16.651857, 13.506699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872087, 16.300207, 13.453698>,  <24.981960, 16.089216, 13.421898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872087, 16.300207, 13.453698>,  <24.688967, 16.651857, 13.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872087, 16.300207, 13.453698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825609, -0.475675, 0.303485,
		-0.329829, -0.029541, -0.943578,
		0.457802, -0.879125, -0.132502,
		25.009428, 16.036470, 13.413947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.201960, 16.202065, 13.202910>,  <24.688967, 16.651857, 13.506699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.201960, 16.202065, 13.202910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452930, 15.936405, 13.365509>,  <24.603514, 15.777009, 13.463068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452930, 15.936405, 13.365509>,  <24.201960, 16.202065, 13.202910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452930, 15.936405, 13.365509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748314, -0.658634, 0.078920,
		0.215317, -0.353703, -0.910238,
		0.627427, -0.664151, 0.406496,
		24.641159, 15.737160, 13.487458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.010633, 15.597882, 12.960838>,  <24.201960, 16.202065, 13.202910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.010633, 15.597882, 12.960838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234629, 15.492850, 13.275154>,  <24.369026, 15.429832, 13.463744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234629, 15.492850, 13.275154>,  <24.010633, 15.597882, 12.960838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.234629, 15.492850, 13.275154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613662, -0.768669, 0.180464,
		0.556626, -0.583267, -0.591580,
		0.559988, -0.262579, 0.785790,
		24.402624, 15.414077, 13.510891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.076756, 14.908533, 12.925397>,  <24.010633, 15.597882, 12.960838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.076756, 14.908533, 12.925397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.153347, 15.011909, 13.304141>,  <24.199301, 15.073936, 13.531387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.153347, 15.011909, 13.304141>,  <24.076756, 14.908533, 12.925397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.153347, 15.011909, 13.304141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689932, -0.650710, 0.317129,
		0.698091, -0.713992, 0.053711,
		0.191477, 0.258442, 0.946860,
		24.210791, 15.089442, 13.588200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.891802, 14.336296, 13.247056>,  <24.076756, 14.908533, 12.925397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.891802, 14.336296, 13.247056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.908573, 14.606694, 13.541341>,  <23.918636, 14.768933, 13.717912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.908573, 14.606694, 13.541341>,  <23.891802, 14.336296, 13.247056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.908573, 14.606694, 13.541341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666945, -0.529344, 0.524384,
		0.743926, -0.512666, 0.428658,
		0.041926, 0.675994, 0.735713,
		23.921150, 14.809492, 13.762054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.104753, 14.091743, 13.943472>,  <23.891802, 14.336296, 13.247056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.104753, 14.091743, 13.943472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.911699, 14.431724, 14.027988>,  <23.795866, 14.635712, 14.078698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.911699, 14.431724, 14.027988>,  <24.104753, 14.091743, 13.943472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.911699, 14.431724, 14.027988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555768, -0.483674, 0.676152,
		0.676892, 0.208907, 0.705815,
		-0.482637, 0.849951, 0.211291,
		23.766909, 14.686709, 14.091375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595625, 13.524602, 13.746643>,  <24.104753, 14.091743, 13.943472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595625, 13.524602, 13.746643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605888, 13.887177, 13.915265>,  <24.612047, 14.104723, 14.016438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605888, 13.887177, 13.915265>,  <24.595625, 13.524602, 13.746643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605888, 13.887177, 13.915265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877478, -0.222450, 0.424911,
		0.478931, 0.359003, -0.801088,
		0.025658, 0.906440, 0.421555,
		24.613586, 14.159109, 14.041732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136299, 13.891875, 13.504055>,  <24.595625, 13.524602, 13.746643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136299, 13.891875, 13.504055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065960, 14.006815, 13.880673>,  <25.023756, 14.075779, 14.106645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065960, 14.006815, 13.880673>,  <25.136299, 13.891875, 13.504055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.065960, 14.006815, 13.880673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873663, -0.395199, 0.283779,
		0.453642, 0.872495, -0.181552,
		-0.175846, 0.287350, 0.941546,
		25.013206, 14.093019, 14.163137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643635, 14.163938, 13.853534>,  <25.136299, 13.891875, 13.504055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643635, 14.163938, 13.853534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443327, 14.017421, 14.167236>,  <25.323143, 13.929510, 14.355458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443327, 14.017421, 14.167236>,  <25.643635, 14.163938, 13.853534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443327, 14.017421, 14.167236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863516, -0.273958, 0.423424,
		0.059757, 0.889256, 0.453489,
		-0.500769, -0.366293, 0.784257,
		25.293097, 13.907533, 14.402514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802834, 14.523532, 14.524396>,  <25.643635, 14.163938, 13.853534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802834, 14.523532, 14.524396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681595, 14.150372, 14.602195>,  <25.608852, 13.926476, 14.648874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681595, 14.150372, 14.602195>,  <25.802834, 14.523532, 14.524396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681595, 14.150372, 14.602195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894105, -0.207774, 0.396743,
		-0.329711, 0.294152, 0.897087,
		-0.303095, -0.932901, 0.194498,
		25.590666, 13.870502, 14.660544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589859, 14.669802, 14.350734>,  <25.802834, 14.523532, 14.524396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589859, 14.669802, 14.350734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906612, 14.598192, 14.584270>,  <27.096664, 14.555226, 14.724391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906612, 14.598192, 14.584270>,  <26.589859, 14.669802, 14.350734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906612, 14.598192, 14.584270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196966, 0.979845, 0.033298,
		-0.578032, 0.088629, 0.811186,
		0.791885, -0.179023, 0.583839,
		27.144178, 14.544485, 14.759421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576719, 15.229519, 14.788947>,  <26.589859, 14.669802, 14.350734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576719, 15.229519, 14.788947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903255, 15.050761, 14.935302>,  <27.099176, 14.943507, 15.023115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903255, 15.050761, 14.935302>,  <26.576719, 15.229519, 14.788947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903255, 15.050761, 14.935302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339030, 0.883641, 0.322857,
		-0.467596, -0.139515, 0.872863,
		0.816341, -0.446893, 0.365888,
		27.148157, 14.916693, 15.045068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.202231, 15.701149, 25.007044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.941016, 15.403295, 24.951822>,  <14.784287, 15.224582, 24.918690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.941016, 15.403295, 24.951822>,  <15.202231, 15.701149, 25.007044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941016, 15.403295, 24.951822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177657, 0.026579, -0.983734,
		0.736194, -0.666941, 0.114933,
		-0.653037, -0.744637, -0.138054,
		14.745105, 15.179904, 24.910406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.505884, 15.100552, 24.655481>,  <15.202231, 15.701149, 25.007044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.505884, 15.100552, 24.655481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.113862, 15.092152, 24.576437>,  <14.878649, 15.087111, 24.529011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.113862, 15.092152, 24.576437>,  <15.505884, 15.100552, 24.655481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.113862, 15.092152, 24.576437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194656, 0.098755, -0.975888,
		0.040005, -0.994890, -0.092699,
		-0.980056, -0.020996, -0.197612,
		14.819845, 15.085852, 24.517153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420517, 14.626463, 24.189760>,  <15.505884, 15.100552, 24.655481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420517, 14.626463, 24.189760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.084147, 14.837177, 24.140213>,  <14.882326, 14.963606, 24.110485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.084147, 14.837177, 24.140213>,  <15.420517, 14.626463, 24.189760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.084147, 14.837177, 24.140213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101869, -0.070711, -0.992282,
		-0.531480, -0.847051, 0.005799,
		-0.840923, 0.526787, -0.123869,
		14.831870, 14.995214, 24.103052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080378, 14.291699, 23.764465>,  <15.420517, 14.626463, 24.189760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080378, 14.291699, 23.764465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.934555, 14.659900, 23.708216>,  <14.847061, 14.880820, 23.674465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.934555, 14.659900, 23.708216>,  <15.080378, 14.291699, 23.764465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.934555, 14.659900, 23.708216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147180, -0.092161, -0.984807,
		-0.919477, -0.379714, -0.101882,
		-0.364556, 0.920502, -0.140626,
		14.825189, 14.936050, 23.666027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.962382, 14.289448, 23.141764>,  <15.080378, 14.291699, 23.764465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.962382, 14.289448, 23.141764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.886999, 14.681094, 23.172270>,  <14.841769, 14.916082, 23.190573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.886999, 14.681094, 23.172270>,  <14.962382, 14.289448, 23.141764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886999, 14.681094, 23.172270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067024, 0.064651, -0.995654,
		-0.979791, -0.192751, 0.053440,
		-0.188458, 0.979115, 0.076264,
		14.830462, 14.974829, 23.195148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416349, 14.421019, 22.740263>,  <14.962382, 14.289448, 23.141764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.416349, 14.421019, 22.740263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.594394, 14.778937, 22.754208>,  <14.701221, 14.993689, 22.762575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.594394, 14.778937, 22.754208>,  <14.416349, 14.421019, 22.740263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594394, 14.778937, 22.754208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178840, 0.126975, -0.975650,
		-0.877436, 0.428037, 0.216543,
		0.445110, 0.894797, 0.034862,
		14.727927, 15.047377, 22.764666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983249, 14.906729, 22.277205>,  <14.416349, 14.421019, 22.740263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983249, 14.906729, 22.277205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.309938, 15.128374, 22.341602>,  <14.505953, 15.261361, 22.380241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.309938, 15.128374, 22.341602>,  <13.983249, 14.906729, 22.277205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.309938, 15.128374, 22.341602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021338, 0.307819, -0.951206,
		-0.576632, 0.773438, 0.263227,
		0.816725, 0.554113, 0.160994,
		14.554955, 15.294608, 22.389900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862321, 15.563667, 22.014908>,  <13.983249, 14.906729, 22.277205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862321, 15.563667, 22.014908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.257916, 15.506911, 21.998083>,  <14.495274, 15.472857, 21.987988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.257916, 15.506911, 21.998083>,  <13.862321, 15.563667, 22.014908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.257916, 15.506911, 21.998083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004760, 0.253567, -0.967306,
		0.147916, 0.956855, 0.250100,
		0.988988, -0.141890, -0.042061,
		14.554613, 15.464344, 21.985464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073015, 16.105694, 21.593977>,  <13.862321, 15.563667, 22.014908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073015, 16.105694, 21.593977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.387211, 15.858394, 21.582872>,  <14.575728, 15.710013, 21.576210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.387211, 15.858394, 21.582872>,  <14.073015, 16.105694, 21.593977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.387211, 15.858394, 21.582872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114471, 0.189223, -0.975239,
		0.608196, 0.762863, 0.219405,
		0.785490, -0.618252, -0.027759,
		14.622858, 15.672918, 21.574545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501669, 16.438148, 21.066893>,  <14.073015, 16.105694, 21.593977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501669, 16.438148, 21.066893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.659857, 16.073160, 21.108849>,  <14.754769, 15.854167, 21.134022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.659857, 16.073160, 21.108849>,  <14.501669, 16.438148, 21.066893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659857, 16.073160, 21.108849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293474, 0.017320, -0.955810,
		0.870331, 0.408776, 0.274636,
		0.395469, -0.912470, 0.104891,
		14.778498, 15.799419, 21.140316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130914, 16.475063, 20.759483>,  <14.501669, 16.438148, 21.066893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.130914, 16.475063, 20.759483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.018786, 16.091101, 20.759394>,  <14.951509, 15.860723, 20.759340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.018786, 16.091101, 20.759394>,  <15.130914, 16.475063, 20.759483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.018786, 16.091101, 20.759394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347575, -0.101286, -0.932166,
		0.894770, -0.261381, 0.362032,
		-0.280319, -0.959907, -0.000222,
		14.934690, 15.803128, 20.759327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.774620, 16.107864, 20.835522>,  <15.130914, 16.475063, 20.759483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.774620, 16.107864, 20.835522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.497651, 15.866755, 20.676920>,  <15.331470, 15.722090, 20.581758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.497651, 15.866755, 20.676920>,  <15.774620, 16.107864, 20.835522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.497651, 15.866755, 20.676920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500275, -0.005120, -0.865851,
		0.519882, -0.797896, 0.305098,
		-0.692421, -0.602774, -0.396506,
		15.289925, 15.685924, 20.557968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121088, 15.493763, 20.784142>,  <15.774620, 16.107864, 20.835522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121088, 15.493763, 20.784142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.806127, 15.475399, 20.538252>,  <15.617149, 15.464381, 20.390718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.806127, 15.475399, 20.538252>,  <16.121088, 15.493763, 20.784142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.806127, 15.475399, 20.538252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606623, -0.234942, -0.759481,
		-0.109557, -0.970924, 0.212844,
		-0.787405, -0.045910, -0.614724,
		15.569905, 15.461626, 20.353834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.284019, 14.984408, 20.291777>,  <16.121088, 15.493763, 20.784142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.284019, 14.984408, 20.291777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.993831, 15.182120, 20.100203>,  <15.819717, 15.300748, 19.985258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.993831, 15.182120, 20.100203>,  <16.284019, 14.984408, 20.291777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993831, 15.182120, 20.100203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502217, -0.095634, -0.859437,
		-0.470606, -0.864026, -0.178856,
		-0.725471, 0.494281, -0.478934,
		15.776189, 15.330404, 19.956522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.270668, 14.706962, 19.636282>,  <16.284019, 14.984408, 20.291777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.270668, 14.706962, 19.636282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.093513, 15.061802, 19.584276>,  <15.987221, 15.274706, 19.553074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.093513, 15.061802, 19.584276>,  <16.270668, 14.706962, 19.636282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093513, 15.061802, 19.584276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398201, 0.064699, -0.915014,
		-0.803297, -0.457020, -0.381899,
		-0.442888, 0.887100, -0.130013,
		15.960648, 15.327932, 19.545273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149191, 14.759676, 18.933813>,  <16.270668, 14.706962, 19.636282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.149191, 14.759676, 18.933813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.126005, 15.141732, 19.049982>,  <16.112093, 15.370966, 19.119684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.126005, 15.141732, 19.049982>,  <16.149191, 14.759676, 18.933813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.126005, 15.141732, 19.049982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578617, 0.269210, -0.769889,
		-0.813537, 0.123419, -0.568265,
		-0.057964, 0.955141, 0.290425,
		16.108616, 15.428274, 19.137110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004240, 15.001829, 18.340246>,  <16.149191, 14.759676, 18.933813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.004240, 15.001829, 18.340246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.145096, 15.310568, 18.552002>,  <16.229610, 15.495811, 18.679054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.145096, 15.310568, 18.552002>,  <16.004240, 15.001829, 18.340246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145096, 15.310568, 18.552002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555424, 0.282921, -0.781959,
		-0.753326, 0.569395, -0.329073,
		0.352142, 0.771846, 0.529387,
		16.250738, 15.542122, 18.710817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.785932, 15.602133, 18.060940>,  <16.004240, 15.001829, 18.340246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.785932, 15.602133, 18.060940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.099207, 15.710335, 18.284883>,  <16.287172, 15.775256, 18.419250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.099207, 15.710335, 18.284883>,  <15.785932, 15.602133, 18.060940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.099207, 15.710335, 18.284883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455196, 0.363940, -0.812616,
		-0.423572, 0.891277, 0.161900,
		0.783187, 0.270505, 0.559861,
		16.334164, 15.791487, 18.452843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891324, 16.268930, 17.890800>,  <15.785932, 15.602133, 18.060940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891324, 16.268930, 17.890800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.239420, 16.147652, 18.046108>,  <16.448278, 16.074884, 18.139294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.239420, 16.147652, 18.046108>,  <15.891324, 16.268930, 17.890800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239420, 16.147652, 18.046108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484051, 0.672708, -0.559605,
		-0.091524, 0.674934, 0.732180,
		0.870240, -0.303195, 0.388272,
		16.500492, 16.056694, 18.162590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.258726, 16.906672, 18.105104>,  <15.891324, 16.268930, 17.890800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.258726, 16.906672, 18.105104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.531528, 16.620996, 18.042101>,  <16.695210, 16.449593, 18.004299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.531528, 16.620996, 18.042101>,  <16.258726, 16.906672, 18.105104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531528, 16.620996, 18.042101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568659, 0.653275, -0.499859,
		0.459889, 0.251338, 0.851664,
		0.682004, -0.714186, -0.157508,
		16.736130, 16.406740, 17.994848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.914331, 17.279671, 18.202709>,  <16.258726, 16.906672, 18.105104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.914331, 17.279671, 18.202709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.996088, 16.938948, 18.009777>,  <17.045141, 16.734514, 17.894016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.996088, 16.938948, 18.009777>,  <16.914331, 17.279671, 18.202709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.996088, 16.938948, 18.009777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744874, 0.455037, -0.487959,
		0.635128, -0.259542, 0.727496,
		0.204392, -0.851809, -0.482332,
		17.057405, 16.683405, 17.865078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578819, 17.178358, 18.215828>,  <16.914331, 17.279671, 18.202709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.578819, 17.178358, 18.215828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.464312, 16.975859, 17.890432>,  <17.395607, 16.854359, 17.695196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.464312, 16.975859, 17.890432>,  <17.578819, 17.178358, 18.215828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464312, 16.975859, 17.890432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615990, 0.553070, -0.560954,
		0.733898, -0.661684, 0.153518,
		-0.286268, -0.506249, -0.813488,
		17.378431, 16.823984, 17.646385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.129747, 16.794115, 17.987844>,  <17.578819, 17.178358, 18.215828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.129747, 16.794115, 17.987844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.458460, 17.021942, 17.994390>,  <18.655687, 17.158638, 17.998318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.458460, 17.021942, 17.994390>,  <18.129747, 16.794115, 17.987844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458460, 17.021942, 17.994390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069099, 0.071104, 0.995073,
		0.565597, -0.818863, 0.097788,
		0.821782, 0.569567, 0.016366,
		18.704994, 17.192812, 17.999300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.431440, 16.636040, 18.611267>,  <18.129747, 16.794115, 17.987844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.431440, 16.636040, 18.611267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.620129, 16.978462, 18.526749>,  <18.733341, 17.183916, 18.476038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.620129, 16.978462, 18.526749>,  <18.431440, 16.636040, 18.611267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.620129, 16.978462, 18.526749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061502, 0.270992, 0.960615,
		0.879601, -0.440145, 0.180482,
		0.471719, 0.856058, -0.211296,
		18.761644, 17.235279, 18.463360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009764, 16.752052, 19.015438>,  <18.431440, 16.636040, 18.611267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009764, 16.752052, 19.015438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.916601, 17.126682, 18.910683>,  <18.860704, 17.351460, 18.847830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.916601, 17.126682, 18.910683>,  <19.009764, 16.752052, 19.015438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916601, 17.126682, 18.910683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006527, 0.270793, 0.962615,
		0.972478, 0.222489, -0.069182,
		-0.232905, 0.936573, -0.261888,
		18.846729, 17.407654, 18.832117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515001, 17.241199, 19.434460>,  <19.009764, 16.752052, 19.015438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515001, 17.241199, 19.434460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.190323, 17.440042, 19.311800>,  <18.995516, 17.559347, 19.238205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.190323, 17.440042, 19.311800>,  <19.515001, 17.241199, 19.434460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.190323, 17.440042, 19.311800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140488, 0.343433, 0.928610,
		0.566931, 0.796830, -0.208926,
		-0.811697, 0.497107, -0.306647,
		18.946814, 17.589174, 19.219807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623005, 17.867912, 19.726065>,  <19.515001, 17.241199, 19.434460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623005, 17.867912, 19.726065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.229290, 17.835735, 19.663195>,  <18.993061, 17.816429, 19.625473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.229290, 17.835735, 19.663195>,  <19.623005, 17.867912, 19.726065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.229290, 17.835735, 19.663195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173270, 0.268881, 0.947460,
		-0.033955, 0.959808, -0.278595,
		-0.984289, -0.080443, -0.157176,
		18.934004, 17.811602, 19.616041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.305305, 18.394760, 20.070940>,  <19.623005, 17.867912, 19.726065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.305305, 18.394760, 20.070940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.991064, 18.155548, 20.007458>,  <18.802519, 18.012022, 19.969368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.991064, 18.155548, 20.007458>,  <19.305305, 18.394760, 20.070940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.991064, 18.155548, 20.007458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205613, 0.010410, 0.978578,
		-0.583566, 0.801407, -0.131141,
		-0.785604, -0.598029, -0.158705,
		18.755383, 17.976139, 19.959846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.897057, 18.535206, 20.702929>,  <19.305305, 18.394760, 20.070940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.897057, 18.535206, 20.702929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.747307, 18.201242, 20.541550>,  <18.657457, 18.000864, 20.444723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.747307, 18.201242, 20.541550>,  <18.897057, 18.535206, 20.702929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.747307, 18.201242, 20.541550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359387, -0.270438, 0.893143,
		-0.854802, 0.479362, -0.198812,
		-0.374372, -0.834911, -0.403447,
		18.634995, 17.950769, 20.420515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192570, 18.483910, 20.777056>,  <18.897057, 18.535206, 20.702929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.192570, 18.483910, 20.777056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.358068, 18.120134, 20.760405>,  <18.457367, 17.901869, 20.750414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.358068, 18.120134, 20.760405>,  <18.192570, 18.483910, 20.777056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.358068, 18.120134, 20.760405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282038, -0.171521, 0.943947,
		-0.865603, -0.378814, -0.327463,
		0.413747, -0.909440, -0.041629,
		18.482193, 17.847301, 20.747915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931982, 18.163168, 21.375807>,  <18.192570, 18.483910, 20.777056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931982, 18.163168, 21.375807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.198469, 17.888775, 21.258793>,  <18.358362, 17.724138, 21.188585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.198469, 17.888775, 21.258793>,  <17.931982, 18.163168, 21.375807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.198469, 17.888775, 21.258793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077424, -0.453770, 0.887749,
		-0.741725, -0.568787, -0.355422,
		0.666220, -0.685984, -0.292535,
		18.398335, 17.682980, 21.171032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.693327, 17.618437, 21.532522>,  <17.931982, 18.163168, 21.375807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.693327, 17.618437, 21.532522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.065666, 17.477411, 21.494104>,  <18.289070, 17.392796, 21.471054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.065666, 17.477411, 21.494104>,  <17.693327, 17.618437, 21.532522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065666, 17.477411, 21.494104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144455, -0.596475, 0.789526,
		-0.335646, -0.721053, -0.606156,
		0.930846, -0.352563, -0.096045,
		18.344919, 17.371643, 21.465290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716482, 16.858845, 21.447304>,  <17.693327, 17.618437, 21.532522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716482, 16.858845, 21.447304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.075916, 16.967348, 21.585268>,  <18.291576, 17.032450, 21.668047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.075916, 16.967348, 21.585268>,  <17.716482, 16.858845, 21.447304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075916, 16.967348, 21.585268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098433, -0.641388, 0.760876,
		0.427616, -0.717662, -0.549641,
		0.898585, 0.271260, 0.344909,
		18.345491, 17.048727, 21.688742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971832, 16.251308, 21.613028>,  <17.716482, 16.858845, 21.447304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.971832, 16.251308, 21.613028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.147850, 16.538124, 21.829256>,  <18.253460, 16.710213, 21.958994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.147850, 16.538124, 21.829256>,  <17.971832, 16.251308, 21.613028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.147850, 16.538124, 21.829256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014442, -0.607563, 0.794140,
		0.897861, -0.341648, -0.277709,
		0.440042, 0.717038, 0.540573,
		18.279863, 16.753235, 21.991428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421839, 15.888768, 22.027231>,  <17.971832, 16.251308, 21.613028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421839, 15.888768, 22.027231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.370817, 16.241848, 22.208151>,  <18.340204, 16.453695, 22.316702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.370817, 16.241848, 22.208151>,  <18.421839, 15.888768, 22.027231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370817, 16.241848, 22.208151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028541, -0.459100, 0.887926,
		0.991421, 0.100349, 0.083754,
		-0.127554, 0.882699, 0.452298,
		18.332550, 16.506657, 22.343840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520502, 15.686290, 22.735281>,  <18.421839, 15.888768, 22.027231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.520502, 15.686290, 22.735281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.370527, 16.054972, 22.775045>,  <18.280542, 16.276180, 22.798904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.370527, 16.054972, 22.775045>,  <18.520502, 15.686290, 22.735281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370527, 16.054972, 22.775045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331835, -0.233563, 0.913966,
		0.865626, 0.309692, 0.393425,
		-0.374937, 0.921705, 0.099412,
		18.258045, 16.331484, 22.804869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.667585, 15.714964, 23.399275>,  <18.520502, 15.686290, 22.735281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.667585, 15.714964, 23.399275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.391870, 15.998257, 23.338230>,  <18.226442, 16.168232, 23.301603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.391870, 15.998257, 23.338230>,  <18.667585, 15.714964, 23.399275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.391870, 15.998257, 23.338230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392685, -0.188198, 0.900211,
		0.608837, 0.680432, 0.407835,
		-0.689286, 0.708233, -0.152614,
		18.185085, 16.210726, 23.292446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661619, 16.173061, 23.990030>,  <18.667585, 15.714964, 23.399275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661619, 16.173061, 23.990030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.307850, 16.187180, 23.803888>,  <18.095589, 16.195650, 23.692204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.307850, 16.187180, 23.803888>,  <18.661619, 16.173061, 23.990030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307850, 16.187180, 23.803888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463889, -0.175575, 0.868321,
		-0.051057, 0.983833, 0.171655,
		-0.884421, 0.035295, -0.465353,
		18.042524, 16.197767, 23.664282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309156, 16.641214, 24.397438>,  <18.661619, 16.173061, 23.990030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.309156, 16.641214, 24.397438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.034058, 16.438261, 24.189758>,  <17.868998, 16.316488, 24.065151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.034058, 16.438261, 24.189758>,  <18.309156, 16.641214, 24.397438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034058, 16.438261, 24.189758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528835, -0.139803, 0.837131,
		-0.497332, 0.850304, -0.172173,
		-0.687746, -0.507383, -0.519199,
		17.827734, 16.286047, 24.033998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680565, 16.864193, 24.707294>,  <18.309156, 16.641214, 24.397438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680565, 16.864193, 24.707294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.589766, 16.535147, 24.498766>,  <17.535286, 16.337719, 24.373648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.589766, 16.535147, 24.498766>,  <17.680565, 16.864193, 24.707294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589766, 16.535147, 24.498766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486505, -0.367939, 0.792423,
		-0.843674, 0.433504, -0.316685,
		-0.226997, -0.822615, -0.521322,
		17.521666, 16.288363, 24.342369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.914602, 16.767735, 24.852098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.049534, 16.416803, 24.715567>,  <17.130493, 16.206245, 24.633648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.049534, 16.416803, 24.715567>,  <16.914602, 16.767735, 24.852098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.049534, 16.416803, 24.715567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486716, -0.472898, 0.734490,
		-0.805802, -0.081634, -0.586531,
		0.337329, -0.877327, -0.341330,
		17.150732, 16.153605, 24.613167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351593, 16.350647, 24.899092>,  <16.914602, 16.767735, 24.852098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351593, 16.350647, 24.899092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.656284, 16.092415, 24.877201>,  <16.839100, 15.937476, 24.864067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.656284, 16.092415, 24.877201>,  <16.351593, 16.350647, 24.899092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656284, 16.092415, 24.877201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391805, -0.526268, 0.754672,
		-0.515993, -0.553422, -0.653816,
		0.761735, -0.645574, -0.054717,
		16.884804, 15.898742, 24.860783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066572, 15.645451, 24.915421>,  <16.351593, 16.350647, 24.899092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.066572, 15.645451, 24.915421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.433662, 15.636183, 25.074036>,  <16.653917, 15.630622, 25.169205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.433662, 15.636183, 25.074036>,  <16.066572, 15.645451, 24.915421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433662, 15.636183, 25.074036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350934, -0.514947, 0.782096,
		0.186074, -0.856909, -0.480712,
		0.917726, -0.023171, 0.396537,
		16.708981, 15.629231, 25.192997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026455, 14.985420, 25.458584>,  <16.066572, 15.645451, 24.915421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026455, 14.985420, 25.458584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.380341, 15.157943, 25.529297>,  <16.592672, 15.261456, 25.571724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.380341, 15.157943, 25.529297>,  <16.026455, 14.985420, 25.458584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.380341, 15.157943, 25.529297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096931, -0.200729, 0.974839,
		0.455941, -0.879592, -0.135781,
		0.884716, 0.431308, 0.176780,
		16.645756, 15.287335, 25.582331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.485397, 14.528976, 26.013378>,  <16.026455, 14.985420, 25.458584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.485397, 14.528976, 26.013378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.611506, 14.908554, 26.017605>,  <16.687170, 15.136300, 26.020142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.611506, 14.908554, 26.017605>,  <16.485397, 14.528976, 26.013378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.611506, 14.908554, 26.017605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083614, -0.038868, 0.995740,
		0.945311, -0.313044, -0.091599,
		0.315271, 0.948943, 0.010567,
		16.706087, 15.193237, 26.020775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.865196, 14.427658, 26.527920>,  <16.485397, 14.528976, 26.013378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.865196, 14.427658, 26.527920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.821375, 14.823388, 26.489483>,  <16.795082, 15.060826, 26.466421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.821375, 14.823388, 26.489483>,  <16.865196, 14.427658, 26.527920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.821375, 14.823388, 26.489483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021468, 0.099006, 0.994855,
		0.993749, 0.106928, -0.032086,
		-0.109555, 0.989325, -0.096092,
		16.788509, 15.120186, 26.460655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.347691, 14.765186, 27.008272>,  <16.865196, 14.427658, 26.527920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.347691, 14.765186, 27.008272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.064230, 15.038473, 26.937819>,  <16.894154, 15.202445, 26.895546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.064230, 15.038473, 26.937819>,  <17.347691, 14.765186, 27.008272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064230, 15.038473, 26.937819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061210, 0.189168, 0.980035,
		0.702897, 0.705287, -0.092235,
		-0.708654, 0.683218, -0.176136,
		16.851633, 15.243439, 26.884977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620234, 15.379602, 27.370522>,  <17.347691, 14.765186, 27.008272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620234, 15.379602, 27.370522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.228867, 15.434679, 27.308884>,  <16.994047, 15.467725, 27.271902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.228867, 15.434679, 27.308884>,  <17.620234, 15.379602, 27.370522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228867, 15.434679, 27.308884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122737, 0.212697, 0.969379,
		0.166251, 0.967368, -0.191206,
		-0.978415, 0.137693, -0.154093,
		16.935343, 15.475986, 27.262655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461855, 15.997961, 27.704258>,  <17.620234, 15.379602, 27.370522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.461855, 15.997961, 27.704258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.116728, 15.800711, 27.659763>,  <16.909651, 15.682361, 27.633066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.116728, 15.800711, 27.659763>,  <17.461855, 15.997961, 27.704258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.116728, 15.800711, 27.659763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290445, 0.303486, 0.907490,
		-0.413749, 0.815306, -0.405079,
		-0.862817, -0.493126, -0.111235,
		16.857883, 15.652773, 27.626392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.057556, 16.511953, 27.854383>,  <17.461855, 15.997961, 27.704258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.057556, 16.511953, 27.854383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.875492, 16.159180, 27.903408>,  <16.766254, 15.947515, 27.932823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.875492, 16.159180, 27.903408>,  <17.057556, 16.511953, 27.854383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.875492, 16.159180, 27.903408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160028, 0.216429, 0.963094,
		-0.875912, 0.418747, -0.239644,
		-0.455159, -0.881935, 0.122562,
		16.738945, 15.894599, 27.940176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502905, 16.678661, 28.371134>,  <17.057556, 16.511953, 27.854383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.502905, 16.678661, 28.371134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.508755, 16.278807, 28.362078>,  <16.512264, 16.038895, 28.356644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.508755, 16.278807, 28.362078>,  <16.502905, 16.678661, 28.371134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508755, 16.278807, 28.362078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074065, -0.021498, 0.997022,
		-0.997146, -0.016260, 0.073723,
		0.014627, -0.999637, -0.022641,
		16.513144, 15.978916, 28.355286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.950964, 16.409403, 28.805464>,  <16.502905, 16.678661, 28.371134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.950964, 16.409403, 28.805464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.227949, 16.123631, 28.765299>,  <16.394140, 15.952167, 28.741199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.227949, 16.123631, 28.765299>,  <15.950964, 16.409403, 28.805464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227949, 16.123631, 28.765299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055719, -0.085805, 0.994753,
		-0.719300, -0.694423, -0.019609,
		0.692462, -0.714433, -0.100413,
		16.435688, 15.909301, 28.735174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776613, 15.859543, 29.190769>,  <15.950964, 16.409403, 28.805464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.776613, 15.859543, 29.190769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.173723, 15.830288, 29.152721>,  <16.411989, 15.812735, 29.129892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.173723, 15.830288, 29.152721>,  <15.776613, 15.859543, 29.190769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.173723, 15.830288, 29.152721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079196, -0.196134, 0.977374,
		-0.090137, -0.977846, -0.188925,
		0.992776, -0.073136, -0.095120,
		16.471556, 15.808347, 29.124186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884132, 15.251407, 29.543056>,  <15.776613, 15.859543, 29.190769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884132, 15.251407, 29.543056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.246872, 15.415733, 29.505415>,  <16.464516, 15.514330, 29.482830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.246872, 15.415733, 29.505415>,  <15.884132, 15.251407, 29.543056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.246872, 15.415733, 29.505415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164536, -0.139533, 0.976452,
		0.388014, -0.900977, -0.194130,
		0.906848, 0.410818, -0.094102,
		16.518927, 15.538979, 29.477184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.363901, 14.723079, 29.779436>,  <15.884132, 15.251407, 29.543056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.363901, 14.723079, 29.779436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.544930, 15.077560, 29.819084>,  <16.653545, 15.290249, 29.842873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.544930, 15.077560, 29.819084>,  <16.363901, 14.723079, 29.779436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544930, 15.077560, 29.819084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335839, -0.272359, 0.901683,
		0.826071, -0.374785, -0.420883,
		0.452569, 0.886204, 0.099120,
		16.680700, 15.343422, 29.848820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918068, 14.581683, 30.061852>,  <16.363901, 14.723079, 29.779436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918068, 14.581683, 30.061852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.916517, 14.969671, 30.159130>,  <16.915586, 15.202464, 30.217497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.916517, 14.969671, 30.159130>,  <16.918068, 14.581683, 30.061852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916517, 14.969671, 30.159130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470238, -0.212862, 0.856484,
		0.882531, 0.117679, -0.455292,
		-0.003876, 0.969970, 0.243195,
		16.915354, 15.260662, 30.232088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580122, 14.755952, 30.449579>,  <16.918068, 14.581683, 30.061852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580122, 14.755952, 30.449579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.319683, 15.046689, 30.537006>,  <17.163420, 15.221131, 30.589462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.319683, 15.046689, 30.537006>,  <17.580122, 14.755952, 30.449579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319683, 15.046689, 30.537006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298565, -0.019486, 0.954190,
		0.697806, 0.686527, -0.204323,
		-0.651096, 0.726843, 0.218570,
		17.124353, 15.264742, 30.602577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916828, 15.197554, 30.859917>,  <17.580122, 14.755952, 30.449579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.916828, 15.197554, 30.859917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.534994, 15.287576, 30.938015>,  <17.305895, 15.341589, 30.984875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.534994, 15.287576, 30.938015>,  <17.916828, 15.197554, 30.859917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.534994, 15.287576, 30.938015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153432, -0.190414, 0.969640,
		0.255400, 0.955559, 0.147235,
		-0.954583, 0.225055, 0.195245,
		17.248619, 15.355092, 30.996588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.941498, 15.681503, 31.390881>,  <17.916828, 15.197554, 30.859917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.941498, 15.681503, 31.390881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.563042, 15.554224, 31.414766>,  <17.335968, 15.477857, 31.429098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.563042, 15.554224, 31.414766>,  <17.941498, 15.681503, 31.390881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563042, 15.554224, 31.414766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096589, -0.101384, 0.990147,
		-0.309008, 0.942588, 0.126658,
		-0.946142, -0.318197, 0.059715,
		17.279200, 15.458765, 31.432680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680933, 15.999496, 32.065399>,  <17.941498, 15.681503, 31.390881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680933, 15.999496, 32.065399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.432167, 15.704355, 31.960484>,  <17.282907, 15.527271, 31.897533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.432167, 15.704355, 31.960484>,  <17.680933, 15.999496, 32.065399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432167, 15.704355, 31.960484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021989, -0.351271, 0.936016,
		-0.782775, 0.576356, 0.234686,
		-0.621916, -0.737850, -0.262293,
		17.245592, 15.483000, 31.881796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166359, 15.989262, 32.574009>,  <17.680933, 15.999496, 32.065399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.166359, 15.989262, 32.574009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.138929, 15.618219, 32.427124>,  <17.122471, 15.395595, 32.338993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.138929, 15.618219, 32.427124>,  <17.166359, 15.989262, 32.574009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.138929, 15.618219, 32.427124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092076, -0.372395, 0.923496,
		-0.993388, 0.029517, 0.110947,
		-0.068575, -0.927605, -0.367215,
		17.118357, 15.339938, 32.316959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.490410, 15.600199, 32.840069>,  <17.166359, 15.989262, 32.574009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.490410, 15.600199, 32.840069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.759649, 15.329825, 32.720036>,  <16.921192, 15.167602, 32.648014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.759649, 15.329825, 32.720036>,  <16.490410, 15.600199, 32.840069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.759649, 15.329825, 32.720036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247483, -0.588242, 0.769885,
		-0.696917, -0.443940, -0.563227,
		0.673096, -0.675935, -0.300088,
		16.961578, 15.127045, 32.630009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.191992, 14.948832, 32.622028>,  <16.490410, 15.600199, 32.840069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.191992, 14.948832, 32.622028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.542400, 15.015187, 32.803165>,  <16.752645, 15.055000, 32.911846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.542400, 15.015187, 32.803165>,  <16.191992, 14.948832, 32.622028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542400, 15.015187, 32.803165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376730, -0.350846, 0.857311,
		0.301096, -0.921623, -0.244853,
		0.876023, 0.165889, 0.452841,
		16.805206, 15.064954, 32.939018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.974937, 14.276968, 33.003273>,  <16.191992, 14.948832, 32.622028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.974937, 14.276968, 33.003273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.762593, 13.938091, 32.994747>,  <15.635187, 13.734765, 32.989632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.762593, 13.938091, 32.994747>,  <15.974937, 14.276968, 33.003273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762593, 13.938091, 32.994747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197456, 0.148109, -0.969059,
		0.824135, -0.510226, -0.245908,
		-0.530860, -0.847192, -0.021314,
		15.603335, 13.683934, 32.988354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848402, 14.336658, 32.344898>,  <15.974937, 14.276968, 33.003273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.848402, 14.336658, 32.344898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.625389, 14.022061, 32.451176>,  <15.491582, 13.833303, 32.514942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.625389, 14.022061, 32.451176>,  <15.848402, 14.336658, 32.344898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.625389, 14.022061, 32.451176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335803, -0.079033, -0.938610,
		0.759207, -0.612524, -0.220043,
		-0.557531, -0.786490, 0.265690,
		15.458130, 13.786114, 32.530884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.049360, 13.776388, 31.935680>,  <15.848402, 14.336658, 32.344898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.049360, 13.776388, 31.935680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.667210, 13.755568, 32.051987>,  <15.437919, 13.743075, 32.121769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.667210, 13.755568, 32.051987>,  <16.049360, 13.776388, 31.935680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.667210, 13.755568, 32.051987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282791, -0.123215, -0.951235,
		0.085340, -0.991014, 0.102997,
		-0.955378, -0.052052, 0.290765,
		15.380596, 13.739952, 32.139217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748301, 13.268103, 31.457390>,  <16.049360, 13.776388, 31.935680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748301, 13.268103, 31.457390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.425004, 13.453110, 31.603168>,  <15.231026, 13.564115, 31.690636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.425004, 13.453110, 31.603168>,  <15.748301, 13.268103, 31.457390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425004, 13.453110, 31.603168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450475, -0.087063, -0.888533,
		-0.379233, -0.882324, 0.278722,
		-0.808241, 0.462519, 0.364448,
		15.182531, 13.591866, 31.712503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.175301, 12.819678, 31.428701>,  <15.748301, 13.268103, 31.457390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.175301, 12.819678, 31.428701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.021274, 13.188731, 31.437376>,  <14.928857, 13.410163, 31.442581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.021274, 13.188731, 31.437376>,  <15.175301, 12.819678, 31.428701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.021274, 13.188731, 31.437376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561788, -0.215694, -0.798668,
		-0.732200, -0.319724, 0.601381,
		-0.385068, 0.922633, 0.021686,
		14.905753, 13.465521, 31.443882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497023, 12.706162, 31.159761>,  <15.175301, 12.819678, 31.428701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497023, 12.706162, 31.159761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.555453, 13.101313, 31.138733>,  <14.590511, 13.338403, 31.126116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.555453, 13.101313, 31.138733>,  <14.497023, 12.706162, 31.159761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555453, 13.101313, 31.138733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432117, 0.015915, -0.901677,
		-0.889908, 0.154430, 0.429202,
		0.146077, 0.987876, -0.052569,
		14.599277, 13.397676, 31.122963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.882587, 12.953128, 30.881433>,  <14.497023, 12.706162, 31.159761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.882587, 12.953128, 30.881433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.100424, 13.287073, 30.849367>,  <14.231126, 13.487440, 30.830128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.100424, 13.287073, 30.849367>,  <13.882587, 12.953128, 30.881433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100424, 13.287073, 30.849367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314161, 0.114432, -0.942448,
		-0.777640, 0.538433, 0.324600,
		0.544590, 0.834862, -0.080168,
		14.263801, 13.537532, 30.825317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.388227, 13.483454, 30.577473>,  <13.882587, 12.953128, 30.881433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.388227, 13.483454, 30.577473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.773425, 13.553056, 30.495144>,  <14.004544, 13.594817, 30.445747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.773425, 13.553056, 30.495144>,  <13.388227, 13.483454, 30.577473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773425, 13.553056, 30.495144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234463, 0.164244, -0.958150,
		-0.132919, 0.970951, 0.198964,
		0.962995, 0.174006, -0.205821,
		14.062324, 13.605258, 30.433397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.284327, 13.868971, 30.014099>,  <13.388227, 13.483454, 30.577473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.284327, 13.868971, 30.014099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.674054, 13.779533, 30.003447>,  <13.907890, 13.725871, 29.997055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.674054, 13.779533, 30.003447>,  <13.284327, 13.868971, 30.014099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.674054, 13.779533, 30.003447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005170, 0.140448, -0.990075,
		0.225114, 0.964510, 0.137997,
		0.974319, -0.223593, -0.026631,
		13.966350, 13.712456, 29.995457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.606060, 14.416194, 29.765177>,  <13.284327, 13.868971, 30.014099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.606060, 14.416194, 29.765177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.852118, 14.109240, 29.692823>,  <13.999752, 13.925067, 29.649412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.852118, 14.109240, 29.692823>,  <13.606060, 14.416194, 29.765177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.852118, 14.109240, 29.692823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104035, 0.306424, -0.946193,
		0.781521, 0.563227, 0.268329,
		0.615144, -0.767385, -0.180881,
		14.036661, 13.879025, 29.638559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297928, 14.728278, 29.545380>,  <13.606060, 14.416194, 29.765177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.297928, 14.728278, 29.545380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.270867, 14.354545, 29.405413>,  <14.254631, 14.130304, 29.321432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.270867, 14.354545, 29.405413>,  <14.297928, 14.728278, 29.545380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270867, 14.354545, 29.405413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166285, 0.335256, -0.927336,
		0.983754, -0.120922, 0.132685,
		-0.067652, -0.934335, -0.349917,
		14.250571, 14.074244, 29.300438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.750089, 14.721718, 29.010059>,  <14.297928, 14.728278, 29.545380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.750089, 14.721718, 29.010059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.543203, 14.387413, 28.936310>,  <14.419072, 14.186831, 28.892061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.543203, 14.387413, 28.936310>,  <14.750089, 14.721718, 29.010059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.543203, 14.387413, 28.936310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180412, 0.104117, -0.978065,
		0.836625, -0.539132, 0.096931,
		-0.517214, -0.835761, -0.184373,
		14.388040, 14.136684, 28.880999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204582, 14.333132, 28.545452>,  <14.750089, 14.721718, 29.010059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204582, 14.333132, 28.545452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.828135, 14.203454, 28.507097>,  <14.602266, 14.125648, 28.484085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.828135, 14.203454, 28.507097>,  <15.204582, 14.333132, 28.545452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.828135, 14.203454, 28.507097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064569, 0.106039, -0.992263,
		0.331856, -0.940028, -0.078862,
		-0.941118, -0.324196, -0.095887,
		14.545799, 14.106195, 28.478331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.168961, 13.853621, 27.981867>,  <15.204582, 14.333132, 28.545452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.168961, 13.853621, 27.981867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.797674, 14.000121, 28.008022>,  <14.574903, 14.088021, 28.023716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.797674, 14.000121, 28.008022>,  <15.168961, 13.853621, 27.981867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.797674, 14.000121, 28.008022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028983, 0.246411, -0.968732,
		-0.370910, -0.897297, -0.239338,
		-0.928216, 0.366249, 0.065390,
		14.519209, 14.109996, 28.027639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.890606, 13.495512, 27.419287>,  <15.168961, 13.853621, 27.981867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.890606, 13.495512, 27.419287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.652122, 13.803729, 27.509441>,  <14.509032, 13.988660, 27.563534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.652122, 13.803729, 27.509441>,  <14.890606, 13.495512, 27.419287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652122, 13.803729, 27.509441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101055, 0.350536, -0.931081,
		-0.796445, -0.532341, -0.286859,
		-0.596207, 0.770544, 0.225387,
		14.473260, 14.034892, 27.577057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.482732, 13.570416, 26.790236>,  <14.890606, 13.495512, 27.419287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.482732, 13.570416, 26.790236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.422104, 13.914187, 26.985546>,  <14.385727, 14.120450, 27.102732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.422104, 13.914187, 26.985546>,  <14.482732, 13.570416, 26.790236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.422104, 13.914187, 26.985546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046513, 0.487234, -0.872032,
		-0.987352, -0.154885, -0.033875,
		-0.151570, 0.859426, 0.488275,
		14.376633, 14.172015, 27.132029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.864361, 13.913856, 26.532301>,  <14.482732, 13.570416, 26.790236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.864361, 13.913856, 26.532301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.097794, 14.191185, 26.701408>,  <14.237853, 14.357582, 26.802874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.097794, 14.191185, 26.701408>,  <13.864361, 13.913856, 26.532301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.097794, 14.191185, 26.701408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172902, 0.614769, -0.769522,
		-0.793433, 0.375982, 0.478646,
		0.583583, 0.693323, 0.422770,
		14.272868, 14.399182, 26.828239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512186, 14.556380, 26.362566>,  <13.864361, 13.913856, 26.532301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512186, 14.556380, 26.362566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.896820, 14.641772, 26.431597>,  <14.127601, 14.693007, 26.473015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.896820, 14.641772, 26.431597>,  <13.512186, 14.556380, 26.362566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896820, 14.641772, 26.431597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053454, 0.471016, -0.880504,
		-0.269256, 0.855903, 0.441510,
		0.961584, 0.213480, 0.172576,
		14.185295, 14.705816, 26.483370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.598460, 15.210690, 26.118969>,  <13.512186, 14.556380, 26.362566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.598460, 15.210690, 26.118969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.964739, 15.049942, 26.119232>,  <14.184505, 14.953493, 26.119390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.964739, 15.049942, 26.119232>,  <13.598460, 15.210690, 26.118969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.964739, 15.049942, 26.119232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110334, 0.249825, -0.961984,
		0.386429, 0.880958, 0.273103,
		0.915696, -0.401871, 0.000660,
		14.239448, 14.929380, 26.119431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036155, 15.662089, 25.682360>,  <13.598460, 15.210690, 26.118969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036155, 15.662089, 25.682360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.229858, 15.312333, 25.670137>,  <14.346081, 15.102479, 25.662804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.229858, 15.312333, 25.670137>,  <14.036155, 15.662089, 25.682360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.229858, 15.312333, 25.670137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148845, 0.116750, -0.981944,
		0.862171, 0.470967, 0.186686,
		0.484259, -0.874391, -0.030557,
		14.375136, 15.050015, 25.660971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.575645, 15.891219, 25.392508>,  <14.036155, 15.662089, 25.682360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.575645, 15.891219, 25.392508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.550670, 15.496224, 25.334583>,  <14.535685, 15.259228, 25.299829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.550670, 15.496224, 25.334583>,  <14.575645, 15.891219, 25.392508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550670, 15.496224, 25.334583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349341, 0.114291, -0.929999,
		0.934913, -0.108656, 0.337833,
		-0.062438, -0.987487, -0.144810,
		14.531939, 15.199978, 25.291140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.311153, 23.664318, 14.837748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.170307, 23.376829, 14.597931>,  <31.085800, 23.204336, 14.454041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.170307, 23.376829, 14.597931>,  <31.311153, 23.664318, 14.837748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170307, 23.376829, 14.597931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455078, 0.691219, -0.561355,
		0.817876, 0.075179, -0.570463,
		-0.352113, -0.718724, -0.599543,
		31.064672, 23.161211, 14.418068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534716, 23.444456, 14.100650>,  <31.311153, 23.664318, 14.837748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534716, 23.444456, 14.100650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.854057, 23.372629, 13.870732>,  <32.045662, 23.329533, 13.732782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.854057, 23.372629, 13.870732>,  <31.534716, 23.444456, 14.100650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854057, 23.372629, 13.870732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530002, -0.662670, -0.529118,
		-0.285885, 0.727064, -0.624217,
		0.798353, -0.179569, -0.574793,
		32.093563, 23.318758, 13.698295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249598, 23.370235, 13.574743>,  <31.534716, 23.444456, 14.100650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249598, 23.370235, 13.574743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.600351, 23.201933, 13.481756>,  <31.810802, 23.100952, 13.425964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.600351, 23.201933, 13.481756>,  <31.249598, 23.370235, 13.574743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600351, 23.201933, 13.481756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401032, -0.373677, -0.836384,
		0.265045, 0.826638, -0.496408,
		0.876883, -0.420755, -0.232468,
		31.863417, 23.075706, 13.412016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387112, 23.551100, 12.791222>,  <31.249598, 23.370235, 13.574743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387112, 23.551100, 12.791222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.550854, 23.215223, 12.933964>,  <31.649099, 23.013697, 13.019609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.550854, 23.215223, 12.933964>,  <31.387112, 23.551100, 12.791222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550854, 23.215223, 12.933964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264814, -0.483640, -0.834246,
		0.873099, 0.247002, -0.420342,
		0.409355, -0.839692, 0.356856,
		31.673660, 22.963316, 13.041020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817099, 23.263149, 12.223470>,  <31.387112, 23.551100, 12.791222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817099, 23.263149, 12.223470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.677059, 22.981468, 12.470541>,  <31.593035, 22.812460, 12.618784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.677059, 22.981468, 12.470541>,  <31.817099, 23.263149, 12.223470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677059, 22.981468, 12.470541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319308, -0.530197, -0.785451,
		0.880609, -0.472217, -0.039235,
		-0.350101, -0.704203, 0.617679,
		31.572029, 22.770206, 12.655845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097919, 22.552044, 12.123622>,  <31.817099, 23.263149, 12.223470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097919, 22.552044, 12.123622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.733137, 22.528969, 12.286110>,  <31.514269, 22.515123, 12.383602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.733137, 22.528969, 12.286110>,  <32.097919, 22.552044, 12.123622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733137, 22.528969, 12.286110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320354, -0.518474, -0.792817,
		0.256351, -0.853145, 0.454343,
		-0.911952, -0.057689, 0.406219,
		31.459551, 22.511662, 12.407975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878304, 21.807922, 12.145816>,  <32.097919, 22.552044, 12.123622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878304, 21.807922, 12.145816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.562609, 22.053442, 12.138295>,  <31.373192, 22.200754, 12.133782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.562609, 22.053442, 12.138295>,  <31.878304, 21.807922, 12.145816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562609, 22.053442, 12.138295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438378, -0.584588, -0.682701,
		-0.430034, -0.530571, 0.730456,
		-0.789237, 0.613801, -0.018802,
		31.325838, 22.237583, 12.132654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247805, 21.493448, 12.419966>,  <31.878304, 21.807922, 12.145816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247805, 21.493448, 12.419966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.177753, 21.740330, 12.113139>,  <31.135723, 21.888458, 11.929043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.177753, 21.740330, 12.113139>,  <31.247805, 21.493448, 12.419966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177753, 21.740330, 12.113139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161468, -0.786563, -0.596025,
		-0.971215, 0.019477, 0.237407,
		-0.175127, 0.617203, -0.767067,
		31.125216, 21.925491, 11.883019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565769, 21.304790, 11.948682>,  <31.247805, 21.493448, 12.419966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565769, 21.304790, 11.948682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.853142, 21.514620, 11.765958>,  <31.025566, 21.640518, 11.656323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.853142, 21.514620, 11.765958>,  <30.565769, 21.304790, 11.948682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853142, 21.514620, 11.765958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045947, -0.619495, -0.783655,
		-0.694077, 0.583993, -0.420963,
		0.718433, 0.524575, -0.456810,
		31.068672, 21.671993, 11.628915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141184, 20.636063, 12.077417>,  <30.565769, 21.304790, 11.948682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141184, 20.636063, 12.077417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.279226, 20.356464, 12.327954>,  <30.362051, 20.188705, 12.478276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.279226, 20.356464, 12.327954>,  <30.141184, 20.636063, 12.077417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279226, 20.356464, 12.327954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881289, -0.011782, 0.472431,
		-0.322848, -0.715026, -0.620086,
		0.345106, -0.698999, 0.626341,
		30.382759, 20.146765, 12.515857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687904, 20.122999, 12.058087>,  <30.141184, 20.636063, 12.077417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687904, 20.122999, 12.058087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.871807, 20.074722, 12.410009>,  <29.982149, 20.045755, 12.621162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.871807, 20.074722, 12.410009>,  <29.687904, 20.122999, 12.058087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871807, 20.074722, 12.410009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887687, -0.034278, 0.459170,
		-0.025264, -0.992097, -0.122903,
		0.459754, -0.120700, 0.879805,
		30.009733, 20.038515, 12.673951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318714, 19.688646, 12.414470>,  <29.687904, 20.122999, 12.058087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318714, 19.688646, 12.414470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.519997, 19.815899, 12.735861>,  <29.640766, 19.892250, 12.928696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.519997, 19.815899, 12.735861>,  <29.318714, 19.688646, 12.414470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519997, 19.815899, 12.735861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803042, -0.171317, 0.570766,
		0.319227, -0.932439, 0.169265,
		0.503207, 0.318131, 0.803477,
		29.670959, 19.911339, 12.976904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291658, 19.194300, 12.944787>,  <29.318714, 19.688646, 12.414470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291658, 19.194300, 12.944787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.365522, 19.527679, 13.153117>,  <29.409842, 19.727707, 13.278115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.365522, 19.527679, 13.153117>,  <29.291658, 19.194300, 12.944787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365522, 19.527679, 13.153117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793453, -0.186284, 0.579422,
		0.579942, -0.520248, 0.626905,
		0.184661, 0.833451, 0.520827,
		29.420921, 19.777714, 13.309365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269123, 18.984695, 13.640486>,  <29.291658, 19.194300, 12.944787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269123, 18.984695, 13.640486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.240574, 19.383181, 13.660335>,  <29.223444, 19.622272, 13.672244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.240574, 19.383181, 13.660335>,  <29.269123, 18.984695, 13.640486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240574, 19.383181, 13.660335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723598, -0.085955, 0.684849,
		0.686522, 0.012974, 0.726994,
		-0.071374, 0.996215, 0.049622,
		29.219162, 19.682045, 13.675221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246450, 19.075865, 14.304056>,  <29.269123, 18.984695, 13.640486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246450, 19.075865, 14.304056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.075930, 19.390774, 14.125856>,  <28.973618, 19.579720, 14.018936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.075930, 19.390774, 14.125856>,  <29.246450, 19.075865, 14.304056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075930, 19.390774, 14.125856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665577, 0.060533, 0.743870,
		0.612595, 0.613629, 0.498184,
		-0.426304, 0.787271, -0.445499,
		28.948038, 19.626955, 13.992207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016861, 19.530190, 14.808846>,  <29.246450, 19.075865, 14.304056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016861, 19.530190, 14.808846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.788374, 19.588511, 14.485747>,  <28.651281, 19.623503, 14.291888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.788374, 19.588511, 14.485747>,  <29.016861, 19.530190, 14.808846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788374, 19.588511, 14.485747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812470, 0.039392, 0.581671,
		0.116627, 0.988530, 0.095957,
		-0.571219, 0.145800, -0.807744,
		28.617008, 19.632250, 14.243424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541702, 19.843977, 15.082146>,  <29.016861, 19.530190, 14.808846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541702, 19.843977, 15.082146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.365749, 19.746740, 14.736334>,  <28.260178, 19.688398, 14.528847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.365749, 19.746740, 14.736334>,  <28.541702, 19.843977, 15.082146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365749, 19.746740, 14.736334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882440, -0.061741, 0.466355,
		-0.166743, 0.968037, -0.187354,
		-0.439881, -0.243090, -0.864530,
		28.233786, 19.673813, 14.476974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775013, 20.165026, 15.058292>,  <28.541702, 19.843977, 15.082146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775013, 20.165026, 15.058292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.794226, 19.871077, 14.787692>,  <27.805754, 19.694706, 14.625332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.794226, 19.871077, 14.787692>,  <27.775013, 20.165026, 15.058292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794226, 19.871077, 14.787692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932043, -0.276501, 0.234184,
		-0.359149, 0.619279, -0.698216,
		0.048032, -0.734874, -0.676500,
		27.808636, 19.650614, 14.584743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084105, 20.142706, 14.891367>,  <27.775013, 20.165026, 15.058292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084105, 20.142706, 14.891367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.250910, 19.810724, 14.743163>,  <27.350992, 19.611536, 14.654241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.250910, 19.810724, 14.743163>,  <27.084105, 20.142706, 14.891367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250910, 19.810724, 14.743163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837172, -0.509464, 0.198974,
		-0.353900, 0.227205, -0.907266,
		0.417011, -0.829955, -0.370509,
		27.376013, 19.561737, 14.632010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659437, 19.816101, 14.352604>,  <27.084105, 20.142706, 14.891367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659437, 19.816101, 14.352604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.882967, 19.532722, 14.525031>,  <27.017084, 19.362696, 14.628488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.882967, 19.532722, 14.525031>,  <26.659437, 19.816101, 14.352604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882967, 19.532722, 14.525031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828881, -0.493403, 0.263647,
		0.025910, -0.504636, -0.862943,
		0.558825, -0.708446, 0.431067,
		27.050615, 19.320189, 14.654351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330860, 19.159365, 14.158165>,  <26.659437, 19.816101, 14.352604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330860, 19.159365, 14.158165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.563421, 19.031454, 14.457422>,  <26.702957, 18.954708, 14.636976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.563421, 19.031454, 14.457422>,  <26.330860, 19.159365, 14.158165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563421, 19.031454, 14.457422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643665, -0.743220, 0.182537,
		0.497663, -0.587680, -0.637937,
		0.581401, -0.319775, 0.748143,
		26.737841, 18.935522, 14.681865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386415, 18.379122, 14.132639>,  <26.330860, 19.159365, 14.158165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386415, 18.379122, 14.132639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.473198, 18.470903, 14.512172>,  <26.525269, 18.525972, 14.739891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.473198, 18.470903, 14.512172>,  <26.386415, 18.379122, 14.132639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473198, 18.470903, 14.512172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666438, -0.675412, 0.315719,
		0.713295, -0.700835, 0.006380,
		0.216958, 0.229453, 0.948831,
		26.538286, 18.539740, 14.796822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276918, 17.748108, 14.368274>,  <26.386415, 18.379122, 14.132639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276918, 17.748108, 14.368274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.314753, 17.967373, 14.700676>,  <26.337454, 18.098932, 14.900118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.314753, 17.967373, 14.700676>,  <26.276918, 17.748108, 14.368274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314753, 17.967373, 14.700676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751442, -0.508219, 0.420770,
		0.652984, -0.664252, 0.363842,
		0.094586, 0.548162, 0.831006,
		26.343128, 18.131821, 14.949978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457325, 17.273024, 14.886410>,  <26.276918, 17.748108, 14.368274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457325, 17.273024, 14.886410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.316050, 17.592463, 15.081347>,  <26.231285, 17.784126, 15.198308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.316050, 17.592463, 15.081347>,  <26.457325, 17.273024, 14.886410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316050, 17.592463, 15.081347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770655, -0.543684, 0.332414,
		0.530424, -0.258168, 0.807465,
		-0.353187, 0.798597, 0.487341,
		26.210093, 17.832041, 15.227549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424799, 17.140543, 15.603131>,  <26.457325, 17.273024, 14.886410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424799, 17.140543, 15.603131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.166069, 17.432268, 15.513938>,  <26.010832, 17.607304, 15.460422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.166069, 17.432268, 15.513938>,  <26.424799, 17.140543, 15.603131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166069, 17.432268, 15.513938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742025, -0.534316, 0.404852,
		0.176120, 0.427327, 0.886777,
		-0.646823, 0.729313, -0.222984,
		25.972023, 17.651062, 15.447042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914362, 17.058439, 16.120340>,  <26.424799, 17.140543, 15.603131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914362, 17.058439, 16.120340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.735418, 17.277395, 15.837432>,  <25.628052, 17.408768, 15.667686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.735418, 17.277395, 15.837432>,  <25.914362, 17.058439, 16.120340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735418, 17.277395, 15.837432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865829, -0.463208, 0.189154,
		-0.224073, 0.696997, 0.681166,
		-0.447361, 0.547388, -0.707272,
		25.601210, 17.441612, 15.625250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.402617, 17.430632, 16.428209>,  <25.914362, 17.058439, 16.120340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.402617, 17.430632, 16.428209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.303869, 17.413483, 16.040970>,  <25.244621, 17.403193, 15.808626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.303869, 17.413483, 16.040970>,  <25.402617, 17.430632, 16.428209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303869, 17.413483, 16.040970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880773, -0.406667, 0.242611,
		-0.404096, 0.912570, 0.062633,
		-0.246870, -0.042872, -0.968100,
		25.229809, 17.400621, 15.750540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723816, 17.587408, 16.457745>,  <25.402617, 17.430632, 16.428209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723816, 17.587408, 16.457745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.754896, 17.460857, 16.079567>,  <24.773544, 17.384926, 15.852660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.754896, 17.460857, 16.079567>,  <24.723816, 17.587408, 16.457745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754896, 17.460857, 16.079567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949742, -0.311924, 0.026328,
		-0.303236, 0.895884, -0.324714,
		0.077699, -0.316379, -0.945446,
		24.778206, 17.365944, 15.795933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172800, 17.892038, 16.084354>,  <24.723816, 17.587408, 16.457745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172800, 17.892038, 16.084354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.282148, 17.581163, 15.857639>,  <24.347757, 17.394638, 15.721610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.282148, 17.581163, 15.857639>,  <24.172800, 17.892038, 16.084354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282148, 17.581163, 15.857639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952686, -0.300154, -0.047923,
		-0.132879, 0.553073, -0.822468,
		0.273372, -0.777186, -0.566789,
		24.364161, 17.348007, 15.687603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.600176, 17.855278, 15.615229>,  <24.172800, 17.892038, 16.084354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.600176, 17.855278, 15.615229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.773386, 17.496584, 15.578659>,  <23.877312, 17.281368, 15.556718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.773386, 17.496584, 15.578659>,  <23.600176, 17.855278, 15.615229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.773386, 17.496584, 15.578659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901376, -0.430431, -0.047434,
		0.003184, 0.102947, -0.994682,
		0.433025, -0.896734, -0.091423,
		23.903294, 17.227564, 15.551232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.287733, 17.456446, 15.092779>,  <23.600176, 17.855278, 15.615229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.287733, 17.456446, 15.092779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.473959, 17.181149, 15.315335>,  <23.585695, 17.015970, 15.448869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.473959, 17.181149, 15.315335>,  <23.287733, 17.456446, 15.092779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.473959, 17.181149, 15.315335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824045, -0.566416, -0.011116,
		0.322798, -0.453316, -0.830847,
		0.465566, -0.688243, 0.556391,
		23.613628, 16.974676, 15.482252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.079792, 16.785250, 14.798656>,  <23.287733, 17.456446, 15.092779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.079792, 16.785250, 14.798656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.202236, 16.736012, 15.176257>,  <23.275703, 16.706469, 15.402818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.202236, 16.736012, 15.176257>,  <23.079792, 16.785250, 14.798656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.202236, 16.736012, 15.176257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775305, -0.607667, 0.172171,
		0.552447, -0.784595, -0.281449,
		0.306112, -0.123094, 0.944004,
		23.294069, 16.699083, 15.459458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839342, 16.161644, 14.859818>,  <23.079792, 16.785250, 14.798656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839342, 16.161644, 14.859818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.850895, 16.315182, 15.228995>,  <22.857826, 16.407305, 15.450502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.850895, 16.315182, 15.228995>,  <22.839342, 16.161644, 14.859818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.850895, 16.315182, 15.228995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742350, -0.610089, 0.276963,
		0.669390, -0.693148, 0.267326,
		0.028883, 0.383846, 0.922945,
		22.859560, 16.430336, 15.505879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.174091, 15.832386, 14.241745>,  <22.839342, 16.161644, 14.859818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.174091, 15.832386, 14.241745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.342756, 15.471466, 14.205838>,  <23.443954, 15.254914, 14.184294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.342756, 15.471466, 14.205838>,  <23.174091, 15.832386, 14.241745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.342756, 15.471466, 14.205838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880086, 0.431082, -0.199041,
		0.218291, 0.004925, 0.975871,
		0.421661, -0.902299, -0.089767,
		23.469255, 15.200776, 14.178908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.893164, 15.721237, 14.616437>,  <23.174091, 15.832386, 14.241745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.893164, 15.721237, 14.616437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.902628, 15.399383, 14.379118>,  <23.908306, 15.206270, 14.236727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.902628, 15.399383, 14.379118>,  <23.893164, 15.721237, 14.616437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.902628, 15.399383, 14.379118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926199, 0.241022, -0.289939,
		0.376292, -0.542650, 0.750956,
		0.023661, -0.804636, -0.593297,
		23.909727, 15.157991, 14.201129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504217, 15.312511, 14.816778>,  <23.893164, 15.721237, 14.616437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504217, 15.312511, 14.816778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.404308, 15.254259, 14.433862>,  <24.344364, 15.219308, 14.204112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.404308, 15.254259, 14.433862>,  <24.504217, 15.312511, 14.816778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404308, 15.254259, 14.433862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922564, 0.264473, -0.280944,
		0.294092, -0.953334, 0.068296,
		-0.249771, -0.145630, -0.957291,
		24.329376, 15.210570, 14.146674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147469, 15.170495, 14.505479>,  <24.504217, 15.312511, 14.816778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147469, 15.170495, 14.505479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.904543, 15.235221, 14.194355>,  <24.758787, 15.274056, 14.007681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.904543, 15.235221, 14.194355>,  <25.147469, 15.170495, 14.505479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.904543, 15.235221, 14.194355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776786, 0.326316, -0.538629,
		0.166654, -0.931308, -0.323871,
		-0.607313, 0.161814, -0.777809,
		24.722349, 15.283765, 13.961012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441265, 14.829892, 13.973337>,  <25.147469, 15.170495, 14.505479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441265, 14.829892, 13.973337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.216450, 15.122337, 13.818631>,  <25.081560, 15.297804, 13.725807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.216450, 15.122337, 13.818631>,  <25.441265, 14.829892, 13.973337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216450, 15.122337, 13.818631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821773, 0.440558, -0.361382,
		-0.093819, -0.520945, -0.848419,
		-0.562038, 0.731112, -0.386766,
		25.047838, 15.341671, 13.702601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636688, 14.872133, 13.300291>,  <25.441265, 14.829892, 13.973337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636688, 14.872133, 13.300291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415974, 15.205727, 13.299627>,  <25.283545, 15.405883, 13.299230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415974, 15.205727, 13.299627>,  <25.636688, 14.872133, 13.300291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415974, 15.205727, 13.299627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698437, 0.461017, -0.547403,
		-0.455760, -0.303208, -0.836868,
		-0.551787, 0.833983, -0.001659,
		25.250437, 15.455921, 13.299129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510765, 15.110061, 12.611029>,  <25.636688, 14.872133, 13.300291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510765, 15.110061, 12.611029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.472786, 15.418240, 12.863186>,  <25.449999, 15.603147, 13.014481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.472786, 15.418240, 12.863186>,  <25.510765, 15.110061, 12.611029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472786, 15.418240, 12.863186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782986, 0.448859, -0.430649,
		-0.614750, 0.452700, -0.645868,
		-0.094949, 0.770447, 0.630394,
		25.444302, 15.649374, 13.052304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714392, 15.631152, 12.200327>,  <25.510765, 15.110061, 12.611029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714392, 15.631152, 12.200327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.760857, 15.780963, 12.568291>,  <25.788736, 15.870850, 12.789069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.760857, 15.780963, 12.568291>,  <25.714392, 15.631152, 12.200327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760857, 15.780963, 12.568291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854247, 0.434841, -0.284912,
		-0.506722, 0.818927, -0.269426,
		0.116165, 0.374528, 0.919910,
		25.795706, 15.893321, 12.844264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834936, 16.354389, 12.078568>,  <25.714392, 15.631152, 12.200327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834936, 16.354389, 12.078568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.971703, 16.258362, 12.441987>,  <26.053762, 16.200745, 12.660039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.971703, 16.258362, 12.441987>,  <25.834936, 16.354389, 12.078568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971703, 16.258362, 12.441987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794040, 0.590880, -0.142692,
		-0.502587, 0.770212, 0.392656,
		0.341916, -0.240069, 0.908549,
		26.074278, 16.186340, 12.714552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050858, 17.001451, 12.187791>,  <25.834936, 16.354389, 12.078568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050858, 17.001451, 12.187791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.224119, 16.757462, 12.453215>,  <26.328075, 16.611067, 12.612469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.224119, 16.757462, 12.453215>,  <26.050858, 17.001451, 12.187791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224119, 16.757462, 12.453215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873844, 0.464598, -0.143339,
		-0.220854, 0.641934, 0.734264,
		0.433152, -0.609975, 0.663559,
		26.354065, 16.574469, 12.652282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346611, 17.452652, 12.695533>,  <26.050858, 17.001451, 12.187791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346611, 17.452652, 12.695533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.550644, 17.108650, 12.689792>,  <26.673065, 16.902248, 12.686347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.550644, 17.108650, 12.689792>,  <26.346611, 17.452652, 12.695533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550644, 17.108650, 12.689792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860120, 0.509960, 0.011591,
		-0.002649, -0.018258, 0.999830,
		0.510085, -0.860004, -0.014353,
		26.703669, 16.850649, 12.685486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942734, 17.566072, 13.153314>,  <26.346611, 17.452652, 12.695533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942734, 17.566072, 13.153314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.066900, 17.251656, 12.939479>,  <27.141399, 17.063005, 12.811178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.066900, 17.251656, 12.939479>,  <26.942734, 17.566072, 13.153314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066900, 17.251656, 12.939479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878884, 0.451602, -0.153687,
		0.362225, -0.422134, 0.831021,
		0.310414, -0.786040, -0.534588,
		27.160025, 17.015844, 12.779102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616014, 17.333334, 13.428802>,  <26.942734, 17.566072, 13.153314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616014, 17.333334, 13.428802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.582758, 17.211742, 13.049185>,  <27.562803, 17.138786, 12.821414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.582758, 17.211742, 13.049185>,  <27.616014, 17.333334, 13.428802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582758, 17.211742, 13.049185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902442, 0.380997, -0.201094,
		0.422712, -0.873176, 0.242647,
		-0.083142, -0.303980, -0.949044,
		27.557816, 17.120548, 12.764472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213564, 17.073828, 13.375282>,  <27.616014, 17.333334, 13.428802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213564, 17.073828, 13.375282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.103516, 17.087009, 12.990944>,  <28.037487, 17.094919, 12.760341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.103516, 17.087009, 12.990944>,  <28.213564, 17.073828, 13.375282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103516, 17.087009, 12.990944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911778, 0.325905, -0.249892,
		0.304909, -0.944828, -0.119712,
		-0.275120, 0.032956, -0.960845,
		28.020979, 17.096897, 12.702690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667883, 16.609224, 12.991508>,  <28.213564, 17.073828, 13.375282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667883, 16.609224, 12.991508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.514666, 16.852369, 12.713292>,  <28.422735, 16.998257, 12.546362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.514666, 16.852369, 12.713292>,  <28.667883, 16.609224, 12.991508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514666, 16.852369, 12.713292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921172, 0.307363, -0.238685,
		0.068696, -0.732140, -0.677682,
		-0.383045, 0.607865, -0.695541,
		28.399752, 17.034729, 12.504630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115850, 16.582155, 12.466076>,  <28.667883, 16.609224, 12.991508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115850, 16.582155, 12.466076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.898394, 16.903261, 12.368076>,  <28.767920, 17.095924, 12.309277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.898394, 16.903261, 12.368076>,  <29.115850, 16.582155, 12.466076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898394, 16.903261, 12.368076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833372, 0.481601, -0.271202,
		-0.099720, -0.351612, -0.930820,
		-0.543642, 0.802764, -0.244999,
		28.735302, 17.144091, 12.294577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230331, 16.716246, 11.813848>,  <29.115850, 16.582155, 12.466076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230331, 16.716246, 11.813848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.128618, 17.056726, 11.997497>,  <29.067591, 17.261015, 12.107686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.128618, 17.056726, 11.997497>,  <29.230331, 16.716246, 11.813848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128618, 17.056726, 11.997497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855669, 0.419261, -0.303398,
		-0.450746, 0.315708, -0.834959,
		-0.254281, 0.851204, 0.459122,
		29.052334, 17.312088, 12.135233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453581, 17.180319, 11.318866>,  <29.230331, 16.716246, 11.813848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453581, 17.180319, 11.318866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.414576, 17.409674, 11.644250>,  <29.391172, 17.547287, 11.839480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.414576, 17.409674, 11.644250>,  <29.453581, 17.180319, 11.318866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414576, 17.409674, 11.644250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814659, 0.515493, -0.265704,
		-0.571684, 0.636782, -0.517383,
		-0.097512, 0.573389, 0.813459,
		29.385323, 17.581690, 11.888288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359013, 17.829273, 11.129911>,  <29.453581, 17.180319, 11.318866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359013, 17.829273, 11.129911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.510223, 17.872185, 11.497735>,  <29.600950, 17.897932, 11.718429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.510223, 17.872185, 11.497735>,  <29.359013, 17.829273, 11.129911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510223, 17.872185, 11.497735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736912, 0.566380, -0.369018,
		-0.560407, 0.817132, 0.135051,
		0.378027, 0.107280, 0.919558,
		29.623631, 17.904369, 11.773602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<19.203959, 17.475925, 22.671715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.936514, 17.279322, 22.448511>,  <18.776047, 17.161360, 22.314589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.936514, 17.279322, 22.448511>,  <19.203959, 17.475925, 22.671715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.936514, 17.279322, 22.448511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385024, 0.413162, -0.825260,
		0.636173, -0.766625, -0.087001,
		-0.668611, -0.491511, -0.558012,
		18.735931, 17.131868, 22.281107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.533890, 17.419367, 22.091837>,  <19.203959, 17.475925, 22.671715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.533890, 17.419367, 22.091837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172365, 17.309351, 21.960701>,  <18.955450, 17.243341, 21.882019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172365, 17.309351, 21.960701>,  <19.533890, 17.419367, 22.091837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172365, 17.309351, 21.960701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217901, 0.363553, -0.905731,
		0.368347, -0.890031, -0.268634,
		-0.903792, -0.275087, -0.327853,
		18.901222, 17.226839, 21.862349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.631388, 17.254894, 21.389879>,  <19.533890, 17.419367, 22.091837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.631388, 17.254894, 21.389879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232185, 17.271246, 21.409101>,  <18.992664, 17.281057, 21.420635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232185, 17.271246, 21.409101>,  <19.631388, 17.254894, 21.389879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232185, 17.271246, 21.409101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042681, 0.123485, -0.991428,
		-0.046466, -0.991504, -0.121494,
		-0.998007, 0.040882, 0.048056,
		18.932783, 17.283510, 21.423519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229403, 16.790112, 21.004478>,  <19.631388, 17.254894, 21.389879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229403, 16.790112, 21.004478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978823, 17.100471, 21.034237>,  <18.828474, 17.286688, 21.052092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978823, 17.100471, 21.034237>,  <19.229403, 16.790112, 21.004478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978823, 17.100471, 21.034237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086123, 0.025958, -0.995946,
		-0.774688, -0.630319, 0.050561,
		-0.626451, 0.775902, 0.074394,
		18.790888, 17.333242, 21.056555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.598124, 16.637892, 20.510874>,  <19.229403, 16.790112, 21.004478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.598124, 16.637892, 20.510874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587902, 17.026924, 20.603334>,  <18.581770, 17.260344, 20.658810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587902, 17.026924, 20.603334>,  <18.598124, 16.637892, 20.510874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.587902, 17.026924, 20.603334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061193, 0.229269, -0.971438,
		-0.997799, -0.038969, 0.053657,
		-0.025554, 0.972583, 0.231149,
		18.580236, 17.318699, 20.672680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115545, 16.840548, 19.979467>,  <18.598124, 16.637892, 20.510874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.115545, 16.840548, 19.979467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.307810, 17.166245, 20.109684>,  <18.423168, 17.361662, 20.187815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.307810, 17.166245, 20.109684>,  <18.115545, 16.840548, 19.979467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307810, 17.166245, 20.109684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084530, 0.412533, -0.907012,
		-0.872824, 0.408446, 0.267116,
		0.480660, 0.814241, 0.325543,
		18.452007, 17.410517, 20.207346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714174, 17.299038, 19.660379>,  <18.115545, 16.840548, 19.979467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.714174, 17.299038, 19.660379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045937, 17.492449, 19.772297>,  <18.244995, 17.608496, 19.839447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045937, 17.492449, 19.772297>,  <17.714174, 17.299038, 19.660379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.045937, 17.492449, 19.772297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110226, 0.349350, -0.930486,
		-0.547662, 0.802592, 0.236456,
		0.829407, 0.483529, 0.279792,
		18.294758, 17.637506, 19.856236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650736, 18.038876, 19.263031>,  <17.714174, 17.299038, 19.660379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.650736, 18.038876, 19.263031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028234, 17.956598, 19.366592>,  <18.254734, 17.907232, 19.428728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028234, 17.956598, 19.366592>,  <17.650736, 18.038876, 19.263031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028234, 17.956598, 19.366592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290070, 0.139106, -0.946842,
		0.158746, 0.968679, 0.190947,
		0.943747, -0.205696, 0.258902,
		18.311359, 17.894890, 19.444263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.972061, 18.422482, 18.856836>,  <17.650736, 18.038876, 19.263031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.972061, 18.422482, 18.856836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266718, 18.181883, 18.980490>,  <18.443512, 18.037523, 19.054682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266718, 18.181883, 18.980490>,  <17.972061, 18.422482, 18.856836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.266718, 18.181883, 18.980490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401034, 0.020453, -0.915835,
		0.544548, 0.798614, 0.256287,
		0.736641, -0.601496, 0.309133,
		18.487711, 18.001434, 19.073229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.613569, 18.636438, 18.530640>,  <17.972061, 18.422482, 18.856836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.613569, 18.636438, 18.530640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671112, 18.250696, 18.619476>,  <18.705637, 18.019251, 18.672779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671112, 18.250696, 18.619476>,  <18.613569, 18.636438, 18.530640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.671112, 18.250696, 18.619476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427973, -0.141728, -0.892610,
		0.892269, 0.223458, 0.392329,
		0.143857, -0.964354, 0.222094,
		18.714270, 17.961390, 18.686104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208302, 18.473946, 18.213007>,  <18.613569, 18.636438, 18.530640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208302, 18.473946, 18.213007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.075613, 18.101904, 18.276081>,  <18.996000, 17.878679, 18.313925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.075613, 18.101904, 18.276081>,  <19.208302, 18.473946, 18.213007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.075613, 18.101904, 18.276081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353575, -0.277545, -0.893283,
		0.874611, -0.240568, 0.420930,
		-0.331722, -0.930105, 0.157685,
		18.976097, 17.822872, 18.323387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704926, 17.943066, 18.157766>,  <19.208302, 18.473946, 18.213007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704926, 17.943066, 18.157766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.369780, 17.732086, 18.101511>,  <19.168692, 17.605497, 18.067759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.369780, 17.732086, 18.101511>,  <19.704926, 17.943066, 18.157766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369780, 17.732086, 18.101511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279060, -0.192441, -0.940793,
		0.469158, -0.827503, 0.308430,
		-0.837864, -0.527451, -0.140638,
		19.118420, 17.573851, 18.059320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.821756, 17.440495, 17.588833>,  <19.704926, 17.943066, 18.157766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.821756, 17.440495, 17.588833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425316, 17.488956, 17.610886>,  <19.187452, 17.518034, 17.624117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425316, 17.488956, 17.610886>,  <19.821756, 17.440495, 17.588833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.425316, 17.488956, 17.610886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086508, -0.271475, -0.958550,
		-0.101163, -0.954790, 0.279540,
		-0.991102, 0.121153, 0.055134,
		19.127985, 17.525303, 17.627426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344061, 16.901180, 17.342714>,  <19.821756, 17.440495, 17.588833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344061, 16.901180, 17.342714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.137884, 17.239035, 17.284874>,  <19.014179, 17.441748, 17.250170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.137884, 17.239035, 17.284874>,  <19.344061, 16.901180, 17.342714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137884, 17.239035, 17.284874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045821, -0.141337, -0.988900,
		-0.855700, -0.516344, 0.034149,
		-0.515439, 0.844637, -0.144601,
		18.983252, 17.492426, 17.241493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.916288, 16.394403, 17.309542>,  <19.344061, 16.901180, 17.342714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.916288, 16.394403, 17.309542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.290752, 16.255424, 17.331018>,  <20.515430, 16.172037, 17.343904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.290752, 16.255424, 17.331018>,  <19.916288, 16.394403, 17.309542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290752, 16.255424, 17.331018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289979, -0.676740, 0.676709,
		-0.198786, -0.649079, -0.734290,
		0.936161, -0.347449, 0.053693,
		20.571600, 16.151190, 17.347126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974461, 15.619762, 17.126614>,  <19.916288, 16.394403, 17.309542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.974461, 15.619762, 17.126614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275372, 15.729978, 17.365997>,  <20.455919, 15.796106, 17.509628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275372, 15.729978, 17.365997>,  <19.974461, 15.619762, 17.126614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275372, 15.729978, 17.365997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312072, -0.650966, 0.691993,
		0.580248, -0.707334, -0.403721,
		0.752279, 0.275537, 0.598461,
		20.501055, 15.812639, 17.545536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.292675, 14.938005, 17.424534>,  <19.974461, 15.619762, 17.126614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.292675, 14.938005, 17.424534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.422934, 15.235945, 17.657482>,  <20.501089, 15.414708, 17.797251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.422934, 15.235945, 17.657482>,  <20.292675, 14.938005, 17.424534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.422934, 15.235945, 17.657482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175355, -0.557682, 0.811321,
		0.929089, -0.366324, -0.050994,
		0.325645, 0.744848, 0.582372,
		20.520628, 15.459399, 17.832193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.667009, 14.511641, 17.980406>,  <20.292675, 14.938005, 17.424534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.667009, 14.511641, 17.980406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.633575, 14.883689, 18.123451>,  <20.613516, 15.106918, 18.209278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.633575, 14.883689, 18.123451>,  <20.667009, 14.511641, 17.980406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.633575, 14.883689, 18.123451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081091, -0.364028, 0.927851,
		0.993196, 0.048555, 0.105852,
		-0.083585, 0.930122, 0.357614,
		20.608500, 15.162725, 18.230736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116367, 14.580848, 18.573950>,  <20.667009, 14.511641, 17.980406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116367, 14.580848, 18.573950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841970, 14.870266, 18.604671>,  <20.677332, 15.043917, 18.623104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841970, 14.870266, 18.604671>,  <21.116367, 14.580848, 18.573950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.841970, 14.870266, 18.604671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132073, -0.227627, 0.964750,
		0.715523, 0.651666, 0.251711,
		-0.685991, 0.723545, 0.076805,
		20.636173, 15.087330, 18.627712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311626, 14.823092, 19.195425>,  <21.116367, 14.580848, 18.573950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311626, 14.823092, 19.195425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.938745, 14.942856, 19.114088>,  <20.715015, 15.014714, 19.065287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.938745, 14.942856, 19.114088>,  <21.311626, 14.823092, 19.195425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938745, 14.942856, 19.114088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269246, -0.198236, 0.942449,
		0.241870, 0.933304, 0.265411,
		-0.932205, 0.299411, -0.203341,
		20.659084, 15.032679, 19.053085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.082872, 15.150396, 19.815222>,  <21.311626, 14.823092, 19.195425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.082872, 15.150396, 19.815222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742449, 15.055366, 19.627924>,  <20.538195, 14.998347, 19.515545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742449, 15.055366, 19.627924>,  <21.082872, 15.150396, 19.815222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742449, 15.055366, 19.627924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321040, -0.470220, 0.822086,
		-0.415488, 0.849970, 0.323914,
		-0.851060, -0.237577, -0.468245,
		20.487131, 14.984093, 19.487450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.665531, 15.248735, 20.313786>,  <21.082872, 15.150396, 19.815222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.665531, 15.248735, 20.313786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477602, 15.026433, 20.039442>,  <20.364845, 14.893051, 19.874836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477602, 15.026433, 20.039442>,  <20.665531, 15.248735, 20.313786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.477602, 15.026433, 20.039442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341682, -0.601900, 0.721783,
		-0.813953, 0.573455, 0.092895,
		-0.469824, -0.555757, -0.685857,
		20.336655, 14.859706, 19.833685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.039532, 15.124411, 20.559433>,  <20.665531, 15.248735, 20.313786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.039532, 15.124411, 20.559433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071756, 14.840592, 20.279417>,  <20.091091, 14.670301, 20.111408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071756, 14.840592, 20.279417>,  <20.039532, 15.124411, 20.559433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071756, 14.840592, 20.279417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187738, -0.700554, 0.688461,
		-0.978910, 0.075959, -0.189647,
		0.080564, -0.709545, -0.700039,
		20.095926, 14.627728, 20.069405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.537535, 14.767855, 20.749899>,  <20.039532, 15.124411, 20.559433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.537535, 14.767855, 20.749899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731754, 14.498176, 20.527296>,  <19.848286, 14.336369, 20.393734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731754, 14.498176, 20.527296>,  <19.537535, 14.767855, 20.749899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731754, 14.498176, 20.527296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214041, -0.708890, 0.672058,
		-0.847601, -0.207203, -0.488507,
		0.485550, -0.674198, -0.556506,
		19.877420, 14.295917, 20.360344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090361, 14.189543, 20.690254>,  <19.537535, 14.767855, 20.749899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090361, 14.189543, 20.690254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451572, 14.041406, 20.603180>,  <19.668299, 13.952523, 20.550936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451572, 14.041406, 20.603180>,  <19.090361, 14.189543, 20.690254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451572, 14.041406, 20.603180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163051, -0.764303, 0.623902,
		-0.397435, -0.527908, -0.750572,
		0.903028, -0.370342, -0.217685,
		19.722481, 13.930303, 20.537874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.944372, 13.535868, 20.509480>,  <19.090361, 14.189543, 20.690254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.944372, 13.535868, 20.509480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322983, 13.534002, 20.638517>,  <19.550150, 13.532884, 20.715940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322983, 13.534002, 20.638517>,  <18.944372, 13.535868, 20.509480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.322983, 13.534002, 20.638517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184733, -0.827590, 0.530065,
		0.264505, -0.561314, -0.784196,
		0.946525, -0.004662, 0.322595,
		19.606941, 13.532603, 20.735296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975681, 12.844305, 20.714249>,  <18.944372, 13.535868, 20.509480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975681, 12.844305, 20.714249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319654, 12.998733, 20.847794>,  <19.526039, 13.091389, 20.927921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319654, 12.998733, 20.847794>,  <18.975681, 12.844305, 20.714249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.319654, 12.998733, 20.847794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035663, -0.697963, 0.715245,
		0.509157, -0.603157, -0.613971,
		0.859934, 0.386068, 0.333862,
		19.577635, 13.114553, 20.947952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.460781, 12.293068, 20.904003>,  <18.975681, 12.844305, 20.714249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.460781, 12.293068, 20.904003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561083, 12.612769, 21.122477>,  <19.621264, 12.804590, 21.253561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561083, 12.612769, 21.122477>,  <19.460781, 12.293068, 20.904003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.561083, 12.612769, 21.122477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067004, -0.577185, 0.813860,
		0.965729, -0.167483, -0.198286,
		0.250756, 0.799254, 0.546182,
		19.636309, 12.852546, 21.286331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.830160, 11.623645, 20.941904>,  <19.460781, 12.293068, 20.904003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.830160, 11.623645, 20.941904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.636404, 11.289255, 20.838741>,  <19.520151, 11.088621, 20.776844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.636404, 11.289255, 20.838741>,  <19.830160, 11.623645, 20.941904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.636404, 11.289255, 20.838741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051363, 0.321467, -0.945527,
		0.873344, -0.444755, -0.198653,
		-0.484388, -0.835974, -0.257908,
		19.491087, 11.038463, 20.761370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173582, 11.380207, 20.341785>,  <19.830160, 11.623645, 20.941904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173582, 11.380207, 20.341785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.813848, 11.205616, 20.331301>,  <19.598009, 11.100862, 20.325010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.813848, 11.205616, 20.331301>,  <20.173582, 11.380207, 20.341785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813848, 11.205616, 20.331301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047846, 0.157820, -0.986308,
		0.434638, -0.885765, -0.162817,
		-0.899333, -0.436478, -0.026214,
		19.544048, 11.074673, 20.323437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195324, 11.029047, 19.748432>,  <20.173582, 11.380207, 20.341785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195324, 11.029047, 19.748432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803133, 11.085759, 19.802927>,  <19.567818, 11.119786, 19.835623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803133, 11.085759, 19.802927>,  <20.195324, 11.029047, 19.748432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803133, 11.085759, 19.802927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150527, -0.095466, -0.983986,
		-0.126502, -0.985284, 0.114944,
		-0.980479, 0.141778, 0.136235,
		19.508989, 11.128293, 19.843798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889275, 10.635157, 19.203381>,  <20.195324, 11.029047, 19.748432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889275, 10.635157, 19.203381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596149, 10.871696, 19.338017>,  <19.420275, 11.013618, 19.418798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596149, 10.871696, 19.338017>,  <19.889275, 10.635157, 19.203381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.596149, 10.871696, 19.338017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395780, 0.031939, -0.917790,
		-0.553482, -0.805784, 0.210638,
		-0.732813, 0.591347, 0.336591,
		19.376305, 11.049100, 19.438993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262508, 10.373681, 18.945484>,  <19.889275, 10.635157, 19.203381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262508, 10.373681, 18.945484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.168915, 10.750720, 19.040785>,  <19.112759, 10.976943, 19.097965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.168915, 10.750720, 19.040785>,  <19.262508, 10.373681, 18.945484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.168915, 10.750720, 19.040785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251817, 0.177936, -0.951276,
		-0.939064, -0.282578, 0.195727,
		-0.233983, 0.942596, 0.238251,
		19.098721, 11.033499, 19.112261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603569, 10.500787, 18.580917>,  <19.262508, 10.373681, 18.945484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603569, 10.500787, 18.580917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.752113, 10.863719, 18.659754>,  <18.841240, 11.081478, 18.707056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.752113, 10.863719, 18.659754>,  <18.603569, 10.500787, 18.580917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.752113, 10.863719, 18.659754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363983, 0.337541, -0.868091,
		-0.854171, 0.250638, 0.455602,
		0.371361, 0.907329, 0.197089,
		18.863522, 11.135918, 18.718880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046391, 11.003024, 18.342581>,  <18.603569, 10.500787, 18.580917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046391, 11.003024, 18.342581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405029, 11.179836, 18.331842>,  <18.620213, 11.285924, 18.325399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405029, 11.179836, 18.331842>,  <18.046391, 11.003024, 18.342581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405029, 11.179836, 18.331842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218623, 0.389096, -0.894879,
		-0.385118, 0.808216, 0.445501,
		0.896598, 0.442031, -0.026847,
		18.674009, 11.312446, 18.323788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.918936, 11.772102, 18.075436>,  <18.046391, 11.003024, 18.342581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.918936, 11.772102, 18.075436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303703, 11.687976, 18.005600>,  <18.534563, 11.637500, 17.963699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303703, 11.687976, 18.005600>,  <17.918936, 11.772102, 18.075436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303703, 11.687976, 18.005600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099020, 0.327218, -0.939746,
		0.254773, 0.921246, 0.293932,
		0.961918, -0.210317, -0.174588,
		18.592279, 11.624881, 17.953224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.121130, 12.325402, 17.759354>,  <17.918936, 11.772102, 18.075436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.121130, 12.325402, 17.759354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.402737, 12.057215, 17.665689>,  <18.571701, 11.896302, 17.609491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.402737, 12.057215, 17.665689>,  <18.121130, 12.325402, 17.759354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402737, 12.057215, 17.665689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016151, 0.344745, -0.938557,
		0.709999, 0.656979, 0.253535,
		0.704017, -0.670470, -0.234158,
		18.613941, 11.856073, 17.595442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694700, 12.668013, 17.342236>,  <18.121130, 12.325402, 17.759354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694700, 12.668013, 17.342236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.698111, 12.275957, 17.262985>,  <18.700157, 12.040724, 17.215435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.698111, 12.275957, 17.262985>,  <18.694700, 12.668013, 17.342236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698111, 12.275957, 17.262985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263403, 0.188934, -0.946004,
		0.964648, 0.060251, -0.256561,
		0.008524, -0.980139, -0.198125,
		18.700668, 11.981915, 17.203548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965771, 12.569519, 16.659023>,  <18.694700, 12.668013, 17.342236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965771, 12.569519, 16.659023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794907, 12.209536, 16.693909>,  <18.692389, 11.993546, 16.714840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794907, 12.209536, 16.693909>,  <18.965771, 12.569519, 16.659023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.794907, 12.209536, 16.693909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101486, -0.048124, -0.993672,
		0.898462, -0.433309, -0.070776,
		-0.427161, -0.899960, 0.087212,
		18.666758, 11.939548, 16.720072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360046, 12.085149, 16.122902>,  <18.965771, 12.569519, 16.659023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360046, 12.085149, 16.122902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998974, 11.963880, 16.245050>,  <18.782330, 11.891118, 16.318338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998974, 11.963880, 16.245050>,  <19.360046, 12.085149, 16.122902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.998974, 11.963880, 16.245050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334508, 0.047988, -0.941170,
		0.270685, -0.951726, -0.144732,
		-0.902682, -0.303175, 0.305370,
		18.728168, 11.872928, 16.336662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<17.637980, 9.458547, 26.063023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.036301, 9.495019, 26.059896>,  <18.275293, 9.516902, 26.058022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.036301, 9.495019, 26.059896>,  <17.637980, 9.458547, 26.063023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.036301, 9.495019, 26.059896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051649, 0.489470, -0.870489,
		-0.075547, 0.867240, 0.492126,
		0.995804, 0.091180, -0.007814,
		18.335041, 9.522373, 26.057552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792671, 10.104148, 25.773783>,  <17.637980, 9.458547, 26.063023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.792671, 10.104148, 25.773783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.145527, 9.918712, 25.740530>,  <18.357241, 9.807450, 25.720577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.145527, 9.918712, 25.740530>,  <17.792671, 10.104148, 25.773783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.145527, 9.918712, 25.740530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187895, 0.508251, -0.840462,
		0.431882, 0.725786, 0.535456,
		0.882141, -0.463590, -0.083134,
		18.410170, 9.779634, 25.715590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.165077, 10.560869, 25.287214>,  <17.792671, 10.104148, 25.773783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.165077, 10.560869, 25.287214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.388546, 10.229146, 25.282585>,  <18.522627, 10.030112, 25.279808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.388546, 10.229146, 25.282585>,  <18.165077, 10.560869, 25.287214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.388546, 10.229146, 25.282585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199050, 0.147611, -0.968809,
		0.805150, 0.538941, 0.247540,
		0.558671, -0.829309, -0.011572,
		18.556147, 9.980353, 25.279114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926193, 10.685262, 24.960997>,  <18.165077, 10.560869, 25.287214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926193, 10.685262, 24.960997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.854874, 10.293023, 24.928402>,  <18.812082, 10.057680, 24.908846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.854874, 10.293023, 24.928402>,  <18.926193, 10.685262, 24.960997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854874, 10.293023, 24.928402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260742, 0.032768, -0.964853,
		0.948801, -0.193278, 0.249840,
		-0.178298, -0.980597, -0.081486,
		18.801384, 9.998844, 24.903955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.605358, 10.337884, 24.709894>,  <18.926193, 10.685262, 24.960997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.605358, 10.337884, 24.709894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.288372, 10.106695, 24.631971>,  <19.098181, 9.967982, 24.585218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.288372, 10.106695, 24.631971>,  <19.605358, 10.337884, 24.709894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.288372, 10.106695, 24.631971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240541, -0.002657, -0.970635,
		0.560482, -0.816052, 0.141132,
		-0.792464, -0.577972, -0.194805,
		19.050632, 9.933304, 24.573530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.852510, 10.060501, 24.160923>,  <19.605358, 10.337884, 24.709894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.852510, 10.060501, 24.160923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.463089, 9.969259, 24.165966>,  <19.229435, 9.914514, 24.168991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.463089, 9.969259, 24.165966>,  <19.852510, 10.060501, 24.160923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.463089, 9.969259, 24.165966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011001, -0.008312, -0.999905,
		0.228189, -0.973601, 0.005583,
		-0.973555, -0.228106, 0.012608,
		19.171022, 9.900827, 24.169748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782576, 9.467091, 23.700399>,  <19.852510, 10.060501, 24.160923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782576, 9.467091, 23.700399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.423592, 9.642755, 23.683889>,  <19.208200, 9.748153, 23.673983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.423592, 9.642755, 23.683889>,  <19.782576, 9.467091, 23.700399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.423592, 9.642755, 23.683889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144606, 0.204518, -0.968123,
		-0.416719, -0.874821, -0.247052,
		-0.897460, 0.439160, -0.041277,
		19.154354, 9.774503, 23.671507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425377, 9.189503, 23.103498>,  <19.782576, 9.467091, 23.700399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425377, 9.189503, 23.103498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.231302, 9.531377, 23.177372>,  <19.114859, 9.736502, 23.221697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.231302, 9.531377, 23.177372>,  <19.425377, 9.189503, 23.103498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.231302, 9.531377, 23.177372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088900, 0.258332, -0.961957,
		-0.869880, -0.450309, -0.201320,
		-0.485185, 0.854685, 0.184685,
		19.085747, 9.787783, 23.232777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.008289, 9.212552, 22.529371>,  <19.425377, 9.189503, 23.103498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.008289, 9.212552, 22.529371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.980040, 9.581884, 22.680353>,  <18.963089, 9.803484, 22.770943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.980040, 9.581884, 22.680353>,  <19.008289, 9.212552, 22.529371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980040, 9.581884, 22.680353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186728, 0.359475, -0.914281,
		-0.979870, -0.135052, 0.147024,
		-0.070624, 0.923330, 0.377457,
		18.958853, 9.858884, 22.793591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.473112, 9.531621, 22.153811>,  <19.008289, 9.212552, 22.529371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.473112, 9.531621, 22.153811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.708830, 9.816628, 22.306154>,  <18.850260, 9.987632, 22.397560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.708830, 9.816628, 22.306154>,  <18.473112, 9.531621, 22.153811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.708830, 9.816628, 22.306154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002020, 0.470106, -0.882608,
		-0.807916, 0.520884, 0.275591,
		0.589294, 0.712517, 0.380858,
		18.885618, 10.030382, 22.420412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227762, 10.111138, 21.717955>,  <18.473112, 9.531621, 22.153811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227762, 10.111138, 21.717955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.570816, 10.206552, 21.900190>,  <18.776649, 10.263800, 22.009533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.570816, 10.206552, 21.900190>,  <18.227762, 10.111138, 21.717955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.570816, 10.206552, 21.900190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253815, 0.574157, -0.778410,
		-0.447256, 0.783228, 0.431875,
		0.857636, 0.238532, 0.455590,
		18.828108, 10.278111, 22.036867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206804, 10.693383, 21.628551>,  <18.227762, 10.111138, 21.717955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.206804, 10.693383, 21.628551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.589201, 10.591988, 21.687637>,  <18.818640, 10.531151, 21.723089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.589201, 10.591988, 21.687637>,  <18.206804, 10.693383, 21.628551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.589201, 10.591988, 21.687637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269588, 0.560351, -0.783153,
		0.115748, 0.788511, 0.604030,
		0.955994, -0.253488, 0.147714,
		18.875999, 10.515942, 21.731951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628002, 11.336960, 21.578882>,  <18.206804, 10.693383, 21.628551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628002, 11.336960, 21.578882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.879335, 11.032164, 21.516180>,  <19.030134, 10.849286, 21.478559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.879335, 11.032164, 21.516180>,  <18.628002, 11.336960, 21.578882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.879335, 11.032164, 21.516180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330081, 0.443591, -0.833231,
		0.704448, 0.471804, 0.530240,
		0.628331, -0.761990, -0.156753,
		19.067835, 10.803567, 21.469154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303623, 11.551025, 21.416637>,  <18.628002, 11.336960, 21.578882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.303623, 11.551025, 21.416637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.294704, 11.183112, 21.259922>,  <19.289352, 10.962364, 21.165892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.294704, 11.183112, 21.259922>,  <19.303623, 11.551025, 21.416637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294704, 11.183112, 21.259922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136996, 0.385381, -0.912532,
		0.990321, -0.074020, 0.117414,
		-0.022296, -0.919784, -0.391791,
		19.288015, 10.907177, 21.142385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.865349, 12.006971, 21.539602>,  <19.303623, 11.551025, 21.416637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.865349, 12.006971, 21.539602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.729601, 12.366855, 21.649403>,  <19.648151, 12.582785, 21.715282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.729601, 12.366855, 21.649403>,  <19.865349, 12.006971, 21.539602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.729601, 12.366855, 21.649403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017862, -0.297930, 0.954420,
		0.940482, 0.319001, 0.117180,
		-0.339372, 0.899709, 0.274500,
		19.627789, 12.636767, 21.731752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.254957, 12.224375, 22.120682>,  <19.865349, 12.006971, 21.539602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.254957, 12.224375, 22.120682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.944403, 12.476455, 22.117262>,  <19.758070, 12.627703, 22.115210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.944403, 12.476455, 22.117262>,  <20.254957, 12.224375, 22.120682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.944403, 12.476455, 22.117262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178139, -0.206412, 0.962113,
		0.604559, 0.748493, 0.272518,
		-0.776386, 0.630200, -0.008548,
		19.711487, 12.665515, 22.114698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.365990, 12.748856, 22.690556>,  <20.254957, 12.224375, 22.120682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.365990, 12.748856, 22.690556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.984537, 12.739084, 22.570564>,  <19.755665, 12.733221, 22.498569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.984537, 12.739084, 22.570564>,  <20.365990, 12.748856, 22.690556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.984537, 12.739084, 22.570564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299359, -0.026025, 0.953785,
		-0.031107, 0.999362, 0.017506,
		-0.953633, -0.024428, -0.299978,
		19.698446, 12.731755, 22.480572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.124613, 13.286720, 23.108690>,  <20.365990, 12.748856, 22.690556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.124613, 13.286720, 23.108690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.839287, 13.031993, 22.991631>,  <19.668091, 12.879157, 22.921394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.839287, 13.031993, 22.991631>,  <20.124613, 13.286720, 23.108690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839287, 13.031993, 22.991631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345009, -0.044393, 0.937549,
		-0.610039, 0.769735, -0.188042,
		-0.713317, -0.636818, -0.292647,
		19.625292, 12.840947, 22.903837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.510624, 13.566273, 23.370363>,  <20.124613, 13.286720, 23.108690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.510624, 13.566273, 23.370363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.452913, 13.175570, 23.306953>,  <19.418287, 12.941149, 23.268908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.452913, 13.175570, 23.306953>,  <19.510624, 13.566273, 23.370363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.452913, 13.175570, 23.306953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591510, -0.043299, 0.805134,
		-0.793284, 0.209933, -0.571514,
		-0.144278, -0.976756, -0.158525,
		19.409630, 12.882544, 23.259396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.840370, 13.554542, 23.611202>,  <19.510624, 13.566273, 23.370363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.840370, 13.554542, 23.611202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.968758, 13.176454, 23.587412>,  <19.045790, 12.949600, 23.573137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.968758, 13.176454, 23.587412>,  <18.840370, 13.554542, 23.611202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968758, 13.176454, 23.587412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564869, -0.241463, 0.789061,
		-0.760198, -0.219667, -0.611428,
		0.320968, -0.945220, -0.059476,
		19.065048, 12.892887, 23.569569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299580, 13.193434, 23.709345>,  <18.840370, 13.554542, 23.611202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299580, 13.193434, 23.709345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.598251, 12.937823, 23.783224>,  <18.777454, 12.784457, 23.827553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.598251, 12.937823, 23.783224>,  <18.299580, 13.193434, 23.709345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.598251, 12.937823, 23.783224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465687, -0.303915, 0.831127,
		-0.474979, -0.706598, -0.524513,
		0.746680, -0.639027, 0.184700,
		18.822256, 12.746116, 23.838634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.969051, 12.565419, 23.939569>,  <18.299580, 13.193434, 23.709345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.969051, 12.565419, 23.939569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.344706, 12.544817, 24.075434>,  <18.570099, 12.532455, 24.156952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.344706, 12.544817, 24.075434>,  <17.969051, 12.565419, 23.939569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.344706, 12.544817, 24.075434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333796, -0.370673, 0.866707,
		0.081264, -0.927334, -0.365305,
		0.939136, -0.051505, 0.339663,
		18.626446, 12.529366, 24.177332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870466, 12.021103, 24.291246>,  <17.969051, 12.565419, 23.939569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870466, 12.021103, 24.291246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.205029, 12.189829, 24.431244>,  <18.405766, 12.291064, 24.515244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.205029, 12.189829, 24.431244>,  <17.870466, 12.021103, 24.291246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.205029, 12.189829, 24.431244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219809, -0.326818, 0.919170,
		0.502105, -0.845731, -0.180634,
		0.836406, 0.421816, 0.349996,
		18.455950, 12.316374, 24.536243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.248837, 11.520885, 24.652002>,  <17.870466, 12.021103, 24.291246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.248837, 11.520885, 24.652002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.388002, 11.867126, 24.796053>,  <18.471502, 12.074870, 24.882483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.388002, 11.867126, 24.796053>,  <18.248837, 11.520885, 24.652002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.388002, 11.867126, 24.796053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170064, -0.319481, 0.932207,
		0.921973, -0.385573, 0.036056,
		0.347915, 0.865601, 0.360125,
		18.492376, 12.126806, 24.904091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809456, 11.368791, 25.184031>,  <18.248837, 11.520885, 24.652002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.809456, 11.368791, 25.184031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.661409, 11.730958, 25.267199>,  <18.572580, 11.948258, 25.317099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.661409, 11.730958, 25.267199>,  <18.809456, 11.368791, 25.184031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661409, 11.730958, 25.267199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072093, -0.251134, 0.965264,
		0.926183, 0.342272, 0.158224,
		-0.370118, 0.905418, 0.207920,
		18.550375, 12.002584, 25.329575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.215229, 11.537286, 25.827183>,  <18.809456, 11.368791, 25.184031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.215229, 11.537286, 25.827183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.908237, 11.793017, 25.808266>,  <18.724043, 11.946456, 25.796915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.908237, 11.793017, 25.808266>,  <19.215229, 11.537286, 25.827183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.908237, 11.793017, 25.808266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137436, -0.092030, 0.986226,
		0.626170, 0.763407, 0.158498,
		-0.767479, 0.639328, -0.047293,
		18.677994, 11.984816, 25.794077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.372250, 12.029406, 26.309341>,  <19.215229, 11.537286, 25.827183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.372250, 12.029406, 26.309341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.983810, 12.091171, 26.236536>,  <18.750748, 12.128231, 26.192852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.983810, 12.091171, 26.236536>,  <19.372250, 12.029406, 26.309341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.983810, 12.091171, 26.236536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178588, 0.035891, 0.983269,
		0.158363, 0.987354, -0.007277,
		-0.971096, 0.154414, -0.182013,
		18.692482, 12.137495, 26.181932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.252369, 12.562959, 26.890989>,  <19.372250, 12.029406, 26.309341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.252369, 12.562959, 26.890989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.896069, 12.418094, 26.781155>,  <18.682287, 12.331175, 26.715254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.896069, 12.418094, 26.781155>,  <19.252369, 12.562959, 26.890989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896069, 12.418094, 26.781155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250988, -0.111706, 0.961523,
		-0.378901, 0.925397, 0.008604,
		-0.890752, -0.362162, -0.274589,
		18.628843, 12.309445, 26.698778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.645959, 12.110571, 25.905973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.026514, 11.987495, 25.900494>,  <13.254848, 11.913651, 25.897205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.026514, 11.987495, 25.900494>,  <12.645959, 12.110571, 25.905973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.026514, 11.987495, 25.900494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019709, -0.016437, -0.999671,
		0.307362, 0.951345, -0.021702,
		0.951389, -0.307688, -0.013698,
		13.311931, 11.895189, 25.896383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.079393, 12.608841, 25.532543>,  <12.645959, 12.110571, 25.905973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.079393, 12.608841, 25.532543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.274282, 12.259536, 25.534609>,  <13.391215, 12.049953, 25.535849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.274282, 12.259536, 25.534609>,  <13.079393, 12.608841, 25.532543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274282, 12.259536, 25.534609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463196, 0.253408, -0.849255,
		0.740314, 0.416168, 0.527958,
		0.487222, -0.873263, 0.005166,
		13.420449, 11.997557, 25.536160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765979, 12.727894, 25.368595>,  <13.079393, 12.608841, 25.532543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765979, 12.727894, 25.368595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.719616, 12.339936, 25.282925>,  <13.691798, 12.107162, 25.231522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.719616, 12.339936, 25.282925>,  <13.765979, 12.727894, 25.368595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.719616, 12.339936, 25.282925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361652, 0.159620, -0.918547,
		0.925080, -0.183924, 0.332263,
		-0.115907, -0.969894, -0.214178,
		13.684844, 12.048968, 25.218672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.434975, 12.516295, 24.976637>,  <13.765979, 12.727894, 25.368595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.434975, 12.516295, 24.976637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.148637, 12.248814, 24.896236>,  <13.976834, 12.088325, 24.847996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.148637, 12.248814, 24.896236>,  <14.434975, 12.516295, 24.976637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.148637, 12.248814, 24.896236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267831, 0.002885, -0.963461,
		0.644850, -0.743523, 0.177034,
		-0.715845, -0.668704, -0.201000,
		13.933884, 12.048203, 24.835936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.775197, 11.893883, 24.709795>,  <14.434975, 12.516295, 24.976637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.775197, 11.893883, 24.709795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.401220, 11.885252, 24.568138>,  <14.176834, 11.880074, 24.483145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.401220, 11.885252, 24.568138>,  <14.775197, 11.893883, 24.709795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.401220, 11.885252, 24.568138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353020, 0.043255, -0.934615,
		0.035474, -0.998831, -0.032828,
		-0.934943, -0.021566, -0.354142,
		14.120737, 11.878778, 24.461895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.882231, 11.700401, 24.062622>,  <14.775197, 11.893883, 24.709795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.882231, 11.700401, 24.062622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.498219, 11.812040, 24.071060>,  <14.267811, 11.879024, 24.076124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.498219, 11.812040, 24.071060>,  <14.882231, 11.700401, 24.062622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.498219, 11.812040, 24.071060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016436, 0.019030, -0.999684,
		-0.279411, -0.960074, -0.013682,
		-0.960031, 0.279098, 0.021097,
		14.210209, 11.895770, 24.077389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.539568, 11.344153, 23.542114>,  <14.882231, 11.700401, 24.062622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.539568, 11.344153, 23.542114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.323847, 11.676443, 23.597324>,  <14.194414, 11.875816, 23.630449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.323847, 11.676443, 23.597324>,  <14.539568, 11.344153, 23.542114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.323847, 11.676443, 23.597324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095927, 0.223438, -0.969986,
		-0.836630, -0.509876, -0.200189,
		-0.539303, 0.830724, 0.138024,
		14.162056, 11.925660, 23.638731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.210318, 11.459569, 22.940409>,  <14.539568, 11.344153, 23.542114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.210318, 11.459569, 22.940409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.125010, 11.813202, 23.106741>,  <14.073826, 12.025381, 23.206541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.125010, 11.813202, 23.106741>,  <14.210318, 11.459569, 22.940409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.125010, 11.813202, 23.106741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219323, 0.371438, -0.902181,
		-0.952058, -0.283607, 0.114683,
		-0.213268, 0.884082, 0.415832,
		14.061030, 12.078426, 23.231491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.522312, 11.725238, 22.655546>,  <14.210318, 11.459569, 22.940409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.522312, 11.725238, 22.655546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.686685, 12.064868, 22.788338>,  <13.785308, 12.268646, 22.868011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.686685, 12.064868, 22.788338>,  <13.522312, 11.725238, 22.655546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.686685, 12.064868, 22.788338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095638, 0.402283, -0.910506,
		-0.906636, 0.342406, 0.246514,
		0.410931, 0.849074, 0.331977,
		13.809964, 12.319591, 22.887932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127832, 12.324049, 22.491701>,  <13.522312, 11.725238, 22.655546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.127832, 12.324049, 22.491701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.506038, 12.452221, 22.514774>,  <13.732961, 12.529124, 22.528618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.506038, 12.452221, 22.514774>,  <13.127832, 12.324049, 22.491701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.506038, 12.452221, 22.514774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155039, 0.598913, -0.785663,
		-0.286296, 0.733912, 0.615960,
		0.945514, 0.320430, 0.057682,
		13.789692, 12.548350, 22.532080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.984303, 13.032619, 22.343872>,  <13.127832, 12.324049, 22.491701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.984303, 13.032619, 22.343872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.372442, 12.964612, 22.275150>,  <13.605326, 12.923808, 22.233917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.372442, 12.964612, 22.275150>,  <12.984303, 13.032619, 22.343872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.372442, 12.964612, 22.275150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055481, 0.535137, -0.842941,
		0.235253, 0.827479, 0.509838,
		0.970349, -0.170018, -0.171802,
		13.663548, 12.913607, 22.223610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.306831, 13.701679, 22.137791>,  <12.984303, 13.032619, 22.343872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.306831, 13.701679, 22.137791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.560905, 13.426757, 21.996849>,  <13.713349, 13.261804, 21.912285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.560905, 13.426757, 21.996849>,  <13.306831, 13.701679, 22.137791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.560905, 13.426757, 21.996849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041163, 0.485678, -0.873168,
		0.771263, 0.540119, 0.336786,
		0.635184, -0.687306, -0.352352,
		13.751461, 13.220565, 21.891144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904041, 14.051959, 21.861753>,  <13.306831, 13.701679, 22.137791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904041, 14.051959, 21.861753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.901278, 13.689079, 21.693497>,  <13.899619, 13.471352, 21.592543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.901278, 13.689079, 21.693497>,  <13.904041, 14.051959, 21.861753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.901278, 13.689079, 21.693497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148389, 0.415065, -0.897609,
		0.988905, -0.068621, 0.131751,
		-0.006910, -0.907200, -0.420643,
		13.899204, 13.416920, 21.567305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.409939, 14.113275, 21.405880>,  <13.904041, 14.051959, 21.861753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.409939, 14.113275, 21.405880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.252890, 13.773674, 21.264435>,  <14.158660, 13.569914, 21.179567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.252890, 13.773674, 21.264435>,  <14.409939, 14.113275, 21.405880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.252890, 13.773674, 21.264435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163940, 0.313723, -0.935255,
		0.904970, -0.425174, 0.016011,
		-0.392623, -0.849003, -0.353613,
		14.135103, 13.518973, 21.158350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100269, 14.527821, 21.298330>,  <14.409939, 14.113275, 21.405880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100269, 14.527821, 21.298330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.033729, 14.916842, 21.233259>,  <14.993804, 15.150255, 21.194216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.033729, 14.916842, 21.233259>,  <15.100269, 14.527821, 21.298330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.033729, 14.916842, 21.233259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170020, 0.190796, 0.966794,
		0.971298, 0.133170, -0.197093,
		-0.166353, 0.972555, -0.162678,
		14.983823, 15.208609, 21.184456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666964, 14.908255, 21.551859>,  <15.100269, 14.527821, 21.298330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666964, 14.908255, 21.551859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.361643, 15.166498, 21.542387>,  <15.178451, 15.321445, 21.536703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.361643, 15.166498, 21.542387>,  <15.666964, 14.908255, 21.551859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361643, 15.166498, 21.542387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042353, 0.086583, 0.995344,
		0.644654, 0.758744, -0.093432,
		-0.763301, 0.645609, -0.023681,
		15.132652, 15.360181, 21.535282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816588, 15.386547, 22.015102>,  <15.666964, 14.908255, 21.551859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.816588, 15.386547, 22.015102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.419635, 15.434937, 22.005793>,  <15.181463, 15.463970, 22.000208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.419635, 15.434937, 22.005793>,  <15.816588, 15.386547, 22.015102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.419635, 15.434937, 22.005793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027988, -0.037424, 0.998907,
		0.119970, 0.991950, 0.040524,
		-0.992383, 0.120973, -0.023273,
		15.121920, 15.471229, 21.998810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722609, 15.742010, 22.556658>,  <15.816588, 15.386547, 22.015102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722609, 15.742010, 22.556658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.354709, 15.601450, 22.486710>,  <15.133969, 15.517114, 22.444740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.354709, 15.601450, 22.486710>,  <15.722609, 15.742010, 22.556658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.354709, 15.601450, 22.486710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195495, 0.023796, 0.980416,
		-0.340358, 0.935922, -0.090584,
		-0.919749, -0.351401, -0.174869,
		15.078784, 15.496030, 22.434248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230004, 16.235271, 22.875734>,  <15.722609, 15.742010, 22.556658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230004, 16.235271, 22.875734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.074079, 15.867680, 22.851988>,  <14.980523, 15.647125, 22.837740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.074079, 15.867680, 22.851988>,  <15.230004, 16.235271, 22.875734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.074079, 15.867680, 22.851988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141357, -0.003992, 0.989950,
		-0.909980, 0.394289, -0.128348,
		-0.389814, -0.918978, -0.059368,
		14.957134, 15.591986, 22.834177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582587, 16.252285, 23.256069>,  <15.230004, 16.235271, 22.875734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582587, 16.252285, 23.256069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.657016, 15.859905, 23.233740>,  <14.701674, 15.624477, 23.220343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.657016, 15.859905, 23.233740>,  <14.582587, 16.252285, 23.256069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.657016, 15.859905, 23.233740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218242, -0.096662, 0.971096,
		-0.957992, -0.168510, -0.232070,
		0.186072, -0.980949, -0.055825,
		14.712837, 15.565620, 23.216991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.150998, 16.095245, 23.778320>,  <14.582587, 16.252285, 23.256069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.150998, 16.095245, 23.778320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.340572, 15.746563, 23.728498>,  <14.454317, 15.537354, 23.698605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.340572, 15.746563, 23.728498>,  <14.150998, 16.095245, 23.778320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.340572, 15.746563, 23.728498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372068, -0.326444, 0.868907,
		-0.798092, -0.365464, -0.479047,
		0.473936, -0.871706, -0.124555,
		14.482753, 15.485051, 23.691132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.673418, 15.639233, 23.976833>,  <14.150998, 16.095245, 23.778320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.673418, 15.639233, 23.976833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.018777, 15.441619, 24.017771>,  <14.225992, 15.323050, 24.042334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.018777, 15.441619, 24.017771>,  <13.673418, 15.639233, 23.976833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018777, 15.441619, 24.017771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269373, -0.279876, 0.921470,
		-0.426596, -0.823163, -0.374725,
		0.863396, -0.494037, 0.102344,
		14.277796, 15.293408, 24.048473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.528745, 15.108847, 24.437330>,  <13.673418, 15.639233, 23.976833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.528745, 15.108847, 24.437330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.928218, 15.088335, 24.436960>,  <14.167902, 15.076028, 24.436739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.928218, 15.088335, 24.436960>,  <13.528745, 15.108847, 24.437330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928218, 15.088335, 24.436960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017835, -0.364120, 0.931181,
		-0.048085, -0.929940, -0.364555,
		0.998684, -0.051278, -0.000923,
		14.227823, 15.072951, 24.436684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808478, 14.385464, 24.648348>,  <13.528745, 15.108847, 24.437330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808478, 14.385464, 24.648348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.116373, 14.622503, 24.743286>,  <14.301109, 14.764727, 24.800249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.116373, 14.622503, 24.743286>,  <13.808478, 14.385464, 24.648348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.116373, 14.622503, 24.743286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010992, -0.384054, 0.923245,
		0.638268, -0.708046, -0.302134,
		0.769736, 0.592598, 0.237347,
		14.347294, 14.800282, 24.814489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.250420, 13.960254, 25.119644>,  <13.808478, 14.385464, 24.648348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.250420, 13.960254, 25.119644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.323592, 14.349743, 25.173906>,  <14.367496, 14.583436, 25.206463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.323592, 14.349743, 25.173906>,  <14.250420, 13.960254, 25.119644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.323592, 14.349743, 25.173906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130677, -0.160841, 0.978291,
		0.974402, -0.161233, -0.156666,
		0.182931, 0.973722, 0.135654,
		14.378471, 14.641859, 25.214603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.834159, 13.910721, 25.626392>,  <14.250420, 13.960254, 25.119644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.834159, 13.910721, 25.626392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.716413, 14.292534, 25.645224>,  <14.645766, 14.521622, 25.656523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.716413, 14.292534, 25.645224>,  <14.834159, 13.910721, 25.626392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.716413, 14.292534, 25.645224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179506, 0.006837, 0.983733,
		0.938684, 0.298025, -0.173357,
		-0.294363, 0.954533, 0.047080,
		14.628105, 14.578894, 25.659348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389962, 14.406603, 26.002239>,  <14.834159, 13.910721, 25.626392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389962, 14.406603, 26.002239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.017170, 14.544368, 26.047482>,  <14.793495, 14.627027, 26.074627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.017170, 14.544368, 26.047482>,  <15.389962, 14.406603, 26.002239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.017170, 14.544368, 26.047482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142495, 0.061161, 0.987904,
		0.333330, 0.936824, -0.106078,
		-0.931980, 0.344413, 0.113106,
		14.737576, 14.647692, 26.081413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470249, 14.937635, 26.574982>,  <15.389962, 14.406603, 26.002239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470249, 14.937635, 26.574982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.090793, 14.812477, 26.556318>,  <14.863119, 14.737382, 26.545120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.090793, 14.812477, 26.556318>,  <15.470249, 14.937635, 26.574982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.090793, 14.812477, 26.556318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000797, -0.149854, 0.988708,
		-0.316355, 0.937891, 0.142407,
		-0.948640, -0.312896, -0.046660,
		14.806200, 14.718608, 26.542320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660648, 15.521561, 27.005726>,  <15.470249, 14.937635, 26.574982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660648, 15.521561, 27.005726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.050886, 15.510997, 27.092918>,  <16.285028, 15.504659, 27.145235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.050886, 15.510997, 27.092918>,  <15.660648, 15.521561, 27.005726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.050886, 15.510997, 27.092918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213762, -0.112729, -0.970360,
		0.050201, 0.993275, -0.104333,
		0.975595, -0.026411, 0.217983,
		16.343565, 15.503074, 27.158314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841025, 16.042477, 26.666039>,  <15.660648, 15.521561, 27.005726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.841025, 16.042477, 26.666039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.161703, 15.811671, 26.728447>,  <16.354111, 15.673188, 26.765892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.161703, 15.811671, 26.728447>,  <15.841025, 16.042477, 26.666039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.161703, 15.811671, 26.728447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208951, 0.025982, -0.977581,
		0.560022, 0.816322, 0.141397,
		0.801695, -0.577012, 0.156020,
		16.402212, 15.638568, 26.775253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404156, 16.394085, 26.363176>,  <15.841025, 16.042477, 26.666039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404156, 16.394085, 26.363176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.547129, 16.020830, 26.378647>,  <16.632912, 15.796877, 26.387930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.547129, 16.020830, 26.378647>,  <16.404156, 16.394085, 26.363176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547129, 16.020830, 26.378647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484416, 0.149825, -0.861913,
		0.798489, 0.326811, 0.505579,
		0.357431, -0.933138, 0.038679,
		16.654358, 15.740889, 26.390251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923546, 16.486637, 26.020628>,  <16.404156, 16.394085, 26.363176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923546, 16.486637, 26.020628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.863602, 16.091434, 26.005735>,  <16.827635, 15.854313, 25.996799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.863602, 16.091434, 26.005735>,  <16.923546, 16.486637, 26.020628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.863602, 16.091434, 26.005735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308775, -0.010994, -0.951072,
		0.939255, -0.154026, 0.306719,
		-0.149862, -0.988006, -0.037233,
		16.818644, 15.795033, 25.994566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527977, 16.234833, 25.822966>,  <16.923546, 16.486637, 26.020628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.527977, 16.234833, 25.822966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.259262, 15.950730, 25.738836>,  <17.098032, 15.780269, 25.688358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.259262, 15.950730, 25.738836>,  <17.527977, 16.234833, 25.822966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259262, 15.950730, 25.738836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328769, -0.031457, -0.943886,
		0.663786, -0.703239, 0.254643,
		-0.671788, -0.710257, -0.210322,
		17.057726, 15.737654, 25.675739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937267, 15.556921, 25.514713>,  <17.527977, 16.234833, 25.822966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937267, 15.556921, 25.514713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.551544, 15.589482, 25.413931>,  <17.320110, 15.609019, 25.353460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.551544, 15.589482, 25.413931>,  <17.937267, 15.556921, 25.514713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.551544, 15.589482, 25.413931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259931, 0.109738, -0.959371,
		-0.050447, -0.990622, -0.126980,
		-0.964308, 0.081404, -0.251957,
		17.262251, 15.613903, 25.338345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.944946, 15.140946, 24.837538>,  <17.937267, 15.556921, 25.514713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.944946, 15.140946, 24.837538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.607891, 15.355449, 24.857096>,  <17.405659, 15.484150, 24.868832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.607891, 15.355449, 24.857096>,  <17.944946, 15.140946, 24.837538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607891, 15.355449, 24.857096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067174, 0.194778, -0.978544,
		-0.534275, -0.821274, -0.200150,
		-0.842638, 0.536256, 0.048896,
		17.355101, 15.516326, 24.871765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.436474, 14.900615, 24.287003>,  <17.944946, 15.140946, 24.837538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.436474, 14.900615, 24.287003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.368519, 15.282040, 24.386486>,  <17.327745, 15.510895, 24.446177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.368519, 15.282040, 24.386486>,  <17.436474, 14.900615, 24.287003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368519, 15.282040, 24.386486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018527, 0.249242, -0.968264,
		-0.985289, -0.169105, -0.024677,
		-0.169889, 0.953563, 0.248708,
		17.317553, 15.568109, 24.461098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093348, 15.159073, 23.780029>,  <17.436474, 14.900615, 24.287003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093348, 15.159073, 23.780029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.226992, 15.500275, 23.940405>,  <17.307178, 15.704996, 24.036631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.226992, 15.500275, 23.940405>,  <17.093348, 15.159073, 23.780029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.226992, 15.500275, 23.940405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176694, 0.361159, -0.915611,
		-0.925823, 0.376760, -0.030054,
		0.334111, 0.853004, 0.400941,
		17.327225, 15.756176, 24.060688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902338, 15.685738, 23.376226>,  <17.093348, 15.159073, 23.780029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902338, 15.685738, 23.376226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.183317, 15.887074, 23.577509>,  <17.351904, 16.007875, 23.698278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.183317, 15.887074, 23.577509>,  <16.902338, 15.685738, 23.376226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183317, 15.887074, 23.577509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273026, 0.462359, -0.843612,
		-0.657285, 0.729981, 0.187359,
		0.702448, 0.503340, 0.503206,
		17.394053, 16.038076, 23.728470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.863565, 16.287943, 23.096613>,  <16.902338, 15.685738, 23.376226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.863565, 16.287943, 23.096613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.222050, 16.286179, 23.274055>,  <17.437140, 16.285120, 23.380522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.222050, 16.286179, 23.274055>,  <16.863565, 16.287943, 23.096613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.222050, 16.286179, 23.274055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386556, 0.498405, -0.775994,
		-0.217672, 0.866933, 0.448381,
		0.896210, -0.004413, 0.443607,
		17.490913, 16.284855, 23.407137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.094604, 16.976065, 23.168514>,  <16.863565, 16.287943, 23.096613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.094604, 16.976065, 23.168514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.435526, 16.766869, 23.171669>,  <17.640078, 16.641352, 23.173561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.435526, 16.766869, 23.171669>,  <17.094604, 16.976065, 23.168514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.435526, 16.766869, 23.171669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367120, 0.587410, -0.721230,
		0.372563, 0.617601, 0.692651,
		0.852303, -0.522990, 0.007886,
		17.691217, 16.609972, 23.174034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687792, 17.422932, 23.101898>,  <17.094604, 16.976065, 23.168514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687792, 17.422932, 23.101898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.892048, 17.092196, 23.007597>,  <18.014603, 16.893753, 22.951015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.892048, 17.092196, 23.007597>,  <17.687792, 17.422932, 23.101898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892048, 17.092196, 23.007597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600165, 0.539129, -0.590882,
		0.615667, 0.160237, 0.771543,
		0.510642, -0.826840, -0.235755,
		18.045240, 16.844143, 22.936871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.496534, 17.507082, 23.055082>,  <17.687792, 17.422932, 23.101898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.496534, 17.507082, 23.055082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.456730, 17.197531, 22.804893>,  <18.432848, 17.011801, 22.654781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.456730, 17.197531, 22.804893>,  <18.496534, 17.507082, 23.055082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.456730, 17.197531, 22.804893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400091, 0.544419, -0.737249,
		0.911057, -0.323609, 0.255445,
		-0.099512, -0.773876, -0.625470,
		18.426876, 16.965368, 22.617252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.879138, 18.773495, 15.500593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.903008, 18.377247, 15.549767>,  <9.917331, 18.139498, 15.579270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.903008, 18.377247, 15.549767>,  <9.879138, 18.773495, 15.500593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.903008, 18.377247, 15.549767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996076, -0.051034, 0.072299,
		-0.065348, -0.126763, -0.989778,
		0.059677, -0.990620, 0.122930,
		9.920912, 18.080061, 15.586646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.295292, 19.095800, 16.114504>,  <9.879138, 18.773495, 15.500593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.295292, 19.095800, 16.114504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.211003, 19.343185, 16.417318>,  <10.160430, 19.491617, 16.599007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.211003, 19.343185, 16.417318>,  <10.295292, 19.095800, 16.114504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.211003, 19.343185, 16.417318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345372, -0.771581, 0.534210,
		0.914502, -0.148889, 0.376189,
		-0.210722, 0.618462, 0.757034,
		10.147787, 19.528725, 16.644428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.648678, 18.883408, 16.751305>,  <10.295292, 19.095800, 16.114504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.648678, 18.883408, 16.751305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.315279, 19.090464, 16.828588>,  <10.115239, 19.214697, 16.874958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.315279, 19.090464, 16.828588>,  <10.648678, 18.883408, 16.751305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.315279, 19.090464, 16.828588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282338, -0.699607, 0.656380,
		0.474939, 0.492541, 0.729271,
		-0.833498, 0.517641, 0.193208,
		10.065229, 19.245756, 16.886551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.515475, 18.818716, 17.517742>,  <10.648678, 18.883408, 16.751305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.515475, 18.818716, 17.517742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.159400, 18.829422, 17.335819>,  <9.945755, 18.835846, 17.226665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.159400, 18.829422, 17.335819>,  <10.515475, 18.818716, 17.517742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.159400, 18.829422, 17.335819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314113, -0.759128, 0.570137,
		-0.329996, 0.650390, 0.684175,
		-0.890188, 0.026766, -0.454806,
		9.892344, 18.837452, 17.199377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.914919, 18.755764, 17.998220>,  <10.515475, 18.818716, 17.517742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.914919, 18.755764, 17.998220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.842802, 18.630066, 17.625395>,  <9.799532, 18.554647, 17.401699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.842802, 18.630066, 17.625395>,  <9.914919, 18.755764, 17.998220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.842802, 18.630066, 17.625395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258555, -0.899128, 0.353156,
		-0.949023, 0.304661, 0.080856,
		-0.180293, -0.314247, -0.932064,
		9.788714, 18.535791, 17.345776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.229481, 18.943018, 18.728662>,  <9.914919, 18.755764, 17.998220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.229481, 18.943018, 18.728662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.400363, 19.066494, 19.068592>,  <10.502892, 19.140579, 19.272551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.400363, 19.066494, 19.068592>,  <10.229481, 18.943018, 18.728662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.400363, 19.066494, 19.068592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846092, 0.467879, 0.255377,
		-0.318783, -0.828129, 0.461062,
		0.427207, 0.308691, 0.849826,
		10.528525, 19.159101, 19.323540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.894819, 18.766151, 19.446890>,  <10.229481, 18.943018, 18.728662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.894819, 18.766151, 19.446890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.078962, 19.120855, 19.430277>,  <10.189448, 19.333677, 19.420309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.078962, 19.120855, 19.430277>,  <9.894819, 18.766151, 19.446890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.078962, 19.120855, 19.430277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832362, 0.447437, 0.327068,
		0.308614, -0.115998, 0.944088,
		0.460359, 0.886761, -0.041533,
		10.217070, 19.386883, 19.417816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.797293, 19.083105, 20.100586>,  <9.894819, 18.766151, 19.446890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.797293, 19.083105, 20.100586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.848584, 19.344812, 19.802462>,  <9.879359, 19.501837, 19.623587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.848584, 19.344812, 19.802462>,  <9.797293, 19.083105, 20.100586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.848584, 19.344812, 19.802462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872459, 0.431757, 0.228912,
		0.471563, 0.620901, 0.626187,
		0.128229, 0.654269, -0.745311,
		9.887053, 19.541094, 19.578869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.837643, 19.737282, 20.335773>,  <9.797293, 19.083105, 20.100586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.837643, 19.737282, 20.335773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.680592, 19.723164, 19.968164>,  <9.586361, 19.714693, 19.747599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.680592, 19.723164, 19.968164>,  <9.837643, 19.737282, 20.335773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.680592, 19.723164, 19.968164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822519, 0.460542, 0.333712,
		0.411469, 0.886935, -0.209853,
		-0.392627, -0.035296, -0.919020,
		9.562803, 19.712574, 19.692459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.172824, 19.873005, 20.034357>,  <9.837643, 19.737282, 20.335773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.172824, 19.873005, 20.034357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.918850, 19.853434, 20.342764>,  <8.766466, 19.841690, 20.527807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.918850, 19.853434, 20.342764>,  <9.172824, 19.873005, 20.034357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.918850, 19.853434, 20.342764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613478, -0.574664, -0.541670,
		0.469578, -0.816926, 0.334857,
		-0.634934, -0.048929, 0.771016,
		8.728370, 19.838755, 20.574068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.941892, 19.289152, 20.144602>,  <9.172824, 19.873005, 20.034357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.941892, 19.289152, 20.144602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.625338, 19.500387, 20.267782>,  <8.435406, 19.627129, 20.341690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.625338, 19.500387, 20.267782>,  <8.941892, 19.289152, 20.144602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.625338, 19.500387, 20.267782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592564, -0.538846, -0.598760,
		-0.150261, -0.656329, 0.739360,
		-0.791384, 0.528088, 0.307949,
		8.387922, 19.658813, 20.360167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.490493, 18.823811, 20.415918>,  <8.941892, 19.289152, 20.144602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.490493, 18.823811, 20.415918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.261144, 19.142918, 20.341288>,  <8.123534, 19.334381, 20.296509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.261144, 19.142918, 20.341288>,  <8.490493, 18.823811, 20.415918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.261144, 19.142918, 20.341288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665056, -0.586198, -0.462679,
		-0.478480, -0.141205, 0.866670,
		-0.573373, 0.797767, -0.186575,
		8.089131, 19.382248, 20.285315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.799449, 18.539530, 20.568180>,  <8.490493, 18.823811, 20.415918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.799449, 18.539530, 20.568180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.743471, 18.869873, 20.349688>,  <7.709884, 19.068079, 20.218592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.743471, 18.869873, 20.349688>,  <7.799449, 18.539530, 20.568180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.743471, 18.869873, 20.349688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662837, -0.487957, -0.567931,
		-0.735570, 0.282584, 0.615697,
		-0.139945, 0.825860, -0.546233,
		7.701488, 19.117632, 20.185818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.094992, 18.588730, 20.604691>,  <7.799449, 18.539530, 20.568180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.094992, 18.588730, 20.604691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.207056, 18.786001, 20.275257>,  <7.274294, 18.904364, 20.077597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.207056, 18.786001, 20.275257>,  <7.094992, 18.588730, 20.604691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.207056, 18.786001, 20.275257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726910, -0.451365, -0.517563,
		-0.626986, 0.743670, 0.232041,
		0.280161, 0.493178, -0.823581,
		7.291104, 18.933954, 20.028183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.546149, 18.715899, 20.248245>,  <7.094992, 18.588730, 20.604691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.546149, 18.715899, 20.248245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.802972, 18.776901, 19.947710>,  <6.957066, 18.813503, 19.767389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.802972, 18.776901, 19.947710>,  <6.546149, 18.715899, 20.248245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.802972, 18.776901, 19.947710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657802, -0.393776, -0.642056,
		-0.393776, 0.906467, -0.152507,
		0.642056, 0.152507, -0.751336,
		6.995589, 18.822653, 19.722309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.119826, 18.797226, 19.726196>,  <6.546149, 18.715899, 20.248245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.119826, 18.797226, 19.726196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.477598, 18.686903, 19.585384>,  <6.692262, 18.620710, 19.500898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.477598, 18.686903, 19.585384>,  <6.119826, 18.797226, 19.726196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.477598, 18.686903, 19.585384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446734, -0.514908, -0.731641,
		0.020529, 0.811665, -0.583762,
		0.894431, -0.275806, -0.352028,
		6.745928, 18.604160, 19.479776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.033049, 18.876364, 19.038393>,  <6.119826, 18.797226, 19.726196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.033049, 18.876364, 19.038393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.372869, 18.665392, 19.042027>,  <6.576762, 18.538809, 19.044207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.372869, 18.665392, 19.042027>,  <6.033049, 18.876364, 19.038393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.372869, 18.665392, 19.042027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300482, -0.498010, -0.813448,
		0.433559, 0.688336, -0.581567,
		0.849551, -0.527428, 0.009084,
		6.627735, 18.507164, 19.044752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.279651, 18.789701, 18.329618>,  <6.033049, 18.876364, 19.038393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.279651, 18.789701, 18.329618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.435902, 18.493303, 18.548100>,  <6.529652, 18.315464, 18.679188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.435902, 18.493303, 18.548100>,  <6.279651, 18.789701, 18.329618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.435902, 18.493303, 18.548100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151930, -0.637102, -0.755658,
		0.907925, 0.212196, -0.361450,
		0.390628, -0.740995, 0.546202,
		6.553090, 18.271006, 18.711960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.738011, 18.462080, 17.887953>,  <6.279651, 18.789701, 18.329618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.738011, 18.462080, 17.887953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.658819, 18.195463, 18.175432>,  <6.611303, 18.035494, 18.347919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.658819, 18.195463, 18.175432>,  <6.738011, 18.462080, 17.887953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.658819, 18.195463, 18.175432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056267, -0.724273, -0.687213,
		0.978590, -0.176493, 0.105887,
		-0.197980, -0.666542, 0.718697,
		6.599425, 17.995501, 18.391041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.061282, 17.857185, 17.797220>,  <6.738011, 18.462080, 17.887953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.061282, 17.857185, 17.797220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.787920, 17.724310, 18.057253>,  <6.623903, 17.644585, 18.213272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.787920, 17.724310, 18.057253>,  <7.061282, 17.857185, 17.797220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.787920, 17.724310, 18.057253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004836, -0.892517, -0.450987,
		0.730024, -0.305063, 0.611557,
		-0.683405, -0.332189, 0.650083,
		6.582899, 17.624653, 18.252277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.315164, 17.212904, 17.991308>,  <7.061282, 17.857185, 17.797220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.315164, 17.212904, 17.991308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.924248, 17.195223, 18.074205>,  <6.689698, 17.184614, 18.123943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.924248, 17.195223, 18.074205>,  <7.315164, 17.212904, 17.991308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.924248, 17.195223, 18.074205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046658, -0.909114, -0.413927,
		0.206704, -0.414197, 0.886406,
		-0.977290, -0.044202, 0.207243,
		6.631061, 17.181963, 18.136377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.145669, 16.411522, 18.252811>,  <7.315164, 17.212904, 17.991308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.145669, 16.411522, 18.252811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.800301, 16.590313, 18.159241>,  <6.593081, 16.697588, 18.103098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.800301, 16.590313, 18.159241>,  <7.145669, 16.411522, 18.252811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.800301, 16.590313, 18.159241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323743, -0.846530, -0.422583,
		-0.386909, -0.289134, 0.875615,
		-0.863418, 0.446976, -0.233925,
		6.541276, 16.724405, 18.089064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.692026, 16.001429, 18.223989>,  <7.145669, 16.411522, 18.252811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.692026, 16.001429, 18.223989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.467774, 16.261894, 18.019371>,  <6.333223, 16.418173, 17.896599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.467774, 16.261894, 18.019371>,  <6.692026, 16.001429, 18.223989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.467774, 16.261894, 18.019371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382279, -0.751517, -0.537666,
		-0.734542, -0.105881, 0.670252,
		-0.560634, 0.651162, -0.511544,
		6.299585, 16.457243, 17.865908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.049599, 15.668155, 18.089359>,  <6.692026, 16.001429, 18.223989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.049599, 15.668155, 18.089359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.081813, 15.950275, 17.807632>,  <6.101141, 16.119549, 17.638596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.081813, 15.950275, 17.807632>,  <6.049599, 15.668155, 18.089359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.081813, 15.950275, 17.807632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183455, -0.684053, -0.705986,
		-0.979724, 0.186067, 0.074302,
		0.080534, 0.705302, -0.704318,
		6.105973, 16.161865, 17.596336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.446578, 15.656322, 17.677761>,  <6.049599, 15.668155, 18.089359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.446578, 15.656322, 17.677761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.717297, 15.838003, 17.446022>,  <5.879728, 15.947012, 17.306978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.717297, 15.838003, 17.446022>,  <5.446578, 15.656322, 17.677761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.717297, 15.838003, 17.446022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138565, -0.694312, -0.706209,
		-0.723011, 0.558238, -0.406972,
		0.676798, 0.454205, -0.579347,
		5.920336, 15.974264, 17.272219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.113655, 15.513262, 17.032122>,  <5.446578, 15.656322, 17.677761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.113655, 15.513262, 17.032122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.501909, 15.589346, 16.973217>,  <5.734861, 15.634996, 16.937874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.501909, 15.589346, 16.973217>,  <5.113655, 15.513262, 17.032122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.501909, 15.589346, 16.973217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029666, -0.702156, -0.711404,
		-0.238718, 0.686146, -0.687181,
		0.970636, 0.190211, -0.147262,
		5.793099, 15.646409, 16.929039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.148452, 15.483829, 16.325363>,  <5.113655, 15.513262, 17.032122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.148452, 15.483829, 16.325363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.536412, 15.477413, 16.422556>,  <5.769187, 15.473563, 16.480871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.536412, 15.477413, 16.422556>,  <5.148452, 15.483829, 16.325363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.536412, 15.477413, 16.422556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168410, -0.676531, -0.716899,
		0.175882, 0.736240, -0.653465,
		0.969899, -0.016040, 0.242980,
		5.827381, 15.472601, 16.495449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.494580, 15.603615, 15.707608>,  <5.148452, 15.483829, 16.325363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.494580, 15.603615, 15.707608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.758648, 15.433306, 15.955121>,  <5.917089, 15.331120, 16.103628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.758648, 15.433306, 15.955121>,  <5.494580, 15.603615, 15.707608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.758648, 15.433306, 15.955121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073218, -0.783415, -0.617170,
		0.747537, 0.452745, -0.486015,
		0.660172, -0.425773, 0.618781,
		5.956700, 15.305573, 16.140755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.096185, 15.374268, 15.330762>,  <5.494580, 15.603615, 15.707608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.096185, 15.374268, 15.330762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070557, 15.156949, 15.665599>,  <6.055180, 15.026558, 15.866501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070557, 15.156949, 15.665599>,  <6.096185, 15.374268, 15.330762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.070557, 15.156949, 15.665599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141531, -0.835285, -0.531289,
		0.987858, 0.084434, 0.130411,
		-0.064071, -0.543295, 0.837093,
		6.051335, 14.993960, 15.916727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.619175, 14.840334, 15.248234>,  <6.096185, 15.374268, 15.330762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.619175, 14.840334, 15.248234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.410394, 14.690650, 15.554836>,  <6.285125, 14.600840, 15.738798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.410394, 14.690650, 15.554836>,  <6.619175, 14.840334, 15.248234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.410394, 14.690650, 15.554836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191972, -0.927109, -0.321893,
		0.831090, -0.020866, 0.555746,
		-0.521954, -0.374210, 0.766506,
		6.253808, 14.578387, 15.784788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.050500, 14.386574, 15.538150>,  <6.619175, 14.840334, 15.248234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.050500, 14.386574, 15.538150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.671068, 14.297359, 15.627994>,  <6.443409, 14.243831, 15.681900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.671068, 14.297359, 15.627994>,  <7.050500, 14.386574, 15.538150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.671068, 14.297359, 15.627994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110462, -0.898228, -0.425423,
		0.296636, -0.378737, 0.876679,
		-0.948581, -0.223036, 0.224610,
		6.386494, 14.230449, 15.695376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.668721, 13.934855, 15.676591>,  <7.050500, 14.386574, 15.538150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.668721, 13.934855, 15.676591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.046088, 13.916581, 15.545212>,  <8.272509, 13.905618, 15.466385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.046088, 13.916581, 15.545212>,  <7.668721, 13.934855, 15.676591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.046088, 13.916581, 15.545212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319321, 0.392274, 0.862644,
		0.089433, -0.918714, 0.384665,
		0.943417, -0.045683, -0.328447,
		8.329113, 13.902877, 15.446678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.097201, 13.477507, 16.248066>,  <7.668721, 13.934855, 15.676591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.097201, 13.477507, 16.248066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.317811, 13.734506, 16.035269>,  <8.450176, 13.888705, 15.907590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.317811, 13.734506, 16.035269>,  <8.097201, 13.477507, 16.248066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.317811, 13.734506, 16.035269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324763, 0.422053, 0.846404,
		0.768343, -0.639584, 0.024113,
		0.551524, 0.642498, -0.531994,
		8.483268, 13.927255, 15.875670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.653805, 13.559422, 16.649780>,  <8.097201, 13.477507, 16.248066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.653805, 13.559422, 16.649780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.702533, 13.870214, 16.402729>,  <8.731770, 14.056688, 16.254499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.702533, 13.870214, 16.402729>,  <8.653805, 13.559422, 16.649780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.702533, 13.870214, 16.402729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514360, 0.482769, 0.708779,
		0.848878, -0.404026, -0.340837,
		0.121820, 0.776980, -0.617626,
		8.739079, 14.103308, 16.217442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.436211, 13.762231, 16.707531>,  <8.653805, 13.559422, 16.649780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.436211, 13.762231, 16.707531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.235913, 14.083757, 16.579073>,  <9.115735, 14.276673, 16.501997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.235913, 14.083757, 16.579073>,  <9.436211, 13.762231, 16.707531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.235913, 14.083757, 16.579073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424253, 0.551305, 0.718381,
		0.754496, 0.223478, -0.617085,
		-0.500744, 0.803816, -0.321146,
		9.085690, 14.324903, 16.482729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.960645, 14.342980, 16.716179>,  <9.436211, 13.762231, 16.707531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.960645, 14.342980, 16.716179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.599023, 14.513890, 16.720596>,  <9.382050, 14.616436, 16.723248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.599023, 14.513890, 16.720596>,  <9.960645, 14.342980, 16.716179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.599023, 14.513890, 16.720596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240674, 0.487543, 0.839272,
		0.353215, 0.761406, -0.543599,
		-0.904055, 0.427274, 0.011043,
		9.327806, 14.642073, 16.723909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.019167, 15.113137, 16.849054>,  <9.960645, 14.342980, 16.716179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.019167, 15.113137, 16.849054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.645570, 15.004878, 16.942354>,  <9.421412, 14.939922, 16.998335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.645570, 15.004878, 16.942354>,  <10.019167, 15.113137, 16.849054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.645570, 15.004878, 16.942354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005262, 0.642342, 0.766400,
		-0.357250, 0.717041, -0.598519,
		-0.933994, -0.270647, 0.233250,
		9.365372, 14.923684, 17.012329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.743769, 15.710340, 16.968615>,  <10.019167, 15.113137, 16.849054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.743769, 15.710340, 16.968615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.537045, 15.425905, 17.159304>,  <9.413012, 15.255244, 17.273716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.537045, 15.425905, 17.159304>,  <9.743769, 15.710340, 16.968615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.537045, 15.425905, 17.159304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017923, 0.565717, 0.824404,
		-0.855913, 0.417515, -0.305112,
		-0.516809, -0.711087, 0.476721,
		9.382003, 15.212579, 17.302320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.221130, 16.130497, 17.330185>,  <9.743769, 15.710340, 16.968615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.221130, 16.130497, 17.330185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.205731, 15.773202, 17.509357>,  <9.196492, 15.558825, 17.616861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.205731, 15.773202, 17.509357>,  <9.221130, 16.130497, 17.330185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.205731, 15.773202, 17.509357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008130, 0.448526, 0.893733,
		-0.999225, 0.030765, -0.024530,
		-0.038498, -0.893240, 0.447929,
		9.194182, 15.505230, 17.643736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.725754, 16.275806, 17.860224>,  <9.221130, 16.130497, 17.330185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.725754, 16.275806, 17.860224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.901347, 15.930280, 17.959112>,  <9.006703, 15.722964, 18.018446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.901347, 15.930280, 17.959112>,  <8.725754, 16.275806, 17.860224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.901347, 15.930280, 17.959112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113145, 0.219814, 0.968958,
		-0.891343, -0.453328, -0.001241,
		0.438983, -0.863814, 0.247222,
		9.033042, 15.671135, 18.033279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.301468, 15.975392, 18.437258>,  <8.725754, 16.275806, 17.860224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.301468, 15.975392, 18.437258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.674305, 15.831108, 18.450462>,  <8.898007, 15.744537, 18.458385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.674305, 15.831108, 18.450462>,  <8.301468, 15.975392, 18.437258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.674305, 15.831108, 18.450462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048196, 0.213835, 0.975680,
		-0.358998, -0.907834, 0.216699,
		0.932093, -0.360711, 0.033013,
		8.953933, 15.722895, 18.460365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.308010, 15.623631, 19.096214>,  <8.301468, 15.975392, 18.437258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.308010, 15.623631, 19.096214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.676167, 15.735674, 18.987097>,  <8.897062, 15.802899, 18.921627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.676167, 15.735674, 18.987097>,  <8.308010, 15.623631, 19.096214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.676167, 15.735674, 18.987097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179836, 0.316237, 0.931479,
		0.347188, -0.906383, 0.240687,
		0.920391, 0.280114, -0.272794,
		8.952286, 15.819706, 18.905260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.661864, 15.628695, 19.689262>,  <8.308010, 15.623631, 19.096214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.661864, 15.628695, 19.689262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.939224, 15.786329, 19.447968>,  <9.105640, 15.880909, 19.303190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.939224, 15.786329, 19.447968>,  <8.661864, 15.628695, 19.689262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.939224, 15.786329, 19.447968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496668, 0.345129, 0.796371,
		0.522032, -0.851812, 0.043582,
		0.693399, 0.394085, -0.603236,
		9.147244, 15.904554, 19.266996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.273167, 15.561415, 20.090103>,  <8.661864, 15.628695, 19.689262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.273167, 15.561415, 20.090103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.325329, 15.855461, 19.823992>,  <9.356627, 16.031889, 19.664324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.325329, 15.855461, 19.823992>,  <9.273167, 15.561415, 20.090103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.325329, 15.855461, 19.823992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242135, 0.627079, 0.740367,
		0.961439, -0.257636, -0.096223,
		0.130406, 0.735116, -0.665281,
		9.364450, 16.075996, 19.624407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.944971, 15.871790, 20.289597>,  <9.273167, 15.561415, 20.090103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.944971, 15.871790, 20.289597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.792071, 16.153194, 20.049944>,  <9.700332, 16.322037, 19.906153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.792071, 16.153194, 20.049944>,  <9.944971, 15.871790, 20.289597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.792071, 16.153194, 20.049944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383890, 0.710668, 0.589558,
		0.840544, -0.004642, -0.541724,
		-0.382250, 0.703512, -0.599130,
		9.677397, 16.364248, 19.870205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.467981, 16.323774, 20.202538>,  <9.944971, 15.871790, 20.289597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.467981, 16.323774, 20.202538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.140151, 16.531511, 20.105726>,  <9.943453, 16.656153, 20.047640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.140151, 16.531511, 20.105726>,  <10.467981, 16.323774, 20.202538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.140151, 16.531511, 20.105726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311908, 0.758732, 0.571873,
		0.480632, 0.393204, -0.783826,
		-0.819577, 0.519342, -0.242027,
		9.894278, 16.687313, 20.033117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.638491, 17.057434, 20.044382>,  <10.467981, 16.323774, 20.202538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.638491, 17.057434, 20.044382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.244635, 17.087444, 20.107441>,  <10.008321, 17.105452, 20.145277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.244635, 17.087444, 20.107441>,  <10.638491, 17.057434, 20.044382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.244635, 17.087444, 20.107441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165776, 0.685060, 0.709374,
		-0.054777, 0.724613, -0.686976,
		-0.984641, 0.075027, 0.157649,
		9.949243, 17.109953, 20.154736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.496654, 17.783831, 19.978741>,  <10.638491, 17.057434, 20.044382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.496654, 17.783831, 19.978741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.239192, 17.594893, 20.219604>,  <10.084715, 17.481529, 20.364122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.239192, 17.594893, 20.219604>,  <10.496654, 17.783831, 19.978741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.239192, 17.594893, 20.219604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121967, 0.713447, 0.690013,
		-0.755536, 0.517573, -0.401602,
		-0.643654, -0.472347, 0.602161,
		10.046096, 17.453188, 20.400253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.971971, 18.350807, 20.188177>,  <10.496654, 17.783831, 19.978741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.971971, 18.350807, 20.188177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.891657, 18.052494, 20.442263>,  <9.843469, 17.873507, 20.594713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.891657, 18.052494, 20.442263>,  <9.971971, 18.350807, 20.188177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.891657, 18.052494, 20.442263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021342, 0.644934, 0.763940,
		-0.979403, 0.166943, -0.113575,
		-0.200783, -0.745781, 0.635213,
		9.831422, 17.828760, 20.632826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.553850, 18.683537, 20.660666>,  <9.971971, 18.350807, 20.188177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.553850, 18.683537, 20.660666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.696541, 18.368397, 20.861479>,  <9.782155, 18.179312, 20.981966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.696541, 18.368397, 20.861479>,  <9.553850, 18.683537, 20.660666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.696541, 18.368397, 20.861479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125036, 0.572818, 0.810090,
		-0.925803, -0.226209, 0.302849,
		0.356726, -0.787851, 0.502032,
		9.803558, 18.132042, 21.012089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.181098, 18.691259, 21.352125>,  <9.553850, 18.683537, 20.660666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.181098, 18.691259, 21.352125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.540267, 18.515572, 21.363605>,  <9.755768, 18.410160, 21.370493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.540267, 18.515572, 21.363605>,  <9.181098, 18.691259, 21.352125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.540267, 18.515572, 21.363605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253660, 0.569657, 0.781759,
		-0.359713, -0.694678, 0.622920,
		0.897921, -0.439219, 0.028701,
		9.809644, 18.383806, 21.372215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.256901, 18.479933, 22.086485>,  <9.181098, 18.691259, 21.352125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.256901, 18.479933, 22.086485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.601816, 18.496044, 21.884560>,  <9.808765, 18.505711, 21.763405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.601816, 18.496044, 21.884560>,  <9.256901, 18.479933, 22.086485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.601816, 18.496044, 21.884560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415164, 0.514601, 0.750216,
		0.289995, -0.856483, 0.427012,
		0.862288, 0.040279, -0.504813,
		9.860502, 18.508127, 21.733116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.809494, 13.041844, 27.249287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.587448, 12.723770, 27.151693>,  <18.454220, 12.532926, 27.093138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.587448, 12.723770, 27.151693>,  <18.809494, 13.041844, 27.249287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.587448, 12.723770, 27.151693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326908, -0.061145, 0.943076,
		-0.764838, 0.603277, -0.226010,
		-0.555116, -0.795185, -0.243982,
		18.420914, 12.485214, 27.078499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169615, 13.121562, 27.584774>,  <18.809494, 13.041844, 27.249287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169615, 13.121562, 27.584774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.191982, 12.729386, 27.509289>,  <18.205402, 12.494081, 27.463997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.191982, 12.729386, 27.509289>,  <18.169615, 13.121562, 27.584774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.191982, 12.729386, 27.509289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244875, -0.196704, 0.949391,
		-0.967941, -0.006875, -0.251084,
		0.055917, -0.980439, -0.188715,
		18.208757, 12.435255, 27.452675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537010, 12.852323, 27.812220>,  <18.169615, 13.121562, 27.584774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.537010, 12.852323, 27.812220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.789671, 12.542333, 27.803936>,  <17.941267, 12.356339, 27.798965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.789671, 12.542333, 27.803936>,  <17.537010, 12.852323, 27.812220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.789671, 12.542333, 27.803936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165523, -0.160910, 0.972990,
		-0.757375, -0.611165, -0.229915,
		0.631653, -0.774974, -0.020707,
		17.979166, 12.309840, 27.797724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123566, 12.252052, 28.001532>,  <17.537010, 12.852323, 27.812220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123566, 12.252052, 28.001532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.505186, 12.152580, 28.068399>,  <17.734158, 12.092897, 28.108521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.505186, 12.152580, 28.068399>,  <17.123566, 12.252052, 28.001532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505186, 12.152580, 28.068399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188638, -0.064983, 0.979894,
		-0.232818, -0.966403, -0.108907,
		0.954050, -0.248681, 0.167172,
		17.791401, 12.077976, 28.118551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.060917, 11.570374, 28.416073>,  <17.123566, 12.252052, 28.001532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.060917, 11.570374, 28.416073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.428999, 11.712258, 28.482286>,  <17.649849, 11.797389, 28.522015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.428999, 11.712258, 28.482286>,  <17.060917, 11.570374, 28.416073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.428999, 11.712258, 28.482286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038647, -0.338493, 0.940175,
		0.389525, -0.871551, -0.297774,
		0.920205, 0.354714, 0.165534,
		17.705061, 11.818672, 28.531946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.355738, 11.055242, 28.861164>,  <17.060917, 11.570374, 28.416073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.355738, 11.055242, 28.861164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.577057, 11.386586, 28.896219>,  <17.709848, 11.585393, 28.917252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.577057, 11.386586, 28.896219>,  <17.355738, 11.055242, 28.861164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.577057, 11.386586, 28.896219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219256, -0.246326, 0.944061,
		0.803611, -0.503130, -0.317915,
		0.553296, 0.828362, 0.087636,
		17.743046, 11.635095, 28.922510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.908655, 10.855721, 29.164408>,  <17.355738, 11.055242, 28.861164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.908655, 10.855721, 29.164408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.886648, 11.248396, 29.237356>,  <17.873444, 11.484001, 29.281126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.886648, 11.248396, 29.237356>,  <17.908655, 10.855721, 29.164408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886648, 11.248396, 29.237356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093640, -0.176771, 0.979787,
		0.994085, 0.070982, -0.082200,
		-0.055016, 0.981689, 0.182372,
		17.870144, 11.542903, 29.292068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352377, 10.932235, 29.688511>,  <17.908655, 10.855721, 29.164408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352377, 10.932235, 29.688511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.128033, 11.258690, 29.744164>,  <17.993427, 11.454563, 29.777555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.128033, 11.258690, 29.744164>,  <18.352377, 10.932235, 29.688511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.128033, 11.258690, 29.744164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100680, -0.099571, 0.989924,
		0.821767, 0.569216, -0.026323,
		-0.560859, 0.816137, 0.139133,
		17.959776, 11.503531, 29.785904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594593, 11.185181, 30.316467>,  <18.352377, 10.932235, 29.688511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594593, 11.185181, 30.316467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.247046, 11.374135, 30.257246>,  <18.038517, 11.487508, 30.221714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.247046, 11.374135, 30.257246>,  <18.594593, 11.185181, 30.316467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247046, 11.374135, 30.257246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136649, 0.058591, 0.988885,
		0.475811, 0.879442, 0.013643,
		-0.868868, 0.472387, -0.148053,
		17.986385, 11.515851, 30.212830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618013, 11.782608, 30.668661>,  <18.594593, 11.185181, 30.316467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618013, 11.782608, 30.668661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.235985, 11.673063, 30.623337>,  <18.006767, 11.607336, 30.596142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.235985, 11.673063, 30.623337>,  <18.618013, 11.782608, 30.668661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235985, 11.673063, 30.623337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137759, 0.071687, 0.987868,
		-0.262417, 0.959093, -0.106193,
		-0.955070, -0.273863, -0.113312,
		17.949463, 11.590904, 30.589344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233049, 12.220064, 31.044962>,  <18.618013, 11.782608, 30.668661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233049, 12.220064, 31.044962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.046343, 11.869264, 30.999359>,  <17.934319, 11.658783, 30.971998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.046343, 11.869264, 30.999359>,  <18.233049, 12.220064, 31.044962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046343, 11.869264, 30.999359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211613, -0.014412, 0.977247,
		-0.858690, 0.480272, -0.178858,
		-0.466767, -0.877001, -0.114007,
		17.906313, 11.606163, 30.965157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.853237, 12.114392, 31.607595>,  <18.233049, 12.220064, 31.044962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.853237, 12.114392, 31.607595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.794836, 11.752577, 31.447350>,  <17.759794, 11.535487, 31.351202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.794836, 11.752577, 31.447350>,  <17.853237, 12.114392, 31.607595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.794836, 11.752577, 31.447350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212393, -0.366849, 0.905710,
		-0.966215, 0.217326, -0.138556,
		-0.146005, -0.904539, -0.400614,
		17.751034, 11.481215, 31.327166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.199221, 12.898251, 31.539463>,  <17.853237, 12.114392, 31.607595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.199221, 12.898251, 31.539463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.499783, 12.765826, 31.311152>,  <18.680120, 12.686372, 31.174164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.499783, 12.765826, 31.311152>,  <18.199221, 12.898251, 31.539463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499783, 12.765826, 31.311152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457869, 0.361268, -0.812307,
		0.475127, 0.871713, 0.119876,
		0.751406, -0.331061, -0.570778,
		18.725204, 12.666508, 31.139917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.980633, 13.449472, 31.902466>,  <18.199221, 12.898251, 31.539463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.980633, 13.449472, 31.902466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.328667, 13.636517, 31.964811>,  <18.537487, 13.748743, 32.002220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.328667, 13.636517, 31.964811>,  <17.980633, 13.449472, 31.902466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.328667, 13.636517, 31.964811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467215, -0.883170, 0.041473,
		0.157048, 0.036737, -0.986907,
		0.870084, 0.467611, 0.155864,
		18.589691, 13.776800, 32.011570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.657465, 14.160859, 31.986687>,  <17.980633, 13.449472, 31.902466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.657465, 14.160859, 31.986687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.430151, 14.410854, 32.200768>,  <17.293762, 14.560851, 32.329216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.430151, 14.410854, 32.200768>,  <17.657465, 14.160859, 31.986687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430151, 14.410854, 32.200768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368940, 0.387849, -0.844663,
		-0.735482, -0.677468, 0.010173,
		-0.568287, 0.624988, 0.535201,
		17.259665, 14.598351, 32.361328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128670, 14.240573, 31.659052>,  <17.657465, 14.160859, 31.986687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128670, 14.240573, 31.659052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.109968, 14.564834, 31.892515>,  <17.098747, 14.759390, 32.032593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.109968, 14.564834, 31.892515>,  <17.128670, 14.240573, 31.659052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109968, 14.564834, 31.892515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365188, 0.529979, -0.765350,
		-0.929759, -0.248926, 0.271263,
		-0.046752, 0.810652, 0.583658,
		17.095942, 14.808029, 32.067612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397928, 14.520807, 31.551538>,  <17.128670, 14.240573, 31.659052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.397928, 14.520807, 31.551538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.648994, 14.812329, 31.660995>,  <16.799633, 14.987243, 31.726669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.648994, 14.812329, 31.660995>,  <16.397928, 14.520807, 31.551538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648994, 14.812329, 31.660995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250326, 0.521790, -0.815519,
		-0.737139, 0.443372, 0.509948,
		0.627664, 0.728804, 0.273645,
		16.837294, 15.030971, 31.743090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041531, 15.048058, 31.454861>,  <16.397928, 14.520807, 31.551538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041531, 15.048058, 31.454861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.420284, 15.176614, 31.450567>,  <16.647537, 15.253748, 31.447990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.420284, 15.176614, 31.450567>,  <16.041531, 15.048058, 31.454861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420284, 15.176614, 31.450567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169617, 0.470814, -0.865774,
		-0.273198, 0.821610, 0.500320,
		0.946886, 0.321390, -0.010734,
		16.704350, 15.273031, 31.447348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097677, 15.692450, 31.341793>,  <16.041531, 15.048058, 31.454861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097677, 15.692450, 31.341793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.466825, 15.603301, 31.216167>,  <16.688314, 15.549811, 31.140793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.466825, 15.603301, 31.216167>,  <16.097677, 15.692450, 31.341793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466825, 15.603301, 31.216167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193631, 0.436398, -0.878672,
		0.332888, 0.871714, 0.359584,
		0.922872, -0.222872, -0.314062,
		16.743687, 15.536439, 31.121948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.237061, 16.159533, 30.818661>,  <16.097677, 15.692450, 31.341793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.237061, 16.159533, 30.818661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.518444, 15.883625, 30.750116>,  <16.687273, 15.718081, 30.708990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.518444, 15.883625, 30.750116>,  <16.237061, 16.159533, 30.818661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518444, 15.883625, 30.750116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010491, 0.251154, -0.967890,
		0.710660, 0.679072, 0.183913,
		0.703457, -0.689771, -0.171360,
		16.729481, 15.676694, 30.698708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807011, 16.477152, 30.484961>,  <16.237061, 16.159533, 30.818661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807011, 16.477152, 30.484961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.878180, 16.096144, 30.386126>,  <16.920881, 15.867539, 30.326824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.878180, 16.096144, 30.386126>,  <16.807011, 16.477152, 30.484961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.878180, 16.096144, 30.386126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119608, 0.228298, -0.966216,
		0.976749, 0.201464, -0.073310,
		0.177921, -0.952519, -0.247087,
		16.931557, 15.810388, 30.312000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.349749, 16.458158, 30.022039>,  <16.807011, 16.477152, 30.484961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.349749, 16.458158, 30.022039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.156969, 16.113941, 29.956083>,  <17.041302, 15.907411, 29.916510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.156969, 16.113941, 29.956083>,  <17.349749, 16.458158, 30.022039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156969, 16.113941, 29.956083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037335, 0.167849, -0.985106,
		0.875403, -0.480927, -0.048767,
		-0.481950, -0.860544, -0.164891,
		17.012384, 15.855778, 29.906616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629700, 16.165215, 29.495512>,  <17.349749, 16.458158, 30.022039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629700, 16.165215, 29.495512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.270119, 15.990266, 29.505251>,  <17.054371, 15.885296, 29.511093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.270119, 15.990266, 29.505251>,  <17.629700, 16.165215, 29.495512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270119, 15.990266, 29.505251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084621, 0.118858, -0.989299,
		0.429801, -0.891390, -0.143859,
		-0.898950, -0.437375, 0.024345,
		17.000433, 15.859054, 29.512554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.681479, 15.666589, 28.870451>,  <17.629700, 16.165215, 29.495512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.681479, 15.666589, 28.870451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.288908, 15.672640, 28.946945>,  <17.053366, 15.676270, 28.992842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.288908, 15.672640, 28.946945>,  <17.681479, 15.666589, 28.870451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.288908, 15.672640, 28.946945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190189, -0.206942, -0.959689,
		0.025058, -0.978236, 0.205976,
		-0.981428, 0.015127, 0.191235,
		16.994480, 15.677178, 29.004316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404242, 15.031203, 28.597685>,  <17.681479, 15.666589, 28.870451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.404242, 15.031203, 28.597685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.118767, 15.306660, 28.648954>,  <16.947483, 15.471933, 28.679716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.118767, 15.306660, 28.648954>,  <17.404242, 15.031203, 28.597685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.118767, 15.306660, 28.648954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287829, -0.121485, -0.949945,
		-0.638599, -0.714854, 0.284912,
		-0.713685, 0.688640, 0.128175,
		16.904661, 15.513251, 28.687407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719357, 14.707861, 28.313604>,  <17.404242, 15.031203, 28.597685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.719357, 14.707861, 28.313604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.636414, 15.096500, 28.359207>,  <16.586647, 15.329684, 28.386570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.636414, 15.096500, 28.359207>,  <16.719357, 14.707861, 28.313604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636414, 15.096500, 28.359207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228193, 0.065287, -0.971424,
		-0.951278, -0.227448, 0.208175,
		-0.207358, 0.971599, 0.114008,
		16.574205, 15.387980, 28.393410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.014679, 14.847994, 28.091715>,  <16.719357, 14.707861, 28.313604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.014679, 14.847994, 28.091715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.247656, 15.169222, 28.041372>,  <16.387442, 15.361959, 28.011168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.247656, 15.169222, 28.041372>,  <16.014679, 14.847994, 28.091715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.247656, 15.169222, 28.041372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313469, 0.079050, -0.946302,
		-0.749997, 0.590620, 0.297780,
		0.582444, 0.803069, -0.125854,
		16.422390, 15.410143, 28.003616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639792, 15.192376, 27.644537>,  <16.014679, 14.847994, 28.091715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639792, 15.192376, 27.644537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.004408, 15.354317, 27.615711>,  <16.223177, 15.451481, 27.598415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.004408, 15.354317, 27.615711>,  <15.639792, 15.192376, 27.644537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004408, 15.354317, 27.615711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049852, -0.065157, -0.996629,
		-0.408183, 0.912058, -0.039210,
		0.911538, 0.404852, -0.072064,
		16.277870, 15.475773, 27.594091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908765, 15.320255, 27.439022>,  <15.639792, 15.192376, 27.644537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.908765, 15.320255, 27.439022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.668618, 15.067589, 27.242834>,  <14.524530, 14.915989, 27.125122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.668618, 15.067589, 27.242834>,  <14.908765, 15.320255, 27.439022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.668618, 15.067589, 27.242834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195050, -0.479120, 0.855803,
		-0.775575, 0.609461, 0.164442,
		-0.600366, -0.631665, -0.490469,
		14.488508, 14.878089, 27.095694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238089, 15.277257, 27.809786>,  <14.908765, 15.320255, 27.439022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238089, 15.277257, 27.809786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.271202, 14.938662, 27.599413>,  <14.291070, 14.735504, 27.473188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.271202, 14.938662, 27.599413>,  <14.238089, 15.277257, 27.809786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271202, 14.938662, 27.599413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236238, -0.529370, 0.814837,
		-0.968162, 0.056789, -0.243796,
		0.082785, -0.846488, -0.525932,
		14.296038, 14.684715, 27.441633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716008, 15.023922, 28.003790>,  <14.238089, 15.277257, 27.809786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716008, 15.023922, 28.003790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.930938, 14.722644, 27.852013>,  <14.059896, 14.541877, 27.760946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.930938, 14.722644, 27.852013>,  <13.716008, 15.023922, 28.003790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.930938, 14.722644, 27.852013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257719, -0.575029, 0.776481,
		-0.803035, -0.319431, -0.503089,
		0.537323, -0.753196, -0.379445,
		14.092134, 14.496685, 27.738178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280870, 14.369375, 28.187202>,  <13.716008, 15.023922, 28.003790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.280870, 14.369375, 28.187202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.667893, 14.282217, 28.136051>,  <13.900107, 14.229922, 28.105360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.667893, 14.282217, 28.136051>,  <13.280870, 14.369375, 28.187202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.667893, 14.282217, 28.136051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022096, -0.577188, 0.816312,
		-0.251680, -0.787004, -0.563278,
		0.967558, -0.217896, -0.127877,
		13.958160, 14.216848, 28.097689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.294581, 13.728848, 28.307652>,  <13.280870, 14.369375, 28.187202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.294581, 13.728848, 28.307652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.673504, 13.850073, 28.349148>,  <13.900858, 13.922808, 28.374046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.673504, 13.850073, 28.349148>,  <13.294581, 13.728848, 28.307652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.673504, 13.850073, 28.349148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057183, -0.478653, 0.876140,
		0.315182, -0.824041, -0.470761,
		0.947307, 0.303063, 0.103742,
		13.957696, 13.940991, 28.380270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.651295, 13.115485, 28.519396>,  <13.294581, 13.728848, 28.307652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.651295, 13.115485, 28.519396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.857726, 13.437917, 28.635260>,  <13.981585, 13.631375, 28.704777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.857726, 13.437917, 28.635260>,  <13.651295, 13.115485, 28.519396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.857726, 13.437917, 28.635260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110276, -0.397885, 0.910784,
		0.849413, -0.438093, -0.294231,
		0.516078, 0.806078, 0.289658,
		14.012549, 13.679740, 28.722157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.251811, 12.894011, 28.826139>,  <13.651295, 13.115485, 28.519396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.251811, 12.894011, 28.826139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.211461, 13.260571, 28.981079>,  <14.187251, 13.480506, 29.074043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.211461, 13.260571, 28.981079>,  <14.251811, 12.894011, 28.826139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.211461, 13.260571, 28.981079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118478, -0.375500, 0.919219,
		0.987819, 0.138619, -0.070694,
		-0.100876, 0.916398, 0.387349,
		14.181198, 13.535490, 29.097284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739513, 12.343787, 28.665684>,  <14.251811, 12.894011, 28.826139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739513, 12.343787, 28.665684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.478449, 12.042570, 28.632311>,  <14.321811, 11.861840, 28.612288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.478449, 12.042570, 28.632311>,  <14.739513, 12.343787, 28.665684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.478449, 12.042570, 28.632311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049998, 0.152685, -0.987009,
		0.755999, -0.640010, -0.137302,
		-0.652660, -0.753043, -0.083431,
		14.282651, 11.816657, 28.607283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.999161, 11.923035, 28.186640>,  <14.739513, 12.343787, 28.665684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.999161, 11.923035, 28.186640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.607407, 11.842584, 28.194153>,  <14.372355, 11.794312, 28.198660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.607407, 11.842584, 28.194153>,  <14.999161, 11.923035, 28.186640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.607407, 11.842584, 28.194153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058489, 0.193350, -0.979385,
		0.193350, -0.960293, -0.201128,
		0.979385, 0.201128, -0.018782,
		14.313591, 11.782246, 28.199787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887099, 11.531041, 27.549891>,  <14.999161, 11.923035, 28.186640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887099, 11.531041, 27.549891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.515153, 11.630282, 27.658552>,  <14.291986, 11.689827, 27.723749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.515153, 11.630282, 27.658552>,  <14.887099, 11.531041, 27.549891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.515153, 11.630282, 27.658552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310296, -0.132191, -0.941404,
		-0.197659, -0.959671, 0.199906,
		-0.929864, 0.248107, 0.271653,
		14.236194, 11.704714, 27.740049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362535, 10.981158, 27.467144>,  <14.887099, 11.531041, 27.549891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362535, 10.981158, 27.467144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.164478, 11.327700, 27.441031>,  <14.045644, 11.535625, 27.425362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.164478, 11.327700, 27.441031>,  <14.362535, 10.981158, 27.467144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.164478, 11.327700, 27.441031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400070, -0.294062, -0.868027,
		-0.771218, -0.403679, 0.492206,
		-0.495144, 0.866355, -0.065285,
		14.015935, 11.587606, 27.421446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.764215, 10.748655, 27.044991>,  <14.362535, 10.981158, 27.467144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.764215, 10.748655, 27.044991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.771461, 11.148549, 27.050709>,  <13.775810, 11.388485, 27.054140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.771461, 11.148549, 27.050709>,  <13.764215, 10.748655, 27.044991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771461, 11.148549, 27.050709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288868, 0.018924, -0.957182,
		-0.957198, 0.013212, 0.289134,
		0.018118, 0.999734, 0.014297,
		13.776896, 11.448469, 27.054998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.136386, 10.978581, 26.693062>,  <13.764215, 10.748655, 27.044991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.136386, 10.978581, 26.693062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.387562, 11.289859, 26.688927>,  <13.538267, 11.476625, 26.686445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.387562, 11.289859, 26.688927>,  <13.136386, 10.978581, 26.693062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387562, 11.289859, 26.688927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171595, 0.125483, -0.977143,
		-0.759108, 0.615362, 0.212330,
		0.627941, 0.778192, -0.010337,
		13.575944, 11.523316, 26.685825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.733129, 11.545075, 26.385487>,  <13.136386, 10.978581, 26.693062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.733129, 11.545075, 26.385487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.122877, 11.628882, 26.352741>,  <13.356727, 11.679167, 26.333094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.122877, 11.628882, 26.352741>,  <12.733129, 11.545075, 26.385487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.122877, 11.628882, 26.352741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124867, 0.201080, -0.971584,
		-0.187103, 0.956906, 0.222089,
		0.974372, 0.209518, -0.081863,
		13.415189, 11.691738, 26.328182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.425856, 8.104324, 29.947916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.496037, 8.424114, 30.177719>,  <17.538145, 8.615988, 30.315601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.496037, 8.424114, 30.177719>,  <17.425856, 8.104324, 29.947916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.496037, 8.424114, 30.177719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612204, 0.368407, -0.699630,
		-0.770988, 0.474466, -0.424804,
		0.175450, 0.799474, 0.574508,
		17.548672, 8.663957, 30.350071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274975, 8.642896, 29.556824>,  <17.425856, 8.104324, 29.947916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274975, 8.642896, 29.556824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.486830, 8.828255, 29.841005>,  <17.613943, 8.939470, 30.011515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.486830, 8.828255, 29.841005>,  <17.274975, 8.642896, 29.556824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486830, 8.828255, 29.841005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447836, 0.558559, -0.698180,
		-0.720367, 0.687949, 0.088307,
		0.529636, 0.463398, 0.710456,
		17.645721, 8.967275, 30.054142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326122, 9.352299, 29.332523>,  <17.274975, 8.642896, 29.556824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326122, 9.352299, 29.332523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.633127, 9.285758, 29.580153>,  <17.817331, 9.245833, 29.728729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.633127, 9.285758, 29.580153>,  <17.326122, 9.352299, 29.332523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633127, 9.285758, 29.580153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620338, 0.436150, -0.651885,
		-0.161566, 0.884364, 0.437946,
		0.767514, -0.166352, 0.619072,
		17.863380, 9.235852, 29.765875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695568, 9.973109, 29.405167>,  <17.326122, 9.352299, 29.332523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695568, 9.973109, 29.405167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.932329, 9.655913, 29.462887>,  <18.074385, 9.465596, 29.497519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.932329, 9.655913, 29.462887>,  <17.695568, 9.973109, 29.405167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932329, 9.655913, 29.462887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621309, 0.334846, -0.708416,
		0.513448, 0.508966, 0.690887,
		0.591901, -0.792989, 0.144299,
		18.109900, 9.418016, 29.506176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.348724, 10.195620, 29.133535>,  <17.695568, 9.973109, 29.405167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.348724, 10.195620, 29.133535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.372034, 9.797094, 29.158728>,  <18.386019, 9.557980, 29.173843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.372034, 9.797094, 29.158728>,  <18.348724, 10.195620, 29.133535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372034, 9.797094, 29.158728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507824, -0.024732, -0.861106,
		0.859488, 0.082163, 0.504510,
		0.058273, -0.996312, 0.062981,
		18.389517, 9.498200, 29.177622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.917387, 10.077319, 28.914352>,  <18.348724, 10.195620, 29.133535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.917387, 10.077319, 28.914352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.753580, 9.714101, 28.879148>,  <18.655296, 9.496170, 28.858027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.753580, 9.714101, 28.879148>,  <18.917387, 10.077319, 28.914352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753580, 9.714101, 28.879148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440064, -0.112114, -0.890940,
		0.799148, -0.403586, 0.445512,
		-0.409519, -0.908047, -0.088008,
		18.630724, 9.441687, 28.852745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.367025, 9.687492, 28.480280>,  <18.917387, 10.077319, 28.914352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.367025, 9.687492, 28.480280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.047665, 9.448594, 28.510891>,  <18.856049, 9.305255, 28.529257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.047665, 9.448594, 28.510891>,  <19.367025, 9.687492, 28.480280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.047665, 9.448594, 28.510891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152394, -0.323386, -0.933915,
		0.582524, -0.733975, 0.349207,
		-0.798400, -0.597245, 0.076527,
		18.808146, 9.269421, 28.533850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.571564, 9.018140, 28.153625>,  <19.367025, 9.687492, 28.480280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.571564, 9.018140, 28.153625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.183203, 9.096253, 28.098188>,  <18.950186, 9.143122, 28.064926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.183203, 9.096253, 28.098188>,  <19.571564, 9.018140, 28.153625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183203, 9.096253, 28.098188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104622, -0.174687, -0.979050,
		-0.215408, -0.965063, 0.149172,
		-0.970904, 0.195288, -0.138596,
		18.891932, 9.154839, 28.056610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.392614, 8.530439, 27.593620>,  <19.571564, 9.018140, 28.153625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.392614, 8.530439, 27.593620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.087011, 8.787247, 27.619249>,  <18.903650, 8.941331, 27.634626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.087011, 8.787247, 27.619249>,  <19.392614, 8.530439, 27.593620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.087011, 8.787247, 27.619249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158502, -0.090495, -0.983203,
		-0.625436, -0.761330, 0.170901,
		-0.764007, 0.642018, 0.064073,
		18.857809, 8.979852, 27.638472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934074, 8.361619, 27.082050>,  <19.392614, 8.530439, 27.593620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.934074, 8.361619, 27.082050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.784750, 8.725093, 27.156807>,  <18.695154, 8.943177, 27.201662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.784750, 8.725093, 27.156807>,  <18.934074, 8.361619, 27.082050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.784750, 8.725093, 27.156807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164622, 0.133373, -0.977298,
		-0.912982, -0.395605, 0.099800,
		-0.373313, 0.908685, 0.186893,
		18.672756, 8.997699, 27.212875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420456, 8.447845, 26.615116>,  <18.934074, 8.361619, 27.082050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.420456, 8.447845, 26.615116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.481876, 8.829183, 26.719082>,  <18.518728, 9.057985, 26.781462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.481876, 8.829183, 26.719082>,  <18.420456, 8.447845, 26.615116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.481876, 8.829183, 26.719082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280929, 0.294297, -0.913492,
		-0.947365, 0.067251, 0.313012,
		0.153552, 0.953345, 0.259914,
		18.527943, 9.115186, 26.797056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.797827, 8.814631, 26.469564>,  <18.420456, 8.447845, 26.615116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.797827, 8.814631, 26.469564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.114208, 9.059205, 26.460243>,  <18.304037, 9.205949, 26.454651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.114208, 9.059205, 26.460243>,  <17.797827, 8.814631, 26.469564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.114208, 9.059205, 26.460243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211570, 0.237554, -0.948054,
		-0.574136, 0.754796, 0.317255,
		0.790953, 0.611434, -0.023304,
		18.351494, 9.242635, 26.453253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038837, 8.774243, 26.395844>,  <17.797827, 8.814631, 26.469564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038837, 8.774243, 26.395844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.648220, 8.853800, 26.362835>,  <16.413851, 8.901533, 26.343029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.648220, 8.853800, 26.362835>,  <17.038837, 8.774243, 26.395844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648220, 8.853800, 26.362835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095359, -0.055837, 0.993876,
		0.193065, 0.978430, 0.073493,
		-0.976541, 0.198890, -0.082522,
		16.355257, 8.913467, 26.338078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760601, 9.231062, 26.950891>,  <17.038837, 8.774243, 26.395844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760601, 9.231062, 26.950891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.397402, 9.095551, 26.852285>,  <16.179482, 9.014244, 26.793121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.397402, 9.095551, 26.852285>,  <16.760601, 9.231062, 26.950891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397402, 9.095551, 26.852285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253370, -0.024601, 0.967057,
		-0.333682, 0.940544, -0.063498,
		-0.907998, -0.338778, -0.246515,
		16.125002, 8.993917, 26.778332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.271238, 9.614113, 27.293140>,  <16.760601, 9.231062, 26.950891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.271238, 9.614113, 27.293140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.122150, 9.253704, 27.204380>,  <16.032698, 9.037459, 27.151123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.122150, 9.253704, 27.204380>,  <16.271238, 9.614113, 27.293140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122150, 9.253704, 27.204380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326661, -0.096424, 0.940210,
		-0.868545, 0.422923, -0.258389,
		-0.372722, -0.901021, -0.221901,
		16.010334, 8.983397, 27.137810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519450, 9.506564, 27.631193>,  <16.271238, 9.614113, 27.293140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.519450, 9.506564, 27.631193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.629714, 9.126122, 27.575464>,  <15.695872, 8.897856, 27.542027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.629714, 9.126122, 27.575464>,  <15.519450, 9.506564, 27.631193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629714, 9.126122, 27.575464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309319, -0.224993, 0.923959,
		-0.910128, -0.211603, -0.356216,
		0.275659, -0.951106, -0.139320,
		15.712412, 8.840790, 27.533669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994974, 9.137935, 27.862013>,  <15.519450, 9.506564, 27.631193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.994974, 9.137935, 27.862013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.276819, 8.854919, 27.840424>,  <15.445926, 8.685110, 27.827471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.276819, 8.854919, 27.840424>,  <14.994974, 9.137935, 27.862013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276819, 8.854919, 27.840424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319669, -0.384412, 0.866048,
		-0.633510, -0.592973, -0.497039,
		0.704611, -0.707538, -0.053974,
		15.488203, 8.642658, 27.824232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.562855, 8.539384, 28.006048>,  <14.994974, 9.137935, 27.862013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.562855, 8.539384, 28.006048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.950961, 8.509804, 28.098236>,  <15.183825, 8.492056, 28.153549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.950961, 8.509804, 28.098236>,  <14.562855, 8.539384, 28.006048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950961, 8.509804, 28.098236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241467, -0.361353, 0.900621,
		0.016681, -0.929492, -0.368465,
		0.970265, -0.073949, 0.230469,
		15.242041, 8.487618, 28.167377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594706, 7.849608, 28.423117>,  <14.562855, 8.539384, 28.006048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594706, 7.849608, 28.423117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.944543, 8.030618, 28.492754>,  <15.154446, 8.139223, 28.534536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.944543, 8.030618, 28.492754>,  <14.594706, 7.849608, 28.423117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944543, 8.030618, 28.492754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053909, -0.266073, 0.962444,
		0.481850, -0.851133, -0.208311,
		0.874594, 0.452524, 0.174091,
		15.206921, 8.166375, 28.544981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.063025, 7.435725, 28.814371>,  <14.594706, 7.849608, 28.423117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.063025, 7.435725, 28.814371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.163971, 7.813481, 28.898693>,  <15.224539, 8.040134, 28.949286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.163971, 7.813481, 28.898693>,  <15.063025, 7.435725, 28.814371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.163971, 7.813481, 28.898693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132744, -0.182006, 0.974296,
		0.958484, -0.273862, 0.079431,
		0.252366, 0.944391, 0.210803,
		15.239680, 8.096798, 28.961933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.534274, 7.427987, 29.441187>,  <15.063025, 7.435725, 28.814371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.534274, 7.427987, 29.441187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.403861, 7.804512, 29.406240>,  <15.325613, 8.030427, 29.385273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.403861, 7.804512, 29.406240>,  <15.534274, 7.427987, 29.441187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403861, 7.804512, 29.406240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217898, 0.015103, 0.975855,
		0.919904, 0.337197, 0.200186,
		-0.326032, 0.941313, -0.087367,
		15.306051, 8.086905, 29.380030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846269, 7.836742, 30.074482>,  <15.534274, 7.427987, 29.441187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846269, 7.836742, 30.074482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.544017, 8.059160, 29.936012>,  <15.362665, 8.192611, 29.852930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.544017, 8.059160, 29.936012>,  <15.846269, 7.836742, 30.074482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.544017, 8.059160, 29.936012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220246, 0.282039, 0.933780,
		0.616858, 0.781837, -0.090650,
		-0.755630, 0.556045, -0.346174,
		15.317327, 8.225974, 29.832159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025806, 8.515356, 30.298552>,  <15.846269, 7.836742, 30.074482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.025806, 8.515356, 30.298552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.636775, 8.458021, 30.225294>,  <15.403356, 8.423620, 30.181339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.636775, 8.458021, 30.225294>,  <16.025806, 8.515356, 30.298552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.636775, 8.458021, 30.225294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220215, 0.314399, 0.923395,
		-0.074778, 0.938407, -0.337343,
		-0.972581, -0.143337, -0.183142,
		15.345001, 8.415020, 30.170351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612594, 9.031660, 30.791145>,  <16.025806, 8.515356, 30.298552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.612594, 9.031660, 30.791145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.326144, 8.773902, 30.683872>,  <15.154275, 8.619247, 30.619509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.326144, 8.773902, 30.683872>,  <15.612594, 9.031660, 30.791145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326144, 8.773902, 30.683872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453394, 0.137348, 0.880664,
		-0.530661, 0.752258, -0.390522,
		-0.716124, -0.644394, -0.268184,
		15.111307, 8.580584, 30.603416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011382, 9.420213, 30.746994>,  <15.612594, 9.031660, 30.791145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.011382, 9.420213, 30.746994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.906759, 9.042997, 30.829227>,  <14.843986, 8.816668, 30.878567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.906759, 9.042997, 30.829227>,  <15.011382, 9.420213, 30.746994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906759, 9.042997, 30.829227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639351, 0.328849, 0.695046,
		-0.723062, 0.050355, -0.688946,
		-0.261558, -0.943039, 0.205584,
		14.828292, 8.760086, 30.890903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289804, 9.527245, 30.922600>,  <15.011382, 9.420213, 30.746994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289804, 9.527245, 30.922600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.399506, 9.160768, 31.039474>,  <14.465327, 8.940881, 31.109600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.399506, 9.160768, 31.039474>,  <14.289804, 9.527245, 30.922600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399506, 9.160768, 31.039474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389282, 0.172059, 0.904906,
		-0.879343, -0.361919, -0.309469,
		0.274256, -0.916193, 0.292187,
		14.481783, 8.885909, 31.127131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991000, 9.364071, 30.297464>,  <14.289804, 9.527245, 30.922600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991000, 9.364071, 30.297464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.970828, 9.678124, 30.544373>,  <13.958725, 9.866557, 30.692516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.970828, 9.678124, 30.544373>,  <13.991000, 9.364071, 30.297464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.970828, 9.678124, 30.544373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158698, 0.616502, -0.771194,
		-0.986039, 0.059069, -0.155689,
		-0.050429, 0.785135, 0.617269,
		13.955699, 9.913665, 30.729553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525447, 9.707844, 29.937777>,  <13.991000, 9.364071, 30.297464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525447, 9.707844, 29.937777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.728839, 9.954612, 30.178062>,  <13.850874, 10.102673, 30.322233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.728839, 9.954612, 30.178062>,  <13.525447, 9.707844, 29.937777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.728839, 9.954612, 30.178062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048035, 0.716871, -0.695549,
		-0.859733, 0.324818, 0.394149,
		0.508481, 0.616919, 0.600715,
		13.881383, 10.139688, 30.358276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185117, 10.334952, 29.875662>,  <13.525447, 9.707844, 29.937777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185117, 10.334952, 29.875662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.540585, 10.436055, 30.028702>,  <13.753865, 10.496716, 30.120525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.540585, 10.436055, 30.028702>,  <13.185117, 10.334952, 29.875662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.540585, 10.436055, 30.028702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107275, 0.696619, -0.709376,
		-0.445825, 0.671444, 0.591949,
		0.888669, 0.252756, 0.382599,
		13.807185, 10.511882, 30.143482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.162198, 11.046124, 30.029043>,  <13.185117, 10.334952, 29.875662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.162198, 11.046124, 30.029043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.546383, 10.939025, 29.998520>,  <13.776894, 10.874765, 29.980206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.546383, 10.939025, 29.998520>,  <13.162198, 11.046124, 30.029043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.546383, 10.939025, 29.998520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151839, 0.733500, -0.662513,
		0.233359, 0.624732, 0.745154,
		0.960463, -0.267746, -0.076310,
		13.834521, 10.858701, 29.975626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541420, 11.638222, 29.976213>,  <13.162198, 11.046124, 30.029043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.541420, 11.638222, 29.976213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.799284, 11.360482, 29.848280>,  <13.954002, 11.193838, 29.771521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.799284, 11.360482, 29.848280>,  <13.541420, 11.638222, 29.976213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.799284, 11.360482, 29.848280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240581, 0.581384, -0.777247,
		0.725627, 0.424114, 0.541842,
		0.644660, -0.694348, -0.319834,
		13.992682, 11.152178, 29.752329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078730, 12.008360, 29.857359>,  <13.541420, 11.638222, 29.976213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078730, 12.008360, 29.857359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.128023, 11.688268, 29.622602>,  <14.157599, 11.496212, 29.481749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.128023, 11.688268, 29.622602>,  <14.078730, 12.008360, 29.857359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.128023, 11.688268, 29.622602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005331, 0.590859, -0.806758,
		0.992363, 0.102549, 0.068548,
		0.123234, -0.800231, -0.586893,
		14.164993, 11.448198, 29.446535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.309458, 12.341227, 29.305332>,  <14.078730, 12.008360, 29.857359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.309458, 12.341227, 29.305332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.198034, 11.991301, 29.146788>,  <14.131180, 11.781344, 29.051661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.198034, 11.991301, 29.146788>,  <14.309458, 12.341227, 29.305332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198034, 11.991301, 29.146788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143103, 0.445895, -0.883571,
		0.949698, -0.189405, -0.249397,
		-0.278558, -0.874816, -0.396362,
		14.114467, 11.728856, 29.027880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809293, 12.881440, 29.414154>,  <14.309458, 12.341227, 29.305332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809293, 12.881440, 29.414154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.571941, 13.192828, 29.496017>,  <14.429530, 13.379662, 29.545135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.571941, 13.192828, 29.496017>,  <14.809293, 12.881440, 29.414154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.571941, 13.192828, 29.496017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163323, -0.132525, 0.977631,
		0.788180, 0.613531, -0.048505,
		-0.593379, 0.778471, 0.204657,
		14.393928, 13.426370, 29.557415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164273, 13.207079, 29.804739>,  <14.809293, 12.881440, 29.414154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.164273, 13.207079, 29.804739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.800040, 13.360563, 29.866194>,  <14.581500, 13.452654, 29.903067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.800040, 13.360563, 29.866194>,  <15.164273, 13.207079, 29.804739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800040, 13.360563, 29.866194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237359, 0.181141, 0.954384,
		0.338378, 0.905513, -0.256021,
		-0.910583, 0.383712, 0.153637,
		14.526865, 13.475677, 29.912285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282104, 13.891608, 30.103628>,  <15.164273, 13.207079, 29.804739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282104, 13.891608, 30.103628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.912700, 13.797701, 30.224962>,  <14.691057, 13.741357, 30.297762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.912700, 13.797701, 30.224962>,  <15.282104, 13.891608, 30.103628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912700, 13.797701, 30.224962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277011, 0.138799, 0.950789,
		-0.265318, 0.962091, -0.063149,
		-0.923510, -0.234768, 0.303336,
		14.635647, 13.727270, 30.315964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.221332, 14.426860, 30.569050>,  <15.282104, 13.891608, 30.103628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.221332, 14.426860, 30.569050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.920794, 14.169890, 30.629412>,  <14.740471, 14.015709, 30.665628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.920794, 14.169890, 30.629412>,  <15.221332, 14.426860, 30.569050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920794, 14.169890, 30.629412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206600, -0.011816, 0.978354,
		-0.626734, 0.766259, 0.141602,
		-0.751346, -0.642423, 0.150904,
		14.695390, 13.977163, 30.674683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809729, 14.673098, 31.151937>,  <15.221332, 14.426860, 30.569050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809729, 14.673098, 31.151937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.726447, 14.282325, 31.132940>,  <14.676478, 14.047861, 31.121542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.726447, 14.282325, 31.132940>,  <14.809729, 14.673098, 31.151937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.726447, 14.282325, 31.132940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080785, -0.065568, 0.994573,
		-0.974743, 0.203237, 0.092573,
		-0.208204, -0.976932, -0.047493,
		14.663986, 13.989245, 31.118692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.532164, 14.618180, 31.777296>,  <14.809729, 14.673098, 31.151937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.532164, 14.618180, 31.777296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.631290, 14.254952, 31.642242>,  <14.690766, 14.037016, 31.561211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.631290, 14.254952, 31.642242>,  <14.532164, 14.618180, 31.777296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.631290, 14.254952, 31.642242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135186, -0.312683, 0.940188,
		-0.959328, -0.278639, 0.045270,
		0.247818, -0.908069, -0.337634,
		14.705636, 13.982532, 31.540953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.075023, 14.100284, 32.061749>,  <14.532164, 14.618180, 31.777296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.075023, 14.100284, 32.061749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.435561, 13.951513, 31.972984>,  <14.651884, 13.862251, 31.919725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.435561, 13.951513, 31.972984>,  <14.075023, 14.100284, 32.061749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.435561, 13.951513, 31.972984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177429, -0.150313, 0.972586,
		-0.395086, -0.916012, -0.069494,
		0.901347, -0.371925, -0.221914,
		14.705965, 13.839935, 31.906410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128174, 13.738332, 32.572380>,  <14.075023, 14.100284, 32.061749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128174, 13.738332, 32.572380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.504951, 13.738448, 32.438072>,  <14.731018, 13.738518, 32.357487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.504951, 13.738448, 32.438072>,  <14.128174, 13.738332, 32.572380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504951, 13.738448, 32.438072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314544, -0.350662, 0.882099,
		-0.117483, -0.936502, -0.330397,
		0.941945, 0.000292, -0.335768,
		14.787535, 13.738536, 32.337341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501398, 13.012405, 32.794140>,  <14.128174, 13.738332, 32.572380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501398, 13.012405, 32.794140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.797541, 13.266975, 32.707577>,  <14.975226, 13.419718, 32.655640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.797541, 13.266975, 32.707577>,  <14.501398, 13.012405, 32.794140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.797541, 13.266975, 32.707577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502280, -0.309788, 0.807307,
		0.446750, -0.706394, -0.549018,
		0.740357, 0.636426, -0.216410,
		15.019648, 13.457903, 32.642654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.886753, 16.095444, 16.749046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054749, 16.300234, 17.048779>,  <17.155546, 16.423107, 17.228617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054749, 16.300234, 17.048779>,  <16.886753, 16.095444, 16.749046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054749, 16.300234, 17.048779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259058, -0.723692, 0.639655,
		0.869770, -0.462767, -0.171311,
		0.419987, 0.511973, 0.749329,
		17.180744, 16.453825, 17.273577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324747, 15.555858, 17.245554>,  <16.886753, 16.095444, 16.749046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.324747, 15.555858, 17.245554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246517, 15.903774, 17.426756>,  <17.199579, 16.112524, 17.535477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246517, 15.903774, 17.426756>,  <17.324747, 15.555858, 17.245554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246517, 15.903774, 17.426756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225026, -0.489402, 0.842525,
		0.954523, 0.062840, 0.291441,
		-0.195576, 0.869791, 0.453005,
		17.187845, 16.164711, 17.562656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618647, 15.495543, 17.904137>,  <17.324747, 15.555858, 17.245554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.618647, 15.495543, 17.904137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347334, 15.787620, 17.937014>,  <17.184546, 15.962865, 17.956739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347334, 15.787620, 17.937014>,  <17.618647, 15.495543, 17.904137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347334, 15.787620, 17.937014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300330, -0.377577, 0.875921,
		0.670622, 0.569438, 0.475402,
		-0.678283, 0.730189, 0.082192,
		17.143848, 16.006676, 17.961672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628403, 15.756046, 18.690804>,  <17.618647, 15.495543, 17.904137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.628403, 15.756046, 18.690804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.273441, 15.839474, 18.526358>,  <17.060465, 15.889530, 18.427691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.273441, 15.839474, 18.526358>,  <17.628403, 15.756046, 18.690804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273441, 15.839474, 18.526358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451589, -0.214047, 0.866171,
		0.092657, 0.954297, 0.284133,
		-0.887402, 0.208568, -0.411117,
		17.007221, 15.902044, 18.403023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.308374, 16.223272, 19.157560>,  <17.628403, 15.756046, 18.690804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.308374, 16.223272, 19.157560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.002512, 16.091644, 18.935925>,  <16.818995, 16.012667, 18.802942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.002512, 16.091644, 18.935925>,  <17.308374, 16.223272, 19.157560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.002512, 16.091644, 18.935925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501469, -0.236197, 0.832310,
		-0.404763, 0.914289, 0.015591,
		-0.764654, -0.329070, -0.554091,
		16.773115, 15.992924, 18.769697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.730551, 16.522625, 19.475519>,  <17.308374, 16.223272, 19.157560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.730551, 16.522625, 19.475519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.576311, 16.231272, 19.248974>,  <16.483767, 16.056459, 19.113047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.576311, 16.231272, 19.248974>,  <16.730551, 16.522625, 19.475519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.576311, 16.231272, 19.248974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668619, -0.202407, 0.715527,
		-0.635815, 0.654590, -0.408964,
		-0.385600, -0.728384, -0.566365,
		16.460630, 16.012756, 19.079065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084211, 16.627459, 19.582800>,  <16.730551, 16.522625, 19.475519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084211, 16.627459, 19.582800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073997, 16.261269, 19.422174>,  <16.067869, 16.041553, 19.325800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073997, 16.261269, 19.422174>,  <16.084211, 16.627459, 19.582800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073997, 16.261269, 19.422174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756515, -0.244888, 0.606396,
		-0.653478, 0.319271, -0.686318,
		-0.025534, -0.915476, -0.401562,
		16.066338, 15.986626, 19.301706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334179, 16.453579, 19.447115>,  <16.084211, 16.627459, 19.582800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334179, 16.453579, 19.447115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520934, 16.100994, 19.475519>,  <15.632987, 15.889443, 19.492561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520934, 16.100994, 19.475519>,  <15.334179, 16.453579, 19.447115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520934, 16.100994, 19.475519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697976, -0.318011, 0.641637,
		-0.542996, -0.349135, -0.763714,
		0.466888, -0.881461, 0.071009,
		15.661000, 15.836555, 19.496822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824459, 15.977055, 19.364491>,  <15.334179, 16.453579, 19.447115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824459, 15.977055, 19.364491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.128663, 15.802444, 19.556768>,  <15.311185, 15.697677, 19.672136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.128663, 15.802444, 19.556768>,  <14.824459, 15.977055, 19.364491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.128663, 15.802444, 19.556768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617929, -0.259131, 0.742304,
		-0.199465, -0.861570, -0.466809,
		0.760512, -0.436518, 0.480701,
		15.356816, 15.671485, 19.700977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497082, 15.433785, 19.654139>,  <14.824459, 15.977055, 19.364491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497082, 15.433785, 19.654139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.839152, 15.459454, 19.859879>,  <15.044394, 15.474854, 19.983322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.839152, 15.459454, 19.859879>,  <14.497082, 15.433785, 19.654139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.839152, 15.459454, 19.859879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493208, -0.204489, 0.845535,
		0.159437, -0.976763, -0.143225,
		0.855176, 0.064170, 0.514351,
		15.095705, 15.478704, 20.014183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479500, 14.889131, 20.035496>,  <14.497082, 15.433785, 19.654139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479500, 14.889131, 20.035496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736200, 15.143880, 20.206398>,  <14.890221, 15.296730, 20.308939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736200, 15.143880, 20.206398>,  <14.479500, 14.889131, 20.035496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.736200, 15.143880, 20.206398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375855, -0.224434, 0.899090,
		0.668498, -0.737578, 0.095342,
		0.641751, 0.636874, 0.427256,
		14.928725, 15.334942, 20.334576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.671902, 14.578139, 20.695942>,  <14.479500, 14.889131, 20.035496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.671902, 14.578139, 20.695942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.788620, 14.959516, 20.726421>,  <14.858651, 15.188341, 20.744709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.788620, 14.959516, 20.726421>,  <14.671902, 14.578139, 20.695942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.788620, 14.959516, 20.726421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042402, -0.066691, 0.996872,
		0.955540, -0.294114, 0.020968,
		0.291796, 0.953440, 0.076197,
		14.876159, 15.245548, 20.749281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865707, 13.928804, 20.806915>,  <14.671902, 14.578139, 20.695942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.865707, 13.928804, 20.806915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.520271, 13.728151, 20.786615>,  <14.313009, 13.607759, 20.774435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.520271, 13.728151, 20.786615>,  <14.865707, 13.928804, 20.806915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520271, 13.728151, 20.786615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062173, 0.205840, -0.976609,
		0.500346, -0.840234, -0.208949,
		-0.863590, -0.501634, -0.050751,
		14.261194, 13.577662, 20.771391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.901335, 13.605361, 20.207596>,  <14.865707, 13.928804, 20.806915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.901335, 13.605361, 20.207596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512685, 13.582617, 20.299433>,  <14.279495, 13.568971, 20.354534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512685, 13.582617, 20.299433>,  <14.901335, 13.605361, 20.207596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512685, 13.582617, 20.299433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230464, 0.009219, -0.973037,
		0.053213, -0.998339, -0.022062,
		-0.971625, -0.056863, 0.229591,
		14.221197, 13.565558, 20.368311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.628798, 12.979363, 19.852898>,  <14.901335, 13.605361, 20.207596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.628798, 12.979363, 19.852898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.347542, 13.256585, 19.916483>,  <14.178788, 13.422918, 19.954634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.347542, 13.256585, 19.916483>,  <14.628798, 12.979363, 19.852898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.347542, 13.256585, 19.916483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340443, -0.131861, -0.930973,
		-0.624253, -0.708723, 0.328662,
		-0.703140, 0.693054, 0.158965,
		14.136600, 13.464501, 19.964172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024788, 12.711247, 19.619547>,  <14.628798, 12.979363, 19.852898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024788, 12.711247, 19.619547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919422, 13.096610, 19.599705>,  <13.856203, 13.327827, 19.587799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.919422, 13.096610, 19.599705>,  <14.024788, 12.711247, 19.619547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.919422, 13.096610, 19.599705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421860, -0.161284, -0.892200,
		-0.867552, -0.214091, 0.448907,
		-0.263414, 0.963407, -0.049606,
		13.840398, 13.385632, 19.584824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474298, 12.649422, 19.132622>,  <14.024788, 12.711247, 19.619547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474298, 12.649422, 19.132622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.538053, 13.042727, 19.167915>,  <13.576305, 13.278711, 19.189091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.538053, 13.042727, 19.167915>,  <13.474298, 12.649422, 19.132622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.538053, 13.042727, 19.167915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443683, 0.151189, -0.883339,
		-0.881896, 0.101646, 0.460356,
		0.159389, 0.983265, 0.088235,
		13.585869, 13.337707, 19.194386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.764978, 13.011582, 19.142378>,  <13.474298, 12.649422, 19.132622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.764978, 13.011582, 19.142378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.057399, 13.260402, 19.030222>,  <13.232851, 13.409694, 18.962929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.057399, 13.260402, 19.030222>,  <12.764978, 13.011582, 19.142378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.057399, 13.260402, 19.030222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419894, 0.086233, -0.903467,
		-0.537822, 0.778215, 0.324236,
		0.731051, 0.622049, -0.280390,
		13.276714, 13.447017, 18.946104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.413165, 13.336057, 18.655687>,  <12.764978, 13.011582, 19.142378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.413165, 13.336057, 18.655687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.803026, 13.393858, 18.587368>,  <13.036942, 13.428538, 18.546377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.803026, 13.393858, 18.587368>,  <12.413165, 13.336057, 18.655687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.803026, 13.393858, 18.587368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190668, 0.137134, -0.972029,
		-0.117038, 0.979956, 0.161210,
		0.974653, 0.144502, -0.170796,
		13.095422, 13.437208, 18.536129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340046, 13.888896, 18.279015>,  <12.413165, 13.336057, 18.655687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.340046, 13.888896, 18.279015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.711615, 13.774473, 18.184973>,  <12.934556, 13.705819, 18.128548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.711615, 13.774473, 18.184973>,  <12.340046, 13.888896, 18.279015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.711615, 13.774473, 18.184973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197037, 0.155705, -0.967953,
		0.313498, 0.945477, 0.088274,
		0.928922, -0.286058, -0.235107,
		12.990292, 13.688656, 18.114441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.577551, 14.334329, 17.777956>,  <12.340046, 13.888896, 18.279015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.577551, 14.334329, 17.777956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.782443, 13.994384, 17.728390>,  <12.905378, 13.790417, 17.698650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.782443, 13.994384, 17.728390>,  <12.577551, 14.334329, 17.777956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.782443, 13.994384, 17.728390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251893, -0.010722, -0.967696,
		0.821079, 0.526896, -0.219566,
		0.512230, -0.849862, -0.123918,
		12.936111, 13.739426, 17.691214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040105, 14.451414, 17.261377>,  <12.577551, 14.334329, 17.777956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040105, 14.451414, 17.261377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.013296, 14.053016, 17.285042>,  <12.997211, 13.813976, 17.299240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.013296, 14.053016, 17.285042>,  <13.040105, 14.451414, 17.261377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.013296, 14.053016, 17.285042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195619, -0.045028, -0.979646,
		0.978387, -0.077232, -0.191818,
		-0.067022, -0.995996, 0.059162,
		12.993190, 13.754217, 17.302790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.427560, 14.247003, 16.720711>,  <13.040105, 14.451414, 17.261377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.427560, 14.247003, 16.720711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.176588, 13.951833, 16.820150>,  <13.026005, 13.774731, 16.879814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.176588, 13.951833, 16.820150>,  <13.427560, 14.247003, 16.720711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.176588, 13.951833, 16.820150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233044, -0.126671, -0.964181,
		0.742983, -0.662889, -0.092492,
		-0.627429, -0.737925, 0.248597,
		12.988359, 13.730455, 16.894730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558296, 13.648135, 16.343222>,  <13.427560, 14.247003, 16.720711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558296, 13.648135, 16.343222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.179589, 13.551146, 16.427919>,  <12.952365, 13.492951, 16.478739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.179589, 13.551146, 16.427919>,  <13.558296, 13.648135, 16.343222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.179589, 13.551146, 16.427919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234910, 0.070640, -0.969447,
		0.220111, -0.967582, -0.123840,
		-0.946767, -0.242477, 0.211746,
		12.895559, 13.478403, 16.491444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.309941, 12.996825, 15.967606>,  <13.558296, 13.648135, 16.343222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.309941, 12.996825, 15.967606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011648, 13.256443, 16.027773>,  <12.832672, 13.412213, 16.063873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011648, 13.256443, 16.027773>,  <13.309941, 12.996825, 15.967606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011648, 13.256443, 16.027773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178932, 0.022367, -0.983607,
		-0.641769, -0.760422, 0.099455,
		-0.745732, 0.649044, 0.150418,
		12.787929, 13.451157, 16.072899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.870213, 13.163151, 15.609032>,  <13.309941, 12.996825, 15.967606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.870213, 13.163151, 15.609032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.107627, 12.841492, 15.622049>,  <14.250076, 12.648496, 15.629860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.107627, 12.841492, 15.622049>,  <13.870213, 13.163151, 15.609032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.107627, 12.841492, 15.622049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737949, 0.527648, -0.420735,
		0.321161, 0.273739, 0.906600,
		0.593537, -0.804148, 0.032545,
		14.285688, 12.600247, 15.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.521817, 13.348075, 15.919583>,  <13.870213, 13.163151, 15.609032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.521817, 13.348075, 15.919583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611526, 13.026873, 15.698718>,  <14.665352, 12.834151, 15.566199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611526, 13.026873, 15.698718>,  <14.521817, 13.348075, 15.919583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611526, 13.026873, 15.698718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807187, 0.470534, -0.356436,
		0.546031, -0.365760, 0.753704,
		0.224274, -0.803005, -0.552163,
		14.678808, 12.785971, 15.533070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376932, 13.657768, 16.524601>,  <14.521817, 13.348075, 15.919583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376932, 13.657768, 16.524601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161807, 13.400167, 16.742231>,  <14.032732, 13.245607, 16.872810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161807, 13.400167, 16.742231>,  <14.376932, 13.657768, 16.524601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161807, 13.400167, 16.742231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218467, -0.729770, -0.647849,
		0.814267, -0.229558, 0.533172,
		-0.537812, -0.644002, 0.544077,
		14.000463, 13.206966, 16.905455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.764449, 13.088197, 16.726551>,  <14.376932, 13.657768, 16.524601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.764449, 13.088197, 16.726551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.392333, 12.943280, 16.703562>,  <14.169064, 12.856330, 16.689768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.392333, 12.943280, 16.703562>,  <14.764449, 13.088197, 16.726551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.392333, 12.943280, 16.703562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289472, -0.628817, -0.721661,
		0.225311, -0.687992, 0.689856,
		-0.930291, -0.362292, -0.057475,
		14.113246, 12.834593, 16.686319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.917540, 12.634433, 17.209290>,  <14.764449, 13.088197, 16.726551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.917540, 12.634433, 17.209290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.268655, 12.523760, 17.052860>,  <15.479323, 12.457355, 16.959003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.268655, 12.523760, 17.052860>,  <14.917540, 12.634433, 17.209290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.268655, 12.523760, 17.052860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265353, -0.398846, 0.877787,
		-0.398846, -0.874282, -0.276683,
		-0.877787, 0.276683, 0.391071,
		15.531991, 12.440755, 16.935539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975484, 11.976377, 17.330204>,  <14.917540, 12.634433, 17.209290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975484, 11.976377, 17.330204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.353488, 12.089197, 17.263988>,  <15.580291, 12.156889, 17.224260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.353488, 12.089197, 17.263988>,  <14.975484, 11.976377, 17.330204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.353488, 12.089197, 17.263988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296877, -0.527519, 0.795983,
		0.137184, -0.801356, -0.582245,
		0.945011, 0.282051, -0.165537,
		15.636992, 12.173812, 17.214327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.347915, 11.401833, 17.378654>,  <14.975484, 11.976377, 17.330204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.347915, 11.401833, 17.378654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620199, 11.685630, 17.451595>,  <15.783570, 11.855908, 17.495359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620199, 11.685630, 17.451595>,  <15.347915, 11.401833, 17.378654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.620199, 11.685630, 17.451595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393988, -0.564439, 0.725384,
		0.617581, -0.421933, -0.663752,
		0.680711, 0.709494, 0.182350,
		15.824412, 11.898478, 17.506300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052076, 11.062410, 17.301382>,  <15.347915, 11.401833, 17.378654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052076, 11.062410, 17.301382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.067329, 11.386978, 17.534670>,  <16.076481, 11.581719, 17.674643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.067329, 11.386978, 17.534670>,  <16.052076, 11.062410, 17.301382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.067329, 11.386978, 17.534670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382295, -0.551088, 0.741723,
		0.923253, 0.194678, -0.331216,
		0.038132, 0.811420, 0.583218,
		16.078770, 11.630404, 17.709635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631891, 11.047455, 17.602983>,  <16.052076, 11.062410, 17.301382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631891, 11.047455, 17.602983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.425236, 11.293777, 17.840931>,  <16.301243, 11.441569, 17.983700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.425236, 11.293777, 17.840931>,  <16.631891, 11.047455, 17.602983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.425236, 11.293777, 17.840931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260965, -0.548461, 0.794410,
		0.815464, 0.565664, 0.122654,
		-0.516640, 0.615804, 0.594869,
		16.270245, 11.478518, 18.019392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039587, 11.039844, 18.285151>,  <16.631891, 11.047455, 17.602983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.039587, 11.039844, 18.285151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690279, 11.205858, 18.387241>,  <16.480694, 11.305467, 18.448496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690279, 11.205858, 18.387241>,  <17.039587, 11.039844, 18.285151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690279, 11.205858, 18.387241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035283, -0.468589, 0.882711,
		0.485954, 0.779852, 0.394562,
		-0.873272, 0.415036, 0.255228,
		16.428297, 11.330369, 18.463810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185520, 11.449084, 18.926544>,  <17.039587, 11.039844, 18.285151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185520, 11.449084, 18.926544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813128, 11.308924, 18.885580>,  <16.589691, 11.224828, 18.861002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813128, 11.308924, 18.885580>,  <17.185520, 11.449084, 18.926544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.813128, 11.308924, 18.885580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031356, -0.356248, 0.933865,
		-0.363711, 0.866202, 0.342648,
		-0.930984, -0.350401, -0.102411,
		16.533833, 11.203803, 18.854856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908409, 11.561726, 19.558823>,  <17.185520, 11.449084, 18.926544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908409, 11.561726, 19.558823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634905, 11.305654, 19.418741>,  <16.470802, 11.152010, 19.334692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634905, 11.305654, 19.418741>,  <16.908409, 11.561726, 19.558823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634905, 11.305654, 19.418741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075418, -0.415353, 0.906528,
		-0.725800, 0.646259, 0.235720,
		-0.683759, -0.640181, -0.350203,
		16.429777, 11.113599, 19.313681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373463, 11.489384, 20.222795>,  <16.908409, 11.561726, 19.558823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373463, 11.489384, 20.222795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.311499, 11.183132, 19.973055>,  <16.274321, 10.999381, 19.823210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.311499, 11.183132, 19.973055>,  <16.373463, 11.489384, 20.222795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311499, 11.183132, 19.973055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311716, -0.561818, 0.766285,
		-0.937463, 0.313326, -0.151628,
		-0.154910, -0.765629, -0.624352,
		16.265026, 10.953444, 19.785749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688622, 11.257229, 20.495255>,  <16.373463, 11.489384, 20.222795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688622, 11.257229, 20.495255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848024, 10.964057, 20.274706>,  <15.943666, 10.788154, 20.142378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848024, 10.964057, 20.274706>,  <15.688622, 11.257229, 20.495255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848024, 10.964057, 20.274706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272710, -0.668667, 0.691747,
		-0.875684, -0.125301, -0.466344,
		0.398505, -0.732929, -0.551370,
		15.967576, 10.744179, 20.109295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228226, 10.732797, 20.301067>,  <15.688622, 11.257229, 20.495255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228226, 10.732797, 20.301067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589488, 10.561226, 20.308327>,  <15.806246, 10.458283, 20.312681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589488, 10.561226, 20.308327>,  <15.228226, 10.732797, 20.301067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589488, 10.561226, 20.308327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288289, -0.574620, 0.765965,
		-0.318115, -0.697018, -0.642627,
		0.903157, -0.428927, 0.018147,
		15.860435, 10.432548, 20.313770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.056874, 10.053041, 20.475773>,  <15.228226, 10.732797, 20.301067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.056874, 10.053041, 20.475773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.443408, 10.092063, 20.571005>,  <15.675328, 10.115476, 20.628143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.443408, 10.092063, 20.571005>,  <15.056874, 10.053041, 20.475773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.443408, 10.092063, 20.571005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178768, -0.410922, 0.893972,
		0.185042, -0.906436, -0.379648,
		0.966334, 0.097553, 0.238079,
		15.733308, 10.121328, 20.642429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101165, 9.512639, 20.866093>,  <15.056874, 10.053041, 20.475773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101165, 9.512639, 20.866093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473510, 9.638922, 20.939657>,  <15.696917, 9.714691, 20.983795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473510, 9.638922, 20.939657>,  <15.101165, 9.512639, 20.866093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.473510, 9.638922, 20.939657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011420, -0.477970, 0.878302,
		0.365190, -0.819679, -0.441319,
		0.930862, 0.315707, 0.183911,
		15.752769, 9.733634, 20.994831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.490117, 8.966346, 21.157370>,  <15.101165, 9.512639, 20.866093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.490117, 8.966346, 21.157370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690494, 9.284955, 21.292786>,  <15.810719, 9.476121, 21.374035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690494, 9.284955, 21.292786>,  <15.490117, 8.966346, 21.157370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690494, 9.284955, 21.292786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118304, -0.450504, 0.884902,
		0.857358, -0.403233, -0.319908,
		0.500941, 0.796524, 0.338538,
		15.840775, 9.523912, 21.394346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095087, 8.630145, 21.605610>,  <15.490117, 8.966346, 21.157370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095087, 8.630145, 21.605610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.050497, 9.011648, 21.717266>,  <16.023743, 9.240550, 21.784260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.050497, 9.011648, 21.717266>,  <16.095087, 8.630145, 21.605610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.050497, 9.011648, 21.717266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167254, -0.258880, 0.951318,
		0.979591, 0.152737, -0.130661,
		-0.111476, 0.953757, 0.279143,
		16.017054, 9.297775, 21.801008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628727, 8.761345, 22.108446>,  <16.095087, 8.630145, 21.605610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628727, 8.761345, 22.108446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373701, 9.059761, 22.185320>,  <16.220686, 9.238811, 22.231443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373701, 9.059761, 22.185320>,  <16.628727, 8.761345, 22.108446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373701, 9.059761, 22.185320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153475, -0.121464, 0.980659,
		0.754954, 0.654730, -0.037058,
		-0.637566, 0.746040, 0.192184,
		16.182432, 9.283573, 22.242975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.975559, 9.134242, 22.559221>,  <16.628727, 8.761345, 22.108446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.975559, 9.134242, 22.559221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586817, 9.202615, 22.624067>,  <16.353571, 9.243639, 22.662975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586817, 9.202615, 22.624067>,  <16.975559, 9.134242, 22.559221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586817, 9.202615, 22.624067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140183, -0.133461, 0.981089,
		0.189337, 0.976202, 0.105743,
		-0.971854, 0.170933, 0.162116,
		16.295261, 9.253895, 22.672703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963135, 9.537698, 23.180716>,  <16.975559, 9.134242, 22.559221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963135, 9.537698, 23.180716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583893, 9.412789, 23.156782>,  <16.356348, 9.337844, 23.142422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583893, 9.412789, 23.156782>,  <16.963135, 9.537698, 23.180716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583893, 9.412789, 23.156782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095774, 0.101048, 0.990261,
		-0.303184, 0.944603, -0.125712,
		-0.948107, -0.312271, -0.059832,
		16.299461, 9.319108, 23.138832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659811, 9.812466, 23.670359>,  <16.963135, 9.537698, 23.180716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659811, 9.812466, 23.670359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.381449, 9.538170, 23.585060>,  <16.214432, 9.373592, 23.533880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.381449, 9.538170, 23.585060>,  <16.659811, 9.812466, 23.670359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.381449, 9.538170, 23.585060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188791, -0.111807, 0.975632,
		-0.692873, 0.719208, -0.051654,
		-0.695906, -0.685740, -0.213248,
		16.172676, 9.332448, 23.521086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130745, 9.869761, 24.248449>,  <16.659811, 9.812466, 23.670359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.130745, 9.869761, 24.248449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.082497, 9.505053, 24.091417>,  <16.053547, 9.286227, 23.997198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.082497, 9.505053, 24.091417>,  <16.130745, 9.869761, 24.248449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.082497, 9.505053, 24.091417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273953, -0.349537, 0.895976,
		-0.954149, 0.215624, -0.207621,
		-0.120622, -0.911773, -0.392581,
		16.046310, 9.231521, 23.973642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598892, 9.601712, 24.565485>,  <16.130745, 9.869761, 24.248449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598892, 9.601712, 24.565485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776070, 9.277633, 24.411924>,  <15.882376, 9.083185, 24.319788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776070, 9.277633, 24.411924>,  <15.598892, 9.601712, 24.565485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776070, 9.277633, 24.411924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215377, -0.511817, 0.831659,
		-0.870295, -0.285695, -0.401204,
		0.442944, -0.810199, -0.383899,
		15.908953, 9.034573, 24.296755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078950, 8.975436, 24.648716>,  <15.598892, 9.601712, 24.565485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.078950, 8.975436, 24.648716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.467438, 8.885111, 24.618406>,  <15.700530, 8.830915, 24.600222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.467438, 8.885111, 24.618406>,  <15.078950, 8.975436, 24.648716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.467438, 8.885111, 24.618406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070603, -0.576754, 0.813862,
		-0.227483, -0.785088, -0.576097,
		0.971219, -0.225814, -0.075772,
		15.758803, 8.817367, 24.595675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.065093, 8.337645, 24.796246>,  <15.078950, 8.975436, 24.648716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.065093, 8.337645, 24.796246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.435179, 8.471104, 24.868532>,  <15.657230, 8.551179, 24.911905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.435179, 8.471104, 24.868532>,  <15.065093, 8.337645, 24.796246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.435179, 8.471104, 24.868532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046230, -0.373601, 0.926437,
		0.376620, -0.865507, -0.330236,
		0.925214, 0.333648, 0.180718,
		15.712743, 8.571198, 24.922747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.576152, 7.794790, 25.066917>,  <15.065093, 8.337645, 24.796246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.576152, 7.794790, 25.066917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.725834, 8.146066, 25.186085>,  <15.815643, 8.356832, 25.257586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.725834, 8.146066, 25.186085>,  <15.576152, 7.794790, 25.066917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.725834, 8.146066, 25.186085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012080, -0.316614, 0.948478,
		0.927267, -0.358524, -0.107870,
		0.374205, 0.878189, 0.297916,
		15.838096, 8.409522, 25.275459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042212, 7.595835, 25.473299>,  <15.576152, 7.794790, 25.066917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.042212, 7.595835, 25.473299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034777, 7.979291, 25.586905>,  <16.030315, 8.209365, 25.655067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034777, 7.979291, 25.586905>,  <16.042212, 7.595835, 25.473299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.034777, 7.979291, 25.586905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331759, -0.262054, 0.906236,
		0.943181, 0.111070, -0.313166,
		-0.018589, 0.958640, 0.284012,
		16.029200, 8.266884, 25.672108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
