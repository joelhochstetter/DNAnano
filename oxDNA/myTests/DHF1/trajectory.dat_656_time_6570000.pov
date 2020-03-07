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
	<4.281680, 3.077400, 4.095137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.973019, 3.322855, 4.028202>,  <3.787822, 3.470128, 3.988041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.973019, 3.322855, 4.028202>,  <4.281680, 3.077400, 4.095137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.973019, 3.322855, 4.028202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606242, -0.789175, -0.098350,
		-0.192409, 0.025554, 0.980982,
		-0.771653, 0.613636, -0.167337,
		3.741523, 3.506946, 3.978001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.460467, 2.310364, 4.199460>,  <4.281680, 3.077400, 4.095137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.460467, 2.310364, 4.199460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.231827, 2.070623, 4.423620>,  <4.094643, 1.926779, 4.558117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.231827, 2.070623, 4.423620>,  <4.460467, 2.310364, 4.199460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.231827, 2.070623, 4.423620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282785, -0.785026, -0.551150,
		0.770262, -0.156565, 0.618209,
		-0.571601, -0.599351, 0.560402,
		4.060346, 1.890818, 4.591741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.759964, 1.724855, 4.350794>,  <4.460467, 2.310364, 4.199460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.759964, 1.724855, 4.350794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.368023, 1.644972, 4.351871>,  <4.132858, 1.597042, 4.352517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.368023, 1.644972, 4.351871>,  <4.759964, 1.724855, 4.350794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.368023, 1.644972, 4.351871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146975, -0.730115, -0.667331,
		0.135237, -0.653489, 0.744757,
		-0.979852, -0.199708, 0.002692,
		4.074068, 1.585059, 4.352678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.836249, 1.024349, 4.220321>,  <4.759964, 1.724855, 4.350794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.836249, 1.024349, 4.220321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.459484, 1.136362, 4.146152>,  <4.233425, 1.203570, 4.101650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.459484, 1.136362, 4.146152>,  <4.836249, 1.024349, 4.220321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.459484, 1.136362, 4.146152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151898, -0.847588, -0.508450,
		-0.299545, -0.450750, 0.840890,
		-0.941913, 0.280034, -0.185423,
		4.176910, 1.220372, 4.090525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.446507, 0.418054, 4.234486>,  <4.836249, 1.024349, 4.220321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.446507, 0.418054, 4.234486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.207382, 0.671322, 4.037827>,  <4.063907, 0.823283, 3.919831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.207382, 0.671322, 4.037827>,  <4.446507, 0.418054, 4.234486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.207382, 0.671322, 4.037827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358472, -0.759715, -0.542523,
		-0.717022, -0.148083, 0.681139,
		-0.597810, 0.633170, -0.491648,
		4.028039, 0.861273, 3.890332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.788258, 0.068758, 4.189708>,  <4.446507, 0.418054, 4.234486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.788258, 0.068758, 4.189708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.807747, 0.329039, 3.886600>,  <3.819441, 0.485207, 3.704736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.807747, 0.329039, 3.886600>,  <3.788258, 0.068758, 4.189708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.807747, 0.329039, 3.886600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357352, -0.697096, -0.621577,
		-0.932698, 0.301076, 0.198564,
		0.048723, 0.650701, -0.757770,
		3.822364, 0.524249, 3.659270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.310848, -0.151070, 3.769040>,  <3.788258, 0.068758, 4.189708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.310848, -0.151070, 3.769040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.466423, 0.102165, 3.501330>,  <3.559768, 0.254106, 3.340704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.466423, 0.102165, 3.501330>,  <3.310848, -0.151070, 3.769040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.466423, 0.102165, 3.501330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431556, -0.516635, -0.739491,
		-0.813933, 0.576445, 0.072274,
		0.388937, 0.633087, -0.669275,
		3.583104, 0.292091, 3.300548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.765600, 0.036905, 3.328155>,  <3.310848, -0.151070, 3.769040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.765600, 0.036905, 3.328155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.107899, 0.108023, 3.133800>,  <3.313278, 0.150693, 3.017186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.107899, 0.108023, 3.133800>,  <2.765600, 0.036905, 3.328155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.107899, 0.108023, 3.133800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302303, -0.590320, -0.748422,
		-0.419894, 0.787345, -0.451417,
		0.855746, 0.177793, -0.485889,
		3.364623, 0.161361, 2.988033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.224746, -1.055992, 2.155666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.342598, -0.746459, 1.931389>,  <3.413309, -0.560739, 1.796822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.342598, -0.746459, 1.931389>,  <3.224746, -1.055992, 2.155666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.342598, -0.746459, 1.931389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205860, 0.521565, 0.828005,
		0.933174, -0.359380, -0.005632,
		0.294631, 0.773832, -0.560693,
		3.430987, -0.514309, 1.763181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.901423, -0.900897, 2.324382>,  <3.224746, -1.055992, 2.155666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.901423, -0.900897, 2.324382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.743530, -0.566054, 2.172887>,  <3.648795, -0.365149, 2.081991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.743530, -0.566054, 2.172887>,  <3.901423, -0.900897, 2.324382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.743530, -0.566054, 2.172887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403959, 0.528349, 0.746769,
		0.825230, 0.141780, -0.546713,
		-0.394732, 0.837106, -0.378736,
		3.625111, -0.314923, 2.059267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.404405, -0.373030, 2.332819>,  <3.901423, -0.900897, 2.324382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.404405, -0.373030, 2.332819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.042374, -0.206161, 2.365811>,  <3.825155, -0.106040, 2.385607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.042374, -0.206161, 2.365811>,  <4.404405, -0.373030, 2.332819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.042374, -0.206161, 2.365811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362036, 0.654159, 0.664082,
		0.223080, 0.630907, -0.743096,
		-0.905077, 0.417171, 0.082481,
		3.770850, -0.081010, 2.390556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.453641, 0.321184, 2.266741>,  <4.404405, -0.373030, 2.332819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.453641, 0.321184, 2.266741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.132919, 0.249949, 2.494914>,  <3.940486, 0.207209, 2.631817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.132919, 0.249949, 2.494914>,  <4.453641, 0.321184, 2.266741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.132919, 0.249949, 2.494914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343813, 0.643279, 0.684094,
		-0.488774, 0.744633, -0.454556,
		-0.801806, -0.178086, 0.570433,
		3.892378, 0.196524, 2.666043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.300687, 1.020700, 2.526107>,  <4.453641, 0.321184, 2.266741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.300687, 1.020700, 2.526107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.040886, 0.815299, 2.750415>,  <3.885005, 0.692059, 2.885000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.040886, 0.815299, 2.750415>,  <4.300687, 1.020700, 2.526107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.040886, 0.815299, 2.750415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014161, 0.729209, 0.684145,
		-0.760227, 0.452295, -0.466352,
		-0.649503, -0.513501, 0.560769,
		3.846035, 0.661249, 2.918646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.710923, 1.483137, 2.748148>,  <4.300687, 1.020700, 2.526107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.710923, 1.483137, 2.748148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.736206, 1.194670, 3.024096>,  <3.751376, 1.021589, 3.189665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.736206, 1.194670, 3.024096>,  <3.710923, 1.483137, 2.748148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.736206, 1.194670, 3.024096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016696, 0.690392, 0.723243,
		-0.997861, -0.057233, 0.031598,
		0.063208, -0.721168, 0.689870,
		3.755168, 0.978319, 3.231057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.267933, 1.697918, 3.233630>,  <3.710923, 1.483137, 2.748148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.267933, 1.697918, 3.233630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.505753, 1.440240, 3.426097>,  <3.648444, 1.285633, 3.541578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.505753, 1.440240, 3.426097>,  <3.267933, 1.697918, 3.233630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.505753, 1.440240, 3.426097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102510, 0.532812, 0.840002,
		-0.797498, -0.548747, 0.250747,
		0.594549, -0.644196, 0.481168,
		3.684117, 1.246981, 3.570448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.908925, 1.335438, 3.854203>,  <3.267933, 1.697918, 3.233630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.908925, 1.335438, 3.854203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.304672, 1.340109, 3.912186>,  <3.542121, 1.342911, 3.946975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.304672, 1.340109, 3.912186>,  <2.908925, 1.335438, 3.854203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.304672, 1.340109, 3.912186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131738, 0.494141, 0.859343,
		-0.061594, -0.869304, 0.490426,
		0.989369, 0.011678, 0.144956,
		3.601483, 1.343612, 3.955673>
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
