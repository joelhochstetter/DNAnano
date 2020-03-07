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
	<2.430618, 4.190892, 1.048111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.644507, 4.368385, 0.760452>,  <2.772841, 4.474881, 0.587857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.644507, 4.368385, 0.760452>,  <2.430618, 4.190892, 1.048111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.644507, 4.368385, 0.760452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639544, -0.343733, -0.687627,
		-0.552317, 0.827616, 0.099985,
		0.534723, 0.443733, -0.719147,
		2.804924, 4.501505, 0.544708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.938595, 4.556810, 0.756441>,  <2.430618, 4.190892, 1.048111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.938595, 4.556810, 0.756441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.249242, 4.437149, 0.534676>,  <2.435630, 4.365353, 0.401616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.249242, 4.437149, 0.534676>,  <1.938595, 4.556810, 0.756441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.249242, 4.437149, 0.534676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629951, -0.361142, -0.687560,
		0.005463, 0.883224, -0.468920,
		0.776616, -0.299152, -0.554415,
		2.482227, 4.347404, 0.368351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.936595, 4.804713, 0.006299>,  <1.938595, 4.556810, 0.756441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.936595, 4.804713, 0.006299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.082270, 4.437859, 0.071083>,  <2.169674, 4.217746, 0.109953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.082270, 4.437859, 0.071083>,  <1.936595, 4.804713, 0.006299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.082270, 4.437859, 0.071083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801563, -0.397212, -0.446900,
		0.474200, 0.032934, -0.879801,
		0.364186, -0.917136, 0.161959,
		2.191525, 4.162718, 0.119671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.867339, 4.387839, -0.614143>,  <1.936595, 4.804713, 0.006299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.867339, 4.387839, -0.614143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.876452, 4.135178, -0.304176>,  <1.881921, 3.983581, -0.118196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.876452, 4.135178, -0.304176>,  <1.867339, 4.387839, -0.614143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.876452, 4.135178, -0.304176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778534, -0.497482, -0.382618,
		0.627189, -0.594581, -0.503098,
		0.022785, -0.631653, 0.774916,
		1.883288, 3.945682, -0.071701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.642195, 3.654423, -0.847896>,  <1.867339, 4.387839, -0.614143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.642195, 3.654423, -0.847896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.593697, 3.640175, -0.451103>,  <1.564598, 3.631626, -0.213027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.593697, 3.640175, -0.451103>,  <1.642195, 3.654423, -0.847896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.593697, 3.640175, -0.451103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758185, -0.641690, -0.115712,
		0.640668, -0.766136, 0.050795,
		-0.121246, -0.035621, 0.991983,
		1.557323, 3.629489, -0.153508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.528127, 3.011786, -0.785337>,  <1.642195, 3.654423, -0.847896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.528127, 3.011786, -0.785337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.390598, 3.167885, -0.443695>,  <1.308081, 3.261544, -0.238710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.390598, 3.167885, -0.443695>,  <1.528127, 3.011786, -0.785337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.390598, 3.167885, -0.443695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839415, -0.535429, -0.093266,
		0.420915, -0.749015, 0.511671,
		-0.343821, 0.390247, 0.854105,
		1.287452, 3.284959, -0.187464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.290061, 2.386224, -0.354584>,  <1.528127, 3.011786, -0.785337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.290061, 2.386224, -0.354584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.105651, 2.711311, -0.212067>,  <0.995005, 2.906364, -0.126557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.105651, 2.711311, -0.212067>,  <1.290061, 2.386224, -0.354584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.105651, 2.711311, -0.212067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880588, -0.468606, -0.070527,
		0.109642, -0.346262, 0.931709,
		-0.461025, 0.812719, 0.356292,
		0.967343, 2.955127, -0.105179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.777517, 2.119919, 0.154157>,  <1.290061, 2.386224, -0.354584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.777517, 2.119919, 0.154157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.648371, 2.490379, 0.076180>,  <0.570883, 2.712656, 0.029393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.648371, 2.490379, 0.076180>,  <0.777517, 2.119919, 0.154157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.648371, 2.490379, 0.076180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940470, -0.337055, -0.043699,
		-0.106179, 0.169230, 0.979840,
		-0.322865, 0.926151, -0.194944,
		0.551511, 2.768225, 0.017696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.004719, 2.786088, 3.488935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.384512, 2.702026, 3.582161>,  <-0.612388, 2.651589, 3.638097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.384512, 2.702026, 3.582161>,  <-0.004719, 2.786088, 3.488935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.384512, 2.702026, 3.582161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008673, 0.759956, 0.649916,
		-0.313703, 0.615062, -0.723387,
		-0.949482, -0.210154, 0.233066,
		-0.669356, 2.638980, 3.652081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.256217, 2.597121, 4.262368>,  <-0.004719, 2.786088, 3.488935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.256217, 2.597121, 4.262368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.382568, 2.824860, 4.565964>,  <-0.458379, 2.961503, 4.748121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.382568, 2.824860, 4.565964>,  <-0.256217, 2.597121, 4.262368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.382568, 2.824860, 4.565964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939105, 0.073553, 0.335665,
		0.135284, 0.818801, -0.557910,
		-0.315879, 0.569346, 0.758990,
		-0.477332, 2.995663, 4.793661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.109185, 3.300920, 4.210711>,  <-0.256217, 2.597121, 4.262368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.109185, 3.300920, 4.210711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.022335, 3.229172, 4.594521>,  <-0.029775, 3.186123, 4.824806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.022335, 3.229172, 4.594521>,  <0.109185, 3.300920, 4.210711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.022335, 3.229172, 4.594521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893559, 0.359177, 0.269341,
		-0.392950, 0.915870, 0.082292,
		-0.217124, -0.179370, 0.959523,
		-0.042802, 3.175361, 4.882377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.183922, 3.925511, 4.703968>,  <0.109185, 3.300920, 4.210711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.183922, 3.925511, 4.703968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.283480, 3.560524, 4.833862>,  <0.343214, 3.341532, 4.911799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.283480, 3.560524, 4.833862>,  <0.183922, 3.925511, 4.703968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.283480, 3.560524, 4.833862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929980, 0.318808, 0.183025,
		-0.270533, 0.256444, 0.927927,
		0.248895, -0.912468, 0.324736,
		0.358148, 3.286784, 4.931283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.424719, 4.048595, 5.285554>,  <0.183922, 3.925511, 4.703968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.424719, 4.048595, 5.285554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.570894, 3.692413, 5.177078>,  <0.658599, 3.478704, 5.111992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.570894, 3.692413, 5.177078>,  <0.424719, 4.048595, 5.285554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.570894, 3.692413, 5.177078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909618, 0.279765, 0.307127,
		-0.197614, -0.358915, 0.912211,
		0.365437, -0.890456, -0.271190,
		0.680525, 3.425277, 5.095721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.922264, 3.823016, 5.904637>,  <0.424719, 4.048595, 5.285554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.922264, 3.823016, 5.904637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.021210, 3.645218, 5.560257>,  <1.080577, 3.538539, 5.353629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.021210, 3.645218, 5.560257>,  <0.922264, 3.823016, 5.904637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.021210, 3.645218, 5.560257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968531, 0.088182, 0.232747,
		-0.027535, -0.891430, 0.452321,
		0.247364, -0.444495, -0.860950,
		1.095419, 3.511869, 5.301972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.340040, 3.382427, 6.123363>,  <0.922264, 3.823016, 5.904637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.340040, 3.382427, 6.123363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.420420, 3.461624, 5.739609>,  <1.468647, 3.509143, 5.509356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.420420, 3.461624, 5.739609>,  <1.340040, 3.382427, 6.123363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.420420, 3.461624, 5.739609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896882, 0.356701, 0.261472,
		0.393983, -0.912997, -0.105899,
		0.200949, 0.197994, -0.959384,
		1.480704, 3.521022, 5.451794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.979391, 3.170607, 5.937866>,  <1.340040, 3.382427, 6.123363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.979391, 3.170607, 5.937866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.939827, 3.426041, 5.632599>,  <1.916089, 3.579301, 5.449439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.939827, 3.426041, 5.632599>,  <1.979391, 3.170607, 5.937866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.939827, 3.426041, 5.632599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867128, 0.431544, 0.248715,
		0.488167, -0.637164, -0.596419,
		-0.098909, 0.638586, -0.763168,
		1.910154, 3.617616, 5.403648>
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
