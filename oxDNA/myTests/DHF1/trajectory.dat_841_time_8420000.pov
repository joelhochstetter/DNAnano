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
	<3.609995, 4.941429, 3.115776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.578941, 4.633614, 3.369322>,  <3.560309, 4.448925, 3.521450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.578941, 4.633614, 3.369322>,  <3.609995, 4.941429, 3.115776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.578941, 4.633614, 3.369322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731437, 0.475995, 0.488292,
		-0.677476, -0.425725, -0.599821,
		-0.077634, -0.769537, 0.633866,
		3.555651, 4.402752, 3.559481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.831465, 4.781660, 3.297567>,  <3.609995, 4.941429, 3.115776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.831465, 4.781660, 3.297567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.034470, 4.590096, 3.584085>,  <3.156272, 4.475157, 3.755995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.034470, 4.590096, 3.584085>,  <2.831465, 4.781660, 3.297567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.034470, 4.590096, 3.584085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704408, 0.248153, 0.665003,
		-0.496228, -0.842059, -0.211409,
		0.507510, -0.478912, 0.716294,
		3.186723, 4.446422, 3.798973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.394541, 4.287401, 3.490704>,  <2.831465, 4.781660, 3.297567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.394541, 4.287401, 3.490704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.669792, 4.377968, 3.766447>,  <2.834943, 4.432308, 3.931893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.669792, 4.377968, 3.766447>,  <2.394541, 4.287401, 3.490704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.669792, 4.377968, 3.766447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721965, 0.308500, 0.619350,
		-0.072436, -0.923885, 0.375752,
		0.688128, 0.226417, 0.689359,
		2.876230, 4.445893, 3.973255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.132134, 3.987372, 4.051872>,  <2.394541, 4.287401, 3.490704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.132134, 3.987372, 4.051872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.383945, 4.287567, 4.132334>,  <2.535032, 4.467684, 4.180611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.383945, 4.287567, 4.132334>,  <2.132134, 3.987372, 4.051872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.383945, 4.287567, 4.132334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664218, 0.385500, 0.640472,
		0.403129, -0.536796, 0.741172,
		0.629525, 0.750493, 0.201144,
		2.572804, 4.512713, 4.192680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.158347, 4.015227, 4.788817>,  <2.132134, 3.987372, 4.051872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.158347, 4.015227, 4.788817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.280521, 4.364975, 4.637986>,  <2.353826, 4.574824, 4.547488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.280521, 4.364975, 4.637986>,  <2.158347, 4.015227, 4.788817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.280521, 4.364975, 4.637986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580193, 0.484892, 0.654413,
		0.755040, 0.018897, 0.655406,
		0.305435, 0.874370, -0.377077,
		2.372152, 4.627286, 4.524863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.356925, 4.346041, 5.369903>,  <2.158347, 4.015227, 4.788817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.356925, 4.346041, 5.369903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.270515, 4.605255, 5.077770>,  <2.218670, 4.760784, 4.902491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.270515, 4.605255, 5.077770>,  <2.356925, 4.346041, 5.369903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.270515, 4.605255, 5.077770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547880, 0.538682, 0.640039,
		0.808185, 0.538396, 0.238678,
		-0.216023, 0.648036, -0.730331,
		2.205709, 4.799666, 4.858671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.394555, 4.981804, 5.668265>,  <2.356925, 4.346041, 5.369903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.394555, 4.981804, 5.668265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.199097, 5.049362, 5.325873>,  <2.081822, 5.089897, 5.120439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.199097, 5.049362, 5.325873>,  <2.394555, 4.981804, 5.668265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.199097, 5.049362, 5.325873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542790, 0.709264, 0.449804,
		0.683084, 0.684411, -0.254905,
		-0.488646, 0.168894, -0.855979,
		2.052503, 5.100030, 5.069080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.402401, 5.743664, 5.494911>,  <2.394555, 4.981804, 5.668265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.402401, 5.743664, 5.494911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.088959, 5.554886, 5.333303>,  <1.900893, 5.441619, 5.236339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.088959, 5.554886, 5.333303>,  <2.402401, 5.743664, 5.494911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.088959, 5.554886, 5.333303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621028, 0.577300, 0.530141,
		-0.016958, 0.666327, -0.745467,
		-0.783605, -0.471945, -0.404018,
		1.853877, 5.413302, 5.212098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.531050, 0.008460, 6.361202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.841110, 0.070747, 6.606116>,  <1.027146, 0.108120, 6.753065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.841110, 0.070747, 6.606116>,  <0.531050, 0.008460, 6.361202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.841110, 0.070747, 6.606116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522378, 0.703058, 0.482525,
		-0.355334, -0.693875, 0.626319,
		0.775151, 0.155718, 0.612285,
		1.073655, 0.117463, 6.789802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.911792, -0.200329, 5.852788>,  <0.531050, 0.008460, 6.361202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.911792, -0.200329, 5.852788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.933342, 0.148247, 5.657773>,  <0.946272, 0.357392, 5.540765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.933342, 0.148247, 5.657773>,  <0.911792, -0.200329, 5.852788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.933342, 0.148247, 5.657773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630976, -0.408127, -0.659774,
		-0.773929, -0.272079, -0.571845,
		0.053875, 0.871439, -0.487536,
		0.949504, 0.409678, 5.511513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.842739, -0.365772, 5.065616>,  <0.911792, -0.200329, 5.852788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.842739, -0.365772, 5.065616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.035995, -0.024864, 5.145828>,  <1.151950, 0.179680, 5.193954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.035995, -0.024864, 5.145828>,  <0.842739, -0.365772, 5.065616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.035995, -0.024864, 5.145828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683263, -0.223802, -0.695029,
		-0.547473, 0.472811, -0.690452,
		0.483142, 0.852269, 0.200529,
		1.180938, 0.230817, 5.205986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.965809, -0.134014, 4.424033>,  <0.842739, -0.365772, 5.065616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.965809, -0.134014, 4.424033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.212364, 0.051643, 4.678477>,  <1.360297, 0.163038, 4.831143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.212364, 0.051643, 4.678477>,  <0.965809, -0.134014, 4.424033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.212364, 0.051643, 4.678477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745109, -0.082486, -0.661822,
		-0.254710, 0.881911, -0.396680,
		0.616389, 0.464143, 0.636110,
		1.397281, 0.190886, 4.869310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.323675, 0.373248, 4.015486>,  <0.965809, -0.134014, 4.424033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.323675, 0.373248, 4.015486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.538620, 0.280930, 4.339949>,  <1.667587, 0.225538, 4.534627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.538620, 0.280930, 4.339949>,  <1.323675, 0.373248, 4.015486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.538620, 0.280930, 4.339949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760347, -0.283519, -0.584371,
		0.364849, 0.930779, 0.023133,
		0.537362, -0.230796, 0.811157,
		1.699829, 0.211691, 4.583296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.989086, 0.646326, 3.899783>,  <1.323675, 0.373248, 4.015486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.989086, 0.646326, 3.899783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.057297, 0.410202, 4.215367>,  <2.098223, 0.268528, 4.404717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.057297, 0.410202, 4.215367>,  <1.989086, 0.646326, 3.899783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.057297, 0.410202, 4.215367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891712, -0.248226, -0.378461,
		0.419249, 0.768062, 0.484057,
		0.170526, -0.590309, 0.788959,
		2.108455, 0.233109, 4.452055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.762697, 0.795859, 4.144528>,  <1.989086, 0.646326, 3.899783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.762697, 0.795859, 4.144528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.648621, 0.429794, 4.258472>,  <2.580175, 0.210155, 4.326839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.648621, 0.429794, 4.258472>,  <2.762697, 0.795859, 4.144528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.648621, 0.429794, 4.258472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879970, -0.367799, -0.300628,
		0.379894, 0.164933, 0.910207,
		-0.285190, -0.915162, 0.284861,
		2.563064, 0.155246, 4.343931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.379567, 0.462020, 4.471496>,  <2.762697, 0.795859, 4.144528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.379567, 0.462020, 4.471496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.135933, 0.157204, 4.383581>,  <2.989752, -0.025686, 4.330832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.135933, 0.157204, 4.383581>,  <3.379567, 0.462020, 4.471496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.135933, 0.157204, 4.383581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777732, -0.519589, -0.353780,
		0.155395, -0.386419, 0.909138,
		-0.609086, -0.762041, -0.219789,
		2.953207, -0.071409, 4.317644>
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
