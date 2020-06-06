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
	<24.802780, 35.072495, 34.794159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493259, 35.063618, 35.047375>,  <24.307547, 35.058292, 35.199303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493259, 35.063618, 35.047375>,  <24.802780, 35.072495, 34.794159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493259, 35.063618, 35.047375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151602, -0.976828, 0.151076,
		0.615017, 0.212873, 0.759236,
		-0.773803, -0.022187, 0.633038,
		24.261118, 35.056961, 35.237286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531786, 34.921223, 34.693733>,  <24.802780, 35.072495, 34.794159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531786, 34.921223, 34.693733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789804, 34.892590, 34.998047>,  <25.944614, 34.875408, 35.180634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789804, 34.892590, 34.998047>,  <25.531786, 34.921223, 34.693733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789804, 34.892590, 34.998047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693766, 0.362486, 0.622328,
		-0.320322, -0.929236, 0.184159,
		0.645045, -0.071582, 0.760784,
		25.983318, 34.871117, 35.226284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199377, 34.642773, 35.453369>,  <25.531786, 34.921223, 34.693733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199377, 34.642773, 35.453369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520880, 34.876457, 35.498413>,  <25.713781, 35.016666, 35.525440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520880, 34.876457, 35.498413>,  <25.199377, 34.642773, 35.453369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520880, 34.876457, 35.498413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464688, 0.498224, 0.732009,
		0.371541, -0.640683, 0.671924,
		0.803755, 0.584207, 0.112607,
		25.762007, 35.051720, 35.532196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324177, 34.704144, 36.222912>,  <25.199377, 34.642773, 35.453369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324177, 34.704144, 36.222912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459660, 35.016380, 36.012791>,  <25.540949, 35.203724, 35.886719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459660, 35.016380, 36.012791>,  <25.324177, 34.704144, 36.222912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459660, 35.016380, 36.012791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484953, 0.623269, 0.613479,
		0.806286, 0.046959, 0.589659,
		0.338708, 0.780596, -0.525306,
		25.561272, 35.250561, 35.855198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805971, 35.218609, 36.546703>,  <25.324177, 34.704144, 36.222912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805971, 35.218609, 36.546703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580038, 35.414120, 36.280754>,  <25.444479, 35.531425, 36.121185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580038, 35.414120, 36.280754>,  <25.805971, 35.218609, 36.546703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580038, 35.414120, 36.280754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255669, 0.662407, 0.704167,
		0.784600, 0.567724, -0.249183,
		-0.564833, 0.488781, -0.664874,
		25.410587, 35.560753, 36.081291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684244, 35.966534, 36.702576>,  <25.805971, 35.218609, 36.546703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684244, 35.966534, 36.702576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368498, 35.884129, 36.471245>,  <25.179050, 35.834686, 36.332447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368498, 35.884129, 36.471245>,  <25.684244, 35.966534, 36.702576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368498, 35.884129, 36.471245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554204, 0.644393, 0.526893,
		0.264120, 0.736421, -0.622836,
		-0.789366, -0.206014, -0.578324,
		25.131687, 35.822323, 36.297749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405289, 35.619431, 36.669704>,  <25.684244, 35.966534, 36.702576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405289, 35.619431, 36.669704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706318, 35.857609, 36.782192>,  <26.886934, 36.000515, 36.849686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706318, 35.857609, 36.782192>,  <26.405289, 35.619431, 36.669704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706318, 35.857609, 36.782192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578099, -0.392892, -0.715149,
		-0.315338, 0.700775, -0.639903,
		0.752571, 0.595441, 0.281224,
		26.932089, 36.036240, 36.866558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538748, 36.137585, 36.190502>,  <26.405289, 35.619431, 36.669704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538748, 36.137585, 36.190502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859734, 35.997669, 36.383873>,  <27.052324, 35.913719, 36.499897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859734, 35.997669, 36.383873>,  <26.538748, 36.137585, 36.190502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859734, 35.997669, 36.383873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442339, -0.195039, -0.875384,
		0.400487, 0.916301, -0.001786,
		0.802463, -0.349790, 0.483426,
		27.100473, 35.892731, 36.528900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015591, 36.190735, 35.589943>,  <26.538748, 36.137585, 36.190502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015591, 36.190735, 35.589943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219023, 36.009705, 35.882935>,  <27.341082, 35.901085, 36.058727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219023, 36.009705, 35.882935>,  <27.015591, 36.190735, 35.589943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219023, 36.009705, 35.882935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560793, -0.471412, -0.680648,
		0.653341, 0.756933, 0.014049,
		0.508582, -0.452574, 0.732476,
		27.371597, 35.873932, 36.102676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771547, 36.242897, 35.483925>,  <27.015591, 36.190735, 35.589943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771547, 36.242897, 35.483925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737732, 35.923832, 35.722782>,  <27.717443, 35.732391, 35.866096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737732, 35.923832, 35.722782>,  <27.771547, 36.242897, 35.483925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737732, 35.923832, 35.722782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578573, -0.527210, -0.622337,
		0.811238, 0.292881, 0.506077,
		-0.084538, -0.797666, 0.597146,
		27.712370, 35.684532, 35.901924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492800, 35.977150, 35.615990>,  <27.771547, 36.242897, 35.483925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492800, 35.977150, 35.615990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216549, 35.697041, 35.688274>,  <28.050798, 35.528976, 35.731644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216549, 35.697041, 35.688274>,  <28.492800, 35.977150, 35.615990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216549, 35.697041, 35.688274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529186, -0.659625, -0.533720,
		0.492948, -0.272973, 0.826128,
		-0.690626, -0.700272, 0.180707,
		28.009361, 35.486958, 35.742485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900936, 35.320965, 35.690685>,  <28.492800, 35.977150, 35.615990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900936, 35.320965, 35.690685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531603, 35.190586, 35.609478>,  <28.310003, 35.112358, 35.560753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531603, 35.190586, 35.609478>,  <28.900936, 35.320965, 35.690685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531603, 35.190586, 35.609478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383989, -0.787868, -0.481474,
		-0.003020, -0.522518, 0.852623,
		-0.923333, -0.325944, -0.203020,
		28.254602, 35.092804, 35.548573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909576, 34.569839, 35.918819>,  <28.900936, 35.320965, 35.690685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909576, 34.569839, 35.918819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624763, 34.642548, 35.647537>,  <28.453875, 34.686172, 35.484768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624763, 34.642548, 35.647537>,  <28.909576, 34.569839, 35.918819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624763, 34.642548, 35.647537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399709, -0.689188, -0.604362,
		-0.577269, -0.701411, 0.418069,
		-0.712034, 0.181774, -0.678208,
		28.411154, 34.697079, 35.444077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696720, 33.900192, 35.646061>,  <28.909576, 34.569839, 35.918819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696720, 33.900192, 35.646061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572340, 34.165180, 35.373463>,  <28.497711, 34.324173, 35.209904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572340, 34.165180, 35.373463>,  <28.696720, 33.900192, 35.646061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572340, 34.165180, 35.373463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470401, -0.515789, -0.716020,
		-0.825853, -0.543224, -0.151243,
		-0.310950, 0.662472, -0.681499,
		28.479055, 34.363922, 35.169014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564419, 33.486343, 35.038727>,  <28.696720, 33.900192, 35.646061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564419, 33.486343, 35.038727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585365, 33.861076, 34.900391>,  <28.597933, 34.085915, 34.817390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585365, 33.861076, 34.900391>,  <28.564419, 33.486343, 35.038727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585365, 33.861076, 34.900391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516862, -0.321745, -0.793306,
		-0.854466, -0.137210, -0.501061,
		0.052365, 0.936832, -0.345839,
		28.601074, 34.142124, 34.796638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313751, 33.414749, 34.376888>,  <28.564419, 33.486343, 35.038727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313751, 33.414749, 34.376888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520151, 33.757343, 34.371475>,  <28.643991, 33.962898, 34.368225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520151, 33.757343, 34.371475>,  <28.313751, 33.414749, 34.376888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520151, 33.757343, 34.371475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271129, -0.178295, -0.945886,
		-0.812547, 0.484407, -0.324217,
		0.516000, 0.856482, -0.013536,
		28.674952, 34.014286, 34.367416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217295, 33.749081, 33.682838>,  <28.313751, 33.414749, 34.376888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217295, 33.749081, 33.682838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556858, 33.909298, 33.820778>,  <28.760595, 34.005428, 33.903542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556858, 33.909298, 33.820778>,  <28.217295, 33.749081, 33.682838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556858, 33.909298, 33.820778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445045, -0.189733, -0.875178,
		-0.285120, 0.896418, -0.339326,
		0.848906, 0.400546, 0.344849,
		28.811529, 34.029461, 33.924232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430761, 34.205853, 33.166737>,  <28.217295, 33.749081, 33.682838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430761, 34.205853, 33.166737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766541, 34.136852, 33.372871>,  <28.968008, 34.095451, 33.496552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766541, 34.136852, 33.372871>,  <28.430761, 34.205853, 33.166737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766541, 34.136852, 33.372871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525367, 0.015060, -0.850743,
		0.138994, 0.984894, 0.103269,
		0.839447, -0.172502, 0.515337,
		29.018375, 34.085102, 33.527473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965487, 34.604836, 32.804855>,  <28.430761, 34.205853, 33.166737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965487, 34.604836, 32.804855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169376, 34.335415, 33.018963>,  <29.291710, 34.173763, 33.147427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169376, 34.335415, 33.018963>,  <28.965487, 34.604836, 32.804855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169376, 34.335415, 33.018963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645769, -0.111562, -0.755339,
		0.568474, 0.730673, 0.378092,
		0.509725, -0.673551, 0.535266,
		29.322294, 34.133350, 33.179543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689173, 34.870251, 32.824337>,  <28.965487, 34.604836, 32.804855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689173, 34.870251, 32.824337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661812, 34.475544, 32.883133>,  <29.645395, 34.238720, 32.918411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661812, 34.475544, 32.883133>,  <29.689173, 34.870251, 32.824337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661812, 34.475544, 32.883133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794932, -0.142934, -0.589622,
		0.602831, 0.076517, 0.794191,
		-0.068400, -0.986770, 0.146991,
		29.641293, 34.179512, 32.927231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408110, 34.642914, 32.882927>,  <29.689173, 34.870251, 32.824337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408110, 34.642914, 32.882927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214739, 34.301517, 32.805103>,  <30.098717, 34.096680, 32.758408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214739, 34.301517, 32.805103>,  <30.408110, 34.642914, 32.882927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214739, 34.301517, 32.805103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741962, -0.281554, -0.608456,
		0.464532, -0.438501, 0.769368,
		-0.483427, -0.853489, -0.194561,
		30.069710, 34.045471, 32.746735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911575, 34.144962, 32.982224>,  <30.408110, 34.642914, 32.882927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911575, 34.144962, 32.982224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628275, 33.956478, 32.771950>,  <30.458296, 33.843388, 32.645786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628275, 33.956478, 32.771950>,  <30.911575, 34.144962, 32.982224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628275, 33.956478, 32.771950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699463, -0.367568, -0.612899,
		0.095577, -0.801784, 0.589922,
		-0.708249, -0.471207, -0.525687,
		30.415800, 33.815117, 32.614243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130215, 33.466572, 32.875648>,  <30.911575, 34.144962, 32.982224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130215, 33.466572, 32.875648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871580, 33.531021, 32.577396>,  <30.716400, 33.569691, 32.398445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871580, 33.531021, 32.577396>,  <31.130215, 33.466572, 32.875648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871580, 33.531021, 32.577396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636770, -0.424232, -0.643856,
		-0.420038, -0.891110, 0.171730,
		-0.646600, 0.161091, -0.745626,
		30.677605, 33.579357, 32.353706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133228, 32.861809, 32.478123>,  <31.130215, 33.466572, 32.875648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133228, 32.861809, 32.478123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019215, 33.159180, 32.236107>,  <30.950806, 33.337601, 32.090897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019215, 33.159180, 32.236107>,  <31.133228, 32.861809, 32.478123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019215, 33.159180, 32.236107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601240, -0.352934, -0.716902,
		-0.746503, -0.568115, -0.346379,
		-0.285034, 0.743427, -0.605039,
		30.933704, 33.382206, 32.054596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847948, 32.651348, 31.822350>,  <31.133228, 32.861809, 32.478123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847948, 32.651348, 31.822350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014736, 33.013199, 31.787033>,  <31.114809, 33.230309, 31.765842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014736, 33.013199, 31.787033>,  <30.847948, 32.651348, 31.822350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014736, 33.013199, 31.787033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742677, -0.395092, -0.540678,
		-0.523993, 0.159874, -0.836583,
		0.416968, 0.904623, -0.088290,
		31.139826, 33.284584, 31.760546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426132, 32.710487, 31.184252>,  <30.847948, 32.651348, 31.822350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426132, 32.710487, 31.184252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549860, 33.053593, 31.348476>,  <31.624096, 33.259457, 31.447012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549860, 33.053593, 31.348476>,  <31.426132, 32.710487, 31.184252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549860, 33.053593, 31.348476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925929, -0.173262, -0.335614,
		-0.216743, 0.483963, -0.847822,
		0.309320, 0.857765, 0.410561,
		31.642656, 33.310921, 31.471645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806927, 33.001213, 30.709126>,  <31.426132, 32.710487, 31.184252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806927, 33.001213, 30.709126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932957, 33.175831, 31.046209>,  <32.008575, 33.280602, 31.248459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932957, 33.175831, 31.046209>,  <31.806927, 33.001213, 30.709126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932957, 33.175831, 31.046209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928415, -0.325998, -0.178243,
		0.196910, 0.838543, -0.508008,
		0.315074, 0.436545, 0.842708,
		32.027477, 33.306793, 31.299023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484943, 33.396465, 30.547146>,  <31.806927, 33.001213, 30.709126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484943, 33.396465, 30.547146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451221, 33.266605, 30.923975>,  <32.430988, 33.188690, 31.150072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451221, 33.266605, 30.923975>,  <32.484943, 33.396465, 30.547146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451221, 33.266605, 30.923975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912877, -0.404152, -0.057582,
		0.399434, 0.855140, 0.330435,
		-0.084305, -0.324647, 0.942071,
		32.425930, 33.169212, 31.206596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883373, 33.712383, 31.130159>,  <32.484943, 33.396465, 30.547146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883373, 33.712383, 31.130159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842861, 33.314632, 31.117785>,  <32.818554, 33.075981, 31.110359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842861, 33.314632, 31.117785>,  <32.883373, 33.712383, 31.130159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842861, 33.314632, 31.117785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990640, -0.097939, -0.095083,
		0.091518, -0.040278, 0.994989,
		-0.101278, -0.994377, -0.030938,
		32.812477, 33.016319, 31.108503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356407, 33.406113, 31.595236>,  <32.883373, 33.712383, 31.130159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356407, 33.406113, 31.595236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270996, 33.125053, 31.323738>,  <33.219749, 32.956417, 31.160839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270996, 33.125053, 31.323738>,  <33.356407, 33.406113, 31.595236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270996, 33.125053, 31.323738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960877, -0.276512, -0.016032,
		-0.176417, -0.655614, 0.734198,
		-0.213526, -0.702646, -0.678746,
		33.206940, 32.914261, 31.120113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038773, 33.189011, 31.643431>,  <33.356407, 33.406113, 31.595236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038773, 33.189011, 31.643431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436626, 33.204216, 31.681906>,  <34.675339, 33.213341, 31.704990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436626, 33.204216, 31.681906>,  <34.038773, 33.189011, 31.643431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436626, 33.204216, 31.681906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093411, -0.729457, -0.677618,
		0.044407, 0.682969, -0.729096,
		0.994637, 0.038015, 0.096190,
		34.735016, 33.215622, 31.710762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803936, 33.435738, 30.935810>,  <34.038773, 33.189011, 31.643431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803936, 33.435738, 30.935810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004036, 33.611401, 30.637310>,  <34.124096, 33.716797, 30.458210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004036, 33.611401, 30.637310>,  <33.803936, 33.435738, 30.935810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004036, 33.611401, 30.637310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835966, 0.469535, -0.284074,
		0.225637, 0.765948, 0.602006,
		0.500249, 0.439159, -0.746251,
		34.154110, 33.743149, 30.413435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758987, 34.208439, 30.925257>,  <33.803936, 33.435738, 30.935810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758987, 34.208439, 30.925257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807636, 34.071949, 30.552425>,  <33.836826, 33.990055, 30.328726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807636, 34.071949, 30.552425>,  <33.758987, 34.208439, 30.925257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807636, 34.071949, 30.552425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653561, 0.679224, -0.333937,
		0.747039, 0.649783, -0.140408,
		0.121618, -0.341229, -0.932080,
		33.844120, 33.969582, 30.272802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919422, 34.764778, 30.437294>,  <33.758987, 34.208439, 30.925257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919422, 34.764778, 30.437294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725262, 34.463428, 30.259840>,  <33.608765, 34.282619, 30.153368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725262, 34.463428, 30.259840>,  <33.919422, 34.764778, 30.437294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725262, 34.463428, 30.259840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712867, 0.634810, -0.298054,
		0.506172, 0.171579, -0.845192,
		-0.485397, -0.753376, -0.443637,
		33.579643, 34.237415, 30.126749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136745, 35.435913, 30.190628>,  <33.919422, 34.764778, 30.437294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136745, 35.435913, 30.190628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302658, 35.746754, 30.379974>,  <34.402206, 35.933258, 30.493582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302658, 35.746754, 30.379974>,  <34.136745, 35.435913, 30.190628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302658, 35.746754, 30.379974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874451, 0.196590, 0.443496,
		0.251583, -0.597885, 0.761078,
		0.414780, 0.777101, 0.473362,
		34.427094, 35.979885, 30.521984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856705, 35.384480, 30.844585>,  <34.136745, 35.435913, 30.190628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856705, 35.384480, 30.844585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982037, 35.753853, 30.755951>,  <34.057236, 35.975475, 30.702770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982037, 35.753853, 30.755951>,  <33.856705, 35.384480, 30.844585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982037, 35.753853, 30.755951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780928, 0.383320, 0.493171,
		0.540348, 0.018520, 0.841238,
		0.313329, 0.923430, -0.221589,
		34.076035, 36.030884, 30.689474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152325, 35.842136, 31.446577>,  <33.856705, 35.384480, 30.844585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152325, 35.842136, 31.446577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959145, 36.045090, 31.161110>,  <33.843235, 36.166862, 30.989830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959145, 36.045090, 31.161110>,  <34.152325, 35.842136, 31.446577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959145, 36.045090, 31.161110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629609, 0.365216, 0.685719,
		0.608563, 0.780501, 0.143069,
		-0.482953, 0.507381, -0.713667,
		33.814259, 36.197304, 30.947010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167618, 36.530621, 31.635921>,  <34.152325, 35.842136, 31.446577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167618, 36.530621, 31.635921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851391, 36.488003, 31.394707>,  <33.661655, 36.462433, 31.249977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851391, 36.488003, 31.394707>,  <34.167618, 36.530621, 31.635921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851391, 36.488003, 31.394707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601769, 0.317674, 0.732774,
		0.113497, 0.942195, -0.315257,
		-0.790565, -0.106544, -0.603039,
		33.614220, 36.456039, 31.213795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834332, 37.159584, 31.682642>,  <34.167618, 36.530621, 31.635921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834332, 37.159584, 31.682642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568844, 36.877113, 31.584023>,  <33.409550, 36.707630, 31.524851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568844, 36.877113, 31.584023>,  <33.834332, 37.159584, 31.682642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568844, 36.877113, 31.584023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557398, 0.247161, 0.792603,
		-0.498784, 0.663490, -0.557670,
		-0.663718, -0.706181, -0.246548,
		33.369728, 36.665260, 31.510057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247993, 37.505196, 31.790522>,  <33.834332, 37.159584, 31.682642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247993, 37.505196, 31.790522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159466, 37.115673, 31.811377>,  <33.106350, 36.881958, 31.823891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159466, 37.115673, 31.811377>,  <33.247993, 37.505196, 31.790522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159466, 37.115673, 31.811377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505036, 0.160189, 0.848102,
		-0.834240, 0.161367, -0.527261,
		-0.221317, -0.973807, 0.052140,
		33.093071, 36.823532, 31.827019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560310, 37.535164, 31.855516>,  <33.247993, 37.505196, 31.790522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560310, 37.535164, 31.855516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668671, 37.173191, 31.986788>,  <32.733688, 36.956005, 32.065552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668671, 37.173191, 31.986788>,  <32.560310, 37.535164, 31.855516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668671, 37.173191, 31.986788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498880, 0.159579, 0.851853,
		-0.823243, -0.394492, -0.408224,
		0.270905, -0.904936, 0.328176,
		32.749943, 36.901711, 32.085239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853661, 37.289112, 32.034515>,  <32.560310, 37.535164, 31.855516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853661, 37.289112, 32.034515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105267, 37.043900, 32.225735>,  <32.256229, 36.896770, 32.340466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105267, 37.043900, 32.225735>,  <31.853661, 37.289112, 32.034515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105267, 37.043900, 32.225735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606169, -0.001765, 0.795334,
		-0.486725, -0.790053, -0.372714,
		0.629013, -0.613036, 0.478046,
		32.293972, 36.859989, 32.369148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487226, 36.732758, 32.244129>,  <31.853661, 37.289112, 32.034515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487226, 36.732758, 32.244129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799776, 36.730999, 32.493748>,  <31.987305, 36.729942, 32.643520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799776, 36.730999, 32.493748>,  <31.487226, 36.732758, 32.244129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799776, 36.730999, 32.493748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624061, -0.002115, 0.781373,
		-0.002115, -0.999988, -0.004396,
		-0.781373, 0.004396, -0.624049,
		32.034187, 36.729679, 32.680962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331554, 36.260319, 32.761875>,  <31.487226, 36.732758, 32.244129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331554, 36.260319, 32.761875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622089, 36.488518, 32.915218>,  <31.796410, 36.625439, 33.007225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622089, 36.488518, 32.915218>,  <31.331554, 36.260319, 32.761875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622089, 36.488518, 32.915218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409205, -0.089213, 0.908071,
		0.552257, -0.816436, 0.168654,
		0.726336, 0.570502, 0.383359,
		31.839991, 36.659668, 33.030228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559835, 35.855309, 33.239914>,  <31.331554, 36.260319, 32.761875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559835, 35.855309, 33.239914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683285, 36.226383, 33.323952>,  <31.757355, 36.449028, 33.374374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683285, 36.226383, 33.323952>,  <31.559835, 35.855309, 33.239914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683285, 36.226383, 33.323952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361879, -0.089753, 0.927894,
		0.879656, -0.362401, 0.308012,
		0.308625, 0.927691, 0.210097,
		31.775873, 36.504692, 33.386982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981100, 35.802235, 33.827545>,  <31.559835, 35.855309, 33.239914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981100, 35.802235, 33.827545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867764, 36.185703, 33.817226>,  <31.799761, 36.415783, 33.811035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867764, 36.185703, 33.817226>,  <31.981100, 35.802235, 33.827545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867764, 36.185703, 33.817226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217999, -0.038191, 0.975201,
		0.933913, 0.281940, 0.219811,
		-0.283343, 0.958672, -0.025796,
		31.782761, 36.473305, 33.809486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159512, 36.016220, 34.410019>,  <31.981100, 35.802235, 33.827545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159512, 36.016220, 34.410019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883440, 36.289436, 34.314426>,  <31.717798, 36.453365, 34.257069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883440, 36.289436, 34.314426>,  <32.159512, 36.016220, 34.410019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883440, 36.289436, 34.314426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332600, -0.006120, 0.943048,
		0.642677, 0.730356, 0.231402,
		-0.690177, 0.683040, -0.238983,
		31.676388, 36.494347, 34.242733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215935, 36.621330, 34.994526>,  <32.159512, 36.016220, 34.410019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215935, 36.621330, 34.994526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849642, 36.654350, 34.837238>,  <31.629868, 36.674164, 34.742867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849642, 36.654350, 34.837238>,  <32.215935, 36.621330, 34.994526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849642, 36.654350, 34.837238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389373, 0.059149, 0.919179,
		0.099140, 0.994830, -0.022020,
		-0.915729, 0.082553, -0.393223,
		31.574923, 36.679115, 34.719273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897509, 37.009098, 35.441849>,  <32.215935, 36.621330, 34.994526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897509, 37.009098, 35.441849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577351, 36.883671, 35.237480>,  <31.385256, 36.808414, 35.114857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577351, 36.883671, 35.237480>,  <31.897509, 37.009098, 35.441849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577351, 36.883671, 35.237480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565779, 0.113413, 0.816720,
		-0.198153, 0.942768, -0.268186,
		-0.800393, -0.313570, -0.510925,
		31.337233, 36.789600, 35.084202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444254, 37.510303, 35.570740>,  <31.897509, 37.009098, 35.441849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444254, 37.510303, 35.570740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256390, 37.168423, 35.482285>,  <31.143671, 36.963295, 35.429211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256390, 37.168423, 35.482285>,  <31.444254, 37.510303, 35.570740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256390, 37.168423, 35.482285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455796, 0.020232, 0.889854,
		-0.756088, 0.518721, -0.399072,
		-0.469660, -0.854704, -0.221134,
		31.115492, 36.912010, 35.415943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753845, 37.647202, 35.722008>,  <31.444254, 37.510303, 35.570740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753845, 37.647202, 35.722008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775663, 37.247944, 35.711159>,  <30.788755, 37.008389, 35.704651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775663, 37.247944, 35.711159>,  <30.753845, 37.647202, 35.722008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775663, 37.247944, 35.711159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542380, -0.052426, 0.838496,
		-0.838361, -0.031027, -0.544232,
		0.054547, -0.998143, -0.027123,
		30.792028, 36.948502, 35.703022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069260, 37.469124, 35.791340>,  <30.753845, 37.647202, 35.722008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069260, 37.469124, 35.791340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284040, 37.142982, 35.877953>,  <30.412909, 36.947300, 35.929920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284040, 37.142982, 35.877953>,  <30.069260, 37.469124, 35.791340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284040, 37.142982, 35.877953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454379, -0.063258, 0.888560,
		-0.710790, -0.575501, -0.404445,
		0.536952, -0.815351, 0.216532,
		30.445126, 36.898376, 35.942913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616638, 36.853279, 35.964329>,  <30.069260, 37.469124, 35.791340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616638, 36.853279, 35.964329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974981, 36.811398, 36.137062>,  <30.189987, 36.786270, 36.240700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974981, 36.811398, 36.137062>,  <29.616638, 36.853279, 35.964329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974981, 36.811398, 36.137062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444196, -0.186118, 0.876385,
		-0.011391, -0.976933, -0.213244,
		0.895858, -0.104705, 0.431830,
		30.243738, 36.779987, 36.266609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602320, 36.147732, 36.327465>,  <29.616638, 36.853279, 35.964329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602320, 36.147732, 36.327465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874605, 36.386852, 36.496822>,  <30.037977, 36.530323, 36.598438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874605, 36.386852, 36.496822>,  <29.602320, 36.147732, 36.327465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874605, 36.386852, 36.496822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443017, -0.124362, 0.887846,
		0.583409, -0.791940, 0.180181,
		0.680713, 0.597800, 0.423396,
		30.078819, 36.566193, 36.623840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757526, 35.749725, 36.930496>,  <29.602320, 36.147732, 36.327465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757526, 35.749725, 36.930496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939119, 36.093040, 37.026192>,  <30.048075, 36.299030, 37.083611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939119, 36.093040, 37.026192>,  <29.757526, 35.749725, 36.930496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939119, 36.093040, 37.026192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362612, -0.067292, 0.929508,
		0.813888, -0.508731, 0.280678,
		0.453982, 0.858292, 0.239240,
		30.075314, 36.350529, 37.097965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792065, 35.648132, 37.613735>,  <29.757526, 35.749725, 36.930496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792065, 35.648132, 37.613735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857475, 36.041611, 37.583813>,  <29.896721, 36.277699, 37.565857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857475, 36.041611, 37.583813>,  <29.792065, 35.648132, 37.613735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857475, 36.041611, 37.583813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611256, 0.160548, 0.774978,
		0.774355, -0.081000, 0.627545,
		0.163524, 0.983699, -0.074810,
		29.906532, 36.336720, 37.561371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988119, 35.855621, 38.267349>,  <29.792065, 35.648132, 37.613735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988119, 35.855621, 38.267349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884953, 36.202553, 38.097065>,  <29.823053, 36.410709, 37.994896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884953, 36.202553, 38.097065>,  <29.988119, 35.855621, 38.267349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884953, 36.202553, 38.097065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682295, 0.148462, 0.715844,
		0.684071, 0.475085, 0.553481,
		-0.257916, 0.867325, -0.425707,
		29.807577, 36.462749, 37.969353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191942, 36.538750, 38.695217>,  <29.988119, 35.855621, 38.267349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191942, 36.538750, 38.695217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882280, 36.601513, 38.449921>,  <29.696484, 36.639172, 38.302742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882280, 36.601513, 38.449921>,  <30.191942, 36.538750, 38.695217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882280, 36.601513, 38.449921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603069, 0.111552, 0.789850,
		0.192340, 0.981294, 0.008266,
		-0.774153, 0.156905, -0.613244,
		29.650034, 36.648586, 38.265949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753162, 37.153976, 38.733917>,  <30.191942, 36.538750, 38.695217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753162, 37.153976, 38.733917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746634, 37.549397, 38.673920>,  <30.742716, 37.786648, 38.637920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746634, 37.549397, 38.673920>,  <30.753162, 37.153976, 38.733917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746634, 37.549397, 38.673920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796194, 0.103593, 0.596107,
		0.604822, -0.109692, -0.788770,
		-0.016323, 0.988553, -0.149991,
		30.741737, 37.845963, 38.628922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436296, 37.374107, 38.417339>,  <30.753162, 37.153976, 38.733917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436296, 37.374107, 38.417339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238920, 37.671253, 38.598301>,  <31.120495, 37.849541, 38.706879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238920, 37.671253, 38.598301>,  <31.436296, 37.374107, 38.417339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238920, 37.671253, 38.598301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811155, 0.205308, 0.547609,
		0.313918, 0.637181, -0.703887,
		-0.493439, 0.742866, 0.452402,
		31.090889, 37.894112, 38.734020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882483, 37.981228, 38.411572>,  <31.436296, 37.374107, 38.417339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882483, 37.981228, 38.411572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629236, 37.985813, 38.721161>,  <31.477287, 37.988564, 38.906914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629236, 37.985813, 38.721161>,  <31.882483, 37.981228, 38.411572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629236, 37.985813, 38.721161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770031, 0.111157, 0.628249,
		-0.078831, 0.993737, -0.079201,
		-0.633118, 0.011462, 0.773971,
		31.439301, 37.989250, 38.953354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003265, 38.595055, 38.885098>,  <31.882483, 37.981228, 38.411572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003265, 38.595055, 38.885098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837416, 38.286819, 39.078709>,  <31.737906, 38.101879, 39.194874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837416, 38.286819, 39.078709>,  <32.003265, 38.595055, 38.885098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837416, 38.286819, 39.078709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649285, 0.122159, 0.750670,
		-0.637586, 0.625515, 0.449683,
		-0.414623, -0.770590, 0.484024,
		31.713030, 38.055641, 39.223915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775267, 38.683628, 39.640144>,  <32.003265, 38.595055, 38.885098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775267, 38.683628, 39.640144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893120, 38.307419, 39.572487>,  <31.963831, 38.081692, 39.531895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893120, 38.307419, 39.572487>,  <31.775267, 38.683628, 39.640144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893120, 38.307419, 39.572487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738886, 0.111971, 0.664463,
		-0.606004, -0.320747, 0.727929,
		0.294632, -0.940523, -0.169140,
		31.981510, 38.025261, 39.521744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647711, 38.236694, 40.283791>,  <31.775267, 38.683628, 39.640144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647711, 38.236694, 40.283791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948996, 38.104843, 40.056099>,  <32.129765, 38.025730, 39.919483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948996, 38.104843, 40.056099>,  <31.647711, 38.236694, 40.283791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948996, 38.104843, 40.056099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617206, 0.054947, 0.784880,
		-0.227445, -0.942509, 0.244838,
		0.753210, -0.329632, -0.569225,
		32.174957, 38.005955, 39.885330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950716, 37.742695, 40.687405>,  <31.647711, 38.236694, 40.283791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950716, 37.742695, 40.687405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228550, 37.809174, 40.407425>,  <32.395248, 37.849060, 40.239437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228550, 37.809174, 40.407425>,  <31.950716, 37.742695, 40.687405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228550, 37.809174, 40.407425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715013, -0.052042, 0.697172,
		0.079442, -0.984718, -0.154982,
		0.694583, 0.166199, -0.699952,
		32.436924, 37.859032, 40.197441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327774, 37.245533, 40.626808>,  <31.950716, 37.742695, 40.687405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327774, 37.245533, 40.626808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574081, 37.514793, 40.463005>,  <32.721867, 37.676350, 40.364723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574081, 37.514793, 40.463005>,  <32.327774, 37.245533, 40.626808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574081, 37.514793, 40.463005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673435, -0.179827, 0.717041,
		0.409038, -0.717307, -0.564056,
		0.615771, 0.673152, -0.409503,
		32.758812, 37.716740, 40.340153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055103, 36.949493, 40.484501>,  <32.327774, 37.245533, 40.626808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055103, 36.949493, 40.484501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098549, 37.346470, 40.507339>,  <33.124615, 37.584656, 40.521042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098549, 37.346470, 40.507339>,  <33.055103, 36.949493, 40.484501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098549, 37.346470, 40.507339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772460, -0.120411, 0.623543,
		0.625707, -0.023616, -0.779701,
		0.108610, 0.992443, 0.057100,
		33.131130, 37.644203, 40.524471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729179, 37.004322, 40.375591>,  <33.055103, 36.949493, 40.484501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729179, 37.004322, 40.375591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650288, 37.359604, 40.541573>,  <33.602955, 37.572773, 40.641163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650288, 37.359604, 40.541573>,  <33.729179, 37.004322, 40.375591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650288, 37.359604, 40.541573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744640, -0.139587, 0.652707,
		0.637662, 0.437724, -0.633865,
		-0.197227, 0.888208, 0.414956,
		33.591118, 37.626068, 40.666058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291992, 37.388645, 40.403275>,  <33.729179, 37.004322, 40.375591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291992, 37.388645, 40.403275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077168, 37.579109, 40.681797>,  <33.948273, 37.693386, 40.848911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077168, 37.579109, 40.681797>,  <34.291992, 37.388645, 40.403275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077168, 37.579109, 40.681797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725649, -0.160110, 0.669178,
		0.430120, 0.864661, -0.259534,
		-0.537058, 0.476157, 0.696307,
		33.916050, 37.721958, 40.890690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729782, 37.657658, 40.834682>,  <34.291992, 37.388645, 40.403275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729782, 37.657658, 40.834682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415028, 37.712826, 41.075275>,  <34.226173, 37.745926, 41.219631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415028, 37.712826, 41.075275>,  <34.729782, 37.657658, 40.834682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415028, 37.712826, 41.075275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584588, -0.145576, 0.798163,
		0.197647, 0.979686, 0.033924,
		-0.786888, 0.137923, 0.601485,
		34.178963, 37.754204, 41.255722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906639, 38.147316, 41.414211>,  <34.729782, 37.657658, 40.834682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906639, 38.147316, 41.414211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595299, 37.926823, 41.534420>,  <34.408497, 37.794525, 41.606544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595299, 37.926823, 41.534420>,  <34.906639, 38.147316, 41.414211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595299, 37.926823, 41.534420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462015, -0.178784, 0.868665,
		-0.425108, 0.814971, 0.393834,
		-0.778348, -0.551233, 0.300526,
		34.361794, 37.761452, 41.624577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815502, 38.439861, 42.071007>,  <34.906639, 38.147316, 41.414211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815502, 38.439861, 42.071007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618168, 38.092007, 42.078407>,  <34.499767, 37.883293, 42.082848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618168, 38.092007, 42.078407>,  <34.815502, 38.439861, 42.071007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618168, 38.092007, 42.078407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408654, -0.212945, 0.887500,
		-0.767865, 0.445400, 0.460436,
		-0.493340, -0.869640, 0.018501,
		34.470165, 37.831116, 42.083958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461620, 38.409660, 42.694584>,  <34.815502, 38.439861, 42.071007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461620, 38.409660, 42.694584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472172, 38.030167, 42.568596>,  <34.478500, 37.802471, 42.493004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472172, 38.030167, 42.568596>,  <34.461620, 38.409660, 42.694584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472172, 38.030167, 42.568596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368829, -0.283611, 0.885172,
		-0.929123, -0.139514, 0.342442,
		0.026374, -0.948736, -0.314967,
		34.480083, 37.745544, 42.474106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257832, 38.016533, 43.263916>,  <34.461620, 38.409660, 42.694584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257832, 38.016533, 43.263916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425320, 37.737728, 43.031075>,  <34.525810, 37.570446, 42.891369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425320, 37.737728, 43.031075>,  <34.257832, 38.016533, 43.263916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425320, 37.737728, 43.031075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269631, -0.516672, 0.812618,
		-0.867166, -0.497209, -0.028402,
		0.418716, -0.697017, -0.582103,
		34.550934, 37.528622, 42.856445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056862, 37.372883, 43.531166>,  <34.257832, 38.016533, 43.263916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056862, 37.372883, 43.531166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383556, 37.288975, 43.316154>,  <34.579575, 37.238632, 43.187149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383556, 37.288975, 43.316154>,  <34.056862, 37.372883, 43.531166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383556, 37.288975, 43.316154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364741, -0.534152, 0.762657,
		-0.447098, -0.818950, -0.359754,
		0.816742, -0.209766, -0.537523,
		34.628578, 37.226044, 43.154896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134014, 36.713356, 43.553497>,  <34.056862, 37.372883, 43.531166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134014, 36.713356, 43.553497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506573, 36.799076, 43.435799>,  <34.730106, 36.850506, 43.365181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506573, 36.799076, 43.435799>,  <34.134014, 36.713356, 43.553497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506573, 36.799076, 43.435799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350729, -0.744680, 0.567839,
		-0.097430, -0.632082, -0.768752,
		0.931395, 0.214298, -0.294244,
		34.785992, 36.863365, 43.347527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339775, 36.114105, 43.091316>,  <34.134014, 36.713356, 43.553497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339775, 36.114105, 43.091316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683300, 36.273426, 43.220184>,  <34.889416, 36.369019, 43.297504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683300, 36.273426, 43.220184>,  <34.339775, 36.114105, 43.091316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683300, 36.273426, 43.220184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302295, -0.901740, 0.309003,
		0.413593, -0.167984, -0.894831,
		0.858813, 0.398304, 0.322173,
		34.940945, 36.392918, 43.316837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841045, 35.734745, 42.825665>,  <34.339775, 36.114105, 43.091316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841045, 35.734745, 42.825665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053211, 35.909908, 43.116013>,  <35.180511, 36.015007, 43.290222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053211, 35.909908, 43.116013>,  <34.841045, 35.734745, 42.825665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053211, 35.909908, 43.116013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228062, -0.898393, 0.375338,
		0.816485, -0.033540, -0.576392,
		0.530415, 0.437911, 0.725875,
		35.212337, 36.041283, 43.333775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548382, 35.513920, 42.748322>,  <34.841045, 35.734745, 42.825665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548382, 35.513920, 42.748322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509663, 35.618797, 43.132381>,  <35.486431, 35.681725, 43.362816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509663, 35.618797, 43.132381>,  <35.548382, 35.513920, 42.748322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509663, 35.618797, 43.132381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388851, -0.878049, 0.278972,
		0.916202, 0.400358, -0.016964,
		-0.096793, 0.262191, 0.960149,
		35.480625, 35.697456, 43.420425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245171, 35.258923, 43.144539>,  <35.548382, 35.513920, 42.748322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245171, 35.258923, 43.144539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982761, 35.364559, 43.427349>,  <35.825314, 35.427940, 43.597034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982761, 35.364559, 43.427349>,  <36.245171, 35.258923, 43.144539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982761, 35.364559, 43.427349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267853, -0.794341, 0.545232,
		0.705610, 0.547065, 0.450371,
		-0.656025, 0.264088, 0.707028,
		35.785954, 35.443787, 43.639458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692089, 35.287792, 43.850613>,  <36.245171, 35.258923, 43.144539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692089, 35.287792, 43.850613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309349, 35.190899, 43.914818>,  <36.079704, 35.132763, 43.953342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309349, 35.190899, 43.914818>,  <36.692089, 35.287792, 43.850613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309349, 35.190899, 43.914818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289892, -0.757310, 0.585188,
		-0.020193, 0.606468, 0.794852,
		-0.956846, -0.242238, 0.160517,
		36.022297, 35.118229, 43.962975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759911, 34.947773, 44.434658>,  <36.692089, 35.287792, 43.850613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759911, 34.947773, 44.434658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386234, 34.862720, 44.320061>,  <36.162029, 34.811687, 44.251305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386234, 34.862720, 44.320061>,  <36.759911, 34.947773, 44.434658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386234, 34.862720, 44.320061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020713, -0.769322, 0.638525,
		-0.356174, 0.602438, 0.714289,
		-0.934190, -0.212631, -0.286490,
		36.105976, 34.798931, 44.234112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344486, 35.035473, 45.013733>,  <36.759911, 34.947773, 44.434658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344486, 35.035473, 45.013733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164696, 34.782642, 44.761242>,  <36.056820, 34.630943, 44.609745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164696, 34.782642, 44.761242>,  <36.344486, 35.035473, 45.013733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164696, 34.782642, 44.761242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022683, -0.698331, 0.715416,
		-0.893005, 0.335880, 0.299545,
		-0.449475, -0.632075, -0.631232,
		36.029854, 34.593021, 44.571873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823261, 34.712437, 45.464397>,  <36.344486, 35.035473, 45.013733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823261, 34.712437, 45.464397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850285, 34.485931, 45.135818>,  <35.866501, 34.350029, 44.938671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850285, 34.485931, 45.135818>,  <35.823261, 34.712437, 45.464397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850285, 34.485931, 45.135818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033646, -0.821572, 0.569112,
		-0.997148, -0.066088, -0.036454,
		0.067561, -0.566262, -0.821452,
		35.870552, 34.316051, 44.889381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269535, 34.181797, 45.404598>,  <35.823261, 34.712437, 45.464397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269535, 34.181797, 45.404598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583912, 34.061172, 45.188690>,  <35.772537, 33.988796, 45.059147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583912, 34.061172, 45.188690>,  <35.269535, 34.181797, 45.404598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583912, 34.061172, 45.188690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098470, -0.800802, 0.590779,
		-0.610405, -0.517471, -0.599692,
		0.785945, -0.301563, -0.539768,
		35.819695, 33.970703, 45.026760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185780, 33.480858, 45.413960>,  <35.269535, 34.181797, 45.404598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185780, 33.480858, 45.413960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558918, 33.494415, 45.270485>,  <35.782799, 33.502552, 45.184399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558918, 33.494415, 45.270485>,  <35.185780, 33.480858, 45.413960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558918, 33.494415, 45.270485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193591, -0.886792, 0.419670,
		-0.303853, -0.460925, -0.833800,
		0.932843, 0.033898, -0.358685,
		35.838772, 33.504585, 45.162880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403603, 32.658176, 45.119740>,  <35.185780, 33.480858, 45.413960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403603, 32.658176, 45.119740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743645, 32.840313, 45.225559>,  <35.947670, 32.949596, 45.289051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743645, 32.840313, 45.225559>,  <35.403603, 32.658176, 45.119740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743645, 32.840313, 45.225559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322494, -0.847282, 0.422032,
		0.416317, -0.273456, -0.867123,
		0.850105, 0.455341, 0.264550,
		35.998676, 32.976913, 45.304924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912231, 32.144108, 45.080479>,  <35.403603, 32.658176, 45.119740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912231, 32.144108, 45.080479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091843, 32.429630, 45.295460>,  <36.199612, 32.600945, 45.424450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091843, 32.429630, 45.295460>,  <35.912231, 32.144108, 45.080479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091843, 32.429630, 45.295460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399206, -0.698401, 0.594029,
		0.799378, -0.052183, -0.598558,
		0.449032, 0.713802, 0.537455,
		36.226551, 32.643772, 45.456696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592628, 32.022919, 45.024960>,  <35.912231, 32.144108, 45.080479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592628, 32.022919, 45.024960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541840, 32.238731, 45.357891>,  <36.511368, 32.368221, 45.557652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541840, 32.238731, 45.357891>,  <36.592628, 32.022919, 45.024960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541840, 32.238731, 45.357891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493025, -0.693799, 0.524947,
		0.860700, 0.477015, -0.177911,
		-0.126973, 0.539536, 0.832333,
		36.503746, 32.400593, 45.607590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120152, 31.875668, 45.326874>,  <36.592628, 32.022919, 45.024960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120152, 31.875668, 45.326874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912872, 32.042683, 45.625439>,  <36.788506, 32.142891, 45.804577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912872, 32.042683, 45.625439>,  <37.120152, 31.875668, 45.326874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912872, 32.042683, 45.625439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497759, -0.562458, 0.660210,
		0.695487, 0.713655, 0.083634,
		-0.518202, 0.417538, 0.746410,
		36.757412, 32.167946, 45.849361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589523, 31.853662, 45.825771>,  <37.120152, 31.875668, 45.326874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589523, 31.853662, 45.825771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228199, 31.869587, 45.996620>,  <37.011402, 31.879143, 46.099129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228199, 31.869587, 45.996620>,  <37.589523, 31.853662, 45.825771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228199, 31.869587, 45.996620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223625, -0.805990, 0.548062,
		0.366079, 0.590589, 0.719160,
		-0.903315, 0.039812, 0.427126,
		36.957203, 31.881531, 46.124760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640301, 31.785408, 46.567875>,  <37.589523, 31.853662, 45.825771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640301, 31.785408, 46.567875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268551, 31.665154, 46.482201>,  <37.045502, 31.593000, 46.430798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268551, 31.665154, 46.482201>,  <37.640301, 31.785408, 46.567875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268551, 31.665154, 46.482201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097387, -0.759379, 0.643319,
		-0.356052, 0.577028, 0.735028,
		-0.929378, -0.300637, -0.214183,
		36.989738, 31.574963, 46.417946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419773, 31.686684, 47.183949>,  <37.640301, 31.785408, 46.567875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419773, 31.686684, 47.183949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165337, 31.483183, 46.951897>,  <37.012672, 31.361082, 46.812664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165337, 31.483183, 46.951897>,  <37.419773, 31.686684, 47.183949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165337, 31.483183, 46.951897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095511, -0.694152, 0.713464,
		-0.765676, 0.509240, 0.392955,
		-0.636095, -0.508751, -0.580134,
		36.974506, 31.330557, 46.777855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829483, 31.558165, 47.571472>,  <37.419773, 31.686684, 47.183949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829483, 31.558165, 47.571472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820786, 31.274248, 47.289841>,  <36.815567, 31.103899, 47.120861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820786, 31.274248, 47.289841>,  <36.829483, 31.558165, 47.571472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820786, 31.274248, 47.289841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141904, -0.694922, 0.704944,
		-0.989642, 0.115238, -0.085613,
		-0.021742, -0.709791, -0.704076,
		36.814262, 31.061310, 47.078617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238922, 31.105677, 47.819798>,  <36.829483, 31.558165, 47.571472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238922, 31.105677, 47.819798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484726, 30.910351, 47.571949>,  <36.632210, 30.793156, 47.423241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484726, 30.910351, 47.571949>,  <36.238922, 31.105677, 47.819798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484726, 30.910351, 47.571949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096493, -0.826039, 0.555291,
		-0.782986, -0.281443, -0.554728,
		0.614509, -0.488313, -0.619620,
		36.669079, 30.763857, 47.386063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942596, 30.487947, 47.727463>,  <36.238922, 31.105677, 47.819798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942596, 30.487947, 47.727463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317223, 30.413532, 47.608646>,  <36.542000, 30.368883, 47.537357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317223, 30.413532, 47.608646>,  <35.942596, 30.487947, 47.727463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317223, 30.413532, 47.608646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007299, -0.836962, 0.547212,
		-0.350413, -0.514669, -0.782513,
		0.936567, -0.186039, -0.297038,
		36.598194, 30.357721, 47.519535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967285, 29.792233, 47.388340>,  <35.942596, 30.487947, 47.727463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967285, 29.792233, 47.388340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337585, 29.886608, 47.506535>,  <36.559765, 29.943233, 47.577454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337585, 29.886608, 47.506535>,  <35.967285, 29.792233, 47.388340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337585, 29.886608, 47.506535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050361, -0.851420, 0.522061,
		0.374762, -0.468418, -0.800086,
		0.925752, 0.235941, 0.295490,
		36.615311, 29.957390, 47.595181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223892, 29.126305, 47.498013>,  <35.967285, 29.792233, 47.388340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223892, 29.126305, 47.498013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473164, 29.368448, 47.696079>,  <36.622726, 29.513735, 47.814919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473164, 29.368448, 47.696079>,  <36.223892, 29.126305, 47.498013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473164, 29.368448, 47.696079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096056, -0.569101, 0.816638,
		0.776160, -0.556473, -0.296502,
		0.623177, 0.605361, 0.495166,
		36.660118, 29.550056, 47.844627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766979, 28.732912, 47.759686>,  <36.223892, 29.126305, 47.498013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766979, 28.732912, 47.759686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830250, 29.061054, 47.979504>,  <36.868214, 29.257940, 48.111393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830250, 29.061054, 47.979504>,  <36.766979, 28.732912, 47.759686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830250, 29.061054, 47.979504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259930, -0.571514, 0.778337,
		0.952584, 0.019729, -0.303635,
		0.158176, 0.820355, 0.549543,
		36.877701, 29.307161, 48.144367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458073, 28.659634, 47.952572>,  <36.766979, 28.732912, 47.759686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458073, 28.659634, 47.952572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234001, 28.856718, 48.218937>,  <37.099556, 28.974968, 48.378754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234001, 28.856718, 48.218937>,  <37.458073, 28.659634, 47.952572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234001, 28.856718, 48.218937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183541, -0.710073, 0.679786,
		0.807781, 0.503025, 0.307336,
		-0.560181, 0.492709, 0.665909,
		37.065948, 29.004530, 48.418709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657902, 28.367529, 48.546627>,  <37.458073, 28.659634, 47.952572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657902, 28.367529, 48.546627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352795, 28.575056, 48.701038>,  <37.169731, 28.699574, 48.793686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352795, 28.575056, 48.701038>,  <37.657902, 28.367529, 48.546627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352795, 28.575056, 48.701038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106338, -0.689444, 0.716491,
		0.637875, 0.505463, 0.581053,
		-0.762763, 0.518820, 0.386029,
		37.123966, 28.730701, 48.816849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703846, 28.334297, 49.282825>,  <37.657902, 28.367529, 48.546627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703846, 28.334297, 49.282825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318058, 28.427910, 49.233807>,  <37.086586, 28.484077, 49.204395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318058, 28.427910, 49.233807>,  <37.703846, 28.334297, 49.282825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318058, 28.427910, 49.233807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230399, -0.518209, 0.823636,
		0.129250, 0.822611, 0.553720,
		-0.964474, 0.234032, -0.122551,
		37.028717, 28.498119, 49.197041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464245, 28.431957, 49.974297>,  <37.703846, 28.334297, 49.282825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464245, 28.431957, 49.974297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138939, 28.365734, 49.751156>,  <36.943756, 28.326000, 49.617271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138939, 28.365734, 49.751156>,  <37.464245, 28.431957, 49.974297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138939, 28.365734, 49.751156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407784, -0.521744, 0.749330,
		-0.415114, 0.836883, 0.356801,
		-0.813261, -0.165560, -0.557850,
		36.894962, 28.316067, 49.583801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892277, 28.413267, 50.471535>,  <37.464245, 28.431957, 49.974297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892277, 28.413267, 50.471535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759880, 28.245247, 50.133541>,  <36.680443, 28.144436, 49.930744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759880, 28.245247, 50.133541>,  <36.892277, 28.413267, 50.471535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759880, 28.245247, 50.133541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557062, -0.635799, 0.534268,
		-0.761660, 0.647549, -0.023548,
		-0.330992, -0.420048, -0.844987,
		36.660583, 28.119232, 49.880043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110859, 28.439533, 50.402081>,  <36.892277, 28.413267, 50.471535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110859, 28.439533, 50.402081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223709, 28.125248, 50.181877>,  <36.291420, 27.936676, 50.049755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223709, 28.125248, 50.181877>,  <36.110859, 28.439533, 50.402081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223709, 28.125248, 50.181877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606752, -0.590612, 0.532004,
		-0.743138, 0.183926, -0.643363,
		0.282129, -0.785715, -0.550504,
		36.308350, 27.889534, 50.016727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533119, 28.034464, 49.906887>,  <36.110859, 28.439533, 50.402081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533119, 28.034464, 49.906887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830555, 27.816238, 50.061512>,  <36.009018, 27.685303, 50.154289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830555, 27.816238, 50.061512>,  <35.533119, 28.034464, 49.906887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830555, 27.816238, 50.061512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654248, -0.474374, 0.589007,
		-0.137965, -0.690890, -0.709674,
		0.743590, -0.545565, 0.386566,
		36.053631, 27.652569, 50.177483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397015, 27.405184, 49.794628>,  <35.533119, 28.034464, 49.906887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397015, 27.405184, 49.794628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615265, 27.416756, 50.129639>,  <35.746216, 27.423698, 50.330647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615265, 27.416756, 50.129639>,  <35.397015, 27.405184, 49.794628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615265, 27.416756, 50.129639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668490, -0.587677, 0.455804,
		0.505383, -0.808578, -0.301312,
		0.545627, 0.028932, 0.837529,
		35.778954, 27.425436, 50.380898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244724, 26.993940, 49.102665>,  <35.397015, 27.405184, 49.794628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244724, 26.993940, 49.102665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473995, 26.758419, 48.874706>,  <35.611557, 26.617105, 48.737930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473995, 26.758419, 48.874706>,  <35.244724, 26.993940, 49.102665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473995, 26.758419, 48.874706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651879, -0.093761, 0.752504,
		-0.496512, -0.802818, 0.330089,
		0.573174, -0.588805, -0.569894,
		35.645947, 26.581778, 48.703739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259441, 26.403755, 49.517471>,  <35.244724, 26.993940, 49.102665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259441, 26.403755, 49.517471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565552, 26.489992, 49.274864>,  <35.749218, 26.541735, 49.129299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565552, 26.489992, 49.274864>,  <35.259441, 26.403755, 49.517471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565552, 26.489992, 49.274864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589617, 0.143266, 0.794875,
		0.258262, -0.965917, -0.017479,
		0.765279, 0.215592, -0.606521,
		35.795135, 26.554668, 49.092907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801067, 26.225508, 49.937016>,  <35.259441, 26.403755, 49.517471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801067, 26.225508, 49.937016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971981, 26.441927, 49.647270>,  <36.074528, 26.571777, 49.473423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971981, 26.441927, 49.647270>,  <35.801067, 26.225508, 49.937016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971981, 26.441927, 49.647270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823715, 0.097331, 0.558587,
		0.372724, -0.835341, -0.404081,
		0.427282, 0.541047, -0.724361,
		36.100166, 26.604240, 49.429962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356316, 25.884983, 49.938274>,  <35.801067, 26.225508, 49.937016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356316, 25.884983, 49.938274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371593, 26.254524, 49.785938>,  <36.380760, 26.476250, 49.694538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371593, 26.254524, 49.785938>,  <36.356316, 25.884983, 49.938274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371593, 26.254524, 49.785938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887924, 0.143454, 0.437050,
		0.458403, -0.354848, -0.814831,
		0.038196, 0.923853, -0.380837,
		36.383053, 26.531679, 49.671688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864723, 25.995476, 49.442589>,  <36.356316, 25.884983, 49.938274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864723, 25.995476, 49.442589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809502, 26.279116, 49.719173>,  <36.776371, 26.449299, 49.885124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809502, 26.279116, 49.719173>,  <36.864723, 25.995476, 49.442589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809502, 26.279116, 49.719173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971057, -0.040490, 0.235392,
		0.194913, 0.703946, -0.682986,
		-0.138049, 0.709099, 0.691463,
		36.768085, 26.491846, 49.926613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094826, 25.472839, 48.914825>,  <36.864723, 25.995476, 49.442589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094826, 25.472839, 48.914825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090675, 25.101486, 48.766232>,  <37.088184, 24.878674, 48.677074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090675, 25.101486, 48.766232>,  <37.094826, 25.472839, 48.914825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090675, 25.101486, 48.766232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586922, 0.295122, -0.753940,
		0.809577, -0.225850, 0.541827,
		-0.010372, -0.928383, -0.371481,
		37.087563, 24.822971, 48.654789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741165, 25.139530, 48.782967>,  <37.094826, 25.472839, 48.914825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741165, 25.139530, 48.782967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426655, 25.136192, 48.535843>,  <37.237949, 25.134190, 48.387569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426655, 25.136192, 48.535843>,  <37.741165, 25.139530, 48.782967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426655, 25.136192, 48.535843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417718, 0.729597, -0.541479,
		0.455275, -0.683826, -0.570181,
		-0.786280, -0.008347, -0.617814,
		37.190769, 25.133688, 48.350498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948956, 25.080236, 47.969765>,  <37.741165, 25.139530, 48.782967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948956, 25.080236, 47.969765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610878, 25.262499, 48.081497>,  <37.408031, 25.371857, 48.148537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610878, 25.262499, 48.081497>,  <37.948956, 25.080236, 47.969765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610878, 25.262499, 48.081497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286560, 0.827516, -0.482804,
		-0.451142, -0.328019, -0.829985,
		-0.845195, 0.455654, 0.279331,
		37.357319, 25.399195, 48.165295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509823, 25.216450, 47.341595>,  <37.948956, 25.080236, 47.969765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509823, 25.216450, 47.341595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452152, 25.489010, 47.628624>,  <37.417549, 25.652546, 47.800842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452152, 25.489010, 47.628624>,  <37.509823, 25.216450, 47.341595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452152, 25.489010, 47.628624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189812, 0.730725, -0.655754,
		-0.971177, 0.041661, -0.234689,
		-0.144174, 0.681400, 0.717571,
		37.408901, 25.693430, 47.843895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779785, 25.617094, 47.138489>,  <37.509823, 25.216450, 47.341595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779785, 25.617094, 47.138489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968689, 25.846210, 47.406483>,  <37.082031, 25.983681, 47.567280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968689, 25.846210, 47.406483>,  <36.779785, 25.617094, 47.138489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968689, 25.846210, 47.406483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018671, 0.753416, -0.657279,
		-0.881261, 0.322916, 0.345114,
		0.472261, 0.572791, 0.669986,
		37.110367, 26.018047, 47.607479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408966, 26.219048, 47.381401>,  <36.779785, 25.617094, 47.138489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408966, 26.219048, 47.381401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799633, 26.303270, 47.398319>,  <37.034035, 26.353804, 47.408470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799633, 26.303270, 47.398319>,  <36.408966, 26.219048, 47.381401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799633, 26.303270, 47.398319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084005, 0.555774, -0.827078,
		-0.197653, 0.804227, 0.560493,
		0.976666, 0.210558, 0.042292,
		37.092632, 26.366438, 47.411007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471416, 26.961111, 47.159012>,  <36.408966, 26.219048, 47.381401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471416, 26.961111, 47.159012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863800, 26.884844, 47.144196>,  <37.099228, 26.839085, 47.135303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863800, 26.884844, 47.144196>,  <36.471416, 26.961111, 47.159012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863800, 26.884844, 47.144196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085767, 0.596326, -0.798147,
		0.174270, 0.779770, 0.601323,
		0.980956, -0.190667, -0.037043,
		37.158089, 26.827644, 47.133083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880867, 27.698713, 47.021450>,  <36.471416, 26.961111, 47.159012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880867, 27.698713, 47.021450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142494, 27.408377, 46.936272>,  <37.299473, 27.234175, 46.885166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142494, 27.408377, 46.936272>,  <36.880867, 27.698713, 47.021450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142494, 27.408377, 46.936272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254075, 0.475966, -0.841963,
		0.712485, 0.496601, 0.495734,
		0.654072, -0.725840, -0.212945,
		37.338715, 27.190624, 46.872387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604431, 28.065258, 46.971478>,  <36.880867, 27.698713, 47.021450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604431, 28.065258, 46.971478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550507, 27.729967, 46.760120>,  <37.518150, 27.528793, 46.633305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550507, 27.729967, 46.760120>,  <37.604431, 28.065258, 46.971478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550507, 27.729967, 46.760120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151057, 0.509643, -0.847022,
		0.979289, -0.194009, 0.057913,
		-0.134815, -0.838227, -0.528394,
		37.510063, 27.478498, 46.601601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893005, 28.228926, 46.367664>,  <37.604431, 28.065258, 46.971478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893005, 28.228926, 46.367664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754845, 27.870174, 46.257168>,  <37.671947, 27.654924, 46.190868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754845, 27.870174, 46.257168>,  <37.893005, 28.228926, 46.367664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754845, 27.870174, 46.257168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066783, 0.270121, -0.960508,
		0.936076, -0.350208, -0.033403,
		-0.345401, -0.896878, -0.276241,
		37.651226, 27.601110, 46.174294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422825, 27.950045, 45.853241>,  <37.893005, 28.228926, 46.367664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422825, 27.950045, 45.853241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078156, 27.758974, 45.784718>,  <37.871353, 27.644331, 45.743603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078156, 27.758974, 45.784718>,  <38.422825, 27.950045, 45.853241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078156, 27.758974, 45.784718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050575, 0.416728, -0.907623,
		0.504943, -0.773408, -0.383240,
		-0.861670, -0.477681, -0.171309,
		37.819653, 27.615671, 45.733326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446548, 27.602716, 45.148914>,  <38.422825, 27.950045, 45.853241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446548, 27.602716, 45.148914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061649, 27.648918, 45.247494>,  <37.830711, 27.676640, 45.306641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061649, 27.648918, 45.247494>,  <38.446548, 27.602716, 45.148914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061649, 27.648918, 45.247494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219608, 0.205419, -0.953717,
		-0.160786, -0.971834, -0.172298,
		-0.962247, 0.115506, 0.246451,
		37.772976, 27.683569, 45.321430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130302, 27.263163, 44.611488>,  <38.446548, 27.602716, 45.148914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130302, 27.263163, 44.611488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830208, 27.486860, 44.752560>,  <37.650150, 27.621078, 44.837204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830208, 27.486860, 44.752560>,  <38.130302, 27.263163, 44.611488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830208, 27.486860, 44.752560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208164, 0.306501, -0.928830,
		-0.627540, -0.770262, -0.113535,
		-0.750241, 0.559244, 0.352683,
		37.605137, 27.654633, 44.858364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536034, 27.232651, 44.166874>,  <38.130302, 27.263163, 44.611488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536034, 27.232651, 44.166874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469398, 27.575741, 44.361420>,  <37.429417, 27.781595, 44.478149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469398, 27.575741, 44.361420>,  <37.536034, 27.232651, 44.166874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469398, 27.575741, 44.361420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245209, 0.441726, -0.862989,
		-0.955050, -0.263028, 0.136735,
		-0.166591, 0.857726, 0.486367,
		37.419422, 27.833059, 44.507328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894882, 27.494425, 43.851864>,  <37.536034, 27.232651, 44.166874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894882, 27.494425, 43.851864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058823, 27.805746, 44.042137>,  <37.157188, 27.992538, 44.156300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058823, 27.805746, 44.042137>,  <36.894882, 27.494425, 43.851864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058823, 27.805746, 44.042137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247611, 0.596839, -0.763198,
		-0.877902, 0.195014, 0.437331,
		0.409851, 0.778301, 0.475679,
		37.181778, 28.039236, 44.184841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449738, 28.033041, 43.734589>,  <36.894882, 27.494425, 43.851864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449738, 28.033041, 43.734589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793888, 28.216442, 43.823608>,  <37.000378, 28.326483, 43.877018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793888, 28.216442, 43.823608>,  <36.449738, 28.033041, 43.734589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793888, 28.216442, 43.823608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216485, 0.724082, -0.654858,
		-0.461398, 0.515246, 0.722242,
		0.860375, 0.458505, 0.222548,
		37.052002, 28.353994, 43.890373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214996, 28.696487, 43.745388>,  <36.449738, 28.033041, 43.734589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214996, 28.696487, 43.745388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613567, 28.713640, 43.716290>,  <36.852711, 28.723932, 43.698830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613567, 28.713640, 43.716290>,  <36.214996, 28.696487, 43.745388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613567, 28.713640, 43.716290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076887, 0.816935, -0.571581,
		0.034921, 0.575133, 0.817314,
		0.996428, 0.042881, -0.072748,
		36.912495, 28.726505, 43.694466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407505, 29.262690, 44.107292>,  <36.214996, 28.696487, 43.745388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407505, 29.262690, 44.107292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703537, 29.193233, 43.847404>,  <36.881157, 29.151560, 43.691471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703537, 29.193233, 43.847404>,  <36.407505, 29.262690, 44.107292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703537, 29.193233, 43.847404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057597, 0.946180, -0.318475,
		0.670051, 0.273118, 0.690245,
		0.740077, -0.173639, -0.649720,
		36.925560, 29.141142, 43.652489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025333, 29.810701, 44.229416>,  <36.407505, 29.262690, 44.107292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025333, 29.810701, 44.229416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993969, 29.669920, 43.856323>,  <36.975151, 29.585451, 43.632469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993969, 29.669920, 43.856323>,  <37.025333, 29.810701, 44.229416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993969, 29.669920, 43.856323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058847, 0.935611, -0.348093,
		0.995183, 0.027594, -0.094073,
		-0.078411, -0.351952, -0.932728,
		36.970448, 29.564335, 43.576504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415089, 30.344923, 43.751534>,  <37.025333, 29.810701, 44.229416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415089, 30.344923, 43.751534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152401, 30.123808, 43.546345>,  <36.994789, 29.991138, 43.423229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152401, 30.123808, 43.546345>,  <37.415089, 30.344923, 43.751534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152401, 30.123808, 43.546345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304956, 0.816784, -0.489761,
		0.689723, -0.165203, -0.704976,
		-0.656723, -0.552786, -0.512974,
		36.955383, 29.957972, 43.392452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553295, 30.641830, 43.159443>,  <37.415089, 30.344923, 43.751534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553295, 30.641830, 43.159443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222115, 30.422853, 43.110775>,  <37.023407, 30.291468, 43.081573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222115, 30.422853, 43.110775>,  <37.553295, 30.641830, 43.159443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222115, 30.422853, 43.110775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416388, 0.745434, -0.520529,
		0.375658, -0.380310, -0.845131,
		-0.827951, -0.547443, -0.121672,
		36.973728, 30.258621, 43.074272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384499, 30.664406, 42.399750>,  <37.553295, 30.641830, 43.159443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384499, 30.664406, 42.399750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044945, 30.523666, 42.557533>,  <36.841213, 30.439222, 42.652203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044945, 30.523666, 42.557533>,  <37.384499, 30.664406, 42.399750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044945, 30.523666, 42.557533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520065, 0.689356, -0.504302,
		-0.094485, -0.633238, -0.768168,
		-0.848884, -0.351849, 0.394459,
		36.790279, 30.418112, 42.675873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891499, 30.535275, 41.835182>,  <37.384499, 30.664406, 42.399750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891499, 30.535275, 41.835182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681828, 30.595171, 42.170521>,  <36.556026, 30.631109, 42.371723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681828, 30.595171, 42.170521>,  <36.891499, 30.535275, 41.835182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681828, 30.595171, 42.170521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501584, 0.741272, -0.446015,
		-0.688227, -0.654289, -0.313448,
		-0.524173, 0.149739, 0.838344,
		36.524574, 30.640093, 42.422024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182037, 30.515629, 41.627728>,  <36.891499, 30.535275, 41.835182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182037, 30.515629, 41.627728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189636, 30.704536, 41.980228>,  <36.194195, 30.817881, 42.191727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189636, 30.704536, 41.980228>,  <36.182037, 30.515629, 41.627728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189636, 30.704536, 41.980228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456506, 0.788266, -0.412599,
		-0.889517, -0.394459, 0.230567,
		0.018995, 0.472269, 0.881249,
		36.195335, 30.846218, 42.244602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469276, 30.803286, 41.615982>,  <36.182037, 30.515629, 41.627728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469276, 30.803286, 41.615982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694351, 30.997244, 41.883793>,  <35.829395, 31.113619, 42.044479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694351, 30.997244, 41.883793>,  <35.469276, 30.803286, 41.615982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694351, 30.997244, 41.883793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391839, 0.869585, -0.300474,
		-0.727908, -0.093275, 0.679301,
		0.562683, 0.484894, 0.669526,
		35.863155, 31.142712, 42.084652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972660, 31.273455, 41.955780>,  <35.469276, 30.803286, 41.615982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972660, 31.273455, 41.955780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336319, 31.412020, 42.048264>,  <35.554512, 31.495159, 42.103752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336319, 31.412020, 42.048264>,  <34.972660, 31.273455, 41.955780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336319, 31.412020, 42.048264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290698, 0.925348, -0.243363,
		-0.298251, 0.154041, 0.941975,
		0.909143, 0.346414, 0.231207,
		35.609062, 31.515944, 42.117626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918839, 31.821365, 42.523621>,  <34.972660, 31.273455, 41.955780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918839, 31.821365, 42.523621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236206, 31.869207, 42.284897>,  <35.426628, 31.897913, 42.141663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236206, 31.869207, 42.284897>,  <34.918839, 31.821365, 42.523621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236206, 31.869207, 42.284897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345257, 0.895940, -0.279444,
		0.501285, 0.427769, 0.752149,
		0.793418, 0.119603, -0.596811,
		35.474232, 31.905088, 42.105854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093918, 32.577595, 42.697083>,  <34.918839, 31.821365, 42.523621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093918, 32.577595, 42.697083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288193, 32.456154, 42.369194>,  <35.404758, 32.383289, 42.172462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288193, 32.456154, 42.369194>,  <35.093918, 32.577595, 42.697083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288193, 32.456154, 42.369194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193095, 0.877321, -0.439344,
		0.852540, 0.371666, 0.367479,
		0.485686, -0.303600, -0.819717,
		35.433899, 32.365074, 42.123280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353367, 33.207348, 42.473415>,  <35.093918, 32.577595, 42.697083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353367, 33.207348, 42.473415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408062, 32.972878, 42.153992>,  <35.440880, 32.832195, 41.962337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408062, 32.972878, 42.153992>,  <35.353367, 33.207348, 42.473415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408062, 32.972878, 42.153992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013241, 0.807140, -0.590210,
		0.990518, 0.070132, 0.118132,
		0.136742, -0.586178, -0.798559,
		35.449085, 32.797024, 41.914425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873192, 33.507702, 42.170952>,  <35.353367, 33.207348, 42.473415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873192, 33.507702, 42.170952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659203, 33.299446, 41.904800>,  <35.530807, 33.174492, 41.745110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659203, 33.299446, 41.904800>,  <35.873192, 33.507702, 42.170952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659203, 33.299446, 41.904800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152967, 0.834232, -0.529773,
		0.830894, -0.181644, -0.525947,
		-0.534991, -0.520637, -0.665372,
		35.498711, 33.143253, 41.705185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896744, 33.900063, 41.500336>,  <35.873192, 33.507702, 42.170952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896744, 33.900063, 41.500336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600227, 33.637234, 41.445572>,  <35.422318, 33.479538, 41.412712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600227, 33.637234, 41.445572>,  <35.896744, 33.900063, 41.500336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600227, 33.637234, 41.445572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378492, 0.577694, -0.723197,
		0.554278, -0.484286, -0.676937,
		-0.741296, -0.657067, -0.136905,
		35.377842, 33.440113, 41.404499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959900, 33.792820, 40.852783>,  <35.896744, 33.900063, 41.500336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959900, 33.792820, 40.852783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583847, 33.689030, 40.941170>,  <35.358215, 33.626755, 40.994202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583847, 33.689030, 40.941170>,  <35.959900, 33.792820, 40.852783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583847, 33.689030, 40.941170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333003, 0.561352, -0.757623,
		0.072548, -0.785847, -0.614151,
		-0.940131, -0.259478, 0.220964,
		35.301807, 33.611187, 41.007458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716770, 33.664803, 40.270649>,  <35.959900, 33.792820, 40.852783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716770, 33.664803, 40.270649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400307, 33.732296, 40.505798>,  <35.210430, 33.772793, 40.646889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400307, 33.732296, 40.505798>,  <35.716770, 33.664803, 40.270649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400307, 33.732296, 40.505798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443156, 0.504301, -0.741143,
		-0.421522, -0.846882, -0.324206,
		-0.791158, 0.168734, 0.587875,
		35.162960, 33.782917, 40.682159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158928, 33.561325, 39.894226>,  <35.716770, 33.664803, 40.270649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158928, 33.561325, 39.894226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022778, 33.811985, 40.174641>,  <34.941090, 33.962383, 40.342888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022778, 33.811985, 40.174641>,  <35.158928, 33.561325, 39.894226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022778, 33.811985, 40.174641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409791, 0.572166, -0.710421,
		-0.846297, -0.529085, 0.062048,
		-0.340371, 0.626654, 0.701037,
		34.920666, 33.999981, 40.384953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539562, 33.768074, 39.568489>,  <35.158928, 33.561325, 39.894226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539562, 33.768074, 39.568489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588894, 34.033440, 39.863693>,  <34.618492, 34.192661, 40.040817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588894, 34.033440, 39.863693>,  <34.539562, 33.768074, 39.568489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588894, 34.033440, 39.863693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383370, 0.717806, -0.581189,
		-0.915324, -0.211257, 0.342859,
		0.123326, 0.663419, 0.738015,
		34.625893, 34.232464, 40.085098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842655, 34.100376, 39.549931>,  <34.539562, 33.768074, 39.568489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842655, 34.100376, 39.549931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077843, 34.356506, 39.747627>,  <34.218956, 34.510185, 39.866245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077843, 34.356506, 39.747627>,  <33.842655, 34.100376, 39.549931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077843, 34.356506, 39.747627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421673, 0.764065, -0.488258,
		-0.690280, 0.078670, 0.719253,
		0.587968, 0.640324, 0.494246,
		34.254234, 34.548603, 39.895901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357231, 34.624996, 39.739033>,  <33.842655, 34.100376, 39.549931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357231, 34.624996, 39.739033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721863, 34.788231, 39.758984>,  <33.940643, 34.886173, 39.770954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721863, 34.788231, 39.758984>,  <33.357231, 34.624996, 39.739033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721863, 34.788231, 39.758984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359195, 0.849570, -0.386277,
		-0.200006, 0.334207, 0.921034,
		0.911579, 0.408088, 0.049874,
		33.995338, 34.910656, 39.773945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196976, 35.238590, 39.943264>,  <33.357231, 34.624996, 39.739033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196976, 35.238590, 39.943264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567486, 35.275711, 39.797165>,  <33.789791, 35.297981, 39.709507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567486, 35.275711, 39.797165>,  <33.196976, 35.238590, 39.943264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567486, 35.275711, 39.797165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306574, 0.749195, -0.587128,
		0.219154, 0.655816, 0.722410,
		0.926274, 0.092800, -0.365245,
		33.845367, 35.303551, 39.687592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425320, 35.860191, 39.997452>,  <33.196976, 35.238590, 39.943264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425320, 35.860191, 39.997452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647224, 35.718136, 39.696491>,  <33.780369, 35.632900, 39.515915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647224, 35.718136, 39.696491>,  <33.425320, 35.860191, 39.997452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647224, 35.718136, 39.696491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229359, 0.804005, -0.548608,
		0.799770, 0.476918, 0.364578,
		0.554763, -0.355141, -0.752404,
		33.813652, 35.611595, 39.470772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504452, 36.531582, 39.662598>,  <33.425320, 35.860191, 39.997452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504452, 36.531582, 39.662598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632645, 36.231361, 39.431438>,  <33.709560, 36.051231, 39.292744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632645, 36.231361, 39.431438>,  <33.504452, 36.531582, 39.662598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632645, 36.231361, 39.431438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240518, 0.525607, -0.816020,
		0.916209, 0.400518, -0.012071,
		0.320486, -0.750548, -0.577898,
		33.728790, 36.006199, 39.258068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994328, 36.876808, 39.305267>,  <33.504452, 36.531582, 39.662598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994328, 36.876808, 39.305267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839176, 36.584366, 39.080753>,  <33.746086, 36.408901, 38.946045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839176, 36.584366, 39.080753>,  <33.994328, 36.876808, 39.305267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839176, 36.584366, 39.080753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009213, 0.612004, -0.790801,
		0.921665, -0.301562, -0.244117,
		-0.387876, -0.731103, -0.561284,
		33.722813, 36.365036, 38.912369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376804, 36.968803, 38.726917>,  <33.994328, 36.876808, 39.305267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376804, 36.968803, 38.726917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058037, 36.759796, 38.605667>,  <33.866776, 36.634392, 38.532917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058037, 36.759796, 38.605667>,  <34.376804, 36.968803, 38.726917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058037, 36.759796, 38.605667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048976, 0.444252, -0.894562,
		0.602092, -0.727743, -0.328444,
		-0.796923, -0.522523, -0.303123,
		33.818958, 36.603039, 38.514729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941349, 37.127357, 38.274864>,  <34.376804, 36.968803, 38.726917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941349, 37.127357, 38.274864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111584, 37.192062, 37.918728>,  <35.213722, 37.230885, 37.705044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111584, 37.192062, 37.918728>,  <34.941349, 37.127357, 38.274864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111584, 37.192062, 37.918728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441491, -0.895967, 0.048254,
		-0.789914, -0.413615, -0.452724,
		0.425585, 0.161758, -0.890344,
		35.239258, 37.240589, 37.651627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938286, 36.500835, 37.885826>,  <34.941349, 37.127357, 38.274864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938286, 36.500835, 37.885826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242191, 36.733723, 37.770042>,  <35.424534, 36.873455, 37.700573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242191, 36.733723, 37.770042>,  <34.938286, 36.500835, 37.885826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242191, 36.733723, 37.770042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606505, -0.795047, -0.007226,
		-0.234338, -0.170067, -0.957164,
		0.759761, 0.582218, -0.289457,
		35.470119, 36.908386, 37.683205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350597, 36.104225, 37.409058>,  <34.938286, 36.500835, 37.885826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350597, 36.104225, 37.409058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597111, 36.394207, 37.532104>,  <35.745018, 36.568195, 37.605934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597111, 36.394207, 37.532104>,  <35.350597, 36.104225, 37.409058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597111, 36.394207, 37.532104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705569, -0.681791, 0.193219,
		0.349808, 0.097969, -0.931685,
		0.616285, 0.724957, 0.307620,
		35.781998, 36.611694, 37.624390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018513, 36.096855, 37.132687>,  <35.350597, 36.104225, 37.409058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018513, 36.096855, 37.132687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058693, 36.266815, 37.492546>,  <36.082802, 36.368790, 37.708462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058693, 36.266815, 37.492546>,  <36.018513, 36.096855, 37.132687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058693, 36.266815, 37.492546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678829, -0.690337, 0.250251,
		0.727393, 0.585571, -0.357778,
		0.100448, 0.424900, 0.899650,
		36.088829, 36.394287, 37.762440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607197, 35.777927, 37.334766>,  <36.018513, 36.096855, 37.132687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607197, 35.777927, 37.334766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498722, 35.978447, 37.663437>,  <36.433636, 36.098759, 37.860641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498722, 35.978447, 37.663437>,  <36.607197, 35.777927, 37.334766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498722, 35.978447, 37.663437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609454, -0.571313, 0.549697,
		0.744997, 0.649849, -0.150582,
		-0.271191, 0.501296, 0.821680,
		36.417366, 36.128838, 37.909943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258022, 35.863258, 37.575703>,  <36.607197, 35.777927, 37.334766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258022, 35.863258, 37.575703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995182, 35.916061, 37.872562>,  <36.837479, 35.947742, 38.050678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995182, 35.916061, 37.872562>,  <37.258022, 35.863258, 37.575703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995182, 35.916061, 37.872562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623568, -0.457988, 0.633570,
		0.423534, 0.879102, 0.218628,
		-0.657102, 0.132008, 0.742153,
		36.798050, 35.955666, 38.095207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634930, 36.148338, 38.089722>,  <37.258022, 35.863258, 37.575703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634930, 36.148338, 38.089722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310265, 35.968624, 38.239033>,  <37.115463, 35.860794, 38.328621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310265, 35.968624, 38.239033>,  <37.634930, 36.148338, 38.089722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310265, 35.968624, 38.239033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579163, -0.535934, 0.614284,
		-0.075939, 0.714782, 0.695212,
		-0.811667, -0.449289, 0.373277,
		37.066765, 35.833836, 38.351017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639053, 36.251163, 38.884766>,  <37.634930, 36.148338, 38.089722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639053, 36.251163, 38.884766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441257, 35.923183, 38.769409>,  <37.322578, 35.726395, 38.700195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441257, 35.923183, 38.769409>,  <37.639053, 36.251163, 38.884766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441257, 35.923183, 38.769409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479138, -0.533975, 0.696633,
		-0.725195, 0.206299, 0.656912,
		-0.494490, -0.819946, -0.288390,
		37.292912, 35.677200, 38.682892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577488, 35.948975, 39.562893>,  <37.639053, 36.251163, 38.884766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577488, 35.948975, 39.562893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456955, 35.660564, 39.313309>,  <37.384636, 35.487518, 39.163559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456955, 35.660564, 39.313309>,  <37.577488, 35.948975, 39.562893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456955, 35.660564, 39.313309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318558, -0.692898, 0.646849,
		-0.898733, -0.003853, 0.438478,
		-0.301328, -0.721026, -0.623958,
		37.366558, 35.444256, 39.126122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157688, 35.477947, 39.951878>,  <37.577488, 35.948975, 39.562893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157688, 35.477947, 39.951878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313194, 35.270748, 39.647106>,  <37.406498, 35.146427, 39.464241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313194, 35.270748, 39.647106>,  <37.157688, 35.477947, 39.951878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313194, 35.270748, 39.647106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111435, -0.794477, 0.596983,
		-0.914575, -0.316990, -0.251138,
		0.388761, -0.518000, -0.761932,
		37.429821, 35.115349, 39.418526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912945, 34.871262, 40.057411>,  <37.157688, 35.477947, 39.951878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912945, 34.871262, 40.057411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229382, 34.828796, 39.816444>,  <37.419243, 34.803318, 39.671864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229382, 34.828796, 39.816444>,  <36.912945, 34.871262, 40.057411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229382, 34.828796, 39.816444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303476, -0.786965, 0.537204,
		-0.531110, -0.607796, -0.590344,
		0.791091, -0.106159, -0.602417,
		37.466709, 34.796947, 39.635719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898548, 34.225174, 39.996395>,  <36.912945, 34.871262, 40.057411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898548, 34.225174, 39.996395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266121, 34.326374, 39.875362>,  <37.486664, 34.387093, 39.802742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266121, 34.326374, 39.875362>,  <36.898548, 34.225174, 39.996395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266121, 34.326374, 39.875362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357417, -0.858554, 0.367611,
		-0.166776, -0.445957, -0.879380,
		0.918934, 0.252996, -0.302578,
		37.541801, 34.402271, 39.784588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147312, 33.723049, 39.571880>,  <36.898548, 34.225174, 39.996395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147312, 33.723049, 39.571880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482544, 33.901463, 39.697533>,  <37.683681, 34.008511, 39.772926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482544, 33.901463, 39.697533>,  <37.147312, 33.723049, 39.571880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482544, 33.901463, 39.697533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394296, -0.893176, 0.216256,
		0.377035, -0.057377, -0.924420,
		0.838078, 0.446031, 0.314135,
		37.733967, 34.035271, 39.791775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731949, 33.316193, 39.254272>,  <37.147312, 33.723049, 39.571880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731949, 33.316193, 39.254272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865726, 33.524933, 39.568169>,  <37.945992, 33.650177, 39.756508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865726, 33.524933, 39.568169>,  <37.731949, 33.316193, 39.254272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865726, 33.524933, 39.568169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325624, -0.845393, 0.423414,
		0.884374, 0.113923, -0.452663,
		0.334442, 0.521854, 0.784740,
		37.966061, 33.681488, 39.803589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338745, 32.964268, 39.441196>,  <37.731949, 33.316193, 39.254272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338745, 32.964268, 39.441196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284012, 33.199650, 39.759941>,  <38.251171, 33.340881, 39.951187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284012, 33.199650, 39.759941>,  <38.338745, 32.964268, 39.441196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284012, 33.199650, 39.759941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288061, -0.746031, 0.600382,
		0.947786, 0.311696, -0.067433,
		-0.136830, 0.588458, 0.796866,
		38.242962, 33.376186, 39.999001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978279, 32.988430, 39.878654>,  <38.338745, 32.964268, 39.441196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978279, 32.988430, 39.878654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667912, 33.056568, 40.121616>,  <38.481693, 33.097450, 40.267391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667912, 33.056568, 40.121616>,  <38.978279, 32.988430, 39.878654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667912, 33.056568, 40.121616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277061, -0.772996, 0.570715,
		0.566738, 0.611113, 0.552583,
		-0.775916, 0.170347, 0.607402,
		38.435135, 33.107674, 40.303837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344559, 33.004208, 40.571445>,  <38.978279, 32.988430, 39.878654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344559, 33.004208, 40.571445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951202, 32.971642, 40.636333>,  <38.715187, 32.952103, 40.675266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951202, 32.971642, 40.636333>,  <39.344559, 33.004208, 40.571445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951202, 32.971642, 40.636333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155607, -0.838255, 0.522605,
		0.093439, 0.539167, 0.836999,
		-0.983390, -0.081411, 0.162224,
		38.656185, 32.947220, 40.685001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298187, 32.980476, 41.328815>,  <39.344559, 33.004208, 40.571445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298187, 32.980476, 41.328815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951904, 32.824306, 41.203518>,  <38.744137, 32.730606, 41.128338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951904, 32.824306, 41.203518>,  <39.298187, 32.980476, 41.328815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951904, 32.824306, 41.203518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159357, -0.808208, 0.566926,
		-0.474510, 0.440873, 0.761887,
		-0.865705, -0.390424, -0.313247,
		38.692192, 32.707180, 41.109543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107559, 32.668224, 41.844780>,  <39.298187, 32.980476, 41.328815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107559, 32.668224, 41.844780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876720, 32.502743, 41.563126>,  <38.738216, 32.403454, 41.394135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876720, 32.502743, 41.563126>,  <39.107559, 32.668224, 41.844780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876720, 32.502743, 41.563126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128039, -0.897371, 0.422293,
		-0.806573, 0.153549, 0.570844,
		-0.577102, -0.413701, -0.704135,
		38.703590, 32.378632, 41.351887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671272, 32.274448, 42.230579>,  <39.107559, 32.668224, 41.844780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671272, 32.274448, 42.230579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669304, 32.125206, 41.859470>,  <38.668121, 32.035660, 41.636803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669304, 32.125206, 41.859470>,  <38.671272, 32.274448, 42.230579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669304, 32.125206, 41.859470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078986, -0.925033, 0.371584,
		-0.996863, -0.071452, 0.034023,
		-0.004922, -0.373106, -0.927776,
		38.667828, 32.013275, 41.581139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153622, 31.763113, 42.209694>,  <38.671272, 32.274448, 42.230579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153622, 31.763113, 42.209694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437325, 31.710028, 41.932755>,  <38.607544, 31.678177, 41.766590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437325, 31.710028, 41.932755>,  <38.153622, 31.763113, 42.209694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437325, 31.710028, 41.932755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191901, -0.908682, 0.370770,
		-0.678331, -0.395833, -0.619019,
		0.709254, -0.132714, -0.692348,
		38.650101, 31.670214, 41.725052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022079, 31.073174, 42.028336>,  <38.153622, 31.763113, 42.209694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022079, 31.073174, 42.028336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380665, 31.143581, 41.865677>,  <38.595818, 31.185827, 41.768082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380665, 31.143581, 41.865677>,  <38.022079, 31.073174, 42.028336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380665, 31.143581, 41.865677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285709, -0.931086, 0.226824,
		-0.338700, -0.319524, -0.884979,
		0.896467, 0.176021, -0.406650,
		38.649605, 31.196388, 41.743683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248943, 30.428707, 41.619465>,  <38.022079, 31.073174, 42.028336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248943, 30.428707, 41.619465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558628, 30.651829, 41.739101>,  <38.744438, 30.785702, 41.810883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558628, 30.651829, 41.739101>,  <38.248943, 30.428707, 41.619465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558628, 30.651829, 41.739101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451698, -0.817958, 0.356248,
		0.443363, -0.140709, -0.885229,
		0.774207, 0.557804, 0.299095,
		38.790890, 30.819170, 41.828831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849888, 30.074413, 41.405258>,  <38.248943, 30.428707, 41.619465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849888, 30.074413, 41.405258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909618, 30.304766, 41.726772>,  <38.945457, 30.442976, 41.919682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909618, 30.304766, 41.726772>,  <38.849888, 30.074413, 41.405258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909618, 30.304766, 41.726772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463226, -0.758917, 0.457676,
		0.873569, 0.303989, -0.380089,
		0.149327, 0.575879, 0.803782,
		38.954418, 30.477530, 41.967907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476860, 29.834620, 41.650112>,  <38.849888, 30.074413, 41.405258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476860, 29.834620, 41.650112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347198, 30.054579, 41.958019>,  <39.269402, 30.186554, 42.142761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347198, 30.054579, 41.958019>,  <39.476860, 29.834620, 41.650112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347198, 30.054579, 41.958019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439501, -0.633015, 0.637284,
		0.837713, 0.544891, -0.036485,
		-0.324154, 0.549896, 0.769765,
		39.249950, 30.219547, 42.188950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023987, 29.974810, 42.152367>,  <39.476860, 29.834620, 41.650112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023987, 29.974810, 42.152367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689159, 29.974583, 42.371204>,  <39.488262, 29.974447, 42.502506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689159, 29.974583, 42.371204>,  <40.023987, 29.974810, 42.152367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689159, 29.974583, 42.371204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444045, -0.584862, 0.678793,
		0.319591, 0.811133, 0.489821,
		-0.837069, -0.000567, 0.547097,
		39.438038, 29.974413, 42.535332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189911, 29.861773, 42.795650>,  <40.023987, 29.974810, 42.152367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189911, 29.861773, 42.795650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793552, 29.849735, 42.848152>,  <39.555737, 29.842512, 42.879654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793552, 29.849735, 42.848152>,  <40.189911, 29.861773, 42.795650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793552, 29.849735, 42.848152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133229, -0.360730, 0.923105,
		0.019566, 0.932185, 0.361454,
		-0.990892, -0.030095, 0.131252,
		39.496284, 29.840706, 42.887527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989624, 30.210917, 43.381081>,  <40.189911, 29.861773, 42.795650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989624, 30.210917, 43.381081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697113, 29.945738, 43.316906>,  <39.521606, 29.786631, 43.278400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697113, 29.945738, 43.316906>,  <39.989624, 30.210917, 43.381081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697113, 29.945738, 43.316906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059977, -0.296804, 0.953053,
		-0.679441, 0.687322, 0.256807,
		-0.731275, -0.662946, -0.160437,
		39.477730, 29.746855, 43.268776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595680, 30.418169, 43.899403>,  <39.989624, 30.210917, 43.381081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595680, 30.418169, 43.899403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581863, 30.028505, 43.810116>,  <39.573574, 29.794708, 43.756546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581863, 30.028505, 43.810116>,  <39.595680, 30.418169, 43.899403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581863, 30.028505, 43.810116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047176, -0.224689, 0.973288,
		-0.998289, 0.023085, 0.053717,
		-0.034538, -0.974157, -0.223215,
		39.571503, 29.736258, 43.743153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515694, 30.118452, 44.512005>,  <39.595680, 30.418169, 43.899403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515694, 30.118452, 44.512005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530239, 29.795053, 44.277054>,  <39.538967, 29.601015, 44.136082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530239, 29.795053, 44.277054>,  <39.515694, 30.118452, 44.512005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530239, 29.795053, 44.277054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152788, -0.576357, 0.802788,
		-0.987590, -0.118936, 0.102570,
		0.036363, -0.808496, -0.587377,
		39.541149, 29.552505, 44.100842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059166, 29.627808, 44.711292>,  <39.515694, 30.118452, 44.512005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059166, 29.627808, 44.711292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344212, 29.415237, 44.528088>,  <39.515240, 29.287695, 44.418163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344212, 29.415237, 44.528088>,  <39.059166, 29.627808, 44.711292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344212, 29.415237, 44.528088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067761, -0.701933, 0.709013,
		-0.698276, -0.474217, -0.536217,
		0.712614, -0.531421, -0.458009,
		39.557995, 29.255810, 44.390682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924889, 28.983969, 44.976948>,  <39.059166, 29.627808, 44.711292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924889, 28.983969, 44.976948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291718, 28.921349, 44.830261>,  <39.511814, 28.883776, 44.742249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291718, 28.921349, 44.830261>,  <38.924889, 28.983969, 44.976948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291718, 28.921349, 44.830261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163244, -0.691679, 0.703514,
		-0.363783, -0.705034, -0.608761,
		0.917068, -0.156549, -0.366714,
		39.566837, 28.874384, 44.720245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090824, 28.231346, 44.914917>,  <38.924889, 28.983969, 44.976948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090824, 28.231346, 44.914917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453754, 28.398418, 44.934132>,  <39.671513, 28.498661, 44.945660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453754, 28.398418, 44.934132>,  <39.090824, 28.231346, 44.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453754, 28.398418, 44.934132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258068, -0.643474, 0.720654,
		0.331912, -0.641470, -0.691629,
		0.907323, 0.417681, 0.048034,
		39.725952, 28.523724, 44.948544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630985, 27.620007, 44.913464>,  <39.090824, 28.231346, 44.914917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630985, 27.620007, 44.913464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794167, 27.952194, 45.065201>,  <39.892075, 28.151506, 45.156242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794167, 27.952194, 45.065201>,  <39.630985, 27.620007, 44.913464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794167, 27.952194, 45.065201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190010, -0.483613, 0.854409,
		0.893013, -0.276479, -0.355088,
		0.407951, 0.830468, 0.379340,
		39.916553, 28.201334, 45.179001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326988, 27.381475, 45.078251>,  <39.630985, 27.620007, 44.913464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326988, 27.381475, 45.078251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242226, 27.698751, 45.306618>,  <40.191368, 27.889116, 45.443638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242226, 27.698751, 45.306618>,  <40.326988, 27.381475, 45.078251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242226, 27.698751, 45.306618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287661, -0.507679, 0.812104,
		0.933994, 0.336324, -0.120587,
		-0.211910, 0.793189, 0.570917,
		40.178654, 27.936708, 45.477894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836937, 27.327230, 45.759869>,  <40.326988, 27.381475, 45.078251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836937, 27.327230, 45.759869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593479, 27.632685, 45.846043>,  <40.447403, 27.815956, 45.897747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593479, 27.632685, 45.846043>,  <40.836937, 27.327230, 45.759869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593479, 27.632685, 45.846043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154583, -0.152191, 0.976187,
		0.778237, 0.627456, -0.025414,
		-0.608647, 0.763634, 0.215435,
		40.410885, 27.861774, 45.910675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165627, 27.591904, 46.305374>,  <40.836937, 27.327230, 45.759869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165627, 27.591904, 46.305374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786259, 27.717337, 46.323967>,  <40.558636, 27.792597, 46.335121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786259, 27.717337, 46.323967>,  <41.165627, 27.591904, 46.305374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786259, 27.717337, 46.323967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030178, -0.056647, 0.997938,
		0.315571, 0.947869, 0.044262,
		-0.948422, 0.313585, 0.046481,
		40.501732, 27.811413, 46.337910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130333, 28.291677, 46.707359>,  <41.165627, 27.591904, 46.305374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130333, 28.291677, 46.707359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778072, 28.104307, 46.735752>,  <40.566715, 27.991886, 46.752789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778072, 28.104307, 46.735752>,  <41.130333, 28.291677, 46.707359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778072, 28.104307, 46.735752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143880, -0.121683, 0.982085,
		-0.451396, 0.875084, 0.174557,
		-0.880648, -0.468424, 0.070980,
		40.513878, 27.963779, 46.757046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905224, 28.498346, 47.371094>,  <41.130333, 28.291677, 46.707359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905224, 28.498346, 47.371094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676495, 28.185314, 47.272633>,  <40.539257, 27.997496, 47.213558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676495, 28.185314, 47.272633>,  <40.905224, 28.498346, 47.371094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676495, 28.185314, 47.272633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008940, -0.305972, 0.951998,
		-0.820328, 0.542174, 0.181958,
		-0.571823, -0.782578, -0.246150,
		40.504948, 27.950541, 47.198788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534130, 28.382442, 47.908356>,  <40.905224, 28.498346, 47.371094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534130, 28.382442, 47.908356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594349, 28.039236, 47.711929>,  <40.630482, 27.833313, 47.594074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594349, 28.039236, 47.711929>,  <40.534130, 28.382442, 47.908356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594349, 28.039236, 47.711929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019667, -0.494031, 0.869222,
		-0.988407, -0.140516, -0.057500,
		0.150547, -0.858014, -0.491067,
		40.639511, 27.781832, 47.564610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733631, 28.897509, 48.449226>,  <40.534130, 28.382442, 47.908356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733631, 28.897509, 48.449226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131397, 28.920938, 48.484333>,  <41.370056, 28.934998, 48.505398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131397, 28.920938, 48.484333>,  <40.733631, 28.897509, 48.449226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131397, 28.920938, 48.484333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005601, 0.801287, -0.598253,
		-0.105370, 0.595405, 0.796486,
		0.994417, 0.058577, 0.087766,
		41.429722, 28.938511, 48.510662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851665, 29.657118, 48.564625>,  <40.733631, 28.897509, 48.449226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851665, 29.657118, 48.564625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189892, 29.493793, 48.427044>,  <41.392826, 29.395798, 48.344494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189892, 29.493793, 48.427044>,  <40.851665, 29.657118, 48.564625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189892, 29.493793, 48.427044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066324, 0.719608, -0.691206,
		0.529740, 0.561646, 0.635555,
		0.845563, -0.408312, -0.343954,
		41.443562, 29.371300, 48.323856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310104, 30.210783, 48.537853>,  <40.851665, 29.657118, 48.564625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310104, 30.210783, 48.537853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439026, 29.928690, 48.285263>,  <41.516376, 29.759434, 48.133709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439026, 29.928690, 48.285263>,  <41.310104, 30.210783, 48.537853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439026, 29.928690, 48.285263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022107, 0.672501, -0.739765,
		0.946379, 0.224467, 0.232339,
		0.322302, -0.705235, -0.631479,
		41.535717, 29.717119, 48.095818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573174, 30.656902, 48.024612>,  <41.310104, 30.210783, 48.537853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573174, 30.656902, 48.024612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619087, 30.285389, 47.883652>,  <41.646637, 30.062481, 47.799076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619087, 30.285389, 47.883652>,  <41.573174, 30.656902, 48.024612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619087, 30.285389, 47.883652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180519, 0.368340, -0.911997,
		0.976851, 0.041068, 0.209942,
		0.114784, -0.928784, -0.352399,
		41.653522, 30.006754, 47.777931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093830, 30.795328, 47.581177>,  <41.573174, 30.656902, 48.024612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093830, 30.795328, 47.581177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940937, 30.450031, 47.449291>,  <41.849201, 30.242853, 47.370159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940937, 30.450031, 47.449291>,  <42.093830, 30.795328, 47.581177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940937, 30.450031, 47.449291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248206, 0.247784, -0.936481,
		0.890106, -0.439795, 0.119549,
		-0.382237, -0.863240, -0.329714,
		41.826267, 30.191059, 47.350376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465435, 30.572224, 46.997566>,  <42.093830, 30.795328, 47.581177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465435, 30.572224, 46.997566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107445, 30.398602, 46.956367>,  <41.892651, 30.294428, 46.931648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107445, 30.398602, 46.956367>,  <42.465435, 30.572224, 46.997566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107445, 30.398602, 46.956367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058504, 0.343079, -0.937483,
		0.442255, -0.833002, -0.332442,
		-0.894979, -0.434056, -0.102994,
		41.838951, 30.268385, 46.925468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457790, 30.306143, 46.317490>,  <42.465435, 30.572224, 46.997566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457790, 30.306143, 46.317490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073936, 30.351402, 46.420490>,  <41.843624, 30.378559, 46.482292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073936, 30.351402, 46.420490>,  <42.457790, 30.306143, 46.317490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073936, 30.351402, 46.420490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178255, 0.463511, -0.867976,
		-0.217566, -0.878837, -0.424629,
		-0.959630, 0.113150, 0.257501,
		41.786049, 30.385347, 46.497742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218693, 30.240280, 45.757481>,  <42.457790, 30.306143, 46.317490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218693, 30.240280, 45.757481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916817, 30.389004, 45.973701>,  <41.735691, 30.478239, 46.103436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916817, 30.389004, 45.973701>,  <42.218693, 30.240280, 45.757481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916817, 30.389004, 45.973701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332268, 0.493838, -0.803568,
		-0.565723, -0.786054, -0.249153,
		-0.754689, 0.371811, 0.540556,
		41.690411, 30.500547, 46.135868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565922, 30.106874, 45.391071>,  <42.218693, 30.240280, 45.757481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565922, 30.106874, 45.391071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519615, 30.425400, 45.628551>,  <41.491829, 30.616514, 45.771038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519615, 30.425400, 45.628551>,  <41.565922, 30.106874, 45.391071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519615, 30.425400, 45.628551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176909, 0.571633, -0.801211,
		-0.977395, -0.197788, 0.074697,
		-0.115771, 0.796314, 0.593702,
		41.484882, 30.664293, 45.806664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924839, 30.382607, 45.224300>,  <41.565922, 30.106874, 45.391071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924839, 30.382607, 45.224300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110840, 30.686491, 45.406116>,  <41.222439, 30.868822, 45.515205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110840, 30.686491, 45.406116>,  <40.924839, 30.382607, 45.224300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110840, 30.686491, 45.406116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357431, 0.630827, -0.688694,
		-0.809948, 0.157777, 0.564881,
		0.465003, 0.759713, 0.454543,
		41.250340, 30.914404, 45.542480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502781, 30.911694, 45.181740>,  <40.924839, 30.382607, 45.224300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502781, 30.911694, 45.181740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843719, 31.096828, 45.279140>,  <41.048283, 31.207909, 45.337582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843719, 31.096828, 45.279140>,  <40.502781, 30.911694, 45.181740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843719, 31.096828, 45.279140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242959, 0.762739, -0.599333,
		-0.463119, 0.451678, 0.762567,
		0.852345, 0.462835, 0.243499,
		41.099422, 31.235680, 45.352192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344467, 31.614807, 45.490311>,  <40.502781, 30.911694, 45.181740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344467, 31.614807, 45.490311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723545, 31.625023, 45.363049>,  <40.950993, 31.631153, 45.286690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723545, 31.625023, 45.363049>,  <40.344467, 31.614807, 45.490311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723545, 31.625023, 45.363049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174097, 0.876817, -0.448198,
		0.267520, 0.480145, 0.835401,
		0.947694, 0.025539, -0.318158,
		41.007854, 31.632685, 45.267601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522369, 32.297096, 45.585007>,  <40.344467, 31.614807, 45.490311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522369, 32.297096, 45.585007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763718, 32.150414, 45.301750>,  <40.908527, 32.062405, 45.131794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763718, 32.150414, 45.301750>,  <40.522369, 32.297096, 45.585007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763718, 32.150414, 45.301750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175248, 0.805319, -0.566347,
		0.777964, 0.465820, 0.421644,
		0.603374, -0.366705, -0.708143,
		40.944729, 32.040401, 45.089306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740040, 32.898281, 45.296375>,  <40.522369, 32.297096, 45.585007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740040, 32.898281, 45.296375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808914, 32.628521, 45.009171>,  <40.850239, 32.466663, 44.836849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808914, 32.628521, 45.009171>,  <40.740040, 32.898281, 45.296375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808914, 32.628521, 45.009171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191200, 0.692154, -0.695964,
		0.966331, 0.257117, -0.009768,
		0.172183, -0.674399, -0.718011,
		40.860569, 32.426201, 44.793766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033951, 33.329613, 44.922009>,  <40.740040, 32.898281, 45.296375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033951, 33.329613, 44.922009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924282, 33.021324, 44.691944>,  <40.858482, 32.836349, 44.553905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924282, 33.021324, 44.691944>,  <41.033951, 33.329613, 44.922009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924282, 33.021324, 44.691944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312319, 0.637024, -0.704740,
		0.909553, -0.013585, -0.415366,
		-0.274172, -0.770725, -0.575163,
		40.842030, 32.790108, 44.519394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479080, 33.450268, 44.187180>,  <41.033951, 33.329613, 44.922009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479080, 33.450268, 44.187180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160408, 33.214092, 44.135521>,  <40.969204, 33.072388, 44.104527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160408, 33.214092, 44.135521>,  <41.479080, 33.450268, 44.187180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160408, 33.214092, 44.135521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335490, 0.609753, -0.718086,
		0.502733, -0.528760, -0.683866,
		-0.796684, -0.590435, -0.129150,
		40.921402, 33.036961, 44.096775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472923, 33.262337, 43.424496>,  <41.479080, 33.450268, 44.187180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472923, 33.262337, 43.424496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111954, 33.182850, 43.577412>,  <40.895374, 33.135159, 43.669163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111954, 33.182850, 43.577412>,  <41.472923, 33.262337, 43.424496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111954, 33.182850, 43.577412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422633, 0.580774, -0.695760,
		-0.083762, -0.789437, -0.608089,
		-0.902422, -0.198720, 0.382289,
		40.841228, 33.123234, 43.692097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112511, 33.187172, 42.833115>,  <41.472923, 33.262337, 43.424496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112511, 33.187172, 42.833115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838524, 33.243309, 43.119087>,  <40.674129, 33.276989, 43.290668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838524, 33.243309, 43.119087>,  <41.112511, 33.187172, 42.833115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838524, 33.243309, 43.119087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470266, 0.664324, -0.580967,
		-0.556477, -0.734151, -0.389044,
		-0.684969, 0.140340, 0.714928,
		40.633034, 33.285412, 43.333565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487083, 33.098885, 42.494167>,  <41.112511, 33.187172, 42.833115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487083, 33.098885, 42.494167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410393, 33.347431, 42.798046>,  <40.364380, 33.496559, 42.980373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410393, 33.347431, 42.798046>,  <40.487083, 33.098885, 42.494167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410393, 33.347431, 42.798046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504715, 0.601442, -0.619298,
		-0.841728, -0.502166, 0.198303,
		-0.191723, 0.621367, 0.759701,
		40.352875, 33.533840, 43.025955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781662, 33.099148, 42.464252>,  <40.487083, 33.098885, 42.494167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781662, 33.099148, 42.464252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936378, 33.427418, 42.632481>,  <40.029209, 33.624382, 42.733418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936378, 33.427418, 42.632481>,  <39.781662, 33.099148, 42.464252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936378, 33.427418, 42.632481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505307, 0.570125, -0.647783,
		-0.771399, 0.038040, 0.635214,
		0.386793, 0.820677, 0.420572,
		40.052418, 33.673622, 42.758652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247086, 33.587345, 42.573837>,  <39.781662, 33.099148, 42.464252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247086, 33.587345, 42.573837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585674, 33.799171, 42.551777>,  <39.788826, 33.926270, 42.538540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585674, 33.799171, 42.551777>,  <39.247086, 33.587345, 42.573837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585674, 33.799171, 42.551777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499640, 0.754268, -0.425958,
		-0.183972, 0.388119, 0.903060,
		0.846472, 0.529569, -0.055155,
		39.839615, 33.958042, 42.535229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991604, 34.223656, 42.434933>,  <39.247086, 33.587345, 42.573837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991604, 34.223656, 42.434933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381893, 34.308811, 42.414371>,  <39.616066, 34.359905, 42.402035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381893, 34.308811, 42.414371>,  <38.991604, 34.223656, 42.434933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381893, 34.308811, 42.414371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214012, 0.877015, -0.430167,
		-0.046499, 0.430724, 0.901285,
		0.975724, 0.212888, -0.051400,
		39.674610, 34.372677, 42.398952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047100, 34.873161, 42.612934>,  <38.991604, 34.223656, 42.434933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047100, 34.873161, 42.612934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380222, 34.810894, 42.400440>,  <39.580093, 34.773533, 42.272945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380222, 34.810894, 42.400440>,  <39.047100, 34.873161, 42.612934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380222, 34.810894, 42.400440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286929, 0.699288, -0.654728,
		0.473407, 0.697684, 0.537701,
		0.832801, -0.155670, -0.531233,
		39.630062, 34.764194, 42.241070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386116, 35.531029, 42.555233>,  <39.047100, 34.873161, 42.612934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386116, 35.531029, 42.555233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495808, 35.296520, 42.250317>,  <39.561623, 35.155815, 42.067368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495808, 35.296520, 42.250317>,  <39.386116, 35.531029, 42.555233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495808, 35.296520, 42.250317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166622, 0.751723, -0.638082,
		0.947120, 0.301995, 0.108458,
		0.274229, -0.586269, -0.762291,
		39.578075, 35.120640, 42.021629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886051, 35.941551, 42.116146>,  <39.386116, 35.531029, 42.555233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886051, 35.941551, 42.116146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808414, 35.625507, 41.883575>,  <39.761833, 35.435883, 41.744034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808414, 35.625507, 41.883575>,  <39.886051, 35.941551, 42.116146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808414, 35.625507, 41.883575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017919, 0.595457, -0.803187,
		0.980819, -0.145477, -0.129733,
		-0.194096, -0.790106, -0.581429,
		39.750187, 35.388477, 41.709148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404026, 36.017040, 41.508915>,  <39.886051, 35.941551, 42.116146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404026, 36.017040, 41.508915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080761, 35.808914, 41.398540>,  <39.886803, 35.684040, 41.332317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080761, 35.808914, 41.398540>,  <40.404026, 36.017040, 41.508915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080761, 35.808914, 41.398540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044179, 0.520750, -0.852565,
		0.587297, -0.676823, -0.443839,
		-0.808164, -0.520318, -0.275933,
		39.838310, 35.652821, 41.315762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508057, 35.907051, 40.838287>,  <40.404026, 36.017040, 41.508915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508057, 35.907051, 40.838287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115318, 35.848217, 40.886204>,  <39.879677, 35.812916, 40.914955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115318, 35.848217, 40.886204>,  <40.508057, 35.907051, 40.838287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115318, 35.848217, 40.886204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184175, 0.587939, -0.787659,
		0.045425, -0.795420, -0.604354,
		-0.981843, -0.147086, 0.119790,
		39.820766, 35.804092, 40.922142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201221, 35.723007, 40.203484>,  <40.508057, 35.907051, 40.838287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201221, 35.723007, 40.203484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896675, 35.874001, 40.414322>,  <39.713947, 35.964596, 40.540825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896675, 35.874001, 40.414322>,  <40.201221, 35.723007, 40.203484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896675, 35.874001, 40.414322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199613, 0.637027, -0.744547,
		-0.616832, -0.672086, -0.409657,
		-0.761363, 0.377488, 0.527095,
		39.668266, 35.987247, 40.572449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836044, 36.024647, 39.738857>,  <40.201221, 35.723007, 40.203484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836044, 36.024647, 39.738857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662937, 36.183659, 40.062508>,  <39.559074, 36.279064, 40.256699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662937, 36.183659, 40.062508>,  <39.836044, 36.024647, 39.738857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662937, 36.183659, 40.062508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239383, 0.814632, -0.528270,
		-0.869143, -0.422308, -0.257382,
		-0.432765, 0.397530, 0.809126,
		39.533108, 36.302917, 40.305244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150814, 36.131123, 39.501228>,  <39.836044, 36.024647, 39.738857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150814, 36.131123, 39.501228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232018, 36.373283, 39.809067>,  <39.280739, 36.518578, 39.993771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232018, 36.373283, 39.809067>,  <39.150814, 36.131123, 39.501228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232018, 36.373283, 39.809067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170021, 0.795817, -0.581178,
		-0.964304, -0.012865, 0.264486,
		0.203005, 0.605401, 0.769597,
		39.292919, 36.554905, 40.039948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659252, 36.726639, 39.406834>,  <39.150814, 36.131123, 39.501228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659252, 36.726639, 39.406834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953762, 36.844429, 39.650532>,  <39.130466, 36.915104, 39.796753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953762, 36.844429, 39.650532>,  <38.659252, 36.726639, 39.406834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953762, 36.844429, 39.650532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021227, 0.889853, -0.455754,
		-0.676349, 0.348493, 0.648925,
		0.736275, 0.294474, 0.609249,
		39.174644, 36.932770, 39.833305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531048, 37.422058, 39.561111>,  <38.659252, 36.726639, 39.406834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531048, 37.422058, 39.561111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920971, 37.368118, 39.632179>,  <39.154926, 37.335754, 39.674820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920971, 37.368118, 39.632179>,  <38.531048, 37.422058, 39.561111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920971, 37.368118, 39.632179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184323, 0.935565, -0.301235,
		-0.125603, 0.326395, 0.936851,
		0.974807, -0.134847, 0.177672,
		39.213413, 37.327663, 39.685482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742401, 38.132561, 39.766720>,  <38.531048, 37.422058, 39.561111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742401, 38.132561, 39.766720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080734, 37.936039, 39.683590>,  <39.283733, 37.818127, 39.633713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080734, 37.936039, 39.683590>,  <38.742401, 38.132561, 39.766720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080734, 37.936039, 39.683590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340492, 0.797130, -0.498647,
		0.410649, 0.351009, 0.841523,
		0.845832, -0.491301, -0.207825,
		39.334484, 37.788651, 39.621243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169342, 38.676510, 39.869362>,  <38.742401, 38.132561, 39.766720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169342, 38.676510, 39.869362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383701, 38.397503, 39.679081>,  <39.512314, 38.230099, 39.564915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383701, 38.397503, 39.679081>,  <39.169342, 38.676510, 39.869362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383701, 38.397503, 39.679081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460363, 0.713714, -0.527900,
		0.707732, 0.063905, 0.703585,
		0.535894, -0.697516, -0.475698,
		39.544468, 38.188248, 39.536373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935886, 38.852249, 39.865349>,  <39.169342, 38.676510, 39.869362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935886, 38.852249, 39.865349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868881, 38.616497, 39.549232>,  <39.828678, 38.475044, 39.359562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868881, 38.616497, 39.549232>,  <39.935886, 38.852249, 39.865349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868881, 38.616497, 39.549232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523287, 0.626223, -0.577941,
		0.835530, -0.510364, 0.203516,
		-0.167514, -0.589384, -0.790294,
		39.818626, 38.439682, 39.312145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556103, 38.833019, 39.594578>,  <39.935886, 38.852249, 39.865349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556103, 38.833019, 39.594578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311401, 38.716194, 39.300514>,  <40.164581, 38.646099, 39.124077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311401, 38.716194, 39.300514>,  <40.556103, 38.833019, 39.594578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311401, 38.716194, 39.300514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587473, 0.454630, -0.669468,
		0.529751, -0.841435, -0.106544,
		-0.611751, -0.292059, -0.735161,
		40.127876, 38.628578, 39.079967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992271, 38.626610, 38.991573>,  <40.556103, 38.833019, 39.594578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992271, 38.626610, 38.991573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644737, 38.707088, 38.810627>,  <40.436214, 38.755375, 38.702057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644737, 38.707088, 38.810627>,  <40.992271, 38.626610, 38.991573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644737, 38.707088, 38.810627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485555, 0.524767, -0.699183,
		0.096713, -0.827127, -0.553631,
		-0.868840, 0.201198, -0.452367,
		40.384087, 38.767448, 38.674915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088524, 38.586990, 38.326710>,  <40.992271, 38.626610, 38.991573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088524, 38.586990, 38.326710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768414, 38.826645, 38.336441>,  <40.576347, 38.970436, 38.342278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768414, 38.826645, 38.336441>,  <41.088524, 38.586990, 38.326710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768414, 38.826645, 38.336441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379544, 0.537535, -0.752996,
		-0.464222, -0.593374, -0.657575,
		-0.800278, 0.599136, 0.024324,
		40.528332, 39.006386, 38.343739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606243, 38.512390, 37.935932>,  <41.088524, 38.586990, 38.326710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606243, 38.512390, 37.935932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557991, 38.121834, 37.864246>,  <41.529041, 37.887501, 37.821236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557991, 38.121834, 37.864246>,  <41.606243, 38.512390, 37.935932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557991, 38.121834, 37.864246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709196, 0.211086, -0.672669,
		0.694614, 0.045951, -0.717913,
		-0.120631, -0.976387, -0.179212,
		41.521801, 37.828918, 37.810482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731220, 38.231274, 37.291561>,  <41.606243, 38.512390, 37.935932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731220, 38.231274, 37.291561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414383, 38.005676, 37.384937>,  <41.224281, 37.870319, 37.440964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414383, 38.005676, 37.384937>,  <41.731220, 38.231274, 37.291561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414383, 38.005676, 37.384937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362918, 0.127649, -0.923036,
		0.490789, -0.815853, -0.305794,
		-0.792096, -0.563994, 0.233440,
		41.176754, 37.836479, 37.454967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927654, 37.673019, 36.859219>,  <41.731220, 38.231274, 37.291561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927654, 37.673019, 36.859219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915703, 37.707092, 36.460850>,  <41.908531, 37.727535, 36.221828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915703, 37.707092, 36.460850>,  <41.927654, 37.673019, 36.859219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915703, 37.707092, 36.460850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370519, -0.924437, -0.090182,
		-0.928344, -0.371701, -0.003936,
		-0.029882, 0.085178, -0.995918,
		41.906738, 37.732647, 36.162075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392529, 37.293568, 36.537331>,  <41.927654, 37.673019, 36.859219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392529, 37.293568, 36.537331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708782, 37.312866, 36.293179>,  <41.898537, 37.324444, 36.146687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708782, 37.312866, 36.293179>,  <41.392529, 37.293568, 36.537331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708782, 37.312866, 36.293179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072654, -0.997240, 0.015286,
		-0.607959, -0.056432, -0.791960,
		0.790637, 0.048246, -0.610381,
		41.945972, 37.327339, 36.110065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280285, 36.951336, 35.921200>,  <41.392529, 37.293568, 36.537331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280285, 36.951336, 35.921200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670116, 36.939293, 36.010006>,  <41.904015, 36.932068, 36.063290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670116, 36.939293, 36.010006>,  <41.280285, 36.951336, 35.921200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670116, 36.939293, 36.010006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027268, -0.999503, -0.015834,
		0.222385, 0.009378, -0.974914,
		0.974578, -0.030105, 0.222019,
		41.962490, 36.930260, 36.076611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652481, 36.677418, 35.381573>,  <41.280285, 36.951336, 35.921200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652481, 36.677418, 35.381573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811840, 36.619152, 35.743801>,  <41.907455, 36.584190, 35.961140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811840, 36.619152, 35.743801>,  <41.652481, 36.677418, 35.381573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811840, 36.619152, 35.743801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057498, -0.989333, -0.133844,
		0.915407, 0.001255, -0.402528,
		0.398402, -0.145667, 0.905570,
		41.931362, 36.575451, 36.015472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026978, 36.121994, 35.419651>,  <41.652481, 36.677418, 35.381573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026978, 36.121994, 35.419651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977600, 36.161224, 35.814648>,  <41.947975, 36.184761, 36.051647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977600, 36.161224, 35.814648>,  <42.026978, 36.121994, 35.419651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977600, 36.161224, 35.814648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054975, -0.994252, 0.091876,
		0.990828, -0.042947, 0.128121,
		-0.123439, 0.098077, 0.987493,
		41.940567, 36.190647, 36.110897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467857, 35.601807, 35.673969>,  <42.026978, 36.121994, 35.419651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467857, 35.601807, 35.673969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175354, 35.722435, 35.918694>,  <41.999851, 35.794811, 36.065529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175354, 35.722435, 35.918694>,  <42.467857, 35.601807, 35.673969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175354, 35.722435, 35.918694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323479, -0.943000, 0.078189,
		0.600520, -0.140732, 0.787128,
		-0.731258, 0.301573, 0.611814,
		41.955978, 35.812908, 36.102238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170338, 35.953964, 35.644520>,  <42.467857, 35.601807, 35.673969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170338, 35.953964, 35.644520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557976, 36.036850, 35.590992>,  <43.790558, 36.086582, 35.558876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557976, 36.036850, 35.590992>,  <43.170338, 35.953964, 35.644520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557976, 36.036850, 35.590992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234475, 0.605354, -0.760636,
		-0.076607, 0.768510, 0.635235,
		0.969099, 0.207217, -0.133823,
		43.848705, 36.099014, 35.550846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230633, 36.679451, 35.656017>,  <43.170338, 35.953964, 35.644520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230633, 36.679451, 35.656017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537407, 36.530735, 35.446796>,  <43.721470, 36.441505, 35.321262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537407, 36.530735, 35.446796>,  <43.230633, 36.679451, 35.656017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537407, 36.530735, 35.446796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191990, 0.644807, -0.739841,
		0.612337, 0.667829, 0.423142,
		0.766931, -0.371793, -0.523055,
		43.767487, 36.419197, 35.289879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545891, 37.254444, 35.277641>,  <43.230633, 36.679451, 35.656017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545891, 37.254444, 35.277641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634460, 36.929256, 35.062218>,  <43.687603, 36.734142, 34.932964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634460, 36.929256, 35.062218>,  <43.545891, 37.254444, 35.277641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634460, 36.929256, 35.062218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319842, 0.461177, -0.827658,
		0.921234, 0.355518, -0.157906,
		0.221424, -0.812971, -0.538561,
		43.700890, 36.685364, 34.900650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053886, 37.434742, 34.720318>,  <43.545891, 37.254444, 35.277641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053886, 37.434742, 34.720318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879246, 37.091415, 34.612488>,  <43.774460, 36.885418, 34.547791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879246, 37.091415, 34.612488>,  <44.053886, 37.434742, 34.720318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879246, 37.091415, 34.612488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243905, 0.401346, -0.882855,
		0.865960, -0.319709, -0.384577,
		-0.436604, -0.858317, -0.269571,
		43.748264, 36.833920, 34.531616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239037, 37.468475, 34.055786>,  <44.053886, 37.434742, 34.720318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239037, 37.468475, 34.055786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948620, 37.193417, 34.056297>,  <43.774368, 37.028381, 34.056602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948620, 37.193417, 34.056297>,  <44.239037, 37.468475, 34.055786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948620, 37.193417, 34.056297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264659, 0.277719, -0.923487,
		0.634680, -0.670829, -0.383628,
		-0.726042, -0.687649, 0.001278,
		43.730808, 36.987122, 34.056683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219433, 37.322704, 33.408497>,  <44.239037, 37.468475, 34.055786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219433, 37.322704, 33.408497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884457, 37.134399, 33.519550>,  <43.683472, 37.021416, 33.586182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884457, 37.134399, 33.519550>,  <44.219433, 37.322704, 33.408497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884457, 37.134399, 33.519550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407280, 0.198806, -0.891403,
		0.364446, -0.859568, -0.358220,
		-0.837438, -0.470764, 0.277631,
		43.633224, 36.993172, 33.602840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030388, 36.915062, 32.832752>,  <44.219433, 37.322704, 33.408497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030388, 36.915062, 32.832752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692856, 36.968510, 33.040638>,  <43.490337, 37.000580, 33.165371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692856, 36.968510, 33.040638>,  <44.030388, 36.915062, 32.832752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692856, 36.968510, 33.040638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483554, 0.230581, -0.844398,
		-0.232665, -0.963835, -0.129957,
		-0.843826, 0.133620, 0.519715,
		43.439709, 37.008595, 33.196552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524635, 36.452690, 32.584686>,  <44.030388, 36.915062, 32.832752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524635, 36.452690, 32.584686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330093, 36.773796, 32.722691>,  <43.213367, 36.966457, 32.805492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330093, 36.773796, 32.722691>,  <43.524635, 36.452690, 32.584686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330093, 36.773796, 32.722691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394701, 0.150426, -0.906412,
		-0.779533, -0.577012, 0.243692,
		-0.486353, 0.802763, 0.345010,
		43.184189, 37.014626, 32.826195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910061, 36.389881, 32.223011>,  <43.524635, 36.452690, 32.584686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910061, 36.389881, 32.223011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930965, 36.765347, 32.359352>,  <42.943508, 36.990627, 32.441154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930965, 36.765347, 32.359352>,  <42.910061, 36.389881, 32.223011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930965, 36.765347, 32.359352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463859, 0.325080, -0.824110,
		-0.884366, -0.115034, 0.452398,
		0.052265, 0.938664, 0.340849,
		42.946644, 37.046947, 32.461605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223106, 36.737450, 32.106857>,  <42.910061, 36.389881, 32.223011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223106, 36.737450, 32.106857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505543, 37.018806, 32.139545>,  <42.675007, 37.187618, 32.159157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505543, 37.018806, 32.139545>,  <42.223106, 36.737450, 32.106857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505543, 37.018806, 32.139545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424631, 0.512937, -0.746045,
		-0.566676, 0.492078, 0.660862,
		0.706093, 0.703388, 0.081718,
		42.717369, 37.229824, 32.164062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784561, 37.242226, 31.844429>,  <42.223106, 36.737450, 32.106857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784561, 37.242226, 31.844429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151653, 37.400345, 31.859941>,  <42.371910, 37.495216, 31.869249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151653, 37.400345, 31.859941>,  <41.784561, 37.242226, 31.844429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151653, 37.400345, 31.859941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224816, 0.597455, -0.769744,
		-0.327450, 0.697701, 0.637174,
		0.917733, 0.395299, 0.038782,
		42.426971, 37.518936, 31.871576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609177, 37.919029, 31.805515>,  <41.784561, 37.242226, 31.844429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609177, 37.919029, 31.805515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987854, 37.854019, 31.694263>,  <42.215061, 37.815014, 31.627512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987854, 37.854019, 31.694263>,  <41.609177, 37.919029, 31.805515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987854, 37.854019, 31.694263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174390, 0.467364, -0.866694,
		0.270851, 0.868997, 0.414107,
		0.946693, -0.162528, -0.278131,
		42.271862, 37.805260, 31.610825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954361, 38.530052, 31.762165>,  <41.609177, 37.919029, 31.805515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954361, 38.530052, 31.762165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139641, 38.270893, 31.520281>,  <42.250809, 38.115398, 31.375151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139641, 38.270893, 31.520281>,  <41.954361, 38.530052, 31.762165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139641, 38.270893, 31.520281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272503, 0.545149, -0.792815,
		0.843322, 0.532014, 0.075956,
		0.463196, -0.647900, -0.604711,
		42.278599, 38.076523, 31.338867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086292, 38.895592, 31.126944>,  <41.954361, 38.530052, 31.762165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086292, 38.895592, 31.126944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230251, 38.550411, 30.985079>,  <42.316628, 38.343304, 30.899960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230251, 38.550411, 30.985079>,  <42.086292, 38.895592, 31.126944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230251, 38.550411, 30.985079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068864, 0.354526, -0.932507,
		0.930446, 0.360033, 0.068168,
		0.359901, -0.862953, -0.354661,
		42.338223, 38.291527, 30.878681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650452, 39.092834, 30.623114>,  <42.086292, 38.895592, 31.126944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650452, 39.092834, 30.623114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545055, 38.716831, 30.536430>,  <42.481815, 38.491230, 30.484421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545055, 38.716831, 30.536430>,  <42.650452, 39.092834, 30.623114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545055, 38.716831, 30.536430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106703, 0.194868, -0.975008,
		0.958742, -0.280031, 0.048954,
		-0.263493, -0.940005, -0.216708,
		42.466007, 38.434830, 30.471418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924084, 38.986614, 29.938251>,  <42.650452, 39.092834, 30.623114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924084, 38.986614, 29.938251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645798, 38.703869, 29.989353>,  <42.478825, 38.534222, 30.020014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645798, 38.703869, 29.989353>,  <42.924084, 38.986614, 29.938251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645798, 38.703869, 29.989353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111301, -0.069620, -0.991345,
		0.709640, -0.703915, -0.030239,
		-0.695717, -0.706864, 0.127752,
		42.437084, 38.491810, 30.027679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173836, 38.363731, 29.604973>,  <42.924084, 38.986614, 29.938251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173836, 38.363731, 29.604973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774452, 38.343643, 29.614492>,  <42.534824, 38.331593, 29.620205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774452, 38.343643, 29.614492>,  <43.173836, 38.363731, 29.604973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774452, 38.343643, 29.614492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019793, -0.078842, -0.996691,
		0.051927, -0.995622, 0.077726,
		-0.998455, -0.050217, 0.023800,
		42.474915, 38.328579, 29.621632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960278, 37.703720, 29.240953>,  <43.173836, 38.363731, 29.604973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960278, 37.703720, 29.240953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661694, 37.969875, 29.243723>,  <42.482544, 38.129570, 29.245384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661694, 37.969875, 29.243723>,  <42.960278, 37.703720, 29.240953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661694, 37.969875, 29.243723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017225, 0.029725, -0.999410,
		-0.665206, -0.745901, -0.033650,
		-0.746461, 0.665393, 0.006926,
		42.437756, 38.169495, 29.245800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596298, 37.473412, 28.729288>,  <42.960278, 37.703720, 29.240953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596298, 37.473412, 28.729288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432590, 37.831329, 28.800674>,  <42.334366, 38.046078, 28.843506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432590, 37.831329, 28.800674>,  <42.596298, 37.473412, 28.729288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432590, 37.831329, 28.800674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294286, 0.055691, -0.954093,
		-0.863654, -0.442997, 0.240533,
		-0.409265, 0.894792, 0.178466,
		42.309811, 38.099766, 28.854214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119946, 37.467999, 28.246571>,  <42.596298, 37.473412, 28.729288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119946, 37.467999, 28.246571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152386, 37.858021, 28.329210>,  <42.171848, 38.092033, 28.378794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152386, 37.858021, 28.329210>,  <42.119946, 37.467999, 28.246571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152386, 37.858021, 28.329210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147133, 0.216723, -0.965082,
		-0.985786, 0.047871, 0.161040,
		0.081101, 0.975059, 0.206600,
		42.176716, 38.150539, 28.391190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557442, 37.830048, 27.955267>,  <42.119946, 37.467999, 28.246571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557442, 37.830048, 27.955267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844940, 38.106853, 27.982168>,  <42.017441, 38.272938, 27.998308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844940, 38.106853, 27.982168>,  <41.557442, 37.830048, 27.955267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844940, 38.106853, 27.982168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016230, 0.113400, -0.993417,
		-0.695084, 0.712922, 0.092737,
		0.718745, 0.692013, 0.067252,
		42.060562, 38.314457, 28.002344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316639, 38.212616, 27.361420>,  <41.557442, 37.830048, 27.955267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316639, 38.212616, 27.361420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690166, 38.310925, 27.465399>,  <41.914284, 38.369911, 27.527786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690166, 38.310925, 27.465399>,  <41.316639, 38.212616, 27.361420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690166, 38.310925, 27.465399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196335, 0.255322, -0.946712,
		-0.299046, 0.935097, 0.190172,
		0.933822, 0.245773, 0.259946,
		41.970314, 38.384655, 27.543383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460819, 38.901344, 27.015736>,  <41.316639, 38.212616, 27.361420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460819, 38.901344, 27.015736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792919, 38.691788, 27.091862>,  <41.992180, 38.566055, 27.137537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792919, 38.691788, 27.091862>,  <41.460819, 38.901344, 27.015736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792919, 38.691788, 27.091862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461406, 0.454425, -0.761973,
		0.312708, 0.720441, 0.619013,
		0.830252, -0.523892, 0.190313,
		42.041996, 38.534618, 27.148956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991894, 39.336884, 26.916494>,  <41.460819, 38.901344, 27.015736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991894, 39.336884, 26.916494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183224, 38.986691, 26.888971>,  <42.298023, 38.776577, 26.872458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183224, 38.986691, 26.888971>,  <41.991894, 39.336884, 26.916494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183224, 38.986691, 26.888971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523300, 0.347078, -0.778263,
		0.705237, 0.336259, 0.624157,
		0.478329, -0.875481, -0.068808,
		42.326721, 38.724045, 26.868328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800751, 39.351776, 26.966681>,  <41.991894, 39.336884, 26.916494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800751, 39.351776, 26.966681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667255, 39.058109, 26.730169>,  <42.587158, 38.881908, 26.588263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667255, 39.058109, 26.730169>,  <42.800751, 39.351776, 26.966681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667255, 39.058109, 26.730169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549145, 0.358404, -0.754975,
		0.766197, -0.576663, 0.283552,
		-0.333740, -0.734170, -0.591280,
		42.567135, 38.837860, 26.552786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326790, 39.087322, 26.631863>,  <42.800751, 39.351776, 26.966681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326790, 39.087322, 26.631863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037540, 38.942219, 26.396746>,  <42.863991, 38.855156, 26.255676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037540, 38.942219, 26.396746>,  <43.326790, 39.087322, 26.631863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037540, 38.942219, 26.396746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561700, 0.186413, -0.806067,
		0.401983, -0.913047, 0.068965,
		-0.723120, -0.362762, -0.587793,
		42.820602, 38.833389, 26.220407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476791, 38.394745, 26.258944>,  <43.326790, 39.087322, 26.631863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476791, 38.394745, 26.258944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231934, 38.648155, 26.069662>,  <43.085018, 38.800201, 25.956093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231934, 38.648155, 26.069662>,  <43.476791, 38.394745, 26.258944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231934, 38.648155, 26.069662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640878, 0.046942, -0.766206,
		-0.463199, -0.772295, -0.434748,
		-0.612145, 0.633527, -0.473204,
		43.048290, 38.838215, 25.927700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809769, 38.097328, 25.928902>,  <43.476791, 38.394745, 26.258944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809769, 38.097328, 25.928902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109077, 37.874214, 25.785254>,  <43.288662, 37.740345, 25.699064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109077, 37.874214, 25.785254>,  <42.809769, 38.097328, 25.928902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109077, 37.874214, 25.785254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443905, 0.018703, 0.895878,
		-0.492988, -0.829777, 0.261597,
		0.748272, -0.557781, -0.359122,
		43.333561, 37.706879, 25.677517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879536, 37.479366, 26.277857>,  <42.809769, 38.097328, 25.928902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879536, 37.479366, 26.277857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213013, 37.649208, 26.136627>,  <43.413101, 37.751114, 26.051889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213013, 37.649208, 26.136627>,  <42.879536, 37.479366, 26.277857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213013, 37.649208, 26.136627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326519, 0.136597, 0.935268,
		0.445348, -0.895015, -0.024761,
		0.833697, 0.424604, -0.353073,
		43.463123, 37.776588, 26.030704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443520, 37.102219, 26.574154>,  <42.879536, 37.479366, 26.277857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443520, 37.102219, 26.574154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557220, 37.474625, 26.482574>,  <43.625443, 37.698067, 26.427628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557220, 37.474625, 26.482574>,  <43.443520, 37.102219, 26.574154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557220, 37.474625, 26.482574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429356, 0.089899, 0.898650,
		0.857235, -0.353747, -0.374180,
		0.284257, 0.931011, -0.228948,
		43.642498, 37.753929, 26.413891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097889, 37.137543, 26.413647>,  <43.443520, 37.102219, 26.574154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097889, 37.137543, 26.413647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975010, 37.478863, 26.582176>,  <43.901283, 37.683655, 26.683294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975010, 37.478863, 26.582176>,  <44.097889, 37.137543, 26.413647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975010, 37.478863, 26.582176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529954, -0.214338, 0.820492,
		0.790429, 0.475335, -0.386365,
		-0.307197, 0.853297, 0.421325,
		43.882851, 37.734852, 26.708574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689762, 37.620373, 26.702387>,  <44.097889, 37.137543, 26.413647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689762, 37.620373, 26.702387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346443, 37.689461, 26.895674>,  <44.140453, 37.730915, 27.011646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346443, 37.689461, 26.895674>,  <44.689762, 37.620373, 26.702387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346443, 37.689461, 26.895674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471400, -0.106684, 0.875443,
		0.202758, 0.979176, 0.010146,
		-0.858295, 0.172720, 0.483215,
		44.088955, 37.741276, 27.040638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783508, 38.246311, 27.057087>,  <44.689762, 37.620373, 26.702387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783508, 38.246311, 27.057087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498158, 38.035618, 27.241974>,  <44.326946, 37.909203, 27.352905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498158, 38.035618, 27.241974>,  <44.783508, 38.246311, 27.057087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498158, 38.035618, 27.241974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476692, 0.118724, 0.871016,
		-0.513667, 0.841700, 0.166393,
		-0.713380, -0.526731, 0.462217,
		44.284145, 37.877598, 27.380638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681763, 38.660183, 27.696163>,  <44.783508, 38.246311, 27.057087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681763, 38.660183, 27.696163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531719, 38.293053, 27.748142>,  <44.441692, 38.072773, 27.779329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531719, 38.293053, 27.748142>,  <44.681763, 38.660183, 27.696163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531719, 38.293053, 27.748142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384820, -0.026648, 0.922607,
		-0.843332, 0.396081, 0.363195,
		-0.375105, -0.917829, 0.129946,
		44.419189, 38.017704, 27.787127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399094, 38.607662, 28.388998>,  <44.681763, 38.660183, 27.696163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399094, 38.607662, 28.388998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469105, 38.220905, 28.314726>,  <44.511112, 37.988850, 28.270163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469105, 38.220905, 28.314726>,  <44.399094, 38.607662, 28.388998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469105, 38.220905, 28.314726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403925, -0.101473, 0.909147,
		-0.897892, -0.234128, 0.372793,
		0.175028, -0.966896, -0.185681,
		44.521614, 37.930836, 28.259022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217232, 38.273674, 29.015869>,  <44.399094, 38.607662, 28.388998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217232, 38.273674, 29.015869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433559, 38.003235, 28.815710>,  <44.563358, 37.840969, 28.695614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433559, 38.003235, 28.815710>,  <44.217232, 38.273674, 29.015869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433559, 38.003235, 28.815710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521341, -0.197422, 0.830198,
		-0.660087, -0.709868, 0.245709,
		0.540823, -0.676100, -0.500399,
		44.595806, 37.800404, 28.665590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026466, 37.690872, 29.358980>,  <44.217232, 38.273674, 29.015869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026466, 37.690872, 29.358980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364407, 37.593941, 29.168190>,  <44.567169, 37.535782, 29.053717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364407, 37.593941, 29.168190>,  <44.026466, 37.690872, 29.358980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364407, 37.593941, 29.168190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413421, -0.270169, 0.869536,
		-0.339574, -0.931819, -0.128070,
		0.844850, -0.242325, -0.476976,
		44.617863, 37.521244, 29.025097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121948, 36.879150, 29.399918>,  <44.026466, 37.690872, 29.358980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121948, 36.879150, 29.399918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495739, 37.010975, 29.346027>,  <44.720013, 37.090069, 29.313694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495739, 37.010975, 29.346027>,  <44.121948, 36.879150, 29.399918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495739, 37.010975, 29.346027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297381, -0.514422, 0.804322,
		0.195766, -0.791682, -0.578719,
		0.934473, 0.329559, -0.134725,
		44.776081, 37.109844, 29.305611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444382, 36.386230, 29.571312>,  <44.121948, 36.879150, 29.399918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444382, 36.386230, 29.571312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704811, 36.684982, 29.625397>,  <44.861069, 36.864231, 29.657848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704811, 36.684982, 29.625397>,  <44.444382, 36.386230, 29.571312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704811, 36.684982, 29.625397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211107, -0.349298, 0.912921,
		0.729070, -0.565831, -0.385088,
		0.651069, 0.746878, 0.135212,
		44.900131, 36.909046, 29.665960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933552, 36.065002, 29.810102>,  <44.444382, 36.386230, 29.571312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933552, 36.065002, 29.810102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046329, 36.441307, 29.885447>,  <45.113995, 36.667091, 29.930653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046329, 36.441307, 29.885447>,  <44.933552, 36.065002, 29.810102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046329, 36.441307, 29.885447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395736, -0.292873, 0.870413,
		0.874015, -0.170864, -0.454865,
		0.281940, 0.940761, 0.188358,
		45.130913, 36.723534, 29.941954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533386, 35.903191, 30.266354>,  <44.933552, 36.065002, 29.810102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533386, 35.903191, 30.266354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488674, 36.299656, 30.294899>,  <45.461849, 36.537537, 30.312025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488674, 36.299656, 30.294899>,  <45.533386, 35.903191, 30.266354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488674, 36.299656, 30.294899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428963, -0.016651, 0.903169,
		0.896380, 0.131564, -0.423313,
		-0.111776, 0.991168, 0.071361,
		45.455143, 36.597008, 30.316307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245785, 36.243546, 30.318302>,  <45.533386, 35.903191, 30.266354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245785, 36.243546, 30.318302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939926, 36.438347, 30.487131>,  <45.756413, 36.555229, 30.588428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939926, 36.438347, 30.487131>,  <46.245785, 36.243546, 30.318302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939926, 36.438347, 30.487131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365477, -0.211731, 0.906419,
		0.530796, 0.847347, -0.016090,
		-0.764645, 0.487004, 0.422072,
		45.710533, 36.584450, 30.613752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557323, 36.824196, 30.747198>,  <46.245785, 36.243546, 30.318302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557323, 36.824196, 30.747198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180859, 36.764664, 30.868568>,  <45.954979, 36.728943, 30.941391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180859, 36.764664, 30.868568>,  <46.557323, 36.824196, 30.747198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180859, 36.764664, 30.868568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280258, 0.158052, 0.946824,
		-0.188873, 0.976150, -0.107041,
		-0.941160, -0.148831, 0.303426,
		45.898510, 36.720013, 30.959597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499573, 37.339874, 31.233057>,  <46.557323, 36.824196, 30.747198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499573, 37.339874, 31.233057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201061, 37.083313, 31.304241>,  <46.021954, 36.929379, 31.346952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201061, 37.083313, 31.304241>,  <46.499573, 37.339874, 31.233057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201061, 37.083313, 31.304241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148204, 0.100535, 0.983833,
		-0.648923, 0.760590, 0.020031,
		-0.746280, -0.641401, 0.177962,
		45.977177, 36.890892, 31.357630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072586, 37.663601, 31.777702>,  <46.499573, 37.339874, 31.233057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072586, 37.663601, 31.777702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960621, 37.280785, 31.807970>,  <45.893440, 37.051094, 31.826132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960621, 37.280785, 31.807970>,  <46.072586, 37.663601, 31.777702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960621, 37.280785, 31.807970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056281, 0.062328, 0.996468,
		-0.958374, 0.283185, 0.036417,
		-0.279915, -0.957038, 0.075671,
		45.876648, 36.993671, 31.830671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423138, 37.608070, 32.253746>,  <46.072586, 37.663601, 31.777702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423138, 37.608070, 32.253746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600262, 37.249664, 32.240643>,  <45.706535, 37.034618, 32.232780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600262, 37.249664, 32.240643>,  <45.423138, 37.608070, 32.253746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600262, 37.249664, 32.240643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034171, -0.053369, 0.997990,
		-0.895966, -0.440797, -0.054249,
		0.442806, -0.896019, -0.032754,
		45.733105, 36.980858, 32.230816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069637, 37.118965, 32.829403>,  <45.423138, 37.608070, 32.253746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069637, 37.118965, 32.829403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424488, 36.956043, 32.742596>,  <45.637398, 36.858288, 32.690510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424488, 36.956043, 32.742596>,  <45.069637, 37.118965, 32.829403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424488, 36.956043, 32.742596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145925, -0.198555, 0.969165,
		-0.437841, -0.891445, -0.116708,
		0.887130, -0.407310, -0.217020,
		45.690628, 36.833851, 32.677490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079971, 36.445221, 33.141918>,  <45.069637, 37.118965, 32.829403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079971, 36.445221, 33.141918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458443, 36.558212, 33.078739>,  <45.685528, 36.626007, 33.040833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458443, 36.558212, 33.078739>,  <45.079971, 36.445221, 33.141918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458443, 36.558212, 33.078739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228948, -0.239288, 0.943570,
		0.228746, -0.928949, -0.291084,
		0.946181, 0.282480, -0.157945,
		45.742298, 36.642956, 33.031357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374855, 35.880764, 33.382401>,  <45.079971, 36.445221, 33.141918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374855, 35.880764, 33.382401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653847, 36.167351, 33.388107>,  <45.821239, 36.339302, 33.391533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653847, 36.167351, 33.388107>,  <45.374855, 35.880764, 33.382401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653847, 36.167351, 33.388107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209104, -0.222527, 0.952238,
		0.685423, -0.661178, -0.305023,
		0.697475, 0.716467, 0.014271,
		45.863091, 36.382290, 33.392387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986820, 35.555565, 33.588657>,  <45.374855, 35.880764, 33.382401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986820, 35.555565, 33.588657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050663, 35.941746, 33.671059>,  <46.088966, 36.173454, 33.720497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050663, 35.941746, 33.671059>,  <45.986820, 35.555565, 33.588657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050663, 35.941746, 33.671059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404195, -0.254290, 0.878614,
		0.900640, -0.056965, -0.430815,
		0.159603, 0.965449, 0.205999,
		46.098545, 36.231380, 33.732857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718605, 35.629276, 33.731071>,  <45.986820, 35.555565, 33.588657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.718605, 35.629276, 33.731071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554169, 35.952820, 33.899239>,  <46.455509, 36.146946, 34.000137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554169, 35.952820, 33.899239>,  <46.718605, 35.629276, 33.731071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554169, 35.952820, 33.899239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483344, -0.197622, 0.852833,
		0.772906, 0.553796, -0.309718,
		-0.411089, 0.808860, 0.420417,
		46.430843, 36.195477, 34.025364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184231, 36.081387, 33.895950>,  <46.718605, 35.629276, 33.731071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184231, 36.081387, 33.895950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.881958, 36.150696, 34.148594>,  <46.700596, 36.192280, 34.300179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.881958, 36.150696, 34.148594>,  <47.184231, 36.081387, 33.895950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.881958, 36.150696, 34.148594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624784, -0.098551, 0.774553,
		0.196453, 0.979931, -0.033785,
		-0.755679, 0.173272, 0.631606,
		46.655254, 36.202679, 34.338078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.548710, 35.880886, 33.249748>,  <47.184231, 36.081387, 33.895950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.548710, 35.880886, 33.249748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.819233, 35.917332, 33.542133>,  <47.981548, 35.939201, 33.717564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.819233, 35.917332, 33.542133>,  <47.548710, 35.880886, 33.249748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.819233, 35.917332, 33.542133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407919, -0.779946, 0.474642,
		0.613360, -0.619178, -0.490314,
		0.676307, 0.091118, 0.730962,
		48.022125, 35.944668, 33.761421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781937, 35.323032, 33.370789>,  <47.548710, 35.880886, 33.249748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781937, 35.323032, 33.370789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.857956, 35.495544, 33.723579>,  <47.903568, 35.599052, 33.935253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.857956, 35.495544, 33.723579>,  <47.781937, 35.323032, 33.370789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.857956, 35.495544, 33.723579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661317, -0.607735, 0.439679,
		0.725633, -0.666823, 0.169717,
		0.190045, 0.431282, 0.881974,
		47.914970, 35.624928, 33.988171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.939037, 34.777805, 33.911610>,  <47.781937, 35.323032, 33.370789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.939037, 34.777805, 33.911610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792721, 35.117580, 34.063736>,  <47.704929, 35.321445, 34.155014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792721, 35.117580, 34.063736>,  <47.939037, 34.777805, 33.911610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.792721, 35.117580, 34.063736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683509, -0.522537, 0.509677,
		0.631672, -0.073514, 0.771743,
		-0.365795, 0.849442, 0.380319,
		47.682983, 35.372414, 34.177830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.957947, 34.768917, 34.796265>,  <47.939037, 34.777805, 33.911610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.957947, 34.768917, 34.796265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693024, 35.022877, 34.637146>,  <47.534069, 35.175255, 34.541676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693024, 35.022877, 34.637146>,  <47.957947, 34.768917, 34.796265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.693024, 35.022877, 34.637146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735447, -0.449548, 0.506976,
		0.143052, 0.628335, 0.764677,
		-0.662310, 0.634903, -0.397798,
		47.494331, 35.213348, 34.517807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.744625, 35.242203, 46.892902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376717, 35.088257, 46.923641>,  <38.155972, 34.995888, 46.942085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376717, 35.088257, 46.923641>,  <38.744625, 35.242203, 46.892902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376717, 35.088257, 46.923641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299798, 0.562646, -0.770422,
		0.253271, -0.731648, -0.632886,
		-0.919769, -0.384864, 0.076845,
		38.100784, 34.972797, 46.946693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500820, 34.974014, 46.184887>,  <38.744625, 35.242203, 46.892902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500820, 34.974014, 46.184887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158260, 35.028301, 46.384148>,  <37.952724, 35.060875, 46.503704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158260, 35.028301, 46.384148>,  <38.500820, 34.974014, 46.184887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158260, 35.028301, 46.384148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297708, 0.658487, -0.691206,
		-0.421838, -0.740254, -0.523524,
		-0.856401, 0.135719, 0.498154,
		37.901340, 35.069016, 46.533592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017151, 34.858147, 45.709309>,  <38.500820, 34.974014, 46.184887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017151, 34.858147, 45.709309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829769, 35.081623, 45.983070>,  <37.717339, 35.215710, 46.147327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829769, 35.081623, 45.983070>,  <38.017151, 34.858147, 45.709309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829769, 35.081623, 45.983070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308738, 0.622300, -0.719322,
		-0.827786, -0.548272, -0.119029,
		-0.468456, 0.558696, 0.684403,
		37.689232, 35.249233, 46.188393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390495, 35.025112, 45.432304>,  <38.017151, 34.858147, 45.709309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390495, 35.025112, 45.432304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408230, 35.306915, 45.715626>,  <37.418869, 35.475998, 45.885620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408230, 35.306915, 45.715626>,  <37.390495, 35.025112, 45.432304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408230, 35.306915, 45.715626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175190, 0.703501, -0.688763,
		-0.983536, -0.093551, 0.154614,
		0.044336, 0.704510, 0.708308,
		37.421532, 35.518269, 45.928120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790691, 35.435051, 45.441967>,  <37.390495, 35.025112, 45.432304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790691, 35.435051, 45.441967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040718, 35.675877, 45.640686>,  <37.190735, 35.820370, 45.759918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040718, 35.675877, 45.640686>,  <36.790691, 35.435051, 45.441967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040718, 35.675877, 45.640686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248160, 0.756715, -0.604813,
		-0.740073, 0.254763, 0.622405,
		0.625067, 0.602062, 0.496802,
		37.228237, 35.856495, 45.789726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417233, 36.132469, 45.627666>,  <36.790691, 35.435051, 45.441967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417233, 36.132469, 45.627666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801857, 36.230247, 45.677696>,  <37.032631, 36.288914, 45.707714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801857, 36.230247, 45.677696>,  <36.417233, 36.132469, 45.627666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801857, 36.230247, 45.677696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122887, 0.790435, -0.600092,
		-0.245551, 0.561657, 0.790092,
		0.961563, 0.244445, 0.125072,
		37.090324, 36.303581, 45.715218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405197, 36.831371, 45.605263>,  <36.417233, 36.132469, 45.627666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405197, 36.831371, 45.605263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792870, 36.753292, 45.545151>,  <37.025475, 36.706444, 45.509083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792870, 36.753292, 45.545151>,  <36.405197, 36.831371, 45.605263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792870, 36.753292, 45.545151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047383, 0.746367, -0.663846,
		0.241748, 0.636267, 0.732614,
		0.969181, -0.195197, -0.150285,
		37.083626, 36.694733, 45.500065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687328, 37.541893, 45.550842>,  <36.405197, 36.831371, 45.605263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687328, 37.541893, 45.550842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939468, 37.273277, 45.395046>,  <37.090752, 37.112106, 45.301571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939468, 37.273277, 45.395046>,  <36.687328, 37.541893, 45.550842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939468, 37.273277, 45.395046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142789, 0.593447, -0.792106,
		0.763070, 0.443686, 0.469965,
		0.630346, -0.671538, -0.389488,
		37.128571, 37.071815, 45.278198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342842, 37.965000, 45.333286>,  <36.687328, 37.541893, 45.550842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342842, 37.965000, 45.333286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338375, 37.618614, 45.133297>,  <37.335693, 37.410782, 45.013302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338375, 37.618614, 45.133297>,  <37.342842, 37.965000, 45.333286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338375, 37.618614, 45.133297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046349, 0.499020, -0.865350,
		0.998863, -0.032841, 0.034561,
		-0.011172, -0.865968, -0.499974,
		37.335022, 37.358822, 44.983303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922485, 38.003780, 44.846039>,  <37.342842, 37.965000, 45.333286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922485, 38.003780, 44.846039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.658157, 37.736012, 44.710285>,  <37.499561, 37.575348, 44.628834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.658157, 37.736012, 44.710285>,  <37.922485, 38.003780, 44.846039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658157, 37.736012, 44.710285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096620, 0.524303, -0.846032,
		0.744298, -0.526285, -0.411151,
		-0.660822, -0.669425, -0.339388,
		37.459911, 37.535183, 44.608467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188511, 37.654964, 44.198967>,  <37.922485, 38.003780, 44.846039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188511, 37.654964, 44.198967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792233, 37.604637, 44.178223>,  <37.554466, 37.574440, 44.165775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792233, 37.604637, 44.178223>,  <38.188511, 37.654964, 44.198967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792233, 37.604637, 44.178223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029660, 0.172281, -0.984601,
		0.132807, -0.976981, -0.166947,
		-0.990698, -0.125811, -0.051858,
		37.495022, 37.566891, 44.162666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905525, 37.094307, 43.628780>,  <38.188511, 37.654964, 44.198967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905525, 37.094307, 43.628780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574455, 37.309303, 43.693356>,  <37.375813, 37.438301, 43.732101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574455, 37.309303, 43.693356>,  <37.905525, 37.094307, 43.628780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574455, 37.309303, 43.693356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161285, 0.047718, -0.985754,
		-0.537535, -0.841920, 0.047194,
		-0.827673, 0.537489, 0.161439,
		37.326153, 37.470551, 43.741787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294159, 36.752342, 43.303516>,  <37.905525, 37.094307, 43.628780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294159, 36.752342, 43.303516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209709, 37.141911, 43.336750>,  <37.159039, 37.375652, 43.356689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209709, 37.141911, 43.336750>,  <37.294159, 36.752342, 43.303516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209709, 37.141911, 43.336750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125955, 0.057182, -0.990387,
		-0.969310, -0.219561, 0.110598,
		-0.211126, 0.973922, 0.083082,
		37.146370, 37.434086, 43.361675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862434, 36.882206, 42.778458>,  <37.294159, 36.752342, 43.303516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862434, 36.882206, 42.778458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961559, 37.255371, 42.882969>,  <37.021034, 37.479271, 42.945675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961559, 37.255371, 42.882969>,  <36.862434, 36.882206, 42.778458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961559, 37.255371, 42.882969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079074, 0.249315, -0.965189,
		-0.965577, 0.259842, -0.011987,
		0.247808, 0.932912, 0.261279,
		37.035900, 37.535244, 42.961353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488297, 37.353886, 42.410011>,  <36.862434, 36.882206, 42.778458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488297, 37.353886, 42.410011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832928, 37.531818, 42.507832>,  <37.039707, 37.638580, 42.566525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832928, 37.531818, 42.507832>,  <36.488297, 37.353886, 42.410011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832928, 37.531818, 42.507832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137753, 0.258793, -0.956060,
		-0.488577, 0.857408, 0.161693,
		0.861578, 0.444835, 0.244550,
		37.091400, 37.665268, 42.581196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640762, 37.603855, 41.751698>,  <36.488297, 37.353886, 42.410011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640762, 37.603855, 41.751698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.950768, 37.725655, 41.973194>,  <37.136772, 37.798733, 42.106091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.950768, 37.725655, 41.973194>,  <36.640762, 37.603855, 41.751698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950768, 37.725655, 41.973194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402992, 0.436823, -0.804228,
		-0.486771, 0.846445, 0.215837,
		0.775017, 0.304495, 0.553743,
		37.183273, 37.817001, 42.139317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717468, 38.357239, 41.636436>,  <36.640762, 37.603855, 41.751698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717468, 38.357239, 41.636436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071388, 38.216232, 41.758331>,  <37.283741, 38.131630, 41.831470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071388, 38.216232, 41.758331>,  <36.717468, 38.357239, 41.636436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071388, 38.216232, 41.758331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405433, 0.260027, -0.876362,
		0.229689, 0.898955, 0.372992,
		0.884798, -0.352514, 0.304741,
		37.336826, 38.110477, 41.849754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139637, 38.981354, 41.587490>,  <36.717468, 38.357239, 41.636436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139637, 38.981354, 41.587490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380695, 38.662159, 41.584900>,  <37.525330, 38.470642, 41.583344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380695, 38.662159, 41.584900>,  <37.139637, 38.981354, 41.587490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380695, 38.662159, 41.584900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521140, 0.399691, -0.754095,
		0.604344, 0.451076, 0.656733,
		0.602645, -0.797983, -0.006477,
		37.561489, 38.422764, 41.582958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700508, 39.289062, 41.732719>,  <37.139637, 38.981354, 41.587490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700508, 39.289062, 41.732719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786240, 38.950409, 41.537876>,  <37.837681, 38.747219, 41.420971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786240, 38.950409, 41.537876>,  <37.700508, 39.289062, 41.732719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786240, 38.950409, 41.537876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487669, 0.524850, -0.697647,
		0.846311, -0.088022, 0.525367,
		0.214331, -0.846631, -0.487112,
		37.850540, 38.696419, 41.391743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382236, 39.327881, 41.536255>,  <37.700508, 39.289062, 41.732719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382236, 39.327881, 41.536255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228088, 39.064945, 41.277210>,  <38.135601, 38.907185, 41.121784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228088, 39.064945, 41.277210>,  <38.382236, 39.327881, 41.536255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228088, 39.064945, 41.277210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424337, 0.496966, -0.756943,
		0.819407, -0.566507, 0.087418,
		-0.385370, -0.657339, -0.647607,
		38.112476, 38.867744, 41.082928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993984, 39.096233, 41.140305>,  <38.382236, 39.327881, 41.536255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993984, 39.096233, 41.140305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.675255, 38.991550, 40.922470>,  <38.484016, 38.928741, 40.791767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.675255, 38.991550, 40.922470>,  <38.993984, 39.096233, 41.140305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675255, 38.991550, 40.922470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394195, 0.457908, -0.796825,
		0.457908, -0.849605, -0.261709,
		0.796825, 0.261709, 0.544590,
		38.436207, 38.913036, 40.759094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119305, 38.638130, 40.633739>,  <38.993984, 39.096233, 41.140305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119305, 38.638130, 40.633739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815010, 38.858673, 40.496750>,  <38.632435, 38.991001, 40.414558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815010, 38.858673, 40.496750>,  <39.119305, 38.638130, 40.633739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815010, 38.858673, 40.496750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549085, 0.265323, -0.792534,
		-0.346106, -0.790952, -0.504584,
		-0.760734, 0.551360, -0.342470,
		38.586788, 39.024082, 40.394009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344120, 39.383244, 40.456165>,  <39.119305, 38.638130, 40.633739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344120, 39.383244, 40.456165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.685036, 39.574966, 40.372379>,  <39.889584, 39.689999, 40.322109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.685036, 39.574966, 40.372379>,  <39.344120, 39.383244, 40.456165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685036, 39.574966, 40.372379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422316, -0.394247, 0.816222,
		0.308636, -0.784116, -0.538429,
		0.852287, 0.479303, -0.209465,
		39.940723, 39.718758, 40.309540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939751, 38.951221, 40.661201>,  <39.344120, 39.383244, 40.456165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939751, 38.951221, 40.661201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.142143, 39.295452, 40.637886>,  <40.263577, 39.501991, 40.623898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.142143, 39.295452, 40.637886>,  <39.939751, 38.951221, 40.661201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142143, 39.295452, 40.637886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662667, -0.344579, 0.664935,
		0.552141, -0.375068, -0.744624,
		0.505977, 0.860575, -0.058289,
		40.293938, 39.553623, 40.620399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683590, 38.731434, 40.600918>,  <39.939751, 38.951221, 40.661201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683590, 38.731434, 40.600918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.678551, 39.100964, 40.753960>,  <40.675526, 39.322681, 40.845783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.678551, 39.100964, 40.753960>,  <40.683590, 38.731434, 40.600918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678551, 39.100964, 40.753960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663859, -0.278408, 0.694104,
		0.747752, 0.262739, -0.609783,
		-0.012599, 0.923828, 0.382601,
		40.674770, 39.378113, 40.868740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455338, 38.903625, 40.571709>,  <40.683590, 38.731434, 40.600918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455338, 38.903625, 40.571709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.268810, 39.107445, 40.860958>,  <41.156895, 39.229736, 41.034508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.268810, 39.107445, 40.860958>,  <41.455338, 38.903625, 40.571709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268810, 39.107445, 40.860958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648758, -0.358733, 0.671136,
		0.601383, 0.782097, -0.163287,
		-0.466318, 0.509543, 0.723127,
		41.128914, 39.260307, 41.077896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935890, 38.942978, 41.118992>,  <41.455338, 38.903625, 40.571709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935890, 38.942978, 41.118992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.616112, 39.054409, 41.331886>,  <41.424244, 39.121265, 41.459625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.616112, 39.054409, 41.331886>,  <41.935890, 38.942978, 41.118992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616112, 39.054409, 41.331886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390829, -0.431656, 0.812974,
		0.456216, 0.857945, 0.236213,
		-0.799450, 0.278573, 0.532238,
		41.376278, 39.137981, 41.491558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281769, 39.069805, 41.803726>,  <41.935890, 38.942978, 41.118992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281769, 39.069805, 41.803726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.885834, 39.053608, 41.858250>,  <41.648273, 39.043888, 41.890965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.885834, 39.053608, 41.858250>,  <42.281769, 39.069805, 41.803726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885834, 39.053608, 41.858250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140095, -0.441869, 0.886073,
		0.024349, 0.896165, 0.443052,
		-0.989839, -0.040494, 0.136307,
		41.588882, 39.041458, 41.899143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130363, 39.263466, 42.607182>,  <42.281769, 39.069805, 41.803726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130363, 39.263466, 42.607182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810799, 39.058315, 42.481518>,  <41.619061, 38.935223, 42.406120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810799, 39.058315, 42.481518>,  <42.130363, 39.263466, 42.607182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810799, 39.058315, 42.481518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038210, -0.564567, 0.824503,
		-0.600238, 0.646698, 0.470634,
		-0.798908, -0.512881, -0.314164,
		41.571125, 38.904449, 42.387268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782864, 39.167992, 43.229481>,  <42.130363, 39.263466, 42.607182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782864, 39.167992, 43.229481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.608738, 38.904846, 42.983646>,  <41.504261, 38.746960, 42.836147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.608738, 38.904846, 42.983646>,  <41.782864, 39.167992, 43.229481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608738, 38.904846, 42.983646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062259, -0.659028, 0.749538,
		-0.898121, 0.364551, 0.245929,
		-0.435318, -0.657864, -0.614583,
		41.478142, 38.707485, 42.799271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088390, 39.090206, 43.478203>,  <41.782864, 39.167992, 43.229481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088390, 39.090206, 43.478203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.213280, 38.769009, 43.275139>,  <41.288212, 38.576290, 43.153301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.213280, 38.769009, 43.275139>,  <41.088390, 39.090206, 43.478203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213280, 38.769009, 43.275139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102823, -0.559801, 0.822223,
		-0.944428, -0.204516, -0.257348,
		0.312221, -0.802992, -0.507663,
		41.306946, 38.528111, 43.122841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693584, 38.545273, 43.700817>,  <41.088390, 39.090206, 43.478203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693584, 38.545273, 43.700817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.012615, 38.354378, 43.553242>,  <41.204033, 38.239841, 43.464695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.012615, 38.354378, 43.553242>,  <40.693584, 38.545273, 43.700817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012615, 38.354378, 43.553242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161128, -0.757949, 0.632101,
		-0.581298, -0.444704, -0.681419,
		0.797578, -0.477235, -0.368940,
		41.251888, 38.211208, 43.442558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463821, 37.768764, 43.568428>,  <40.693584, 38.545273, 43.700817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463821, 37.768764, 43.568428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.862274, 37.800476, 43.583572>,  <41.101345, 37.819504, 43.592659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.862274, 37.800476, 43.583572>,  <40.463821, 37.768764, 43.568428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862274, 37.800476, 43.583572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048776, -0.857471, 0.512215,
		0.073072, -0.508388, -0.858022,
		0.996133, 0.079279, 0.037860,
		41.161114, 37.824261, 43.594929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686020, 37.147205, 43.308300>,  <40.463821, 37.768764, 43.568428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686020, 37.147205, 43.308300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.968143, 37.302032, 43.545860>,  <41.137417, 37.394928, 43.688396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.968143, 37.302032, 43.545860>,  <40.686020, 37.147205, 43.308300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968143, 37.302032, 43.545860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012086, -0.844225, 0.535854,
		0.708797, -0.370764, -0.600117,
		0.705309, 0.387064, 0.593903,
		41.179737, 37.418152, 43.724030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218166, 36.688820, 43.341473>,  <40.686020, 37.147205, 43.308300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218166, 36.688820, 43.341473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.223106, 36.924568, 43.664581>,  <41.226070, 37.066017, 43.858444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.223106, 36.924568, 43.664581>,  <41.218166, 36.688820, 43.341473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223106, 36.924568, 43.664581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186148, -0.795062, 0.577257,
		0.982444, 0.143237, -0.119527,
		0.012347, 0.589372, 0.807767,
		41.226810, 37.101379, 43.906910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695496, 36.501480, 43.794987>,  <41.218166, 36.688820, 43.341473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695496, 36.501480, 43.794987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.437702, 36.694729, 44.032047>,  <41.283028, 36.810677, 44.174282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.437702, 36.694729, 44.032047>,  <41.695496, 36.501480, 43.794987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437702, 36.694729, 44.032047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105714, -0.711353, 0.694839,
		0.757274, 0.510464, 0.407384,
		-0.644485, 0.483117, 0.592652,
		41.244358, 36.839664, 44.209843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022179, 36.479050, 44.450054>,  <41.695496, 36.501480, 43.794987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022179, 36.479050, 44.450054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.635464, 36.567715, 44.500946>,  <41.403435, 36.620914, 44.531483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.635464, 36.567715, 44.500946>,  <42.022179, 36.479050, 44.450054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635464, 36.567715, 44.500946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008186, -0.470699, 0.882256,
		0.255450, 0.853996, 0.453252,
		-0.966788, 0.221662, 0.127231,
		41.345428, 36.634212, 44.539116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951405, 36.866982, 45.039642>,  <42.022179, 36.479050, 44.450054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951405, 36.866982, 45.039642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.598530, 36.685730, 44.988400>,  <41.386803, 36.576977, 44.957653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.598530, 36.685730, 44.988400>,  <41.951405, 36.866982, 45.039642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598530, 36.685730, 44.988400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055464, -0.370146, 0.927316,
		-0.467616, 0.810964, 0.351672,
		-0.882190, -0.453133, -0.128108,
		41.333874, 36.549789, 44.949966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716824, 36.841114, 45.692608>,  <41.951405, 36.866982, 45.039642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716824, 36.841114, 45.692608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.510075, 36.565235, 45.489765>,  <41.386024, 36.399708, 45.368057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.510075, 36.565235, 45.489765>,  <41.716824, 36.841114, 45.692608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510075, 36.565235, 45.489765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071723, -0.555401, 0.828484,
		-0.853054, 0.464589, 0.237603,
		-0.516869, -0.689700, -0.507109,
		41.355015, 36.358326, 45.337631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119297, 36.611511, 46.100315>,  <41.716824, 36.841114, 45.692608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119297, 36.611511, 46.100315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.117775, 36.316261, 45.830456>,  <41.116863, 36.139111, 45.668541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.117775, 36.316261, 45.830456>,  <41.119297, 36.611511, 46.100315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117775, 36.316261, 45.830456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197792, -0.660773, 0.724056,
		-0.980237, 0.136197, -0.143480,
		-0.003806, -0.738125, -0.674653,
		41.116634, 36.094822, 45.628059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.499802, 36.232685, 46.139729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.738789, 35.963085, 45.965942>,  <40.882179, 35.801327, 45.861671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.738789, 35.963085, 45.965942>,  <40.499802, 36.232685, 46.139729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738789, 35.963085, 45.965942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295189, -0.688613, 0.662326,
		-0.745586, -0.267466, -0.610379,
		0.597465, -0.673998, -0.434467,
		40.918030, 35.760887, 45.835602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094204, 35.724388, 45.977577>,  <40.499802, 36.232685, 46.139729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094204, 35.724388, 45.977577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454769, 35.551281, 45.982693>,  <40.671108, 35.447414, 45.985760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454769, 35.551281, 45.982693>,  <40.094204, 35.724388, 45.977577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454769, 35.551281, 45.982693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345830, -0.701926, 0.622657,
		-0.260494, -0.565693, -0.782390,
		0.901413, -0.432773, 0.012786,
		40.725193, 35.421448, 45.986530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898647, 34.990814, 45.902195>,  <40.094204, 35.724388, 45.977577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898647, 34.990814, 45.902195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273846, 34.994511, 46.040798>,  <40.498966, 34.996727, 46.123962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273846, 34.994511, 46.040798>,  <39.898647, 34.990814, 45.902195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273846, 34.994511, 46.040798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221516, -0.752912, 0.619721,
		0.266620, -0.658056, -0.704184,
		0.938000, 0.009242, 0.346512,
		40.555244, 34.997284, 46.144753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999454, 34.345039, 46.188717>,  <39.898647, 34.990814, 45.902195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999454, 34.345039, 46.188717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.334229, 34.496567, 46.346722>,  <40.535091, 34.587482, 46.441525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.334229, 34.496567, 46.346722>,  <39.999454, 34.345039, 46.188717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334229, 34.496567, 46.346722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006812, -0.728905, 0.684581,
		0.547259, -0.570259, -0.612627,
		0.836936, 0.378816, 0.395015,
		40.585308, 34.610210, 46.465225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477737, 33.754547, 46.169258>,  <39.999454, 34.345039, 46.188717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477737, 33.754547, 46.169258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574093, 34.049206, 46.422028>,  <40.631905, 34.226002, 46.573689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574093, 34.049206, 46.422028>,  <40.477737, 33.754547, 46.169258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574093, 34.049206, 46.422028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017710, -0.647647, 0.761735,
		0.970392, -0.194682, -0.142963,
		0.240886, 0.736649, 0.631919,
		40.646358, 34.270199, 46.611603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081451, 33.597542, 46.621857>,  <40.477737, 33.754547, 46.169258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081451, 33.597542, 46.621857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881550, 33.879608, 46.823048>,  <40.761608, 34.048847, 46.943764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881550, 33.879608, 46.823048>,  <41.081451, 33.597542, 46.621857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881550, 33.879608, 46.823048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086780, -0.618533, 0.780952,
		0.861809, 0.346636, 0.370309,
		-0.499754, 0.705167, 0.502976,
		40.731625, 34.091160, 46.973942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408096, 33.494991, 47.206718>,  <41.081451, 33.597542, 46.621857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408096, 33.494991, 47.206718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.073898, 33.695061, 47.297741>,  <40.873379, 33.815102, 47.352352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.073898, 33.695061, 47.297741>,  <41.408096, 33.494991, 47.206718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073898, 33.695061, 47.297741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103465, -0.549888, 0.828805,
		0.539675, 0.668916, 0.511178,
		-0.835492, 0.500174, 0.227552,
		40.823250, 33.845112, 47.366005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555710, 33.687309, 47.841022>,  <41.408096, 33.494991, 47.206718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555710, 33.687309, 47.841022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.161644, 33.740578, 47.797714>,  <40.925205, 33.772537, 47.771729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.161644, 33.740578, 47.797714>,  <41.555710, 33.687309, 47.841022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161644, 33.740578, 47.797714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164249, -0.548566, 0.819815,
		0.049785, 0.825434, 0.562300,
		-0.985162, 0.133172, -0.108267,
		40.866096, 33.780529, 47.765236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379421, 34.073288, 48.384941>,  <41.555710, 33.687309, 47.841022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379421, 34.073288, 48.384941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.056389, 33.863968, 48.276150>,  <40.862572, 33.738377, 48.210876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.056389, 33.863968, 48.276150>,  <41.379421, 34.073288, 48.384941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056389, 33.863968, 48.276150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005353, -0.467652, 0.883897,
		-0.589738, 0.712359, 0.380466,
		-0.807577, -0.523304, -0.271979,
		40.814117, 33.706978, 48.194557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903530, 34.054565, 48.938278>,  <41.379421, 34.073288, 48.384941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903530, 34.054565, 48.938278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785046, 33.751747, 48.705338>,  <40.713955, 33.570057, 48.565575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785046, 33.751747, 48.705338>,  <40.903530, 34.054565, 48.938278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785046, 33.751747, 48.705338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181029, -0.554165, 0.812484,
		-0.937809, 0.346091, 0.027103,
		-0.296213, -0.757049, -0.582353,
		40.696182, 33.524632, 48.530632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514103, 33.665642, 49.385849>,  <40.903530, 34.054565, 48.938278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514103, 33.665642, 49.385849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.522625, 33.419365, 49.070770>,  <40.527740, 33.271599, 48.881721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.522625, 33.419365, 49.070770>,  <40.514103, 33.665642, 49.385849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522625, 33.419365, 49.070770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062485, -0.785514, 0.615682,
		-0.997818, -0.062339, 0.021733,
		0.021309, -0.615696, -0.787695,
		40.529018, 33.234657, 48.834461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945568, 33.155785, 49.395302>,  <40.514103, 33.665642, 49.385849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945568, 33.155785, 49.395302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.269604, 33.013218, 49.209087>,  <40.464024, 32.927677, 49.097359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.269604, 33.013218, 49.209087>,  <39.945568, 33.155785, 49.395302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269604, 33.013218, 49.209087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064199, -0.735313, 0.674680,
		-0.582783, -0.576437, -0.572786,
		0.810088, -0.356420, -0.465535,
		40.512630, 32.906292, 49.069427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785328, 32.468723, 49.099499>,  <39.945568, 33.155785, 49.395302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785328, 32.468723, 49.099499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182919, 32.497540, 49.132545>,  <40.421471, 32.514828, 49.152374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182919, 32.497540, 49.132545>,  <39.785328, 32.468723, 49.099499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182919, 32.497540, 49.132545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007584, -0.797119, 0.603774,
		0.109352, -0.599509, -0.792862,
		0.993974, 0.072037, 0.082620,
		40.481110, 32.519150, 49.157330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001686, 31.816053, 49.001759>,  <39.785328, 32.468723, 49.099499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001686, 31.816053, 49.001759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321457, 31.978418, 49.178913>,  <40.513321, 32.075836, 49.285206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321457, 31.978418, 49.178913>,  <40.001686, 31.816053, 49.001759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321457, 31.978418, 49.178913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116957, -0.828263, 0.547998,
		0.589267, -0.386286, -0.709611,
		0.799428, 0.405911, 0.442889,
		40.561287, 32.100193, 49.311779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518402, 31.271029, 49.056919>,  <40.001686, 31.816053, 49.001759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518402, 31.271029, 49.056919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.604141, 31.556726, 49.323425>,  <40.655582, 31.728146, 49.483330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.604141, 31.556726, 49.323425>,  <40.518402, 31.271029, 49.056919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604141, 31.556726, 49.323425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190913, -0.699598, 0.688560,
		0.957919, -0.020389, -0.286313,
		0.214343, 0.714245, 0.666266,
		40.668446, 31.771000, 49.523304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924530, 30.966761, 49.448013>,  <40.518402, 31.271029, 49.056919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924530, 30.966761, 49.448013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.834419, 31.275881, 49.685341>,  <40.780354, 31.461353, 49.827736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.834419, 31.275881, 49.685341>,  <40.924530, 30.966761, 49.448013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834419, 31.275881, 49.685341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050667, -0.598857, 0.799251,
		0.972977, 0.210113, 0.095752,
		-0.225275, 0.772802, 0.593320,
		40.766838, 31.507721, 49.863338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356644, 31.009424, 49.926262>,  <40.924530, 30.966761, 49.448013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356644, 31.009424, 49.926262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034206, 31.177891, 50.092556>,  <40.840744, 31.278971, 50.192333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034206, 31.177891, 50.092556>,  <41.356644, 31.009424, 49.926262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034206, 31.177891, 50.092556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024321, -0.678337, 0.734348,
		0.591294, 0.602061, 0.536557,
		-0.806089, 0.421166, 0.415740,
		40.792381, 31.304241, 50.217278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506481, 30.925253, 50.559025>,  <41.356644, 31.009424, 49.926262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506481, 30.925253, 50.559025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.117912, 31.008879, 50.603973>,  <40.884769, 31.059055, 50.630943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.117912, 31.008879, 50.603973>,  <41.506481, 30.925253, 50.559025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117912, 31.008879, 50.603973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076901, -0.725132, 0.684302,
		0.224548, 0.656106, 0.720488,
		-0.971424, 0.209065, 0.112372,
		40.826485, 31.071598, 50.637684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315456, 30.969124, 51.201824>,  <41.506481, 30.925253, 50.559025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315456, 30.969124, 51.201824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974392, 30.861532, 51.022659>,  <40.769753, 30.796978, 50.915161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974392, 30.861532, 51.022659>,  <41.315456, 30.969124, 51.201824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974392, 30.861532, 51.022659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104922, -0.751681, 0.651127,
		-0.511827, 0.602184, 0.612704,
		-0.852657, -0.268978, -0.447913,
		40.718594, 30.780838, 50.888287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038513, 30.502127, 51.638256>,  <41.315456, 30.969124, 51.201824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038513, 30.502127, 51.638256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.810719, 30.394154, 51.327690>,  <40.674042, 30.329370, 51.141350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.810719, 30.394154, 51.327690>,  <41.038513, 30.502127, 51.638256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810719, 30.394154, 51.327690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092177, -0.917615, 0.386634,
		-0.816814, 0.291751, 0.497690,
		-0.569489, -0.269932, -0.776414,
		40.639874, 30.313173, 51.094765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531986, 30.108074, 51.958229>,  <41.038513, 30.502127, 51.638256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531986, 30.108074, 51.958229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.540070, 30.011412, 51.570168>,  <40.544918, 29.953415, 51.337330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.540070, 30.011412, 51.570168>,  <40.531986, 30.108074, 51.958229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540070, 30.011412, 51.570168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014585, -0.970175, 0.241967,
		-0.999690, -0.019040, -0.016081,
		0.020208, -0.241657, -0.970151,
		40.546131, 29.938915, 51.279121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496479, 29.411245, 52.200172>,  <40.531986, 30.108074, 51.958229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496479, 29.411245, 52.200172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.451363, 29.419434, 51.802811>,  <40.424294, 29.424347, 51.564392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.451363, 29.419434, 51.802811>,  <40.496479, 29.411245, 52.200172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451363, 29.419434, 51.802811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119838, -0.992770, -0.006851,
		-0.986366, 0.118276, 0.114430,
		-0.112793, 0.020470, -0.993408,
		40.417526, 29.425575, 51.504787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865879, 29.190969, 52.121014>,  <40.496479, 29.411245, 52.200172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865879, 29.190969, 52.121014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108818, 29.117222, 51.811913>,  <40.254581, 29.072973, 51.626453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108818, 29.117222, 51.811913>,  <39.865879, 29.190969, 52.121014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108818, 29.117222, 51.811913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189662, -0.978222, 0.084324,
		-0.771466, 0.095347, -0.629086,
		0.607345, -0.184367, -0.772748,
		40.291023, 29.061913, 51.580090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443516, 28.908148, 51.490955>,  <39.865879, 29.190969, 52.121014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443516, 28.908148, 51.490955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807880, 28.816507, 51.628220>,  <40.026497, 28.761522, 51.710579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807880, 28.816507, 51.628220>,  <39.443516, 28.908148, 51.490955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807880, 28.816507, 51.628220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360153, -0.847309, 0.390330,
		0.201339, -0.479146, -0.854331,
		0.910908, -0.229101, 0.343162,
		40.081154, 28.747776, 51.731167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109772, 28.264086, 51.434517>,  <39.443516, 28.908148, 51.490955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109772, 28.264086, 51.434517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736660, 28.314913, 51.569443>,  <38.512794, 28.345409, 51.650398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736660, 28.314913, 51.569443>,  <39.109772, 28.264086, 51.434517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736660, 28.314913, 51.569443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076086, 0.845309, -0.528833,
		-0.352332, -0.518948, -0.778816,
		-0.932777, 0.127068, 0.337314,
		38.456825, 28.353033, 51.670635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611000, 28.258993, 50.914597>,  <39.109772, 28.264086, 51.434517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611000, 28.258993, 50.914597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413357, 28.463757, 51.195683>,  <38.294769, 28.586615, 51.364334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413357, 28.463757, 51.195683>,  <38.611000, 28.258993, 50.914597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413357, 28.463757, 51.195683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039701, 0.794146, -0.606428,
		-0.868493, -0.327541, -0.372072,
		-0.494110, 0.511907, 0.702714,
		38.265125, 28.617329, 51.406498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080399, 28.411533, 50.652687>,  <38.611000, 28.258993, 50.914597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080399, 28.411533, 50.652687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103249, 28.687366, 50.941467>,  <38.116959, 28.852865, 51.114735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103249, 28.687366, 50.941467>,  <38.080399, 28.411533, 50.652687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103249, 28.687366, 50.941467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306502, 0.700325, -0.644672,
		-0.950154, -0.184452, 0.251364,
		0.057126, 0.689581, 0.721952,
		38.120388, 28.894241, 51.158054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488297, 28.801579, 50.574635>,  <38.080399, 28.411533, 50.652687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488297, 28.801579, 50.574635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736595, 29.038321, 50.780304>,  <37.885574, 29.180367, 50.903706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736595, 29.038321, 50.780304>,  <37.488297, 28.801579, 50.574635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736595, 29.038321, 50.780304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219343, 0.760743, -0.610867,
		-0.752700, 0.266416, 0.602051,
		0.620751, 0.591855, 0.514175,
		37.922821, 29.215878, 50.934555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098228, 29.438452, 50.598576>,  <37.488297, 28.801579, 50.574635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098228, 29.438452, 50.598576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475864, 29.534973, 50.688438>,  <37.702446, 29.592886, 50.742355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475864, 29.534973, 50.688438>,  <37.098228, 29.438452, 50.598576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475864, 29.534973, 50.688438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102696, 0.862745, -0.495101,
		-0.313294, 0.444347, 0.839287,
		0.944087, 0.241303, 0.224660,
		37.759090, 29.607365, 50.755836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048531, 30.150532, 50.653999>,  <37.098228, 29.438452, 50.598576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048531, 30.150532, 50.653999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446831, 30.114634, 50.645817>,  <37.685810, 30.093094, 50.640907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446831, 30.114634, 50.645817>,  <37.048531, 30.150532, 50.653999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446831, 30.114634, 50.645817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070310, 0.885021, -0.460211,
		0.059408, 0.456819, 0.887574,
		0.995755, -0.089745, -0.020459,
		37.745556, 30.087709, 50.639679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428120, 30.731363, 50.729946>,  <37.048531, 30.150532, 50.653999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428120, 30.731363, 50.729946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746284, 30.559183, 50.559288>,  <37.937183, 30.455875, 50.456894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746284, 30.559183, 50.559288>,  <37.428120, 30.731363, 50.729946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746284, 30.559183, 50.559288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172016, 0.835354, -0.522106,
		0.581141, 0.341901, 0.738498,
		0.795415, -0.430451, -0.426646,
		37.984909, 30.430048, 50.431293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014771, 31.247990, 50.714512>,  <37.428120, 30.731363, 50.729946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014771, 31.247990, 50.714512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.120972, 30.974504, 50.442616>,  <38.184692, 30.810413, 50.279476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.120972, 30.974504, 50.442616>,  <38.014771, 31.247990, 50.714512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120972, 30.974504, 50.442616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345466, 0.725693, -0.594998,
		0.900091, -0.076855, 0.428871,
		0.265500, -0.683713, -0.679740,
		38.200623, 30.769390, 50.238693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635761, 31.431620, 50.582916>,  <38.014771, 31.247990, 50.714512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635761, 31.431620, 50.582916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471817, 31.249382, 50.266830>,  <38.373451, 31.140039, 50.077179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471817, 31.249382, 50.266830>,  <38.635761, 31.431620, 50.582916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471817, 31.249382, 50.266830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340007, 0.727582, -0.595836,
		0.846409, -0.512890, -0.143303,
		-0.409863, -0.455597, -0.790218,
		38.348858, 31.112703, 50.029766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100662, 31.386734, 50.001373>,  <38.635761, 31.431620, 50.582916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100662, 31.386734, 50.001373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748497, 31.335203, 49.818825>,  <38.537197, 31.304285, 49.709293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748497, 31.335203, 49.818825>,  <39.100662, 31.386734, 50.001373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748497, 31.335203, 49.818825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173235, 0.808500, -0.562421,
		0.441433, -0.574222, -0.689497,
		-0.880413, -0.128827, -0.456374,
		38.484375, 31.296555, 49.681911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193581, 31.295252, 49.330120>,  <39.100662, 31.386734, 50.001373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193581, 31.295252, 49.330120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.810436, 31.409912, 49.322876>,  <38.580547, 31.478708, 49.318527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.810436, 31.409912, 49.322876>,  <39.193581, 31.295252, 49.330120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810436, 31.409912, 49.322876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249562, 0.799403, -0.546511,
		-0.142178, -0.528004, -0.837256,
		-0.957865, 0.286649, -0.018112,
		38.523075, 31.495907, 49.317444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972183, 31.343487, 48.661911>,  <39.193581, 31.295252, 49.330120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972183, 31.343487, 48.661911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.698071, 31.557718, 48.859310>,  <38.533604, 31.686258, 48.977749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.698071, 31.557718, 48.859310>,  <38.972183, 31.343487, 48.661911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698071, 31.557718, 48.859310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155370, 0.769538, -0.619412,
		-0.711509, -0.347799, -0.610566,
		-0.685285, 0.535581, 0.493496,
		38.492485, 31.718393, 49.007359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366966, 31.491596, 48.209538>,  <38.972183, 31.343487, 48.661911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366966, 31.491596, 48.209538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.359322, 31.771355, 48.495331>,  <38.354736, 31.939209, 48.666805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.359322, 31.771355, 48.495331>,  <38.366966, 31.491596, 48.209538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359322, 31.771355, 48.495331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270489, 0.684345, -0.677132,
		-0.962533, -0.206200, 0.176099,
		-0.019112, 0.699395, 0.714480,
		38.353588, 31.981173, 48.709675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947392, 31.898523, 47.891472>,  <38.366966, 31.491596, 48.209538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947392, 31.898523, 47.891472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.038696, 32.140575, 48.196552>,  <38.093479, 32.285809, 48.379601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.038696, 32.140575, 48.196552>,  <37.947392, 31.898523, 47.891472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038696, 32.140575, 48.196552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263882, 0.792512, -0.549809,
		-0.937157, -0.075763, 0.340583,
		0.228261, 0.605132, 0.762701,
		38.107174, 32.322113, 48.425362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396099, 32.428623, 47.871941>,  <37.947392, 31.898523, 47.891472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396099, 32.428623, 47.871941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700172, 32.593929, 48.072472>,  <37.882618, 32.693111, 48.192791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700172, 32.593929, 48.072472>,  <37.396099, 32.428623, 47.871941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700172, 32.593929, 48.072472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194243, 0.880896, -0.431615,
		-0.619992, 0.230726, 0.749917,
		0.760184, 0.413264, 0.501332,
		37.928226, 32.717907, 48.222870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144222, 33.087303, 48.209076>,  <37.396099, 32.428623, 47.871941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144222, 33.087303, 48.209076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535671, 33.153511, 48.160236>,  <37.770538, 33.193237, 48.130932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535671, 33.153511, 48.160236>,  <37.144222, 33.087303, 48.209076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535671, 33.153511, 48.160236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201011, 0.895452, -0.397191,
		0.043591, 0.413242, 0.909577,
		0.978619, 0.165521, -0.122100,
		37.829258, 33.203167, 48.123608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282803, 33.779015, 48.469337>,  <37.144222, 33.087303, 48.209076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282803, 33.779015, 48.469337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606815, 33.709167, 48.245426>,  <37.801224, 33.667259, 48.111080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606815, 33.709167, 48.245426>,  <37.282803, 33.779015, 48.469337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606815, 33.709167, 48.245426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110359, 0.892174, -0.438002,
		0.575901, 0.416574, 0.703423,
		0.810037, -0.174617, -0.559776,
		37.849827, 33.656784, 48.077492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726288, 34.387932, 48.536739>,  <37.282803, 33.779015, 48.469337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726288, 34.387932, 48.536739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871086, 34.211594, 48.208199>,  <37.957966, 34.105789, 48.011074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871086, 34.211594, 48.208199>,  <37.726288, 34.387932, 48.536739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871086, 34.211594, 48.208199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060151, 0.868223, -0.492515,
		0.930238, 0.227692, 0.287774,
		0.361994, -0.440846, -0.821350,
		37.979683, 34.079338, 47.961792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145123, 34.892101, 48.307034>,  <37.726288, 34.387932, 48.536739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145123, 34.892101, 48.307034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079880, 34.649067, 47.996101>,  <38.040733, 34.503246, 47.809544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079880, 34.649067, 47.996101>,  <38.145123, 34.892101, 48.307034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079880, 34.649067, 47.996101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168601, 0.793455, -0.584810,
		0.972096, 0.035674, -0.231854,
		-0.163103, -0.607583, -0.777329,
		38.030949, 34.466793, 47.762901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588020, 35.166206, 47.699635>,  <38.145123, 34.892101, 48.307034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588020, 35.166206, 47.699635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312447, 34.936932, 47.522175>,  <38.147102, 34.799366, 47.415699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312447, 34.936932, 47.522175>,  <38.588020, 35.166206, 47.699635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312447, 34.936932, 47.522175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171589, 0.723654, -0.668492,
		0.704214, -0.384428, -0.596907,
		-0.688941, -0.573184, -0.443644,
		38.105766, 34.764977, 47.389080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.653587, 38.877304, 28.070267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262070, 38.801331, 28.100954>,  <42.027161, 38.755745, 28.119366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262070, 38.801331, 28.100954>,  <42.653587, 38.877304, 28.070267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262070, 38.801331, 28.100954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133481, -0.307305, 0.942203,
		-0.155380, 0.932464, 0.326141,
		-0.978795, -0.189933, 0.076717,
		41.968430, 38.744350, 28.123970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311150, 39.353531, 28.513973>,  <42.653587, 38.877304, 28.070267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311150, 39.353531, 28.513973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183075, 38.974625, 28.508642>,  <42.106232, 38.747280, 28.505444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183075, 38.974625, 28.508642>,  <42.311150, 39.353531, 28.513973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183075, 38.974625, 28.508642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137174, -0.060278, 0.988711,
		-0.937372, 0.314741, 0.149240,
		-0.320184, -0.947262, -0.013328,
		42.087021, 38.690445, 28.504644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713509, 39.263882, 29.010962>,  <42.311150, 39.353531, 28.513973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713509, 39.263882, 29.010962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.890423, 38.907738, 28.967791>,  <41.996571, 38.694050, 28.941887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.890423, 38.907738, 28.967791>,  <41.713509, 39.263882, 29.010962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890423, 38.907738, 28.967791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183590, -0.207668, 0.960817,
		-0.877885, -0.405137, -0.255309,
		0.442281, -0.890359, -0.107929,
		42.023106, 38.640629, 28.935411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309521, 38.908298, 29.486952>,  <41.713509, 39.263882, 29.010962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309521, 38.908298, 29.486952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640194, 38.705173, 29.390020>,  <41.838596, 38.583298, 29.331861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640194, 38.705173, 29.390020>,  <41.309521, 38.908298, 29.486952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640194, 38.705173, 29.390020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060869, -0.508859, 0.858696,
		-0.559374, -0.695114, -0.451572,
		0.826678, -0.507819, -0.242331,
		41.888199, 38.552830, 29.317322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162598, 38.228916, 29.633566>,  <41.309521, 38.908298, 29.486952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162598, 38.228916, 29.633566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.561008, 38.264530, 29.632196>,  <41.800053, 38.285896, 29.631374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.561008, 38.264530, 29.632196>,  <41.162598, 38.228916, 29.633566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561008, 38.264530, 29.632196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034252, -0.347122, 0.937194,
		0.082253, -0.933584, -0.348791,
		0.996023, 0.089034, -0.003426,
		41.859814, 38.291241, 29.631168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481499, 37.645977, 29.888685>,  <41.162598, 38.228916, 29.633566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481499, 37.645977, 29.888685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763168, 37.921589, 29.957239>,  <41.932171, 38.086956, 29.998371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763168, 37.921589, 29.957239>,  <41.481499, 37.645977, 29.888685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763168, 37.921589, 29.957239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071185, -0.308672, 0.948501,
		0.706447, -0.655713, -0.266408,
		0.704177, 0.689030, 0.171384,
		41.974422, 38.128300, 30.008654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903915, 37.295628, 30.236307>,  <41.481499, 37.645977, 29.888685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903915, 37.295628, 30.236307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058361, 37.658081, 30.305397>,  <42.151028, 37.875553, 30.346851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058361, 37.658081, 30.305397>,  <41.903915, 37.295628, 30.236307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058361, 37.658081, 30.305397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271583, -0.290614, 0.917489,
		0.881566, -0.307347, -0.358301,
		0.386115, 0.906135, 0.172725,
		42.174194, 37.929920, 30.357214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544098, 37.051659, 30.478388>,  <41.903915, 37.295628, 30.236307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544098, 37.051659, 30.478388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501709, 37.436871, 30.577463>,  <42.476276, 37.667995, 30.636908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501709, 37.436871, 30.577463>,  <42.544098, 37.051659, 30.478388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501709, 37.436871, 30.577463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336763, -0.199613, 0.920188,
		0.935607, 0.180926, -0.303159,
		-0.105971, 0.963027, 0.247688,
		42.469917, 37.725780, 30.651770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130455, 37.306328, 30.678036>,  <42.544098, 37.051659, 30.478388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130455, 37.306328, 30.678036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880463, 37.559494, 30.860819>,  <42.730465, 37.711395, 30.970490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880463, 37.559494, 30.860819>,  <43.130455, 37.306328, 30.678036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880463, 37.559494, 30.860819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385325, -0.258969, 0.885697,
		0.678911, 0.729624, -0.082027,
		-0.624984, 0.632916, 0.456959,
		42.692966, 37.749371, 30.997906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540600, 37.626980, 31.221354>,  <43.130455, 37.306328, 30.678036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540600, 37.626980, 31.221354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165325, 37.693939, 31.342541>,  <42.940163, 37.734116, 31.415253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165325, 37.693939, 31.342541>,  <43.540600, 37.626980, 31.221354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165325, 37.693939, 31.342541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269943, -0.194037, 0.943123,
		0.216666, 0.966606, 0.136853,
		-0.938183, 0.167400, 0.302970,
		42.883869, 37.744160, 31.433432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571606, 38.108822, 31.751862>,  <43.540600, 37.626980, 31.221354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571606, 38.108822, 31.751862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229694, 37.904762, 31.790003>,  <43.024548, 37.782326, 31.812887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229694, 37.904762, 31.790003>,  <43.571606, 38.108822, 31.751862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229694, 37.904762, 31.790003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252512, -0.248294, 0.935194,
		-0.453416, 0.823465, 0.341057,
		-0.854781, -0.510153, 0.095354,
		42.973259, 37.751717, 31.818609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560936, 38.207310, 32.534752>,  <43.571606, 38.108822, 31.751862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560936, 38.207310, 32.534752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303310, 37.933853, 32.397457>,  <43.148735, 37.769779, 32.315079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303310, 37.933853, 32.397457>,  <43.560936, 38.207310, 32.534752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303310, 37.933853, 32.397457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053156, -0.407617, 0.911605,
		-0.763122, 0.605378, 0.226192,
		-0.644065, -0.683642, -0.343241,
		43.110092, 37.728760, 32.294483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943428, 38.318741, 32.850437>,  <43.560936, 38.207310, 32.534752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943428, 38.318741, 32.850437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949139, 37.934166, 32.740582>,  <42.952564, 37.703419, 32.674667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949139, 37.934166, 32.740582>,  <42.943428, 38.318741, 32.850437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949139, 37.934166, 32.740582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023995, -0.274921, 0.961168,
		-0.999610, -0.007132, -0.026995,
		0.014276, -0.961441, -0.274643,
		42.953423, 37.645733, 32.658188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599159, 37.943142, 33.430901>,  <42.943428, 38.318741, 32.850437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599159, 37.943142, 33.430901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757149, 37.630775, 33.237339>,  <42.851940, 37.443356, 33.121204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757149, 37.630775, 33.237339>,  <42.599159, 37.943142, 33.430901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757149, 37.630775, 33.237339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127164, -0.475185, 0.870648,
		-0.909850, -0.405416, -0.088379,
		0.394972, -0.780921, -0.483901,
		42.875641, 37.396500, 33.092167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276974, 37.301212, 33.749458>,  <42.599159, 37.943142, 33.430901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276974, 37.301212, 33.749458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.638416, 37.217419, 33.600002>,  <42.855282, 37.167145, 33.510330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.638416, 37.217419, 33.600002>,  <42.276974, 37.301212, 33.749458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638416, 37.217419, 33.600002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246057, -0.460166, 0.853055,
		-0.350635, -0.862766, -0.364267,
		0.903610, -0.209481, -0.373640,
		42.909500, 37.154575, 33.487911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385929, 36.735718, 34.011986>,  <42.276974, 37.301212, 33.749458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385929, 36.735718, 34.011986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.760929, 36.794231, 33.885685>,  <42.985928, 36.829338, 33.809906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.760929, 36.794231, 33.885685>,  <42.385929, 36.735718, 34.011986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760929, 36.794231, 33.885685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341399, -0.562372, 0.753117,
		-0.067402, -0.813842, -0.577163,
		0.937499, 0.146281, -0.315750,
		43.042179, 36.838116, 33.790958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719563, 36.126770, 34.128658>,  <42.385929, 36.735718, 34.011986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719563, 36.126770, 34.128658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026196, 36.382320, 34.102734>,  <43.210175, 36.535648, 34.087177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026196, 36.382320, 34.102734>,  <42.719563, 36.126770, 34.128658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026196, 36.382320, 34.102734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444973, -0.455713, 0.770925,
		0.462987, -0.619814, -0.633620,
		0.766578, 0.638872, -0.064811,
		43.256168, 36.573982, 34.083290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265079, 35.664566, 34.229874>,  <42.719563, 36.126770, 34.128658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265079, 35.664566, 34.229874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396587, 36.034805, 34.304897>,  <43.475491, 36.256950, 34.349911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396587, 36.034805, 34.304897>,  <43.265079, 35.664566, 34.229874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396587, 36.034805, 34.304897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585873, -0.355657, 0.728190,
		0.740719, -0.129520, -0.659212,
		0.328769, 0.925598, 0.187560,
		43.495216, 36.312485, 34.361164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971775, 35.566341, 34.431301>,  <43.265079, 35.664566, 34.229874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971775, 35.566341, 34.431301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904316, 35.938675, 34.560978>,  <43.863838, 36.162075, 34.638783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904316, 35.938675, 34.560978>,  <43.971775, 35.566341, 34.431301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904316, 35.938675, 34.560978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615936, -0.157252, 0.771942,
		0.769532, 0.329869, -0.546816,
		-0.168652, 0.930837, 0.324189,
		43.853722, 36.217926, 34.658234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697285, 35.872429, 34.592503>,  <43.971775, 35.566341, 34.431301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697285, 35.872429, 34.592503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402256, 36.036926, 34.806744>,  <44.225239, 36.135624, 34.935287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.402256, 36.036926, 34.806744>,  <44.697285, 35.872429, 34.592503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402256, 36.036926, 34.806744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410534, -0.356672, 0.839194,
		0.536149, 0.838846, 0.094240,
		-0.737568, 0.411244, 0.535604,
		44.180984, 36.160301, 34.967426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039612, 36.333874, 35.084694>,  <44.697285, 35.872429, 34.592503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039612, 36.333874, 35.084694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.686531, 36.190594, 35.206364>,  <44.474682, 36.104626, 35.279366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.686531, 36.190594, 35.206364>,  <45.039612, 36.333874, 35.084694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686531, 36.190594, 35.206364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439811, -0.401718, 0.803237,
		-0.165528, 0.842801, 0.512139,
		-0.882704, -0.358202, 0.304178,
		44.421719, 36.083134, 35.297619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661655, 36.554680, 35.010212>,  <45.039612, 36.333874, 35.084694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661655, 36.554680, 35.010212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.996181, 36.477222, 34.805046>,  <46.196896, 36.430748, 34.681946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.996181, 36.477222, 34.805046>,  <45.661655, 36.554680, 35.010212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996181, 36.477222, 34.805046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401790, 0.420063, -0.813703,
		0.373025, 0.886594, 0.273501,
		0.836312, -0.193642, -0.512919,
		46.247074, 36.419128, 34.651169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809429, 37.162075, 34.532398>,  <45.661655, 36.554680, 35.010212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809429, 37.162075, 34.532398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.004932, 36.848225, 34.379826>,  <46.122234, 36.659916, 34.288284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.004932, 36.848225, 34.379826>,  <45.809429, 37.162075, 34.532398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004932, 36.848225, 34.379826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339226, 0.231883, -0.911677,
		0.803768, 0.574978, -0.152830,
		0.488755, -0.784621, -0.381428,
		46.151558, 36.612839, 34.265396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286137, 37.479244, 33.967533>,  <45.809429, 37.162075, 34.532398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286137, 37.479244, 33.967533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.215939, 37.090759, 33.903095>,  <46.173820, 36.857670, 33.864433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.215939, 37.090759, 33.903095>,  <46.286137, 37.479244, 33.967533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215939, 37.090759, 33.903095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165183, 0.190363, -0.967717,
		0.970523, -0.143223, -0.193836,
		-0.175498, -0.971210, -0.161093,
		46.163288, 36.799397, 33.854767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.720455, 37.354115, 33.394226>,  <46.286137, 37.479244, 33.967533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.720455, 37.354115, 33.394226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.456051, 37.054001, 33.389427>,  <46.297409, 36.873932, 33.386547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.456051, 37.054001, 33.389427>,  <46.720455, 37.354115, 33.394226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456051, 37.054001, 33.389427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000499, 0.016427, -0.999865,
		0.750376, -0.660916, -0.011233,
		-0.661011, -0.750281, -0.011996,
		46.257748, 36.828918, 33.385830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.013897, 36.957855, 32.886192>,  <46.720455, 37.354115, 33.394226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.013897, 36.957855, 32.886192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.632881, 36.847614, 32.937908>,  <46.404274, 36.781471, 32.968937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.632881, 36.847614, 32.937908>,  <47.013897, 36.957855, 32.886192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632881, 36.847614, 32.937908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108837, -0.088330, -0.990127,
		0.284302, -0.957205, 0.054142,
		-0.952537, -0.275603, 0.129291,
		46.347118, 36.764935, 32.976696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902180, 36.464149, 32.443779>,  <47.013897, 36.957855, 32.886192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902180, 36.464149, 32.443779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.521744, 36.566780, 32.512604>,  <46.293484, 36.628357, 32.553898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.521744, 36.566780, 32.512604>,  <46.902180, 36.464149, 32.443779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521744, 36.566780, 32.512604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207923, -0.119740, -0.970789,
		-0.228479, -0.959078, 0.167231,
		-0.951086, 0.256576, 0.172057,
		46.236416, 36.643753, 32.564220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457016, 35.896568, 32.246593>,  <46.902180, 36.464149, 32.443779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457016, 35.896568, 32.246593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.234756, 36.229076, 32.240429>,  <46.101402, 36.428581, 32.236729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.234756, 36.229076, 32.240429>,  <46.457016, 35.896568, 32.246593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234756, 36.229076, 32.240429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285494, -0.208178, -0.935497,
		-0.780864, -0.515407, 0.352998,
		-0.555648, 0.831275, -0.015413,
		46.068062, 36.478458, 32.235806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806473, 35.685921, 31.890863>,  <46.457016, 35.896568, 32.246593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806473, 35.685921, 31.890863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811813, 36.085747, 31.880350>,  <45.815018, 36.325642, 31.874043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811813, 36.085747, 31.880350>,  <45.806473, 35.685921, 31.890863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811813, 36.085747, 31.880350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498167, -0.016140, -0.866931,
		-0.866978, 0.024672, 0.497735,
		0.013355, 0.999565, -0.026284,
		45.815819, 36.385616, 31.872465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149147, 35.928375, 31.682467>,  <45.806473, 35.685921, 31.890863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149147, 35.928375, 31.682467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.398285, 36.226006, 31.585783>,  <45.547768, 36.404583, 31.527773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.398285, 36.226006, 31.585783>,  <45.149147, 35.928375, 31.682467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398285, 36.226006, 31.585783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551132, 0.198023, -0.810580,
		-0.555267, 0.638076, 0.533420,
		0.622842, 0.744074, -0.241708,
		45.585136, 36.449226, 31.513271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776093, 36.429028, 31.495916>,  <45.149147, 35.928375, 31.682467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776093, 36.429028, 31.495916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129021, 36.507587, 31.324835>,  <45.340778, 36.554722, 31.222185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129021, 36.507587, 31.324835>,  <44.776093, 36.429028, 31.495916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129021, 36.507587, 31.324835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468794, 0.286285, -0.835628,
		-0.041672, 0.937800, 0.344667,
		0.882324, 0.196400, -0.427705,
		45.393719, 36.566509, 31.196524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615826, 37.071590, 31.076244>,  <44.776093, 36.429028, 31.495916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615826, 37.071590, 31.076244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962666, 36.924839, 30.941460>,  <45.170769, 36.836788, 30.860590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962666, 36.924839, 30.941460>,  <44.615826, 37.071590, 31.076244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962666, 36.924839, 30.941460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204888, 0.353904, -0.912564,
		0.454051, 0.860321, 0.231700,
		0.867098, -0.366878, -0.336960,
		45.222794, 36.814777, 30.840372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007599, 37.755619, 30.796331>,  <44.615826, 37.071590, 31.076244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007599, 37.755619, 30.796331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143234, 37.421192, 30.623817>,  <45.224617, 37.220535, 30.520309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143234, 37.421192, 30.623817>,  <45.007599, 37.755619, 30.796331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143234, 37.421192, 30.623817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035531, 0.469503, -0.882216,
		0.940084, 0.283824, 0.188909,
		0.339087, -0.836069, -0.431287,
		45.244961, 37.170372, 30.494431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470142, 37.988766, 30.280245>,  <45.007599, 37.755619, 30.796331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470142, 37.988766, 30.280245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389717, 37.610435, 30.178278>,  <45.341461, 37.383438, 30.117098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389717, 37.610435, 30.178278>,  <45.470142, 37.988766, 30.280245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389717, 37.610435, 30.178278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132124, 0.284039, -0.949666,
		0.970627, -0.157262, -0.182076,
		-0.201063, -0.945828, -0.254918,
		45.329399, 37.326687, 30.101803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776215, 37.936249, 29.645958>,  <45.470142, 37.988766, 30.280245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776215, 37.936249, 29.645958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.507660, 37.639835, 29.650084>,  <45.346527, 37.461987, 29.652559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.507660, 37.639835, 29.650084>,  <45.776215, 37.936249, 29.645958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507660, 37.639835, 29.650084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147830, 0.120274, -0.981672,
		0.726215, -0.660605, -0.190297,
		-0.671385, -0.741037, 0.010313,
		45.306244, 37.417522, 29.653177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965904, 37.575718, 29.069641>,  <45.776215, 37.936249, 29.645958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965904, 37.575718, 29.069641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587318, 37.468132, 29.141039>,  <45.360168, 37.403580, 29.183878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587318, 37.468132, 29.141039>,  <45.965904, 37.575718, 29.069641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587318, 37.468132, 29.141039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192505, 0.026422, -0.980940,
		0.259125, -0.962787, -0.076785,
		-0.946465, -0.268967, 0.178495,
		45.303379, 37.387444, 29.194588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737080, 37.232708, 28.489595>,  <45.965904, 37.575718, 29.069641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737080, 37.232708, 28.489595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385441, 37.314655, 28.661745>,  <45.174458, 37.363823, 28.765034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385441, 37.314655, 28.661745>,  <45.737080, 37.232708, 28.489595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385441, 37.314655, 28.661745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427265, 0.061514, -0.902031,
		-0.211267, -0.976856, 0.033454,
		-0.879097, 0.204863, 0.430372,
		45.121712, 37.376114, 28.790857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240044, 36.853645, 28.063274>,  <45.737080, 37.232708, 28.489595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240044, 36.853645, 28.063274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060402, 37.164726, 28.239218>,  <44.952618, 37.351376, 28.344784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060402, 37.164726, 28.239218>,  <45.240044, 36.853645, 28.063274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060402, 37.164726, 28.239218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584066, 0.117007, -0.803228,
		-0.676143, -0.617641, 0.401684,
		-0.449107, 0.777707, 0.439857,
		44.925671, 37.398037, 28.371176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510216, 36.624901, 28.074455>,  <45.240044, 36.853645, 28.063274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510216, 36.624901, 28.074455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538639, 37.022671, 28.105629>,  <44.555691, 37.261333, 28.124332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538639, 37.022671, 28.105629>,  <44.510216, 36.624901, 28.074455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538639, 37.022671, 28.105629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829507, 0.102301, -0.549047,
		-0.553958, -0.025633, 0.832150,
		0.071056, 0.994423, 0.077934,
		44.559956, 37.320999, 28.129009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871677, 36.804344, 27.897163>,  <44.510216, 36.624901, 28.074455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871677, 36.804344, 27.897163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025764, 37.173466, 27.899511>,  <44.118217, 37.394939, 27.900919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025764, 37.173466, 27.899511>,  <43.871677, 36.804344, 27.897163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025764, 37.173466, 27.899511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729771, 0.308517, -0.610125,
		-0.564838, 0.230749, 0.792284,
		0.385218, 0.922807, 0.005868,
		44.141331, 37.450306, 27.901272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289124, 37.291260, 27.999508>,  <43.871677, 36.804344, 27.897163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289124, 37.291260, 27.999508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592793, 37.456913, 27.798651>,  <43.774994, 37.556305, 27.678137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592793, 37.456913, 27.798651>,  <43.289124, 37.291260, 27.999508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592793, 37.456913, 27.798651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612592, 0.193899, -0.766247,
		-0.219961, 0.889325, 0.400897,
		0.759176, 0.414131, -0.502143,
		43.820545, 37.581154, 27.648008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021217, 37.959995, 27.702244>,  <43.289124, 37.291260, 27.999508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021217, 37.959995, 27.702244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350883, 37.885719, 27.488224>,  <43.548683, 37.841152, 27.359812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350883, 37.885719, 27.488224>,  <43.021217, 37.959995, 27.702244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350883, 37.885719, 27.488224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501153, 0.200972, -0.841698,
		0.263825, 0.961837, 0.072574,
		0.824161, -0.185690, -0.535049,
		43.598133, 37.830013, 27.327709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.264122, 37.855927, 44.374561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952435, 37.708736, 44.171616>,  <41.765423, 37.620422, 44.049850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952435, 37.708736, 44.171616>,  <42.264122, 37.855927, 44.374561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952435, 37.708736, 44.171616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101526, 0.724709, -0.681534,
		0.618476, -0.582574, -0.527347,
		-0.779217, -0.367973, -0.507362,
		41.718670, 37.598343, 44.019405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469734, 37.860634, 43.590450>,  <42.264122, 37.855927, 44.374561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469734, 37.860634, 43.590450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070740, 37.832458, 43.587353>,  <41.831345, 37.815552, 43.585495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070740, 37.832458, 43.587353>,  <42.469734, 37.860634, 43.590450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070740, 37.832458, 43.587353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041800, 0.673061, -0.738404,
		0.057221, -0.736225, -0.674314,
		-0.997486, -0.070439, -0.007740,
		41.771492, 37.811325, 43.585030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364712, 37.826332, 42.874016>,  <42.469734, 37.860634, 43.590450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364712, 37.826332, 42.874016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000980, 37.890038, 43.027771>,  <41.782742, 37.928261, 43.120026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000980, 37.890038, 43.027771>,  <42.364712, 37.826332, 42.874016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000980, 37.890038, 43.027771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243859, 0.544548, -0.802497,
		-0.337125, -0.823471, -0.456336,
		-0.909329, 0.159261, 0.384391,
		41.728180, 37.937817, 43.143089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811722, 37.622448, 42.323971>,  <42.364712, 37.826332, 42.874016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811722, 37.622448, 42.323971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623817, 37.866482, 42.579197>,  <41.511074, 38.012901, 42.732330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623817, 37.866482, 42.579197>,  <41.811722, 37.622448, 42.323971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623817, 37.866482, 42.579197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267738, 0.590274, -0.761507,
		-0.841213, -0.528561, -0.113947,
		-0.469763, 0.610082, 0.638062,
		41.482887, 38.049507, 42.770615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109406, 37.753201, 42.023666>,  <41.811722, 37.622448, 42.323971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109406, 37.753201, 42.023666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203960, 38.047844, 42.277134>,  <41.260693, 38.224628, 42.429214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203960, 38.047844, 42.277134>,  <41.109406, 37.753201, 42.023666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203960, 38.047844, 42.277134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360073, 0.672123, -0.646991,
		-0.902480, -0.075229, 0.424111,
		0.236383, 0.736607, 0.633666,
		41.274876, 38.268826, 42.467236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573071, 38.170422, 42.042515>,  <41.109406, 37.753201, 42.023666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573071, 38.170422, 42.042515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888168, 38.394661, 42.144646>,  <41.077229, 38.529205, 42.205925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888168, 38.394661, 42.144646>,  <40.573071, 38.170422, 42.042515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888168, 38.394661, 42.144646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351168, 0.749226, -0.561553,
		-0.506104, 0.352696, 0.787061,
		0.787744, 0.560594, 0.255331,
		41.124493, 38.562840, 42.221245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295570, 38.852543, 42.007816>,  <40.573071, 38.170422, 42.042515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295570, 38.852543, 42.007816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692242, 38.903870, 42.011967>,  <40.930244, 38.934666, 42.014458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692242, 38.903870, 42.011967>,  <40.295570, 38.852543, 42.007816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692242, 38.903870, 42.011967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086496, 0.723827, -0.684538,
		-0.095354, 0.677944, 0.728903,
		0.991678, 0.128321, 0.010380,
		40.989746, 38.942368, 42.015079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424377, 39.509838, 42.242920>,  <40.295570, 38.852543, 42.007816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424377, 39.509838, 42.242920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708782, 39.386864, 41.989956>,  <40.879425, 39.313080, 41.838177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708782, 39.386864, 41.989956>,  <40.424377, 39.509838, 42.242920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708782, 39.386864, 41.989956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150894, 0.811700, -0.564247,
		0.686800, 0.496613, 0.530737,
		0.711011, -0.307440, -0.632411,
		40.922085, 39.294632, 41.800232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573238, 40.049576, 41.970280>,  <40.424377, 39.509838, 42.242920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573238, 40.049576, 41.970280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748142, 39.803440, 41.707932>,  <40.853085, 39.655758, 41.550522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748142, 39.803440, 41.707932>,  <40.573238, 40.049576, 41.970280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748142, 39.803440, 41.707932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354748, 0.552134, -0.754521,
		0.826413, 0.562588, 0.023135,
		0.437258, -0.615339, -0.655868,
		40.879318, 39.618839, 41.511169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495625, 40.559696, 41.363495>,  <40.573238, 40.049576, 41.970280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495625, 40.559696, 41.363495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593060, 40.207329, 41.201187>,  <40.651520, 39.995911, 41.103802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593060, 40.207329, 41.201187>,  <40.495625, 40.559696, 41.363495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593060, 40.207329, 41.201187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355398, 0.308201, -0.882443,
		0.902417, 0.359167, -0.238000,
		0.243592, -0.880915, -0.405773,
		40.666138, 39.943054, 41.079456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890293, 40.692303, 40.729713>,  <40.495625, 40.559696, 41.363495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890293, 40.692303, 40.729713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703796, 40.340088, 40.695621>,  <40.591896, 40.128757, 40.675167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703796, 40.340088, 40.695621>,  <40.890293, 40.692303, 40.729713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703796, 40.340088, 40.695621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353119, 0.273574, -0.894687,
		0.811125, -0.387046, -0.438488,
		-0.466244, -0.880541, -0.085230,
		40.563923, 40.075924, 40.670052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994175, 40.479385, 40.010254>,  <40.890293, 40.692303, 40.729713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994175, 40.479385, 40.010254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677044, 40.247894, 40.086678>,  <40.486767, 40.109001, 40.132534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677044, 40.247894, 40.086678>,  <40.994175, 40.479385, 40.010254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677044, 40.247894, 40.086678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454463, 0.352524, -0.818040,
		0.406068, -0.735393, -0.542500,
		-0.792825, -0.578727, 0.191060,
		40.439198, 40.074276, 40.143997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640648, 40.215145, 39.346706>,  <40.994175, 40.479385, 40.010254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640648, 40.215145, 39.346706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332291, 40.240219, 39.600254>,  <40.147274, 40.255264, 39.752384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332291, 40.240219, 39.600254>,  <40.640648, 40.215145, 39.346706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332291, 40.240219, 39.600254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406744, 0.717384, -0.565614,
		-0.490183, -0.693852, -0.527532,
		-0.770895, 0.062684, 0.633870,
		40.101021, 40.259026, 39.790417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844788, 40.262676, 38.704643>,  <40.640648, 40.215145, 39.346706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844788, 40.262676, 38.704643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686813, 40.120270, 38.365875>,  <40.592030, 40.034824, 38.162613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686813, 40.120270, 38.365875>,  <40.844788, 40.262676, 38.704643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686813, 40.120270, 38.365875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486966, -0.700583, 0.521581,
		-0.779032, 0.618413, 0.103317,
		-0.394935, -0.356017, -0.846923,
		40.568333, 40.013466, 38.111797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064987, 40.121464, 38.671669>,  <40.844788, 40.262676, 38.704643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064987, 40.121464, 38.671669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268757, 39.859661, 38.448204>,  <40.391018, 39.702579, 38.314125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268757, 39.859661, 38.448204>,  <40.064987, 40.121464, 38.671669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268757, 39.859661, 38.448204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482004, -0.754854, 0.444823,
		-0.712850, 0.042674, -0.700017,
		0.509428, -0.654504, -0.558667,
		40.421585, 39.663311, 38.280605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529873, 39.745842, 38.499702>,  <40.064987, 40.121464, 38.671669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529873, 39.745842, 38.499702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843128, 39.503765, 38.442516>,  <40.031082, 39.358521, 38.408203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843128, 39.503765, 38.442516>,  <39.529873, 39.745842, 38.499702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843128, 39.503765, 38.442516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523471, -0.765690, 0.373759,
		-0.335662, -0.217867, -0.916441,
		0.783140, -0.605188, -0.142966,
		40.078072, 39.322208, 38.399628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211258, 39.109722, 38.262325>,  <39.529873, 39.745842, 38.499702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211258, 39.109722, 38.262325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579304, 39.002544, 38.376583>,  <39.800133, 38.938236, 38.445137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579304, 39.002544, 38.376583>,  <39.211258, 39.109722, 38.262325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579304, 39.002544, 38.376583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381483, -0.778267, 0.498769,
		0.088666, -0.567894, -0.818312,
		0.920114, -0.267948, 0.285648,
		39.855339, 38.922161, 38.462276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324299, 38.398167, 38.079994>,  <39.211258, 39.109722, 38.262325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324299, 38.398167, 38.079994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573490, 38.467762, 38.385052>,  <39.723003, 38.509521, 38.568085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573490, 38.467762, 38.385052>,  <39.324299, 38.398167, 38.079994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573490, 38.467762, 38.385052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284710, -0.857645, 0.428234,
		0.728588, -0.483913, -0.484756,
		0.622977, 0.173991, 0.762645,
		39.760384, 38.519958, 38.613846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570389, 37.719223, 38.281475>,  <39.324299, 38.398167, 38.079994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570389, 37.719223, 38.281475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690529, 37.925446, 38.602470>,  <39.762611, 38.049179, 38.795067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690529, 37.925446, 38.602470>,  <39.570389, 37.719223, 38.281475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690529, 37.925446, 38.602470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127154, -0.812186, 0.569374,
		0.945317, -0.273049, -0.178381,
		0.300346, 0.515557, 0.802492,
		39.780632, 38.080112, 38.843220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016438, 37.314133, 38.633739>,  <39.570389, 37.719223, 38.281475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016438, 37.314133, 38.633739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901661, 37.570858, 38.918201>,  <39.832794, 37.724895, 39.088879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901661, 37.570858, 38.918201>,  <40.016438, 37.314133, 38.633739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901661, 37.570858, 38.918201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099692, -0.758346, 0.644184,
		0.952746, 0.113949, 0.281586,
		-0.286944, 0.641815, 0.711152,
		39.815578, 37.763401, 39.131546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393085, 37.200455, 39.237019>,  <40.016438, 37.314133, 38.633739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393085, 37.200455, 39.237019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069386, 37.399540, 39.361855>,  <39.875168, 37.518993, 39.436756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069386, 37.399540, 39.361855>,  <40.393085, 37.200455, 39.237019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069386, 37.399540, 39.361855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076701, -0.616206, 0.783841,
		0.582440, 0.610383, 0.536838,
		-0.809247, 0.497717, 0.312086,
		39.826611, 37.548855, 39.455479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442806, 37.308285, 39.978813>,  <40.393085, 37.200455, 39.237019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442806, 37.308285, 39.978813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051598, 37.310917, 39.895451>,  <39.816872, 37.312496, 39.845432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051598, 37.310917, 39.895451>,  <40.442806, 37.308285, 39.978813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051598, 37.310917, 39.895451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167591, -0.619478, 0.766917,
		-0.124057, 0.784987, 0.606964,
		-0.978020, 0.006580, -0.208407,
		39.758190, 37.312889, 39.832928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071865, 37.568092, 40.587437>,  <40.442806, 37.308285, 39.978813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071865, 37.568092, 40.587437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802967, 37.360317, 40.376431>,  <39.641628, 37.235653, 40.249828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802967, 37.360317, 40.376431>,  <40.071865, 37.568092, 40.587437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802967, 37.360317, 40.376431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123569, -0.623814, 0.771742,
		-0.729944, 0.583983, 0.355169,
		-0.672244, -0.519441, -0.527512,
		39.601295, 37.204483, 40.218178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604809, 37.194706, 41.136997>,  <40.071865, 37.568092, 40.587437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604809, 37.194706, 41.136997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495193, 37.008606, 40.800320>,  <39.429424, 36.896946, 40.598312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495193, 37.008606, 40.800320>,  <39.604809, 37.194706, 41.136997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495193, 37.008606, 40.800320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173892, -0.836800, 0.519160,
		-0.945867, 0.288633, 0.148412,
		-0.274038, -0.465249, -0.841693,
		39.412983, 36.869030, 40.547813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033649, 36.879654, 41.353718>,  <39.604809, 37.194706, 41.136997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033649, 36.879654, 41.353718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188499, 36.697083, 41.033268>,  <39.281410, 36.587540, 40.840996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188499, 36.697083, 41.033268>,  <39.033649, 36.879654, 41.353718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188499, 36.697083, 41.033268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103142, -0.884859, 0.454298,
		-0.916241, -0.093240, -0.389627,
		0.387124, -0.456433, -0.801127,
		39.304638, 36.560154, 40.792931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625977, 36.328796, 41.248360>,  <39.033649, 36.879654, 41.353718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625977, 36.328796, 41.248360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952682, 36.217922, 41.045948>,  <39.148705, 36.151398, 40.924500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952682, 36.217922, 41.045948>,  <38.625977, 36.328796, 41.248360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952682, 36.217922, 41.045948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034014, -0.898651, 0.437344,
		-0.575966, -0.339996, -0.743415,
		0.816765, -0.277182, -0.506028,
		39.197712, 36.134766, 40.894138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543804, 35.602291, 41.057194>,  <38.625977, 36.328796, 41.248360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543804, 35.602291, 41.057194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935280, 35.681454, 41.035301>,  <39.170166, 35.728951, 41.022167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935280, 35.681454, 41.035301>,  <38.543804, 35.602291, 41.057194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935280, 35.681454, 41.035301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190334, -0.774381, 0.603412,
		0.077039, -0.600971, -0.795549,
		0.978692, 0.197907, -0.054728,
		39.228886, 35.740826, 41.018883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769028, 34.971001, 40.960369>,  <38.543804, 35.602291, 41.057194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769028, 34.971001, 40.960369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087944, 35.180801, 41.079845>,  <39.279293, 35.306683, 41.151531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087944, 35.180801, 41.079845>,  <38.769028, 34.971001, 40.960369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087944, 35.180801, 41.079845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299360, -0.773325, 0.558885,
		0.524123, -0.356179, -0.773583,
		0.797294, 0.524505, 0.298692,
		39.327133, 35.338154, 41.169453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727253, 34.702709, 40.251354>,  <38.769028, 34.971001, 40.960369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727253, 34.702709, 40.251354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442974, 34.476337, 40.084202>,  <38.272408, 34.340515, 39.983910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442974, 34.476337, 40.084202>,  <38.727253, 34.702709, 40.251354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442974, 34.476337, 40.084202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239063, 0.752943, -0.613128,
		0.661628, -0.335852, -0.670412,
		-0.710702, -0.565933, -0.417878,
		38.229763, 34.306557, 39.958839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817638, 34.704323, 39.472950>,  <38.727253, 34.702709, 40.251354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817638, 34.704323, 39.472950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440739, 34.604126, 39.561874>,  <38.214600, 34.544006, 39.615231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440739, 34.604126, 39.561874>,  <38.817638, 34.704323, 39.472950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440739, 34.604126, 39.561874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330626, 0.589762, -0.736795,
		0.053448, -0.767746, -0.638521,
		-0.942247, -0.250492, 0.222316,
		38.158066, 34.528980, 39.628571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467068, 34.644478, 38.797459>,  <38.817638, 34.704323, 39.472950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467068, 34.644478, 38.797459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146267, 34.669151, 39.035107>,  <37.953785, 34.683956, 39.177696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146267, 34.669151, 39.035107>,  <38.467068, 34.644478, 38.797459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146267, 34.669151, 39.035107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414723, 0.658330, -0.628177,
		-0.429876, -0.750198, -0.502404,
		-0.802005, 0.061680, 0.594124,
		37.905666, 34.687656, 39.213345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800293, 34.466209, 38.412933>,  <38.467068, 34.644478, 38.797459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800293, 34.466209, 38.412933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680016, 34.680405, 38.728615>,  <37.607849, 34.808922, 38.918022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680016, 34.680405, 38.728615>,  <37.800293, 34.466209, 38.412933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680016, 34.680405, 38.728615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525447, 0.597566, -0.605657,
		-0.795921, -0.596799, 0.101688,
		-0.300690, 0.535487, 0.789202,
		37.589809, 34.841049, 38.965374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081104, 34.474773, 38.289474>,  <37.800293, 34.466209, 38.412933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081104, 34.474773, 38.289474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176003, 34.767212, 38.545353>,  <37.232941, 34.942677, 38.698879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176003, 34.767212, 38.545353>,  <37.081104, 34.474773, 38.289474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176003, 34.767212, 38.545353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682372, 0.594103, -0.425922,
		-0.691436, -0.335460, 0.639831,
		0.237245, 0.731100, 0.639693,
		37.247177, 34.986542, 38.737259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442280, 34.700710, 38.610706>,  <37.081104, 34.474773, 38.289474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442280, 34.700710, 38.610706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714188, 34.991226, 38.651550>,  <36.877331, 35.165535, 38.676056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714188, 34.991226, 38.651550>,  <36.442280, 34.700710, 38.610706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714188, 34.991226, 38.651550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667915, 0.670535, -0.322912,
		-0.302996, 0.151303, 0.940904,
		0.679767, 0.726285, 0.102112,
		36.918118, 35.209110, 38.682182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136372, 35.245705, 38.967510>,  <36.442280, 34.700710, 38.610706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136372, 35.245705, 38.967510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424183, 35.446793, 38.775864>,  <36.596870, 35.567448, 38.660877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424183, 35.446793, 38.775864>,  <36.136372, 35.245705, 38.967510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424183, 35.446793, 38.775864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661683, 0.705740, -0.253190,
		0.210846, 0.499199, 0.840443,
		0.719527, 0.502723, -0.479114,
		36.640041, 35.597610, 38.632130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989761, 35.972496, 39.115368>,  <36.136372, 35.245705, 38.967510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989761, 35.972496, 39.115368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226257, 35.998974, 38.793858>,  <36.368156, 36.014862, 38.600952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226257, 35.998974, 38.793858>,  <35.989761, 35.972496, 39.115368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226257, 35.998974, 38.793858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514640, 0.798306, -0.312814,
		0.620952, 0.598603, 0.506056,
		0.591239, 0.066194, -0.803775,
		36.403629, 36.018833, 38.552727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010410, 36.661453, 39.014828>,  <35.989761, 35.972496, 39.115368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010410, 36.661453, 39.014828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158287, 36.524597, 38.669281>,  <36.247013, 36.442486, 38.461952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158287, 36.524597, 38.669281>,  <36.010410, 36.661453, 39.014828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158287, 36.524597, 38.669281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480171, 0.725614, -0.492869,
		0.795465, 0.597014, 0.103969,
		0.369691, -0.342137, -0.863870,
		36.269196, 36.421955, 38.410122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288582, 37.205219, 38.735462>,  <36.010410, 36.661453, 39.014828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288582, 37.205219, 38.735462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238995, 36.960430, 38.423019>,  <36.209244, 36.813557, 38.235554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238995, 36.960430, 38.423019>,  <36.288582, 37.205219, 38.735462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238995, 36.960430, 38.423019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266485, 0.778792, -0.567863,
		0.955833, 0.137755, -0.259627,
		-0.123969, -0.611969, -0.781105,
		36.201805, 36.776840, 38.188686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579594, 37.508656, 38.171822>,  <36.288582, 37.205219, 38.735462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579594, 37.508656, 38.171822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299290, 37.262802, 38.026962>,  <36.131107, 37.115288, 37.940048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299290, 37.262802, 38.026962>,  <36.579594, 37.508656, 38.171822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299290, 37.262802, 38.026962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484578, 0.782664, -0.390669,
		0.523560, -0.098277, -0.846302,
		-0.700763, -0.614637, -0.362148,
		36.089062, 37.078411, 37.918320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421680, 37.787548, 37.573734>,  <36.579594, 37.508656, 38.171822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421680, 37.787548, 37.573734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126820, 37.535133, 37.670395>,  <35.949902, 37.383686, 37.728390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126820, 37.535133, 37.670395>,  <36.421680, 37.787548, 37.573734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126820, 37.535133, 37.670395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673931, 0.660549, -0.330897,
		0.049189, -0.406776, -0.912203,
		-0.737155, -0.631038, 0.241647,
		35.905674, 37.345821, 37.742889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.702911, 31.266735, 41.015755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382206, 31.264408, 41.254799>,  <39.189781, 31.263012, 41.398224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382206, 31.264408, 41.254799>,  <39.702911, 31.266735, 41.015755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382206, 31.264408, 41.254799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285080, 0.882579, -0.373878,
		-0.525262, -0.470129, -0.709281,
		-0.801767, -0.005818, 0.597609,
		39.141678, 31.262663, 41.434082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213280, 31.420822, 40.574795>,  <39.702911, 31.266735, 41.015755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213280, 31.420822, 40.574795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.063385, 31.492041, 40.938744>,  <38.973446, 31.534773, 41.157112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.063385, 31.492041, 40.938744>,  <39.213280, 31.420822, 40.574795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063385, 31.492041, 40.938744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405310, 0.851179, -0.333493,
		-0.833843, -0.493754, -0.246806,
		-0.374740, 0.178048, 0.909873,
		38.950962, 31.545456, 41.211704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672806, 31.693647, 40.310837>,  <39.213280, 31.420822, 40.574795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672806, 31.693647, 40.310837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.675003, 31.784323, 40.700417>,  <38.676323, 31.838728, 40.934166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.675003, 31.784323, 40.700417>,  <38.672806, 31.693647, 40.310837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675003, 31.784323, 40.700417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644244, 0.745704, -0.169926,
		-0.764800, -0.626529, 0.150141,
		0.005497, 0.226687, 0.973952,
		38.676651, 31.852329, 40.992603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996490, 31.815098, 40.435734>,  <38.672806, 31.693647, 40.310837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996490, 31.815098, 40.435734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216507, 31.993309, 40.718281>,  <38.348518, 32.100235, 40.887810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216507, 31.993309, 40.718281>,  <37.996490, 31.815098, 40.435734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216507, 31.993309, 40.718281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439985, 0.873504, -0.208336,
		-0.709837, -0.196199, 0.676489,
		0.550040, 0.445530, 0.706370,
		38.381519, 32.126968, 40.930191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513699, 32.236790, 40.803684>,  <37.996490, 31.815098, 40.435734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513699, 32.236790, 40.803684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.882469, 32.371387, 40.880447>,  <38.103729, 32.452145, 40.926506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.882469, 32.371387, 40.880447>,  <37.513699, 32.236790, 40.803684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882469, 32.371387, 40.880447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297089, 0.932108, -0.207153,
		-0.248582, 0.133967, 0.959302,
		0.921925, 0.336492, 0.191905,
		38.159046, 32.472336, 40.938019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357536, 32.799347, 40.890358>,  <37.513699, 32.236790, 40.803684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357536, 32.799347, 40.890358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753323, 32.848736, 40.860107>,  <37.990795, 32.878368, 40.841957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753323, 32.848736, 40.860107>,  <37.357536, 32.799347, 40.890358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753323, 32.848736, 40.860107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142589, 0.921669, -0.360824,
		0.025152, 0.367805, 0.929563,
		0.989462, 0.123470, -0.075627,
		38.050159, 32.885777, 40.837418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518753, 33.461769, 41.143681>,  <37.357536, 32.799347, 40.890358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518753, 33.461769, 41.143681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823799, 33.359924, 40.905827>,  <38.006828, 33.298817, 40.763115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823799, 33.359924, 40.905827>,  <37.518753, 33.461769, 41.143681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823799, 33.359924, 40.905827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025554, 0.930417, -0.365610,
		0.646344, 0.263625, 0.716059,
		0.762618, -0.254608, -0.594633,
		38.052586, 33.283543, 40.727436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973560, 34.036121, 41.149265>,  <37.518753, 33.461769, 41.143681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973560, 34.036121, 41.149265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041035, 33.842018, 40.806087>,  <38.081520, 33.725555, 40.600182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041035, 33.842018, 40.806087>,  <37.973560, 34.036121, 41.149265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041035, 33.842018, 40.806087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156737, 0.872548, -0.462703,
		0.973128, -0.056417, 0.223248,
		0.168690, -0.485260, -0.857943,
		38.091640, 33.696442, 40.548706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587574, 34.269035, 40.803127>,  <37.973560, 34.036121, 41.149265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587574, 34.269035, 40.803127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380955, 34.099907, 40.505295>,  <38.256981, 33.998428, 40.326595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380955, 34.099907, 40.505295>,  <38.587574, 34.269035, 40.803127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380955, 34.099907, 40.505295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037394, 0.879882, -0.473718,
		0.855441, -0.216856, -0.470313,
		-0.516549, -0.422825, -0.744578,
		38.225990, 33.973061, 40.281921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330078, 34.476990, 40.890953>,  <38.587574, 34.269035, 40.803127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330078, 34.476990, 40.890953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.465744, 34.748363, 41.151627>,  <39.547142, 34.911186, 41.308029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.465744, 34.748363, 41.151627>,  <39.330078, 34.476990, 40.890953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465744, 34.748363, 41.151627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069359, -0.708895, 0.701895,
		0.938167, -0.192858, -0.287488,
		0.339165, 0.678435, 0.651685,
		39.567493, 34.951893, 41.347134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000877, 34.303455, 41.167099>,  <39.330078, 34.476990, 40.890953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000877, 34.303455, 41.167099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.920647, 34.596329, 41.427460>,  <39.872509, 34.772053, 41.583675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.920647, 34.596329, 41.427460>,  <40.000877, 34.303455, 41.167099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920647, 34.596329, 41.427460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503766, -0.492752, 0.709517,
		0.840230, 0.470219, -0.270013,
		-0.200579, 0.732181, 0.650906,
		39.860474, 34.815983, 41.622730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629223, 34.414814, 41.509918>,  <40.000877, 34.303455, 41.167099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629223, 34.414814, 41.509918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336304, 34.537369, 41.753185>,  <40.160553, 34.610901, 41.899143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.336304, 34.537369, 41.753185>,  <40.629223, 34.414814, 41.509918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336304, 34.537369, 41.753185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429439, -0.485330, 0.761602,
		0.528507, 0.818889, 0.223830,
		-0.732299, 0.306390, 0.608164,
		40.116615, 34.629288, 41.935635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941223, 34.560425, 42.095051>,  <40.629223, 34.414814, 41.509918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941223, 34.560425, 42.095051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558403, 34.509911, 42.199440>,  <40.328712, 34.479603, 42.262074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558403, 34.509911, 42.199440>,  <40.941223, 34.560425, 42.095051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558403, 34.509911, 42.199440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289922, -0.415121, 0.862334,
		-0.000567, 0.900958, 0.433906,
		-0.957050, -0.126288, 0.260972,
		40.271290, 34.472023, 42.277733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923618, 34.730762, 42.773884>,  <40.941223, 34.560425, 42.095051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923618, 34.730762, 42.773884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582718, 34.523041, 42.748600>,  <40.378178, 34.398407, 42.733429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582718, 34.523041, 42.748600>,  <40.923618, 34.730762, 42.773884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582718, 34.523041, 42.748600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258828, -0.523569, 0.811716,
		-0.454620, 0.675426, 0.580622,
		-0.852250, -0.519304, -0.063205,
		40.327042, 34.367249, 42.729637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572269, 34.670502, 43.450817>,  <40.923618, 34.730762, 42.773884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572269, 34.670502, 43.450817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.411751, 34.376495, 43.232201>,  <40.315437, 34.200092, 43.101032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.411751, 34.376495, 43.232201>,  <40.572269, 34.670502, 43.450817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411751, 34.376495, 43.232201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088947, -0.625147, 0.775422,
		-0.911617, 0.262565, 0.316250,
		-0.401301, -0.735017, -0.546541,
		40.291359, 34.155991, 43.068237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211582, 34.288952, 44.038258>,  <40.572269, 34.670502, 43.450817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211582, 34.288952, 44.038258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249554, 34.055607, 43.715599>,  <40.272339, 33.915600, 43.522003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249554, 34.055607, 43.715599>,  <40.211582, 34.288952, 44.038258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249554, 34.055607, 43.715599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195392, -0.783622, 0.589710,
		-0.976120, -0.213594, 0.039595,
		0.094931, -0.583365, -0.806643,
		40.278034, 33.880596, 43.473606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729809, 33.786873, 44.144264>,  <40.211582, 34.288952, 44.038258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729809, 33.786873, 44.144264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014343, 33.647453, 43.900127>,  <40.185062, 33.563801, 43.753643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014343, 33.647453, 43.900127>,  <39.729809, 33.786873, 44.144264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014343, 33.647453, 43.900127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153875, -0.770086, 0.619104,
		-0.685806, -0.534305, -0.494154,
		0.711331, -0.348547, -0.610346,
		40.227741, 33.542889, 43.717022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581680, 33.020485, 44.113232>,  <39.729809, 33.786873, 44.144264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581680, 33.020485, 44.113232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.950436, 33.033562, 43.958797>,  <40.171688, 33.041409, 43.866138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.950436, 33.033562, 43.958797>,  <39.581680, 33.020485, 44.113232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950436, 33.033562, 43.958797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226155, -0.854487, 0.467660,
		-0.314615, -0.518443, -0.795131,
		0.921885, 0.032690, -0.386083,
		40.227001, 33.043369, 43.842972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805950, 32.362518, 44.043015>,  <39.581680, 33.020485, 44.113232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805950, 32.362518, 44.043015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.149731, 32.566990, 44.040203>,  <40.355999, 32.689671, 44.038517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.149731, 32.566990, 44.040203>,  <39.805950, 32.362518, 44.043015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149731, 32.566990, 44.040203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446185, -0.743328, 0.498379,
		0.249536, -0.431466, -0.866931,
		0.859448, 0.511175, -0.007026,
		40.407566, 32.720341, 44.038094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376587, 31.791216, 43.820404>,  <39.805950, 32.362518, 44.043015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376587, 31.791216, 43.820404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.537094, 32.096542, 44.022923>,  <40.633396, 32.279739, 44.144432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.537094, 32.096542, 44.022923>,  <40.376587, 31.791216, 43.820404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537094, 32.096542, 44.022923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400585, -0.643326, 0.652429,
		0.823723, -0.058981, -0.563916,
		0.401263, 0.763317, 0.506296,
		40.657475, 32.325539, 44.174812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146336, 31.593176, 43.920830>,  <40.376587, 31.791216, 43.820404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146336, 31.593176, 43.920830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.106403, 31.874504, 44.202362>,  <41.082443, 32.043301, 44.371281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.106403, 31.874504, 44.202362>,  <41.146336, 31.593176, 43.920830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106403, 31.874504, 44.202362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343623, -0.639470, 0.687751,
		0.933786, 0.310513, -0.177836,
		-0.099835, 0.703321, 0.703828,
		41.076454, 32.085499, 44.413509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779991, 31.599211, 44.287018>,  <41.146336, 31.593176, 43.920830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779991, 31.599211, 44.287018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.515877, 31.747795, 44.548103>,  <41.357407, 31.836945, 44.704754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.515877, 31.747795, 44.548103>,  <41.779991, 31.599211, 44.287018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515877, 31.747795, 44.548103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353030, -0.613585, 0.706317,
		0.662863, 0.696802, 0.274008,
		-0.660290, 0.371459, 0.652714,
		41.317791, 31.859232, 44.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226116, 31.780581, 44.855431>,  <41.779991, 31.599211, 44.287018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226116, 31.780581, 44.855431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.855560, 31.743921, 45.001526>,  <41.633224, 31.721926, 45.089184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.855560, 31.743921, 45.001526>,  <42.226116, 31.780581, 44.855431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855560, 31.743921, 45.001526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357952, -0.515467, 0.778565,
		0.116914, 0.851994, 0.510331,
		-0.926392, -0.091649, 0.365238,
		41.577644, 31.716427, 45.111099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.819271, 31.869623, 46.789730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171780, 31.898489, 46.602901>,  <36.383286, 31.915810, 46.490803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171780, 31.898489, 46.602901>,  <35.819271, 31.869623, 46.789730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171780, 31.898489, 46.602901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263281, 0.895689, -0.358364,
		0.392493, 0.438787, 0.808341,
		0.881267, 0.072166, -0.467076,
		36.436161, 31.920139, 46.462780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016304, 32.516838, 46.859612>,  <35.819271, 31.869623, 46.789730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016304, 32.516838, 46.859612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.225048, 32.398529, 46.539566>,  <36.350296, 32.327541, 46.347538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.225048, 32.398529, 46.539566>,  <36.016304, 32.516838, 46.859612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225048, 32.398529, 46.539566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221661, 0.858724, -0.462017,
		0.823729, 0.418462, 0.382572,
		0.521860, -0.295775, -0.800112,
		36.381607, 32.309795, 46.299534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180759, 33.112247, 46.650692>,  <36.016304, 32.516838, 46.859612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180759, 33.112247, 46.650692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297054, 32.884949, 46.342777>,  <36.366829, 32.748569, 46.158028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297054, 32.884949, 46.342777>,  <36.180759, 33.112247, 46.650692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297054, 32.884949, 46.342777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134475, 0.772284, -0.620881,
		0.947307, 0.284027, 0.148113,
		0.290733, -0.568247, -0.769785,
		36.384274, 32.714474, 46.111843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778622, 33.367188, 46.319084>,  <36.180759, 33.112247, 46.650692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778622, 33.367188, 46.319084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.576298, 33.179474, 46.029552>,  <36.454903, 33.066845, 45.855835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.576298, 33.179474, 46.029552>,  <36.778622, 33.367188, 46.319084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576298, 33.179474, 46.029552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079056, 0.860768, -0.502821,
		0.859013, -0.197111, -0.472487,
		-0.505813, -0.469283, -0.723828,
		36.424553, 33.038689, 45.812405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980499, 33.703232, 45.662334>,  <36.778622, 33.367188, 46.319084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980499, 33.703232, 45.662334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663685, 33.490189, 45.542999>,  <36.473595, 33.362362, 45.471397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663685, 33.490189, 45.542999>,  <36.980499, 33.703232, 45.662334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663685, 33.490189, 45.542999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115300, 0.610412, -0.783647,
		0.599473, -0.586288, -0.544884,
		-0.792047, -0.532600, -0.298326,
		36.426075, 33.330406, 45.453499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094620, 33.691879, 44.873932>,  <36.980499, 33.703232, 45.662334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094620, 33.691879, 44.873932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715473, 33.616795, 44.976933>,  <36.487984, 33.571743, 45.038734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715473, 33.616795, 44.976933>,  <37.094620, 33.691879, 44.873932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715473, 33.616795, 44.976933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318089, 0.605614, -0.729418,
		-0.019026, -0.773302, -0.633752,
		-0.947870, -0.187712, 0.257501,
		36.431110, 33.560482, 45.054184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681347, 33.595207, 44.210693>,  <37.094620, 33.691879, 44.873932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681347, 33.595207, 44.210693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.439117, 33.729084, 44.499489>,  <36.293781, 33.809410, 44.672764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.439117, 33.729084, 44.499489>,  <36.681347, 33.595207, 44.210693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439117, 33.729084, 44.499489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380370, 0.675174, -0.632028,
		-0.698999, -0.657361, -0.281562,
		-0.605574, 0.334689, 0.721986,
		36.257446, 33.829491, 44.716084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043282, 33.460320, 43.901840>,  <36.681347, 33.595207, 44.210693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043282, 33.460320, 43.901840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019508, 33.741623, 44.185219>,  <36.005245, 33.910404, 44.355244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019508, 33.741623, 44.185219>,  <36.043282, 33.460320, 43.901840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019508, 33.741623, 44.185219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371719, 0.643063, -0.669548,
		-0.926440, -0.303138, 0.223194,
		-0.059438, 0.703261, 0.708442,
		36.001678, 33.952602, 44.397751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368481, 33.760029, 43.764359>,  <36.043282, 33.460320, 43.901840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368481, 33.760029, 43.764359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575855, 34.017399, 43.989651>,  <35.700279, 34.171822, 44.124825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575855, 34.017399, 43.989651>,  <35.368481, 33.760029, 43.764359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575855, 34.017399, 43.989651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208401, 0.733869, -0.646534,
		-0.829332, 0.217811, 0.514556,
		0.518438, 0.643425, 0.563229,
		35.731388, 34.210426, 44.158619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973843, 34.401344, 43.811298>,  <35.368481, 33.760029, 43.764359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973843, 34.401344, 43.811298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.308872, 34.543949, 43.976887>,  <35.509892, 34.629513, 44.076241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.308872, 34.543949, 43.976887>,  <34.973843, 34.401344, 43.811298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308872, 34.543949, 43.976887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190413, 0.900719, -0.390447,
		-0.512069, 0.248203, 0.822302,
		0.837573, 0.356513, 0.413969,
		35.560143, 34.650902, 44.101078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743492, 35.008152, 44.252045>,  <34.973843, 34.401344, 43.811298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743492, 35.008152, 44.252045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.134388, 35.033466, 44.171059>,  <35.368927, 35.048656, 44.122467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.134388, 35.033466, 44.171059>,  <34.743492, 35.008152, 44.252045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134388, 35.033466, 44.171059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116362, 0.957977, -0.262182,
		0.177363, 0.279775, 0.943540,
		0.977242, 0.063290, -0.202465,
		35.427559, 35.052452, 44.110321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025948, 35.529678, 44.678066>,  <34.743492, 35.008152, 44.252045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025948, 35.529678, 44.678066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221699, 35.493607, 44.331108>,  <35.339149, 35.471962, 44.122932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221699, 35.493607, 44.331108>,  <35.025948, 35.529678, 44.678066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221699, 35.493607, 44.331108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174570, 0.964377, -0.198755,
		0.854420, 0.248688, 0.456203,
		0.489379, -0.090181, -0.867396,
		35.368511, 35.466553, 44.070889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426289, 36.108498, 44.655285>,  <35.025948, 35.529678, 44.678066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426289, 36.108498, 44.655285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404907, 35.977066, 44.278099>,  <35.392078, 35.898209, 44.051788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404907, 35.977066, 44.278099>,  <35.426289, 36.108498, 44.655285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404907, 35.977066, 44.278099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231913, 0.922578, -0.308329,
		0.971267, 0.202205, -0.125513,
		-0.053450, -0.328578, -0.942963,
		35.388874, 35.878494, 43.995209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699535, 36.645554, 44.363380>,  <35.426289, 36.108498, 44.655285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699535, 36.645554, 44.363380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531517, 36.445023, 44.060795>,  <35.430706, 36.324703, 43.879242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531517, 36.445023, 44.060795>,  <35.699535, 36.645554, 44.363380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531517, 36.445023, 44.060795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131164, 0.858350, -0.496015,
		0.897976, -0.109126, -0.426299,
		-0.420042, -0.501325, -0.756464,
		35.405502, 36.294624, 43.833855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550060, 36.650818, 44.273552>,  <35.699535, 36.645554, 44.363380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550060, 36.650818, 44.273552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820396, 36.928188, 44.373478>,  <36.982597, 37.094612, 44.433434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.820396, 36.928188, 44.373478>,  <36.550060, 36.650818, 44.273552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820396, 36.928188, 44.373478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399807, -0.629639, 0.666115,
		0.619193, -0.350308, -0.702769,
		0.675836, 0.693426, 0.249812,
		37.023148, 37.136215, 44.448421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175385, 36.312153, 44.225052>,  <36.550060, 36.650818, 44.273552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175385, 36.312153, 44.225052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226574, 36.634129, 44.456806>,  <37.257286, 36.827316, 44.595860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226574, 36.634129, 44.456806>,  <37.175385, 36.312153, 44.225052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226574, 36.634129, 44.456806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304390, -0.587874, 0.749500,
		0.943912, 0.080444, -0.320248,
		0.127972, 0.804942, 0.579388,
		37.264965, 36.875610, 44.630623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926662, 36.339706, 44.509918>,  <37.175385, 36.312153, 44.225052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926662, 36.339706, 44.509918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667805, 36.541210, 44.738808>,  <37.512489, 36.662113, 44.876141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667805, 36.541210, 44.738808>,  <37.926662, 36.339706, 44.509918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667805, 36.541210, 44.738808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175751, -0.631785, 0.754956,
		0.741834, 0.589133, 0.320320,
		-0.647143, 0.503756, 0.572221,
		37.473663, 36.692337, 44.910473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373405, 36.608101, 45.156292>,  <37.926662, 36.339706, 44.509918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373405, 36.608101, 45.156292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985764, 36.604271, 45.254879>,  <37.753178, 36.601974, 45.314030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985764, 36.604271, 45.254879>,  <38.373405, 36.608101, 45.156292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985764, 36.604271, 45.254879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214937, -0.522959, 0.824813,
		0.120998, 0.852304, 0.508859,
		-0.969103, -0.009572, 0.246469,
		37.695034, 36.601398, 45.328819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347839, 36.606007, 45.857803>,  <38.373405, 36.608101, 45.156292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347839, 36.606007, 45.857803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.964294, 36.506496, 45.803112>,  <37.734169, 36.446789, 45.770298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.964294, 36.506496, 45.803112>,  <38.347839, 36.606007, 45.857803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964294, 36.506496, 45.803112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054511, -0.634046, 0.771371,
		-0.278589, 0.732186, 0.621524,
		-0.958862, -0.248776, -0.136726,
		37.676636, 36.431862, 45.762093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071941, 36.502518, 46.549507>,  <38.347839, 36.606007, 45.857803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071941, 36.502518, 46.549507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817219, 36.305447, 46.312271>,  <37.664387, 36.187206, 46.169930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817219, 36.305447, 46.312271>,  <38.071941, 36.502518, 46.549507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817219, 36.305447, 46.312271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118270, -0.697697, 0.706563,
		-0.761901, 0.520087, 0.386028,
		-0.636804, -0.492675, -0.593087,
		37.626179, 36.157642, 46.134346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465710, 36.418259, 46.931816>,  <38.071941, 36.502518, 46.549507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465710, 36.418259, 46.931816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.492203, 36.152622, 46.633930>,  <37.508099, 35.993240, 46.455200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.492203, 36.152622, 46.633930>,  <37.465710, 36.418259, 46.931816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492203, 36.152622, 46.633930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121862, -0.746150, 0.654530,
		-0.990335, 0.047400, -0.130348,
		0.066235, -0.664088, -0.744715,
		37.512074, 35.953396, 46.410515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122200, 35.888657, 47.211811>,  <37.465710, 36.418259, 46.931816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122200, 35.888657, 47.211811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287655, 35.708904, 46.895088>,  <37.386929, 35.601055, 46.705055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287655, 35.708904, 46.895088>,  <37.122200, 35.888657, 47.211811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287655, 35.708904, 46.895088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074308, -0.850134, 0.521296,
		-0.907404, -0.274465, -0.318254,
		0.413637, -0.449378, -0.791811,
		37.411747, 35.574093, 46.657543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793640, 35.150578, 47.208542>,  <37.122200, 35.888657, 47.211811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793640, 35.150578, 47.208542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147511, 35.159370, 47.022266>,  <37.359833, 35.164646, 46.910500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147511, 35.159370, 47.022266>,  <36.793640, 35.150578, 47.208542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147511, 35.159370, 47.022266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276346, -0.829209, 0.485845,
		-0.375474, -0.558506, -0.739655,
		0.884677, 0.021979, -0.465687,
		37.412914, 35.165962, 46.882561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898594, 34.536411, 47.136959>,  <36.793640, 35.150578, 47.208542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898594, 34.536411, 47.136959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.266460, 34.675476, 47.063908>,  <37.487179, 34.758915, 47.020077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.266460, 34.675476, 47.063908>,  <36.898594, 34.536411, 47.136959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266460, 34.675476, 47.063908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391046, -0.767994, 0.507216,
		0.036082, -0.537883, -0.842247,
		0.919664, 0.347659, -0.182626,
		37.542358, 34.779774, 47.009121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275936, 33.909641, 46.885525>,  <36.898594, 34.536411, 47.136959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275936, 33.909641, 46.885525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534325, 34.181271, 47.024998>,  <37.689358, 34.344250, 47.108681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534325, 34.181271, 47.024998>,  <37.275936, 33.909641, 46.885525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534325, 34.181271, 47.024998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511794, -0.724175, 0.462209,
		0.566381, -0.120120, -0.815342,
		0.645972, 0.679074, 0.348683,
		37.728115, 34.384995, 47.129604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953430, 33.619640, 46.781178>,  <37.275936, 33.909641, 46.885525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953430, 33.619640, 46.781178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989021, 33.884373, 47.078918>,  <38.010376, 34.043213, 47.257565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989021, 33.884373, 47.078918>,  <37.953430, 33.619640, 46.781178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989021, 33.884373, 47.078918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400964, -0.707890, 0.581481,
		0.911763, 0.246723, -0.328353,
		0.088973, 0.661831, 0.744355,
		38.015713, 34.082920, 47.302223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557007, 33.508671, 46.929996>,  <37.953430, 33.619640, 46.781178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557007, 33.508671, 46.929996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.399826, 33.693249, 47.248154>,  <38.305515, 33.803993, 47.439049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.399826, 33.693249, 47.248154>,  <38.557007, 33.508671, 46.929996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399826, 33.693249, 47.248154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362046, -0.717479, 0.595102,
		0.845286, 0.521819, 0.114874,
		-0.392956, 0.461442, 0.795398,
		38.281940, 33.831680, 47.486774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006187, 33.318741, 47.478962>,  <38.557007, 33.508671, 46.929996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006187, 33.318741, 47.478962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660954, 33.435699, 47.643688>,  <38.453812, 33.505875, 47.742523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660954, 33.435699, 47.643688>,  <39.006187, 33.318741, 47.478962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660954, 33.435699, 47.643688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137854, -0.648031, 0.749034,
		0.485880, 0.703250, 0.518998,
		-0.863086, 0.292395, 0.411811,
		38.402027, 33.523418, 47.767231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559235, 33.779408, 47.677837>,  <39.006187, 33.318741, 47.478962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559235, 33.779408, 47.677837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.958809, 33.783783, 47.695744>,  <40.198555, 33.786407, 47.706486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.958809, 33.783783, 47.695744>,  <39.559235, 33.779408, 47.677837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958809, 33.783783, 47.695744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017809, 0.804330, -0.593916,
		-0.042500, 0.594082, 0.803281,
		0.998938, 0.010935, 0.044764,
		40.258492, 33.787064, 47.709171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774685, 34.518951, 47.677319>,  <39.559235, 33.779408, 47.677837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774685, 34.518951, 47.677319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101856, 34.317059, 47.566879>,  <40.298161, 34.195923, 47.500614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101856, 34.317059, 47.566879>,  <39.774685, 34.518951, 47.677319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101856, 34.317059, 47.566879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346403, 0.815233, -0.464112,
		0.459339, 0.283970, 0.841646,
		0.817932, -0.504734, -0.276100,
		40.347237, 34.165638, 47.484051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347343, 34.883930, 47.881680>,  <39.774685, 34.518951, 47.677319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347343, 34.883930, 47.881680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.471050, 34.644543, 47.586060>,  <40.545273, 34.500912, 47.408688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.471050, 34.644543, 47.586060>,  <40.347343, 34.883930, 47.881680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471050, 34.644543, 47.586060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235313, 0.801138, -0.550277,
		0.921402, -0.003724, 0.388593,
		0.309268, -0.598468, -0.739047,
		40.563831, 34.465004, 47.364346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844097, 35.269501, 47.545731>,  <40.347343, 34.883930, 47.881680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844097, 35.269501, 47.545731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762142, 34.984470, 47.277325>,  <40.712971, 34.813454, 47.116283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762142, 34.984470, 47.277325>,  <40.844097, 35.269501, 47.545731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762142, 34.984470, 47.277325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360814, 0.582288, -0.728529,
		0.909854, -0.391376, 0.137804,
		-0.204887, -0.712577, -0.671011,
		40.700676, 34.770699, 47.076023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359322, 35.387329, 47.105850>,  <40.844097, 35.269501, 47.545731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359322, 35.387329, 47.105850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.117455, 35.129982, 46.918041>,  <40.972336, 34.975574, 46.805355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.117455, 35.129982, 46.918041>,  <41.359322, 35.387329, 47.105850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117455, 35.129982, 46.918041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435249, 0.226785, -0.871279,
		0.667036, -0.731193, 0.142897,
		-0.604667, -0.643370, -0.469524,
		40.936054, 34.936970, 46.777184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782013, 35.050423, 46.593121>,  <41.359322, 35.387329, 47.105850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782013, 35.050423, 46.593121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.401325, 35.043755, 46.470516>,  <41.172913, 35.039753, 46.396954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.401325, 35.043755, 46.470516>,  <41.782013, 35.050423, 46.593121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401325, 35.043755, 46.470516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290567, 0.273100, -0.917053,
		0.098995, -0.961841, -0.255072,
		-0.951720, -0.016668, -0.306515,
		41.115810, 35.038754, 46.378563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886139, 34.854630, 45.955769>,  <41.782013, 35.050423, 46.593121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886139, 34.854630, 45.955769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520622, 35.017014, 45.961124>,  <41.301311, 35.114445, 45.964336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520622, 35.017014, 45.961124>,  <41.886139, 34.854630, 45.955769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520622, 35.017014, 45.961124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173387, 0.419660, -0.890967,
		-0.367317, -0.811837, -0.453870,
		-0.913791, 0.405963, 0.013386,
		41.246483, 35.138802, 45.965141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783905, 34.985733, 45.260082>,  <41.886139, 34.854630, 45.955769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783905, 34.985733, 45.260082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.500053, 35.202370, 45.440350>,  <41.329742, 35.332352, 45.548508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.500053, 35.202370, 45.440350>,  <41.783905, 34.985733, 45.260082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500053, 35.202370, 45.440350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018068, 0.625433, -0.780068,
		-0.704340, -0.561704, -0.434042,
		-0.709632, 0.541592, 0.450667,
		41.287163, 35.364845, 45.575550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254978, 35.102470, 44.792538>,  <41.783905, 34.985733, 45.260082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254978, 35.102470, 44.792538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.237350, 35.407410, 45.050800>,  <41.226776, 35.590374, 45.205757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.237350, 35.407410, 45.050800>,  <41.254978, 35.102470, 44.792538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237350, 35.407410, 45.050800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239236, 0.619431, -0.747711,
		-0.969961, -0.187414, 0.155086,
		-0.044066, 0.762353, 0.645660,
		41.224129, 35.636116, 45.244499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696873, 35.429832, 44.614349>,  <41.254978, 35.102470, 44.792538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696873, 35.429832, 44.614349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910393, 35.706570, 44.808838>,  <41.038506, 35.872612, 44.925529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910393, 35.706570, 44.808838>,  <40.696873, 35.429832, 44.614349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910393, 35.706570, 44.808838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417967, 0.715710, -0.559519,
		-0.735094, 0.095445, 0.671213,
		0.533797, 0.691845, 0.486222,
		41.070534, 35.914124, 44.954704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235600, 35.992165, 44.959030>,  <40.696873, 35.429832, 44.614349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235600, 35.992165, 44.959030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.603394, 36.142956, 44.914429>,  <40.824070, 36.233429, 44.887669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.603394, 36.142956, 44.914429>,  <40.235600, 35.992165, 44.959030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603394, 36.142956, 44.914429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355080, 0.674686, -0.647083,
		-0.168703, 0.634578, 0.754221,
		0.919488, 0.376974, -0.111505,
		40.879238, 36.256046, 44.880978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107895, 36.689312, 44.834530>,  <40.235600, 35.992165, 44.959030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107895, 36.689312, 44.834530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.496685, 36.675087, 44.741577>,  <40.729958, 36.666553, 44.685806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.496685, 36.675087, 44.741577>,  <40.107895, 36.689312, 44.834530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496685, 36.675087, 44.741577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116335, 0.786231, -0.606883,
		0.204289, 0.616908, 0.760059,
		0.971973, -0.035558, -0.232386,
		40.788277, 36.664421, 44.671860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267841, 37.402878, 44.911743>,  <40.107895, 36.689312, 44.834530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267841, 37.402878, 44.911743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.548195, 37.223560, 44.689827>,  <40.716408, 37.115971, 44.556675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.548195, 37.223560, 44.689827>,  <40.267841, 37.402878, 44.911743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548195, 37.223560, 44.689827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098698, 0.831280, -0.547021,
		0.706416, 0.328641, 0.626875,
		0.700882, -0.448296, -0.554793,
		40.758461, 37.089073, 44.523388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734970, 37.870621, 44.862614>,  <40.267841, 37.402878, 44.911743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734970, 37.870621, 44.862614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.845978, 37.637039, 44.557465>,  <40.912582, 37.496891, 44.374374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.845978, 37.637039, 44.557465>,  <40.734970, 37.870621, 44.862614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845978, 37.637039, 44.557465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155537, 0.810900, -0.564136,
		0.948046, 0.037903, 0.315868,
		0.277520, -0.583956, -0.762875,
		40.929234, 37.461853, 44.328602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.952816, 34.496532, 31.601164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.959024, 34.098007, 31.567408>,  <30.962749, 33.858891, 31.547153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.959024, 34.098007, 31.567408>,  <30.952816, 34.496532, 31.601164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959024, 34.098007, 31.567408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860099, -0.056344, 0.507006,
		-0.509892, 0.064717, -0.857801,
		0.015520, -0.996312, -0.084393,
		30.963680, 33.799114, 31.542089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393555, 34.207951, 31.203499>,  <30.952816, 34.496532, 31.601164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393555, 34.207951, 31.203499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.529818, 33.955986, 31.482687>,  <30.611576, 33.804806, 31.650200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.529818, 33.955986, 31.482687>,  <30.393555, 34.207951, 31.203499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529818, 33.955986, 31.482687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900153, -0.004189, 0.435554,
		-0.271436, -0.776657, -0.568443,
		0.340657, -0.629910, 0.697973,
		30.632015, 33.767014, 31.692080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917938, 33.690460, 31.372448>,  <30.393555, 34.207951, 31.203499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917938, 33.690460, 31.372448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.167395, 33.688572, 31.685125>,  <30.317068, 33.687439, 31.872732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.167395, 33.688572, 31.685125>,  <29.917938, 33.690460, 31.372448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167395, 33.688572, 31.685125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781180, -0.040597, 0.622985,
		0.028793, -0.999164, -0.029007,
		0.623642, -0.004722, 0.781696,
		30.354486, 33.687157, 31.919634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456890, 33.333286, 31.899260>,  <29.917938, 33.690460, 31.372448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456890, 33.333286, 31.899260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.764380, 33.471313, 32.114662>,  <29.948874, 33.554131, 32.243904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.764380, 33.471313, 32.114662>,  <29.456890, 33.333286, 31.899260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764380, 33.471313, 32.114662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601126, 0.102267, 0.792584,
		0.218423, -0.932990, 0.286044,
		0.768726, 0.345067, 0.538507,
		29.994997, 33.574833, 32.276215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526712, 32.924622, 32.565701>,  <29.456890, 33.333286, 31.899260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526712, 32.924622, 32.565701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.694410, 33.278706, 32.646332>,  <29.795029, 33.491158, 32.694710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.694410, 33.278706, 32.646332>,  <29.526712, 32.924622, 32.565701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694410, 33.278706, 32.646332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495733, 0.037199, 0.867678,
		0.760581, -0.463697, 0.454424,
		0.419244, 0.885213, 0.201577,
		29.820183, 33.544270, 32.706806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830336, 32.914886, 33.243965>,  <29.526712, 32.924622, 32.565701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830336, 32.914886, 33.243965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736961, 33.290203, 33.141891>,  <29.680937, 33.515392, 33.080647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736961, 33.290203, 33.141891>,  <29.830336, 32.914886, 33.243965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736961, 33.290203, 33.141891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370710, 0.156738, 0.915428,
		0.898934, 0.308293, 0.311245,
		-0.233436, 0.938290, -0.255184,
		29.666931, 33.571690, 33.065334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833385, 33.183071, 33.907707>,  <29.830336, 32.914886, 33.243965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833385, 33.183071, 33.907707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695816, 33.490677, 33.692177>,  <29.613274, 33.675240, 33.562859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695816, 33.490677, 33.692177>,  <29.833385, 33.183071, 33.907707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695816, 33.490677, 33.692177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313799, 0.446709, 0.837843,
		0.885011, 0.457238, 0.087681,
		-0.343926, 0.769015, -0.538823,
		29.592638, 33.721382, 33.530529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125095, 33.848896, 34.150379>,  <29.833385, 33.183071, 33.907707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125095, 33.848896, 34.150379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.773716, 33.907692, 33.968510>,  <29.562889, 33.942970, 33.859390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.773716, 33.907692, 33.968510>,  <30.125095, 33.848896, 34.150379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773716, 33.907692, 33.968510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384735, 0.346736, 0.855425,
		0.283392, 0.926373, -0.248036,
		-0.878446, 0.146992, -0.454671,
		29.510181, 33.951790, 33.832108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923370, 34.536121, 34.344353>,  <30.125095, 33.848896, 34.150379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923370, 34.536121, 34.344353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586376, 34.356712, 34.224987>,  <29.384180, 34.249065, 34.153370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586376, 34.356712, 34.224987>,  <29.923370, 34.536121, 34.344353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586376, 34.356712, 34.224987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496400, 0.431112, 0.753478,
		-0.209303, 0.782924, -0.585852,
		-0.842484, -0.448522, -0.298410,
		29.333632, 34.222157, 34.135464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423704, 35.096855, 34.334263>,  <29.923370, 34.536121, 34.344353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423704, 35.096855, 34.334263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210661, 34.758949, 34.355042>,  <29.082834, 34.556206, 34.367508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210661, 34.758949, 34.355042>,  <29.423704, 35.096855, 34.334263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210661, 34.758949, 34.355042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613181, 0.427447, 0.664303,
		-0.583384, 0.321962, -0.745656,
		-0.532609, -0.844766, 0.051945,
		29.050879, 34.505520, 34.370625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832506, 35.408035, 34.497070>,  <29.423704, 35.096855, 34.334263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832506, 35.408035, 34.497070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.782587, 35.018700, 34.574047>,  <28.752636, 34.785099, 34.620235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.782587, 35.018700, 34.574047>,  <28.832506, 35.408035, 34.497070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782587, 35.018700, 34.574047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717068, 0.222534, 0.660524,
		-0.685740, -0.055565, -0.725722,
		-0.124796, -0.973340, 0.192444,
		28.745148, 34.726696, 34.631779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135738, 35.271526, 34.373360>,  <28.832506, 35.408035, 34.497070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135738, 35.271526, 34.373360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238607, 34.994354, 34.642792>,  <28.300329, 34.828053, 34.804451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238607, 34.994354, 34.642792>,  <28.135738, 35.271526, 34.373360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238607, 34.994354, 34.642792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779401, 0.263350, 0.568490,
		-0.571310, -0.671191, -0.472343,
		0.257174, -0.692928, 0.673581,
		28.315760, 34.786476, 34.844868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485620, 34.920265, 34.572525>,  <28.135738, 35.271526, 34.373360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485620, 34.920265, 34.572525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775986, 34.873901, 34.843704>,  <27.950205, 34.846081, 35.006413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775986, 34.873901, 34.843704>,  <27.485620, 34.920265, 34.572525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775986, 34.873901, 34.843704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586453, 0.410670, 0.698157,
		-0.359338, -0.904386, 0.230134,
		0.725912, -0.115912, 0.677949,
		27.993759, 34.839127, 35.047089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036846, 34.879185, 35.243839>,  <27.485620, 34.920265, 34.572525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036846, 34.879185, 35.243839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417488, 34.924061, 35.358288>,  <27.645872, 34.950985, 35.426956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417488, 34.924061, 35.358288>,  <27.036846, 34.879185, 35.243839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417488, 34.924061, 35.358288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304075, 0.478852, 0.823553,
		-0.044620, -0.870698, 0.489790,
		0.951602, 0.112186, 0.286124,
		27.702969, 34.957718, 35.444126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157619, 34.541248, 35.914001>,  <27.036846, 34.879185, 35.243839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157619, 34.541248, 35.914001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.423267, 34.834396, 35.854877>,  <27.582657, 35.010284, 35.819405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.423267, 34.834396, 35.854877>,  <27.157619, 34.541248, 35.914001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423267, 34.834396, 35.854877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318589, 0.456275, 0.830851,
		0.676348, -0.504694, 0.536505,
		0.664119, 0.732869, -0.147811,
		27.622503, 35.054256, 35.810535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486044, 34.535847, 36.536064>,  <27.157619, 34.541248, 35.914001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486044, 34.535847, 36.536064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569145, 34.883038, 36.355644>,  <27.619005, 35.091354, 36.247391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569145, 34.883038, 36.355644>,  <27.486044, 34.535847, 36.536064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569145, 34.883038, 36.355644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340642, 0.496448, 0.798437,
		0.916953, -0.012229, 0.398808,
		0.207752, 0.867980, -0.451054,
		27.631472, 35.143433, 36.220329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906021, 34.931416, 36.894970>,  <27.486044, 34.535847, 36.536064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906021, 34.931416, 36.894970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.742867, 35.227810, 36.681591>,  <27.644974, 35.405647, 36.553566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.742867, 35.227810, 36.681591>,  <27.906021, 34.931416, 36.894970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742867, 35.227810, 36.681591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360324, 0.406196, 0.839745,
		0.838925, 0.534734, 0.101313,
		-0.407887, 0.740988, -0.533446,
		27.620501, 35.450108, 36.521557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165821, 35.643234, 37.196598>,  <27.906021, 34.931416, 36.894970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165821, 35.643234, 37.196598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828718, 35.662907, 36.982182>,  <27.626457, 35.674709, 36.853531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828718, 35.662907, 36.982182>,  <28.165821, 35.643234, 37.196598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828718, 35.662907, 36.982182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520965, 0.176117, 0.835212,
		0.135486, 0.983140, -0.122800,
		-0.842757, 0.049185, -0.536043,
		27.575891, 35.677662, 36.821369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700651, 36.263374, 37.141060>,  <28.165821, 35.643234, 37.196598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700651, 36.263374, 37.141060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628706, 36.637821, 37.020172>,  <28.585539, 36.862488, 36.947639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628706, 36.637821, 37.020172>,  <28.700651, 36.263374, 37.141060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628706, 36.637821, 37.020172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668347, -0.109136, -0.735800,
		-0.721776, -0.334332, -0.606021,
		-0.179862, 0.936115, -0.302222,
		28.574747, 36.918655, 36.929504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760000, 36.947426, 37.444050>,  <28.700651, 36.263374, 37.141060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760000, 36.947426, 37.444050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043776, 36.926132, 37.725151>,  <29.214041, 36.913357, 37.893810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043776, 36.926132, 37.725151>,  <28.760000, 36.947426, 37.444050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043776, 36.926132, 37.725151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702331, -0.029427, -0.711242,
		0.058543, 0.998148, 0.016512,
		0.709439, -0.053235, 0.702754,
		29.256607, 36.910160, 37.935978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214056, 37.409645, 37.290043>,  <28.760000, 36.947426, 37.444050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214056, 37.409645, 37.290043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399200, 37.125763, 37.502483>,  <29.510288, 36.955433, 37.629948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399200, 37.125763, 37.502483>,  <29.214056, 37.409645, 37.290043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399200, 37.125763, 37.502483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719324, -0.049403, -0.692916,
		0.518007, 0.702760, 0.487645,
		0.462862, -0.709710, 0.531103,
		29.538059, 36.912849, 37.661816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878874, 37.667126, 37.350147>,  <29.214056, 37.409645, 37.290043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878874, 37.667126, 37.350147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907396, 37.270664, 37.394936>,  <29.924511, 37.032787, 37.421806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907396, 37.270664, 37.394936>,  <29.878874, 37.667126, 37.350147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907396, 37.270664, 37.394936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824908, -0.004508, -0.565249,
		0.560751, 0.132670, 0.817286,
		0.071308, -0.991150, 0.111968,
		29.928789, 36.973320, 37.428528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522999, 37.600006, 37.412117>,  <29.878874, 37.667126, 37.350147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522999, 37.600006, 37.412117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.391809, 37.235104, 37.313961>,  <30.313097, 37.016163, 37.255070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.391809, 37.235104, 37.313961>,  <30.522999, 37.600006, 37.412117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391809, 37.235104, 37.313961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747276, -0.091618, -0.658168,
		0.577939, -0.399232, 0.711758,
		-0.327972, -0.912261, -0.245387,
		30.293419, 36.961426, 37.240345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081106, 37.073765, 37.163166>,  <30.522999, 37.600006, 37.412117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081106, 37.073765, 37.163166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.751463, 36.915794, 37.000744>,  <30.553677, 36.821011, 36.903290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.751463, 36.915794, 37.000744>,  <31.081106, 37.073765, 37.163166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751463, 36.915794, 37.000744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545411, -0.359774, -0.757027,
		0.152886, -0.845336, 0.511891,
		-0.824107, -0.394930, -0.406052,
		30.504230, 36.797314, 36.878929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423853, 36.493233, 36.753811>,  <31.081106, 37.073765, 37.163166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423853, 36.493233, 36.753811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.060791, 36.581783, 36.611176>,  <30.842955, 36.634914, 36.525593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.060791, 36.581783, 36.611176>,  <31.423853, 36.493233, 36.753811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060791, 36.581783, 36.611176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282979, -0.304685, -0.909445,
		-0.310012, -0.926360, 0.213891,
		-0.907643, 0.221412, -0.356596,
		30.788494, 36.648197, 36.504200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235239, 35.950638, 36.350788>,  <31.423853, 36.493233, 36.753811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235239, 35.950638, 36.350788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.995729, 36.247166, 36.229515>,  <30.852024, 36.425083, 36.156750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.995729, 36.247166, 36.229515>,  <31.235239, 35.950638, 36.350788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995729, 36.247166, 36.229515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294226, -0.148480, -0.944132,
		-0.744919, -0.654524, -0.129210,
		-0.598772, 0.741318, -0.303183,
		30.816097, 36.469563, 36.138561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942533, 35.619522, 35.679729>,  <31.235239, 35.950638, 36.350788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942533, 35.619522, 35.679729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.880196, 36.013496, 35.709709>,  <30.842793, 36.249882, 35.727699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.880196, 36.013496, 35.709709>,  <30.942533, 35.619522, 35.679729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880196, 36.013496, 35.709709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203933, 0.106326, -0.973194,
		-0.966501, -0.136381, -0.217430,
		-0.155844, 0.984934, 0.074952,
		30.833443, 36.308975, 35.732193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493153, 35.801472, 35.101280>,  <30.942533, 35.619522, 35.679729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493153, 35.801472, 35.101280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682755, 36.140469, 35.196842>,  <30.796516, 36.343868, 35.254181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682755, 36.140469, 35.196842>,  <30.493153, 35.801472, 35.101280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682755, 36.140469, 35.196842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258688, 0.125314, -0.957798,
		-0.841664, 0.515804, -0.159837,
		0.474006, 0.847492, 0.238905,
		30.824957, 36.394714, 35.268513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471590, 36.086124, 34.473602>,  <30.493153, 35.801472, 35.101280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471590, 36.086124, 34.473602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.712360, 36.340450, 34.666859>,  <30.856823, 36.493046, 34.782810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.712360, 36.340450, 34.666859>,  <30.471590, 36.086124, 34.473602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712360, 36.340450, 34.666859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450341, 0.229353, -0.862896,
		-0.659453, 0.736977, -0.148280,
		0.601926, 0.635816, 0.483139,
		30.892939, 36.531197, 34.811802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439447, 36.769272, 34.129303>,  <30.471590, 36.086124, 34.473602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439447, 36.769272, 34.129303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.786797, 36.772015, 34.327648>,  <30.995207, 36.773659, 34.446655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.786797, 36.772015, 34.327648>,  <30.439447, 36.769272, 34.129303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786797, 36.772015, 34.327648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483688, 0.208930, -0.849938,
		-0.109430, 0.977906, 0.178112,
		0.868373, 0.006858, 0.495865,
		31.047308, 36.774071, 34.476406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783932, 37.482746, 34.139462>,  <30.439447, 36.769272, 34.129303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783932, 37.482746, 34.139462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.050146, 37.184422, 34.151012>,  <31.209875, 37.005428, 34.157944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.050146, 37.184422, 34.151012>,  <30.783932, 37.482746, 34.139462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050146, 37.184422, 34.151012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485387, 0.403102, -0.775828,
		0.566977, 0.530358, 0.630284,
		0.665535, -0.745808, 0.028879,
		31.249807, 36.960678, 34.159676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394409, 37.713078, 33.734066>,  <30.783932, 37.482746, 34.139462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394409, 37.713078, 33.734066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.519281, 37.335281, 33.775021>,  <31.594204, 37.108604, 33.799595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.519281, 37.335281, 33.775021>,  <31.394409, 37.713078, 33.734066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519281, 37.335281, 33.775021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560724, 0.096184, -0.822397,
		0.766898, 0.314146, 0.559625,
		0.312179, -0.944490, 0.102386,
		31.612936, 37.051933, 33.805737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165131, 37.689289, 33.756229>,  <31.394409, 37.713078, 33.734066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165131, 37.689289, 33.756229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.042736, 37.326286, 33.641132>,  <31.969299, 37.108482, 33.572075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.042736, 37.326286, 33.641132>,  <32.165131, 37.689289, 33.756229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042736, 37.326286, 33.641132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535394, 0.085884, -0.840225,
		0.787225, -0.411154, 0.459596,
		-0.305990, -0.907511, -0.287739,
		31.950939, 37.054031, 33.554810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772621, 37.325329, 33.584148>,  <32.165131, 37.689289, 33.756229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772621, 37.325329, 33.584148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.470497, 37.124298, 33.415897>,  <32.289223, 37.003681, 33.314945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.470497, 37.124298, 33.415897>,  <32.772621, 37.325329, 33.584148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470497, 37.124298, 33.415897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553144, -0.144645, -0.820433,
		0.351487, -0.852348, 0.387248,
		-0.755307, -0.502575, -0.420630,
		32.243904, 36.973526, 33.289707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135624, 36.772728, 33.324406>,  <32.772621, 37.325329, 33.584148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135624, 36.772728, 33.324406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.781769, 36.747974, 33.139545>,  <32.569454, 36.733124, 33.028629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.781769, 36.747974, 33.139545>,  <33.135624, 36.772728, 33.324406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781769, 36.747974, 33.139545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458150, -0.299569, -0.836873,
		-0.086660, -0.952066, 0.293361,
		-0.884640, -0.061880, -0.462149,
		32.516376, 36.729412, 33.000900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041962, 36.079071, 33.054047>,  <33.135624, 36.772728, 33.324406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041962, 36.079071, 33.054047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.833733, 36.335976, 32.829010>,  <32.708797, 36.490120, 32.693989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.833733, 36.335976, 32.829010>,  <33.041962, 36.079071, 33.054047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833733, 36.335976, 32.829010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523090, -0.280871, -0.804666,
		-0.674822, -0.713169, -0.189749,
		-0.520568, 0.642262, -0.562590,
		32.677563, 36.528656, 32.660233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868954, 35.655361, 32.500446>,  <33.041962, 36.079071, 33.054047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868954, 35.655361, 32.500446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.834396, 36.030731, 32.366646>,  <32.813663, 36.255955, 32.286366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.834396, 36.030731, 32.366646>,  <32.868954, 35.655361, 32.500446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834396, 36.030731, 32.366646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428229, -0.268179, -0.862960,
		-0.899531, -0.217795, -0.378694,
		-0.086391, 0.938427, -0.334502,
		32.808479, 36.312260, 32.266296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648537, 35.591492, 31.821491>,  <32.868954, 35.655361, 32.500446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648537, 35.591492, 31.821491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.781559, 35.968712, 31.818285>,  <32.861370, 36.195045, 31.816360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.781559, 35.968712, 31.818285>,  <32.648537, 35.591492, 31.821491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781559, 35.968712, 31.818285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400925, -0.149062, -0.903903,
		-0.853621, 0.297381, -0.427663,
		0.332552, 0.943051, -0.008015,
		32.881325, 36.251629, 31.815880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522221, 35.756615, 31.134235>,  <32.648537, 35.591492, 31.821491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522221, 35.756615, 31.134235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.767834, 36.055996, 31.234467>,  <32.915199, 36.235622, 31.294605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.767834, 36.055996, 31.234467>,  <32.522221, 35.756615, 31.134235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767834, 36.055996, 31.234467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519746, -0.144495, -0.842013,
		-0.593997, 0.647258, -0.477728,
		0.614029, 0.748450, 0.250580,
		32.952042, 36.280533, 31.309641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476257, 36.285355, 30.575569>,  <32.522221, 35.756615, 31.134235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476257, 36.285355, 30.575569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828918, 36.320400, 30.761051>,  <33.040516, 36.341427, 30.872339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828918, 36.320400, 30.761051>,  <32.476257, 36.285355, 30.575569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828918, 36.320400, 30.761051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469742, -0.068911, -0.880110,
		-0.045155, 0.993768, -0.101911,
		0.881648, 0.087613, 0.463703,
		33.093414, 36.346684, 30.900162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933395, 36.592056, 30.069895>,  <32.476257, 36.285355, 30.575569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933395, 36.592056, 30.069895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.167908, 36.411354, 30.338875>,  <33.308617, 36.302933, 30.500263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.167908, 36.411354, 30.338875>,  <32.933395, 36.592056, 30.069895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167908, 36.411354, 30.338875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592655, -0.326729, -0.736212,
		0.552297, 0.830159, 0.076181,
		0.586283, -0.451757, 0.672449,
		33.343792, 36.275826, 30.540609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547195, 36.833958, 29.953735>,  <32.933395, 36.592056, 30.069895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547195, 36.833958, 29.953735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608078, 36.476067, 30.121683>,  <33.644608, 36.261330, 30.222452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608078, 36.476067, 30.121683>,  <33.547195, 36.833958, 29.953735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608078, 36.476067, 30.121683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699601, -0.202544, -0.685226,
		0.698135, 0.398035, 0.595126,
		0.152205, -0.894731, 0.419869,
		33.653740, 36.207645, 30.247644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.291183, 31.762192, 45.588959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.920654, 31.628584, 45.519272>,  <41.698338, 31.548420, 45.477459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.920654, 31.628584, 45.519272>,  <42.291183, 31.762192, 45.588959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920654, 31.628584, 45.519272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047376, -0.562078, 0.825726,
		-0.373732, 0.756638, 0.536491,
		-0.926326, -0.334017, -0.174220,
		41.642757, 31.528379, 45.467007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883854, 31.791252, 46.214024>,  <42.291183, 31.762192, 45.588959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883854, 31.791252, 46.214024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.689598, 31.524059, 45.988476>,  <41.573044, 31.363743, 45.853146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.689598, 31.524059, 45.988476>,  <41.883854, 31.791252, 46.214024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689598, 31.524059, 45.988476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109731, -0.593357, 0.797425,
		-0.867243, 0.449138, 0.214861,
		-0.485643, -0.667984, -0.563869,
		41.543903, 31.323664, 45.819317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208080, 31.671032, 46.558697>,  <41.883854, 31.791252, 46.214024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208080, 31.671032, 46.558697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.285912, 31.358482, 46.321514>,  <41.332611, 31.170952, 46.179207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.285912, 31.358482, 46.321514>,  <41.208080, 31.671032, 46.558697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285912, 31.358482, 46.321514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035225, -0.609683, 0.791863,
		-0.980254, -0.133194, -0.146156,
		0.194580, -0.781375, -0.592952,
		41.344284, 31.124069, 46.143627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806698, 31.169191, 46.800507>,  <41.208080, 31.671032, 46.558697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806698, 31.169191, 46.800507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065857, 30.952145, 46.586666>,  <41.221352, 30.821917, 46.458363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065857, 30.952145, 46.586666>,  <40.806698, 31.169191, 46.800507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065857, 30.952145, 46.586666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054600, -0.733100, 0.677925,
		-0.759770, -0.410035, -0.504599,
		0.647895, -0.542618, -0.534599,
		41.260227, 30.789360, 46.426285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500111, 30.541674, 46.740124>,  <40.806698, 31.169191, 46.800507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500111, 30.541674, 46.740124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.892365, 30.493216, 46.678566>,  <41.127716, 30.464142, 46.641632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.892365, 30.493216, 46.678566>,  <40.500111, 30.541674, 46.740124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892365, 30.493216, 46.678566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032201, -0.675331, 0.736812,
		-0.193187, -0.727498, -0.658351,
		0.980634, -0.121143, -0.153891,
		41.186554, 30.456873, 46.632397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617813, 29.851324, 46.798374>,  <40.500111, 30.541674, 46.740124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617813, 29.851324, 46.798374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.994648, 29.978329, 46.841560>,  <41.220749, 30.054531, 46.867474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.994648, 29.978329, 46.841560>,  <40.617813, 29.851324, 46.798374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994648, 29.978329, 46.841560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154282, -0.696172, 0.701101,
		0.297768, -0.643842, -0.704841,
		0.942089, 0.317510, 0.107965,
		41.277275, 30.073582, 46.873951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042690, 29.215910, 47.021530>,  <40.617813, 29.851324, 46.798374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042690, 29.215910, 47.021530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.296326, 29.511717, 47.111904>,  <41.448509, 29.689201, 47.166126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.296326, 29.511717, 47.111904>,  <41.042690, 29.215910, 47.021530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296326, 29.511717, 47.111904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325348, -0.520214, 0.789637,
		0.701482, -0.427195, -0.570463,
		0.634091, 0.739515, 0.225933,
		41.486553, 29.733572, 47.179684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570175, 28.861217, 47.157833>,  <41.042690, 29.215910, 47.021530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570175, 28.861217, 47.157833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.624229, 29.214067, 47.338318>,  <41.656662, 29.425777, 47.446609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.624229, 29.214067, 47.338318>,  <41.570175, 28.861217, 47.157833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624229, 29.214067, 47.338318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367457, -0.467531, 0.803983,
		0.920170, 0.057153, -0.387324,
		0.135136, 0.882127, 0.451210,
		41.664772, 29.478706, 47.473682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264584, 28.889584, 47.339714>,  <41.570175, 28.861217, 47.157833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264584, 28.889584, 47.339714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.043072, 29.112720, 47.586983>,  <41.910164, 29.246603, 47.735344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.043072, 29.112720, 47.586983>,  <42.264584, 28.889584, 47.339714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043072, 29.112720, 47.586983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273273, -0.579520, 0.767774,
		0.786542, 0.594109, 0.168484,
		-0.553782, 0.557844, 0.618171,
		41.876938, 29.280073, 47.772434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572979, 28.831657, 47.960072>,  <42.264584, 28.889584, 47.339714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572979, 28.831657, 47.960072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.217770, 28.985968, 48.060146>,  <42.004642, 29.078554, 48.120190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.217770, 28.985968, 48.060146>,  <42.572979, 28.831657, 47.960072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217770, 28.985968, 48.060146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137551, -0.296306, 0.945136,
		0.438742, 0.873716, 0.210063,
		-0.888023, 0.385776, 0.250183,
		41.951363, 29.101700, 48.135201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654701, 29.181942, 48.626099>,  <42.572979, 28.831657, 47.960072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654701, 29.181942, 48.626099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.262508, 29.105227, 48.608765>,  <42.027195, 29.059196, 48.598366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.262508, 29.105227, 48.608765>,  <42.654701, 29.181942, 48.626099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262508, 29.105227, 48.608765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027383, -0.351438, 0.935811,
		-0.194708, 0.916356, 0.349829,
		-0.980479, -0.191789, -0.043336,
		41.968365, 29.047689, 48.595764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377914, 29.378906, 49.254932>,  <42.654701, 29.181942, 48.626099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377914, 29.378906, 49.254932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.147854, 29.093494, 49.094894>,  <42.009815, 28.922247, 48.998871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.147854, 29.093494, 49.094894>,  <42.377914, 29.378906, 49.254932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147854, 29.093494, 49.094894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059702, -0.451166, 0.890441,
		-0.815862, 0.536029, 0.216892,
		-0.575156, -0.713528, -0.400091,
		41.975307, 28.879436, 48.974869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722733, 29.286367, 49.566948>,  <42.377914, 29.378906, 49.254932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722733, 29.286367, 49.566948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.833958, 28.943836, 49.392876>,  <41.900692, 28.738317, 49.288433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.833958, 28.943836, 49.392876>,  <41.722733, 29.286367, 49.566948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833958, 28.943836, 49.392876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088514, -0.473966, 0.876083,
		-0.956477, -0.205083, -0.207587,
		0.278059, -0.856328, -0.435185,
		41.917374, 28.686937, 49.262321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184235, 28.867172, 49.620903>,  <41.722733, 29.286367, 49.566948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184235, 28.867172, 49.620903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.520924, 28.651592, 49.608059>,  <41.722939, 28.522243, 49.600353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.520924, 28.651592, 49.608059>,  <41.184235, 28.867172, 49.620903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520924, 28.651592, 49.608059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330071, -0.560749, 0.759351,
		-0.427259, -0.628565, -0.649889,
		0.841726, -0.538949, -0.032114,
		41.773441, 28.489908, 49.598423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996994, 29.287115, 50.210007>,  <41.184235, 28.867172, 49.620903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996994, 29.287115, 50.210007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.801651, 29.335026, 50.555759>,  <40.684444, 29.363771, 50.763210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.801651, 29.335026, 50.555759>,  <40.996994, 29.287115, 50.210007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801651, 29.335026, 50.555759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248901, 0.930270, -0.269528,
		-0.836394, -0.346772, -0.424492,
		-0.488357, 0.119775, 0.864385,
		40.655144, 29.370958, 50.815075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440639, 29.625048, 50.025333>,  <40.996994, 29.287115, 50.210007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440639, 29.625048, 50.025333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466251, 29.712826, 50.414742>,  <40.481617, 29.765493, 50.648388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466251, 29.712826, 50.414742>,  <40.440639, 29.625048, 50.025333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466251, 29.712826, 50.414742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230106, 0.952483, -0.199569,
		-0.971057, -0.211235, 0.111484,
		0.064030, 0.219446, 0.973521,
		40.485462, 29.778660, 50.706799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058620, 30.292459, 50.012630>,  <40.440639, 29.625048, 50.025333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058620, 30.292459, 50.012630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.211231, 30.283258, 50.382259>,  <40.302795, 30.277737, 50.604038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.211231, 30.283258, 50.382259>,  <40.058620, 30.292459, 50.012630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211231, 30.283258, 50.382259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130632, 0.988315, 0.078537,
		-0.915082, -0.150677, 0.374061,
		0.381524, -0.023004, 0.924073,
		40.325687, 30.276358, 50.659481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536926, 30.548325, 50.509953>,  <40.058620, 30.292459, 50.012630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536926, 30.548325, 50.509953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.921432, 30.611353, 50.600403>,  <40.152138, 30.649170, 50.654671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.921432, 30.611353, 50.600403>,  <39.536926, 30.548325, 50.509953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921432, 30.611353, 50.600403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084699, 0.949639, -0.301682,
		-0.262273, 0.270845, 0.926205,
		0.961270, 0.157571, 0.226124,
		40.209812, 30.658625, 50.668240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552513, 31.299698, 50.673096>,  <39.536926, 30.548325, 50.509953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552513, 31.299698, 50.673096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.946121, 31.228529, 50.670212>,  <40.182285, 31.185827, 50.668480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.946121, 31.228529, 50.670212>,  <39.552513, 31.299698, 50.673096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946121, 31.228529, 50.670212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153457, 0.867858, -0.472518,
		0.090333, 0.463859, 0.881292,
		0.984018, -0.177924, -0.007213,
		40.241325, 31.175152, 50.668049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822842, 31.920050, 50.823067>,  <39.552513, 31.299698, 50.673096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822842, 31.920050, 50.823067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.114128, 31.722801, 50.632687>,  <40.288902, 31.604452, 50.518459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.114128, 31.722801, 50.632687>,  <39.822842, 31.920050, 50.823067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114128, 31.722801, 50.632687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260518, 0.841515, -0.473269,
		0.633899, 0.220649, 0.741273,
		0.728219, -0.493120, -0.475952,
		40.332592, 31.574865, 50.489902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298656, 32.439674, 50.649857>,  <39.822842, 31.920050, 50.823067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298656, 32.439674, 50.649857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.445984, 32.157177, 50.408012>,  <40.534382, 31.987679, 50.262905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.445984, 32.157177, 50.408012>,  <40.298656, 32.439674, 50.649857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445984, 32.157177, 50.408012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324266, 0.707082, -0.628400,
		0.871315, 0.035399, 0.489445,
		0.368323, -0.706245, -0.604613,
		40.556480, 31.945303, 50.226627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968174, 32.739876, 50.361980>,  <40.298656, 32.439674, 50.649857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968174, 32.739876, 50.361980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.860867, 32.441990, 50.117546>,  <40.796482, 32.263256, 49.970886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.860867, 32.441990, 50.117546>,  <40.968174, 32.739876, 50.361980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860867, 32.441990, 50.117546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079596, 0.615033, -0.784473,
		0.960049, -0.259092, -0.105720,
		-0.268272, -0.744718, -0.611085,
		40.780384, 32.218575, 49.934219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564213, 32.581814, 49.882900>,  <40.968174, 32.739876, 50.361980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564213, 32.581814, 49.882900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.234882, 32.441959, 49.704067>,  <41.037285, 32.358047, 49.596767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.234882, 32.441959, 49.704067>,  <41.564213, 32.581814, 49.882900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234882, 32.441959, 49.704067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152018, 0.623099, -0.767227,
		0.546827, -0.699646, -0.459866,
		-0.823329, -0.349632, -0.447086,
		40.987885, 32.337070, 49.569942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754765, 32.590897, 49.191887>,  <41.564213, 32.581814, 49.882900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754765, 32.590897, 49.191887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.355415, 32.571930, 49.179230>,  <41.115807, 32.560551, 49.171635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.355415, 32.571930, 49.179230>,  <41.754765, 32.590897, 49.191887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355415, 32.571930, 49.179230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002512, 0.517890, -0.855444,
		0.056952, -0.854132, -0.516928,
		-0.998374, -0.047421, -0.031641,
		41.055904, 32.557705, 49.169739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558685, 32.318317, 48.482334>,  <41.754765, 32.590897, 49.191887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558685, 32.318317, 48.482334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.251480, 32.509789, 48.652523>,  <41.067158, 32.624672, 48.754635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.251480, 32.509789, 48.652523>,  <41.558685, 32.318317, 48.482334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251480, 32.509789, 48.652523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166554, 0.492200, -0.854400,
		-0.618399, -0.727052, -0.298289,
		-0.768011, 0.478679, 0.425470,
		41.021076, 32.653393, 48.780163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059784, 32.328262, 47.983753>,  <41.558685, 32.318317, 48.482334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059784, 32.328262, 47.983753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.952057, 32.610306, 48.246140>,  <40.887421, 32.779533, 48.403572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.952057, 32.610306, 48.246140>,  <41.059784, 32.328262, 47.983753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952057, 32.610306, 48.246140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121488, 0.650815, -0.749454,
		-0.955359, -0.281531, -0.089612,
		-0.269315, 0.705110, 0.655964,
		40.871262, 32.821838, 48.442928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337391, 32.559040, 47.786087>,  <41.059784, 32.328262, 47.983753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337391, 32.559040, 47.786087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.497959, 32.856705, 47.999660>,  <40.594299, 33.035305, 48.127804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.497959, 32.856705, 47.999660>,  <40.337391, 32.559040, 47.786087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497959, 32.856705, 47.999660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285542, 0.655593, -0.699044,
		-0.870246, 0.128148, 0.475657,
		0.401418, 0.744161, 0.533936,
		40.618385, 33.079952, 48.159840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781578, 33.071362, 47.702122>,  <40.337391, 32.559040, 47.786087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781578, 33.071362, 47.702122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.098118, 33.271313, 47.842911>,  <40.288044, 33.391285, 47.927383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.098118, 33.271313, 47.842911>,  <39.781578, 33.071362, 47.702122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098118, 33.271313, 47.842911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276383, 0.806046, -0.523356,
		-0.545322, 0.316879, 0.776023,
		0.791351, 0.499877, 0.351975,
		40.335522, 33.421276, 47.948502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124386, 33.254246, 48.165813>,  <39.781578, 33.071362, 47.702122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124386, 33.254246, 48.165813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725201, 33.231033, 48.155182>,  <38.485691, 33.217106, 48.148804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725201, 33.231033, 48.155182>,  <39.124386, 33.254246, 48.165813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725201, 33.231033, 48.155182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021893, -0.702356, 0.711489,
		-0.059958, 0.709456, 0.702195,
		-0.997961, -0.058032, -0.026580,
		38.425812, 33.213623, 48.147209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983540, 33.149616, 48.792206>,  <39.124386, 33.254246, 48.165813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983540, 33.149616, 48.792206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.642448, 33.038612, 48.615185>,  <38.437794, 32.972012, 48.508972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.642448, 33.038612, 48.615185>,  <38.983540, 33.149616, 48.792206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642448, 33.038612, 48.615185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128703, -0.709478, 0.692876,
		-0.506256, 0.647790, 0.569274,
		-0.852726, -0.277505, -0.442549,
		38.386631, 32.955360, 48.482418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424217, 33.202606, 49.298645>,  <38.983540, 33.149616, 48.792206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424217, 33.202606, 49.298645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339287, 32.912453, 49.036732>,  <38.288330, 32.738361, 48.879585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339287, 32.912453, 49.036732>,  <38.424217, 33.202606, 49.298645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339287, 32.912453, 49.036732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361940, -0.564029, 0.742206,
		-0.907699, 0.394580, -0.142788,
		-0.212323, -0.725381, -0.654784,
		38.275589, 32.694839, 48.840298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939991, 32.805759, 49.670990>,  <38.424217, 33.202606, 49.298645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939991, 32.805759, 49.670990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077389, 32.570286, 49.378288>,  <38.159828, 32.429001, 49.202667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077389, 32.570286, 49.378288>,  <37.939991, 32.805759, 49.670990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077389, 32.570286, 49.378288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266843, -0.808225, 0.524945,
		-0.900450, 0.014950, -0.434703,
		0.343490, -0.588684, -0.731756,
		38.180435, 32.393681, 49.158760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479767, 32.263981, 49.626656>,  <37.939991, 32.805759, 49.670990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479767, 32.263981, 49.626656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812824, 32.120331, 49.458023>,  <38.012657, 32.034142, 49.356842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812824, 32.120331, 49.458023>,  <37.479767, 32.263981, 49.626656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812824, 32.120331, 49.458023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213658, -0.910622, 0.353721,
		-0.510934, -0.204449, -0.834954,
		0.832645, -0.359123, -0.421585,
		38.062618, 32.012592, 49.331547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263924, 31.727837, 49.284733>,  <37.479767, 32.263981, 49.626656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263924, 31.727837, 49.284733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659084, 31.666615, 49.294712>,  <37.896179, 31.629881, 49.300701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659084, 31.666615, 49.294712>,  <37.263924, 31.727837, 49.284733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659084, 31.666615, 49.294712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144612, -0.851138, 0.504630,
		-0.056003, -0.502133, -0.862975,
		0.987902, -0.153057, 0.024948,
		37.955456, 31.620697, 49.302197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451775, 31.047228, 48.889648>,  <37.263924, 31.727837, 49.284733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451775, 31.047228, 48.889648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746395, 31.129368, 49.147430>,  <37.923168, 31.178652, 49.302101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746395, 31.129368, 49.147430>,  <37.451775, 31.047228, 48.889648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746395, 31.129368, 49.147430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019211, -0.946064, 0.323409,
		0.676109, -0.250588, -0.692880,
		0.736551, 0.205349, 0.644456,
		37.967361, 31.190973, 49.340767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434998, 30.464111, 48.380379>,  <37.451775, 31.047228, 48.889648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434998, 30.464111, 48.380379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226231, 30.156507, 48.232742>,  <37.100971, 29.971945, 48.144161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226231, 30.156507, 48.232742>,  <37.434998, 30.464111, 48.380379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226231, 30.156507, 48.232742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176562, 0.325933, -0.928759,
		0.834522, -0.549904, -0.034333,
		-0.521918, -0.769008, -0.369091,
		37.069656, 29.925804, 48.122017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861237, 30.197046, 47.910156>,  <37.434998, 30.464111, 48.380379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861237, 30.197046, 47.910156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474262, 30.140242, 47.826336>,  <37.242077, 30.106159, 47.776043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474262, 30.140242, 47.826336>,  <37.861237, 30.197046, 47.910156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474262, 30.140242, 47.826336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126808, 0.444560, -0.886728,
		0.219081, -0.884420, -0.412073,
		-0.967431, -0.142011, -0.209546,
		37.184032, 30.097637, 47.763474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817566, 30.204008, 47.145874>,  <37.861237, 30.197046, 47.910156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817566, 30.204008, 47.145874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.429688, 30.227472, 47.240738>,  <37.196960, 30.241550, 47.297657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.429688, 30.227472, 47.240738>,  <37.817566, 30.204008, 47.145874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429688, 30.227472, 47.240738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166050, 0.553806, -0.815921,
		-0.179203, -0.830577, -0.527284,
		-0.969698, 0.058660, 0.237161,
		37.138779, 30.245070, 47.311886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440754, 30.105349, 46.490135>,  <37.817566, 30.204008, 47.145874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440754, 30.105349, 46.490135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199966, 30.291313, 46.749828>,  <37.055496, 30.402891, 46.905643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199966, 30.291313, 46.749828>,  <37.440754, 30.105349, 46.490135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199966, 30.291313, 46.749828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314552, 0.609243, -0.727928,
		-0.733959, -0.642403, -0.220504,
		-0.601964, 0.464910, 0.649229,
		37.019379, 30.430786, 46.944595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854179, 30.141911, 46.189758>,  <37.440754, 30.105349, 46.490135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854179, 30.141911, 46.189758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812263, 30.413752, 46.480183>,  <36.787113, 30.576857, 46.654438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812263, 30.413752, 46.480183>,  <36.854179, 30.141911, 46.189758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812263, 30.413752, 46.480183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482671, 0.603569, -0.634613,
		-0.869511, -0.416945, 0.264779,
		-0.104786, 0.679604, 0.726057,
		36.780827, 30.617632, 46.697998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295269, 30.594271, 46.011169>,  <36.854179, 30.141911, 46.189758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295269, 30.594271, 46.011169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487549, 30.835659, 46.265648>,  <36.602917, 30.980492, 46.418335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487549, 30.835659, 46.265648>,  <36.295269, 30.594271, 46.011169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487549, 30.835659, 46.265648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401114, 0.796495, -0.452441,
		-0.779764, -0.037699, 0.624937,
		0.480702, 0.603469, 0.636200,
		36.631760, 31.016699, 46.456509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829575, 31.119265, 46.142639>,  <36.295269, 30.594271, 46.011169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829575, 31.119265, 46.142639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.184483, 31.265806, 46.254742>,  <36.397427, 31.353731, 46.322002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.184483, 31.265806, 46.254742>,  <35.829575, 31.119265, 46.142639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184483, 31.265806, 46.254742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243065, 0.887738, -0.390949,
		-0.392017, 0.278756, 0.876708,
		0.887266, 0.366356, 0.280253,
		36.450661, 31.375713, 46.338818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.809364, 26.944807, 47.060471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.983421, 27.296068, 47.139969>,  <40.087856, 27.506824, 47.187668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.983421, 27.296068, 47.139969>,  <39.809364, 26.944807, 47.060471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983421, 27.296068, 47.139969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186654, 0.303930, -0.934231,
		-0.880801, 0.369428, 0.296164,
		0.435144, 0.878151, 0.198747,
		40.113964, 27.559513, 47.199593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383106, 27.351151, 46.709274>,  <39.809364, 26.944807, 47.060471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383106, 27.351151, 46.709274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.725590, 27.555189, 46.742054>,  <39.931080, 27.677612, 46.761723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.725590, 27.555189, 46.742054>,  <39.383106, 27.351151, 46.709274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725590, 27.555189, 46.742054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124328, 0.357387, -0.925644,
		-0.501454, 0.782353, 0.369415,
		0.856204, 0.510097, 0.081945,
		39.982452, 27.708218, 46.766636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216026, 28.084463, 46.531811>,  <39.383106, 27.351151, 46.709274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216026, 28.084463, 46.531811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.594082, 27.967005, 46.474556>,  <39.820915, 27.896530, 46.440205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.594082, 27.967005, 46.474556>,  <39.216026, 28.084463, 46.531811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594082, 27.967005, 46.474556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027850, 0.364143, -0.930927,
		0.325484, 0.883840, 0.335987,
		0.945137, -0.293644, -0.143138,
		39.877625, 27.878912, 46.431614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526760, 28.707855, 46.367714>,  <39.216026, 28.084463, 46.531811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526760, 28.707855, 46.367714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.806664, 28.455717, 46.233250>,  <39.974606, 28.304434, 46.152569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.806664, 28.455717, 46.233250>,  <39.526760, 28.707855, 46.367714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806664, 28.455717, 46.233250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071749, 0.406174, -0.910975,
		0.710770, 0.661579, 0.238996,
		0.699756, -0.630346, -0.336164,
		40.016590, 28.266613, 46.132401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994389, 29.084578, 46.064758>,  <39.526760, 28.707855, 46.367714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994389, 29.084578, 46.064758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.026985, 28.723370, 45.896038>,  <40.046543, 28.506645, 45.794807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.026985, 28.723370, 45.896038>,  <39.994389, 29.084578, 46.064758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026985, 28.723370, 45.896038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254455, 0.390330, -0.884814,
		0.963645, 0.179435, -0.197969,
		0.081493, -0.903020, -0.421798,
		40.051434, 28.452463, 45.769497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342716, 29.361954, 45.487076>,  <39.994389, 29.084578, 46.064758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342716, 29.361954, 45.487076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.201202, 28.993076, 45.424606>,  <40.116295, 28.771749, 45.387123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.201202, 28.993076, 45.424606>,  <40.342716, 29.361954, 45.487076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201202, 28.993076, 45.424606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133637, 0.215100, -0.967405,
		0.925730, -0.321385, -0.199339,
		-0.353787, -0.922195, -0.156175,
		40.095066, 28.716417, 45.377754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776173, 29.175076, 44.817444>,  <40.342716, 29.361954, 45.487076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776173, 29.175076, 44.817444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.445251, 28.955875, 44.866867>,  <40.246700, 28.824356, 44.896519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.445251, 28.955875, 44.866867>,  <40.776173, 29.175076, 44.817444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445251, 28.955875, 44.866867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365609, 0.358266, -0.859055,
		0.426499, -0.755871, -0.496748,
		-0.827302, -0.548001, 0.123553,
		40.197060, 28.791475, 44.903934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720181, 28.687757, 44.218731>,  <40.776173, 29.175076, 44.817444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720181, 28.687757, 44.218731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.359631, 28.758734, 44.376740>,  <40.143299, 28.801319, 44.471542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.359631, 28.758734, 44.376740>,  <40.720181, 28.687757, 44.218731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359631, 28.758734, 44.376740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277893, 0.462583, -0.841898,
		-0.332115, -0.868638, -0.367651,
		-0.901374, 0.177440, 0.395019,
		40.089218, 28.811966, 44.495247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266388, 28.489845, 43.683399>,  <40.720181, 28.687757, 44.218731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266388, 28.489845, 43.683399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.072529, 28.751177, 43.916046>,  <39.956215, 28.907976, 44.055634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.072529, 28.751177, 43.916046>,  <40.266388, 28.489845, 43.683399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072529, 28.751177, 43.916046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368358, 0.450648, -0.813160,
		-0.793365, -0.608339, 0.022254,
		-0.484648, 0.653330, 0.581615,
		39.927135, 28.947176, 44.090530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638206, 28.451065, 43.425243>,  <40.266388, 28.489845, 43.683399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638206, 28.451065, 43.425243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.632095, 28.796738, 43.626423>,  <39.628429, 29.004143, 43.747131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.632095, 28.796738, 43.626423>,  <39.638206, 28.451065, 43.425243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632095, 28.796738, 43.626423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453737, 0.442238, -0.773659,
		-0.891005, -0.240024, 0.385356,
		-0.015277, 0.864184, 0.502944,
		39.627514, 29.055992, 43.777306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926807, 28.603247, 43.515137>,  <39.638206, 28.451065, 43.425243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926807, 28.603247, 43.515137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.153114, 28.931791, 43.486103>,  <39.288898, 29.128918, 43.468681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.153114, 28.931791, 43.486103>,  <38.926807, 28.603247, 43.515137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153114, 28.931791, 43.486103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620720, 0.366303, -0.693202,
		-0.542780, 0.437250, 0.717079,
		0.565771, 0.821362, -0.072588,
		39.322845, 29.178200, 43.464325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573952, 28.872475, 42.914768>,  <38.926807, 28.603247, 43.515137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573952, 28.872475, 42.914768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.829063, 29.154753, 43.038204>,  <38.982132, 29.324120, 43.112267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.829063, 29.154753, 43.038204>,  <38.573952, 28.872475, 42.914768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829063, 29.154753, 43.038204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392472, 0.642502, -0.658147,
		-0.662724, 0.298638, 0.686741,
		0.637780, 0.705696, 0.308594,
		39.020397, 29.366461, 43.130783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192635, 28.849371, 43.496632>,  <38.573952, 28.872475, 42.914768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192635, 28.849371, 43.496632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.803535, 28.818060, 43.583931>,  <37.570076, 28.799273, 43.636311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.803535, 28.818060, 43.583931>,  <38.192635, 28.849371, 43.496632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803535, 28.818060, 43.583931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225145, -0.543836, 0.808426,
		0.055410, 0.835532, 0.546640,
		-0.972748, -0.078278, 0.218250,
		37.511711, 28.794577, 43.649406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153824, 29.019079, 44.183296>,  <38.192635, 28.849371, 43.496632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153824, 29.019079, 44.183296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.830845, 28.808273, 44.077255>,  <37.637058, 28.681789, 44.013630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.830845, 28.808273, 44.077255>,  <38.153824, 29.019079, 44.183296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830845, 28.808273, 44.077255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112830, -0.579046, 0.807450,
		-0.579046, 0.622063, 0.527013,
		-0.807450, -0.527013, -0.265107,
		37.588612, 28.650169, 43.997723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761368, 29.056646, 44.699821>,  <38.153824, 29.019079, 44.183296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761368, 29.056646, 44.699821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.587082, 28.739408, 44.529575>,  <37.482510, 28.549065, 44.427425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.587082, 28.739408, 44.529575>,  <37.761368, 29.056646, 44.699821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587082, 28.739408, 44.529575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035658, -0.457283, 0.888606,
		-0.899377, 0.402358, 0.170965,
		-0.435717, -0.793096, -0.425617,
		37.456367, 28.501480, 44.401890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153114, 28.960674, 45.114529>,  <37.761368, 29.056646, 44.699821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153114, 28.960674, 45.114529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270226, 28.620882, 44.938957>,  <37.340492, 28.417006, 44.833614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270226, 28.620882, 44.938957>,  <37.153114, 28.960674, 45.114529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270226, 28.620882, 44.938957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007240, -0.457063, 0.889405,
		-0.956151, -0.263580, -0.127670,
		0.292783, -0.849481, -0.438929,
		37.358059, 28.366037, 44.807278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647827, 28.439674, 45.257412>,  <37.153114, 28.960674, 45.114529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647827, 28.439674, 45.257412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.948353, 28.199493, 45.147884>,  <37.128670, 28.055384, 45.082169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.948353, 28.199493, 45.147884>,  <36.647827, 28.439674, 45.257412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948353, 28.199493, 45.147884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082705, -0.497317, 0.863618,
		-0.654741, -0.626203, -0.423302,
		0.751315, -0.600455, -0.273823,
		37.173748, 28.019358, 45.065739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516296, 27.783197, 45.533802>,  <36.647827, 28.439674, 45.257412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516296, 27.783197, 45.533802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.905598, 27.729849, 45.458973>,  <37.139179, 27.697840, 45.414078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.905598, 27.729849, 45.458973>,  <36.516296, 27.783197, 45.533802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905598, 27.729849, 45.458973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051951, -0.665401, 0.744676,
		-0.223795, -0.734475, -0.640673,
		0.973251, -0.133371, -0.187070,
		37.197575, 27.689838, 45.402851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589058, 27.098333, 45.684582>,  <36.516296, 27.783197, 45.533802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589058, 27.098333, 45.684582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.959381, 27.249477, 45.680717>,  <37.181576, 27.340164, 45.678398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.959381, 27.249477, 45.680717>,  <36.589058, 27.098333, 45.684582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959381, 27.249477, 45.680717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204814, -0.480022, 0.853013,
		0.317683, -0.791708, -0.521801,
		0.925812, 0.377860, -0.009658,
		37.237125, 27.362835, 45.677818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061699, 26.514576, 45.797691>,  <36.589058, 27.098333, 45.684582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061699, 26.514576, 45.797691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.243710, 26.847332, 45.924755>,  <37.352917, 27.046986, 46.000992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.243710, 26.847332, 45.924755>,  <37.061699, 26.514576, 45.797691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243710, 26.847332, 45.924755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399835, -0.509616, 0.761855,
		0.795663, -0.219657, -0.564510,
		0.455030, 0.831891, 0.317656,
		37.380219, 27.096899, 46.020054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752804, 26.309206, 45.903942>,  <37.061699, 26.514576, 45.797691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752804, 26.309206, 45.903942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.682529, 26.635265, 46.124729>,  <37.640366, 26.830900, 46.257202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.682529, 26.635265, 46.124729>,  <37.752804, 26.309206, 45.903942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682529, 26.635265, 46.124729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175707, -0.525718, 0.832314,
		0.968638, 0.243214, -0.050864,
		-0.175690, 0.815148, 0.551965,
		37.629822, 26.879810, 46.290318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144756, 26.284634, 46.543171>,  <37.752804, 26.309206, 45.903942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144756, 26.284634, 46.543171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.890888, 26.576584, 46.644745>,  <37.738567, 26.751753, 46.705688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.890888, 26.576584, 46.644745>,  <38.144756, 26.284634, 46.543171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890888, 26.576584, 46.644745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012014, -0.319242, 0.947597,
		0.772693, 0.604458, 0.193843,
		-0.634666, 0.729873, 0.253938,
		37.700489, 26.795546, 46.720924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352676, 26.461426, 47.195091>,  <38.144756, 26.284634, 46.543171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352676, 26.461426, 47.195091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.968735, 26.566402, 47.155464>,  <37.738369, 26.629389, 47.131687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.968735, 26.566402, 47.155464>,  <38.352676, 26.461426, 47.195091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968735, 26.566402, 47.155464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211288, -0.444093, 0.870712,
		0.184517, 0.856683, 0.481713,
		-0.959849, 0.262441, -0.099064,
		37.680779, 26.645134, 47.125744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225941, 26.804302, 47.874744>,  <38.352676, 26.461426, 47.195091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225941, 26.804302, 47.874744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.904255, 26.648832, 47.694893>,  <37.711243, 26.555550, 47.586983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.904255, 26.648832, 47.694893>,  <38.225941, 26.804302, 47.874744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904255, 26.648832, 47.694893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230517, -0.493312, 0.838752,
		-0.547809, 0.778186, 0.307135,
		-0.804219, -0.388676, -0.449626,
		37.662991, 26.532230, 47.560005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723740, 26.800482, 48.411423>,  <38.225941, 26.804302, 47.874744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723740, 26.800482, 48.411423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.598660, 26.513371, 48.162582>,  <37.523609, 26.341103, 48.013279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.598660, 26.513371, 48.162582>,  <37.723740, 26.800482, 48.411423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598660, 26.513371, 48.162582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282969, -0.554810, 0.782378,
		-0.906722, 0.420688, -0.029619,
		-0.312704, -0.717780, -0.622100,
		37.504848, 26.298037, 47.975952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210587, 26.577696, 48.780048>,  <37.723740, 26.800482, 48.411423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210587, 26.577696, 48.780048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.279510, 26.291746, 48.508972>,  <37.320866, 26.120176, 48.346325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.279510, 26.291746, 48.508972>,  <37.210587, 26.577696, 48.780048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279510, 26.291746, 48.508972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145729, -0.698910, 0.700206,
		-0.974204, -0.021890, -0.224604,
		0.172305, -0.714874, -0.677691,
		37.331203, 26.077284, 48.305664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729927, 26.975555, 49.227528>,  <37.210587, 26.577696, 48.780048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729927, 26.975555, 49.227528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590622, 27.256641, 49.475689>,  <36.507038, 27.425293, 49.624588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590622, 27.256641, 49.475689>,  <36.729927, 26.975555, 49.227528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590622, 27.256641, 49.475689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256580, 0.708027, -0.657925,
		-0.901598, -0.069948, -0.426883,
		-0.348265, 0.702713, 0.620408,
		36.486141, 27.467455, 49.661812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247368, 27.505239, 48.873558>,  <36.729927, 26.975555, 49.227528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247368, 27.505239, 48.873558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.380188, 27.705074, 49.193600>,  <36.459881, 27.824974, 49.385624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.380188, 27.705074, 49.193600>,  <36.247368, 27.505239, 48.873558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380188, 27.705074, 49.193600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076765, 0.831100, -0.550799,
		-0.940134, 0.244311, 0.237614,
		0.332047, 0.499585, 0.800100,
		36.479801, 27.854950, 49.433628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828312, 28.081863, 48.864437>,  <36.247368, 27.505239, 48.873558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828312, 28.081863, 48.864437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.147182, 28.167603, 49.090202>,  <36.338505, 28.219046, 49.225662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.147182, 28.167603, 49.090202>,  <35.828312, 28.081863, 48.864437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147182, 28.167603, 49.090202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008174, 0.930937, -0.365088,
		-0.603691, 0.295653, 0.740370,
		0.797177, 0.214348, 0.564415,
		36.386337, 28.231907, 49.259525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761997, 28.823151, 49.240860>,  <35.828312, 28.081863, 48.864437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761997, 28.823151, 49.240860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.146568, 28.717299, 49.210865>,  <36.377312, 28.653788, 49.192867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.146568, 28.717299, 49.210865>,  <35.761997, 28.823151, 49.240860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146568, 28.717299, 49.210865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198084, 0.855316, -0.478745,
		0.190831, 0.445426, 0.874745,
		0.961429, -0.264632, -0.074989,
		36.434998, 28.637909, 49.188370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130299, 29.369429, 49.300358>,  <35.761997, 28.823151, 49.240860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130299, 29.369429, 49.300358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441200, 29.182869, 49.131435>,  <36.627743, 29.070934, 49.030083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441200, 29.182869, 49.131435>,  <36.130299, 29.369429, 49.300358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441200, 29.182869, 49.131435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346484, 0.877545, -0.331458,
		0.525184, 0.111306, 0.843678,
		0.777258, -0.466397, -0.422307,
		36.674377, 29.042950, 49.004742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796490, 29.673332, 49.447140>,  <36.130299, 29.369429, 49.300358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796490, 29.673332, 49.447140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.867283, 29.490330, 49.098576>,  <36.909760, 29.380527, 48.889435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.867283, 29.490330, 49.098576>,  <36.796490, 29.673332, 49.447140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867283, 29.490330, 49.098576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273661, 0.873353, -0.402944,
		0.945402, -0.167157, 0.279773,
		0.176986, -0.457507, -0.871415,
		36.920380, 29.353077, 48.837151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237579, 30.148151, 49.013840>,  <36.796490, 29.673332, 49.447140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237579, 30.148151, 49.013840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088116, 29.890390, 48.746971>,  <36.998440, 29.735733, 48.586849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088116, 29.890390, 48.746971>,  <37.237579, 30.148151, 49.013840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088116, 29.890390, 48.746971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220239, 0.637069, -0.738673,
		0.901041, -0.422948, -0.096122,
		-0.373657, -0.644405, -0.667175,
		36.976017, 29.697069, 48.546818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900002, 30.407919, 48.967026>,  <37.237579, 30.148151, 49.013840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900002, 30.407919, 48.967026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003532, 30.600218, 49.302139>,  <38.065651, 30.715597, 49.503208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003532, 30.600218, 49.302139>,  <37.900002, 30.407919, 48.967026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003532, 30.600218, 49.302139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201592, -0.875130, 0.439897,
		0.944653, 0.055034, -0.323423,
		0.258828, 0.480749, 0.837788,
		38.081181, 30.744442, 49.553474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410191, 30.070641, 49.166462>,  <37.900002, 30.407919, 48.967026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410191, 30.070641, 49.166462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.328133, 30.259735, 49.509258>,  <38.278896, 30.373192, 49.714935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.328133, 30.259735, 49.509258>,  <38.410191, 30.070641, 49.166462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328133, 30.259735, 49.509258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175098, -0.843762, 0.507353,
		0.962941, 0.254139, 0.090319,
		-0.205146, 0.472736, 0.856992,
		38.266590, 30.401556, 49.766357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745842, 29.783115, 49.699696>,  <38.410191, 30.070641, 49.166462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745842, 29.783115, 49.699696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.494663, 29.977869, 49.942554>,  <38.343956, 30.094721, 50.088268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.494663, 29.977869, 49.942554>,  <38.745842, 29.783115, 49.699696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494663, 29.977869, 49.942554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080948, -0.735044, 0.673169,
		0.774033, 0.471863, 0.422158,
		-0.627949, 0.486883, 0.607145,
		38.306278, 30.123934, 50.124699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058472, 29.959740, 50.396015>,  <38.745842, 29.783115, 49.699696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058472, 29.959740, 50.396015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.662807, 29.962317, 50.454685>,  <38.425407, 29.963861, 50.489887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.662807, 29.962317, 50.454685>,  <39.058472, 29.959740, 50.396015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662807, 29.962317, 50.454685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111727, -0.615087, 0.780503,
		0.095243, 0.788433, 0.607703,
		-0.989164, 0.006440, 0.146672,
		38.366058, 29.964249, 50.498688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973835, 29.948141, 51.103004>,  <39.058472, 29.959740, 50.396015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973835, 29.948141, 51.103004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.600060, 29.861294, 50.990086>,  <38.375793, 29.809185, 50.922337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.600060, 29.861294, 50.990086>,  <38.973835, 29.948141, 51.103004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600060, 29.861294, 50.990086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096820, -0.607932, 0.788064,
		-0.342718, 0.763727, 0.547052,
		-0.934436, -0.217118, -0.282293,
		38.319729, 29.796158, 50.905399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699833, 29.897564, 51.677021>,  <38.973835, 29.948141, 51.103004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699833, 29.897564, 51.677021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424187, 29.714684, 51.452133>,  <38.258801, 29.604956, 51.317200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424187, 29.714684, 51.452133>,  <38.699833, 29.897564, 51.677021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424187, 29.714684, 51.452133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125048, -0.689179, 0.713719,
		-0.713783, 0.562137, 0.417750,
		-0.689113, -0.457202, -0.562219,
		38.217453, 29.577522, 51.283466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164387, 29.757536, 52.134758>,  <38.699833, 29.897564, 51.677021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164387, 29.757536, 52.134758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.143982, 29.498621, 51.830544>,  <38.131741, 29.343271, 51.648014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.143982, 29.498621, 51.830544>,  <38.164387, 29.757536, 52.134758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143982, 29.498621, 51.830544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286923, -0.719924, 0.631970,
		-0.956594, 0.250454, -0.148996,
		-0.051013, -0.647289, -0.760536,
		38.128677, 29.304434, 51.602383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671867, 29.259405, 52.324043>,  <38.164387, 29.757536, 52.134758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671867, 29.259405, 52.324043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.844028, 29.049379, 52.030357>,  <37.947323, 28.923365, 51.854145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.844028, 29.049379, 52.030357>,  <37.671867, 29.259405, 52.324043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844028, 29.049379, 52.030357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035200, -0.822550, 0.567603,
		-0.901953, -0.218451, -0.372505,
		0.430397, -0.525063, -0.734212,
		37.973148, 28.891861, 51.810093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299381, 28.691647, 52.193703>,  <37.671867, 29.259405, 52.324043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299381, 28.691647, 52.193703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.644283, 28.589113, 52.018978>,  <37.851227, 28.527594, 51.914143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.644283, 28.589113, 52.018978>,  <37.299381, 28.691647, 52.193703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644283, 28.589113, 52.018978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003367, -0.859542, 0.511054,
		-0.506455, -0.442132, -0.740285,
		0.862260, -0.256334, -0.436808,
		37.902962, 28.512213, 51.887936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.629951, 39.279392, 40.173164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955086, 39.046394, 40.172909>,  <38.150166, 38.906597, 40.172756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955086, 39.046394, 40.172909>,  <37.629951, 39.279392, 40.173164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955086, 39.046394, 40.172909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255527, -0.357558, 0.898253,
		-0.523457, -0.729967, -0.439478,
		0.812834, -0.582495, -0.000640,
		38.198936, 38.871647, 40.172718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342194, 38.519680, 40.163532>,  <37.629951, 39.279392, 40.173164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342194, 38.519680, 40.163532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684872, 38.630116, 40.337818>,  <37.890480, 38.696377, 40.442390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684872, 38.630116, 40.337818>,  <37.342194, 38.519680, 40.163532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684872, 38.630116, 40.337818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246149, -0.523512, 0.815687,
		0.453306, -0.806046, -0.380530,
		0.856694, 0.276088, 0.435719,
		37.941879, 38.712940, 40.468533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694416, 37.914230, 40.389988>,  <37.342194, 38.519680, 40.163532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694416, 37.914230, 40.389988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832268, 38.219677, 40.608391>,  <37.914978, 38.402943, 40.739433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832268, 38.219677, 40.608391>,  <37.694416, 37.914230, 40.389988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832268, 38.219677, 40.608391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184724, -0.515105, 0.836985,
		0.920386, -0.389307, -0.036460,
		0.344625, 0.763615, 0.546010,
		37.935654, 38.448761, 40.772194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236668, 37.623940, 40.833416>,  <37.694416, 37.914230, 40.389988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236668, 37.623940, 40.833416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086319, 37.947784, 41.013748>,  <37.996109, 38.142090, 41.121948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086319, 37.947784, 41.013748>,  <38.236668, 37.623940, 40.833416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086319, 37.947784, 41.013748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237408, -0.554401, 0.797670,
		0.895744, 0.192792, 0.400592,
		-0.375873, 0.809612, 0.450831,
		37.973557, 38.190666, 41.148998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299168, 37.361805, 41.467190>,  <38.236668, 37.623940, 40.833416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299168, 37.361805, 41.467190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087959, 37.700024, 41.498775>,  <37.961235, 37.902954, 41.517727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087959, 37.700024, 41.498775>,  <38.299168, 37.361805, 41.467190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087959, 37.700024, 41.498775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360142, -0.307162, 0.880880,
		0.769083, 0.436689, 0.466707,
		-0.528025, 0.845550, 0.078963,
		37.929550, 37.953690, 41.522465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422977, 37.514816, 42.124081>,  <38.299168, 37.361805, 41.467190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422977, 37.514816, 42.124081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093594, 37.725388, 42.039436>,  <37.895962, 37.851730, 41.988647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093594, 37.725388, 42.039436>,  <38.422977, 37.514816, 42.124081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093594, 37.725388, 42.039436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315440, -0.114768, 0.941980,
		0.471601, 0.842436, 0.260564,
		-0.823463, 0.526431, -0.211613,
		37.846554, 37.883316, 41.975952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372372, 38.010403, 42.711872>,  <38.422977, 37.514816, 42.124081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372372, 38.010403, 42.711872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008018, 37.974110, 42.550846>,  <37.789406, 37.952332, 42.454231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008018, 37.974110, 42.550846>,  <38.372372, 38.010403, 42.711872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008018, 37.974110, 42.550846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406939, 0.035559, 0.912763,
		-0.068506, 0.995240, -0.069314,
		-0.910883, -0.090736, -0.402566,
		37.734753, 37.946888, 42.430077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010166, 38.431755, 43.044300>,  <38.372372, 38.010403, 42.711872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010166, 38.431755, 43.044300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731583, 38.178917, 42.908413>,  <37.564434, 38.027214, 42.826881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731583, 38.178917, 42.908413>,  <38.010166, 38.431755, 43.044300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731583, 38.178917, 42.908413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333411, -0.134171, 0.933186,
		-0.635439, 0.763190, -0.117302,
		-0.696459, -0.632092, -0.339713,
		37.522644, 37.989288, 42.806499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375065, 38.720871, 43.296238>,  <38.010166, 38.431755, 43.044300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375065, 38.720871, 43.296238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258312, 38.353291, 43.190151>,  <37.188259, 38.132744, 43.126499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258312, 38.353291, 43.190151>,  <37.375065, 38.720871, 43.296238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258312, 38.353291, 43.190151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381058, -0.142605, 0.913487,
		-0.877268, 0.367693, -0.308548,
		-0.291883, -0.918948, -0.265215,
		37.170746, 38.077606, 43.110588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736053, 38.644520, 43.583241>,  <37.375065, 38.720871, 43.296238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736053, 38.644520, 43.583241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853783, 38.267651, 43.519146>,  <36.924419, 38.041527, 43.480690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853783, 38.267651, 43.519146>,  <36.736053, 38.644520, 43.583241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853783, 38.267651, 43.519146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207101, -0.226561, 0.951724,
		-0.932996, -0.246930, -0.261809,
		0.294325, -0.942176, -0.160241,
		36.942081, 37.984997, 43.471073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286396, 38.231430, 44.022312>,  <36.736053, 38.644520, 43.583241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286396, 38.231430, 44.022312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584316, 37.980347, 43.931759>,  <36.763069, 37.829697, 43.877426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584316, 37.980347, 43.931759>,  <36.286396, 38.231430, 44.022312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584316, 37.980347, 43.931759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132555, -0.471684, 0.871747,
		-0.653986, -0.619271, -0.434518,
		0.744803, -0.627708, -0.226387,
		36.807758, 37.792034, 43.863842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136272, 37.530846, 44.169533>,  <36.286396, 38.231430, 44.022312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136272, 37.530846, 44.169533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535690, 37.550304, 44.178917>,  <36.775341, 37.561977, 44.184547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535690, 37.550304, 44.178917>,  <36.136272, 37.530846, 44.169533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535690, 37.550304, 44.178917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004045, -0.365835, 0.930671,
		0.053856, -0.929407, -0.365105,
		0.998541, 0.048645, 0.023462,
		36.835251, 37.564899, 44.185955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015633, 36.989132, 43.710884>,  <36.136272, 37.530846, 44.169533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015633, 36.989132, 43.710884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693844, 36.802807, 43.563457>,  <35.500771, 36.691010, 43.475002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693844, 36.802807, 43.563457>,  <36.015633, 36.989132, 43.710884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693844, 36.802807, 43.563457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208170, 0.802235, -0.559540,
		0.556315, -0.373412, -0.742346,
		-0.804474, -0.465815, -0.368563,
		35.452503, 36.663063, 43.452888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988449, 37.162476, 43.035580>,  <36.015633, 36.989132, 43.710884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988449, 37.162476, 43.035580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617832, 37.030064, 43.107067>,  <35.395462, 36.950619, 43.149960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617832, 37.030064, 43.107067>,  <35.988449, 37.162476, 43.035580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617832, 37.030064, 43.107067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342189, 0.544249, -0.765963,
		0.156286, -0.770853, -0.617544,
		-0.926543, -0.331026, 0.178719,
		35.339870, 36.930756, 43.160683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677551, 37.032059, 42.463131>,  <35.988449, 37.162476, 43.035580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677551, 37.032059, 42.463131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332020, 37.066204, 42.661728>,  <35.124699, 37.086689, 42.780888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332020, 37.066204, 42.661728>,  <35.677551, 37.032059, 42.463131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332020, 37.066204, 42.661728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428887, 0.392418, -0.813673,
		-0.264290, -0.915818, -0.302373,
		-0.863832, 0.085361, 0.496494,
		35.072868, 37.091812, 42.810677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160065, 36.674934, 42.111591>,  <35.677551, 37.032059, 42.463131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160065, 36.674934, 42.111591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984745, 36.951618, 42.341175>,  <34.879555, 37.117626, 42.478928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984745, 36.951618, 42.341175>,  <35.160065, 36.674934, 42.111591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984745, 36.951618, 42.341175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443457, 0.389024, -0.807469,
		-0.781818, -0.608442, 0.136233,
		-0.438300, 0.691707, 0.573964,
		34.853256, 37.159130, 42.513363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494629, 36.617008, 41.989235>,  <35.160065, 36.674934, 42.111591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494629, 36.617008, 41.989235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514133, 36.973011, 42.170567>,  <34.525837, 37.186611, 42.279366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514133, 36.973011, 42.170567>,  <34.494629, 36.617008, 41.989235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514133, 36.973011, 42.170567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643732, 0.375036, -0.667050,
		-0.763695, -0.259296, 0.591215,
		0.048764, 0.890008, 0.453331,
		34.528763, 37.240013, 42.306564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832760, 36.709976, 42.182251>,  <34.494629, 36.617008, 41.989235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832760, 36.709976, 42.182251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035458, 37.051426, 42.134033>,  <34.157078, 37.256298, 42.105103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035458, 37.051426, 42.134033>,  <33.832760, 36.709976, 42.182251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035458, 37.051426, 42.134033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700411, 0.326140, -0.634868,
		-0.502626, 0.406146, 0.763159,
		0.506746, 0.853626, -0.120542,
		34.187481, 37.307514, 42.097870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328918, 37.147442, 42.111389>,  <33.832760, 36.709976, 42.182251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328918, 37.147442, 42.111389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647579, 37.344627, 41.971489>,  <33.838776, 37.462940, 41.887547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647579, 37.344627, 41.971489>,  <33.328918, 37.147442, 42.111389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647579, 37.344627, 41.971489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600623, 0.580738, -0.549541,
		-0.067790, 0.647864, 0.758734,
		0.796653, 0.492966, -0.349754,
		33.886574, 37.492516, 41.866562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067101, 37.820454, 41.917427>,  <33.328918, 37.147442, 42.111389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067101, 37.820454, 41.917427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416351, 37.811077, 41.722656>,  <33.625900, 37.805450, 41.605793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416351, 37.811077, 41.722656>,  <33.067101, 37.820454, 41.917427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416351, 37.811077, 41.722656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351523, 0.661771, -0.662186,
		0.337757, 0.749339, 0.569571,
		0.873127, -0.023441, -0.486928,
		33.678291, 37.804047, 41.576576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122601, 38.452927, 41.637650>,  <33.067101, 37.820454, 41.917427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122601, 38.452927, 41.637650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350624, 38.203629, 41.423512>,  <33.487438, 38.054050, 41.295029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350624, 38.203629, 41.423512>,  <33.122601, 38.452927, 41.637650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350624, 38.203629, 41.423512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459541, 0.298265, -0.836577,
		0.681069, 0.722912, -0.116379,
		0.570059, -0.623247, -0.535346,
		33.521641, 38.016655, 41.262909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506496, 38.844307, 41.256702>,  <33.122601, 38.452927, 41.637650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506496, 38.844307, 41.256702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486271, 38.496674, 41.059868>,  <33.474136, 38.288094, 40.941769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486271, 38.496674, 41.059868>,  <33.506496, 38.844307, 41.256702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486271, 38.496674, 41.059868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388272, 0.471059, -0.792053,
		0.920157, 0.151015, -0.361256,
		-0.050561, -0.869079, -0.492083,
		33.471104, 38.235950, 40.912243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462025, 38.921307, 40.532074>,  <33.506496, 38.844307, 41.256702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462025, 38.921307, 40.532074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351761, 38.536804, 40.533154>,  <33.285603, 38.306103, 40.533802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351761, 38.536804, 40.533154>,  <33.462025, 38.921307, 40.532074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351761, 38.536804, 40.533154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402031, 0.112740, -0.908659,
		0.873145, -0.251566, -0.417531,
		-0.275660, -0.961252, 0.002699,
		33.269062, 38.248428, 40.533962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189022, 38.884857, 39.878109>,  <33.462025, 38.921307, 40.532074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189022, 38.884857, 39.878109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076420, 38.546082, 40.058533>,  <33.008858, 38.342815, 40.166786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076420, 38.546082, 40.058533>,  <33.189022, 38.884857, 39.878109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076420, 38.546082, 40.058533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452084, -0.297565, -0.840878,
		0.846389, -0.440628, -0.299121,
		-0.281506, -0.846937, 0.451056,
		32.991966, 38.292000, 40.193851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308170, 38.335548, 39.400379>,  <33.189022, 38.884857, 39.878109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308170, 38.335548, 39.400379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037289, 38.179482, 39.649914>,  <32.874760, 38.085842, 39.799633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037289, 38.179482, 39.649914>,  <33.308170, 38.335548, 39.400379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037289, 38.179482, 39.649914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499846, -0.378230, -0.779163,
		0.539954, -0.839472, 0.061116,
		-0.677202, -0.390164, 0.623834,
		32.834129, 38.062431, 39.837063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166977, 37.642914, 39.141758>,  <33.308170, 38.335548, 39.400379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166977, 37.642914, 39.141758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853287, 37.777515, 39.350281>,  <32.665073, 37.858276, 39.475395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853287, 37.777515, 39.350281>,  <33.166977, 37.642914, 39.141758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853287, 37.777515, 39.350281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615378, -0.529336, -0.584049,
		0.079415, -0.778826, 0.622192,
		-0.784222, 0.336501, 0.521310,
		32.618019, 37.878468, 39.506672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652222, 37.071457, 39.257381>,  <33.166977, 37.642914, 39.141758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652222, 37.071457, 39.257381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469604, 37.426861, 39.238934>,  <32.360035, 37.640102, 39.227863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469604, 37.426861, 39.238934>,  <32.652222, 37.071457, 39.257381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469604, 37.426861, 39.238934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647738, -0.367467, -0.667385,
		-0.609924, -0.274815, 0.743283,
		-0.456539, 0.888507, -0.046119,
		32.332642, 37.693413, 39.225098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644886, 37.145870, 38.525047>,  <32.652222, 37.071457, 39.257381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644886, 37.145870, 38.525047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668892, 36.881008, 38.226265>,  <32.683296, 36.722092, 38.046993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668892, 36.881008, 38.226265>,  <32.644886, 37.145870, 38.525047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668892, 36.881008, 38.226265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611297, -0.567193, 0.551913,
		-0.789123, -0.489734, 0.370737,
		0.060011, -0.662158, -0.746958,
		32.686893, 36.682362, 38.002178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605072, 36.471901, 38.703144>,  <32.644886, 37.145870, 38.525047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605072, 36.471901, 38.703144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853653, 36.491947, 38.390404>,  <33.002800, 36.503975, 38.202759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853653, 36.491947, 38.390404>,  <32.605072, 36.471901, 38.703144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853653, 36.491947, 38.390404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700232, -0.483121, 0.525613,
		-0.351385, -0.874118, -0.335329,
		0.621453, 0.050115, -0.781847,
		33.040089, 36.506981, 38.155849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738655, 35.946110, 38.248833>,  <32.605072, 36.471901, 38.703144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738655, 35.946110, 38.248833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073242, 36.160820, 38.293015>,  <33.273994, 36.289646, 38.319523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073242, 36.160820, 38.293015>,  <32.738655, 35.946110, 38.248833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073242, 36.160820, 38.293015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399809, -0.735574, 0.546886,
		0.374804, -0.413289, -0.829888,
		0.836466, 0.536772, 0.110459,
		33.324181, 36.321850, 38.326153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280190, 35.462112, 38.128845>,  <32.738655, 35.946110, 38.248833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280190, 35.462112, 38.128845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440517, 35.738773, 38.369164>,  <33.536713, 35.904770, 38.513355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440517, 35.738773, 38.369164>,  <33.280190, 35.462112, 38.128845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440517, 35.738773, 38.369164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411282, -0.721830, 0.556605,
		0.818653, 0.024001, -0.573787,
		0.400817, 0.691654, 0.600800,
		33.560764, 35.946270, 38.549404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929565, 35.293770, 38.175652>,  <33.280190, 35.462112, 38.128845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929565, 35.293770, 38.175652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834591, 35.494946, 38.508080>,  <33.777607, 35.615650, 38.707539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834591, 35.494946, 38.508080>,  <33.929565, 35.293770, 38.175652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834591, 35.494946, 38.508080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399791, -0.729129, 0.555462,
		0.885321, 0.464140, -0.027949,
		-0.237433, 0.502935, 0.831073,
		33.763359, 35.645824, 38.757401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542629, 35.144062, 38.513294>,  <33.929565, 35.293770, 38.175652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542629, 35.144062, 38.513294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322323, 35.291328, 38.812923>,  <34.190140, 35.379688, 38.992702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322323, 35.291328, 38.812923>,  <34.542629, 35.144062, 38.513294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322323, 35.291328, 38.812923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348678, -0.713912, 0.607251,
		0.758339, 0.595640, 0.264830,
		-0.550768, 0.368161, 0.749074,
		34.157093, 35.401775, 39.037647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006733, 35.242252, 39.081181>,  <34.542629, 35.144062, 38.513294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006733, 35.242252, 39.081181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655136, 35.271717, 39.269623>,  <34.444176, 35.289398, 39.382690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655136, 35.271717, 39.269623>,  <35.006733, 35.242252, 39.081181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655136, 35.271717, 39.269623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337371, -0.602126, 0.723620,
		0.336971, 0.794996, 0.504413,
		-0.878995, 0.073664, 0.471107,
		34.391438, 35.293816, 39.410954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195110, 35.385521, 39.771008>,  <35.006733, 35.242252, 39.081181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195110, 35.385521, 39.771008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821411, 35.243282, 39.760239>,  <34.597191, 35.157940, 39.753777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821411, 35.243282, 39.760239>,  <35.195110, 35.385521, 39.771008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821411, 35.243282, 39.760239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190645, -0.561834, 0.804983,
		-0.301377, 0.746924, 0.592687,
		-0.934252, -0.355596, -0.026926,
		34.541134, 35.136604, 39.752159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102947, 35.341328, 40.507843>,  <35.195110, 35.385521, 39.771008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102947, 35.341328, 40.507843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825344, 35.113106, 40.332199>,  <34.658783, 34.976173, 40.226814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825344, 35.113106, 40.332199>,  <35.102947, 35.341328, 40.507843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825344, 35.113106, 40.332199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191052, -0.733984, 0.651741,
		-0.694152, 0.368423, 0.618399,
		-0.694012, -0.570553, -0.439109,
		34.617142, 34.941940, 40.200466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892487, 35.093658, 41.074680>,  <35.102947, 35.341328, 40.507843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892487, 35.093658, 41.074680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774788, 34.844688, 40.784576>,  <34.704170, 34.695305, 40.610512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774788, 34.844688, 40.784576>,  <34.892487, 35.093658, 41.074680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774788, 34.844688, 40.784576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099599, -0.774697, 0.624439,
		-0.950526, 0.111502, 0.289943,
		-0.294244, -0.622424, -0.725264,
		34.686516, 34.657963, 40.566998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354836, 34.694851, 41.281734>,  <34.892487, 35.093658, 41.074680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354836, 34.694851, 41.281734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552799, 34.477863, 41.010208>,  <34.671577, 34.347672, 40.847290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552799, 34.477863, 41.010208>,  <34.354836, 34.694851, 41.281734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552799, 34.477863, 41.010208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073975, -0.752060, 0.654930,
		-0.865793, -0.374344, -0.332069,
		0.494904, -0.542469, -0.678820,
		34.701271, 34.315125, 40.806561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949924, 33.987617, 41.129333>,  <34.354836, 34.694851, 41.281734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949924, 33.987617, 41.129333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330940, 33.939617, 41.017422>,  <34.559547, 33.910816, 40.950275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330940, 33.939617, 41.017422>,  <33.949924, 33.987617, 41.129333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330940, 33.939617, 41.017422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087936, -0.771399, 0.630246,
		-0.291449, -0.624935, -0.724234,
		0.952536, -0.119998, -0.279778,
		34.616699, 33.903618, 40.933487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105839, 33.346775, 41.396667>,  <33.949924, 33.987617, 41.129333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105839, 33.346775, 41.396667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475224, 33.481503, 41.323162>,  <34.696854, 33.562340, 41.279060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475224, 33.481503, 41.323162>,  <34.105839, 33.346775, 41.396667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475224, 33.481503, 41.323162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383687, -0.811007, 0.441647,
		-0.000276, -0.478352, -0.878168,
		0.923463, 0.336819, -0.183761,
		34.752262, 33.582550, 41.268032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340599, 32.680885, 41.337223>,  <34.105839, 33.346775, 41.396667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340599, 32.680885, 41.337223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675751, 32.899162, 41.332035>,  <34.876842, 33.030128, 41.328922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675751, 32.899162, 41.332035>,  <34.340599, 32.680885, 41.337223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675751, 32.899162, 41.332035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515584, -0.783403, 0.347062,
		0.179233, -0.297482, -0.937753,
		0.837883, 0.545695, -0.012965,
		34.927116, 33.062870, 41.328144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783997, 32.411137, 40.889656>,  <34.340599, 32.680885, 41.337223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783997, 32.411137, 40.889656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024639, 32.631550, 41.120975>,  <35.169025, 32.763798, 41.259769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024639, 32.631550, 41.120975>,  <34.783997, 32.411137, 40.889656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024639, 32.631550, 41.120975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498170, -0.824746, 0.267619,
		0.624419, 0.127091, -0.770681,
		0.601604, 0.551036, 0.578300,
		35.205120, 32.796860, 41.294464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479580, 32.109295, 40.831318>,  <34.783997, 32.411137, 40.889656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479580, 32.109295, 40.831318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466019, 32.304134, 41.180393>,  <35.457882, 32.421040, 41.389839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466019, 32.304134, 41.180393>,  <35.479580, 32.109295, 40.831318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466019, 32.304134, 41.180393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462786, -0.766284, 0.445688,
		0.885822, 0.418976, -0.199447,
		-0.033899, 0.487102, 0.872687,
		35.455849, 32.450264, 41.442200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118523, 32.066540, 41.010288>,  <35.479580, 32.109295, 40.831318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118523, 32.066540, 41.010288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897697, 32.120296, 41.339447>,  <35.765202, 32.152550, 41.536942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897697, 32.120296, 41.339447>,  <36.118523, 32.066540, 41.010288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897697, 32.120296, 41.339447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605922, -0.613313, 0.506661,
		0.572786, 0.778323, 0.257159,
		-0.552064, 0.134390, 0.822900,
		35.732079, 32.160614, 41.586315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671711, 32.092808, 41.609364>,  <36.118523, 32.066540, 41.010288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671711, 32.092808, 41.609364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305153, 32.015289, 41.749458>,  <36.085220, 31.968779, 41.833515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305153, 32.015289, 41.749458>,  <36.671711, 32.092808, 41.609364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305153, 32.015289, 41.749458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386253, -0.657729, 0.646685,
		0.105035, 0.727898, 0.677593,
		-0.916393, -0.193798, 0.350237,
		36.030235, 31.957150, 41.854530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767365, 32.033100, 42.347355>,  <36.671711, 32.092808, 41.609364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767365, 32.033100, 42.347355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412048, 31.863100, 42.277702>,  <36.198860, 31.761101, 42.235912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412048, 31.863100, 42.277702>,  <36.767365, 32.033100, 42.347355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412048, 31.863100, 42.277702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334222, -0.858191, 0.389619,
		-0.315026, 0.287894, 0.904364,
		-0.888287, -0.424999, -0.174132,
		36.145561, 31.735600, 42.225464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439507, 31.770119, 43.060783>,  <36.767365, 32.033100, 42.347355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439507, 31.770119, 43.060783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277660, 31.576635, 42.750347>,  <36.180553, 31.460545, 42.564087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277660, 31.576635, 42.750347>,  <36.439507, 31.770119, 43.060783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277660, 31.576635, 42.750347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233583, -0.875173, 0.423688,
		-0.884154, -0.009852, 0.467092,
		-0.404612, -0.483710, -0.776089,
		36.156277, 31.431522, 42.517521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146553, 31.313208, 43.479523>,  <36.439507, 31.770119, 43.060783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146553, 31.313208, 43.479523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155262, 31.187996, 43.099724>,  <36.160488, 31.112869, 42.871845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155262, 31.187996, 43.099724>,  <36.146553, 31.313208, 43.479523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155262, 31.187996, 43.099724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229326, -0.922833, 0.309496,
		-0.973106, -0.224481, 0.051697,
		0.021768, -0.313028, -0.949494,
		36.161793, 31.094088, 42.814877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698856, 30.660608, 43.443684>,  <36.146553, 31.313208, 43.479523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698856, 30.660608, 43.443684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955490, 30.657629, 43.136879>,  <36.109470, 30.655842, 42.952797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955490, 30.657629, 43.136879>,  <35.698856, 30.660608, 43.443684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955490, 30.657629, 43.136879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349976, -0.886962, 0.301357,
		-0.682555, -0.461783, -0.566459,
		0.641589, -0.007446, -0.767013,
		36.147968, 30.655396, 42.906776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714451, 30.051031, 43.309929>,  <35.698856, 30.660608, 43.443684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714451, 30.051031, 43.309929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042667, 30.168776, 43.113941>,  <36.239597, 30.239422, 42.996349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042667, 30.168776, 43.113941>,  <35.714451, 30.051031, 43.309929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042667, 30.168776, 43.113941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520154, -0.739919, 0.426567,
		-0.236973, -0.604873, -0.760245,
		0.820539, 0.294360, -0.489969,
		36.288830, 30.257084, 42.966949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949268, 29.420151, 42.946621>,  <35.714451, 30.051031, 43.309929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949268, 29.420151, 42.946621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243690, 29.685780, 42.999123>,  <36.420345, 29.845158, 43.030624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243690, 29.685780, 42.999123>,  <35.949268, 29.420151, 42.946621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243690, 29.685780, 42.999123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618739, -0.738672, 0.267443,
		0.274558, -0.115638, -0.954592,
		0.736056, 0.664072, 0.131259,
		36.464508, 29.885002, 43.038502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375660, 29.156538, 42.482582>,  <35.949268, 29.420151, 42.946621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375660, 29.156538, 42.482582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582680, 29.393270, 42.729767>,  <36.706894, 29.535311, 42.878078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582680, 29.393270, 42.729767>,  <36.375660, 29.156538, 42.482582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582680, 29.393270, 42.729767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589806, -0.769976, 0.243445,
		0.619893, 0.238480, -0.747570,
		0.517554, 0.591831, 0.617960,
		36.737946, 29.570820, 42.915154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033218, 29.086044, 42.416973>,  <36.375660, 29.156538, 42.482582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033218, 29.086044, 42.416973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023361, 29.246714, 42.783154>,  <37.017448, 29.343115, 43.002861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023361, 29.246714, 42.783154>,  <37.033218, 29.086044, 42.416973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023361, 29.246714, 42.783154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492494, -0.792019, 0.360770,
		0.869967, 0.459745, -0.178302,
		-0.024644, 0.401671, 0.915452,
		37.015968, 29.367214, 43.057789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801594, 29.017752, 42.724331>,  <37.033218, 29.086044, 42.416973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801594, 29.017752, 42.724331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550728, 29.070198, 43.031437>,  <37.400208, 29.101665, 43.215702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550728, 29.070198, 43.031437>,  <37.801594, 29.017752, 42.724331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550728, 29.070198, 43.031437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456314, -0.736997, 0.498612,
		0.631218, 0.663057, 0.402391,
		-0.627169, 0.131116, 0.767768,
		37.362576, 29.109533, 43.261768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229095, 29.580740, 42.867115>,  <37.801594, 29.017752, 42.724331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229095, 29.580740, 42.867115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615425, 29.677629, 42.904037>,  <38.847221, 29.735764, 42.926189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615425, 29.677629, 42.904037>,  <38.229095, 29.580740, 42.867115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615425, 29.677629, 42.904037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123690, 0.743595, -0.657090,
		-0.227799, 0.623214, 0.748139,
		0.965820, 0.242222, 0.092305,
		38.905170, 29.750296, 42.931728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252300, 30.335962, 43.069435>,  <38.229095, 29.580740, 42.867115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252300, 30.335962, 43.069435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609486, 30.217991, 42.933414>,  <38.823795, 30.147207, 42.851803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609486, 30.217991, 42.933414>,  <38.252300, 30.335962, 43.069435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609486, 30.217991, 42.933414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065806, 0.832865, -0.549550,
		0.445293, 0.468351, 0.763126,
		0.892964, -0.294929, -0.340049,
		38.877377, 30.129513, 42.831398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748516, 30.852314, 43.230217>,  <38.252300, 30.335962, 43.069435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748516, 30.852314, 43.230217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910236, 30.665581, 42.915611>,  <39.007267, 30.553541, 42.726849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910236, 30.665581, 42.915611>,  <38.748516, 30.852314, 43.230217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910236, 30.665581, 42.915611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091346, 0.835024, -0.542578,
		0.910053, 0.291210, 0.294958,
		0.404301, -0.466832, -0.786517,
		39.031528, 30.525532, 42.679657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252861, 31.265959, 42.939640>,  <38.748516, 30.852314, 43.230217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252861, 31.265959, 42.939640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166180, 31.008924, 42.645668>,  <39.114170, 30.854704, 42.469284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166180, 31.008924, 42.645668>,  <39.252861, 31.265959, 42.939640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166180, 31.008924, 42.645668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045358, 0.745378, -0.665097,
		0.975184, -0.177461, -0.132376,
		-0.216699, -0.642588, -0.734930,
		39.101170, 30.816149, 42.425190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731304, 31.412130, 42.499485>,  <39.252861, 31.265959, 42.939640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731304, 31.412130, 42.499485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423729, 31.257122, 42.296085>,  <39.239185, 31.164116, 42.174046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423729, 31.257122, 42.296085>,  <39.731304, 31.412130, 42.499485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423729, 31.257122, 42.296085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012679, 0.804446, -0.593891,
		0.639202, -0.450216, -0.623479,
		-0.768934, -0.387521, -0.508495,
		39.193050, 31.140865, 42.143536>
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
