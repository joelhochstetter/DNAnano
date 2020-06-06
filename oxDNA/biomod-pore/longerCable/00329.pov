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
	<24.022520, 35.261406, 34.776943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337542, 35.234070, 35.021923>,  <24.526554, 35.217670, 35.168911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337542, 35.234070, 35.021923>,  <24.022520, 35.261406, 34.776943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337542, 35.234070, 35.021923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570726, 0.455759, -0.683049,
		-0.232451, 0.887476, 0.397935,
		0.787552, -0.068337, 0.612448,
		24.573807, 35.213570, 35.205658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350492, 35.902866, 34.668530>,  <24.022520, 35.261406, 34.776943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350492, 35.902866, 34.668530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679338, 35.696339, 34.764484>,  <24.876646, 35.572422, 34.822060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679338, 35.696339, 34.764484>,  <24.350492, 35.902866, 34.668530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679338, 35.696339, 34.764484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556995, 0.642205, -0.526620,
		0.117843, 0.566560, 0.815551,
		0.822113, -0.516316, 0.239892,
		24.925972, 35.541443, 34.836452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816833, 36.383434, 35.031128>,  <24.350492, 35.902866, 34.668530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816833, 36.383434, 35.031128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006468, 36.091469, 34.834164>,  <25.120249, 35.916290, 34.715984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006468, 36.091469, 34.834164>,  <24.816833, 36.383434, 35.031128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006468, 36.091469, 34.834164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622178, 0.673434, -0.399224,
		0.623005, -0.117099, 0.773403,
		0.474088, -0.729913, -0.492410,
		25.148695, 35.872494, 34.686440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547979, 36.482365, 35.132355>,  <24.816833, 36.383434, 35.031128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547979, 36.482365, 35.132355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561188, 36.269855, 34.793732>,  <25.569113, 36.142349, 34.590557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561188, 36.269855, 34.793732>,  <25.547979, 36.482365, 35.132355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561188, 36.269855, 34.793732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713330, 0.605807, -0.352361,
		0.700050, -0.592239, 0.398977,
		0.033021, -0.531272, -0.846557,
		25.571095, 36.110474, 34.539764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230011, 36.383118, 34.912651>,  <25.547979, 36.482365, 35.132355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230011, 36.383118, 34.912651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058390, 36.338810, 34.554066>,  <25.955418, 36.312225, 34.338913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058390, 36.338810, 34.554066>,  <26.230011, 36.383118, 34.912651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058390, 36.338810, 34.554066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681432, 0.611773, -0.401727,
		0.592929, -0.783240, -0.187003,
		-0.429051, -0.110766, -0.896463,
		25.929674, 36.305580, 34.285126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726122, 36.292355, 34.410000>,  <26.230011, 36.383118, 34.912651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726122, 36.292355, 34.410000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424288, 36.434242, 34.189175>,  <26.243187, 36.519375, 34.056679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424288, 36.434242, 34.189175>,  <26.726122, 36.292355, 34.410000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424288, 36.434242, 34.189175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653023, 0.488648, -0.578605,
		0.064519, -0.797116, -0.600369,
		-0.754585, 0.354724, -0.552062,
		26.197912, 36.540661, 34.023556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931051, 36.250957, 33.703056>,  <26.726122, 36.292355, 34.410000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931051, 36.250957, 33.703056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634314, 36.519184, 33.702961>,  <26.456270, 36.680122, 33.702904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634314, 36.519184, 33.702961>,  <26.931051, 36.250957, 33.703056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634314, 36.519184, 33.702961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540490, 0.597731, -0.592106,
		-0.396907, -0.439379, -0.805861,
		-0.741846, 0.670570, -0.000236,
		26.411760, 36.720356, 33.702888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945700, 36.492630, 33.000584>,  <26.931051, 36.250957, 33.703056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945700, 36.492630, 33.000584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760611, 36.759338, 33.234268>,  <26.649557, 36.919365, 33.374481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760611, 36.759338, 33.234268>,  <26.945700, 36.492630, 33.000584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760611, 36.759338, 33.234268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572306, 0.727961, -0.377543,
		-0.677019, 0.159652, -0.718440,
		-0.462721, 0.666772, 0.584213,
		26.621794, 36.959370, 33.409531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699947, 37.005520, 32.566788>,  <26.945700, 36.492630, 33.000584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699947, 37.005520, 32.566788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769876, 37.141846, 32.936279>,  <26.811834, 37.223640, 33.157974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769876, 37.141846, 32.936279>,  <26.699947, 37.005520, 32.566788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769876, 37.141846, 32.936279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552525, 0.742575, -0.378549,
		-0.814956, 0.576563, -0.058492,
		0.174823, 0.340819, 0.923731,
		26.822323, 37.244091, 33.213398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945349, 37.719902, 32.413807>,  <26.699947, 37.005520, 32.566788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945349, 37.719902, 32.413807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011648, 37.701168, 32.807831>,  <27.051428, 37.689926, 33.044243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011648, 37.701168, 32.807831>,  <26.945349, 37.719902, 32.413807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011648, 37.701168, 32.807831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770768, 0.629256, -0.099772,
		-0.615179, 0.775786, 0.140400,
		0.165749, -0.046839, 0.985055,
		27.061373, 37.687115, 33.103348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162508, 38.423935, 32.556652>,  <26.945349, 37.719902, 32.413807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162508, 38.423935, 32.556652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294779, 38.176655, 32.841885>,  <27.374142, 38.028286, 33.013023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294779, 38.176655, 32.841885>,  <27.162508, 38.423935, 32.556652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294779, 38.176655, 32.841885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833676, 0.545471, 0.086290,
		-0.442308, 0.565941, 0.695755,
		0.330679, -0.618201, 0.713077,
		27.393982, 37.991196, 33.055809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271959, 38.801540, 33.169266>,  <27.162508, 38.423935, 32.556652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271959, 38.801540, 33.169266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506462, 38.477493, 33.170223>,  <27.647163, 38.283066, 33.170795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506462, 38.477493, 33.170223>,  <27.271959, 38.801540, 33.169266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506462, 38.477493, 33.170223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792850, 0.574362, 0.203708,
		-0.166401, -0.117530, 0.979029,
		0.586259, -0.810120, 0.002391,
		27.682341, 38.234459, 33.170940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873936, 39.064640, 33.486778>,  <27.271959, 38.801540, 33.169266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873936, 39.064640, 33.486778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978222, 38.706940, 33.341259>,  <28.040794, 38.492321, 33.253948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978222, 38.706940, 33.341259>,  <27.873936, 39.064640, 33.486778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978222, 38.706940, 33.341259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962463, 0.270208, 0.025558,
		0.075447, -0.356807, 0.931126,
		0.260717, -0.894246, -0.363800,
		28.056437, 38.438667, 33.232121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416935, 38.761971, 32.915989>,  <27.873936, 39.064640, 33.486778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416935, 38.761971, 32.915989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445921, 38.666565, 33.303364>,  <28.463312, 38.609322, 33.535789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445921, 38.666565, 33.303364>,  <28.416935, 38.761971, 32.915989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445921, 38.666565, 33.303364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329121, -0.922314, -0.202526,
		0.941503, -0.304056, -0.145333,
		0.072463, -0.238511, 0.968433,
		28.467661, 38.595013, 33.593895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579889, 37.971725, 32.910854>,  <28.416935, 38.761971, 32.915989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579889, 37.971725, 32.910854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396797, 38.036213, 33.260593>,  <28.286942, 38.074905, 33.470436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396797, 38.036213, 33.260593>,  <28.579889, 37.971725, 32.910854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396797, 38.036213, 33.260593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745764, -0.605043, -0.278854,
		0.484064, -0.779700, 0.397178,
		-0.457732, 0.161218, 0.874352,
		28.259478, 38.084579, 33.522900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338768, 37.320194, 33.300346>,  <28.579889, 37.971725, 32.910854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338768, 37.320194, 33.300346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108236, 37.628036, 33.410294>,  <27.969917, 37.812740, 33.476261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108236, 37.628036, 33.410294>,  <28.338768, 37.320194, 33.300346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108236, 37.628036, 33.410294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815036, -0.565866, -0.124547,
		0.059685, -0.295806, 0.953381,
		-0.576328, 0.769607, 0.274867,
		27.935337, 37.858917, 33.492752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880579, 37.209415, 33.969727>,  <28.338768, 37.320194, 33.300346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880579, 37.209415, 33.969727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722088, 37.467121, 33.708065>,  <27.626993, 37.621746, 33.551067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722088, 37.467121, 33.708065>,  <27.880579, 37.209415, 33.969727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722088, 37.467121, 33.708065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903512, -0.400322, 0.152996,
		-0.163303, 0.651660, 0.740723,
		-0.396229, 0.644268, -0.654157,
		27.603218, 37.660400, 33.511818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467718, 37.476994, 34.363571>,  <27.880579, 37.209415, 33.969727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467718, 37.476994, 34.363571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333004, 37.523087, 33.989769>,  <27.252176, 37.550743, 33.765488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333004, 37.523087, 33.989769>,  <27.467718, 37.476994, 34.363571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333004, 37.523087, 33.989769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863703, -0.433034, 0.257873,
		-0.374957, 0.893982, 0.245363,
		-0.336784, 0.115229, -0.934504,
		27.231968, 37.557655, 33.709419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779638, 37.681541, 34.427559>,  <27.467718, 37.476994, 34.363571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779638, 37.681541, 34.427559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799524, 37.564964, 34.045441>,  <26.811457, 37.495018, 33.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799524, 37.564964, 34.045441>,  <26.779638, 37.681541, 34.427559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799524, 37.564964, 34.045441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915961, -0.394623, 0.072722,
		-0.398176, 0.871399, -0.286564,
		0.049715, -0.291437, -0.955297,
		26.814440, 37.477531, 33.758850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167780, 37.969608, 34.118042>,  <26.779638, 37.681541, 34.427559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167780, 37.969608, 34.118042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298674, 37.642731, 33.928257>,  <26.377209, 37.446606, 33.814384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298674, 37.642731, 33.928257>,  <26.167780, 37.969608, 34.118042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298674, 37.642731, 33.928257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830518, -0.488226, 0.268097,
		-0.450732, 0.306319, -0.838457,
		0.327234, -0.817193, -0.474462,
		26.396843, 37.397572, 33.785919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394930, 38.118675, 34.259899>,  <26.167780, 37.969608, 34.118042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394930, 38.118675, 34.259899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345873, 38.139206, 33.863449>,  <25.316439, 38.151524, 33.625580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345873, 38.139206, 33.863449>,  <25.394930, 38.118675, 34.259899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345873, 38.139206, 33.863449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375851, -0.926679, -0.001482,
		-0.918528, 0.372332, 0.132944,
		-0.122645, 0.051328, -0.991123,
		25.309080, 38.154606, 33.566113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503136, 37.641769, 33.772346>,  <25.394930, 38.118675, 34.259899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503136, 37.641769, 33.772346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777628, 37.352776, 33.738640>,  <25.942324, 37.179379, 33.718414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777628, 37.352776, 33.738640>,  <25.503136, 37.641769, 33.772346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777628, 37.352776, 33.738640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646595, -0.658972, 0.384280,
		-0.333166, -0.209219, -0.919363,
		0.686233, -0.722485, -0.084267,
		25.983498, 37.136032, 33.713360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156000, 37.106697, 33.425632>,  <25.503136, 37.641769, 33.772346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156000, 37.106697, 33.425632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471123, 36.950851, 33.616447>,  <25.660196, 36.857346, 33.730934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471123, 36.950851, 33.616447>,  <25.156000, 37.106697, 33.425632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471123, 36.950851, 33.616447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575024, -0.742776, 0.342974,
		0.220701, -0.544503, -0.809202,
		0.787806, -0.389616, 0.477034,
		25.707464, 36.833965, 33.759556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.004078, 36.464409, 33.461094>,  <25.156000, 37.106697, 33.425632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.004078, 36.464409, 33.461094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279537, 36.497631, 33.749222>,  <25.444813, 36.517563, 33.922100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279537, 36.497631, 33.749222>,  <25.004078, 36.464409, 33.461094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279537, 36.497631, 33.749222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600176, -0.492158, 0.630531,
		0.406880, -0.866535, -0.289078,
		0.688649, 0.083052, 0.720322,
		25.486132, 36.522545, 33.965317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388401, 35.925045, 33.223274>,  <25.004078, 36.464409, 33.461094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388401, 35.925045, 33.223274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580641, 36.025635, 33.559319>,  <25.695984, 36.085987, 33.760944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580641, 36.025635, 33.559319>,  <25.388401, 35.925045, 33.223274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580641, 36.025635, 33.559319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369995, -0.810410, 0.454246,
		0.795066, -0.529146, -0.296437,
		0.480598, 0.251476, 0.840110,
		25.724821, 36.101078, 33.811352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654810, 35.353436, 33.498600>,  <25.388401, 35.925045, 33.223274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654810, 35.353436, 33.498600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642019, 35.580578, 33.827602>,  <25.634344, 35.716862, 34.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642019, 35.580578, 33.827602>,  <25.654810, 35.353436, 33.498600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642019, 35.580578, 33.827602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482800, -0.729328, 0.484752,
		0.875147, -0.381606, 0.297482,
		-0.031977, 0.567853, 0.822509,
		25.632425, 35.750935, 34.074356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761621, 34.905251, 34.031460>,  <25.654810, 35.353436, 33.498600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761621, 34.905251, 34.031460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564943, 35.196156, 34.223015>,  <25.446936, 35.370697, 34.337948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564943, 35.196156, 34.223015>,  <25.761621, 34.905251, 34.031460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564943, 35.196156, 34.223015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560504, -0.685212, 0.465102,
		0.666387, -0.039727, 0.744547,
		-0.491696, 0.727259, 0.478883,
		25.417435, 35.414333, 34.366680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797945, 34.499920, 34.687881>,  <25.761621, 34.905251, 34.031460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797945, 34.499920, 34.687881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487629, 34.735439, 34.778625>,  <25.301439, 34.876751, 34.833073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487629, 34.735439, 34.778625>,  <25.797945, 34.499920, 34.687881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487629, 34.735439, 34.778625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253854, -0.620391, 0.742074,
		0.577674, 0.518104, 0.630762,
		-0.775791, 0.588798, 0.226861,
		25.254892, 34.912079, 34.846684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585762, 34.684895, 34.817619>,  <25.797945, 34.499920, 34.687881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585762, 34.684895, 34.817619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500809, 35.010918, 35.033237>,  <26.449837, 35.206532, 35.162609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500809, 35.010918, 35.033237>,  <26.585762, 34.684895, 34.817619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500809, 35.010918, 35.033237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196277, 0.575974, -0.793555,
		-0.957272, -0.062734, -0.282304,
		-0.212383, 0.815058, 0.539050,
		26.437094, 35.255436, 35.194954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078909, 35.321873, 34.702312>,  <26.585762, 34.684895, 34.817619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078909, 35.321873, 34.702312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440016, 35.186981, 34.595509>,  <27.656679, 35.106049, 34.531425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440016, 35.186981, 34.595509>,  <27.078909, 35.321873, 34.702312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440016, 35.186981, 34.595509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424751, 0.601029, 0.677016,
		-0.067829, -0.724598, 0.685826,
		0.902765, -0.337227, -0.267006,
		27.710846, 35.085812, 34.515408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475559, 35.280659, 35.394501>,  <27.078909, 35.321873, 34.702312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475559, 35.280659, 35.394501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747389, 35.292591, 35.101299>,  <27.910486, 35.299751, 34.925381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747389, 35.292591, 35.101299>,  <27.475559, 35.280659, 35.394501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747389, 35.292591, 35.101299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598479, 0.555311, 0.577454,
		0.424268, -0.831107, 0.359523,
		0.679573, 0.029828, -0.733001,
		27.951262, 35.301540, 34.881397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166533, 35.020523, 35.589199>,  <27.475559, 35.280659, 35.394501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166533, 35.020523, 35.589199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231770, 35.290630, 35.301472>,  <28.270912, 35.452694, 35.128838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231770, 35.290630, 35.301472>,  <28.166533, 35.020523, 35.589199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231770, 35.290630, 35.301472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587492, 0.519259, 0.620663,
		0.792625, -0.523818, -0.312027,
		0.163091, 0.675267, -0.719317,
		28.280697, 35.493210, 35.085678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877806, 35.171886, 35.661110>,  <28.166533, 35.020523, 35.589199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877806, 35.171886, 35.661110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755114, 35.485874, 35.445801>,  <28.681498, 35.674267, 35.316616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755114, 35.485874, 35.445801>,  <28.877806, 35.171886, 35.661110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755114, 35.485874, 35.445801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535270, 0.609894, 0.584393,
		0.787021, -0.108870, -0.607244,
		-0.306731, 0.784969, -0.538275,
		28.663094, 35.721363, 35.284317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438461, 35.596500, 35.459885>,  <28.877806, 35.171886, 35.661110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438461, 35.596500, 35.459885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142191, 35.865112, 35.468319>,  <28.964430, 36.026279, 35.473381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142191, 35.865112, 35.468319>,  <29.438461, 35.596500, 35.459885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142191, 35.865112, 35.468319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567541, 0.608563, 0.554570,
		0.359581, 0.422723, -0.831870,
		-0.740675, 0.671533, 0.021085,
		28.919989, 36.066574, 35.474644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659052, 36.301174, 35.358986>,  <29.438461, 35.596500, 35.459885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659052, 36.301174, 35.358986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301556, 36.461079, 35.277576>,  <29.087059, 36.557022, 35.228729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301556, 36.461079, 35.277576>,  <29.659052, 36.301174, 35.358986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301556, 36.461079, 35.277576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081185, 0.590357, 0.803049,
		0.441181, 0.701192, -0.560080,
		-0.893739, 0.399759, -0.203528,
		29.033434, 36.581005, 35.216518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700909, 36.994881, 35.285473>,  <29.659052, 36.301174, 35.358986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700909, 36.994881, 35.285473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321175, 36.951565, 35.403484>,  <29.093334, 36.925575, 35.474289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321175, 36.951565, 35.403484>,  <29.700909, 36.994881, 35.285473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321175, 36.951565, 35.403484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134232, 0.709093, 0.692221,
		-0.284163, 0.696750, -0.658629,
		-0.949333, -0.108294, 0.295024,
		29.036375, 36.919075, 35.491993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370483, 37.665348, 35.189289>,  <29.700909, 36.994881, 35.285473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370483, 37.665348, 35.189289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174919, 37.449448, 35.463409>,  <29.057581, 37.319908, 35.627880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174919, 37.449448, 35.463409>,  <29.370483, 37.665348, 35.189289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174919, 37.449448, 35.463409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265073, 0.656520, 0.706199,
		-0.831086, 0.526921, -0.177904,
		-0.488909, -0.539755, 0.685297,
		29.028246, 37.287521, 35.668999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816505, 38.093864, 35.518394>,  <29.370483, 37.665348, 35.189289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816505, 38.093864, 35.518394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933174, 37.800785, 35.764347>,  <29.003176, 37.624939, 35.911919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933174, 37.800785, 35.764347>,  <28.816505, 38.093864, 35.518394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933174, 37.800785, 35.764347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149238, 0.669823, 0.727369,
		-0.944804, -0.120390, 0.304715,
		0.291673, -0.732696, 0.614885,
		29.020676, 37.580975, 35.948814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484688, 38.149685, 36.246838>,  <28.816505, 38.093864, 35.518394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484688, 38.149685, 36.246838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841957, 37.970749, 36.228401>,  <29.056318, 37.863388, 36.217339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841957, 37.970749, 36.228401>,  <28.484688, 38.149685, 36.246838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841957, 37.970749, 36.228401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396136, 0.734110, 0.551506,
		-0.212873, -0.510851, 0.832896,
		0.893175, -0.447341, -0.046094,
		29.109909, 37.836548, 36.214573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680223, 38.026592, 36.978432>,  <28.484688, 38.149685, 36.246838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680223, 38.026592, 36.978432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997265, 38.039021, 36.734852>,  <29.187490, 38.046478, 36.588703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997265, 38.039021, 36.734852>,  <28.680223, 38.026592, 36.978432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997265, 38.039021, 36.734852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357452, 0.785412, 0.505328,
		0.493972, -0.618194, 0.611415,
		0.792603, 0.031067, -0.608946,
		29.235046, 38.048340, 36.552170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322882, 38.191429, 37.372787>,  <28.680223, 38.026592, 36.978432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322882, 38.191429, 37.372787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367907, 38.452942, 37.073479>,  <29.394922, 38.609848, 36.893894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367907, 38.452942, 37.073479>,  <29.322882, 38.191429, 37.372787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367907, 38.452942, 37.073479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871745, 0.426370, 0.241390,
		0.476854, 0.625128, 0.617920,
		0.112563, 0.653777, -0.748268,
		29.401676, 38.649075, 36.848999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878691, 37.670273, 37.199657>,  <29.322882, 38.191429, 37.372787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878691, 37.670273, 37.199657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527725, 37.761330, 37.030743>,  <29.317146, 37.815964, 36.929394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527725, 37.761330, 37.030743>,  <29.878691, 37.670273, 37.199657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527725, 37.761330, 37.030743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033312, -0.907032, -0.419742,
		-0.478575, -0.354221, 0.803426,
		-0.877415, 0.227642, -0.422283,
		29.264502, 37.829620, 36.904057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298460, 37.325897, 37.313728>,  <29.878691, 37.670273, 37.199657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298460, 37.325897, 37.313728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225153, 37.462826, 36.945114>,  <29.181170, 37.544983, 36.723946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225153, 37.462826, 36.945114>,  <29.298460, 37.325897, 37.313728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225153, 37.462826, 36.945114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154786, -0.915674, -0.370921,
		-0.970801, -0.210618, 0.114827,
		-0.183266, 0.342317, -0.921538,
		29.170174, 37.565521, 36.668652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057280, 36.719166, 36.919289>,  <29.298460, 37.325897, 37.313728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057280, 36.719166, 36.919289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032681, 36.965206, 36.604870>,  <29.017921, 37.112831, 36.416218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032681, 36.965206, 36.604870>,  <29.057280, 36.719166, 36.919289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032681, 36.965206, 36.604870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275764, -0.767352, -0.578901,
		-0.959256, 0.181162, 0.216813,
		-0.061497, 0.615103, -0.786045,
		29.014231, 37.149738, 36.369057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531454, 36.447922, 36.558395>,  <29.057280, 36.719166, 36.919289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531454, 36.447922, 36.558395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675257, 36.706783, 36.289486>,  <28.761538, 36.862099, 36.128139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675257, 36.706783, 36.289486>,  <28.531454, 36.447922, 36.558395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675257, 36.706783, 36.289486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394075, -0.547749, -0.738022,
		-0.845849, 0.530249, 0.058108,
		0.359507, 0.647154, -0.672270,
		28.783110, 36.900928, 36.087807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002661, 36.706829, 36.089973>,  <28.531454, 36.447922, 36.558395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002661, 36.706829, 36.089973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353733, 36.672863, 35.901306>,  <28.564377, 36.652485, 35.788105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353733, 36.672863, 35.901306>,  <28.002661, 36.706829, 36.089973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353733, 36.672863, 35.901306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408662, -0.646712, -0.644018,
		-0.250346, 0.757993, -0.602306,
		0.877680, -0.084912, -0.471665,
		28.617037, 36.647388, 35.759808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961838, 36.898697, 35.274326>,  <28.002661, 36.706829, 36.089973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961838, 36.898697, 35.274326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272623, 36.656689, 35.343929>,  <28.459095, 36.511486, 35.385693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272623, 36.656689, 35.343929>,  <27.961838, 36.898697, 35.274326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272623, 36.656689, 35.343929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298718, -0.597613, -0.744061,
		0.554160, 0.526129, -0.645054,
		0.776965, -0.605018, 0.174009,
		28.505713, 36.475182, 35.396133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312775, 36.724480, 34.567986>,  <27.961838, 36.898697, 35.274326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312775, 36.724480, 34.567986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405340, 36.411636, 34.799416>,  <28.460880, 36.223930, 34.938274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405340, 36.411636, 34.799416>,  <28.312775, 36.724480, 34.567986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405340, 36.411636, 34.799416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295872, -0.623126, -0.723998,
		0.926773, -0.003641, -0.375605,
		0.231413, -0.782113, 0.578574,
		28.474764, 36.177002, 34.972988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496462, 36.235054, 33.996933>,  <28.312775, 36.724480, 34.567986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496462, 36.235054, 33.996933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423613, 36.029686, 34.332367>,  <28.379904, 35.906464, 34.533627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423613, 36.029686, 34.332367>,  <28.496462, 36.235054, 33.996933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423613, 36.029686, 34.332367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247195, -0.801555, -0.544430,
		0.951697, -0.306447, 0.019065,
		-0.182121, -0.513420, 0.838589,
		28.368977, 35.875660, 34.583942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860601, 35.575794, 33.933041>,  <28.496462, 36.235054, 33.996933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860601, 35.575794, 33.933041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570631, 35.528679, 34.204514>,  <28.396648, 35.500408, 34.367397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570631, 35.528679, 34.204514>,  <28.860601, 35.575794, 33.933041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570631, 35.528679, 34.204514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358197, -0.777118, -0.517477,
		0.588368, -0.618234, 0.521162,
		-0.724926, -0.117788, 0.678681,
		28.353153, 35.493343, 34.408119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973522, 34.963913, 34.224693>,  <28.860601, 35.575794, 33.933041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973522, 34.963913, 34.224693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579159, 35.015026, 34.267887>,  <28.342541, 35.045692, 34.293804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579159, 35.015026, 34.267887>,  <28.973522, 34.963913, 34.224693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579159, 35.015026, 34.267887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166229, -0.821092, -0.546055,
		0.018890, -0.556310, 0.830760,
		-0.985906, 0.127781, 0.107985,
		28.283386, 35.053360, 34.300282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471056, 34.398872, 34.559837>,  <28.973522, 34.963913, 34.224693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471056, 34.398872, 34.559837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254107, 34.601391, 34.291660>,  <28.123936, 34.722904, 34.130753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254107, 34.601391, 34.291660>,  <28.471056, 34.398872, 34.559837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254107, 34.601391, 34.291660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091658, -0.757591, -0.646262,
		-0.835123, -0.411966, 0.364490,
		-0.542373, 0.506300, -0.670442,
		28.091394, 34.753281, 34.090527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740286, 34.196426, 34.209652>,  <28.471056, 34.398872, 34.559837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740286, 34.196426, 34.209652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029020, 34.360050, 33.986359>,  <28.202261, 34.458225, 33.852383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029020, 34.360050, 33.986359>,  <27.740286, 34.196426, 34.209652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029020, 34.360050, 33.986359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108781, -0.863654, -0.492208,
		-0.683462, 0.294568, -0.667915,
		0.721836, 0.409062, -0.558231,
		28.245571, 34.482769, 33.818890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559156, 34.010033, 33.415169>,  <27.740286, 34.196426, 34.209652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559156, 34.010033, 33.415169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930407, 34.091000, 33.540138>,  <28.153156, 34.139580, 33.615120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930407, 34.091000, 33.540138>,  <27.559156, 34.010033, 33.415169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930407, 34.091000, 33.540138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304029, -0.896460, -0.322374,
		0.214824, 0.394191, -0.893568,
		0.928125, 0.202417, 0.312427,
		28.208845, 34.151726, 33.633865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124815, 33.883873, 32.868145>,  <27.559156, 34.010033, 33.415169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124815, 33.883873, 32.868145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297094, 33.865562, 33.228680>,  <28.400461, 33.854576, 33.445000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297094, 33.865562, 33.228680>,  <28.124815, 33.883873, 32.868145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297094, 33.865562, 33.228680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574869, -0.755976, -0.313092,
		0.695719, 0.652997, -0.299283,
		0.430699, -0.045775, 0.901334,
		28.426304, 33.851830, 33.499081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826237, 33.996681, 32.920681>,  <28.124815, 33.883873, 32.868145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826237, 33.996681, 32.920681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853777, 33.801140, 33.268539>,  <28.870302, 33.683815, 33.477253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853777, 33.801140, 33.268539>,  <28.826237, 33.996681, 32.920681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853777, 33.801140, 33.268539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724333, -0.574925, -0.380529,
		0.686003, 0.656114, 0.314507,
		0.068852, -0.488852, 0.869646,
		28.874432, 33.654484, 33.529434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572090, 33.959095, 33.189030>,  <28.826237, 33.996681, 32.920681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572090, 33.959095, 33.189030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326937, 33.663124, 33.299942>,  <29.179844, 33.485542, 33.366489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326937, 33.663124, 33.299942>,  <29.572090, 33.959095, 33.189030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326937, 33.663124, 33.299942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588905, -0.661694, -0.464060,
		0.526844, -0.121123, 0.841287,
		-0.612883, -0.739926, 0.277280,
		29.143072, 33.441147, 33.383125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810089, 33.414993, 33.545013>,  <29.572090, 33.959095, 33.189030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810089, 33.414993, 33.545013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544355, 33.246456, 33.298073>,  <29.384914, 33.145332, 33.149906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544355, 33.246456, 33.298073>,  <29.810089, 33.414993, 33.545013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544355, 33.246456, 33.298073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729312, -0.546205, -0.412025,
		-0.163598, -0.723967, 0.670155,
		-0.664334, -0.421345, -0.617356,
		29.345055, 33.120052, 33.112865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353659, 33.732525, 34.000256>,  <29.810089, 33.414993, 33.545013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353659, 33.732525, 34.000256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486420, 33.976845, 34.287804>,  <30.566076, 34.123436, 34.460331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486420, 33.976845, 34.287804>,  <30.353659, 33.732525, 34.000256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486420, 33.976845, 34.287804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852485, 0.132054, -0.505797,
		-0.403869, 0.780697, -0.476867,
		0.331902, 0.610797, 0.718866,
		30.585991, 34.160084, 34.503464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492310, 34.489819, 33.713009>,  <30.353659, 33.732525, 34.000256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492310, 34.489819, 33.713009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711828, 34.382042, 34.029545>,  <30.843540, 34.317375, 34.219467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711828, 34.382042, 34.029545>,  <30.492310, 34.489819, 33.713009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711828, 34.382042, 34.029545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824161, 0.332846, -0.458228,
		-0.139928, 0.903666, 0.404731,
		0.548798, -0.269444, 0.791341,
		30.876467, 34.301208, 34.266949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904676, 34.944000, 34.013535>,  <30.492310, 34.489819, 33.713009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904676, 34.944000, 34.013535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125990, 34.615017, 34.066353>,  <31.258778, 34.417625, 34.098042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125990, 34.615017, 34.066353>,  <30.904676, 34.944000, 34.013535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125990, 34.615017, 34.066353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597773, 0.281634, -0.750566,
		0.580123, 0.494209, 0.647468,
		0.553285, -0.822460, 0.132043,
		31.291975, 34.368279, 34.105965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719944, 35.028629, 34.214386>,  <30.904676, 34.944000, 34.013535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719944, 35.028629, 34.214386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666550, 34.700771, 33.991547>,  <31.634514, 34.504055, 33.857841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666550, 34.700771, 33.991547>,  <31.719944, 35.028629, 34.214386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666550, 34.700771, 33.991547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532919, 0.414577, -0.737647,
		0.835571, -0.395353, 0.381466,
		-0.133484, -0.819648, -0.557099,
		31.626505, 34.454876, 33.824417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199703, 35.602730, 34.302845>,  <31.719944, 35.028629, 34.214386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199703, 35.602730, 34.302845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088921, 35.649078, 33.921299>,  <32.022449, 35.676888, 33.692371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088921, 35.649078, 33.921299>,  <32.199703, 35.602730, 34.302845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088921, 35.649078, 33.921299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764039, -0.575439, -0.291743,
		-0.582698, -0.809595, 0.070846,
		-0.276961, 0.115869, -0.953869,
		32.005833, 35.683838, 33.635139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380554, 36.311512, 34.178593>,  <32.199703, 35.602730, 34.302845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380554, 36.311512, 34.178593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011921, 36.439095, 34.090099>,  <31.790741, 36.515644, 34.037003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011921, 36.439095, 34.090099>,  <32.380554, 36.311512, 34.178593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011921, 36.439095, 34.090099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029949, 0.626669, 0.778710,
		0.387018, 0.711022, -0.587082,
		-0.921586, 0.318957, -0.221238,
		31.735445, 36.534782, 34.023727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358681, 37.042412, 34.087154>,  <32.380554, 36.311512, 34.178593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358681, 37.042412, 34.087154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994640, 36.922054, 34.201122>,  <31.776217, 36.849838, 34.269505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994640, 36.922054, 34.201122>,  <32.358681, 37.042412, 34.087154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994640, 36.922054, 34.201122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030331, 0.734095, 0.678369,
		-0.413280, 0.608741, -0.677225,
		-0.910099, -0.300897, 0.284923,
		31.721611, 36.831783, 34.286598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975695, 37.708248, 34.074017>,  <32.358681, 37.042412, 34.087154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975695, 37.708248, 34.074017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584093, 37.744106, 34.000782>,  <31.349133, 37.765621, 33.956841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584093, 37.744106, 34.000782>,  <31.975695, 37.708248, 34.074017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584093, 37.744106, 34.000782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168026, -0.153669, -0.973731,
		-0.115424, -0.984047, 0.135380,
		-0.979002, 0.089645, -0.183083,
		31.290392, 37.771000, 33.945858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639231, 37.102005, 33.814167>,  <31.975695, 37.708248, 34.074017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639231, 37.102005, 33.814167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443760, 37.422310, 33.675621>,  <31.326477, 37.614494, 33.592491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443760, 37.422310, 33.675621>,  <31.639231, 37.102005, 33.814167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443760, 37.422310, 33.675621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213209, -0.275355, -0.937401,
		-0.846013, -0.531934, -0.036171,
		-0.488676, 0.800766, -0.346367,
		31.297157, 37.662540, 33.571712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162897, 36.914700, 33.305775>,  <31.639231, 37.102005, 33.814167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162897, 36.914700, 33.305775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278917, 37.286674, 33.215366>,  <31.348530, 37.509861, 33.161121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278917, 37.286674, 33.215366>,  <31.162897, 36.914700, 33.305775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278917, 37.286674, 33.215366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169916, -0.282462, -0.944110,
		-0.941807, 0.235434, -0.239939,
		0.290049, 0.929939, -0.226020,
		31.365932, 37.565655, 33.147560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796246, 37.169209, 32.738716>,  <31.162897, 36.914700, 33.305775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796246, 37.169209, 32.738716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137476, 37.377892, 32.742176>,  <31.342215, 37.503101, 32.744251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137476, 37.377892, 32.742176>,  <30.796246, 37.169209, 32.738716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137476, 37.377892, 32.742176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028904, -0.030688, -0.999111,
		-0.520983, 0.852570, -0.041258,
		0.853078, 0.521712, 0.008655,
		31.393400, 37.534405, 32.744774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805799, 37.711544, 32.170967>,  <30.796246, 37.169209, 32.738716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805799, 37.711544, 32.170967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197899, 37.654484, 32.225765>,  <31.433159, 37.620247, 32.258644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197899, 37.654484, 32.225765>,  <30.805799, 37.711544, 32.170967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197899, 37.654484, 32.225765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152079, 0.100835, -0.983211,
		0.126438, 0.984624, 0.120537,
		0.980248, -0.142646, 0.136992,
		31.491974, 37.611691, 32.266861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129423, 38.301064, 31.729607>,  <30.805799, 37.711544, 32.170967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129423, 38.301064, 31.729607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422525, 38.052399, 31.840319>,  <31.598387, 37.903202, 31.906746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422525, 38.052399, 31.840319>,  <31.129423, 38.301064, 31.729607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422525, 38.052399, 31.840319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421006, 0.094601, -0.902111,
		0.534623, 0.777553, 0.331042,
		0.732757, -0.621660, 0.276779,
		31.642353, 37.865902, 31.923353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796757, 38.575512, 31.357151>,  <31.129423, 38.301064, 31.729607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796757, 38.575512, 31.357151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831535, 38.191818, 31.464708>,  <31.852402, 37.961601, 31.529242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831535, 38.191818, 31.464708>,  <31.796757, 38.575512, 31.357151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831535, 38.191818, 31.464708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484810, -0.195053, -0.852592,
		0.870287, 0.204491, 0.448089,
		0.086946, -0.959238, 0.268892,
		31.857618, 37.904045, 31.545376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509632, 38.385307, 31.370047>,  <31.796757, 38.575512, 31.357151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509632, 38.385307, 31.370047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315903, 38.040539, 31.310026>,  <32.199665, 37.833675, 31.274014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315903, 38.040539, 31.310026>,  <32.509632, 38.385307, 31.370047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315903, 38.040539, 31.310026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541780, -0.160811, -0.824993,
		0.686952, -0.480859, 0.544859,
		-0.484325, -0.861925, -0.150050,
		32.170605, 37.781960, 31.265011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066845, 37.931564, 31.259161>,  <32.509632, 38.385307, 31.370047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066845, 37.931564, 31.259161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721123, 37.787857, 31.118366>,  <32.513687, 37.701633, 31.033890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721123, 37.787857, 31.118366>,  <33.066845, 37.931564, 31.259161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721123, 37.787857, 31.118366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462676, -0.293511, -0.836530,
		0.197229, -0.885876, 0.419910,
		-0.864310, -0.359270, -0.351985,
		32.461830, 37.680077, 31.012772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325954, 37.429646, 30.878246>,  <33.066845, 37.931564, 31.259161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325954, 37.429646, 30.878246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947361, 37.465061, 30.754101>,  <32.720203, 37.486313, 30.679613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947361, 37.465061, 30.754101>,  <33.325954, 37.429646, 30.878246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947361, 37.465061, 30.754101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260221, -0.359504, -0.896126,
		-0.190922, -0.928933, 0.317225,
		-0.946485, 0.088542, -0.310365,
		32.663414, 37.491623, 30.660992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208935, 36.823227, 30.408827>,  <33.325954, 37.429646, 30.878246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208935, 36.823227, 30.408827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941730, 37.109390, 30.326902>,  <32.781406, 37.281090, 30.277748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941730, 37.109390, 30.326902>,  <33.208935, 36.823227, 30.408827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941730, 37.109390, 30.326902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125375, -0.163093, -0.978612,
		-0.733515, -0.679401, 0.019252,
		-0.668010, 0.715413, -0.204811,
		32.741329, 37.324013, 30.265459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995628, 36.455315, 29.896120>,  <33.208935, 36.823227, 30.408827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995628, 36.455315, 29.896120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898930, 36.843109, 29.879807>,  <32.840912, 37.075787, 29.870018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898930, 36.843109, 29.879807>,  <32.995628, 36.455315, 29.896120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898930, 36.843109, 29.879807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242044, 0.019546, -0.970069,
		-0.939667, -0.244382, -0.239382,
		-0.241746, 0.969482, -0.040785,
		32.826405, 37.133953, 29.867571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682899, 36.421272, 29.316233>,  <32.995628, 36.455315, 29.896120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682899, 36.421272, 29.316233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764202, 36.809074, 29.370996>,  <32.812984, 37.041756, 29.403854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764202, 36.809074, 29.370996>,  <32.682899, 36.421272, 29.316233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764202, 36.809074, 29.370996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282252, 0.075876, -0.956335,
		-0.937560, 0.233028, -0.258222,
		0.203260, 0.969505, 0.136911,
		32.825180, 37.099926, 29.412069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319931, 36.788132, 28.761484>,  <32.682899, 36.421272, 29.316233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319931, 36.788132, 28.761484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585831, 37.064686, 28.874689>,  <32.745369, 37.230618, 28.942612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585831, 37.064686, 28.874689>,  <32.319931, 36.788132, 28.761484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585831, 37.064686, 28.874689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335191, 0.062533, -0.940073,
		-0.667654, 0.719771, -0.190179,
		0.664745, 0.691389, 0.283011,
		32.785255, 37.272102, 28.959593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254440, 37.421383, 28.351696>,  <32.319931, 36.788132, 28.761484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254440, 37.421383, 28.351696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637779, 37.394154, 28.462645>,  <32.867783, 37.377815, 28.529213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637779, 37.394154, 28.462645>,  <32.254440, 37.421383, 28.351696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637779, 37.394154, 28.462645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285175, 0.174930, -0.942377,
		0.015634, 0.982225, 0.187057,
		0.958348, -0.068077, 0.277371,
		32.925285, 37.373730, 28.545856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568844, 37.942673, 28.014574>,  <32.254440, 37.421383, 28.351696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568844, 37.942673, 28.014574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896591, 37.742928, 28.127190>,  <33.093239, 37.623081, 28.194759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896591, 37.742928, 28.127190>,  <32.568844, 37.942673, 28.014574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896591, 37.742928, 28.127190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382750, 0.110929, -0.917168,
		0.426773, 0.859259, 0.282025,
		0.819370, -0.499368, 0.281540,
		33.142403, 37.593117, 28.211651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088650, 38.383026, 27.824429>,  <32.568844, 37.942673, 28.014574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088650, 38.383026, 27.824429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264465, 38.028343, 27.881773>,  <33.369953, 37.815533, 27.916180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264465, 38.028343, 27.881773>,  <33.088650, 38.383026, 27.824429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264465, 38.028343, 27.881773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550103, 0.139564, -0.823352,
		0.710067, 0.440757, 0.549125,
		0.439536, -0.886710, 0.143362,
		33.396328, 37.762329, 27.924782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818222, 38.485748, 27.725937>,  <33.088650, 38.383026, 27.824429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818222, 38.485748, 27.725937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733540, 38.099670, 27.664522>,  <33.682728, 37.868023, 27.627674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733540, 38.099670, 27.664522>,  <33.818222, 38.485748, 27.725937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733540, 38.099670, 27.664522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430122, 0.049049, -0.901438,
		0.877596, -0.256883, 0.404768,
		-0.211710, -0.965197, -0.153536,
		33.670025, 37.810112, 27.618462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448273, 38.292480, 27.530266>,  <33.818222, 38.485748, 27.725937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448273, 38.292480, 27.530266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199451, 38.011459, 27.392010>,  <34.050159, 37.842846, 27.309055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199451, 38.011459, 27.392010>,  <34.448273, 38.292480, 27.530266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199451, 38.011459, 27.392010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616729, -0.167682, -0.769109,
		0.482381, -0.691595, 0.537591,
		-0.622056, -0.702552, -0.345640,
		34.012833, 37.800694, 27.288319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848850, 37.666542, 27.354540>,  <34.448273, 38.292480, 27.530266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848850, 37.666542, 27.354540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502579, 37.645191, 27.155445>,  <34.294815, 37.632381, 27.035988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502579, 37.645191, 27.155445>,  <34.848850, 37.666542, 27.354540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502579, 37.645191, 27.155445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499759, -0.149513, -0.853163,
		-0.028878, -0.987318, 0.156108,
		-0.865683, -0.053379, -0.497738,
		34.242874, 37.629177, 27.006124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078621, 37.248951, 26.831453>,  <34.848850, 37.666542, 27.354540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078621, 37.248951, 26.831453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732510, 37.407562, 26.708780>,  <34.524841, 37.502731, 26.635176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732510, 37.407562, 26.708780>,  <35.078621, 37.248951, 26.831453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732510, 37.407562, 26.708780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326165, -0.019241, -0.945117,
		-0.380669, -0.917820, -0.112686,
		-0.865279, 0.396531, -0.306684,
		34.472927, 37.526520, 26.616776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933586, 36.889042, 26.175135>,  <35.078621, 37.248951, 26.831453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933586, 36.889042, 26.175135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726334, 37.230686, 26.157084>,  <34.601982, 37.435673, 26.146252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726334, 37.230686, 26.157084>,  <34.933586, 36.889042, 26.175135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726334, 37.230686, 26.157084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221863, 0.083256, -0.971517,
		-0.826026, -0.513384, -0.232633,
		-0.518130, 0.854111, -0.045129,
		34.570896, 37.486919, 26.143545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542496, 36.809311, 25.582560>,  <34.933586, 36.889042, 26.175135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542496, 36.809311, 25.582560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525639, 37.199726, 25.667959>,  <34.515522, 37.433975, 25.719198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525639, 37.199726, 25.667959>,  <34.542496, 36.809311, 25.582560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525639, 37.199726, 25.667959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102334, 0.216781, -0.970842,
		-0.993857, -0.019069, -0.109018,
		-0.042146, 0.976034, 0.213498,
		34.512993, 37.492535, 25.732008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131886, 37.181126, 25.009144>,  <34.542496, 36.809311, 25.582560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131886, 37.181126, 25.009144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331387, 37.480980, 25.183172>,  <34.451088, 37.660892, 25.287590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331387, 37.480980, 25.183172>,  <34.131886, 37.181126, 25.009144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331387, 37.480980, 25.183172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201508, 0.387919, -0.899396,
		-0.842993, 0.536249, 0.042419,
		0.498755, 0.749637, 0.435071,
		34.481014, 37.705872, 25.313694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911709, 37.800583, 24.687664>,  <34.131886, 37.181126, 25.009144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911709, 37.800583, 24.687664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279938, 37.869587, 24.827831>,  <34.500874, 37.910988, 24.911932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279938, 37.869587, 24.827831>,  <33.911709, 37.800583, 24.687664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279938, 37.869587, 24.827831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246401, 0.439619, -0.863725,
		-0.303049, 0.881463, 0.362194,
		0.920569, 0.172506, 0.350420,
		34.556110, 37.921337, 24.932957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117390, 38.439377, 24.408775>,  <33.911709, 37.800583, 24.687664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117390, 38.439377, 24.408775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469326, 38.284153, 24.518538>,  <34.680489, 38.191017, 24.584394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469326, 38.284153, 24.518538>,  <34.117390, 38.439377, 24.408775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469326, 38.284153, 24.518538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377746, 0.220575, -0.899253,
		0.288436, 0.894851, 0.340657,
		0.879837, -0.388059, 0.274404,
		34.733276, 38.167736, 24.600859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698982, 38.950817, 24.339237>,  <34.117390, 38.439377, 24.408775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698982, 38.950817, 24.339237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867413, 38.590439, 24.297291>,  <34.968472, 38.374210, 24.272123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867413, 38.590439, 24.297291>,  <34.698982, 38.950817, 24.339237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867413, 38.590439, 24.297291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347903, 0.267196, -0.898649,
		0.837653, 0.341912, 0.425951,
		0.421071, -0.900945, -0.104865,
		34.993732, 38.320156, 24.265831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358307, 39.109737, 24.226887>,  <34.698982, 38.950817, 24.339237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358307, 39.109737, 24.226887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307846, 38.742321, 24.077021>,  <35.277569, 38.521873, 23.987101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307846, 38.742321, 24.077021>,  <35.358307, 39.109737, 24.226887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307846, 38.742321, 24.077021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544442, 0.251609, -0.800172,
		0.829257, -0.304929, 0.468349,
		-0.126154, -0.918537, -0.374665,
		35.270000, 38.466759, 23.964621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968098, 39.050533, 23.790518>,  <35.358307, 39.109737, 24.226887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968098, 39.050533, 23.790518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761421, 38.720951, 23.697454>,  <35.637417, 38.523201, 23.641617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761421, 38.720951, 23.697454>,  <35.968098, 39.050533, 23.790518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761421, 38.720951, 23.697454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492394, -0.063669, -0.868041,
		0.700413, -0.563068, 0.438607,
		-0.516691, -0.823955, -0.232657,
		35.606415, 38.473766, 23.627657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443398, 38.463497, 23.530958>,  <35.968098, 39.050533, 23.790518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443398, 38.463497, 23.530958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088211, 38.343269, 23.391722>,  <35.875099, 38.271133, 23.308180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088211, 38.343269, 23.391722>,  <36.443398, 38.463497, 23.530958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088211, 38.343269, 23.391722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423553, -0.239550, -0.873624,
		0.179202, -0.923186, 0.340022,
		-0.887969, -0.300572, -0.348090,
		35.821819, 38.253098, 23.287294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612915, 37.914871, 23.267076>,  <36.443398, 38.463497, 23.530958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612915, 37.914871, 23.267076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265957, 38.017162, 23.096327>,  <36.057781, 38.078537, 22.993877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265957, 38.017162, 23.096327>,  <36.612915, 37.914871, 23.267076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265957, 38.017162, 23.096327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360194, -0.269219, -0.893186,
		-0.343340, -0.928505, 0.141407,
		-0.867397, 0.255733, -0.426876,
		36.005737, 38.093880, 22.968264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557674, 37.370247, 22.837681>,  <36.612915, 37.914871, 23.267076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557674, 37.370247, 22.837681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326527, 37.663445, 22.694134>,  <36.187840, 37.839363, 22.608006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326527, 37.663445, 22.694134>,  <36.557674, 37.370247, 22.837681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326527, 37.663445, 22.694134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392647, -0.135788, -0.909610,
		-0.715469, -0.666544, -0.209341,
		-0.577869, 0.732994, -0.358869,
		36.153164, 37.883343, 22.586473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421604, 37.137764, 22.113291>,  <36.557674, 37.370247, 22.837681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421604, 37.137764, 22.113291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299572, 37.518078, 22.091633>,  <36.226353, 37.746265, 22.078638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299572, 37.518078, 22.091633>,  <36.421604, 37.137764, 22.113291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299572, 37.518078, 22.091633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306867, 0.044321, -0.950720,
		-0.901533, -0.306658, -0.305286,
		-0.305077, 0.950787, -0.054146,
		36.208050, 37.803314, 22.075390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969929, 37.260010, 21.507536>,  <36.421604, 37.137764, 22.113291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969929, 37.260010, 21.507536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090439, 37.624115, 21.621130>,  <36.162746, 37.842579, 21.689285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090439, 37.624115, 21.621130>,  <35.969929, 37.260010, 21.507536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090439, 37.624115, 21.621130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366944, 0.164210, -0.915635,
		-0.880105, 0.380064, -0.284545,
		0.301275, 0.910267, 0.283984,
		36.180820, 37.897194, 21.706326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775875, 37.661694, 20.927961>,  <35.969929, 37.260010, 21.507536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775875, 37.661694, 20.927961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051594, 37.850182, 21.148081>,  <36.217026, 37.963272, 21.280153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051594, 37.850182, 21.148081>,  <35.775875, 37.661694, 20.927961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051594, 37.850182, 21.148081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396491, 0.390371, -0.830906,
		-0.606358, 0.790927, 0.082247,
		0.689293, 0.471216, 0.550300,
		36.258381, 37.991547, 21.313171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816761, 38.402756, 20.732840>,  <35.775875, 37.661694, 20.927961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816761, 38.402756, 20.732840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170792, 38.288147, 20.879560>,  <36.383209, 38.219379, 20.967592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170792, 38.288147, 20.879560>,  <35.816761, 38.402756, 20.732840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170792, 38.288147, 20.879560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451463, 0.336747, -0.826307,
		0.113239, 0.896942, 0.427402,
		0.885075, -0.286526, 0.366803,
		36.436314, 38.202190, 20.989601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286514, 38.801151, 20.362783>,  <35.816761, 38.402756, 20.732840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286514, 38.801151, 20.362783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526886, 38.538609, 20.545248>,  <36.671108, 38.381084, 20.654726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526886, 38.538609, 20.545248>,  <36.286514, 38.801151, 20.362783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526886, 38.538609, 20.545248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740727, 0.242849, -0.626377,
		0.300347, 0.714299, 0.632115,
		0.600929, -0.656355, 0.456162,
		36.707165, 38.341702, 20.682096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833408, 39.102886, 20.398184>,  <36.286514, 38.801151, 20.362783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833408, 39.102886, 20.398184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953049, 38.724590, 20.448950>,  <37.024834, 38.497612, 20.479410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953049, 38.724590, 20.448950>,  <36.833408, 39.102886, 20.398184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953049, 38.724590, 20.448950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731196, 0.141700, -0.667288,
		0.613100, 0.292386, 0.733907,
		0.299100, -0.945744, 0.126915,
		37.042778, 38.440868, 20.487024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513557, 39.136639, 20.257372>,  <36.833408, 39.102886, 20.398184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513557, 39.136639, 20.257372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441177, 38.743813, 20.236172>,  <37.397751, 38.508118, 20.223452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441177, 38.743813, 20.236172>,  <37.513557, 39.136639, 20.257372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441177, 38.743813, 20.236172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703833, -0.091664, -0.704426,
		0.686933, -0.164768, 0.707795,
		-0.180946, -0.982064, -0.053002,
		37.386894, 38.449192, 20.220270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130402, 38.774567, 20.630527>,  <37.513557, 39.136639, 20.257372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130402, 38.774567, 20.630527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932140, 38.582439, 20.341082>,  <37.813183, 38.467163, 20.167414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932140, 38.582439, 20.341082>,  <38.130402, 38.774567, 20.630527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932140, 38.582439, 20.341082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846194, -0.079376, -0.526930,
		0.195658, -0.873494, 0.445787,
		-0.495655, -0.480320, -0.723615,
		37.783443, 38.438343, 20.123997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649029, 38.458244, 20.402182>,  <38.130402, 38.774567, 20.630527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649029, 38.458244, 20.402182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391064, 38.378990, 20.106930>,  <38.236286, 38.331436, 19.929779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391064, 38.378990, 20.106930>,  <38.649029, 38.458244, 20.402182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391064, 38.378990, 20.106930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761595, -0.086038, -0.642316,
		0.063759, -0.976391, 0.206387,
		-0.644909, -0.198137, -0.738129,
		38.197590, 38.319550, 19.885490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938133, 37.917923, 20.001419>,  <38.649029, 38.458244, 20.402182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938133, 37.917923, 20.001419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693207, 38.135559, 19.771975>,  <38.546249, 38.266140, 19.634308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693207, 38.135559, 19.771975>,  <38.938133, 37.917923, 20.001419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693207, 38.135559, 19.771975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649561, -0.067387, -0.757317,
		-0.450705, -0.836314, -0.312159,
		-0.612320, 0.544093, -0.573609,
		38.509510, 38.298786, 19.599892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013638, 37.651573, 19.397669>,  <38.938133, 37.917923, 20.001419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013638, 37.651573, 19.397669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861813, 38.012062, 19.314014>,  <38.770718, 38.228355, 19.263823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861813, 38.012062, 19.314014>,  <39.013638, 37.651573, 19.397669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861813, 38.012062, 19.314014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726351, 0.150270, -0.670696,
		-0.573018, -0.406474, -0.711639,
		-0.379558, 0.901220, -0.209136,
		38.747944, 38.282429, 19.251274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847824, 37.678814, 18.700903>,  <39.013638, 37.651573, 19.397669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847824, 37.678814, 18.700903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883011, 38.062744, 18.807486>,  <38.904125, 38.293102, 18.871435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883011, 38.062744, 18.807486>,  <38.847824, 37.678814, 18.700903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883011, 38.062744, 18.807486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552704, 0.175510, -0.814687,
		-0.828722, 0.218941, -0.515059,
		0.087970, 0.959824, 0.266458,
		38.909401, 38.350693, 18.887423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621506, 38.044430, 18.102352>,  <38.847824, 37.678814, 18.700903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621506, 38.044430, 18.102352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855316, 38.281883, 18.323593>,  <38.995602, 38.424355, 18.456337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855316, 38.281883, 18.323593>,  <38.621506, 38.044430, 18.102352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855316, 38.281883, 18.323593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624752, 0.105649, -0.773642,
		-0.517697, 0.797768, -0.309121,
		0.584529, 0.593637, 0.553102,
		39.030674, 38.459972, 18.489523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695862, 38.664410, 17.748844>,  <38.621506, 38.044430, 18.102352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695862, 38.664410, 17.748844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006680, 38.633080, 17.998667>,  <39.193169, 38.614281, 18.148560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006680, 38.633080, 17.998667>,  <38.695862, 38.664410, 17.748844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006680, 38.633080, 17.998667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629129, 0.065019, -0.774577,
		0.020059, 0.994806, 0.099797,
		0.777042, -0.078323, 0.624557,
		39.239792, 38.609581, 18.186033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155388, 39.224033, 17.696091>,  <38.695862, 38.664410, 17.748844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155388, 39.224033, 17.696091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380917, 38.909492, 17.797089>,  <39.516235, 38.720768, 17.857687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380917, 38.909492, 17.797089>,  <39.155388, 39.224033, 17.696091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380917, 38.909492, 17.797089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648812, 0.232559, -0.724541,
		0.511023, 0.572338, 0.641316,
		0.563826, -0.786350, 0.252496,
		39.550064, 38.673588, 17.872837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880886, 39.476017, 17.702461>,  <39.155388, 39.224033, 17.696091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880886, 39.476017, 17.702461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897305, 39.076630, 17.687666>,  <39.907154, 38.836998, 17.678789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897305, 39.076630, 17.687666>,  <39.880886, 39.476017, 17.702461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897305, 39.076630, 17.687666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803043, 0.054990, -0.593378,
		0.594506, -0.005350, 0.804074,
		0.041042, -0.998473, -0.036988,
		39.909618, 38.777088, 17.676569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032146, 39.548573, 16.951607>,  <39.880886, 39.476017, 17.702461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032146, 39.548573, 16.951607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365761, 39.347130, 16.861479>,  <40.565929, 39.226265, 16.807402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365761, 39.347130, 16.861479>,  <40.032146, 39.548573, 16.951607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365761, 39.347130, 16.861479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529642, 0.845212, 0.071385,
		0.154491, -0.178875, 0.971667,
		0.834034, -0.503607, -0.225318,
		40.615971, 39.196049, 16.793884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677666, 39.595253, 17.385651>,  <40.032146, 39.548573, 16.951607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677666, 39.595253, 17.385651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774918, 39.516956, 17.005634>,  <40.833267, 39.469978, 16.777624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774918, 39.516956, 17.005634>,  <40.677666, 39.595253, 17.385651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774918, 39.516956, 17.005634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586975, 0.809435, -0.016558,
		0.772236, -0.553623, 0.311692,
		0.243128, -0.195742, -0.950039,
		40.847855, 39.458233, 16.720623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466480, 39.819366, 17.363924>,  <40.677666, 39.595253, 17.385651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466480, 39.819366, 17.363924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257576, 39.858795, 17.025095>,  <41.132233, 39.882454, 16.821798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257576, 39.858795, 17.025095>,  <41.466480, 39.819366, 17.363924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257576, 39.858795, 17.025095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305703, 0.948922, -0.078053,
		0.796111, -0.299716, -0.525716,
		-0.522257, 0.098575, -0.847071,
		41.100899, 39.888367, 16.770973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442364, 40.356823, 17.888142>,  <41.466480, 39.819366, 17.363924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442364, 40.356823, 17.888142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532009, 40.164333, 18.227129>,  <41.585796, 40.048840, 18.430521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532009, 40.164333, 18.227129>,  <41.442364, 40.356823, 17.888142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532009, 40.164333, 18.227129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437618, -0.826678, -0.353687,
		0.870784, -0.291601, -0.395859,
		0.224113, -0.481220, 0.847467,
		41.599243, 40.019966, 18.481369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058094, 40.420059, 18.446436>,  <41.442364, 40.356823, 17.888142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058094, 40.420059, 18.446436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002731, 40.811287, 18.508699>,  <40.969513, 41.046024, 18.546057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002731, 40.811287, 18.508699>,  <41.058094, 40.420059, 18.446436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002731, 40.811287, 18.508699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709063, -0.207592, 0.673895,
		0.691428, -0.017097, 0.722243,
		-0.138410, 0.978066, 0.155658,
		40.961208, 41.104706, 18.555397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230915, 40.610508, 19.176857>,  <41.058094, 40.420059, 18.446436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230915, 40.610508, 19.176857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961678, 40.867729, 19.030746>,  <40.800133, 41.022060, 18.943081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961678, 40.867729, 19.030746>,  <41.230915, 40.610508, 19.176857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961678, 40.867729, 19.030746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547415, -0.101105, 0.830732,
		0.497272, 0.759120, 0.420069,
		-0.673096, 0.643051, -0.365277,
		40.759750, 41.060646, 18.921164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156544, 41.113865, 19.712976>,  <41.230915, 40.610508, 19.176857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156544, 41.113865, 19.712976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850399, 41.042984, 19.465487>,  <40.666710, 41.000458, 19.316994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850399, 41.042984, 19.465487>,  <41.156544, 41.113865, 19.712976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850399, 41.042984, 19.465487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562532, -0.282890, 0.776873,
		-0.312693, 0.942642, 0.116833,
		-0.765364, -0.177200, -0.618723,
		40.620789, 40.989822, 19.279869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426922, 41.473373, 19.846619>,  <41.156544, 41.113865, 19.712976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426922, 41.473373, 19.846619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390362, 41.102146, 19.702213>,  <40.368427, 40.879410, 19.615570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390362, 41.102146, 19.702213>,  <40.426922, 41.473373, 19.846619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390362, 41.102146, 19.702213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594607, -0.239947, 0.767377,
		-0.798804, 0.284801, -0.529906,
		-0.091401, -0.928070, -0.361015,
		40.362942, 40.823727, 19.593908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710693, 41.292957, 19.855522>,  <40.426922, 41.473373, 19.846619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710693, 41.292957, 19.855522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924259, 40.954811, 19.848619>,  <40.052399, 40.751923, 19.844479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924259, 40.954811, 19.848619>,  <39.710693, 41.292957, 19.855522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924259, 40.954811, 19.848619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362069, -0.247022, 0.898825,
		-0.764094, -0.473650, -0.437968,
		0.533916, -0.845361, -0.017255,
		40.084435, 40.701202, 19.843443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302868, 40.789951, 20.093073>,  <39.710693, 41.292957, 19.855522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302868, 40.789951, 20.093073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652786, 40.599915, 20.131054>,  <39.862736, 40.485893, 20.153843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652786, 40.599915, 20.131054>,  <39.302868, 40.789951, 20.093073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652786, 40.599915, 20.131054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348416, -0.480715, 0.804686,
		-0.336654, -0.737021, -0.586058,
		0.874798, -0.475092, 0.094955,
		39.915226, 40.457386, 20.159540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160179, 40.128212, 20.386969>,  <39.302868, 40.789951, 20.093073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160179, 40.128212, 20.386969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544556, 40.198437, 20.472542>,  <39.775181, 40.240574, 20.523886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544556, 40.198437, 20.472542>,  <39.160179, 40.128212, 20.386969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544556, 40.198437, 20.472542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134640, -0.378797, 0.915633,
		0.241793, -0.908674, -0.340364,
		0.960941, 0.175567, 0.213935,
		39.832840, 40.251106, 20.536722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352692, 39.596924, 20.824636>,  <39.160179, 40.128212, 20.386969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352692, 39.596924, 20.824636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657921, 39.847271, 20.889141>,  <39.841057, 39.997478, 20.927843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657921, 39.847271, 20.889141>,  <39.352692, 39.596924, 20.824636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657921, 39.847271, 20.889141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131409, -0.094058, 0.986856,
		0.632814, -0.774233, 0.010473,
		0.763072, 0.625872, 0.161262,
		39.886841, 40.035034, 20.937519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891380, 39.175034, 21.141712>,  <39.352692, 39.596924, 20.824636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891380, 39.175034, 21.141712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955566, 39.561569, 21.222157>,  <39.994080, 39.793491, 21.270424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955566, 39.561569, 21.222157>,  <39.891380, 39.175034, 21.141712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955566, 39.561569, 21.222157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020776, -0.200399, 0.979494,
		0.986823, -0.161352, -0.012080,
		0.160464, 0.966336, 0.201111,
		40.003704, 39.851471, 21.282490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415764, 39.214527, 21.668953>,  <39.891380, 39.175034, 21.141712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415764, 39.214527, 21.668953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244545, 39.574436, 21.702868>,  <40.141815, 39.790382, 21.723217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244545, 39.574436, 21.702868>,  <40.415764, 39.214527, 21.668953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244545, 39.574436, 21.702868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131338, -0.154751, 0.979185,
		0.894163, 0.407999, 0.184414,
		-0.428045, 0.899772, 0.084787,
		40.116131, 39.844368, 21.728304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740459, 39.533234, 22.201803>,  <40.415764, 39.214527, 21.668953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740459, 39.533234, 22.201803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403107, 39.747700, 22.187786>,  <40.200695, 39.876381, 22.179375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403107, 39.747700, 22.187786>,  <40.740459, 39.533234, 22.201803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403107, 39.747700, 22.187786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108813, -0.106563, 0.988334,
		0.526178, 0.837358, 0.148215,
		-0.843384, 0.536168, -0.035044,
		40.150093, 39.908550, 22.177273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713108, 40.081886, 22.752785>,  <40.740459, 39.533234, 22.201803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713108, 40.081886, 22.752785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352089, 39.951271, 22.640511>,  <40.135479, 39.872902, 22.573147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352089, 39.951271, 22.640511>,  <40.713108, 40.081886, 22.752785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352089, 39.951271, 22.640511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252957, -0.125432, 0.959312,
		-0.348457, 0.936825, 0.030609,
		-0.902547, -0.326537, -0.280684,
		40.081326, 39.853310, 22.556305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372414, 40.275707, 23.297155>,  <40.713108, 40.081886, 22.752785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372414, 40.275707, 23.297155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101254, 40.047802, 23.111330>,  <39.938557, 39.911057, 22.999834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101254, 40.047802, 23.111330>,  <40.372414, 40.275707, 23.297155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101254, 40.047802, 23.111330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455552, -0.170408, 0.873747,
		-0.576997, 0.803945, -0.144039,
		-0.677899, -0.569767, -0.464564,
		39.897884, 39.876873, 22.971960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663761, 40.539974, 23.449932>,  <40.372414, 40.275707, 23.297155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663761, 40.539974, 23.449932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637329, 40.159267, 23.330080>,  <39.621468, 39.930843, 23.258169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637329, 40.159267, 23.330080>,  <39.663761, 40.539974, 23.449932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637329, 40.159267, 23.330080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371203, -0.255284, 0.892770,
		-0.926197, 0.170220, -0.336428,
		-0.066083, -0.951764, -0.299629,
		39.617504, 39.873737, 23.240191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964130, 40.412365, 23.586123>,  <39.663761, 40.539974, 23.449932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964130, 40.412365, 23.586123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128719, 40.050640, 23.540667>,  <39.227474, 39.833607, 23.513393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128719, 40.050640, 23.540667>,  <38.964130, 40.412365, 23.586123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128719, 40.050640, 23.540667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450991, -0.310370, 0.836825,
		-0.792019, -0.293082, -0.535545,
		0.411476, -0.904308, -0.113641,
		39.252163, 39.779346, 23.506575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481735, 39.927715, 23.546295>,  <38.964130, 40.412365, 23.586123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481735, 39.927715, 23.546295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799400, 39.734909, 23.694330>,  <38.989998, 39.619225, 23.783152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799400, 39.734909, 23.694330>,  <38.481735, 39.927715, 23.546295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799400, 39.734909, 23.694330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555508, -0.328879, 0.763708,
		-0.246404, -0.812096, -0.528947,
		0.794164, -0.482014, 0.370089,
		39.037651, 39.590305, 23.805357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286087, 39.323082, 23.719004>,  <38.481735, 39.927715, 23.546295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286087, 39.323082, 23.719004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626541, 39.328110, 23.928921>,  <38.830814, 39.331127, 24.054871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626541, 39.328110, 23.928921>,  <38.286087, 39.323082, 23.719004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626541, 39.328110, 23.928921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497336, -0.300624, 0.813807,
		0.167993, -0.953660, -0.249622,
		0.851138, 0.012568, 0.524792,
		38.881882, 39.331879, 24.086359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274742, 38.649704, 24.134594>,  <38.286087, 39.323082, 23.719004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274742, 38.649704, 24.134594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531685, 38.877380, 24.339884>,  <38.685852, 39.013985, 24.463057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531685, 38.877380, 24.339884>,  <38.274742, 38.649704, 24.134594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531685, 38.877380, 24.339884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366510, -0.359972, 0.857957,
		0.673087, -0.739217, -0.022617,
		0.642358, 0.569191, 0.513223,
		38.724392, 39.048138, 24.493851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446278, 38.266342, 24.631495>,  <38.274742, 38.649704, 24.134594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446278, 38.266342, 24.631495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551407, 38.625610, 24.772476>,  <38.614483, 38.841171, 24.857065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551407, 38.625610, 24.772476>,  <38.446278, 38.266342, 24.631495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551407, 38.625610, 24.772476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252030, -0.288705, 0.923651,
		0.931347, -0.331581, 0.150488,
		0.262818, 0.898167, 0.352453,
		38.630253, 38.895061, 24.878212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605812, 38.174698, 25.368841>,  <38.446278, 38.266342, 24.631495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605812, 38.174698, 25.368841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563408, 38.572441, 25.367210>,  <38.537968, 38.811089, 25.366232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563408, 38.572441, 25.367210>,  <38.605812, 38.174698, 25.368841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563408, 38.572441, 25.367210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499723, -0.049729, 0.864757,
		0.859674, 0.093709, 0.502175,
		-0.106008, 0.994357, -0.004078,
		38.531605, 38.870747, 25.365988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873291, 38.474632, 26.005213>,  <38.605812, 38.174698, 25.368841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873291, 38.474632, 26.005213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609543, 38.739384, 25.862585>,  <38.451294, 38.898235, 25.777008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609543, 38.739384, 25.862585>,  <38.873291, 38.474632, 26.005213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609543, 38.739384, 25.862585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427832, 0.059652, 0.901887,
		0.618210, 0.747233, 0.243841,
		-0.659375, 0.661879, -0.356568,
		38.411732, 38.937946, 25.755615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927917, 39.020668, 26.614202>,  <38.873291, 38.474632, 26.005213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927917, 39.020668, 26.614202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602352, 39.024326, 26.381836>,  <38.407013, 39.026520, 26.242416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602352, 39.024326, 26.381836>,  <38.927917, 39.020668, 26.614202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602352, 39.024326, 26.381836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580981, -0.017326, 0.813733,
		-0.002621, 0.999808, 0.019416,
		-0.813913, 0.009147, -0.580915,
		38.358177, 39.027069, 26.207561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503826, 39.523113, 26.987091>,  <38.927917, 39.020668, 26.614202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503826, 39.523113, 26.987091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262112, 39.302685, 26.756907>,  <38.117081, 39.170425, 26.618795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262112, 39.302685, 26.756907>,  <38.503826, 39.523113, 26.987091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262112, 39.302685, 26.756907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679371, -0.020978, 0.733495,
		-0.416281, 0.834193, -0.361706,
		-0.604289, -0.551073, -0.575460,
		38.080826, 39.137363, 26.584269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882160, 39.856777, 26.953920>,  <38.503826, 39.523113, 26.987091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882160, 39.856777, 26.953920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815750, 39.472336, 26.865643>,  <37.775902, 39.241669, 26.812675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815750, 39.472336, 26.865643>,  <37.882160, 39.856777, 26.953920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815750, 39.472336, 26.865643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722179, -0.033888, 0.690875,
		-0.671485, 0.274087, -0.688466,
		-0.166029, -0.961108, -0.220695,
		37.765942, 39.184002, 26.799435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269096, 39.851742, 26.881029>,  <37.882160, 39.856777, 26.953920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269096, 39.851742, 26.881029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290371, 39.452320, 26.884258>,  <37.303135, 39.212669, 26.886196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290371, 39.452320, 26.884258>,  <37.269096, 39.851742, 26.881029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290371, 39.452320, 26.884258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857828, -0.041547, 0.512255,
		-0.511178, -0.034168, -0.858796,
		0.053183, -0.998552, 0.008073,
		37.306328, 39.152756, 26.886681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649128, 39.655712, 26.638897>,  <37.269096, 39.851742, 26.881029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649128, 39.655712, 26.638897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791641, 39.354900, 26.860714>,  <36.877148, 39.174412, 26.993803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791641, 39.354900, 26.860714>,  <36.649128, 39.655712, 26.638897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791641, 39.354900, 26.860714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838292, 0.004877, 0.545200,
		-0.412711, -0.659112, -0.628682,
		0.356281, -0.752029, 0.554541,
		36.898525, 39.129292, 27.027077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073837, 39.314407, 26.733444>,  <36.649128, 39.655712, 26.638897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073837, 39.314407, 26.733444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319805, 39.166626, 27.012119>,  <36.467384, 39.077957, 27.179325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319805, 39.166626, 27.012119>,  <36.073837, 39.314407, 26.733444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319805, 39.166626, 27.012119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706442, 0.134528, 0.694868,
		-0.350445, -0.919460, -0.178274,
		0.614921, -0.369453, 0.696690,
		36.504280, 39.055790, 27.221127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725044, 38.728909, 27.084444>,  <36.073837, 39.314407, 26.733444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725044, 38.728909, 27.084444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988712, 38.853848, 27.358067>,  <36.146915, 38.928810, 27.522240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988712, 38.853848, 27.358067>,  <35.725044, 38.728909, 27.084444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988712, 38.853848, 27.358067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704725, -0.060838, 0.706867,
		0.262403, -0.948019, 0.180014,
		0.659172, 0.312344, 0.684057,
		36.186462, 38.947552, 27.563284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505466, 38.351414, 27.648705>,  <35.725044, 38.728909, 27.084444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505466, 38.351414, 27.648705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740868, 38.636585, 27.801233>,  <35.882107, 38.807686, 27.892750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740868, 38.636585, 27.801233>,  <35.505466, 38.351414, 27.648705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740868, 38.636585, 27.801233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630149, 0.108971, 0.768790,
		0.506537, -0.692721, 0.513378,
		0.588500, 0.712925, 0.381320,
		35.917419, 38.850464, 27.915628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772346, 38.119648, 28.286932>,  <35.505466, 38.351414, 27.648705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772346, 38.119648, 28.286932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751877, 38.519066, 28.293655>,  <35.739597, 38.758717, 28.297689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751877, 38.519066, 28.293655>,  <35.772346, 38.119648, 28.286932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751877, 38.519066, 28.293655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662977, -0.046551, 0.747191,
		0.746889, 0.027090, 0.664396,
		-0.051170, 0.998548, 0.016808,
		35.736526, 38.818630, 28.298698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915863, 38.259151, 28.955112>,  <35.772346, 38.119648, 28.286932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915863, 38.259151, 28.955112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782055, 38.614288, 28.828724>,  <35.701771, 38.827370, 28.752890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782055, 38.614288, 28.828724>,  <35.915863, 38.259151, 28.955112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782055, 38.614288, 28.828724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507876, 0.112588, 0.854041,
		0.793825, 0.446169, 0.413249,
		-0.334520, 0.887839, -0.315973,
		35.681698, 38.880638, 28.733932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030014, 38.837994, 29.484491>,  <35.915863, 38.259151, 28.955112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030014, 38.837994, 29.484491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717869, 38.947659, 29.259684>,  <35.530582, 39.013458, 29.124800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717869, 38.947659, 29.259684>,  <36.030014, 38.837994, 29.484491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717869, 38.947659, 29.259684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502858, 0.259113, 0.824618,
		0.371703, 0.926119, -0.064340,
		-0.780366, 0.274159, -0.562020,
		35.483761, 39.029907, 29.091078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921204, 39.480904, 29.783377>,  <36.030014, 38.837994, 29.484491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921204, 39.480904, 29.783377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587254, 39.374756, 29.590477>,  <35.386883, 39.311069, 29.474737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587254, 39.374756, 29.590477>,  <35.921204, 39.480904, 29.783377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587254, 39.374756, 29.590477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540074, 0.225697, 0.810791,
		-0.106315, 0.937359, -0.331746,
		-0.834876, -0.265367, -0.482248,
		35.336792, 39.295147, 29.445803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401909, 40.073566, 29.885029>,  <35.921204, 39.480904, 29.783377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401909, 40.073566, 29.885029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161312, 39.776680, 29.766827>,  <35.016953, 39.598549, 29.695906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161312, 39.776680, 29.766827>,  <35.401909, 40.073566, 29.885029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161312, 39.776680, 29.766827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640605, 0.227102, 0.733519,
		-0.477319, 0.630509, -0.612067,
		-0.601491, -0.742215, -0.295507,
		34.980865, 39.554016, 29.678175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668179, 40.367786, 29.835815>,  <35.401909, 40.073566, 29.885029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668179, 40.367786, 29.835815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643101, 39.970535, 29.875340>,  <34.628056, 39.732185, 29.899054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643101, 39.970535, 29.875340>,  <34.668179, 40.367786, 29.835815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643101, 39.970535, 29.875340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629050, 0.116182, 0.768634,
		-0.774833, -0.013970, -0.632012,
		-0.062690, -0.993129, 0.098809,
		34.624294, 39.672596, 29.904982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986389, 40.164928, 29.761719>,  <34.668179, 40.367786, 29.835815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986389, 40.164928, 29.761719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152939, 39.872131, 29.977427>,  <34.252869, 39.696453, 30.106852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152939, 39.872131, 29.977427>,  <33.986389, 40.164928, 29.761719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152939, 39.872131, 29.977427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813907, -0.035756, 0.579894,
		-0.405197, -0.680371, -0.610664,
		0.416378, -0.731995, 0.539271,
		34.277851, 39.652534, 30.139208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382500, 39.800056, 29.929930>,  <33.986389, 40.164928, 29.761719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382500, 39.800056, 29.929930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663853, 39.655670, 30.174866>,  <33.832664, 39.569038, 30.321827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663853, 39.655670, 30.174866>,  <33.382500, 39.800056, 29.929930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663853, 39.655670, 30.174866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647947, 0.028606, 0.761148,
		-0.292263, -0.932141, -0.213764,
		0.703383, -0.360963, 0.612338,
		33.874866, 39.547382, 30.358566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086468, 39.212799, 30.338490>,  <33.382500, 39.800056, 29.929930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086468, 39.212799, 30.338490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401512, 39.378922, 30.520563>,  <33.590538, 39.478596, 30.629807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401512, 39.378922, 30.520563>,  <33.086468, 39.212799, 30.338490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401512, 39.378922, 30.520563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530324, 0.080762, 0.843940,
		0.313733, -0.906089, 0.283856,
		0.787609, 0.415308, 0.455183,
		33.637794, 39.503513, 30.657118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044659, 38.866524, 30.997520>,  <33.086468, 39.212799, 30.338490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044659, 38.866524, 30.997520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301193, 39.168968, 31.049641>,  <33.455112, 39.350437, 31.080914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301193, 39.168968, 31.049641>,  <33.044659, 38.866524, 30.997520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301193, 39.168968, 31.049641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366004, 0.152230, 0.918078,
		0.674336, -0.636488, 0.374371,
		0.641336, 0.756115, 0.130303,
		33.493595, 39.395802, 31.088732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452522, 38.722435, 31.560438>,  <33.044659, 38.866524, 30.997520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452522, 38.722435, 31.560438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471169, 39.121819, 31.548443>,  <33.482357, 39.361450, 31.541246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471169, 39.121819, 31.548443>,  <33.452522, 38.722435, 31.560438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471169, 39.121819, 31.548443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444879, 0.047630, 0.894323,
		0.894377, -0.028347, 0.446416,
		0.046614, 0.998463, -0.029988,
		33.485153, 39.421356, 31.539446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759853, 38.940441, 32.129498>,  <33.452522, 38.722435, 31.560438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759853, 38.940441, 32.129498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506203, 39.228325, 32.016430>,  <33.354012, 39.401054, 31.948589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506203, 39.228325, 32.016430>,  <33.759853, 38.940441, 32.129498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506203, 39.228325, 32.016430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200794, 0.199757, 0.959051,
		0.746706, 0.664914, 0.017844,
		-0.634122, 0.719713, -0.282671,
		33.315968, 39.444241, 31.931629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955635, 39.432869, 32.512928>,  <33.759853, 38.940441, 32.129498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955635, 39.432869, 32.512928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587437, 39.549782, 32.409187>,  <33.366520, 39.619930, 32.346943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587437, 39.549782, 32.409187>,  <33.955635, 39.432869, 32.512928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587437, 39.549782, 32.409187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221467, 0.156590, 0.962513,
		0.321937, 0.943425, -0.079409,
		-0.920494, 0.292282, -0.259350,
		33.311287, 39.637466, 32.331383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642288, 39.034615, 32.394775>,  <33.955635, 39.432869, 32.512928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642288, 39.034615, 32.394775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773392, 38.681934, 32.530533>,  <34.852055, 38.470325, 32.611988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773392, 38.681934, 32.530533>,  <34.642288, 39.034615, 32.394775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773392, 38.681934, 32.530533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901998, 0.185180, -0.390010,
		0.281022, 0.433959, 0.855983,
		0.327759, -0.881696, 0.339390,
		34.871719, 38.417427, 32.632351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244267, 39.132679, 32.685932>,  <34.642288, 39.034615, 32.394775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244267, 39.132679, 32.685932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252380, 38.751240, 32.565769>,  <35.257248, 38.522377, 32.493671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252380, 38.751240, 32.565769>,  <35.244267, 39.132679, 32.685932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252380, 38.751240, 32.565769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955462, 0.106975, -0.275042,
		0.294415, -0.281452, 0.913293,
		0.020288, -0.953594, -0.300412,
		35.258469, 38.465160, 32.475647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924122, 38.814312, 32.906055>,  <35.244267, 39.132679, 32.685932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924122, 38.814312, 32.906055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803112, 38.602776, 32.588867>,  <35.730507, 38.475853, 32.398552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803112, 38.602776, 32.588867>,  <35.924122, 38.814312, 32.906055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803112, 38.602776, 32.588867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932997, 0.005836, -0.359837,
		0.194923, -0.848702, 0.491639,
		-0.302526, -0.528839, -0.792974,
		35.712353, 38.444122, 32.350975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312790, 38.164902, 32.866962>,  <35.924122, 38.814312, 32.906055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312790, 38.164902, 32.866962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185730, 38.246574, 32.496578>,  <36.109493, 38.295578, 32.274345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185730, 38.246574, 32.496578>,  <36.312790, 38.164902, 32.866962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185730, 38.246574, 32.496578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921270, -0.164655, -0.352350,
		-0.224406, -0.964987, -0.135799,
		-0.317653, 0.204177, -0.925963,
		36.090435, 38.307827, 32.218788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510960, 37.592426, 32.529396>,  <36.312790, 38.164902, 32.866962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510960, 37.592426, 32.529396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445274, 37.877495, 32.256596>,  <36.405865, 38.048538, 32.092915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445274, 37.877495, 32.256596>,  <36.510960, 37.592426, 32.529396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445274, 37.877495, 32.256596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854253, -0.242968, -0.459585,
		-0.493240, -0.658072, -0.568907,
		-0.164214, 0.712676, -0.682002,
		36.396011, 38.091297, 32.051994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796703, 37.354431, 31.947262>,  <36.510960, 37.592426, 32.529396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796703, 37.354431, 31.947262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729710, 37.718460, 31.795620>,  <36.689514, 37.936878, 31.704634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729710, 37.718460, 31.795620>,  <36.796703, 37.354431, 31.947262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729710, 37.718460, 31.795620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814440, -0.088973, -0.573385,
		-0.555551, -0.404790, -0.726297,
		-0.167480, 0.910071, -0.379107,
		36.679466, 37.991482, 31.681889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109535, 37.288628, 31.400112>,  <36.796703, 37.354431, 31.947262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109535, 37.288628, 31.400112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072563, 37.685986, 31.427311>,  <37.050381, 37.924400, 31.443630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072563, 37.685986, 31.427311>,  <37.109535, 37.288628, 31.400112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072563, 37.685986, 31.427311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794404, 0.114741, -0.596454,
		-0.600316, -0.001114, -0.799762,
		-0.092430, 0.993395, 0.067996,
		37.044834, 37.984005, 31.447710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067242, 37.644352, 30.713478>,  <37.109535, 37.288628, 31.400112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067242, 37.644352, 30.713478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236031, 37.906815, 30.963726>,  <37.337303, 38.064293, 31.113874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236031, 37.906815, 30.963726>,  <37.067242, 37.644352, 30.713478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236031, 37.906815, 30.963726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767001, 0.109546, -0.632226,
		-0.483371, 0.746635, -0.457044,
		0.421974, 0.656153, 0.625621,
		37.362621, 38.103661, 31.151413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351910, 38.161884, 30.241896>,  <37.067242, 37.644352, 30.713478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351910, 38.161884, 30.241896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545441, 38.196362, 30.590260>,  <37.661560, 38.217049, 30.799278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545441, 38.196362, 30.590260>,  <37.351910, 38.161884, 30.241896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545441, 38.196362, 30.590260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862201, 0.123693, -0.491232,
		-0.150068, 0.988570, -0.014474,
		0.483827, 0.086198, 0.870908,
		37.690590, 38.222221, 30.851532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769718, 38.719387, 30.222578>,  <37.351910, 38.161884, 30.241896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769718, 38.719387, 30.222578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937828, 38.541454, 30.538931>,  <38.038692, 38.434692, 30.728743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937828, 38.541454, 30.538931>,  <37.769718, 38.719387, 30.222578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937828, 38.541454, 30.538931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906512, 0.167315, -0.387609,
		0.040095, 0.879846, 0.473565,
		0.420271, -0.444834, 0.790883,
		38.063908, 38.408005, 30.776196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325668, 39.172546, 30.444824>,  <37.769718, 38.719387, 30.222578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325668, 39.172546, 30.444824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397392, 38.802876, 30.579725>,  <38.440426, 38.581074, 30.660666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397392, 38.802876, 30.579725>,  <38.325668, 39.172546, 30.444824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397392, 38.802876, 30.579725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870305, -0.010830, -0.492395,
		0.458715, 0.381800, 0.802377,
		0.179306, -0.924181, 0.337251,
		38.451183, 38.525620, 30.680901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020512, 39.158112, 30.428503>,  <38.325668, 39.172546, 30.444824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020512, 39.158112, 30.428503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957363, 38.769638, 30.499920>,  <38.919476, 38.536552, 30.542770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957363, 38.769638, 30.499920>,  <39.020512, 39.158112, 30.428503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957363, 38.769638, 30.499920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691318, -0.237810, -0.682294,
		0.705093, 0.015716, 0.708941,
		-0.157870, -0.971184, 0.178543,
		38.910004, 38.478283, 30.553482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776489, 38.894478, 30.519976>,  <39.020512, 39.158112, 30.428503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776489, 38.894478, 30.519976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501686, 38.628746, 30.402206>,  <39.336803, 38.469307, 30.331545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501686, 38.628746, 30.402206>,  <39.776489, 38.894478, 30.519976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501686, 38.628746, 30.402206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487510, -0.120927, -0.864702,
		0.538847, -0.737589, 0.406947,
		-0.687006, -0.664333, -0.294421,
		39.295586, 38.429447, 30.313881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073666, 38.195683, 30.393417>,  <39.776489, 38.894478, 30.519976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073666, 38.195683, 30.393417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741505, 38.187485, 30.170700>,  <39.542210, 38.182564, 30.037069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741505, 38.187485, 30.170700>,  <40.073666, 38.195683, 30.393417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741505, 38.187485, 30.170700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555413, -0.109737, -0.824303,
		-0.044207, -0.993749, 0.102509,
		-0.830399, -0.020495, -0.556792,
		39.492386, 38.181335, 30.003662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165615, 37.574280, 29.945044>,  <40.073666, 38.195683, 30.393417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165615, 37.574280, 29.945044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871300, 37.803196, 29.800215>,  <39.694710, 37.940548, 29.713318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871300, 37.803196, 29.800215>,  <40.165615, 37.574280, 29.945044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871300, 37.803196, 29.800215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397974, -0.067179, -0.914934,
		-0.547933, -0.817293, -0.178328,
		-0.735789, 0.572293, -0.362071,
		39.650562, 37.974884, 29.691593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034771, 37.291607, 29.237080>,  <40.165615, 37.574280, 29.945044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034771, 37.291607, 29.237080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866959, 37.654591, 29.227982>,  <39.766273, 37.872379, 29.222523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866959, 37.654591, 29.227982>,  <40.034771, 37.291607, 29.237080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866959, 37.654591, 29.227982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254927, 0.093732, -0.962407,
		-0.871211, -0.409555, -0.270659,
		-0.419528, 0.907457, -0.022746,
		39.741100, 37.926826, 29.221157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840534, 37.307045, 28.553183>,  <40.034771, 37.291607, 29.237080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840534, 37.307045, 28.553183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796173, 37.692303, 28.651201>,  <39.769554, 37.923458, 28.710012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796173, 37.692303, 28.651201>,  <39.840534, 37.307045, 28.553183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796173, 37.692303, 28.651201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070853, 0.253605, -0.964709,
		-0.991302, -0.089631, -0.096369,
		-0.110907, 0.963146, 0.245049,
		39.762901, 37.981247, 28.724716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231823, 37.593208, 28.117449>,  <39.840534, 37.307045, 28.553183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231823, 37.593208, 28.117449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470203, 37.899094, 28.215477>,  <39.613232, 38.082623, 28.274294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470203, 37.899094, 28.215477>,  <39.231823, 37.593208, 28.117449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470203, 37.899094, 28.215477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048917, 0.270049, -0.961603,
		-0.801530, 0.585056, 0.123528,
		0.595951, 0.764711, 0.245071,
		39.648987, 38.128506, 28.288998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957172, 38.142784, 27.726158>,  <39.231823, 37.593208, 28.117449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957172, 38.142784, 27.726158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340450, 38.204193, 27.822733>,  <39.570415, 38.241039, 27.880678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340450, 38.204193, 27.822733>,  <38.957172, 38.142784, 27.726158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340450, 38.204193, 27.822733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210121, 0.195145, -0.958002,
		-0.194189, 0.968684, 0.154729,
		0.958196, 0.153522, 0.241436,
		39.627911, 38.250248, 27.895164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133842, 38.772579, 27.369064>,  <38.957172, 38.142784, 27.726158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133842, 38.772579, 27.369064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490311, 38.601803, 27.430433>,  <39.704193, 38.499336, 27.467255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490311, 38.601803, 27.430433>,  <39.133842, 38.772579, 27.369064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490311, 38.601803, 27.430433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241909, 0.161101, -0.956831,
		0.383794, 0.889813, 0.246849,
		0.891169, -0.426941, 0.153425,
		39.757660, 38.473721, 27.476461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588394, 39.148083, 26.993406>,  <39.133842, 38.772579, 27.369064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588394, 39.148083, 26.993406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824219, 38.835407, 27.074783>,  <39.965714, 38.647804, 27.123610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824219, 38.835407, 27.074783>,  <39.588394, 39.148083, 26.993406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824219, 38.835407, 27.074783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321558, -0.003913, -0.946882,
		0.740961, 0.623659, 0.249051,
		0.589557, -0.781686, 0.203442,
		40.001087, 38.600903, 27.135817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232513, 39.276669, 26.667177>,  <39.588394, 39.148083, 26.993406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232513, 39.276669, 26.667177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233513, 38.881279, 26.727716>,  <40.234112, 38.644043, 26.764040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233513, 38.881279, 26.727716>,  <40.232513, 39.276669, 26.667177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233513, 38.881279, 26.727716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491357, -0.130608, -0.861109,
		0.870954, 0.076517, 0.485369,
		0.002496, -0.988477, 0.151350,
		40.234261, 38.584736, 26.773121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974701, 38.990379, 26.470081>,  <40.232513, 39.276669, 26.667177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974701, 38.990379, 26.470081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704895, 38.696087, 26.445635>,  <40.543011, 38.519512, 26.430967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704895, 38.696087, 26.445635>,  <40.974701, 38.990379, 26.470081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704895, 38.696087, 26.445635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365465, -0.260829, -0.893534,
		0.641458, -0.625036, 0.444816,
		-0.674512, -0.735729, -0.061118,
		40.502541, 38.475368, 26.427299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368172, 38.420235, 26.320623>,  <40.974701, 38.990379, 26.470081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368172, 38.420235, 26.320623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003128, 38.290737, 26.220751>,  <40.784103, 38.213039, 26.160828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003128, 38.290737, 26.220751>,  <41.368172, 38.420235, 26.320623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003128, 38.290737, 26.220751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338453, -0.255652, -0.905589,
		0.229346, -0.910951, 0.342882,
		-0.912606, -0.323743, -0.249682,
		40.729347, 38.193615, 26.145845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583202, 37.892944, 25.816494>,  <41.368172, 38.420235, 26.320623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583202, 37.892944, 25.816494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187805, 37.933071, 25.771206>,  <40.950565, 37.957150, 25.744034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187805, 37.933071, 25.771206>,  <41.583202, 37.892944, 25.816494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187805, 37.933071, 25.771206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084355, -0.255716, -0.963065,
		-0.125567, -0.961533, 0.244310,
		-0.988493, 0.100320, -0.113219,
		40.891258, 37.963169, 25.737240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269989, 37.243492, 25.506403>,  <41.583202, 37.892944, 25.816494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269989, 37.243492, 25.506403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039734, 37.554291, 25.404482>,  <40.901581, 37.740768, 25.343330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039734, 37.554291, 25.404482>,  <41.269989, 37.243492, 25.506403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039734, 37.554291, 25.404482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051602, -0.276466, -0.959637,
		-0.816075, -0.565551, 0.119049,
		-0.575637, 0.776993, -0.254800,
		40.867043, 37.787388, 25.328041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678429, 36.961494, 25.208164>,  <41.269989, 37.243492, 25.506403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678429, 36.961494, 25.208164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707558, 37.337860, 25.075872>,  <40.725037, 37.563679, 24.996498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707558, 37.337860, 25.075872>,  <40.678429, 36.961494, 25.208164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707558, 37.337860, 25.075872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080683, -0.336081, -0.938371,
		-0.994076, 0.041654, -0.100392,
		0.072827, 0.940911, -0.330729,
		40.729404, 37.620132, 24.976654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197659, 36.992512, 24.772633>,  <40.678429, 36.961494, 25.208164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197659, 36.992512, 24.772633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413418, 37.311855, 24.665545>,  <40.542873, 37.503460, 24.601292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413418, 37.311855, 24.665545>,  <40.197659, 36.992512, 24.772633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413418, 37.311855, 24.665545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090229, -0.261306, -0.961029,
		-0.837202, 0.542534, -0.068914,
		0.539399, 0.798358, -0.267718,
		40.575237, 37.551361, 24.585230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914078, 37.175354, 24.132324>,  <40.197659, 36.992512, 24.772633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914078, 37.175354, 24.132324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255226, 37.381180, 24.096930>,  <40.459915, 37.504673, 24.075693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255226, 37.381180, 24.096930>,  <39.914078, 37.175354, 24.132324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255226, 37.381180, 24.096930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013938, -0.146978, -0.989042,
		-0.521928, 0.844763, -0.118182,
		0.852875, 0.514562, -0.088487,
		40.511089, 37.535549, 24.070383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896198, 37.747887, 23.592396>,  <39.914078, 37.175354, 24.132324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896198, 37.747887, 23.592396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286140, 37.677357, 23.646900>,  <40.520107, 37.635040, 23.679604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286140, 37.677357, 23.646900>,  <39.896198, 37.747887, 23.592396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286140, 37.677357, 23.646900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127605, -0.059597, -0.990033,
		0.182685, 0.982527, -0.035599,
		0.974856, -0.176321, 0.136263,
		40.578598, 37.624462, 23.687778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333595, 38.093231, 23.167406>,  <39.896198, 37.747887, 23.592396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333595, 38.093231, 23.167406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586227, 37.787926, 23.221880>,  <40.737804, 37.604744, 23.254564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586227, 37.787926, 23.221880>,  <40.333595, 38.093231, 23.167406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586227, 37.787926, 23.221880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193259, -0.015126, -0.981031,
		0.750841, 0.645915, 0.137953,
		0.631576, -0.763260, 0.136186,
		40.775700, 37.558949, 23.262735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822670, 38.350761, 22.811001>,  <40.333595, 38.093231, 23.167406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822670, 38.350761, 22.811001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901459, 37.960911, 22.853514>,  <40.948730, 37.727001, 22.879023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901459, 37.960911, 22.853514>,  <40.822670, 38.350761, 22.811001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901459, 37.960911, 22.853514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301179, -0.043013, -0.952597,
		0.933002, 0.219646, 0.285066,
		0.196973, -0.974631, 0.106285,
		40.960552, 37.668522, 22.885399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536617, 38.290085, 22.551373>,  <40.822670, 38.350761, 22.811001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536617, 38.290085, 22.551373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379478, 37.923054, 22.526999>,  <41.285194, 37.702835, 22.512375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379478, 37.923054, 22.526999>,  <41.536617, 38.290085, 22.551373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379478, 37.923054, 22.526999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443049, -0.130789, -0.886906,
		0.805838, -0.375418, 0.457914,
		-0.392851, -0.917581, -0.060934,
		41.261623, 37.647778, 22.508718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056095, 37.891670, 22.235884>,  <41.536617, 38.290085, 22.551373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056095, 37.891670, 22.235884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744534, 37.643135, 22.201828>,  <41.557594, 37.494015, 22.181395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744534, 37.643135, 22.201828>,  <42.056095, 37.891670, 22.235884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744534, 37.643135, 22.201828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458476, -0.471525, -0.753302,
		0.427908, -0.625785, 0.652141,
		-0.778906, -0.621335, -0.085138,
		41.510860, 37.456734, 22.176287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338898, 37.201675, 22.145113>,  <42.056095, 37.891670, 22.235884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338898, 37.201675, 22.145113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967480, 37.182323, 21.997892>,  <41.744629, 37.170712, 21.909559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967480, 37.182323, 21.997892>,  <42.338898, 37.201675, 22.145113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967480, 37.182323, 21.997892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343900, -0.485418, -0.803805,
		-0.139772, -0.872943, 0.467371,
		-0.928545, -0.048379, -0.368052,
		41.688915, 37.167809, 21.887476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136272, 36.415897, 22.033861>,  <42.338898, 37.201675, 22.145113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136272, 36.415897, 22.033861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896671, 36.644184, 21.809191>,  <41.752911, 36.781155, 21.674389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896671, 36.644184, 21.809191>,  <42.136272, 36.415897, 22.033861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896671, 36.644184, 21.809191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213754, -0.562023, -0.799024,
		-0.771689, -0.598679, 0.214662,
		-0.599004, 0.570713, -0.561677,
		41.716969, 36.815399, 21.640688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716839, 35.907982, 21.618193>,  <42.136272, 36.415897, 22.033861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716839, 35.907982, 21.618193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696449, 36.250008, 21.411789>,  <41.684216, 36.455223, 21.287947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696449, 36.250008, 21.411789>,  <41.716839, 35.907982, 21.618193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696449, 36.250008, 21.411789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075120, -0.511933, -0.855735,
		-0.995871, -0.082383, -0.038137,
		-0.050974, 0.855066, -0.516008,
		41.681156, 36.506527, 21.256987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330013, 35.775269, 21.128565>,  <41.716839, 35.907982, 21.618193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330013, 35.775269, 21.128565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507366, 36.101871, 20.980661>,  <41.613777, 36.297832, 20.891920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507366, 36.101871, 20.980661>,  <41.330013, 35.775269, 21.128565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507366, 36.101871, 20.980661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266363, -0.513914, -0.815441,
		-0.855840, 0.263064, -0.445349,
		0.443384, 0.816511, -0.369757,
		41.640381, 36.346825, 20.869734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904961, 35.225815, 21.091347>,  <41.330013, 35.775269, 21.128565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904961, 35.225815, 21.091347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045250, 34.852497, 21.060463>,  <41.129425, 34.628506, 21.041933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045250, 34.852497, 21.060463>,  <40.904961, 35.225815, 21.091347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045250, 34.852497, 21.060463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323698, -0.198182, 0.925172,
		-0.878757, -0.299485, -0.371611,
		0.350722, -0.933291, -0.077211,
		41.150467, 34.572510, 21.037300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323250, 34.699505, 21.267429>,  <40.904961, 35.225815, 21.091347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323250, 34.699505, 21.267429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672337, 34.517693, 21.338715>,  <40.881790, 34.408604, 21.381485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672337, 34.517693, 21.338715>,  <40.323250, 34.699505, 21.267429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672337, 34.517693, 21.338715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387007, -0.421531, 0.820084,
		-0.297632, -0.784674, -0.543785,
		0.872720, -0.454532, 0.178213,
		40.934155, 34.381332, 21.392179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147472, 34.095886, 21.591015>,  <40.323250, 34.699505, 21.267429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147472, 34.095886, 21.591015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538017, 34.041737, 21.658415>,  <40.772343, 34.009247, 21.698854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538017, 34.041737, 21.658415>,  <40.147472, 34.095886, 21.591015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538017, 34.041737, 21.658415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216085, -0.593180, 0.775528,
		-0.005032, -0.793607, -0.608410,
		0.976362, -0.135371, 0.168502,
		40.830925, 34.001125, 21.708965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298119, 33.388512, 21.776787>,  <40.147472, 34.095886, 21.591015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298119, 33.388512, 21.776787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597450, 33.599915, 21.937134>,  <40.777050, 33.726757, 22.033342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597450, 33.599915, 21.937134>,  <40.298119, 33.388512, 21.776787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597450, 33.599915, 21.937134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200484, -0.395861, 0.896159,
		0.632310, -0.750985, -0.190276,
		0.748325, 0.528503, 0.400867,
		40.821949, 33.758465, 22.057394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648800, 32.902805, 22.264700>,  <40.298119, 33.388512, 21.776787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648800, 32.902805, 22.264700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758415, 33.271145, 22.375654>,  <40.824184, 33.492149, 22.442226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758415, 33.271145, 22.375654>,  <40.648800, 32.902805, 22.264700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758415, 33.271145, 22.375654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043474, -0.276270, 0.960096,
		0.960736, -0.275162, -0.035676,
		0.274038, 0.920848, 0.277385,
		40.840626, 33.547398, 22.458870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066124, 32.810574, 22.877481>,  <40.648800, 32.902805, 22.264700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066124, 32.810574, 22.877481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983253, 33.199558, 22.920193>,  <40.933529, 33.432949, 22.945820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983253, 33.199558, 22.920193>,  <41.066124, 32.810574, 22.877481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983253, 33.199558, 22.920193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004765, -0.110148, 0.993904,
		0.978292, 0.205406, 0.027454,
		-0.207178, 0.972459, 0.106778,
		40.921101, 33.491295, 22.952227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637924, 33.152328, 23.396614>,  <41.066124, 32.810574, 22.877481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637924, 33.152328, 23.396614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307178, 33.375088, 23.365225>,  <41.108730, 33.508743, 23.346392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307178, 33.375088, 23.365225>,  <41.637924, 33.152328, 23.396614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307178, 33.375088, 23.365225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047320, 0.070148, 0.996414,
		0.560410, 0.827610, -0.031650,
		-0.826863, 0.556902, -0.078474,
		41.059120, 33.542160, 23.341682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781940, 33.675880, 23.836443>,  <41.637924, 33.152328, 23.396614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781940, 33.675880, 23.836443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383503, 33.666637, 23.802361>,  <41.144440, 33.661091, 23.781912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383503, 33.666637, 23.802361>,  <41.781940, 33.675880, 23.836443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383503, 33.666637, 23.802361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088069, 0.193144, 0.977210,
		-0.006121, 0.980898, -0.194425,
		-0.996095, -0.023105, -0.085204,
		41.084675, 33.659706, 23.776800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526516, 34.242393, 24.162067>,  <41.781940, 33.675880, 23.836443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526516, 34.242393, 24.162067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217518, 33.988392, 24.164036>,  <41.032120, 33.835991, 24.165216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217518, 33.988392, 24.164036>,  <41.526516, 34.242393, 24.162067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217518, 33.988392, 24.164036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174781, 0.220065, 0.959700,
		-0.610492, 0.740504, -0.280985,
		-0.772497, -0.635000, 0.004922,
		40.985767, 33.797894, 24.165512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864437, 34.542526, 24.361040>,  <41.526516, 34.242393, 24.162067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864437, 34.542526, 24.361040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765545, 34.163658, 24.442766>,  <40.706207, 33.936337, 24.491802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765545, 34.163658, 24.442766>,  <40.864437, 34.542526, 24.361040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765545, 34.163658, 24.442766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406273, 0.292763, 0.865582,
		-0.879670, 0.130992, -0.457190,
		-0.247232, -0.947170, 0.204316,
		40.691376, 33.879509, 24.504061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162567, 34.496418, 24.608662>,  <40.864437, 34.542526, 24.361040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162567, 34.496418, 24.608662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329079, 34.159405, 24.745396>,  <40.428986, 33.957195, 24.827436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329079, 34.159405, 24.745396>,  <40.162567, 34.496418, 24.608662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329079, 34.159405, 24.745396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377865, 0.181651, 0.907866,
		-0.827003, -0.507090, -0.242748,
		0.416274, -0.842534, 0.341837,
		40.453960, 33.906643, 24.847946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496021, 34.019024, 24.811954>,  <40.162567, 34.496418, 24.608662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496021, 34.019024, 24.811954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827015, 33.877892, 24.986668>,  <40.025612, 33.793213, 25.091496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827015, 33.877892, 24.986668>,  <39.496021, 34.019024, 24.811954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827015, 33.877892, 24.986668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466236, 0.001695, 0.884659,
		-0.312876, -0.935686, -0.163100,
		0.827486, -0.352831, 0.436781,
		40.075260, 33.772041, 25.117702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292603, 33.467098, 25.244774>,  <39.496021, 34.019024, 24.811954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292603, 33.467098, 25.244774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639874, 33.607441, 25.385155>,  <39.848236, 33.691647, 25.469383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639874, 33.607441, 25.385155>,  <39.292603, 33.467098, 25.244774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639874, 33.607441, 25.385155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436594, 0.203823, 0.876266,
		0.235919, -0.913975, 0.330140,
		0.868175, 0.350865, 0.350950,
		39.900326, 33.712700, 25.490440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200558, 33.469501, 25.967125>,  <39.292603, 33.467098, 25.244774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200558, 33.469501, 25.967125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545139, 33.668766, 25.927658>,  <39.751888, 33.788326, 25.903978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545139, 33.668766, 25.927658>,  <39.200558, 33.469501, 25.967125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545139, 33.668766, 25.927658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165248, 0.458680, 0.873101,
		0.480211, -0.735825, 0.477450,
		0.861447, 0.498171, -0.098670,
		39.803574, 33.818214, 25.898058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580379, 33.267979, 26.506489>,  <39.200558, 33.469501, 25.967125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580379, 33.267979, 26.506489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720966, 33.619534, 26.377480>,  <39.805317, 33.830467, 26.300074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720966, 33.619534, 26.377480>,  <39.580379, 33.267979, 26.506489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720966, 33.619534, 26.377480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271877, 0.425475, 0.863165,
		0.895854, -0.215687, 0.388490,
		0.351466, 0.878892, -0.322523,
		39.826405, 33.883202, 26.280722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807896, 33.515938, 27.085634>,  <39.580379, 33.267979, 26.506489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807896, 33.515938, 27.085634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771400, 33.838013, 26.851248>,  <39.749504, 34.031258, 26.710617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771400, 33.838013, 26.851248>,  <39.807896, 33.515938, 27.085634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771400, 33.838013, 26.851248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394515, 0.511048, 0.763667,
		0.914349, 0.300844, 0.271033,
		-0.091234, 0.805185, -0.585964,
		39.744030, 34.079567, 26.675459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031109, 34.011639, 27.570726>,  <39.807896, 33.515938, 27.085634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031109, 34.011639, 27.570726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807758, 34.197147, 27.295586>,  <39.673748, 34.308453, 27.130501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807758, 34.197147, 27.295586>,  <40.031109, 34.011639, 27.570726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807758, 34.197147, 27.295586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493136, 0.481200, 0.724751,
		0.667111, 0.743884, -0.039987,
		-0.558373, 0.463770, -0.687850,
		39.640247, 34.336277, 27.089231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003441, 34.703785, 27.763487>,  <40.031109, 34.011639, 27.570726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003441, 34.703785, 27.763487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694687, 34.684792, 27.509890>,  <39.509434, 34.673397, 27.357731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694687, 34.684792, 27.509890>,  <40.003441, 34.703785, 27.763487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694687, 34.684792, 27.509890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519876, 0.621157, 0.586424,
		0.365964, 0.782246, -0.504144,
		-0.771881, -0.047482, -0.633992,
		39.463123, 34.670547, 27.319693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857800, 35.421303, 27.522322>,  <40.003441, 34.703785, 27.763487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857800, 35.421303, 27.522322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530762, 35.191010, 27.518852>,  <39.334538, 35.052834, 27.516769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530762, 35.191010, 27.518852>,  <39.857800, 35.421303, 27.522322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530762, 35.191010, 27.518852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392403, 0.546098, 0.740133,
		-0.421380, 0.608532, -0.672405,
		-0.817593, -0.575731, -0.008675,
		39.285484, 35.018291, 27.516251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256943, 35.875084, 27.367714>,  <39.857800, 35.421303, 27.522322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256943, 35.875084, 27.367714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161339, 35.543079, 27.569292>,  <39.103973, 35.343876, 27.690239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161339, 35.543079, 27.569292>,  <39.256943, 35.875084, 27.367714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161339, 35.543079, 27.569292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187946, 0.548716, 0.814609,
		-0.952653, 0.099989, -0.287148,
		-0.239015, -0.830008, 0.503943,
		39.089634, 35.294079, 27.720474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640423, 36.106976, 27.801186>,  <39.256943, 35.875084, 27.367714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640423, 36.106976, 27.801186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767467, 35.763611, 27.962309>,  <38.843693, 35.557590, 28.058983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767467, 35.763611, 27.962309>,  <38.640423, 36.106976, 27.801186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767467, 35.763611, 27.962309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328902, 0.298699, 0.895881,
		-0.889352, -0.417025, -0.187463,
		0.317610, -0.858411, 0.402809,
		38.862751, 35.506088, 28.083151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325630, 36.075825, 28.325750>,  <38.640423, 36.106976, 27.801186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325630, 36.075825, 28.325750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597500, 35.803410, 28.434729>,  <38.760624, 35.639961, 28.500116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597500, 35.803410, 28.434729>,  <38.325630, 36.075825, 28.325750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597500, 35.803410, 28.434729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289864, 0.091822, 0.952653,
		-0.673808, -0.726470, -0.134999,
		0.679678, -0.681037, 0.272448,
		38.801403, 35.599098, 28.516462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019543, 35.864391, 28.830593>,  <38.325630, 36.075825, 28.325750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019543, 35.864391, 28.830593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366978, 35.679600, 28.902294>,  <38.575439, 35.568726, 28.945314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366978, 35.679600, 28.902294>,  <38.019543, 35.864391, 28.830593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366978, 35.679600, 28.902294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131157, 0.134505, 0.982195,
		-0.477863, -0.876632, 0.056238,
		0.868588, -0.461978, 0.179251,
		38.627556, 35.541008, 28.956070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826122, 35.341312, 29.202940>,  <38.019543, 35.864391, 28.830593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826122, 35.341312, 29.202940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207104, 35.448738, 29.260489>,  <38.435692, 35.513195, 29.295017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207104, 35.448738, 29.260489>,  <37.826122, 35.341312, 29.202940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207104, 35.448738, 29.260489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213840, 0.252902, 0.943564,
		0.217025, -0.929469, 0.298308,
		0.952456, 0.268567, 0.143872,
		38.492840, 35.529308, 29.303650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898838, 35.170677, 29.860481>,  <37.826122, 35.341312, 29.202940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898838, 35.170677, 29.860481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235672, 35.376167, 29.794781>,  <38.437775, 35.499462, 29.755360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235672, 35.376167, 29.794781>,  <37.898838, 35.170677, 29.860481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235672, 35.376167, 29.794781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053306, 0.223776, 0.973182,
		0.536702, -0.828259, 0.161054,
		0.842086, 0.513723, -0.164253,
		38.488297, 35.530285, 29.745504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451298, 34.903545, 30.341141>,  <37.898838, 35.170677, 29.860481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451298, 34.903545, 30.341141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548923, 35.280815, 30.250931>,  <38.607498, 35.507175, 30.196804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548923, 35.280815, 30.250931>,  <38.451298, 34.903545, 30.341141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548923, 35.280815, 30.250931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153925, 0.191932, 0.969262,
		0.957465, -0.271277, -0.098334,
		0.244065, 0.943171, -0.225525,
		38.622143, 35.563766, 30.183273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077854, 34.995945, 30.649101>,  <38.451298, 34.903545, 30.341141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077854, 34.995945, 30.649101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952126, 35.368393, 30.575113>,  <38.876690, 35.591862, 30.530720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952126, 35.368393, 30.575113>,  <39.077854, 34.995945, 30.649101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952126, 35.368393, 30.575113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416202, 0.310283, 0.854693,
		0.853218, 0.191660, -0.485063,
		-0.314317, 0.931123, -0.184970,
		38.857830, 35.647732, 30.519623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660709, 35.440948, 30.632980>,  <39.077854, 34.995945, 30.649101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660709, 35.440948, 30.632980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327236, 35.626022, 30.753576>,  <39.127151, 35.737068, 30.825933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327236, 35.626022, 30.753576>,  <39.660709, 35.440948, 30.632980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327236, 35.626022, 30.753576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444671, 0.238685, 0.863306,
		0.327475, 0.853788, -0.404730,
		-0.833683, 0.462683, 0.301491,
		39.077133, 35.764828, 30.844023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980728, 36.003765, 30.924986>,  <39.660709, 35.440948, 30.632980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980728, 36.003765, 30.924986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611908, 36.012524, 31.079563>,  <39.390614, 36.017776, 31.172310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611908, 36.012524, 31.079563>,  <39.980728, 36.003765, 30.924986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611908, 36.012524, 31.079563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368058, 0.358594, 0.857872,
		-0.119794, 0.933237, -0.338701,
		-0.922053, 0.021893, 0.386443,
		39.335293, 36.019093, 31.195496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985176, 36.521427, 31.327623>,  <39.980728, 36.003765, 30.924986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985176, 36.521427, 31.327623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680851, 36.294563, 31.453787>,  <39.498257, 36.158443, 31.529486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680851, 36.294563, 31.453787>,  <39.985176, 36.521427, 31.327623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680851, 36.294563, 31.453787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258581, 0.180836, 0.948912,
		-0.595226, 0.803507, 0.009075,
		-0.760817, -0.567164, 0.315410,
		39.452606, 36.124413, 31.548410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719112, 36.897709, 31.885975>,  <39.985176, 36.521427, 31.327623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719112, 36.897709, 31.885975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551693, 36.536606, 31.925646>,  <39.451241, 36.319942, 31.949448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551693, 36.536606, 31.925646>,  <39.719112, 36.897709, 31.885975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551693, 36.536606, 31.925646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038458, 0.126722, 0.991192,
		-0.907379, 0.411050, -0.087758,
		-0.418550, -0.902762, 0.099177,
		39.426128, 36.265778, 31.955399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104164, 36.988461, 32.419033>,  <39.719112, 36.897709, 31.885975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104164, 36.988461, 32.419033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200100, 36.600140, 32.420551>,  <39.257660, 36.367146, 32.421463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200100, 36.600140, 32.420551>,  <39.104164, 36.988461, 32.419033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200100, 36.600140, 32.420551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244143, -0.056528, 0.968090,
		-0.939613, -0.233112, -0.250573,
		0.239838, -0.970806, 0.003798,
		39.272053, 36.308899, 32.421692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593578, 36.733913, 32.703880>,  <39.104164, 36.988461, 32.419033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593578, 36.733913, 32.703880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897083, 36.478840, 32.757004>,  <39.079185, 36.325798, 32.788879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897083, 36.478840, 32.757004>,  <38.593578, 36.733913, 32.703880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897083, 36.478840, 32.757004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220790, -0.059963, 0.973476,
		-0.612803, -0.767964, -0.186291,
		0.758765, -0.637680, 0.132813,
		39.124714, 36.287537, 32.796848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406731, 36.374634, 33.254665>,  <38.593578, 36.733913, 32.703880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406731, 36.374634, 33.254665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777420, 36.224384, 33.258438>,  <38.999832, 36.134235, 33.260704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777420, 36.224384, 33.258438>,  <38.406731, 36.374634, 33.254665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777420, 36.224384, 33.258438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000356, 0.024230, 0.999706,
		-0.375746, -0.926454, 0.022321,
		0.926723, -0.375627, 0.009435,
		39.055435, 36.111698, 33.261269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315968, 35.763367, 33.638855>,  <38.406731, 36.374634, 33.254665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315968, 35.763367, 33.638855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692154, 35.898205, 33.656204>,  <38.917866, 35.979107, 33.666615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692154, 35.898205, 33.656204>,  <38.315968, 35.763367, 33.638855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692154, 35.898205, 33.656204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082844, 0.103609, 0.991162,
		0.329627, -0.935751, 0.125368,
		0.940470, 0.337099, 0.043369,
		38.974297, 35.999332, 33.669216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589233, 35.293240, 34.135368>,  <38.315968, 35.763367, 33.638855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589233, 35.293240, 34.135368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795177, 35.635460, 34.113625>,  <38.918743, 35.840790, 34.100578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795177, 35.635460, 34.113625>,  <38.589233, 35.293240, 34.135368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795177, 35.635460, 34.113625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207413, 0.185847, 0.960438,
		0.831805, -0.483214, 0.273138,
		0.514859, 0.855549, -0.054364,
		38.949635, 35.892124, 34.097317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862579, 35.357269, 34.875031>,  <38.589233, 35.293240, 34.135368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862579, 35.357269, 34.875031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885529, 35.711216, 34.690113>,  <38.899300, 35.923584, 34.579163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885529, 35.711216, 34.690113>,  <38.862579, 35.357269, 34.875031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885529, 35.711216, 34.690113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361733, 0.450022, 0.816474,
		0.930515, 0.120383, 0.345905,
		0.057375, 0.884866, -0.462298,
		38.902740, 35.976677, 34.551422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107559, 35.821812, 35.364727>,  <38.862579, 35.357269, 34.875031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107559, 35.821812, 35.364727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932533, 36.062225, 35.097206>,  <38.827518, 36.206474, 34.936695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932533, 36.062225, 35.097206>,  <39.107559, 35.821812, 35.364727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932533, 36.062225, 35.097206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421722, 0.519736, 0.742984,
		0.794159, 0.607151, 0.026052,
		-0.437563, 0.601034, -0.668802,
		38.801266, 36.242535, 34.896564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119938, 36.423466, 35.704075>,  <39.107559, 35.821812, 35.364727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119938, 36.423466, 35.704075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844986, 36.477459, 35.418617>,  <38.680016, 36.509853, 35.247341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844986, 36.477459, 35.418617>,  <39.119938, 36.423466, 35.704075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844986, 36.477459, 35.418617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559712, 0.527721, 0.638931,
		0.462850, 0.838624, -0.287193,
		-0.687380, 0.134984, -0.713644,
		38.638771, 36.517956, 35.204525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975193, 37.117752, 35.740833>,  <39.119938, 36.423466, 35.704075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975193, 37.117752, 35.740833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656601, 36.972996, 35.547070>,  <38.465446, 36.886143, 35.430813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656601, 36.972996, 35.547070>,  <38.975193, 37.117752, 35.740833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656601, 36.972996, 35.547070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570768, 0.714423, 0.404752,
		0.199593, 0.598861, -0.775582,
		-0.796484, -0.361892, -0.484405,
		38.417656, 36.864429, 35.401749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782391, 37.081287, 35.659912>,  <38.975193, 37.117752, 35.740833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782391, 37.081287, 35.659912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145565, 36.961529, 35.542603>,  <40.363472, 36.889671, 35.472218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145565, 36.961529, 35.542603>,  <39.782391, 37.081287, 35.659912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145565, 36.961529, 35.542603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416738, 0.719190, 0.555964,
		0.044461, -0.626998, 0.777751,
		0.907939, -0.299400, -0.293270,
		40.417946, 36.871708, 35.454620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260994, 37.065685, 36.305599>,  <39.782391, 37.081287, 35.659912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260994, 37.065685, 36.305599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486607, 37.107079, 35.977901>,  <40.621975, 37.131916, 35.781281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486607, 37.107079, 35.977901>,  <40.260994, 37.065685, 36.305599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486607, 37.107079, 35.977901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570902, 0.667936, 0.477422,
		0.596610, -0.736989, 0.317655,
		0.564028, 0.103484, -0.819246,
		40.655815, 37.138123, 35.732128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955967, 37.084583, 36.537560>,  <40.260994, 37.065685, 36.305599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955967, 37.084583, 36.537560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977493, 37.249367, 36.173714>,  <40.990410, 37.348236, 35.955406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977493, 37.249367, 36.173714>,  <40.955967, 37.084583, 36.537560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977493, 37.249367, 36.173714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800143, 0.527181, 0.286097,
		0.597390, -0.743217, -0.301255,
		0.053816, 0.411958, -0.909612,
		40.993637, 37.372955, 35.900829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704830, 37.108456, 36.415596>,  <40.955967, 37.084583, 36.537560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704830, 37.108456, 36.415596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531158, 37.357838, 36.155510>,  <41.426956, 37.507469, 35.999458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531158, 37.357838, 36.155510>,  <41.704830, 37.108456, 36.415596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531158, 37.357838, 36.155510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724845, 0.670368, 0.158762,
		0.534868, -0.402376, -0.742974,
		-0.434184, 0.623458, -0.650219,
		41.400902, 37.544876, 35.960445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253475, 37.238029, 35.915176>,  <41.704830, 37.108456, 36.415596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253475, 37.238029, 35.915176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955189, 37.502441, 35.948544>,  <41.776218, 37.661087, 35.968563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955189, 37.502441, 35.948544>,  <42.253475, 37.238029, 35.915176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955189, 37.502441, 35.948544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631562, 0.661426, 0.404531,
		0.212233, 0.354345, -0.910712,
		-0.745712, 0.661026, 0.083415,
		41.731476, 37.700748, 35.973568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586212, 37.812008, 35.762863>,  <42.253475, 37.238029, 35.915176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586212, 37.812008, 35.762863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252892, 37.940483, 35.942844>,  <42.052898, 38.017567, 36.050831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252892, 37.940483, 35.942844>,  <42.586212, 37.812008, 35.762863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252892, 37.940483, 35.942844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518135, 0.737537, 0.433099,
		-0.192747, 0.594035, -0.781007,
		-0.833297, 0.321188, 0.449948,
		42.002903, 38.036839, 36.077827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597466, 38.521790, 35.531887>,  <42.586212, 37.812008, 35.762863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597466, 38.521790, 35.531887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392136, 38.498245, 35.874355>,  <42.268936, 38.484119, 36.079838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392136, 38.498245, 35.874355>,  <42.597466, 38.521790, 35.531887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392136, 38.498245, 35.874355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563491, 0.729347, 0.387983,
		-0.647284, 0.681607, -0.341225,
		-0.513323, -0.058858, 0.856175,
		42.238140, 38.480587, 36.131207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419037, 39.257504, 35.778732>,  <42.597466, 38.521790, 35.531887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419037, 39.257504, 35.778732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403057, 39.020817, 36.100796>,  <42.393467, 38.878807, 36.294033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403057, 39.020817, 36.100796>,  <42.419037, 39.257504, 35.778732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403057, 39.020817, 36.100796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605371, 0.626742, 0.490633,
		-0.794940, 0.507021, 0.333166,
		-0.039953, -0.591713, 0.805158,
		42.391071, 38.843304, 36.342342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069492, 39.640354, 36.270721>,  <42.419037, 39.257504, 35.778732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069492, 39.640354, 36.270721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332623, 39.367405, 36.398235>,  <42.490501, 39.203636, 36.474743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332623, 39.367405, 36.398235>,  <42.069492, 39.640354, 36.270721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332623, 39.367405, 36.398235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499237, 0.711973, 0.493819,
		-0.563938, -0.165698, 0.809023,
		0.657827, -0.682378, 0.318786,
		42.529972, 39.162693, 36.493870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136856, 39.796284, 36.946674>,  <42.069492, 39.640354, 36.270721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136856, 39.796284, 36.946674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465042, 39.591038, 36.845840>,  <42.661953, 39.467888, 36.785339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465042, 39.591038, 36.845840>,  <42.136856, 39.796284, 36.946674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465042, 39.591038, 36.845840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569776, 0.770022, 0.287091,
		0.046798, -0.379179, 0.924139,
		0.820467, -0.513117, -0.252082,
		42.711182, 39.437103, 36.770214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647560, 39.714714, 37.451263>,  <42.136856, 39.796284, 36.946674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647560, 39.714714, 37.451263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842541, 39.723289, 37.102108>,  <42.959530, 39.728436, 36.892616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842541, 39.723289, 37.102108>,  <42.647560, 39.714714, 37.451263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842541, 39.723289, 37.102108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359689, 0.906004, 0.223116,
		0.795623, -0.422726, 0.433922,
		0.487451, 0.021439, -0.872887,
		42.988777, 39.729721, 36.840240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768501, 39.016571, 37.549538>,  <42.647560, 39.714714, 37.451263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768501, 39.016571, 37.549538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027470, 39.116276, 37.261448>,  <43.182850, 39.176098, 37.088596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027470, 39.116276, 37.261448>,  <42.768501, 39.016571, 37.549538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027470, 39.116276, 37.261448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593274, 0.428371, 0.681560,
		0.478408, -0.868543, 0.129455,
		0.647419, 0.249262, -0.720220,
		43.221695, 39.191055, 37.045383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473892, 38.851639, 37.782871>,  <42.768501, 39.016571, 37.549538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473892, 38.851639, 37.782871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512035, 39.150600, 37.519878>,  <43.534924, 39.329979, 37.362083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512035, 39.150600, 37.519878>,  <43.473892, 38.851639, 37.782871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512035, 39.150600, 37.519878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621722, 0.471108, 0.625714,
		0.777411, -0.468443, -0.419755,
		0.095361, 0.747408, -0.657486,
		43.540646, 39.374825, 37.322632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235249, 38.868885, 37.654232>,  <43.473892, 38.851639, 37.782871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235249, 38.868885, 37.654232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063328, 39.220181, 37.570370>,  <43.960175, 39.430958, 37.520050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063328, 39.220181, 37.570370>,  <44.235249, 38.868885, 37.654232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063328, 39.220181, 37.570370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577693, 0.445931, 0.683678,
		0.693929, 0.172729, -0.699019,
		-0.429805, 0.878242, -0.209660,
		43.934387, 39.483654, 37.507473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735565, 39.278496, 37.351433>,  <44.235249, 38.868885, 37.654232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735565, 39.278496, 37.351433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452999, 39.480545, 37.549759>,  <44.283459, 39.601772, 37.668755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452999, 39.480545, 37.549759>,  <44.735565, 39.278496, 37.351433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452999, 39.480545, 37.549759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643431, 0.166404, 0.747199,
		0.294919, 0.846855, -0.442560,
		-0.706413, 0.505120, 0.495817,
		44.241074, 39.632080, 37.698505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060257, 39.901264, 37.700157>,  <44.735565, 39.278496, 37.351433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060257, 39.901264, 37.700157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705555, 39.856598, 37.879574>,  <44.492733, 39.829796, 37.987225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705555, 39.856598, 37.879574>,  <45.060257, 39.901264, 37.700157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705555, 39.856598, 37.879574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424476, 0.187408, 0.885832,
		-0.182980, 0.975914, -0.118785,
		-0.886757, -0.111668, 0.448544,
		44.439529, 39.823097, 38.014137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994225, 40.394787, 38.190628>,  <45.060257, 39.901264, 37.700157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994225, 40.394787, 38.190628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759575, 40.093784, 38.310364>,  <44.618786, 39.913181, 38.382206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759575, 40.093784, 38.310364>,  <44.994225, 40.394787, 38.190628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759575, 40.093784, 38.310364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394731, 0.057065, 0.917023,
		-0.707147, 0.656108, 0.263562,
		-0.586626, -0.752506, 0.299340,
		44.583588, 39.868034, 38.400166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775234, 40.679287, 38.750286>,  <44.994225, 40.394787, 38.190628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775234, 40.679287, 38.750286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719234, 40.283813, 38.771854>,  <44.685635, 40.046532, 38.784794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719234, 40.283813, 38.771854>,  <44.775234, 40.679287, 38.750286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719234, 40.283813, 38.771854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409475, -0.008233, 0.912284,
		-0.901515, 0.149800, 0.405993,
		-0.140003, -0.988682, 0.053917,
		44.677235, 39.987209, 38.788029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419502, 40.449348, 39.377518>,  <44.775234, 40.679287, 38.750286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419502, 40.449348, 39.377518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606945, 40.114178, 39.265594>,  <44.719410, 39.913074, 39.198441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606945, 40.114178, 39.265594>,  <44.419502, 40.449348, 39.377518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606945, 40.114178, 39.265594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492356, -0.015259, 0.870260,
		-0.733481, -0.545575, 0.405406,
		0.468606, -0.837923, -0.279809,
		44.747528, 39.862801, 39.181652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555313, 40.036484, 40.080410>,  <44.419502, 40.449348, 39.377518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555313, 40.036484, 40.080410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783501, 39.896088, 39.783394>,  <44.920414, 39.811848, 39.605183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783501, 39.896088, 39.783394>,  <44.555313, 40.036484, 40.080410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783501, 39.896088, 39.783394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821081, 0.222040, 0.525856,
		-0.019698, -0.909672, 0.414861,
		0.570472, -0.350993, -0.742540,
		44.954643, 39.790791, 39.560631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998463, 39.664967, 40.420574>,  <44.555313, 40.036484, 40.080410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998463, 39.664967, 40.420574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178452, 39.740902, 40.071522>,  <45.286446, 39.786465, 39.862091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178452, 39.740902, 40.071522>,  <44.998463, 39.664967, 40.420574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178452, 39.740902, 40.071522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822741, 0.291889, 0.487749,
		0.347307, -0.937422, -0.024850,
		0.449973, 0.189844, -0.872630,
		45.313442, 39.797855, 39.809734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684505, 39.352203, 40.325413>,  <44.998463, 39.664967, 40.420574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684505, 39.352203, 40.325413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641045, 39.693329, 40.121094>,  <45.614967, 39.898003, 39.998505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641045, 39.693329, 40.121094>,  <45.684505, 39.352203, 40.325413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641045, 39.693329, 40.121094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814208, 0.371142, 0.446452,
		0.570315, -0.367382, -0.734691,
		-0.108657, 0.852810, -0.510793,
		45.608448, 39.949173, 39.967857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.349434, 39.468063, 39.902931>,  <45.684505, 39.352203, 40.325413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.349434, 39.468063, 39.902931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134922, 39.802925, 39.945988>,  <46.006214, 40.003841, 39.971821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134922, 39.802925, 39.945988>,  <46.349434, 39.468063, 39.902931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134922, 39.802925, 39.945988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808833, 0.473258, 0.349023,
		0.241244, 0.274234, -0.930912,
		-0.536275, 0.837152, 0.107638,
		45.974041, 40.054070, 39.978279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774323, 39.923729, 39.598194>,  <46.349434, 39.468063, 39.902931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774323, 39.923729, 39.598194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515648, 40.145393, 39.807842>,  <46.360443, 40.278393, 39.933632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515648, 40.145393, 39.807842>,  <46.774323, 39.923729, 39.598194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.515648, 40.145393, 39.807842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719103, 0.672072, 0.176663,
		-0.254349, 0.491144, -0.833117,
		-0.646682, 0.554163, 0.524124,
		46.321644, 40.311642, 39.965080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077328, 39.983814, 39.403866>,  <46.774323, 39.923729, 39.598194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077328, 39.983814, 39.403866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849010, 39.677898, 39.523399>,  <45.712021, 39.494350, 39.595119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849010, 39.677898, 39.523399>,  <46.077328, 39.983814, 39.403866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849010, 39.677898, 39.523399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644097, 0.191313, -0.740634,
		0.509254, -0.615226, -0.601795,
		-0.570789, -0.764785, 0.298838,
		45.677773, 39.448463, 39.613052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847836, 39.297642, 38.900871>,  <46.077328, 39.983814, 39.403866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847836, 39.297642, 38.900871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531200, 39.353210, 39.138893>,  <45.341221, 39.386551, 39.281704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531200, 39.353210, 39.138893>,  <45.847836, 39.297642, 38.900871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531200, 39.353210, 39.138893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601067, -0.001682, -0.799197,
		-0.110024, -0.990302, 0.084832,
		-0.791589, 0.138920, 0.595052,
		45.293724, 39.394886, 39.317410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278446, 38.818115, 38.671444>,  <45.847836, 39.297642, 38.900871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278446, 38.818115, 38.671444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110340, 39.122173, 38.869656>,  <45.009476, 39.304607, 38.988583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110340, 39.122173, 38.869656>,  <45.278446, 38.818115, 38.671444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110340, 39.122173, 38.869656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742622, 0.025684, -0.669218,
		-0.521433, -0.649241, 0.553709,
		-0.420263, 0.760149, 0.495533,
		44.984261, 39.350216, 39.018314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558079, 38.590874, 38.795551>,  <45.278446, 38.818115, 38.671444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558079, 38.590874, 38.795551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583961, 38.989788, 38.809601>,  <44.599491, 39.229137, 38.818031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583961, 38.989788, 38.809601>,  <44.558079, 38.590874, 38.795551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583961, 38.989788, 38.809601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742008, 0.071619, -0.666555,
		-0.667262, 0.017063, 0.744628,
		0.064702, 0.997286, 0.035128,
		44.603371, 39.288975, 38.820141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932026, 38.863029, 38.921501>,  <44.558079, 38.590874, 38.795551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932026, 38.863029, 38.921501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123821, 39.161190, 38.736256>,  <44.238899, 39.340084, 38.625107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123821, 39.161190, 38.736256>,  <43.932026, 38.863029, 38.921501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123821, 39.161190, 38.736256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765562, 0.097332, -0.635958,
		-0.428964, 0.659477, 0.617316,
		0.479484, 0.745397, -0.463118,
		44.267666, 39.384808, 38.597321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411942, 39.243290, 38.626896>,  <43.932026, 38.863029, 38.921501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411942, 39.243290, 38.626896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731232, 39.443638, 38.493050>,  <43.922806, 39.563847, 38.412743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731232, 39.443638, 38.493050>,  <43.411942, 39.243290, 38.626896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731232, 39.443638, 38.493050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471483, 0.173800, -0.864579,
		-0.374883, 0.847895, 0.374882,
		0.798227, 0.500867, -0.334613,
		43.970699, 39.593899, 38.392666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282650, 39.984772, 38.477226>,  <43.411942, 39.243290, 38.626896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282650, 39.984772, 38.477226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577057, 39.847763, 38.243660>,  <43.753700, 39.765556, 38.103519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577057, 39.847763, 38.243660>,  <43.282650, 39.984772, 38.477226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577057, 39.847763, 38.243660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553601, 0.191887, -0.810373,
		0.389616, 0.919705, -0.048388,
		0.736020, -0.342522, -0.583912,
		43.797863, 39.745007, 38.068485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250080, 40.291653, 37.726971>,  <43.282650, 39.984772, 38.477226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250080, 40.291653, 37.726971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639843, 40.243080, 37.651299>,  <43.873699, 40.213936, 37.605896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639843, 40.243080, 37.651299>,  <43.250080, 40.291653, 37.726971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639843, 40.243080, 37.651299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220743, -0.357715, -0.907366,
		0.042508, 0.925902, -0.375364,
		0.974405, -0.121429, -0.189180,
		43.932163, 40.206650, 37.594543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509975, 40.624825, 37.135269>,  <43.250080, 40.291653, 37.726971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509975, 40.624825, 37.135269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622673, 40.260509, 37.255997>,  <43.690292, 40.041920, 37.328434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622673, 40.260509, 37.255997>,  <43.509975, 40.624825, 37.135269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622673, 40.260509, 37.255997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545549, -0.410826, -0.730478,
		0.789301, 0.041154, -0.612626,
		0.281745, -0.910785, 0.301815,
		43.707195, 39.987274, 37.346542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768528, 40.338413, 36.471718>,  <43.509975, 40.624825, 37.135269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768528, 40.338413, 36.471718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679173, 40.046261, 36.729912>,  <43.625561, 39.870972, 36.884827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679173, 40.046261, 36.729912>,  <43.768528, 40.338413, 36.471718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679173, 40.046261, 36.729912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410313, -0.530222, -0.741962,
		0.884161, -0.430593, -0.181240,
		-0.223386, -0.730379, 0.645480,
		43.612156, 39.827148, 36.923557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964333, 39.548775, 36.215076>,  <43.768528, 40.338413, 36.471718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964333, 39.548775, 36.215076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665493, 39.530006, 36.480301>,  <43.486191, 39.518745, 36.639435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665493, 39.530006, 36.480301>,  <43.964333, 39.548775, 36.215076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665493, 39.530006, 36.480301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389433, -0.777493, -0.493808,
		0.538693, -0.627138, 0.562590,
		-0.747096, -0.046920, 0.663058,
		43.441364, 39.515930, 36.679218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709354, 38.830776, 36.260395>,  <43.964333, 39.548775, 36.215076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709354, 38.830776, 36.260395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404514, 39.027744, 36.428547>,  <43.221611, 39.145924, 36.529438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404514, 39.027744, 36.428547>,  <43.709354, 38.830776, 36.260395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404514, 39.027744, 36.428547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609060, -0.765510, -0.207460,
		0.219651, -0.414145, 0.883311,
		-0.762102, 0.492420, 0.420384,
		43.175884, 39.175472, 36.554661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454769, 38.407612, 36.908970>,  <43.709354, 38.830776, 36.260395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454769, 38.407612, 36.908970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187298, 38.643478, 36.727791>,  <43.026814, 38.785000, 36.619083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187298, 38.643478, 36.727791>,  <43.454769, 38.407612, 36.908970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187298, 38.643478, 36.727791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601978, -0.786894, -0.135722,
		-0.436455, 0.181913, 0.881144,
		-0.668677, 0.589666, -0.452952,
		42.986694, 38.820377, 36.591904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841999, 38.068565, 37.277969>,  <43.454769, 38.407612, 36.908970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841999, 38.068565, 37.277969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685760, 38.418949, 37.164738>,  <42.592018, 38.629177, 37.096798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685760, 38.418949, 37.164738>,  <42.841999, 38.068565, 37.277969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685760, 38.418949, 37.164738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525049, -0.464574, -0.713088,
		-0.756145, -0.129899, 0.641382,
		-0.390599, 0.875955, -0.283082,
		42.568581, 38.681736, 37.079815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165829, 38.192204, 37.422752>,  <42.841999, 38.068565, 37.277969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165829, 38.192204, 37.422752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254784, 38.386536, 37.084637>,  <42.308159, 38.503136, 36.881767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254784, 38.386536, 37.084637>,  <42.165829, 38.192204, 37.422752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254784, 38.386536, 37.084637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766243, -0.448991, -0.459651,
		-0.602838, 0.749920, 0.272409,
		0.222392, 0.485827, -0.845289,
		42.321503, 38.532284, 36.831051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434330, 38.472954, 37.168480>,  <42.165829, 38.192204, 37.422752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434330, 38.472954, 37.168480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701733, 38.434097, 36.873543>,  <41.862175, 38.410786, 36.696583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701733, 38.434097, 36.873543>,  <41.434330, 38.472954, 37.168480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701733, 38.434097, 36.873543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704350, -0.400954, -0.585771,
		-0.238738, 0.910934, -0.336459,
		0.668503, -0.097139, -0.737339,
		41.902283, 38.404957, 36.652340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996078, 38.458488, 36.601330>,  <41.434330, 38.472954, 37.168480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996078, 38.458488, 36.601330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315983, 38.390751, 36.370953>,  <41.507927, 38.350109, 36.232727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315983, 38.390751, 36.370953>,  <40.996078, 38.458488, 36.601330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315983, 38.390751, 36.370953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521372, -0.671510, -0.526541,
		-0.297583, 0.721385, -0.625338,
		0.799760, -0.169344, -0.575940,
		41.555912, 38.339947, 36.198170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770168, 38.548023, 35.944218>,  <40.996078, 38.458488, 36.601330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770168, 38.548023, 35.944218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075298, 38.289982, 35.961838>,  <41.258377, 38.135159, 35.972408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075298, 38.289982, 35.961838>,  <40.770168, 38.548023, 35.944218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075298, 38.289982, 35.961838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559426, -0.692606, -0.455346,
		0.324255, 0.322706, -0.889224,
		0.762825, -0.645103, 0.044051,
		41.304146, 38.096451, 35.975052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736145, 38.324661, 35.272995>,  <40.770168, 38.548023, 35.944218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736145, 38.324661, 35.272995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987171, 38.083141, 35.469601>,  <41.137787, 37.938229, 35.587566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987171, 38.083141, 35.469601>,  <40.736145, 38.324661, 35.272995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987171, 38.083141, 35.469601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388412, -0.789945, -0.474471,
		0.674755, 0.106851, -0.730266,
		0.627568, -0.603795, 0.491517,
		41.175442, 37.902004, 35.617054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068295, 37.940632, 34.735538>,  <40.736145, 38.324661, 35.272995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068295, 37.940632, 34.735538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059723, 37.752537, 35.088451>,  <41.054581, 37.639679, 35.300198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059723, 37.752537, 35.088451>,  <41.068295, 37.940632, 34.735538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059723, 37.752537, 35.088451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448285, -0.784278, -0.428893,
		0.893634, -0.404701, -0.193998,
		-0.021425, -0.470240, 0.882279,
		41.053295, 37.611465, 35.353134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307224, 37.280998, 34.616531>,  <41.068295, 37.940632, 34.735538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307224, 37.280998, 34.616531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118198, 37.221474, 34.963989>,  <41.004784, 37.185757, 35.172462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118198, 37.221474, 34.963989>,  <41.307224, 37.280998, 34.616531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118198, 37.221474, 34.963989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310739, -0.894204, -0.322242,
		0.824697, -0.422200, 0.376326,
		-0.472564, -0.148813, 0.868642,
		40.976429, 37.176830, 35.224583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626381, 36.666561, 35.041080>,  <41.307224, 37.280998, 34.616531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626381, 36.666561, 35.041080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241837, 36.726898, 35.133198>,  <41.011112, 36.763100, 35.188469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241837, 36.726898, 35.133198>,  <41.626381, 36.666561, 35.041080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241837, 36.726898, 35.133198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198719, -0.959159, -0.201306,
		0.190524, -0.239292, 0.952072,
		-0.961359, 0.150841, 0.230294,
		40.953430, 36.772152, 35.202286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446327, 35.923733, 35.382370>,  <41.626381, 36.666561, 35.041080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446327, 35.923733, 35.382370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090183, 35.866737, 35.209415>,  <40.876499, 35.832539, 35.105640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090183, 35.866737, 35.209415>,  <41.446327, 35.923733, 35.382370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090183, 35.866737, 35.209415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103185, 0.861880, -0.496504,
		0.443416, -0.486681, -0.752677,
		-0.890357, -0.142492, -0.432390,
		40.823078, 35.823990, 35.079697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891766, 35.801510, 35.880547>,  <41.446327, 35.923733, 35.382370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891766, 35.801510, 35.880547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699444, 35.487411, 36.036610>,  <40.584053, 35.298954, 36.130249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699444, 35.487411, 36.036610>,  <40.891766, 35.801510, 35.880547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699444, 35.487411, 36.036610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334719, 0.246898, 0.909398,
		-0.810428, 0.567833, 0.144128,
		-0.480801, -0.785244, 0.390157,
		40.555202, 35.251839, 36.153656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331493, 35.263882, 36.150787>,  <40.891766, 35.801510, 35.880547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331493, 35.263882, 36.150787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708138, 35.208279, 36.273453>,  <41.934124, 35.174919, 36.347054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708138, 35.208279, 36.273453>,  <41.331493, 35.263882, 36.150787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708138, 35.208279, 36.273453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333363, 0.257014, -0.907090,
		0.047271, 0.956359, 0.288346,
		0.941613, -0.139003, 0.306665,
		41.990620, 35.166576, 36.365452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786049, 35.886551, 36.056297>,  <41.331493, 35.263882, 36.150787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786049, 35.886551, 36.056297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991673, 35.544113, 36.034946>,  <42.115047, 35.338650, 36.022137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991673, 35.544113, 36.034946>,  <41.786049, 35.886551, 36.056297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991673, 35.544113, 36.034946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372072, 0.278621, -0.885400,
		0.772854, 0.435291, 0.461756,
		0.514061, -0.856091, -0.053373,
		42.145889, 35.287285, 36.018936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308178, 35.964684, 35.560207>,  <41.786049, 35.886551, 36.056297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308178, 35.964684, 35.560207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378887, 35.574787, 35.614796>,  <42.421310, 35.340847, 35.647549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378887, 35.574787, 35.614796>,  <42.308178, 35.964684, 35.560207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378887, 35.574787, 35.614796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647426, 0.010722, -0.762053,
		0.741345, 0.223060, 0.632971,
		0.176771, -0.974746, 0.136466,
		42.431919, 35.282364, 35.655735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128235, 35.764004, 35.707024>,  <42.308178, 35.964684, 35.560207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128235, 35.764004, 35.707024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901466, 35.510143, 35.496948>,  <42.765408, 35.357826, 35.370903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901466, 35.510143, 35.496948>,  <43.128235, 35.764004, 35.707024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901466, 35.510143, 35.496948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515898, 0.223500, -0.826981,
		0.642225, -0.739773, 0.200710,
		-0.566919, -0.634653, -0.525185,
		42.731392, 35.319748, 35.339394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470459, 35.115204, 35.329792>,  <43.128235, 35.764004, 35.707024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470459, 35.115204, 35.329792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176064, 35.248821, 35.094257>,  <42.999424, 35.328991, 34.952934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176064, 35.248821, 35.094257>,  <43.470459, 35.115204, 35.329792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176064, 35.248821, 35.094257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674165, 0.282241, -0.682526,
		-0.061798, -0.899309, -0.432926,
		-0.735991, 0.334042, -0.588841,
		42.955265, 35.349033, 34.917606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802437, 35.270775, 34.785400>,  <43.470459, 35.115204, 35.329792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802437, 35.270775, 34.785400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444695, 35.430801, 34.705326>,  <43.230049, 35.526817, 34.657280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444695, 35.430801, 34.705326>,  <43.802437, 35.270775, 34.785400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444695, 35.430801, 34.705326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395211, 0.496913, -0.772584,
		-0.209609, -0.770081, -0.602528,
		-0.894356, 0.400066, -0.200187,
		43.176388, 35.550819, 34.645271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618603, 35.163059, 34.129948>,  <43.802437, 35.270775, 34.785400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618603, 35.163059, 34.129948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451317, 35.503487, 34.256927>,  <43.350945, 35.707745, 34.333115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451317, 35.503487, 34.256927>,  <43.618603, 35.163059, 34.129948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451317, 35.503487, 34.256927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580125, 0.519176, -0.627623,
		-0.698963, -0.078324, -0.710856,
		-0.418217, 0.851071, 0.317447,
		43.325851, 35.758808, 34.352161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301746, 35.650738, 33.570335>,  <43.618603, 35.163059, 34.129948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301746, 35.650738, 33.570335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404648, 35.895885, 33.869190>,  <43.466389, 36.042973, 34.048504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404648, 35.895885, 33.869190>,  <43.301746, 35.650738, 33.570335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404648, 35.895885, 33.869190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534533, 0.553856, -0.638372,
		-0.805045, 0.563591, -0.185119,
		0.257251, 0.612870, 0.747136,
		43.481823, 36.079746, 34.093330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658970, 36.301270, 33.234913>,  <43.301746, 35.650738, 33.570335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658970, 36.301270, 33.234913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684200, 36.594700, 32.964245>,  <43.699341, 36.770760, 32.801846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684200, 36.594700, 32.964245>,  <43.658970, 36.301270, 33.234913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684200, 36.594700, 32.964245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751774, 0.411011, 0.515660,
		0.656397, -0.541229, -0.525561,
		0.063079, 0.733581, -0.676669,
		43.703125, 36.814774, 32.761246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181904, 36.409935, 32.770844>,  <43.658970, 36.301270, 33.234913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181904, 36.409935, 32.770844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015186, 36.761757, 32.862637>,  <43.915157, 36.972851, 32.917713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015186, 36.761757, 32.862637>,  <44.181904, 36.409935, 32.770844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015186, 36.761757, 32.862637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784243, 0.220289, 0.580030,
		0.459616, 0.421726, -0.781601,
		-0.416792, 0.879557, 0.229487,
		43.890148, 37.025623, 32.931484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744682, 36.817303, 32.869331>,  <44.181904, 36.409935, 32.770844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744682, 36.817303, 32.869331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452446, 37.018272, 33.054287>,  <44.277103, 37.138855, 33.165260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452446, 37.018272, 33.054287>,  <44.744682, 36.817303, 32.869331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452446, 37.018272, 33.054287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651463, 0.310063, 0.692428,
		0.204527, 0.807110, -0.553844,
		-0.730592, 0.502429, 0.462386,
		44.233269, 37.169003, 33.193005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738991, 36.733181, 33.664196>,  <44.744682, 36.817303, 32.869331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738991, 36.733181, 33.664196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583004, 36.449093, 33.898636>,  <44.489410, 36.278641, 34.039299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583004, 36.449093, 33.898636>,  <44.738991, 36.733181, 33.664196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583004, 36.449093, 33.898636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600615, -0.678645, -0.422732,
		0.697988, 0.187171, 0.691216,
		-0.389967, -0.710217, 0.586103,
		44.466015, 36.236027, 34.074467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352409, 36.312584, 33.857662>,  <44.738991, 36.733181, 33.664196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352409, 36.312584, 33.857662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999214, 36.124851, 33.860500>,  <44.787296, 36.012211, 33.862202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999214, 36.124851, 33.860500>,  <45.352409, 36.312584, 33.857662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999214, 36.124851, 33.860500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379492, -0.722697, -0.577664,
		0.276245, -0.507380, 0.816244,
		-0.882991, -0.469335, 0.007095,
		44.734318, 35.984051, 33.862629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946167, 35.758453, 33.800430>,  <45.352409, 36.312584, 33.857662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946167, 35.758453, 33.800430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201698, 35.493958, 33.643124>,  <46.355019, 35.335262, 33.548740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201698, 35.493958, 33.643124>,  <45.946167, 35.758453, 33.800430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201698, 35.493958, 33.643124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442095, -0.102832, 0.891054,
		-0.629638, -0.743096, 0.226638,
		0.638833, -0.661237, -0.393266,
		46.393349, 35.295586, 33.525143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.017094, 35.220062, 34.289860>,  <45.946167, 35.758453, 33.800430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.017094, 35.220062, 34.289860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334724, 35.213184, 34.046833>,  <46.525303, 35.209057, 33.901016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334724, 35.213184, 34.046833>,  <46.017094, 35.220062, 34.289860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334724, 35.213184, 34.046833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593981, -0.190074, 0.781702,
		-0.128926, -0.981619, -0.140720,
		0.794081, -0.017196, -0.607569,
		46.572948, 35.208023, 33.864563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424007, 34.531776, 34.322857>,  <46.017094, 35.220062, 34.289860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424007, 34.531776, 34.322857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655041, 34.838417, 34.210632>,  <46.793663, 35.022400, 34.143295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655041, 34.838417, 34.210632>,  <46.424007, 34.531776, 34.322857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655041, 34.838417, 34.210632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622939, -0.191783, 0.758397,
		0.527579, -0.612816, -0.588317,
		0.577588, 0.766600, -0.280566,
		46.828316, 35.068398, 34.126461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.143517, 34.402794, 34.099377>,  <46.424007, 34.531776, 34.322857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.143517, 34.402794, 34.099377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131245, 34.741871, 34.311218>,  <47.123882, 34.945316, 34.438324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131245, 34.741871, 34.311218>,  <47.143517, 34.402794, 34.099377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131245, 34.741871, 34.311218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422106, -0.469298, 0.775619,
		0.906027, 0.247343, -0.343419,
		-0.030678, 0.847691, 0.529602,
		47.122040, 34.996178, 34.470100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.815704, 34.453411, 34.330978>,  <47.143517, 34.402794, 34.099377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.815704, 34.453411, 34.330978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558243, 34.632038, 34.579586>,  <47.403767, 34.739216, 34.728752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558243, 34.632038, 34.579586>,  <47.815704, 34.453411, 34.330978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.558243, 34.632038, 34.579586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577334, -0.249782, 0.777364,
		0.502390, 0.859178, -0.097046,
		-0.643653, 0.446567, 0.621521,
		47.365147, 34.766006, 34.766041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.035702, 35.012432, 34.872181>,  <47.815704, 34.453411, 34.330978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.035702, 35.012432, 34.872181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720257, 34.799679, 34.995594>,  <47.530991, 34.672028, 35.069641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720257, 34.799679, 34.995594>,  <48.035702, 35.012432, 34.872181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720257, 34.799679, 34.995594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542153, -0.364722, 0.756999,
		-0.290106, 0.764251, 0.575985,
		-0.788612, -0.531882, 0.308533,
		47.483673, 34.640114, 35.088154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.540573, 34.447945, 25.281471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410389, 34.825157, 25.253855>,  <35.332279, 35.051483, 25.237286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410389, 34.825157, 25.253855>,  <35.540573, 34.447945, 25.281471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410389, 34.825157, 25.253855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330630, -0.045092, 0.942683,
		0.885865, 0.329636, 0.326470,
		-0.325463, 0.943031, -0.069042,
		35.312752, 35.108067, 25.233143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869453, 34.827446, 25.878281>,  <35.540573, 34.447945, 25.281471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869453, 34.827446, 25.878281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539127, 35.021816, 25.763809>,  <35.340931, 35.138439, 25.695126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539127, 35.021816, 25.763809>,  <35.869453, 34.827446, 25.878281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539127, 35.021816, 25.763809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243819, 0.149928, 0.958161,
		0.508501, 0.861045, -0.005336,
		-0.825820, 0.485926, -0.286178,
		35.291382, 35.167595, 25.677956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796730, 35.531525, 26.269516>,  <35.869453, 34.827446, 25.878281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796730, 35.531525, 26.269516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438759, 35.414345, 26.134888>,  <35.223976, 35.344036, 26.054111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438759, 35.414345, 26.134888>,  <35.796730, 35.531525, 26.269516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438759, 35.414345, 26.134888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317596, -0.111620, 0.941634,
		-0.313417, 0.949591, 0.006853,
		-0.894932, -0.292948, -0.336569,
		35.170280, 35.326462, 26.033916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328403, 35.986465, 26.648727>,  <35.796730, 35.531525, 26.269516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328403, 35.986465, 26.648727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078701, 35.705574, 26.511797>,  <34.928879, 35.537041, 26.429638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078701, 35.705574, 26.511797>,  <35.328403, 35.986465, 26.648727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078701, 35.705574, 26.511797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470608, -0.011736, 0.882264,
		-0.623565, 0.711859, -0.323146,
		-0.624255, -0.702224, -0.342325,
		34.891426, 35.494907, 26.409100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667892, 36.241478, 26.720398>,  <35.328403, 35.986465, 26.648727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667892, 36.241478, 26.720398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.613895, 35.845444, 26.704826>,  <34.581497, 35.607822, 26.695484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.613895, 35.845444, 26.704826>,  <34.667892, 36.241478, 26.720398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613895, 35.845444, 26.704826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531112, 0.039137, 0.846397,
		-0.836478, 0.134936, -0.531127,
		-0.134996, -0.990081, -0.038928,
		34.573395, 35.548420, 26.693148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962135, 36.081291, 26.930719>,  <34.667892, 36.241478, 26.720398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962135, 36.081291, 26.930719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.123745, 35.718407, 26.977589>,  <34.220711, 35.500675, 27.005711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.123745, 35.718407, 26.977589>,  <33.962135, 36.081291, 26.930719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123745, 35.718407, 26.977589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536423, -0.131217, 0.833686,
		-0.740956, -0.399683, -0.539664,
		0.404023, -0.907213, 0.117173,
		34.244953, 35.446243, 27.012741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434792, 35.503178, 27.060728>,  <33.962135, 36.081291, 26.930719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434792, 35.503178, 27.060728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.783928, 35.401569, 27.227400>,  <33.993408, 35.340607, 27.327404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.783928, 35.401569, 27.227400>,  <33.434792, 35.503178, 27.060728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783928, 35.401569, 27.227400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450843, -0.092925, 0.887753,
		-0.186785, -0.962725, -0.195631,
		0.872841, -0.254018, 0.416681,
		34.045780, 35.325363, 27.352404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160690, 35.148022, 27.772116>,  <33.434792, 35.503178, 27.060728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160690, 35.148022, 27.772116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558990, 35.135845, 27.806879>,  <33.797970, 35.128540, 27.827738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558990, 35.135845, 27.806879>,  <33.160690, 35.148022, 27.772116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558990, 35.135845, 27.806879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087763, -0.027891, 0.995751,
		-0.027891, -0.999147, -0.030444,
		-0.995751, 0.030444, -0.086910,
		33.857716, 35.126713, 27.832952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280430, 34.576672, 28.200052>,  <33.160690, 35.148022, 27.772116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280430, 34.576672, 28.200052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596039, 34.820980, 28.226564>,  <33.785404, 34.967567, 28.242472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596039, 34.820980, 28.226564>,  <33.280430, 34.576672, 28.200052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596039, 34.820980, 28.226564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026480, -0.073973, 0.996909,
		0.613789, -0.788342, -0.042193,
		0.789026, 0.610774, 0.066279,
		33.832748, 35.004211, 28.246449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701416, 34.227196, 28.747355>,  <33.280430, 34.576672, 28.200052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701416, 34.227196, 28.747355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.833538, 34.603600, 28.717981>,  <33.912811, 34.829441, 28.700357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.833538, 34.603600, 28.717981>,  <33.701416, 34.227196, 28.747355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833538, 34.603600, 28.717981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037282, 0.064733, 0.997206,
		0.943137, -0.332121, -0.013701,
		0.330306, 0.941013, -0.073434,
		33.932629, 34.885902, 28.695951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315144, 34.387779, 29.291973>,  <33.701416, 34.227196, 28.747355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315144, 34.387779, 29.291973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.185665, 34.754429, 29.198147>,  <34.107979, 34.974419, 29.141851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.185665, 34.754429, 29.198147>,  <34.315144, 34.387779, 29.291973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185665, 34.754429, 29.198147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052653, 0.264980, 0.962815,
		0.944696, 0.299307, -0.134036,
		-0.323694, 0.916625, -0.234566,
		34.088558, 35.029415, 29.127777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800892, 34.859997, 29.587545>,  <34.315144, 34.387779, 29.291973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800892, 34.859997, 29.587545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.452042, 35.047070, 29.530024>,  <34.242733, 35.159313, 29.495510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.452042, 35.047070, 29.530024>,  <34.800892, 34.859997, 29.587545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452042, 35.047070, 29.530024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002935, 0.288901, 0.957354,
		0.489280, 0.835351, -0.250585,
		-0.872122, 0.467679, -0.143805,
		34.190407, 35.187374, 29.486881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968231, 35.631420, 29.658485>,  <34.800892, 34.859997, 29.587545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968231, 35.631420, 29.658485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590958, 35.532196, 29.746910>,  <34.364594, 35.472660, 29.799965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590958, 35.532196, 29.746910>,  <34.968231, 35.631420, 29.658485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590958, 35.532196, 29.746910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065815, 0.512643, 0.856076,
		-0.325686, 0.821987, -0.467190,
		-0.943184, -0.248064, 0.221059,
		34.308002, 35.457775, 29.813229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654800, 36.260025, 30.101156>,  <34.968231, 35.631420, 29.658485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654800, 36.260025, 30.101156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.430908, 35.939663, 30.186243>,  <34.296574, 35.747444, 30.237295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.430908, 35.939663, 30.186243>,  <34.654800, 36.260025, 30.101156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430908, 35.939663, 30.186243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046803, 0.286841, 0.956834,
		-0.827351, 0.525615, -0.198039,
		-0.559732, -0.800906, 0.212718,
		34.262989, 35.699390, 30.250059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234669, 36.488636, 30.676620>,  <34.654800, 36.260025, 30.101156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234669, 36.488636, 30.676620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.139404, 36.100426, 30.691328>,  <34.082245, 35.867500, 30.700153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.139404, 36.100426, 30.691328>,  <34.234669, 36.488636, 30.676620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139404, 36.100426, 30.691328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173005, 0.079647, 0.981695,
		-0.955693, 0.227438, -0.186875,
		-0.238159, -0.970530, 0.036770,
		34.067955, 35.809265, 30.702358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646606, 36.484024, 31.065147>,  <34.234669, 36.488636, 30.676620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646606, 36.484024, 31.065147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.801197, 36.118958, 31.118317>,  <33.893951, 35.899918, 31.150217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.801197, 36.118958, 31.118317>,  <33.646606, 36.484024, 31.065147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801197, 36.118958, 31.118317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014984, 0.137888, 0.990335,
		-0.922176, -0.384736, 0.039615,
		0.386480, -0.912669, 0.132921,
		33.917141, 35.845158, 31.158194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197243, 36.230694, 31.693884>,  <33.646606, 36.484024, 31.065147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197243, 36.230694, 31.693884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525692, 36.008160, 31.642895>,  <33.722763, 35.874641, 31.612301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525692, 36.008160, 31.642895>,  <33.197243, 36.230694, 31.693884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525692, 36.008160, 31.642895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154851, 0.002192, 0.987935,
		-0.549341, -0.830957, 0.087949,
		0.821125, -0.556332, -0.127471,
		33.772030, 35.841259, 31.604654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139603, 35.490860, 32.042160>,  <33.197243, 36.230694, 31.693884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139603, 35.490860, 32.042160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.531002, 35.572250, 32.028675>,  <33.765842, 35.621086, 32.020584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.531002, 35.572250, 32.028675>,  <33.139603, 35.490860, 32.042160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531002, 35.572250, 32.028675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085951, -0.253703, 0.963456,
		0.187493, -0.945638, -0.265738,
		0.978498, 0.203481, -0.033711,
		33.824551, 35.633293, 32.018562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500275, 34.940342, 32.331242>,  <33.139603, 35.490860, 32.042160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500275, 34.940342, 32.331242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.763947, 35.241127, 32.328911>,  <33.922150, 35.421597, 32.327511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.763947, 35.241127, 32.328911>,  <33.500275, 34.940342, 32.331242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763947, 35.241127, 32.328911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198477, -0.166503, 0.965859,
		0.725319, -0.637832, -0.259003,
		0.659181, 0.751962, -0.005827,
		33.961700, 35.466717, 32.327164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145535, 34.631901, 32.552914>,  <33.500275, 34.940342, 32.331242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145535, 34.631901, 32.552914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143101, 35.025612, 32.623512>,  <34.141640, 35.261841, 32.665871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143101, 35.025612, 32.623512>,  <34.145535, 34.631901, 32.552914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143101, 35.025612, 32.623512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273752, -0.168119, 0.946993,
		0.961781, 0.054079, -0.268426,
		-0.006085, 0.984282, 0.176498,
		34.141273, 35.320896, 32.676460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827541, 34.729301, 32.854248>,  <34.145535, 34.631901, 32.552914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827541, 34.729301, 32.854248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.572025, 35.018574, 32.959290>,  <34.418716, 35.192135, 33.022316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.572025, 35.018574, 32.959290>,  <34.827541, 34.729301, 32.854248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572025, 35.018574, 32.959290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215522, -0.159457, 0.963392,
		0.738576, 0.672004, -0.054001,
		-0.638792, 0.723176, 0.262603,
		34.380386, 35.235527, 33.038071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210083, 35.406952, 33.203079>,  <34.827541, 34.729301, 32.854248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210083, 35.406952, 33.203079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841568, 35.334793, 33.340878>,  <34.620457, 35.291496, 33.423557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841568, 35.334793, 33.340878>,  <35.210083, 35.406952, 33.203079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841568, 35.334793, 33.340878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363621, -0.085586, 0.927607,
		-0.137853, 0.979863, 0.144445,
		-0.921291, -0.180396, 0.344500,
		34.565182, 35.280674, 33.444229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001961, 35.485069, 33.439140>,  <35.210083, 35.406952, 33.203079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001961, 35.485069, 33.439140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193893, 35.219429, 33.668480>,  <36.309055, 35.060047, 33.806084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193893, 35.219429, 33.668480>,  <36.001961, 35.485069, 33.439140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193893, 35.219429, 33.668480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232155, -0.534101, -0.812921,
		0.846087, 0.523174, -0.102106,
		0.479834, -0.664097, 0.573353,
		36.337845, 35.020199, 33.840485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609768, 35.512547, 33.181217>,  <36.001961, 35.485069, 33.439140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609768, 35.512547, 33.181217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645508, 35.156666, 33.360302>,  <36.666950, 34.943138, 33.467754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645508, 35.156666, 33.360302>,  <36.609768, 35.512547, 33.181217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645508, 35.156666, 33.360302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402026, -0.379048, -0.833485,
		0.911258, 0.254465, 0.323815,
		0.089351, -0.889702, 0.447712,
		36.672314, 34.889755, 33.494617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263760, 35.184479, 32.991974>,  <36.609768, 35.512547, 33.181217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263760, 35.184479, 32.991974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013409, 34.894436, 33.106861>,  <36.863197, 34.720409, 33.175793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013409, 34.894436, 33.106861>,  <37.263760, 35.184479, 32.991974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013409, 34.894436, 33.106861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311508, -0.570032, -0.760280,
		0.715010, -0.386371, 0.582647,
		-0.625878, -0.725107, 0.287221,
		36.825645, 34.676903, 33.193027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657913, 34.643578, 32.864975>,  <37.263760, 35.184479, 32.991974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657913, 34.643578, 32.864975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286884, 34.496922, 32.893784>,  <37.064266, 34.408928, 32.911068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286884, 34.496922, 32.893784>,  <37.657913, 34.643578, 32.864975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286884, 34.496922, 32.893784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182562, -0.612890, -0.768789,
		0.326008, -0.699959, 0.635434,
		-0.927572, -0.366637, 0.072021,
		37.008614, 34.386929, 32.915390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707340, 33.853706, 32.948555>,  <37.657913, 34.643578, 32.864975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707340, 33.853706, 32.948555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338684, 33.930504, 32.813671>,  <37.117489, 33.976582, 32.732738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338684, 33.930504, 32.813671>,  <37.707340, 33.853706, 32.948555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338684, 33.930504, 32.813671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110582, -0.703031, -0.702509,
		-0.371948, -0.684752, 0.626713,
		-0.921643, 0.191994, -0.337212,
		37.062191, 33.988102, 32.712509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421795, 33.248650, 32.880863>,  <37.707340, 33.853706, 32.948555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421795, 33.248650, 32.880863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198402, 33.475990, 32.639175>,  <37.064365, 33.612392, 32.494164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198402, 33.475990, 32.639175>,  <37.421795, 33.248650, 32.880863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198402, 33.475990, 32.639175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017580, -0.720123, -0.693623,
		-0.829330, -0.397998, 0.392184,
		-0.558482, 0.568349, -0.604217,
		37.030857, 33.646496, 32.457909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997391, 32.758018, 32.316898>,  <37.421795, 33.248650, 32.880863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997391, 32.758018, 32.316898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988689, 33.130005, 32.170097>,  <36.983467, 33.353195, 32.082016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988689, 33.130005, 32.170097>,  <36.997391, 32.758018, 32.316898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988689, 33.130005, 32.170097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061594, -0.365145, -0.928911,
		-0.997864, -0.042811, -0.049338,
		-0.021752, 0.929966, -0.367002,
		36.982162, 33.408997, 32.059998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583099, 32.631805, 31.718964>,  <36.997391, 32.758018, 32.316898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583099, 32.631805, 31.718964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739845, 32.994827, 31.658590>,  <36.833893, 33.212643, 31.622366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739845, 32.994827, 31.658590>,  <36.583099, 32.631805, 31.718964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739845, 32.994827, 31.658590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109184, -0.208770, -0.971851,
		-0.913522, 0.364353, -0.180900,
		0.391864, 0.907558, -0.150935,
		36.857403, 33.267094, 31.613310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370766, 32.885296, 31.098427>,  <36.583099, 32.631805, 31.718964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370766, 32.885296, 31.098427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.660431, 33.152210, 31.168074>,  <36.834232, 33.312359, 31.209862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.660431, 33.152210, 31.168074>,  <36.370766, 32.885296, 31.098427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660431, 33.152210, 31.168074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186602, 0.053459, -0.980980,
		-0.663899, 0.742883, -0.085803,
		0.724167, 0.667283, 0.174115,
		36.877682, 33.352394, 31.220308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183292, 33.451130, 30.652651>,  <36.370766, 32.885296, 31.098427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183292, 33.451130, 30.652651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.575100, 33.427265, 30.729568>,  <36.810184, 33.412945, 30.775719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.575100, 33.427265, 30.729568>,  <36.183292, 33.451130, 30.652651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575100, 33.427265, 30.729568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196695, 0.079707, -0.977219,
		0.042976, 0.995031, 0.089810,
		0.979522, -0.059662, 0.192293,
		36.868958, 33.409367, 30.787256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550419, 34.006557, 30.406841>,  <36.183292, 33.451130, 30.652651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550419, 34.006557, 30.406841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816017, 33.707462, 30.407055>,  <36.975376, 33.528008, 30.407183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816017, 33.707462, 30.407055>,  <36.550419, 34.006557, 30.406841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816017, 33.707462, 30.407055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171860, 0.151918, -0.973337,
		0.727718, 0.646385, 0.229378,
		0.663997, -0.747736, 0.000534,
		37.015217, 33.483143, 30.407215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219570, 34.245762, 30.062918>,  <36.550419, 34.006557, 30.406841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219570, 34.245762, 30.062918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231636, 33.847107, 30.032454>,  <37.238876, 33.607914, 30.014175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231636, 33.847107, 30.032454>,  <37.219570, 34.245762, 30.062918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231636, 33.847107, 30.032454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154781, 0.079934, -0.984710,
		0.987488, 0.017915, 0.156672,
		0.030164, -0.996639, -0.076161,
		37.240685, 33.548115, 30.009605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750652, 34.040413, 29.500463>,  <37.219570, 34.245762, 30.062918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750652, 34.040413, 29.500463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529816, 33.714008, 29.568947>,  <37.397312, 33.518166, 29.610037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529816, 33.714008, 29.568947>,  <37.750652, 34.040413, 29.500463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529816, 33.714008, 29.568947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081485, -0.257165, -0.962926,
		0.829790, -0.517675, 0.208472,
		-0.552094, -0.816014, 0.171210,
		37.364189, 33.469204, 29.620310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116592, 33.680790, 29.094385>,  <37.750652, 34.040413, 29.500463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116592, 33.680790, 29.094385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775581, 33.480755, 29.155203>,  <37.570976, 33.360733, 29.191694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775581, 33.480755, 29.155203>,  <38.116592, 33.680790, 29.094385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775581, 33.480755, 29.155203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033732, -0.342923, -0.938758,
		0.521601, -0.795183, 0.309219,
		-0.852523, -0.500087, 0.152046,
		37.519825, 33.330730, 29.200817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212543, 33.033066, 28.768538>,  <38.116592, 33.680790, 29.094385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212543, 33.033066, 28.768538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820099, 33.098927, 28.809141>,  <37.584633, 33.138443, 28.833504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820099, 33.098927, 28.809141>,  <38.212543, 33.033066, 28.768538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820099, 33.098927, 28.809141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152852, -0.338377, -0.928513,
		-0.118533, -0.926494, 0.357154,
		-0.981115, 0.164651, 0.101507,
		37.525764, 33.148323, 28.839594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955574, 32.376915, 28.654037>,  <38.212543, 33.033066, 28.768538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955574, 32.376915, 28.654037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.700146, 32.676884, 28.584940>,  <37.546890, 32.856865, 28.543482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.700146, 32.676884, 28.584940>,  <37.955574, 32.376915, 28.654037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700146, 32.676884, 28.584940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163427, -0.351497, -0.921814,
		-0.752011, -0.560412, 0.347014,
		-0.638570, 0.749925, -0.172742,
		37.508575, 32.901863, 28.533117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517754, 32.132313, 28.224432>,  <37.955574, 32.376915, 28.654037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517754, 32.132313, 28.224432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420914, 32.516979, 28.172913>,  <37.362812, 32.747780, 28.142000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420914, 32.516979, 28.172913>,  <37.517754, 32.132313, 28.224432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420914, 32.516979, 28.172913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352762, -0.210905, -0.911635,
		-0.903852, -0.175269, 0.390299,
		-0.242097, 0.961665, -0.128798,
		37.348286, 32.805477, 28.134274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907169, 32.121471, 27.782965>,  <37.517754, 32.132313, 28.224432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907169, 32.121471, 27.782965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038986, 32.497173, 27.744595>,  <37.118076, 32.722595, 27.721573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038986, 32.497173, 27.744595>,  <36.907169, 32.121471, 27.782965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038986, 32.497173, 27.744595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493184, 0.084610, -0.865801,
		-0.805093, 0.332624, 0.491109,
		0.329538, 0.939257, -0.095926,
		37.137848, 32.778950, 27.715816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.156502, 32.802734, 27.042217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518551, 32.956879, 27.114054>,  <36.735779, 33.049366, 27.157156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518551, 32.956879, 27.114054>,  <36.156502, 32.802734, 27.042217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518551, 32.956879, 27.114054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094640, 0.229191, -0.968770,
		-0.414487, 0.893850, 0.170975,
		0.905121, 0.385362, 0.179590,
		36.790089, 33.072487, 27.167931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169601, 33.596241, 26.867714>,  <36.156502, 32.802734, 27.042217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169601, 33.596241, 26.867714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516232, 33.399170, 26.835901>,  <36.724209, 33.280930, 26.816814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516232, 33.399170, 26.835901>,  <36.169601, 33.596241, 26.867714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516232, 33.399170, 26.835901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112272, 0.347738, -0.930845,
		0.486260, 0.797715, 0.356654,
		0.866572, -0.492675, -0.079530,
		36.776203, 33.251366, 26.812042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497982, 34.066841, 26.340933>,  <36.169601, 33.596241, 26.867714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497982, 34.066841, 26.340933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775036, 33.780491, 26.376221>,  <36.941269, 33.608681, 26.397392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775036, 33.780491, 26.376221>,  <36.497982, 34.066841, 26.340933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775036, 33.780491, 26.376221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376053, 0.254037, -0.891095,
		0.615499, 0.650379, 0.445161,
		0.692636, -0.715872, 0.088217,
		36.982826, 33.565731, 26.402685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063862, 34.417389, 26.078217>,  <36.497982, 34.066841, 26.340933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063862, 34.417389, 26.078217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170303, 34.032181, 26.061325>,  <37.234169, 33.801056, 26.051189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170303, 34.032181, 26.061325>,  <37.063862, 34.417389, 26.078217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170303, 34.032181, 26.061325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540332, 0.185300, -0.820796,
		0.798267, 0.195600, 0.569658,
		0.266105, -0.963019, -0.042230,
		37.250134, 33.743275, 26.048656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652599, 34.414108, 25.687090>,  <37.063862, 34.417389, 26.078217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652599, 34.414108, 25.687090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501564, 34.045486, 25.650963>,  <37.410942, 33.824314, 25.629286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.501564, 34.045486, 25.650963>,  <37.652599, 34.414108, 25.687090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501564, 34.045486, 25.650963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278282, -0.019903, -0.960293,
		0.883168, -0.387729, 0.263968,
		-0.377588, -0.921558, -0.090320,
		37.388287, 33.769020, 25.623867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040558, 34.177067, 25.128202>,  <37.652599, 34.414108, 25.687090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040558, 34.177067, 25.128202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743351, 33.910728, 25.155254>,  <37.565025, 33.750927, 25.171486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.743351, 33.910728, 25.155254>,  <38.040558, 34.177067, 25.128202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743351, 33.910728, 25.155254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107637, -0.218619, -0.969856,
		0.660556, -0.713344, 0.234108,
		-0.743021, -0.665842, 0.067628,
		37.520443, 33.710976, 25.175543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301311, 33.698235, 24.784548>,  <38.040558, 34.177067, 25.128202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301311, 33.698235, 24.784548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908775, 33.627003, 24.755537>,  <37.673252, 33.584263, 24.738131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908775, 33.627003, 24.755537>,  <38.301311, 33.698235, 24.784548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908775, 33.627003, 24.755537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111197, -0.217863, -0.969624,
		0.156873, -0.959595, 0.233599,
		-0.981339, -0.178084, -0.072527,
		37.614372, 33.573578, 24.733778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280857, 32.992466, 24.486250>,  <38.301311, 33.698235, 24.784548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280857, 32.992466, 24.486250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933758, 33.180058, 24.420437>,  <37.725498, 33.292614, 24.380949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933758, 33.180058, 24.420437>,  <38.280857, 32.992466, 24.486250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933758, 33.180058, 24.420437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017983, -0.301204, -0.953390,
		-0.496678, -0.830262, 0.252935,
		-0.867748, 0.468979, -0.164532,
		37.673431, 33.320751, 24.371077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782940, 32.523903, 24.325556>,  <38.280857, 32.992466, 24.486250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782940, 32.523903, 24.325556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.668579, 32.870689, 24.162271>,  <37.599960, 33.078762, 24.064301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.668579, 32.870689, 24.162271>,  <37.782940, 32.523903, 24.325556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668579, 32.870689, 24.162271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186630, -0.367458, -0.911123,
		-0.939909, -0.336678, -0.056743,
		-0.285904, 0.866962, -0.408211,
		37.582809, 33.130779, 24.039808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275871, 32.436543, 23.742073>,  <37.782940, 32.523903, 24.325556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275871, 32.436543, 23.742073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444805, 32.793964, 23.681145>,  <37.546165, 33.008415, 23.644588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444805, 32.793964, 23.681145>,  <37.275871, 32.436543, 23.742073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444805, 32.793964, 23.681145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312637, -0.301324, -0.900812,
		-0.850818, 0.332824, -0.406617,
		0.422336, 0.893550, -0.152319,
		37.571507, 33.062031, 23.635448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984890, 32.427181, 23.167112>,  <37.275871, 32.436543, 23.742073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984890, 32.427181, 23.167112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272034, 32.704838, 23.188467>,  <37.444321, 32.871433, 23.201279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272034, 32.704838, 23.188467>,  <36.984890, 32.427181, 23.167112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272034, 32.704838, 23.188467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261605, -0.197890, -0.944670,
		-0.645170, 0.692104, -0.323648,
		0.717857, 0.694140, 0.053385,
		37.487392, 32.913078, 23.204483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982822, 32.526268, 22.457748>,  <36.984890, 32.427181, 23.167112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982822, 32.526268, 22.457748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305759, 32.707069, 22.609480>,  <37.499523, 32.815552, 22.700520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305759, 32.707069, 22.609480>,  <36.982822, 32.526268, 22.457748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305759, 32.707069, 22.609480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389310, 0.075073, -0.918042,
		-0.443438, 0.888850, -0.115361,
		0.807342, 0.452006, 0.379329,
		37.547962, 32.842670, 22.723278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152527, 33.137970, 22.073614>,  <36.982822, 32.526268, 22.457748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152527, 33.137970, 22.073614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491005, 32.991791, 22.228743>,  <37.694092, 32.904083, 22.321819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491005, 32.991791, 22.228743>,  <37.152527, 33.137970, 22.073614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491005, 32.991791, 22.228743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432215, 0.045003, -0.900647,
		0.311684, 0.929744, 0.196032,
		0.846194, -0.365445, 0.387823,
		37.744862, 32.882156, 22.345089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620876, 33.436741, 21.657101>,  <37.152527, 33.137970, 22.073614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620876, 33.436741, 21.657101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850220, 33.187008, 21.869316>,  <37.987827, 33.037170, 21.996645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850220, 33.187008, 21.869316>,  <37.620876, 33.436741, 21.657101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850220, 33.187008, 21.869316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647023, -0.052207, -0.760681,
		0.502614, 0.779414, 0.374023,
		0.573358, -0.624330, 0.530539,
		38.022228, 32.999710, 22.028479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314953, 33.684498, 21.691467>,  <37.620876, 33.436741, 21.657101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314953, 33.684498, 21.691467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316998, 33.286469, 21.731064>,  <38.318226, 33.047649, 21.754822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316998, 33.286469, 21.731064>,  <38.314953, 33.684498, 21.691467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316998, 33.286469, 21.731064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560787, -0.079105, -0.824173,
		0.827945, 0.059728, 0.557620,
		0.005116, -0.995075, 0.098989,
		38.318531, 32.987946, 21.760761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983074, 33.552700, 21.634655>,  <38.314953, 33.684498, 21.691467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983074, 33.552700, 21.634655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803925, 33.204811, 21.551718>,  <38.696434, 32.996078, 21.501955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803925, 33.204811, 21.551718>,  <38.983074, 33.552700, 21.634655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803925, 33.204811, 21.551718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629651, -0.142161, -0.763761,
		0.634785, -0.472619, 0.611293,
		-0.447870, -0.869725, -0.207343,
		38.669563, 32.943893, 21.489515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480087, 32.993710, 21.392485>,  <38.983074, 33.552700, 21.634655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480087, 32.993710, 21.392485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145451, 32.828537, 21.248480>,  <38.944668, 32.729435, 21.162077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145451, 32.828537, 21.248480>,  <39.480087, 32.993710, 21.392485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145451, 32.828537, 21.248480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407900, -0.030832, -0.912506,
		0.365704, -0.910240, 0.194228,
		-0.836587, -0.412933, -0.360011,
		38.894474, 32.704659, 21.140476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757793, 32.568092, 20.883543>,  <39.480087, 32.993710, 21.392485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757793, 32.568092, 20.883543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.366951, 32.592491, 20.802021>,  <39.132446, 32.607132, 20.753107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.366951, 32.592491, 20.802021>,  <39.757793, 32.568092, 20.883543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366951, 32.592491, 20.802021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198570, -0.082250, -0.976629,
		-0.076310, -0.994745, 0.068260,
		-0.977111, 0.060972, -0.203803,
		39.073818, 32.610790, 20.740879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650375, 32.019810, 20.382414>,  <39.757793, 32.568092, 20.883543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650375, 32.019810, 20.382414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382927, 32.313507, 20.335384>,  <39.222458, 32.489727, 20.307167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382927, 32.313507, 20.335384>,  <39.650375, 32.019810, 20.382414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382927, 32.313507, 20.335384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291868, 0.113712, -0.949675,
		-0.683926, -0.669292, -0.290334,
		-0.668624, 0.734247, -0.117574,
		39.182339, 32.533783, 20.300112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213036, 31.913221, 19.736124>,  <39.650375, 32.019810, 20.382414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213036, 31.913221, 19.736124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176563, 32.304417, 19.811195>,  <39.154678, 32.539135, 19.856237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176563, 32.304417, 19.811195>,  <39.213036, 31.913221, 19.736124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176563, 32.304417, 19.811195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202465, 0.202734, -0.958074,
		-0.975035, -0.049364, -0.216495,
		-0.091185, 0.977989, 0.187679,
		39.149208, 32.597813, 19.867498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712177, 32.097473, 19.280598>,  <39.213036, 31.913221, 19.736124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712177, 32.097473, 19.280598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946510, 32.405556, 19.381454>,  <39.087112, 32.590405, 19.441969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946510, 32.405556, 19.381454>,  <38.712177, 32.097473, 19.280598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946510, 32.405556, 19.381454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031514, 0.289236, -0.956739,
		-0.809817, 0.568438, 0.145173,
		0.585836, 0.770208, 0.252142,
		39.122261, 32.636620, 19.457098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565727, 32.692017, 18.847261>,  <38.712177, 32.097473, 19.280598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565727, 32.692017, 18.847261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928085, 32.780968, 18.991428>,  <39.145500, 32.834339, 19.077929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928085, 32.780968, 18.991428>,  <38.565727, 32.692017, 18.847261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928085, 32.780968, 18.991428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287899, 0.300771, -0.909203,
		-0.310585, 0.927408, 0.208447,
		0.905898, 0.222374, 0.360415,
		39.199856, 32.847679, 19.099552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735474, 33.377876, 18.548700>,  <38.565727, 32.692017, 18.847261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735474, 33.377876, 18.548700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077362, 33.198242, 18.652830>,  <39.282497, 33.090462, 18.715309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077362, 33.198242, 18.652830>,  <38.735474, 33.377876, 18.548700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077362, 33.198242, 18.652830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451527, 0.395828, -0.799652,
		0.256068, 0.801026, 0.541098,
		0.854724, -0.449086, 0.260326,
		39.333778, 33.063515, 18.730928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182663, 33.957302, 18.291861>,  <38.735474, 33.377876, 18.548700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182663, 33.957302, 18.291861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407314, 33.626892, 18.310888>,  <39.542103, 33.428646, 18.322306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407314, 33.626892, 18.310888>,  <39.182663, 33.957302, 18.291861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407314, 33.626892, 18.310888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476508, 0.275912, -0.834753,
		0.676399, 0.491488, 0.548566,
		0.561627, -0.826022, 0.047571,
		39.575802, 33.379086, 18.325159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086681, 34.445259, 18.792187>,  <39.182663, 33.957302, 18.291861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086681, 34.445259, 18.792187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.031128, 34.803837, 18.623852>,  <38.997795, 35.018982, 18.522850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.031128, 34.803837, 18.623852>,  <39.086681, 34.445259, 18.792187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031128, 34.803837, 18.623852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451081, 0.321049, 0.832738,
		0.881610, 0.305486, 0.359779,
		-0.138884, 0.896440, -0.420839,
		38.989464, 35.072769, 18.497601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277748, 34.967384, 19.288193>,  <39.086681, 34.445259, 18.792187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277748, 34.967384, 19.288193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000881, 35.126194, 19.047104>,  <38.834763, 35.221481, 18.902451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000881, 35.126194, 19.047104>,  <39.277748, 34.967384, 19.288193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000881, 35.126194, 19.047104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598655, 0.150627, 0.786717,
		0.403133, 0.905363, 0.133423,
		-0.692167, 0.397026, -0.602723,
		38.793232, 35.245300, 18.866287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111786, 35.616142, 19.379469>,  <39.277748, 34.967384, 19.288193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111786, 35.616142, 19.379469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780670, 35.566231, 19.160673>,  <38.582001, 35.536282, 19.029396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780670, 35.566231, 19.160673>,  <39.111786, 35.616142, 19.379469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780670, 35.566231, 19.160673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560918, 0.204410, 0.802239,
		0.011705, 0.970899, -0.239201,
		-0.827788, -0.124782, -0.546988,
		38.532333, 35.528797, 18.996576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691071, 36.256870, 19.384958>,  <39.111786, 35.616142, 19.379469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691071, 36.256870, 19.384958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465157, 35.934502, 19.313953>,  <38.329609, 35.741081, 19.271351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465157, 35.934502, 19.313953>,  <38.691071, 36.256870, 19.384958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465157, 35.934502, 19.313953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660483, 0.312491, 0.682724,
		-0.494749, 0.502837, -0.708787,
		-0.564788, -0.805919, -0.177511,
		38.295719, 35.692726, 19.260700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072716, 36.539364, 19.460129>,  <38.691071, 36.256870, 19.384958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072716, 36.539364, 19.460129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018719, 36.144669, 19.496199>,  <37.986320, 35.907852, 19.517841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018719, 36.144669, 19.496199>,  <38.072716, 36.539364, 19.460129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018719, 36.144669, 19.496199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756839, 0.161423, 0.633354,
		-0.639508, 0.017251, -0.768591,
		-0.134994, -0.986735, 0.090175,
		37.978222, 35.848648, 19.523251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344769, 36.496639, 19.568083>,  <38.072716, 36.539364, 19.460129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344769, 36.496639, 19.568083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481468, 36.143421, 19.696735>,  <37.563488, 35.931492, 19.773928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481468, 36.143421, 19.696735>,  <37.344769, 36.496639, 19.568083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481468, 36.143421, 19.696735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669908, 0.011131, 0.742361,
		-0.659116, -0.469161, -0.587753,
		0.341745, -0.883042, 0.321631,
		37.583992, 35.878510, 19.793224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757603, 36.022629, 19.679482>,  <37.344769, 36.496639, 19.568083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757603, 36.022629, 19.679482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049137, 35.874523, 19.909857>,  <37.224056, 35.785660, 20.048082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049137, 35.874523, 19.909857>,  <36.757603, 36.022629, 19.679482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049137, 35.874523, 19.909857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637156, -0.058815, 0.768488,
		-0.250674, -0.927061, -0.278785,
		0.728831, -0.370269, 0.575939,
		37.267788, 35.763443, 20.082638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486305, 35.461258, 20.171650>,  <36.757603, 36.022629, 19.679482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486305, 35.461258, 20.171650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827690, 35.573902, 20.347057>,  <37.032520, 35.641487, 20.452301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827690, 35.573902, 20.347057>,  <36.486305, 35.461258, 20.171650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827690, 35.573902, 20.347057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372886, -0.257864, 0.891326,
		0.364083, -0.924231, -0.115070,
		0.853463, 0.281609, 0.438517,
		37.083729, 35.658386, 20.478613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565853, 34.973473, 20.789206>,  <36.486305, 35.461258, 20.171650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565853, 34.973473, 20.789206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809307, 35.284775, 20.851025>,  <36.955379, 35.471554, 20.888115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809307, 35.284775, 20.851025>,  <36.565853, 34.973473, 20.789206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809307, 35.284775, 20.851025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226833, -0.015982, 0.973802,
		0.760334, -0.627748, 0.166806,
		0.608637, 0.778252, 0.154546,
		36.991898, 35.518250, 20.897388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135239, 34.772121, 21.252234>,  <36.565853, 34.973473, 20.789206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135239, 34.772121, 21.252234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056293, 35.164131, 21.262110>,  <37.008926, 35.399338, 21.268036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056293, 35.164131, 21.262110>,  <37.135239, 34.772121, 21.252234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056293, 35.164131, 21.262110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363598, -0.096569, 0.926537,
		0.910409, 0.173885, 0.375392,
		-0.197362, 0.980020, 0.024693,
		36.997086, 35.458138, 21.269518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290802, 34.912197, 21.885347>,  <37.135239, 34.772121, 21.252234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290802, 34.912197, 21.885347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134136, 35.273129, 21.813349>,  <37.040134, 35.489689, 21.770149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134136, 35.273129, 21.813349>,  <37.290802, 34.912197, 21.885347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134136, 35.273129, 21.813349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151992, 0.129491, 0.979863,
		0.907466, 0.411140, 0.086429,
		-0.391669, 0.902328, -0.179998,
		37.016636, 35.543827, 21.759350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512379, 35.434895, 22.407459>,  <37.290802, 34.912197, 21.885347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512379, 35.434895, 22.407459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183651, 35.595016, 22.245289>,  <36.986412, 35.691090, 22.147987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183651, 35.595016, 22.245289>,  <37.512379, 35.434895, 22.407459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183651, 35.595016, 22.245289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376635, 0.152231, 0.913768,
		0.427500, 0.903651, 0.025661,
		-0.821821, 0.400300, -0.405425,
		36.937103, 35.715107, 22.123661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448029, 36.030327, 22.783871>,  <37.512379, 35.434895, 22.407459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448029, 36.030327, 22.783871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.087490, 35.940651, 22.635643>,  <36.871166, 35.886845, 22.546707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.087490, 35.940651, 22.635643>,  <37.448029, 36.030327, 22.783871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087490, 35.940651, 22.635643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388440, 0.040006, 0.920605,
		-0.191565, 0.973724, -0.123143,
		-0.901342, -0.224190, -0.370570,
		36.817089, 35.873394, 22.524471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995396, 36.416229, 23.148151>,  <37.448029, 36.030327, 22.783871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995396, 36.416229, 23.148151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768501, 36.141380, 22.966555>,  <36.632366, 35.976471, 22.857597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768501, 36.141380, 22.966555>,  <36.995396, 36.416229, 23.148151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768501, 36.141380, 22.966555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526511, -0.121322, 0.841467,
		-0.633270, 0.716341, -0.292959,
		-0.567235, -0.687122, -0.453991,
		36.598331, 35.935246, 22.830357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299480, 36.652676, 23.286295>,  <36.995396, 36.416229, 23.148151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299480, 36.652676, 23.286295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316010, 36.261532, 23.204231>,  <36.325928, 36.026848, 23.154993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316010, 36.261532, 23.204231>,  <36.299480, 36.652676, 23.286295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316010, 36.261532, 23.204231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619906, -0.186128, 0.762281,
		-0.783587, 0.095677, -0.613871,
		0.041325, -0.977856, -0.205158,
		36.328407, 35.968174, 23.142683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662556, 36.445343, 23.177277>,  <36.299480, 36.652676, 23.286295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662556, 36.445343, 23.177277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853565, 36.103191, 23.257570>,  <35.968170, 35.897900, 23.305746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853565, 36.103191, 23.257570>,  <35.662556, 36.445343, 23.177277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853565, 36.103191, 23.257570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687341, -0.221375, 0.691777,
		-0.547295, -0.468313, -0.693650,
		0.477525, -0.855381, 0.200734,
		35.996822, 35.846577, 23.317791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215054, 35.997002, 23.354904>,  <35.662556, 36.445343, 23.177277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215054, 35.997002, 23.354904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518055, 35.785786, 23.508457>,  <35.699856, 35.659058, 23.600590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518055, 35.785786, 23.508457>,  <35.215054, 35.997002, 23.354904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518055, 35.785786, 23.508457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572124, -0.253737, 0.779931,
		-0.314431, -0.810426, -0.494311,
		0.757501, -0.528041, 0.383881,
		35.745304, 35.627373, 23.623623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982819, 35.429352, 23.523298>,  <35.215054, 35.997002, 23.354904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982819, 35.429352, 23.523298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308491, 35.460739, 23.753412>,  <35.503895, 35.479572, 23.891479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308491, 35.460739, 23.753412>,  <34.982819, 35.429352, 23.523298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308491, 35.460739, 23.753412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539045, -0.265992, 0.799174,
		0.215729, -0.960777, -0.174269,
		0.814182, 0.078466, 0.575283,
		35.552746, 35.484280, 23.925997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894428, 34.915680, 23.947065>,  <34.982819, 35.429352, 23.523298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894428, 34.915680, 23.947065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166489, 35.145565, 24.129103>,  <35.329723, 35.283497, 24.238325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166489, 35.145565, 24.129103>,  <34.894428, 34.915680, 23.947065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166489, 35.145565, 24.129103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376319, -0.259036, 0.889542,
		0.629112, -0.776280, 0.040091,
		0.680149, 0.574709, 0.455091,
		35.370533, 35.317978, 24.265631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166245, 34.451866, 24.531078>,  <34.894428, 34.915680, 23.947065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166245, 34.451866, 24.531078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.234276, 34.832478, 24.633579>,  <35.275093, 35.060844, 24.695080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.234276, 34.832478, 24.633579>,  <35.166245, 34.451866, 24.531078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234276, 34.832478, 24.633579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453556, -0.155274, 0.877597,
		0.874849, -0.265485, 0.405163,
		0.170078, 0.951529, 0.256253,
		35.285297, 35.117935, 24.710455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.499405, 32.289051, 30.038448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396904, 32.675644, 30.044695>,  <37.335403, 32.907600, 30.048443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396904, 32.675644, 30.044695>,  <37.499405, 32.289051, 30.038448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396904, 32.675644, 30.044695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090172, 0.007816, 0.995896,
		0.962395, 0.256609, -0.089153,
		-0.256252, 0.966484, 0.015617,
		37.320026, 32.965588, 30.049379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895241, 32.598866, 30.546522>,  <37.499405, 32.289051, 30.038448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895241, 32.598866, 30.546522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.596638, 32.861614, 30.504089>,  <37.417477, 33.019264, 30.478630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.596638, 32.861614, 30.504089>,  <37.895241, 32.598866, 30.546522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596638, 32.861614, 30.504089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035938, 0.119398, 0.992196,
		0.664408, 0.744492, -0.065525,
		-0.746506, 0.656868, -0.106084,
		37.372684, 33.058674, 30.472263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134880, 33.167477, 30.930525>,  <37.895241, 32.598866, 30.546522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134880, 33.167477, 30.930525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.736477, 33.190056, 30.902874>,  <37.497437, 33.203606, 30.886284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.736477, 33.190056, 30.902874>,  <38.134880, 33.167477, 30.930525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736477, 33.190056, 30.902874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054516, 0.228422, 0.972035,
		0.070663, 0.971924, -0.224433,
		-0.996009, 0.056451, -0.069127,
		37.437675, 33.206993, 30.882135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017174, 33.739674, 31.258083>,  <38.134880, 33.167477, 30.930525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017174, 33.739674, 31.258083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.660305, 33.559399, 31.270142>,  <37.446182, 33.451233, 31.277376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.660305, 33.559399, 31.270142>,  <38.017174, 33.739674, 31.258083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660305, 33.559399, 31.270142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145780, 0.350471, 0.925159,
		-0.427518, 0.821009, -0.378382,
		-0.892175, -0.450683, 0.030146,
		37.392654, 33.424194, 31.279186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591911, 34.307346, 31.430382>,  <38.017174, 33.739674, 31.258083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591911, 34.307346, 31.430382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.353367, 33.990330, 31.481346>,  <37.210239, 33.800121, 31.511925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.353367, 33.990330, 31.481346>,  <37.591911, 34.307346, 31.430382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353367, 33.990330, 31.481346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361820, 0.407087, 0.838670,
		-0.716547, 0.454049, -0.529527,
		-0.596361, -0.792540, 0.127413,
		37.174458, 33.752567, 31.519569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869122, 34.543655, 31.525789>,  <37.591911, 34.307346, 31.430382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869122, 34.543655, 31.525789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921906, 34.184776, 31.694372>,  <36.953575, 33.969448, 31.795523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921906, 34.184776, 31.694372>,  <36.869122, 34.543655, 31.525789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921906, 34.184776, 31.694372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399973, 0.340833, 0.850796,
		-0.906978, -0.280839, -0.313880,
		0.131956, -0.897197, 0.421457,
		36.961491, 33.915619, 31.820808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254227, 34.303894, 31.668955>,  <36.869122, 34.543655, 31.525789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254227, 34.303894, 31.668955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505177, 34.122246, 31.921991>,  <36.655746, 34.013256, 32.073814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505177, 34.122246, 31.921991>,  <36.254227, 34.303894, 31.668955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505177, 34.122246, 31.921991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409372, 0.498703, 0.764009,
		-0.662430, -0.738286, 0.126968,
		0.627377, -0.454125, 0.632589,
		36.693390, 33.986008, 32.111767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903370, 34.213875, 32.174171>,  <36.254227, 34.303894, 31.668955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903370, 34.213875, 32.174171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.260273, 34.139835, 32.338905>,  <36.474415, 34.095409, 32.437744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.260273, 34.139835, 32.338905>,  <35.903370, 34.213875, 32.174171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260273, 34.139835, 32.338905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310389, 0.410965, 0.857185,
		-0.327915, -0.892662, 0.309235,
		0.892262, -0.185101, 0.411834,
		36.527950, 34.084305, 32.462456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775597, 33.949398, 32.835541>,  <35.903370, 34.213875, 32.174171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775597, 33.949398, 32.835541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153343, 34.075264, 32.873814>,  <36.379990, 34.150784, 32.896778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153343, 34.075264, 32.873814>,  <35.775597, 33.949398, 32.835541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153343, 34.075264, 32.873814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223708, 0.401307, 0.888204,
		0.241088, -0.860197, 0.449375,
		0.944368, 0.314664, 0.095682,
		36.436653, 34.169662, 32.902519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983875, 33.802250, 33.553936>,  <35.775597, 33.949398, 32.835541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983875, 33.802250, 33.553936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.258530, 34.074230, 33.451019>,  <36.423321, 34.237419, 33.389271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.258530, 34.074230, 33.451019>,  <35.983875, 33.802250, 33.553936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258530, 34.074230, 33.451019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012750, 0.365109, 0.930877,
		0.726891, -0.635892, 0.259366,
		0.686634, 0.679953, -0.257287,
		36.464520, 34.278217, 33.373833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574738, 33.678982, 34.025238>,  <35.983875, 33.802250, 33.553936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574738, 33.678982, 34.025238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.607079, 34.049461, 33.877930>,  <36.626484, 34.271748, 33.789547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.607079, 34.049461, 33.877930>,  <36.574738, 33.678982, 34.025238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607079, 34.049461, 33.877930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002622, 0.369674, 0.929158,
		0.996723, -0.074159, 0.032318,
		0.080853, 0.926197, -0.368268,
		36.631336, 34.327320, 33.767448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043060, 34.176464, 34.492428>,  <36.574738, 33.678982, 34.025238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043060, 34.176464, 34.492428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830196, 34.443810, 34.284542>,  <36.702480, 34.604218, 34.159813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830196, 34.443810, 34.284542>,  <37.043060, 34.176464, 34.492428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830196, 34.443810, 34.284542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094908, 0.562885, 0.821068,
		0.841310, 0.486261, -0.236109,
		-0.532155, 0.668365, -0.519711,
		36.670551, 34.644318, 34.128628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308231, 34.906895, 34.757214>,  <37.043060, 34.176464, 34.492428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308231, 34.906895, 34.757214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.938202, 34.922382, 34.606087>,  <36.716187, 34.931675, 34.515411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.938202, 34.922382, 34.606087>,  <37.308231, 34.906895, 34.757214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938202, 34.922382, 34.606087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251614, 0.682684, 0.686027,
		0.284491, 0.729687, -0.621789,
		-0.925070, 0.038718, -0.377817,
		36.660683, 34.933998, 34.492741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168106, 35.582626, 34.573132>,  <37.308231, 34.906895, 34.757214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168106, 35.582626, 34.573132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826183, 35.400776, 34.673229>,  <36.621029, 35.291668, 34.733288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826183, 35.400776, 34.673229>,  <37.168106, 35.582626, 34.573132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826183, 35.400776, 34.673229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083239, 0.596090, 0.798591,
		-0.512228, 0.661811, -0.547384,
		-0.854806, -0.454624, 0.250245,
		36.569740, 35.264389, 34.748302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374252, 36.268364, 34.800270>,  <37.168106, 35.582626, 34.573132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374252, 36.268364, 34.800270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.683701, 36.448597, 34.978474>,  <37.869370, 36.556736, 35.085396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.683701, 36.448597, 34.978474>,  <37.374252, 36.268364, 34.800270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683701, 36.448597, 34.978474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597052, -0.282878, -0.750672,
		-0.212215, 0.846731, -0.487864,
		0.773624, 0.450584, 0.445512,
		37.915787, 36.583771, 35.112125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662682, 36.734474, 34.275009>,  <37.374252, 36.268364, 34.800270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662682, 36.734474, 34.275009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934002, 36.652271, 34.557194>,  <38.096794, 36.602947, 34.726505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934002, 36.652271, 34.557194>,  <37.662682, 36.734474, 34.275009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934002, 36.652271, 34.557194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663300, -0.241818, -0.708207,
		0.316136, 0.948309, -0.027711,
		0.678300, -0.205509, 0.705461,
		38.137493, 36.590618, 34.768833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247322, 37.023121, 33.988121>,  <37.662682, 36.734474, 34.275009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247322, 37.023121, 33.988121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.425434, 36.794796, 34.264065>,  <38.532299, 36.657803, 34.429630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.425434, 36.794796, 34.264065>,  <38.247322, 37.023121, 33.988121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425434, 36.794796, 34.264065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715943, -0.235722, -0.657161,
		0.537729, 0.786518, 0.303707,
		0.445278, -0.570811, 0.689856,
		38.559017, 36.623554, 34.471024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021294, 37.132843, 33.957470>,  <38.247322, 37.023121, 33.988121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021294, 37.132843, 33.957470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988808, 36.786037, 34.154118>,  <38.969315, 36.577953, 34.272106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988808, 36.786037, 34.154118>,  <39.021294, 37.132843, 33.957470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988808, 36.786037, 34.154118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764629, -0.370596, -0.527258,
		0.639333, 0.333084, 0.693043,
		-0.081218, -0.867014, 0.491620,
		38.964443, 36.525932, 34.301605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754482, 36.903275, 34.031773>,  <39.021294, 37.132843, 33.957470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754482, 36.903275, 34.031773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502892, 36.592949, 34.051735>,  <39.351936, 36.406754, 34.063713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502892, 36.592949, 34.051735>,  <39.754482, 36.903275, 34.031773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502892, 36.592949, 34.051735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405926, -0.382489, -0.830016,
		0.663031, -0.501805, 0.555502,
		-0.628979, -0.775819, 0.049906,
		39.314198, 36.360203, 34.066708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139046, 36.585499, 33.573212>,  <39.754482, 36.903275, 34.031773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139046, 36.585499, 33.573212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.800282, 36.375587, 33.607487>,  <39.597023, 36.249641, 33.628052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.800282, 36.375587, 33.607487>,  <40.139046, 36.585499, 33.573212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800282, 36.375587, 33.607487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222307, -0.495845, -0.839475,
		0.483028, -0.691913, 0.536600,
		-0.846914, -0.524780, 0.085690,
		39.546207, 36.218155, 33.633194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318180, 35.814247, 33.406563>,  <40.139046, 36.585499, 33.573212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318180, 35.814247, 33.406563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931126, 35.889675, 33.339485>,  <39.698895, 35.934933, 33.299240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931126, 35.889675, 33.339485>,  <40.318180, 35.814247, 33.406563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931126, 35.889675, 33.339485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121386, -0.234784, -0.964438,
		-0.221212, -0.953586, 0.204300,
		-0.967642, 0.188546, -0.167689,
		39.640835, 35.946243, 33.289177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020355, 35.371037, 32.846779>,  <40.318180, 35.814247, 33.406563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020355, 35.371037, 32.846779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.776569, 35.688068, 32.838978>,  <39.630299, 35.878288, 32.834297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.776569, 35.688068, 32.838978>,  <40.020355, 35.371037, 32.846779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776569, 35.688068, 32.838978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066287, -0.075453, -0.994944,
		-0.790041, -0.605086, 0.098523,
		-0.609460, 0.792577, -0.019502,
		39.593731, 35.925842, 32.833126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538769, 35.072178, 32.539883>,  <40.020355, 35.371037, 32.846779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538769, 35.072178, 32.539883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.487953, 35.465099, 32.484821>,  <39.457462, 35.700851, 32.451782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.487953, 35.465099, 32.484821>,  <39.538769, 35.072178, 32.539883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487953, 35.465099, 32.484821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247860, -0.165816, -0.954500,
		-0.960431, -0.087138, 0.264537,
		-0.127038, 0.982299, -0.137657,
		39.449841, 35.759789, 32.443523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960358, 35.087490, 32.197376>,  <39.538769, 35.072178, 32.539883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960358, 35.087490, 32.197376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114239, 35.446770, 32.112293>,  <39.206566, 35.662338, 32.061245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114239, 35.446770, 32.112293>,  <38.960358, 35.087490, 32.197376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114239, 35.446770, 32.112293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488847, 0.002787, -0.872365,
		-0.782963, 0.439583, 0.440153,
		0.384704, 0.898198, -0.212707,
		39.229649, 35.716228, 32.048481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442368, 35.376938, 31.941149>,  <38.960358, 35.087490, 32.197376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442368, 35.376938, 31.941149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750576, 35.599575, 31.816887>,  <38.935501, 35.733158, 31.742331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750576, 35.599575, 31.816887>,  <38.442368, 35.376938, 31.941149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750576, 35.599575, 31.816887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381038, 0.011503, -0.924488,
		-0.510991, 0.830705, 0.220946,
		0.770518, 0.556594, -0.310652,
		38.981731, 35.766552, 31.723692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101360, 36.037998, 31.586727>,  <38.442368, 35.376938, 31.941149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101360, 36.037998, 31.586727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481876, 36.038708, 31.463408>,  <38.710186, 36.039131, 31.389416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481876, 36.038708, 31.463408>,  <38.101360, 36.037998, 31.586727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481876, 36.038708, 31.463408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307931, 0.054570, -0.949842,
		0.015142, 0.998508, 0.052457,
		0.951288, 0.001771, -0.308298,
		38.767262, 36.039238, 31.370918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078285, 36.547665, 31.092270>,  <38.101360, 36.037998, 31.586727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078285, 36.547665, 31.092270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.402565, 36.325150, 31.019266>,  <38.597134, 36.191643, 30.975464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.402565, 36.325150, 31.019266>,  <38.078285, 36.547665, 31.092270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402565, 36.325150, 31.019266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305177, -0.135492, -0.942607,
		0.499628, 0.819872, -0.279609,
		0.810702, -0.556284, -0.182511,
		38.645775, 36.158264, 30.964514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292969, 36.777882, 30.392090>,  <38.078285, 36.547665, 31.092270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292969, 36.777882, 30.392090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495144, 36.440094, 30.462967>,  <38.616451, 36.237423, 30.505493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495144, 36.440094, 30.462967>,  <38.292969, 36.777882, 30.392090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495144, 36.440094, 30.462967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095963, -0.149067, -0.984160,
		0.857507, 0.514440, 0.005693,
		0.505443, -0.844470, 0.177193,
		38.646778, 36.186752, 30.516125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721272, 37.233051, 30.672741>,  <38.292969, 36.777882, 30.392090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721272, 37.233051, 30.672741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784672, 37.627510, 30.653164>,  <38.822712, 37.864185, 30.641418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784672, 37.627510, 30.653164>,  <38.721272, 37.233051, 30.672741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784672, 37.627510, 30.653164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624594, 0.138534, 0.768564,
		0.764695, -0.091252, 0.637898,
		0.158504, 0.986145, -0.048941,
		38.832222, 37.923355, 30.638481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854752, 37.470707, 31.349503>,  <38.721272, 37.233051, 30.672741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854752, 37.470707, 31.349503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721306, 37.790890, 31.150320>,  <38.641239, 37.983002, 31.030811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721306, 37.790890, 31.150320>,  <38.854752, 37.470707, 31.349503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721306, 37.790890, 31.150320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757038, 0.087288, 0.647514,
		0.561776, 0.592994, 0.576859,
		-0.333619, 0.800462, -0.497955,
		38.621220, 38.031029, 31.000933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550442, 37.836048, 31.869633>,  <38.854752, 37.470707, 31.349503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550442, 37.836048, 31.869633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.413376, 38.003273, 31.533108>,  <38.331135, 38.103607, 31.331194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.413376, 38.003273, 31.533108>,  <38.550442, 37.836048, 31.869633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413376, 38.003273, 31.533108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864794, 0.209501, 0.456334,
		0.367032, 0.883930, 0.289750,
		-0.342664, 0.418064, -0.841311,
		38.310577, 38.128693, 31.280714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210625, 38.355968, 32.051552>,  <38.550442, 37.836048, 31.869633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210625, 38.355968, 32.051552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067692, 38.303440, 31.681671>,  <37.981934, 38.271923, 31.459743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.067692, 38.303440, 31.681671>,  <38.210625, 38.355968, 32.051552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067692, 38.303440, 31.681671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912724, 0.259112, 0.315904,
		0.198117, 0.956878, -0.212448,
		-0.357329, -0.131321, -0.924700,
		37.960491, 38.264046, 31.404261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799377, 38.918026, 32.031124>,  <38.210625, 38.355968, 32.051552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799377, 38.918026, 32.031124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679825, 38.668797, 31.741999>,  <37.608093, 38.519260, 31.568523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679825, 38.668797, 31.741999>,  <37.799377, 38.918026, 32.031124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679825, 38.668797, 31.741999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952532, 0.148826, 0.265581,
		-0.057902, 0.767877, -0.637975,
		-0.298881, -0.623069, -0.722810,
		37.590160, 38.481876, 31.525156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323505, 39.193207, 31.536041>,  <37.799377, 38.918026, 32.031124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323505, 39.193207, 31.536041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.224342, 38.805767, 31.528524>,  <37.164845, 38.573303, 31.524014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.224342, 38.805767, 31.528524>,  <37.323505, 39.193207, 31.536041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224342, 38.805767, 31.528524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937166, 0.234852, 0.257999,
		-0.245485, 0.081570, -0.965962,
		-0.247904, -0.968602, -0.018792,
		37.149971, 38.515186, 31.522886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628635, 39.261658, 31.336870>,  <37.323505, 39.193207, 31.536041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628635, 39.261658, 31.336870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670071, 38.885738, 31.467129>,  <36.694931, 38.660187, 31.545284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670071, 38.885738, 31.467129>,  <36.628635, 39.261658, 31.336870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670071, 38.885738, 31.467129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965638, -0.016565, 0.259364,
		-0.238357, -0.341322, -0.909223,
		0.103588, -0.939801, 0.325645,
		36.701145, 38.603798, 31.564823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068863, 38.939587, 31.104927>,  <36.628635, 39.261658, 31.336870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068863, 38.939587, 31.104927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169048, 38.681404, 31.393551>,  <36.229160, 38.526493, 31.566725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169048, 38.681404, 31.393551>,  <36.068863, 38.939587, 31.104927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169048, 38.681404, 31.393551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948416, -0.013960, 0.316720,
		-0.194357, -0.763668, -0.615660,
		0.250463, -0.645458, 0.721562,
		36.244186, 38.487766, 31.610020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581429, 38.468513, 31.035303>,  <36.068863, 38.939587, 31.104927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581429, 38.468513, 31.035303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.749283, 38.402569, 31.392342>,  <35.849995, 38.363003, 31.606564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.749283, 38.402569, 31.392342>,  <35.581429, 38.468513, 31.035303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749283, 38.402569, 31.392342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887897, -0.278802, 0.365936,
		0.188530, -0.946093, -0.263372,
		0.419638, -0.164857, 0.892595,
		35.875175, 38.353111, 31.660120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221470, 37.878426, 31.300076>,  <35.581429, 38.468513, 31.035303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221470, 37.878426, 31.300076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.395748, 38.030972, 31.626200>,  <35.500317, 38.122498, 31.821875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.395748, 38.030972, 31.626200>,  <35.221470, 37.878426, 31.300076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395748, 38.030972, 31.626200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760078, -0.329304, 0.560215,
		0.482128, -0.863784, 0.146386,
		0.435700, 0.381360, 0.815310,
		35.526459, 38.145378, 31.870792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070812, 37.379498, 31.827436>,  <35.221470, 37.878426, 31.300076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070812, 37.379498, 31.827436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.154179, 37.743179, 31.971609>,  <35.204197, 37.961388, 32.058113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.154179, 37.743179, 31.971609>,  <35.070812, 37.379498, 31.827436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154179, 37.743179, 31.971609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916741, 0.053184, 0.395925,
		0.340808, -0.412939, 0.844590,
		0.208411, 0.909204, 0.360433,
		35.216702, 38.015942, 32.079739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281658, 37.402905, 31.757498>,  <35.070812, 37.379498, 31.827436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281658, 37.402905, 31.757498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.151058, 37.732639, 31.572514>,  <34.072697, 37.930481, 31.461523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.151058, 37.732639, 31.572514>,  <34.281658, 37.402905, 31.757498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151058, 37.732639, 31.572514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937834, 0.221578, -0.267152,
		-0.117751, -0.520938, -0.845434,
		-0.326499, 0.824334, -0.462462,
		34.053108, 37.979939, 31.433775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.696743, 37.584034, 27.414522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468075, 37.900055, 27.325966>,  <40.330875, 38.089668, 27.272833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468075, 37.900055, 27.325966>,  <40.696743, 37.584034, 27.414522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468075, 37.900055, 27.325966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255257, 0.085185, 0.963113,
		0.779769, 0.607092, 0.152969,
		-0.571668, 0.790052, -0.221389,
		40.296574, 38.137070, 27.259550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911106, 38.133614, 27.828466>,  <40.696743, 37.584034, 27.414522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911106, 38.133614, 27.828466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536049, 38.223167, 27.722107>,  <40.311016, 38.276901, 27.658291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536049, 38.223167, 27.722107>,  <40.911106, 38.133614, 27.828466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536049, 38.223167, 27.722107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211796, 0.238585, 0.947744,
		0.275626, 0.944962, -0.176289,
		-0.937642, 0.223886, -0.265900,
		40.254757, 38.290333, 27.642338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792728, 38.818897, 28.141716>,  <40.911106, 38.133614, 27.828466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792728, 38.818897, 28.141716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436947, 38.650898, 28.069641>,  <40.223476, 38.550098, 28.026396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436947, 38.650898, 28.069641>,  <40.792728, 38.818897, 28.141716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436947, 38.650898, 28.069641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237429, 0.087771, 0.967431,
		-0.390507, 0.903269, -0.177789,
		-0.889456, -0.420001, -0.180187,
		40.170109, 38.524899, 28.015585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437038, 38.999989, 28.719370>,  <40.792728, 38.818897, 28.141716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437038, 38.999989, 28.719370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177010, 38.743820, 28.555777>,  <40.020992, 38.590118, 28.457621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177010, 38.743820, 28.555777>,  <40.437038, 38.999989, 28.719370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177010, 38.743820, 28.555777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415317, -0.151271, 0.897011,
		-0.636334, 0.752977, -0.167642,
		-0.650070, -0.640423, -0.408983,
		39.981987, 38.551693, 28.433083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785503, 39.242168, 29.059441>,  <40.437038, 38.999989, 28.719370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785503, 39.242168, 29.059441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743870, 38.860886, 28.945906>,  <39.718891, 38.632114, 28.877785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743870, 38.860886, 28.945906>,  <39.785503, 39.242168, 29.059441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743870, 38.860886, 28.945906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585984, -0.171818, 0.791897,
		-0.803610, 0.248748, -0.540680,
		-0.104085, -0.953206, -0.283837,
		39.712643, 38.574924, 28.860754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114510, 39.032097, 29.008789>,  <39.785503, 39.242168, 29.059441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114510, 39.032097, 29.008789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295174, 38.680519, 29.070053>,  <39.403572, 38.469570, 29.106812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295174, 38.680519, 29.070053>,  <39.114510, 39.032097, 29.008789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295174, 38.680519, 29.070053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656578, -0.211215, 0.724082,
		-0.604079, -0.427599, -0.672494,
		0.451658, -0.878947, 0.153161,
		39.430672, 38.416836, 29.116001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580914, 38.595715, 29.125469>,  <39.114510, 39.032097, 29.008789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580914, 38.595715, 29.125469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904362, 38.432388, 29.294895>,  <39.098431, 38.334393, 29.396551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904362, 38.432388, 29.294895>,  <38.580914, 38.595715, 29.125469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904362, 38.432388, 29.294895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535411, -0.212315, 0.817470,
		-0.243858, -0.887805, -0.390301,
		0.808621, -0.408318, 0.423566,
		39.146950, 38.309895, 29.421965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351891, 38.005405, 29.495895>,  <38.580914, 38.595715, 29.125469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351891, 38.005405, 29.495895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718342, 38.035187, 29.653458>,  <38.938213, 38.053055, 29.747995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718342, 38.035187, 29.653458>,  <38.351891, 38.005405, 29.495895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718342, 38.035187, 29.653458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395116, 0.001660, 0.918630,
		0.067746, -0.997223, 0.030940,
		0.916130, 0.074459, 0.393906,
		38.993179, 38.057526, 29.771629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455067, 37.455444, 29.978222>,  <38.351891, 38.005405, 29.495895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455067, 37.455444, 29.978222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719185, 37.732281, 30.094856>,  <38.877655, 37.898380, 30.164837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719185, 37.732281, 30.094856>,  <38.455067, 37.455444, 29.978222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719185, 37.732281, 30.094856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333161, -0.078025, 0.939636,
		0.673061, -0.717585, 0.179057,
		0.660298, 0.692087, 0.291586,
		38.917274, 37.939907, 30.182333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818977, 36.791508, 29.779234>,  <38.455067, 37.455444, 29.978222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818977, 36.791508, 29.779234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768269, 36.418785, 29.915268>,  <38.737843, 36.195152, 29.996889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768269, 36.418785, 29.915268>,  <38.818977, 36.791508, 29.779234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768269, 36.418785, 29.915268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199322, -0.359788, -0.911495,
		0.971699, -0.047769, 0.231343,
		-0.126776, -0.931810, 0.340084,
		38.730236, 36.139240, 30.017294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430504, 36.367245, 29.561140>,  <38.818977, 36.791508, 29.779234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430504, 36.367245, 29.561140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158409, 36.083069, 29.633314>,  <38.995152, 35.912563, 29.676619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158409, 36.083069, 29.633314>,  <39.430504, 36.367245, 29.561140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158409, 36.083069, 29.633314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167787, -0.390548, -0.905163,
		0.713529, -0.585451, 0.384867,
		-0.680238, -0.710436, 0.180437,
		38.954338, 35.869938, 29.687445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851353, 35.749538, 29.436577>,  <39.430504, 36.367245, 29.561140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851353, 35.749538, 29.436577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458721, 35.684528, 29.396414>,  <39.223141, 35.645523, 29.372316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458721, 35.684528, 29.396414>,  <39.851353, 35.749538, 29.436577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458721, 35.684528, 29.396414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164237, -0.449440, -0.878083,
		0.097584, -0.878401, 0.467855,
		-0.981582, -0.162526, -0.100407,
		39.164246, 35.635769, 29.366291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859470, 35.134052, 29.119177>,  <39.851353, 35.749538, 29.436577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859470, 35.134052, 29.119177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479523, 35.250797, 29.074352>,  <39.251553, 35.320843, 29.047457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479523, 35.250797, 29.074352>,  <39.859470, 35.134052, 29.119177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479523, 35.250797, 29.074352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009783, -0.330523, -0.943747,
		-0.312472, -0.897540, 0.311101,
		-0.949877, 0.291851, -0.112060,
		39.194561, 35.338356, 29.040733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642006, 34.609993, 28.800278>,  <39.859470, 35.134052, 29.119177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642006, 34.609993, 28.800278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376160, 34.893181, 28.704725>,  <39.216652, 35.063095, 28.647394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376160, 34.893181, 28.704725>,  <39.642006, 34.609993, 28.800278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376160, 34.893181, 28.704725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231781, -0.499281, -0.834863,
		-0.710331, -0.499490, 0.495922,
		-0.664610, 0.707975, -0.238883,
		39.176777, 35.105572, 28.633060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039581, 34.274162, 28.472292>,  <39.642006, 34.609993, 28.800278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039581, 34.274162, 28.472292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984692, 34.656368, 28.367857>,  <38.951759, 34.885693, 28.305197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984692, 34.656368, 28.367857>,  <39.039581, 34.274162, 28.472292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984692, 34.656368, 28.367857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298416, -0.291213, -0.908924,
		-0.944520, -0.046815, 0.325102,
		-0.137225, 0.955512, -0.261086,
		38.943523, 34.943024, 28.289532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439819, 34.258850, 28.122484>,  <39.039581, 34.274162, 28.472292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439819, 34.258850, 28.122484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640259, 34.576920, 27.985893>,  <38.760521, 34.767761, 27.903938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640259, 34.576920, 27.985893>,  <38.439819, 34.258850, 28.122484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640259, 34.576920, 27.985893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002423, -0.393302, -0.919406,
		-0.865388, 0.461539, -0.195155,
		0.501097, 0.795170, -0.341477,
		38.790588, 34.815472, 27.883450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181164, 34.312977, 27.436790>,  <38.439819, 34.258850, 28.122484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181164, 34.312977, 27.436790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521481, 34.522793, 27.449503>,  <38.725670, 34.648682, 27.457130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521481, 34.522793, 27.449503>,  <38.181164, 34.312977, 27.436790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521481, 34.522793, 27.449503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245557, -0.343363, -0.906534,
		-0.464597, 0.779078, -0.420935,
		0.850794, 0.524537, 0.031782,
		38.776718, 34.680153, 27.459038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360058, 34.466503, 26.715252>,  <38.181164, 34.312977, 27.436790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360058, 34.466503, 26.715252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709587, 34.543274, 26.893959>,  <38.919304, 34.589336, 27.001184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709587, 34.543274, 26.893959>,  <38.360058, 34.466503, 26.715252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709587, 34.543274, 26.893959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477709, -0.167382, -0.862426,
		-0.090745, 0.967030, -0.237948,
		0.873819, 0.191931, 0.446769,
		38.971733, 34.600853, 27.027990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743343, 34.856033, 26.195326>,  <38.360058, 34.466503, 26.715252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743343, 34.856033, 26.195326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991611, 34.669926, 26.447765>,  <39.140572, 34.558262, 26.599230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991611, 34.669926, 26.447765>,  <38.743343, 34.856033, 26.195326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991611, 34.669926, 26.447765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612838, -0.214194, -0.760625,
		0.489073, 0.858863, 0.152189,
		0.620675, -0.465269, 0.631100,
		39.177814, 34.530346, 26.637094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348232, 35.099617, 25.954479>,  <38.743343, 34.856033, 26.195326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348232, 35.099617, 25.954479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460663, 34.781055, 26.168673>,  <39.528122, 34.589920, 26.297190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460663, 34.781055, 26.168673>,  <39.348232, 35.099617, 25.954479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460663, 34.781055, 26.168673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643439, -0.257600, -0.720853,
		0.712029, 0.547163, 0.440031,
		0.281072, -0.796401, 0.535485,
		39.544983, 34.542133, 26.329317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204563, 35.093327, 25.964008>,  <39.348232, 35.099617, 25.954479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204563, 35.093327, 25.964008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078205, 34.725403, 26.057095>,  <40.002388, 34.504650, 26.112946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078205, 34.725403, 26.057095>,  <40.204563, 35.093327, 25.964008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078205, 34.725403, 26.057095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462649, -0.363472, -0.808607,
		0.828350, -0.147772, 0.540370,
		-0.315898, -0.919811, 0.232715,
		39.983437, 34.449459, 26.126909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741104, 34.700104, 25.715502>,  <40.204563, 35.093327, 25.964008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741104, 34.700104, 25.715502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452702, 34.428146, 25.768991>,  <40.279659, 34.264973, 25.801086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452702, 34.428146, 25.768991>,  <40.741104, 34.700104, 25.715502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452702, 34.428146, 25.768991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452815, -0.608393, -0.651780,
		0.524501, -0.409387, 0.746526,
		-0.721011, -0.679898, 0.133726,
		40.236397, 34.224178, 25.809109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053429, 34.063969, 25.983986>,  <40.741104, 34.700104, 25.715502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053429, 34.063969, 25.983986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693779, 33.969231, 25.836758>,  <40.477989, 33.912388, 25.748421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693779, 33.969231, 25.836758>,  <41.053429, 34.063969, 25.983986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693779, 33.969231, 25.836758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430904, -0.331505, -0.839301,
		0.076764, -0.913242, 0.400121,
		-0.899127, -0.236842, -0.368072,
		40.424042, 33.898178, 25.726336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.793934, 37.733685, 22.747744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105911, 37.913486, 22.921932>,  <35.293098, 38.021366, 23.026445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105911, 37.913486, 22.921932>,  <34.793934, 37.733685, 22.747744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105911, 37.913486, 22.921932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416134, -0.147247, 0.897302,
		0.467462, -0.881059, 0.072210,
		0.779943, 0.449503, 0.435471,
		35.339893, 38.048336, 23.052574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915485, 37.358044, 23.242252>,  <34.793934, 37.733685, 22.747744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915485, 37.358044, 23.242252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.101105, 37.690353, 23.365198>,  <35.212475, 37.889740, 23.438965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.101105, 37.690353, 23.365198>,  <34.915485, 37.358044, 23.242252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101105, 37.690353, 23.365198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188023, -0.246699, 0.950677,
		0.865626, -0.498949, 0.041726,
		0.464046, 0.830776, 0.307363,
		35.240318, 37.939587, 23.457407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278755, 37.195610, 23.729027>,  <34.915485, 37.358044, 23.242252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278755, 37.195610, 23.729027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273590, 37.589706, 23.797298>,  <35.270493, 37.826164, 23.838263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.273590, 37.589706, 23.797298>,  <35.278755, 37.195610, 23.729027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273590, 37.589706, 23.797298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179623, -0.170204, 0.968900,
		0.983651, -0.018149, 0.179169,
		-0.012911, 0.985242, 0.170681,
		35.269718, 37.885281, 23.848503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680820, 37.283714, 24.275345>,  <35.278755, 37.195610, 23.729027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680820, 37.283714, 24.275345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.442699, 37.604939, 24.264652>,  <35.299828, 37.797672, 24.258236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.442699, 37.604939, 24.264652>,  <35.680820, 37.283714, 24.275345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442699, 37.604939, 24.264652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259806, -0.160897, 0.952162,
		0.760342, 0.573766, 0.304422,
		-0.595298, 0.803060, -0.026731,
		35.264111, 37.845856, 24.256634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837307, 37.565094, 24.873333>,  <35.680820, 37.283714, 24.275345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837307, 37.565094, 24.873333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491146, 37.747879, 24.791096>,  <35.283451, 37.857548, 24.741753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491146, 37.747879, 24.791096>,  <35.837307, 37.565094, 24.873333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491146, 37.747879, 24.791096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180405, 0.098652, 0.978633,
		0.467479, 0.883999, -0.002935,
		-0.865400, 0.456960, -0.205595,
		35.231525, 37.884968, 24.729418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714798, 38.019840, 25.468355>,  <35.837307, 37.565094, 24.873333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714798, 38.019840, 25.468355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.359108, 38.041149, 25.286612>,  <35.145695, 38.053936, 25.177565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.359108, 38.041149, 25.286612>,  <35.714798, 38.019840, 25.468355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359108, 38.041149, 25.286612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450796, 0.067021, 0.890107,
		0.077869, 0.996328, -0.035582,
		-0.889224, 0.053272, -0.454360,
		35.092342, 38.057129, 25.150303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260422, 38.574879, 25.808674>,  <35.714798, 38.019840, 25.468355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260422, 38.574879, 25.808674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003452, 38.314106, 25.647537>,  <34.849270, 38.157642, 25.550856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003452, 38.314106, 25.647537>,  <35.260422, 38.574879, 25.808674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003452, 38.314106, 25.647537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327328, -0.241877, 0.913429,
		-0.692931, 0.718667, -0.058008,
		-0.642420, -0.651931, -0.402843,
		34.810726, 38.118526, 25.526684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602520, 38.749855, 26.036243>,  <35.260422, 38.574879, 25.808674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602520, 38.749855, 26.036243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576046, 38.363361, 25.936638>,  <34.560162, 38.131466, 25.876875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576046, 38.363361, 25.936638>,  <34.602520, 38.749855, 26.036243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576046, 38.363361, 25.936638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580783, -0.165623, 0.797032,
		-0.811363, 0.197379, -0.550211,
		-0.066189, -0.966235, -0.249015,
		34.556190, 38.073490, 25.861933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821213, 38.546352, 25.988176>,  <34.602520, 38.749855, 26.036243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821213, 38.546352, 25.988176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.033791, 38.212330, 26.045107>,  <34.161335, 38.011917, 26.079266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.033791, 38.212330, 26.045107>,  <33.821213, 38.546352, 25.988176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033791, 38.212330, 26.045107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527184, -0.194523, 0.827187,
		-0.663061, -0.514631, -0.543604,
		0.531439, -0.835055, 0.142325,
		34.193222, 37.961815, 26.087805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370296, 38.020329, 26.182741>,  <33.821213, 38.546352, 25.988176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370296, 38.020329, 26.182741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.711098, 37.863007, 26.320961>,  <33.915577, 37.768616, 26.403893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.711098, 37.863007, 26.320961>,  <33.370296, 38.020329, 26.182741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711098, 37.863007, 26.320961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475966, -0.307000, 0.824140,
		-0.218049, -0.866642, -0.448762,
		0.852004, -0.393299, 0.345551,
		33.966698, 37.745014, 26.424625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184574, 37.364986, 26.350193>,  <33.370296, 38.020329, 26.182741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184574, 37.364986, 26.350193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.500786, 37.488091, 26.561985>,  <33.690514, 37.561951, 26.689060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.500786, 37.488091, 26.561985>,  <33.184574, 37.364986, 26.350193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500786, 37.488091, 26.561985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553767, -0.010012, 0.832612,
		0.261544, -0.951412, 0.162511,
		0.790529, 0.307758, 0.529479,
		33.737946, 37.580418, 26.720829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175972, 36.936180, 26.872448>,  <33.184574, 37.364986, 26.350193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175972, 36.936180, 26.872448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.428375, 37.218472, 27.001308>,  <33.579815, 37.387848, 27.078625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.428375, 37.218472, 27.001308>,  <33.175972, 36.936180, 26.872448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428375, 37.218472, 27.001308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236231, -0.220744, 0.946291,
		0.738936, -0.673217, 0.027424,
		0.631005, 0.705728, 0.322150,
		33.617676, 37.430191, 27.097954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422947, 36.574326, 27.485304>,  <33.175972, 36.936180, 26.872448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422947, 36.574326, 27.485304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.509186, 36.963615, 27.517162>,  <33.560928, 37.197189, 27.536278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.509186, 36.963615, 27.517162>,  <33.422947, 36.574326, 27.485304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509186, 36.963615, 27.517162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329100, -0.004372, 0.944285,
		0.919354, -0.229796, 0.319347,
		0.215596, 0.973229, 0.079646,
		33.573864, 37.255585, 27.541056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969227, 36.564247, 28.010130>,  <33.422947, 36.574326, 27.485304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969227, 36.564247, 28.010130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.789303, 36.921009, 27.991438>,  <33.681347, 37.135067, 27.980223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.789303, 36.921009, 27.991438>,  <33.969227, 36.564247, 28.010130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789303, 36.921009, 27.991438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182683, -0.040664, 0.982331,
		0.874242, 0.450397, 0.181226,
		-0.449808, 0.891902, -0.046730,
		33.654362, 37.188580, 27.977419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271717, 36.149384, 28.537182>,  <33.969227, 36.564247, 28.010130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271717, 36.149384, 28.537182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142551, 35.775070, 28.593813>,  <34.065052, 35.550484, 28.627790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.142551, 35.775070, 28.593813>,  <34.271717, 36.149384, 28.537182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142551, 35.775070, 28.593813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348298, -0.256589, -0.901582,
		0.880010, -0.241819, 0.408786,
		-0.322910, -0.935781, 0.141576,
		34.045677, 35.494335, 28.636286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843960, 35.846684, 28.319176>,  <34.271717, 36.149384, 28.537182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843960, 35.846684, 28.319176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.523468, 35.607658, 28.306906>,  <34.331173, 35.464241, 28.299543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.523468, 35.607658, 28.306906>,  <34.843960, 35.846684, 28.319176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523468, 35.607658, 28.306906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230910, -0.261501, -0.937175,
		0.552002, -0.757979, 0.347507,
		-0.801233, -0.597565, -0.030676,
		34.283096, 35.428391, 28.297703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103317, 35.295799, 28.003246>,  <34.843960, 35.846684, 28.319176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103317, 35.295799, 28.003246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716412, 35.220741, 27.934914>,  <34.484268, 35.175705, 27.893913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716412, 35.220741, 27.934914>,  <35.103317, 35.295799, 28.003246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716412, 35.220741, 27.934914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191467, -0.097868, -0.976607,
		0.166540, -0.977348, 0.130593,
		-0.967266, -0.187649, -0.170831,
		34.426231, 35.164448, 27.883665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001785, 34.569920, 27.730484>,  <35.103317, 35.295799, 28.003246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001785, 34.569920, 27.730484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702621, 34.806007, 27.608976>,  <34.523125, 34.947659, 27.536072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702621, 34.806007, 27.608976>,  <35.001785, 34.569920, 27.730484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702621, 34.806007, 27.608976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276213, -0.139408, -0.950932,
		-0.603607, -0.795113, -0.058763,
		-0.747907, 0.590221, -0.303768,
		34.478249, 34.983074, 27.517845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720097, 34.274876, 27.206406>,  <35.001785, 34.569920, 27.730484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720097, 34.274876, 27.206406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.592583, 34.647091, 27.134317>,  <34.516075, 34.870419, 27.091064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.592583, 34.647091, 27.134317>,  <34.720097, 34.274876, 27.206406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592583, 34.647091, 27.134317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285046, -0.087214, -0.954538,
		-0.903948, -0.355666, -0.237442,
		-0.318789, 0.930535, -0.180218,
		34.496944, 34.926250, 27.080252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518097, 34.254070, 26.512701>,  <34.720097, 34.274876, 27.206406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518097, 34.254070, 26.512701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.512234, 34.649803, 26.570686>,  <34.508717, 34.887241, 26.605476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.512234, 34.649803, 26.570686>,  <34.518097, 34.254070, 26.512701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512234, 34.649803, 26.570686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218371, 0.144645, -0.965086,
		-0.975756, 0.017513, -0.218161,
		-0.014654, 0.989329, 0.144962,
		34.507839, 34.946602, 26.614176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115444, 34.545033, 25.991156>,  <34.518097, 34.254070, 26.512701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115444, 34.545033, 25.991156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339558, 34.856510, 26.104099>,  <34.474026, 35.043396, 26.171865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339558, 34.856510, 26.104099>,  <34.115444, 34.545033, 25.991156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339558, 34.856510, 26.104099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165211, 0.228979, -0.959309,
		-0.811660, 0.584130, -0.000357,
		0.560279, 0.778692, 0.282358,
		34.507641, 35.090118, 26.188807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944828, 35.216877, 25.591587>,  <34.115444, 34.545033, 25.991156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944828, 35.216877, 25.591587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.318222, 35.259266, 25.728632>,  <34.542259, 35.284698, 25.810860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.318222, 35.259266, 25.728632>,  <33.944828, 35.216877, 25.591587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318222, 35.259266, 25.728632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316395, 0.206425, -0.925896,
		-0.168844, 0.972707, 0.159164,
		0.933481, 0.105973, 0.342613,
		34.598267, 35.291058, 25.831415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206554, 35.867981, 25.395399>,  <33.944828, 35.216877, 25.591587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206554, 35.867981, 25.395399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.523251, 35.634624, 25.467834>,  <34.713268, 35.494610, 25.511295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.523251, 35.634624, 25.467834>,  <34.206554, 35.867981, 25.395399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523251, 35.634624, 25.467834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453308, 0.362423, -0.814347,
		0.409456, 0.726842, 0.551404,
		0.791743, -0.583395, 0.181087,
		34.760773, 35.459606, 25.522161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857273, 36.282810, 25.231733>,  <34.206554, 35.867981, 25.395399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857273, 36.282810, 25.231733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989029, 35.905315, 25.219980>,  <35.068081, 35.678818, 25.212929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989029, 35.905315, 25.219980>,  <34.857273, 36.282810, 25.231733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989029, 35.905315, 25.219980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600433, 0.233381, -0.764862,
		0.728686, 0.234296, 0.643523,
		0.329390, -0.943737, -0.029383,
		35.087845, 35.622196, 25.211166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627296, 36.313190, 25.077015>,  <34.857273, 36.282810, 25.231733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627296, 36.313190, 25.077015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513069, 35.952087, 24.948343>,  <35.444534, 35.735424, 24.871141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513069, 35.952087, 24.948343>,  <35.627296, 36.313190, 25.077015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513069, 35.952087, 24.948343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611279, 0.086931, -0.786627,
		0.738098, -0.421271, 0.527012,
		-0.285569, -0.902759, -0.321677,
		35.427399, 35.681259, 24.851839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241711, 35.877228, 24.997114>,  <35.627296, 36.313190, 25.077015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241711, 35.877228, 24.997114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.958786, 35.719208, 24.762629>,  <35.789032, 35.624393, 24.621937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.958786, 35.719208, 24.762629>,  <36.241711, 35.877228, 24.997114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958786, 35.719208, 24.762629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653083, -0.047809, -0.755775,
		0.270545, -0.917413, 0.291818,
		-0.707310, -0.395053, -0.586213,
		35.746593, 35.600693, 24.586765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545700, 35.377605, 24.728037>,  <36.241711, 35.877228, 24.997114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545700, 35.377605, 24.728037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249016, 35.439369, 24.466955>,  <36.071007, 35.476429, 24.310307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249016, 35.439369, 24.466955>,  <36.545700, 35.377605, 24.728037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249016, 35.439369, 24.466955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642970, -0.113340, -0.757459,
		-0.190935, -0.981485, -0.015215,
		-0.741710, 0.154408, -0.652706,
		36.026505, 35.485691, 24.271143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692513, 34.934658, 24.178720>,  <36.545700, 35.377605, 24.728037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692513, 34.934658, 24.178720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.419338, 35.184803, 24.027710>,  <36.255436, 35.334888, 23.937103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.419338, 35.184803, 24.027710>,  <36.692513, 34.934658, 24.178720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419338, 35.184803, 24.027710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387777, -0.127620, -0.912876,
		-0.619059, -0.769827, -0.155346,
		-0.682931, 0.625363, -0.377525,
		36.214458, 35.372414, 23.914452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735756, 34.229012, 24.219458>,  <36.692513, 34.934658, 24.178720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735756, 34.229012, 24.219458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997753, 33.927414, 24.239353>,  <37.154953, 33.746456, 24.251291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997753, 33.927414, 24.239353>,  <36.735756, 34.229012, 24.219458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997753, 33.927414, 24.239353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255400, -0.158951, 0.953680,
		-0.711166, -0.637356, -0.296683,
		0.654992, -0.753997, 0.049740,
		37.194252, 33.701214, 24.254274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387249, 33.682350, 24.613451>,  <36.735756, 34.229012, 24.219458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387249, 33.682350, 24.613451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.779095, 33.608608, 24.645361>,  <37.014202, 33.564365, 24.664507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.779095, 33.608608, 24.645361>,  <36.387249, 33.682350, 24.613451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779095, 33.608608, 24.645361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096390, -0.082974, 0.991879,
		-0.176239, -0.979351, -0.099052,
		0.979617, -0.184355, 0.079777,
		37.072979, 33.553303, 24.669294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423195, 33.026566, 25.091728>,  <36.387249, 33.682350, 24.613451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423195, 33.026566, 25.091728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.767502, 33.227718, 25.123211>,  <36.974087, 33.348408, 25.142101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.767502, 33.227718, 25.123211>,  <36.423195, 33.026566, 25.091728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767502, 33.227718, 25.123211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013199, -0.176635, 0.984188,
		0.508830, -0.846117, -0.158679,
		0.860766, 0.502879, 0.078709,
		37.025730, 33.378582, 25.146824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793201, 32.631367, 25.546957>,  <36.423195, 33.026566, 25.091728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793201, 32.631367, 25.546957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.965233, 32.990810, 25.581661>,  <37.068451, 33.206478, 25.602484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.965233, 32.990810, 25.581661>,  <36.793201, 32.631367, 25.546957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965233, 32.990810, 25.581661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124040, -0.036375, 0.991610,
		0.894228, -0.437236, 0.095820,
		0.430082, 0.898611, 0.086762,
		37.094257, 33.260395, 25.607691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371593, 32.503193, 25.911253>,  <36.793201, 32.631367, 25.546957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371593, 32.503193, 25.911253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329548, 32.898151, 25.958569>,  <37.304321, 33.135128, 25.986958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329548, 32.898151, 25.958569>,  <37.371593, 32.503193, 25.911253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329548, 32.898151, 25.958569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145786, -0.102363, 0.984006,
		0.983716, 0.120681, -0.133189,
		-0.105117, 0.987400, 0.118290,
		37.298012, 33.194370, 25.994055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786415, 32.564682, 26.409521>,  <37.371593, 32.503193, 25.911253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786415, 32.564682, 26.409521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556931, 32.892021, 26.423187>,  <37.419239, 33.088425, 26.431387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556931, 32.892021, 26.423187>,  <37.786415, 32.564682, 26.409521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556931, 32.892021, 26.423187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037654, -0.068021, 0.996973,
		0.818192, 0.570687, 0.069838,
		-0.573710, 0.818346, 0.034165,
		37.384819, 33.137524, 26.433437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036915, 32.930702, 26.949631>,  <37.786415, 32.564682, 26.409521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036915, 32.930702, 26.949631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654114, 33.037251, 26.903694>,  <37.424431, 33.101177, 26.876131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654114, 33.037251, 26.903694>,  <38.036915, 32.930702, 26.949631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654114, 33.037251, 26.903694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114580, 0.016582, 0.993276,
		0.266482, 0.963729, 0.014651,
		-0.957005, 0.266369, -0.114843,
		37.367012, 33.117161, 26.869242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015598, 33.377686, 27.413595>,  <38.036915, 32.930702, 26.949631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015598, 33.377686, 27.413595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625477, 33.312912, 27.353506>,  <37.391403, 33.274048, 27.317453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625477, 33.312912, 27.353506>,  <38.015598, 33.377686, 27.413595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625477, 33.312912, 27.353506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163380, 0.071192, 0.983991,
		-0.148646, 0.984230, -0.095891,
		-0.975301, -0.161933, -0.150221,
		37.332886, 33.264332, 27.308439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627575, 33.911041, 27.698624>,  <38.015598, 33.377686, 27.413595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627575, 33.911041, 27.698624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.429829, 33.564072, 27.676085>,  <37.311180, 33.355888, 27.662561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.429829, 33.564072, 27.676085>,  <37.627575, 33.911041, 27.698624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429829, 33.564072, 27.676085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115547, 0.001329, 0.993301,
		-0.861542, 0.497562, -0.100885,
		-0.494363, -0.867427, -0.056347,
		37.281521, 33.303844, 27.659180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039829, 34.071800, 28.051352>,  <37.627575, 33.911041, 27.698624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039829, 34.071800, 28.051352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105530, 33.677914, 28.074514>,  <37.144951, 33.441582, 28.088413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105530, 33.677914, 28.074514>,  <37.039829, 34.071800, 28.051352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105530, 33.677914, 28.074514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090896, 0.043346, 0.994917,
		-0.982221, -0.168684, -0.082387,
		0.164255, -0.984717, 0.057908,
		37.154808, 33.382500, 28.091887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480743, 33.706726, 28.430456>,  <37.039829, 34.071800, 28.051352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480743, 33.706726, 28.430456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803135, 33.471298, 28.455715>,  <36.996571, 33.330044, 28.470871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803135, 33.471298, 28.455715>,  <36.480743, 33.706726, 28.430456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803135, 33.471298, 28.455715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035686, 0.058173, 0.997668,
		-0.590869, -0.806352, 0.025882,
		0.805978, -0.588568, 0.063148,
		37.044930, 33.294727, 28.474659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226955, 33.215973, 28.919365>,  <36.480743, 33.706726, 28.430456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226955, 33.215973, 28.919365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626270, 33.195942, 28.907255>,  <36.865860, 33.183922, 28.899988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626270, 33.195942, 28.907255>,  <36.226955, 33.215973, 28.919365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626270, 33.195942, 28.907255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026896, -0.066848, 0.997401,
		-0.051961, -0.996507, -0.065386,
		0.998287, -0.050067, -0.030276,
		36.925755, 33.180916, 28.898172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375923, 32.781849, 29.514763>,  <36.226955, 33.215973, 28.919365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375923, 32.781849, 29.514763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724007, 32.948963, 29.410303>,  <36.932858, 33.049232, 29.347628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.724007, 32.948963, 29.410303>,  <36.375923, 32.781849, 29.514763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724007, 32.948963, 29.410303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272918, 0.032548, 0.961487,
		0.410194, -0.907963, -0.085697,
		0.870205, 0.417784, -0.261150,
		36.985069, 33.074299, 29.331959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766441, 32.365204, 29.812292>,  <36.375923, 32.781849, 29.514763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766441, 32.365204, 29.812292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943970, 32.716690, 29.742006>,  <37.050488, 32.927582, 29.699835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943970, 32.716690, 29.742006>,  <36.766441, 32.365204, 29.812292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943970, 32.716690, 29.742006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290319, 0.044512, 0.955894,
		0.847783, -0.475262, -0.235353,
		0.443824, 0.878718, -0.175714,
		37.077118, 32.980305, 29.689293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.176987, 33.271229, 25.666883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.850895, 33.438995, 25.507133>,  <40.655239, 33.539654, 25.411283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.850895, 33.438995, 25.507133>,  <41.176987, 33.271229, 25.666883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850895, 33.438995, 25.507133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214895, -0.421298, -0.881095,
		-0.537798, -0.804115, 0.253323,
		-0.815226, 0.419413, -0.399374,
		40.606327, 33.564819, 25.387321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764263, 32.738216, 25.286673>,  <41.176987, 33.271229, 25.666883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764263, 32.738216, 25.286673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702732, 33.113132, 25.161564>,  <40.665813, 33.338081, 25.086498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702732, 33.113132, 25.161564>,  <40.764263, 32.738216, 25.286673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702732, 33.113132, 25.161564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048489, -0.323321, -0.945046,
		-0.986907, -0.130209, 0.095184,
		-0.153828, 0.937288, -0.312774,
		40.656582, 33.394318, 25.067732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243763, 32.729233, 24.811037>,  <40.764263, 32.738216, 25.286673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243763, 32.729233, 24.811037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.418514, 33.075745, 24.714132>,  <40.523365, 33.283653, 24.655989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.418514, 33.075745, 24.714132>,  <40.243763, 32.729233, 24.811037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418514, 33.075745, 24.714132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040752, -0.249986, -0.967391,
		-0.898597, 0.432505, -0.073910,
		0.436878, 0.866283, -0.242262,
		40.549576, 33.335629, 24.641453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951168, 33.066757, 24.204655>,  <40.243763, 32.729233, 24.811037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951168, 33.066757, 24.204655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297432, 33.265022, 24.176533>,  <40.505192, 33.383984, 24.159660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297432, 33.265022, 24.176533>,  <39.951168, 33.066757, 24.204655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297432, 33.265022, 24.176533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120239, 0.069528, -0.990307,
		-0.485974, 0.865725, 0.119786,
		0.865662, 0.495667, -0.070306,
		40.557129, 33.413723, 24.155441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792953, 33.501526, 23.639488>,  <39.951168, 33.066757, 24.204655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792953, 33.501526, 23.639488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.186954, 33.555176, 23.682886>,  <40.423355, 33.587368, 23.708925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.186954, 33.555176, 23.682886>,  <39.792953, 33.501526, 23.639488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186954, 33.555176, 23.682886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072790, 0.247036, -0.966268,
		-0.156406, 0.959678, 0.233569,
		0.985007, 0.134129, 0.108493,
		40.482456, 33.595413, 23.715433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970490, 34.205147, 23.270161>,  <39.792953, 33.501526, 23.639488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970490, 34.205147, 23.270161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315784, 34.004955, 23.296537>,  <40.522961, 33.884842, 23.312363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315784, 34.004955, 23.296537>,  <39.970490, 34.205147, 23.270161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315784, 34.004955, 23.296537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244945, 0.301062, -0.921609,
		0.441389, 0.811719, 0.382477,
		0.863237, -0.500474, 0.065941,
		40.574757, 33.854813, 23.316320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479595, 34.676388, 23.056776>,  <39.970490, 34.205147, 23.270161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479595, 34.676388, 23.056776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.657539, 34.319019, 23.031820>,  <40.764305, 34.104599, 23.016846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.657539, 34.319019, 23.031820>,  <40.479595, 34.676388, 23.056776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657539, 34.319019, 23.031820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251761, 0.191606, -0.948632,
		0.859485, 0.406303, 0.310168,
		0.444862, -0.893423, -0.062391,
		40.790997, 34.050991, 23.013103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224655, 34.718575, 22.876980>,  <40.479595, 34.676388, 23.056776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224655, 34.718575, 22.876980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.086151, 34.367134, 22.745422>,  <41.003048, 34.156269, 22.666489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.086151, 34.367134, 22.745422>,  <41.224655, 34.718575, 22.876980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086151, 34.367134, 22.745422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345830, 0.206347, -0.915326,
		0.872069, -0.430683, 0.232395,
		-0.346261, -0.878597, -0.328892,
		40.982273, 34.103554, 22.646755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817005, 34.422321, 22.499262>,  <41.224655, 34.718575, 22.876980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817005, 34.422321, 22.499262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.496613, 34.227257, 22.360338>,  <41.304379, 34.110218, 22.276985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.496613, 34.227257, 22.360338>,  <41.817005, 34.422321, 22.499262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496613, 34.227257, 22.360338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362442, 0.066752, -0.929613,
		0.476516, -0.870479, 0.123281,
		-0.800980, -0.487657, -0.347307,
		41.256317, 34.080959, 22.256145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082951, 34.145306, 21.937670>,  <41.817005, 34.422321, 22.499262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082951, 34.145306, 21.937670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.692966, 34.075882, 21.882061>,  <41.458977, 34.034225, 21.848696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.692966, 34.075882, 21.882061>,  <42.082951, 34.145306, 21.937670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692966, 34.075882, 21.882061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118001, 0.126101, -0.984974,
		0.188488, -0.976716, -0.102463,
		-0.974960, -0.173565, -0.139022,
		41.400478, 34.023815, 21.840355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958763, 33.634918, 21.456314>,  <42.082951, 34.145306, 21.937670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958763, 33.634918, 21.456314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.634712, 33.867012, 21.422800>,  <41.440281, 34.006268, 21.402691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.634712, 33.867012, 21.422800>,  <41.958763, 33.634918, 21.456314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634712, 33.867012, 21.422800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170428, 0.096346, -0.980649,
		-0.560932, -0.808732, -0.176941,
		-0.810130, 0.580233, -0.083787,
		41.391674, 34.041080, 21.397663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581387, 33.389858, 20.947601>,  <41.958763, 33.634918, 21.456314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581387, 33.389858, 20.947601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479935, 33.774292, 20.991402>,  <41.419064, 34.004951, 21.017683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479935, 33.774292, 20.991402>,  <41.581387, 33.389858, 20.947601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479935, 33.774292, 20.991402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051149, 0.099720, -0.993700,
		-0.965948, -0.257632, 0.023867,
		-0.253629, 0.961084, 0.109502,
		41.403847, 34.062618, 21.024252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967957, 33.549686, 20.510708>,  <41.581387, 33.389858, 20.947601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967957, 33.549686, 20.510708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.183556, 33.882317, 20.564316>,  <41.312916, 34.081894, 20.596481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.183556, 33.882317, 20.564316>,  <40.967957, 33.549686, 20.510708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183556, 33.882317, 20.564316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111429, 0.087318, -0.989929,
		-0.834901, 0.548508, -0.045596,
		0.539002, 0.831574, 0.134022,
		41.345257, 34.131790, 20.604523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681503, 33.973778, 20.036341>,  <40.967957, 33.549686, 20.510708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681503, 33.973778, 20.036341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.056911, 34.080292, 20.124228>,  <41.282154, 34.144199, 20.176960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.056911, 34.080292, 20.124228>,  <40.681503, 33.973778, 20.036341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056911, 34.080292, 20.124228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189465, 0.134739, -0.972599,
		-0.288594, 0.954430, 0.076003,
		0.938518, 0.266286, 0.219716,
		41.338467, 34.160179, 20.190142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254059, 33.375237, 19.702232>,  <40.681503, 33.973778, 20.036341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254059, 33.375237, 19.702232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927689, 33.243542, 19.512129>,  <39.731869, 33.164524, 19.398066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927689, 33.243542, 19.512129>,  <40.254059, 33.375237, 19.702232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927689, 33.243542, 19.512129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488268, -0.047820, 0.871383,
		-0.309622, 0.943034, -0.121740,
		-0.815922, -0.329241, -0.475260,
		39.682911, 33.144768, 19.369551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699459, 33.831451, 19.821825>,  <40.254059, 33.375237, 19.702232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699459, 33.831451, 19.821825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538826, 33.477844, 19.726120>,  <39.442444, 33.265682, 19.668697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538826, 33.477844, 19.726120>,  <39.699459, 33.831451, 19.821825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538826, 33.477844, 19.726120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495715, -0.009855, 0.868429,
		-0.770061, 0.467357, -0.434261,
		-0.401587, -0.884014, -0.239265,
		39.418350, 33.212639, 19.654341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994141, 33.857166, 19.982815>,  <39.699459, 33.831451, 19.821825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994141, 33.857166, 19.982815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.054283, 33.462013, 19.967461>,  <39.090370, 33.224922, 19.958248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.054283, 33.462013, 19.967461>,  <38.994141, 33.857166, 19.982815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054283, 33.462013, 19.967461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504406, -0.110049, 0.856425,
		-0.850274, -0.109411, -0.514843,
		0.150360, -0.987886, -0.038384,
		39.099392, 33.165646, 19.955946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323952, 33.458630, 20.103298>,  <38.994141, 33.857166, 19.982815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323952, 33.458630, 20.103298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595024, 33.173523, 20.175632>,  <38.757668, 33.002457, 20.219034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595024, 33.173523, 20.175632>,  <38.323952, 33.458630, 20.103298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595024, 33.173523, 20.175632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356755, -0.103643, 0.928431,
		-0.643015, -0.693698, -0.324521,
		0.677685, -0.712770, 0.180836,
		38.798328, 32.959694, 20.229883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940296, 32.868370, 20.316139>,  <38.323952, 33.458630, 20.103298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940296, 32.868370, 20.316139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314598, 32.832005, 20.452429>,  <38.539181, 32.810184, 20.534203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314598, 32.832005, 20.452429>,  <37.940296, 32.868370, 20.316139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314598, 32.832005, 20.452429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344957, -0.035334, 0.937953,
		-0.073243, -0.995231, -0.064429,
		0.935756, -0.090923, 0.340724,
		38.595325, 32.804729, 20.554646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807579, 32.218948, 20.648115>,  <37.940296, 32.868370, 20.316139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807579, 32.218948, 20.648115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130192, 32.390606, 20.810768>,  <38.323757, 32.493599, 20.908360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130192, 32.390606, 20.810768>,  <37.807579, 32.218948, 20.648115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130192, 32.390606, 20.810768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339754, -0.226432, 0.912850,
		0.483818, -0.874393, -0.036820,
		0.806528, 0.429144, 0.406631,
		38.372150, 32.519348, 20.932756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006435, 31.835752, 21.215191>,  <37.807579, 32.218948, 20.648115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006435, 31.835752, 21.215191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195869, 32.182156, 21.279373>,  <38.309528, 32.389999, 21.317883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195869, 32.182156, 21.279373>,  <38.006435, 31.835752, 21.215191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195869, 32.182156, 21.279373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146574, -0.102146, 0.983912,
		0.868466, -0.489484, 0.078560,
		0.473584, 0.866009, 0.160457,
		38.337944, 32.441959, 21.327511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289909, 31.720617, 21.827885>,  <38.006435, 31.835752, 21.215191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289909, 31.720617, 21.827885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313824, 32.119621, 21.812908>,  <38.328171, 32.359024, 21.803923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313824, 32.119621, 21.812908>,  <38.289909, 31.720617, 21.827885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313824, 32.119621, 21.812908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235547, 0.050546, 0.970548,
		0.970022, -0.049207, 0.237982,
		0.059786, 0.997509, -0.037440,
		38.331760, 32.418873, 21.801676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652725, 31.890158, 22.443897>,  <38.289909, 31.720617, 21.827885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652725, 31.890158, 22.443897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.457497, 32.222042, 22.335556>,  <38.340359, 32.421173, 22.270552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.457497, 32.222042, 22.335556>,  <38.652725, 31.890158, 22.443897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457497, 32.222042, 22.335556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339349, 0.105512, 0.934724,
		0.804130, 0.548130, 0.230064,
		-0.488076, 0.829711, -0.270852,
		38.311073, 32.470955, 22.254301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720737, 32.444927, 23.022997>,  <38.652725, 31.890158, 22.443897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720737, 32.444927, 23.022997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416538, 32.585625, 22.804668>,  <38.234020, 32.670044, 22.673672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416538, 32.585625, 22.804668>,  <38.720737, 32.444927, 23.022997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416538, 32.585625, 22.804668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402509, 0.404238, 0.821327,
		0.509540, 0.844314, -0.165841,
		-0.760497, 0.351747, -0.545819,
		38.188389, 32.691147, 22.640923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773705, 33.195683, 23.079691>,  <38.720737, 32.444927, 23.022997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773705, 33.195683, 23.079691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394676, 33.114994, 22.980556>,  <38.167259, 33.066582, 22.921076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.394676, 33.114994, 22.980556>,  <38.773705, 33.195683, 23.079691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394676, 33.114994, 22.980556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316085, 0.477767, 0.819652,
		-0.046934, 0.855014, -0.516478,
		-0.947569, -0.201720, -0.247834,
		38.110405, 33.054478, 22.906206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466873, 33.757378, 23.157028>,  <38.773705, 33.195683, 23.079691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466873, 33.757378, 23.157028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.156940, 33.506004, 23.184469>,  <37.970982, 33.355179, 23.200933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.156940, 33.506004, 23.184469>,  <38.466873, 33.757378, 23.157028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156940, 33.506004, 23.184469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359190, 0.526951, 0.770263,
		-0.520209, 0.572183, -0.634026,
		-0.774832, -0.628434, 0.068602,
		37.924492, 33.317474, 23.205050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940090, 34.242672, 23.393536>,  <38.466873, 33.757378, 23.157028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940090, 34.242672, 23.393536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.828888, 33.869579, 23.485390>,  <37.762165, 33.645725, 23.540503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.828888, 33.869579, 23.485390>,  <37.940090, 34.242672, 23.393536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828888, 33.869579, 23.485390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502391, 0.344941, 0.792855,
		-0.818729, 0.105049, -0.564489,
		-0.278004, -0.932727, 0.229638,
		37.745487, 33.589760, 23.554281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271801, 34.304264, 23.540138>,  <37.940090, 34.242672, 23.393536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271801, 34.304264, 23.540138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388374, 33.952057, 23.689669>,  <37.458321, 33.740730, 23.779387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388374, 33.952057, 23.689669>,  <37.271801, 34.304264, 23.540138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388374, 33.952057, 23.689669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412971, 0.236688, 0.879451,
		-0.862856, -0.410682, -0.294651,
		0.291435, -0.880522, 0.373827,
		37.475803, 33.687901, 23.801817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583996, 34.674355, 23.416052>,  <37.271801, 34.304264, 23.540138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583996, 34.674355, 23.416052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.378445, 35.017384, 23.407164>,  <36.255112, 35.223202, 23.401831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.378445, 35.017384, 23.407164>,  <36.583996, 34.674355, 23.416052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378445, 35.017384, 23.407164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192201, 0.089849, -0.977234,
		-0.836053, -0.506453, -0.210998,
		-0.513881, 0.857573, -0.022222,
		36.224281, 35.274654, 23.400497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276356, 34.685535, 22.828463>,  <36.583996, 34.674355, 23.416052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276356, 34.685535, 22.828463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.286964, 35.073357, 22.925844>,  <36.293331, 35.306049, 22.984274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.286964, 35.073357, 22.925844>,  <36.276356, 34.685535, 22.828463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286964, 35.073357, 22.925844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236920, 0.230505, -0.943788,
		-0.971167, 0.082715, -0.223591,
		0.026526, 0.969549, 0.243456,
		36.294922, 35.364220, 22.998880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909851, 34.928104, 22.291828>,  <36.276356, 34.685535, 22.828463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909851, 34.928104, 22.291828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.115105, 35.228954, 22.457233>,  <36.238258, 35.409466, 22.556477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.115105, 35.228954, 22.457233>,  <35.909851, 34.928104, 22.291828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115105, 35.228954, 22.457233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191345, 0.369410, -0.909353,
		-0.836706, 0.545746, 0.045642,
		0.513137, 0.752129, 0.413513,
		36.269047, 35.454594, 22.581287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717602, 35.559181, 21.904274>,  <35.909851, 34.928104, 22.291828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717602, 35.559181, 21.904274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036324, 35.679245, 22.114037>,  <36.227558, 35.751282, 22.239895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036324, 35.679245, 22.114037>,  <35.717602, 35.559181, 21.904274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036324, 35.679245, 22.114037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415916, 0.357100, -0.836357,
		-0.438303, 0.884526, 0.159700,
		0.796809, 0.300156, 0.524407,
		36.275368, 35.769291, 22.271358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845055, 36.158119, 21.602612>,  <35.717602, 35.559181, 21.904274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845055, 36.158119, 21.602612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187393, 36.041557, 21.773544>,  <36.392796, 35.971619, 21.876104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187393, 36.041557, 21.773544>,  <35.845055, 36.158119, 21.602612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187393, 36.041557, 21.773544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479030, 0.134945, -0.867364,
		0.195086, 0.947034, 0.255083,
		0.855845, -0.291403, 0.427332,
		36.444145, 35.954136, 21.901745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400322, 36.618820, 21.321600>,  <35.845055, 36.158119, 21.602612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400322, 36.618820, 21.321600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588020, 36.288147, 21.445801>,  <36.700638, 36.089745, 21.520321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588020, 36.288147, 21.445801>,  <36.400322, 36.618820, 21.321600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588020, 36.288147, 21.445801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628704, 0.065834, -0.774853,
		0.620113, 0.558810, 0.550629,
		0.469245, -0.826679, 0.310501,
		36.728794, 36.040142, 21.538952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012077, 36.771435, 21.379568>,  <36.400322, 36.618820, 21.321600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012077, 36.771435, 21.379568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.009937, 36.373737, 21.336761>,  <37.008652, 36.135120, 21.311077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.009937, 36.373737, 21.336761>,  <37.012077, 36.771435, 21.379568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009937, 36.373737, 21.336761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588807, 0.083366, -0.803963,
		0.808256, -0.067316, 0.584971,
		-0.005353, -0.994243, -0.107017,
		37.008331, 36.075466, 21.304657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483261, 37.433514, 21.233774>,  <37.012077, 36.771435, 21.379568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483261, 37.433514, 21.233774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.250858, 37.701408, 21.048784>,  <37.111416, 37.862144, 20.937790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.250858, 37.701408, 21.048784>,  <37.483261, 37.433514, 21.233774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250858, 37.701408, 21.048784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508993, 0.144412, 0.848570,
		0.635108, 0.728419, 0.256989,
		-0.581003, 0.669739, -0.462477,
		37.076557, 37.902328, 20.910042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523918, 37.908661, 21.646141>,  <37.483261, 37.433514, 21.233774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523918, 37.908661, 21.646141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.201099, 38.022945, 21.439434>,  <37.007408, 38.091518, 21.315411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.201099, 38.022945, 21.439434>,  <37.523918, 37.908661, 21.646141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201099, 38.022945, 21.439434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487974, 0.170099, 0.856124,
		0.332509, 0.943098, 0.002144,
		-0.807044, 0.285715, -0.516766,
		36.958984, 38.108662, 21.284405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238846, 38.508114, 21.982592>,  <37.523918, 37.908661, 21.646141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238846, 38.508114, 21.982592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926441, 38.380081, 21.768087>,  <36.738998, 38.303261, 21.639385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926441, 38.380081, 21.768087>,  <37.238846, 38.508114, 21.982592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926441, 38.380081, 21.768087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555283, -0.037060, 0.830835,
		-0.285810, 0.946664, -0.148793,
		-0.781008, -0.320083, -0.536259,
		36.692139, 38.284058, 21.607210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736324, 38.973473, 22.161757>,  <37.238846, 38.508114, 21.982592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736324, 38.973473, 22.161757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571854, 38.640549, 22.013058>,  <36.473171, 38.440796, 21.923838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571854, 38.640549, 22.013058>,  <36.736324, 38.973473, 22.161757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571854, 38.640549, 22.013058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615101, -0.047645, 0.787008,
		-0.672746, 0.552260, -0.492363,
		-0.411174, -0.832309, -0.371749,
		36.448502, 38.390858, 21.901533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030445, 39.083736, 22.105450>,  <36.736324, 38.973473, 22.161757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030445, 39.083736, 22.105450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058006, 38.684696, 22.102737>,  <36.074543, 38.445271, 22.101110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058006, 38.684696, 22.102737>,  <36.030445, 39.083736, 22.105450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058006, 38.684696, 22.102737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647946, -0.049918, 0.760049,
		-0.758563, -0.047978, -0.649831,
		0.068904, -0.997600, -0.006779,
		36.078678, 38.385418, 22.100704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393322, 38.878754, 22.234732>,  <36.030445, 39.083736, 22.105450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393322, 38.878754, 22.234732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609337, 38.553917, 22.323162>,  <35.738945, 38.359016, 22.376221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609337, 38.553917, 22.323162>,  <35.393322, 38.878754, 22.234732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609337, 38.553917, 22.323162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428844, -0.039487, 0.902515,
		-0.724194, -0.582195, -0.369584,
		0.540033, -0.812090, 0.221075,
		35.771347, 38.310291, 22.389484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873901, 38.482273, 22.440304>,  <35.393322, 38.878754, 22.234732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873901, 38.482273, 22.440304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.225323, 38.357273, 22.584797>,  <35.436176, 38.282272, 22.671492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.225323, 38.357273, 22.584797>,  <34.873901, 38.482273, 22.440304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225323, 38.357273, 22.584797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439235, -0.231439, 0.868049,
		-0.187662, -0.921293, -0.340592,
		0.878553, -0.312500, 0.361231,
		35.488888, 38.263523, 22.693167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.175735, 37.451344, 20.485193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.995384, 37.109867, 20.589443>,  <41.887173, 36.904984, 20.651993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.995384, 37.109867, 20.589443>,  <42.175735, 37.451344, 20.485193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995384, 37.109867, 20.589443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318825, 0.426759, 0.846302,
		-0.833704, 0.298483, -0.464592,
		-0.450875, -0.853689, 0.260627,
		41.860123, 36.853760, 20.667631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525955, 37.628124, 20.588129>,  <42.175735, 37.451344, 20.485193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525955, 37.628124, 20.588129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582626, 37.290325, 20.794720>,  <41.616631, 37.087646, 20.918674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582626, 37.290325, 20.794720>,  <41.525955, 37.628124, 20.588129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582626, 37.290325, 20.794720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416207, 0.422566, 0.805115,
		-0.898165, -0.329027, -0.291619,
		0.141676, -0.844500, 0.516477,
		41.625130, 37.036976, 20.949663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890186, 37.545189, 20.933352>,  <41.525955, 37.628124, 20.588129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890186, 37.545189, 20.933352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.140408, 37.309261, 21.137623>,  <41.290543, 37.167706, 21.260185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.140408, 37.309261, 21.137623>,  <40.890186, 37.545189, 20.933352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140408, 37.309261, 21.137623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447283, 0.265183, 0.854176,
		-0.639233, -0.762752, -0.097930,
		0.625555, -0.589820, 0.510680,
		41.328075, 37.132317, 21.290827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479591, 37.087093, 21.364096>,  <40.890186, 37.545189, 20.933352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479591, 37.087093, 21.364096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838291, 37.107254, 21.539957>,  <41.053513, 37.119350, 21.645473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838291, 37.107254, 21.539957>,  <40.479591, 37.087093, 21.364096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838291, 37.107254, 21.539957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441591, 0.037077, 0.896450,
		0.028811, -0.998045, 0.055471,
		0.896754, 0.050323, 0.439659,
		41.107315, 37.122372, 21.671854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399563, 36.772343, 22.036816>,  <40.479591, 37.087093, 21.364096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399563, 36.772343, 22.036816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.756088, 36.947853, 22.082491>,  <40.970001, 37.053162, 22.109896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.756088, 36.947853, 22.082491>,  <40.399563, 36.772343, 22.036816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756088, 36.947853, 22.082491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189740, 0.132241, 0.972888,
		0.411781, -0.888812, 0.201121,
		0.891311, 0.438777, 0.114189,
		41.023483, 37.079487, 22.116747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765957, 36.404781, 22.515232>,  <40.399563, 36.772343, 22.036816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765957, 36.404781, 22.515232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.927277, 36.770809, 22.515291>,  <41.024067, 36.990425, 22.515327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.927277, 36.770809, 22.515291>,  <40.765957, 36.404781, 22.515232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927277, 36.770809, 22.515291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185808, 0.081731, 0.979181,
		0.896004, -0.394932, 0.202989,
		0.403300, 0.915068, 0.000150,
		41.048267, 37.045330, 22.515337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242798, 36.371689, 23.022032>,  <40.765957, 36.404781, 22.515232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242798, 36.371689, 23.022032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.168873, 36.762512, 22.979694>,  <41.124519, 36.997005, 22.954292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.168873, 36.762512, 22.979694>,  <41.242798, 36.371689, 23.022032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168873, 36.762512, 22.979694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018901, 0.104145, 0.994383,
		0.982592, 0.185774, -0.000780,
		-0.184811, 0.977058, -0.105844,
		41.113430, 37.055630, 22.947941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650585, 36.706169, 23.548573>,  <41.242798, 36.371689, 23.022032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650585, 36.706169, 23.548573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.359749, 36.967457, 23.464064>,  <41.185246, 37.124229, 23.413359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.359749, 36.967457, 23.464064>,  <41.650585, 36.706169, 23.548573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359749, 36.967457, 23.464064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008474, 0.299169, 0.954163,
		0.686487, 0.695555, -0.211988,
		-0.727093, 0.653223, -0.211270,
		41.141621, 37.163425, 23.400682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852863, 37.383392, 23.873104>,  <41.650585, 36.706169, 23.548573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852863, 37.383392, 23.873104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.462421, 37.445030, 23.811811>,  <41.228157, 37.482014, 23.775036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.462421, 37.445030, 23.811811>,  <41.852863, 37.383392, 23.873104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462421, 37.445030, 23.811811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067251, 0.456313, 0.887275,
		0.206646, 0.876375, -0.435044,
		-0.976102, 0.154095, -0.153232,
		41.169590, 37.491257, 23.765842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657009, 38.164505, 24.115669>,  <41.852863, 37.383392, 23.873104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657009, 38.164505, 24.115669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.318535, 37.951351, 24.114960>,  <41.115448, 37.823460, 24.114534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.318535, 37.951351, 24.114960>,  <41.657009, 38.164505, 24.115669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318535, 37.951351, 24.114960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152465, 0.238911, 0.958998,
		-0.510608, 0.811763, -0.283409,
		-0.846188, -0.532882, -0.001776,
		41.064678, 37.791485, 24.114428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272182, 38.584209, 24.264479>,  <41.657009, 38.164505, 24.115669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272182, 38.584209, 24.264479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.064629, 38.255493, 24.358648>,  <40.940094, 38.058266, 24.415150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.064629, 38.255493, 24.358648>,  <41.272182, 38.584209, 24.264479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064629, 38.255493, 24.358648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029378, 0.292378, 0.955852,
		-0.854338, 0.489062, -0.175853,
		-0.518887, -0.821787, 0.235422,
		40.908962, 38.008957, 24.429276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724625, 38.831402, 24.616623>,  <41.272182, 38.584209, 24.264479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724625, 38.831402, 24.616623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.771183, 38.448280, 24.721739>,  <40.799118, 38.218407, 24.784809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.771183, 38.448280, 24.721739>,  <40.724625, 38.831402, 24.616623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771183, 38.448280, 24.721739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003148, 0.264942, 0.964259,
		-0.993198, -0.111406, 0.033852,
		0.116393, -0.957807, 0.262790,
		40.806103, 38.160938, 24.800575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039772, 38.871674, 24.147299>,  <40.724625, 38.831402, 24.616623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039772, 38.871674, 24.147299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.728462, 39.110371, 24.069139>,  <39.541676, 39.253590, 24.022243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.728462, 39.110371, 24.069139>,  <40.039772, 38.871674, 24.147299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728462, 39.110371, 24.069139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306884, 0.089997, -0.947482,
		-0.547818, -0.797369, -0.253173,
		-0.778278, 0.596743, -0.195398,
		39.494980, 39.289394, 24.010521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820847, 38.606575, 23.439924>,  <40.039772, 38.871674, 24.147299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820847, 38.606575, 23.439924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661713, 38.972721, 23.464684>,  <39.566231, 39.192410, 23.479538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.661713, 38.972721, 23.464684>,  <39.820847, 38.606575, 23.439924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661713, 38.972721, 23.464684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324078, 0.203328, -0.923922,
		-0.858312, -0.347511, -0.377541,
		-0.397838, 0.915365, 0.061898,
		39.542362, 39.247330, 23.483253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406662, 38.677277, 22.764355>,  <39.820847, 38.606575, 23.439924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406662, 38.677277, 22.764355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.464382, 39.040409, 22.921841>,  <39.499012, 39.258289, 23.016333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.464382, 39.040409, 22.921841>,  <39.406662, 38.677277, 22.764355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464382, 39.040409, 22.921841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293886, 0.340610, -0.893093,
		-0.944886, 0.244580, -0.217651,
		0.144299, 0.907835, 0.393717,
		39.507671, 39.312759, 23.039955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961159, 39.137199, 22.409529>,  <39.406662, 38.677277, 22.764355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961159, 39.137199, 22.409529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249794, 39.373642, 22.553698>,  <39.422974, 39.515507, 22.640200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249794, 39.373642, 22.553698>,  <38.961159, 39.137199, 22.409529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249794, 39.373642, 22.553698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240033, 0.274703, -0.931086,
		-0.649382, 0.758373, 0.056336,
		0.721586, 0.591108, 0.360422,
		39.466270, 39.550976, 22.661825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840321, 39.763123, 22.085545>,  <38.961159, 39.137199, 22.409529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840321, 39.763123, 22.085545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208946, 39.781776, 22.239712>,  <39.430122, 39.792969, 22.332212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208946, 39.781776, 22.239712>,  <38.840321, 39.763123, 22.085545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208946, 39.781776, 22.239712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352088, 0.317873, -0.880336,
		-0.163568, 0.946986, 0.276521,
		0.921564, 0.046636, 0.385416,
		39.485416, 39.795769, 22.355337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027176, 40.514980, 22.085756>,  <38.840321, 39.763123, 22.085545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027176, 40.514980, 22.085756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.375816, 40.320683, 22.112190>,  <39.584999, 40.204102, 22.128052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.375816, 40.320683, 22.112190>,  <39.027176, 40.514980, 22.085756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375816, 40.320683, 22.112190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304443, 0.430684, -0.849603,
		0.384232, 0.760631, 0.523265,
		0.871597, -0.485749, 0.066087,
		39.637295, 40.174957, 22.132017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541996, 41.024769, 21.854792>,  <39.027176, 40.514980, 22.085756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541996, 41.024769, 21.854792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.710678, 40.663799, 21.819460>,  <39.811886, 40.447220, 21.798262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.710678, 40.663799, 21.819460>,  <39.541996, 41.024769, 21.854792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710678, 40.663799, 21.819460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427724, 0.283874, -0.858177,
		0.799511, 0.324117, 0.505698,
		0.421704, -0.902421, -0.088327,
		39.837189, 40.393074, 21.792961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171921, 41.146946, 21.429461>,  <39.541996, 41.024769, 21.854792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171921, 41.146946, 21.429461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.148792, 40.748852, 21.398043>,  <40.134914, 40.509995, 21.379192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.148792, 40.748852, 21.398043>,  <40.171921, 41.146946, 21.429461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148792, 40.748852, 21.398043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402146, 0.048793, -0.914275,
		0.913748, -0.084451, 0.397407,
		-0.057821, -0.995232, -0.078546,
		40.131447, 40.450283, 21.374479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840569, 40.846058, 21.248901>,  <40.171921, 41.146946, 21.429461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840569, 40.846058, 21.248901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541534, 40.603210, 21.141178>,  <40.362114, 40.457500, 21.076544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541534, 40.603210, 21.141178>,  <40.840569, 40.846058, 21.248901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541534, 40.603210, 21.141178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304769, 0.046694, -0.951281,
		0.590118, -0.793236, 0.150124,
		-0.747581, -0.607121, -0.269309,
		40.317261, 40.421074, 21.060385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088356, 40.295776, 20.855200>,  <40.840569, 40.846058, 21.248901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088356, 40.295776, 20.855200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.701126, 40.313694, 20.756550>,  <40.468788, 40.324444, 20.697361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.701126, 40.313694, 20.756550>,  <41.088356, 40.295776, 20.855200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701126, 40.313694, 20.756550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249290, 0.069399, -0.965939,
		-0.026152, -0.996583, -0.078350,
		-0.968076, 0.044793, -0.246623,
		40.410702, 40.327129, 20.682562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046284, 39.832920, 20.274408>,  <41.088356, 40.295776, 20.855200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046284, 39.832920, 20.274408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.701447, 40.032299, 20.237877>,  <40.494545, 40.151928, 20.215958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.701447, 40.032299, 20.237877>,  <41.046284, 39.832920, 20.274408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701447, 40.032299, 20.237877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139108, 0.059479, -0.988489,
		-0.487278, -0.864877, -0.120615,
		-0.862096, 0.498447, -0.091328,
		40.442818, 40.181831, 20.210478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719700, 39.570232, 19.623791>,  <41.046284, 39.832920, 20.274408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719700, 39.570232, 19.623791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530930, 39.913452, 19.704824>,  <40.417667, 40.119385, 19.753445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530930, 39.913452, 19.704824>,  <40.719700, 39.570232, 19.623791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530930, 39.913452, 19.704824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125060, 0.292608, -0.948019,
		-0.872726, -0.422055, -0.245396,
		-0.471921, 0.858050, 0.202584,
		40.389355, 40.170868, 19.765600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253895, 39.684868, 19.073505>,  <40.719700, 39.570232, 19.623791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253895, 39.684868, 19.073505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307686, 40.045769, 19.237387>,  <40.339962, 40.262310, 19.335716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307686, 40.045769, 19.237387>,  <40.253895, 39.684868, 19.073505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307686, 40.045769, 19.237387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384357, 0.333593, -0.860805,
		-0.913337, 0.273233, -0.301925,
		0.134480, 0.902252, 0.409702,
		40.348030, 40.316444, 19.360298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635662, 39.311092, 19.267460>,  <40.253895, 39.684868, 19.073505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635662, 39.311092, 19.267460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.473339, 39.080524, 18.983755>,  <39.375946, 38.942184, 18.813532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.473339, 39.080524, 18.983755>,  <39.635662, 39.311092, 19.267460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473339, 39.080524, 18.983755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852054, -0.042137, 0.521755,
		-0.330637, 0.816065, -0.474042,
		-0.405811, -0.576421, -0.709264,
		39.351597, 38.907597, 18.770975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937576, 39.601658, 19.089361>,  <39.635662, 39.311092, 19.267460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937576, 39.601658, 19.089361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961937, 39.203255, 19.063265>,  <38.976555, 38.964214, 19.047607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961937, 39.203255, 19.063265>,  <38.937576, 39.601658, 19.089361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961937, 39.203255, 19.063265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948497, -0.078106, 0.307006,
		-0.310877, 0.043186, -0.949469,
		0.060901, -0.996009, -0.065243,
		38.980206, 38.904453, 19.043692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220852, 39.376110, 18.919744>,  <38.937576, 39.601658, 19.089361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220852, 39.376110, 18.919744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384365, 39.030186, 19.036369>,  <38.482471, 38.822632, 19.106344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.384365, 39.030186, 19.036369>,  <38.220852, 39.376110, 18.919744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384365, 39.030186, 19.036369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859892, -0.257941, 0.440514,
		-0.305754, -0.430784, -0.849082,
		0.408779, -0.864807, 0.291561,
		38.507000, 38.770744, 19.123838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719135, 38.875191, 18.763018>,  <38.220852, 39.376110, 18.919744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719135, 38.875191, 18.763018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.949944, 38.686520, 19.029722>,  <38.088428, 38.573318, 19.189745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.949944, 38.686520, 19.029722>,  <37.719135, 38.875191, 18.763018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949944, 38.686520, 19.029722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813747, -0.401757, 0.420007,
		0.069769, -0.784928, -0.615647,
		0.577016, -0.471677, 0.666763,
		38.123047, 38.545017, 19.229752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273895, 38.311272, 19.016808>,  <37.719135, 38.875191, 18.763018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273895, 38.311272, 19.016808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.573277, 38.273220, 19.279339>,  <37.752907, 38.250389, 19.436857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.573277, 38.273220, 19.279339>,  <37.273895, 38.311272, 19.016808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573277, 38.273220, 19.279339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656863, -0.242654, 0.713898,
		0.091351, -0.965438, -0.244100,
		0.748456, -0.095125, 0.656327,
		37.797813, 38.244682, 19.476236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230438, 37.633854, 19.280880>,  <37.273895, 38.311272, 19.016808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230438, 37.633854, 19.280880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.395828, 37.885078, 19.544571>,  <37.495064, 38.035812, 19.702785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.395828, 37.885078, 19.544571>,  <37.230438, 37.633854, 19.280880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395828, 37.885078, 19.544571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637466, -0.317289, 0.702114,
		0.650135, -0.710541, 0.269176,
		0.413475, 0.628060, 0.659227,
		37.519871, 38.073498, 19.742338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249393, 37.236752, 19.888792>,  <37.230438, 37.633854, 19.280880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249393, 37.236752, 19.888792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283360, 37.618980, 20.001696>,  <37.303741, 37.848316, 20.069437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283360, 37.618980, 20.001696>,  <37.249393, 37.236752, 19.888792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283360, 37.618980, 20.001696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664531, -0.156760, 0.730633,
		0.742420, -0.249614, 0.621696,
		0.084919, 0.955573, 0.282258,
		37.308834, 37.905651, 20.086372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286591, 37.143169, 20.554588>,  <37.249393, 37.236752, 19.888792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286591, 37.143169, 20.554588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.214546, 37.533386, 20.504181>,  <37.171318, 37.767517, 20.473936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.214546, 37.533386, 20.504181>,  <37.286591, 37.143169, 20.554588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214546, 37.533386, 20.504181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424532, 0.038474, 0.904595,
		0.887317, 0.216429, 0.407218,
		-0.180113, 0.975540, -0.126020,
		37.160511, 37.826050, 20.466375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677601, 36.665878, 21.058458>,  <37.286591, 37.143169, 20.554588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677601, 36.665878, 21.058458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.474525, 36.322460, 21.029732>,  <37.352680, 36.116409, 21.012497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.474525, 36.322460, 21.029732>,  <37.677601, 36.665878, 21.058458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474525, 36.322460, 21.029732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497537, -0.224113, -0.837992,
		0.703359, -0.461166, 0.540937,
		-0.507684, -0.858545, -0.071815,
		37.322220, 36.064896, 21.008186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151806, 36.057270, 21.051710>,  <37.677601, 36.665878, 21.058458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151806, 36.057270, 21.051710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813770, 35.962036, 20.860233>,  <37.610950, 35.904896, 20.745348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813770, 35.962036, 20.860233>,  <38.151806, 36.057270, 21.051710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813770, 35.962036, 20.860233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533608, -0.320293, -0.782736,
		0.033037, -0.916912, 0.397719,
		-0.845086, -0.238085, -0.478690,
		37.560246, 35.890610, 20.716625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348293, 35.483562, 20.678389>,  <38.151806, 36.057270, 21.051710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348293, 35.483562, 20.678389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.004002, 35.553322, 20.487087>,  <37.797424, 35.595177, 20.372307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.004002, 35.553322, 20.487087>,  <38.348293, 35.483562, 20.678389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004002, 35.553322, 20.487087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388482, -0.382102, -0.838499,
		-0.328969, -0.907516, 0.261140,
		-0.860733, 0.174392, -0.478253,
		37.745781, 35.605640, 20.343611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348896, 34.955791, 20.196821>,  <38.348293, 35.483562, 20.678389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348896, 34.955791, 20.196821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.097122, 35.237438, 20.065350>,  <37.946056, 35.406425, 19.986467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.097122, 35.237438, 20.065350>,  <38.348896, 34.955791, 20.196821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097122, 35.237438, 20.065350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215122, -0.248550, -0.944429,
		-0.746680, -0.665165, 0.004975,
		-0.629437, 0.704116, -0.328679,
		37.908291, 35.448673, 19.966745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924175, 34.594437, 19.612238>,  <38.348896, 34.955791, 20.196821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924175, 34.594437, 19.612238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928673, 34.993179, 19.580864>,  <37.931374, 35.232426, 19.562040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928673, 34.993179, 19.580864>,  <37.924175, 34.594437, 19.612238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928673, 34.993179, 19.580864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273780, -0.078511, -0.958583,
		-0.961726, -0.010693, -0.273802,
		0.011246, 0.996856, -0.078434,
		37.932045, 35.292236, 19.557333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563148, 34.652954, 19.015169>,  <37.924175, 34.594437, 19.612238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563148, 34.652954, 19.015169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801682, 34.965847, 19.087278>,  <37.944801, 35.153584, 19.130545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801682, 34.965847, 19.087278>,  <37.563148, 34.652954, 19.015169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801682, 34.965847, 19.087278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435627, -0.126718, -0.891163,
		-0.674254, 0.609961, -0.416327,
		0.596331, 0.782234, 0.180275,
		37.980579, 35.200516, 19.141361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456951, 35.143658, 18.490227>,  <37.563148, 34.652954, 19.015169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456951, 35.143658, 18.490227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.816967, 35.184696, 18.659651>,  <38.032978, 35.209320, 18.761305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.816967, 35.184696, 18.659651>,  <37.456951, 35.143658, 18.490227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816967, 35.184696, 18.659651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430208, -0.053873, -0.901121,
		-0.069631, 0.993263, -0.092624,
		0.900040, 0.102594, 0.423558,
		38.086979, 35.215473, 18.786718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877899, 35.570091, 18.060068>,  <37.456951, 35.143658, 18.490227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877899, 35.570091, 18.060068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.186481, 35.487801, 18.300913>,  <38.371632, 35.438427, 18.445419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.186481, 35.487801, 18.300913>,  <37.877899, 35.570091, 18.060068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186481, 35.487801, 18.300913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616934, 0.010234, -0.786949,
		0.155733, 0.978556, 0.134813,
		0.771453, -0.205724, 0.602111,
		38.417919, 35.426083, 18.481546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451633, 36.107079, 17.904091>,  <37.877899, 35.570091, 18.060068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451633, 36.107079, 17.904091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614731, 35.774284, 18.054585>,  <38.712589, 35.574608, 18.144880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614731, 35.774284, 18.054585>,  <38.451633, 36.107079, 17.904091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614731, 35.774284, 18.054585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685014, 0.006279, -0.728503,
		0.603739, 0.554767, 0.572480,
		0.407744, -0.831982, 0.376233,
		38.737053, 35.524689, 18.167454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.380447, 35.931461, 33.751263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763138, 35.854412, 33.664024>,  <33.992752, 35.808182, 33.611683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763138, 35.854412, 33.664024>,  <33.380447, 35.931461, 33.751263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763138, 35.854412, 33.664024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210855, 0.057568, -0.975821,
		0.200521, 0.979583, 0.014461,
		0.956730, -0.192623, -0.218093,
		34.050156, 35.796623, 33.598595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848877, 36.363979, 33.291374>,  <33.380447, 35.931461, 33.751263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848877, 36.363979, 33.291374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036835, 36.018230, 33.219749>,  <34.149609, 35.810783, 33.176773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036835, 36.018230, 33.219749>,  <33.848877, 36.363979, 33.291374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036835, 36.018230, 33.219749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185713, 0.101511, -0.977346,
		0.862964, 0.492508, -0.112824,
		0.469898, -0.864368, -0.179066,
		34.177803, 35.758919, 33.166031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330025, 36.587734, 32.863678>,  <33.848877, 36.363979, 33.291374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330025, 36.587734, 32.863678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260159, 36.197796, 32.808311>,  <34.218239, 35.963833, 32.775093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260159, 36.197796, 32.808311>,  <34.330025, 36.587734, 32.863678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260159, 36.197796, 32.808311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067080, 0.128469, -0.989442,
		0.982340, -0.182106, 0.042953,
		-0.174665, -0.974850, -0.138416,
		34.207760, 35.905342, 32.766788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908119, 36.333279, 32.385338>,  <34.330025, 36.587734, 32.863678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908119, 36.333279, 32.385338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604885, 36.073635, 32.360134>,  <34.422947, 35.917850, 32.345013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604885, 36.073635, 32.360134>,  <34.908119, 36.333279, 32.385338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604885, 36.073635, 32.360134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111934, -0.034324, -0.993123,
		0.642480, -0.759923, 0.098677,
		-0.758083, -0.649107, -0.063009,
		34.377460, 35.878902, 32.341232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088379, 35.859135, 31.897270>,  <34.908119, 36.333279, 32.385338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088379, 35.859135, 31.897270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697903, 35.778927, 31.930378>,  <34.463619, 35.730801, 31.950243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697903, 35.778927, 31.930378>,  <35.088379, 35.859135, 31.897270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697903, 35.778927, 31.930378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072859, -0.056333, -0.995750,
		0.204333, -0.978068, 0.040381,
		-0.976186, -0.200522, 0.082772,
		34.405048, 35.718769, 31.955210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017651, 35.256634, 31.575802>,  <35.088379, 35.859135, 31.897270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017651, 35.256634, 31.575802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646744, 35.406277, 31.581839>,  <34.424202, 35.496063, 31.585461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646744, 35.406277, 31.581839>,  <35.017651, 35.256634, 31.575802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646744, 35.406277, 31.581839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098621, -0.205164, -0.973746,
		-0.361192, -0.904406, 0.227135,
		-0.927262, 0.374110, 0.015090,
		34.368565, 35.518509, 31.586365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556732, 34.760601, 31.307289>,  <35.017651, 35.256634, 31.575802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556732, 34.760601, 31.307289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377090, 35.113815, 31.252798>,  <34.269306, 35.325745, 31.220104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377090, 35.113815, 31.252798>,  <34.556732, 34.760601, 31.307289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377090, 35.113815, 31.252798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182340, -0.239838, -0.953535,
		-0.874677, -0.403395, 0.268724,
		-0.449102, 0.883035, -0.136225,
		34.242359, 35.378727, 31.211931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896282, 34.558609, 30.880569>,  <34.556732, 34.760601, 31.307289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896282, 34.558609, 30.880569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961136, 34.948238, 30.817457>,  <34.000050, 35.182014, 30.779591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961136, 34.948238, 30.817457>,  <33.896282, 34.558609, 30.880569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961136, 34.948238, 30.817457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218718, -0.120444, -0.968326,
		-0.962224, 0.191509, 0.193519,
		0.162135, 0.974073, -0.157780,
		34.009777, 35.240459, 30.770123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351841, 34.810055, 30.455229>,  <33.896282, 34.558609, 30.880569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351841, 34.810055, 30.455229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648582, 35.069054, 30.385494>,  <33.826630, 35.224453, 30.343653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648582, 35.069054, 30.385494>,  <33.351841, 34.810055, 30.455229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648582, 35.069054, 30.385494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167705, -0.072571, -0.983162,
		-0.649247, 0.758604, 0.054751,
		0.741858, 0.647497, -0.174338,
		33.871140, 35.263302, 30.333193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025612, 35.247463, 29.923300>,  <33.351841, 34.810055, 30.455229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025612, 35.247463, 29.923300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420235, 35.308926, 29.901043>,  <33.657009, 35.345802, 29.887690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420235, 35.308926, 29.901043>,  <33.025612, 35.247463, 29.923300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420235, 35.308926, 29.901043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059894, 0.023179, -0.997936,
		-0.152049, 0.987853, 0.032070,
		0.986557, 0.153656, -0.055642,
		33.716202, 35.355022, 29.884350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092770, 35.812180, 29.478437>,  <33.025612, 35.247463, 29.923300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092770, 35.812180, 29.478437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446514, 35.626446, 29.459232>,  <33.658760, 35.515007, 29.447708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446514, 35.626446, 29.459232>,  <33.092770, 35.812180, 29.478437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446514, 35.626446, 29.459232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043747, 0.019966, -0.998843,
		0.464756, 0.885435, -0.002655,
		0.884357, -0.464335, -0.048014,
		33.711823, 35.487144, 29.444828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534389, 36.179893, 28.924179>,  <33.092770, 35.812180, 29.478437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534389, 36.179893, 28.924179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684551, 35.813583, 28.981344>,  <33.774651, 35.593796, 29.015644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684551, 35.813583, 28.981344>,  <33.534389, 36.179893, 28.924179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684551, 35.813583, 28.981344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170413, -0.083366, -0.981840,
		0.911059, 0.392946, 0.124763,
		0.375409, -0.915775, 0.142914,
		33.797173, 35.538853, 29.024218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059101, 36.828537, 28.687449>,  <33.534389, 36.179893, 28.924179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059101, 36.828537, 28.687449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.795311, 37.080978, 28.524088>,  <33.637035, 37.232445, 28.426071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.795311, 37.080978, 28.524088>,  <34.059101, 36.828537, 28.687449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795311, 37.080978, 28.524088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268685, 0.309505, 0.912148,
		0.702066, 0.711273, -0.034543,
		-0.659478, 0.631108, -0.408402,
		33.597469, 37.270309, 28.401567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077297, 37.514137, 29.125402>,  <34.059101, 36.828537, 28.687449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077297, 37.514137, 29.125402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725990, 37.457943, 28.942577>,  <33.515205, 37.424229, 28.832882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725990, 37.457943, 28.942577>,  <34.077297, 37.514137, 29.125402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725990, 37.457943, 28.942577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477332, 0.314021, 0.820698,
		0.028233, 0.938965, -0.342852,
		-0.878269, -0.140484, -0.457064,
		33.462509, 37.415798, 28.805458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727936, 37.956215, 29.494686>,  <34.077297, 37.514137, 29.125402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727936, 37.956215, 29.494686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433132, 37.755367, 29.313711>,  <33.256248, 37.634861, 29.205126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433132, 37.755367, 29.313711>,  <33.727936, 37.956215, 29.494686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433132, 37.755367, 29.313711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620218, 0.236402, 0.747960,
		-0.268606, 0.831862, -0.485652,
		-0.737008, -0.502116, -0.452437,
		33.212029, 37.604733, 29.177980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129307, 38.391060, 29.506134>,  <33.727936, 37.956215, 29.494686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129307, 38.391060, 29.506134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019398, 38.008030, 29.471375>,  <32.953453, 37.778214, 29.450518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019398, 38.008030, 29.471375>,  <33.129307, 38.391060, 29.506134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019398, 38.008030, 29.471375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508180, 0.067903, 0.858570,
		-0.816244, 0.280069, -0.505279,
		-0.274769, -0.957575, -0.086900,
		32.936966, 37.720757, 29.445305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512695, 38.312000, 29.800558>,  <33.129307, 38.391060, 29.506134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512695, 38.312000, 29.800558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577744, 37.917515, 29.788330>,  <32.616772, 37.680824, 29.780993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577744, 37.917515, 29.788330>,  <32.512695, 38.312000, 29.800558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577744, 37.917515, 29.788330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479759, -0.106107, 0.870960,
		-0.862198, -0.126968, -0.490401,
		0.162619, -0.986215, -0.030572,
		32.626530, 37.621651, 29.779160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786798, 38.048878, 29.900684>,  <32.512695, 38.312000, 29.800558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786798, 38.048878, 29.900684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075554, 37.791843, 30.003418>,  <32.248806, 37.637623, 30.065058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075554, 37.791843, 30.003418>,  <31.786798, 38.048878, 29.900684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075554, 37.791843, 30.003418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420027, -0.111914, 0.900584,
		-0.549958, -0.757998, -0.350692,
		0.721889, -0.642584, 0.256832,
		32.292122, 37.599068, 30.080467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442926, 37.467907, 30.156628>,  <31.786798, 38.048878, 29.900684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442926, 37.467907, 30.156628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805740, 37.499962, 30.321974>,  <32.023430, 37.519196, 30.421181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805740, 37.499962, 30.321974>,  <31.442926, 37.467907, 30.156628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805740, 37.499962, 30.321974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416788, 0.031397, 0.908461,
		0.059839, -0.996288, 0.061886,
		0.907032, 0.080155, 0.413363,
		32.077850, 37.524002, 30.445982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317078, 36.987232, 30.618246>,  <31.442926, 37.467907, 30.156628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317078, 36.987232, 30.618246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654749, 37.172379, 30.726410>,  <31.857351, 37.283466, 30.791307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654749, 37.172379, 30.726410>,  <31.317078, 36.987232, 30.618246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654749, 37.172379, 30.726410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258621, -0.090191, 0.961759,
		0.469550, -0.881830, 0.043569,
		0.844179, 0.462862, 0.270409,
		31.908003, 37.311237, 30.807533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769989, 36.578388, 31.137512>,  <31.317078, 36.987232, 30.618246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769989, 36.578388, 31.137512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867523, 36.964607, 31.173866>,  <31.926044, 37.196339, 31.195679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867523, 36.964607, 31.173866>,  <31.769989, 36.578388, 31.137512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867523, 36.964607, 31.173866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147898, -0.055597, 0.987439,
		0.958473, -0.254215, 0.129246,
		0.243836, 0.965548, 0.090886,
		31.940674, 37.254272, 31.201132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139915, 36.646893, 31.748457>,  <31.769989, 36.578388, 31.137512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139915, 36.646893, 31.748457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.034374, 37.028141, 31.689207>,  <31.971050, 37.256889, 31.653656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.034374, 37.028141, 31.689207>,  <32.139915, 36.646893, 31.748457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034374, 37.028141, 31.689207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051987, 0.139293, 0.988886,
		0.963162, 0.268618, 0.012798,
		-0.263850, 0.953122, -0.148126,
		31.955219, 37.314079, 31.644770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591381, 37.004383, 32.155872>,  <32.139915, 36.646893, 31.748457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591381, 37.004383, 32.155872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293625, 37.252346, 32.056599>,  <32.114971, 37.401123, 31.997034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293625, 37.252346, 32.056599>,  <32.591381, 37.004383, 32.155872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293625, 37.252346, 32.056599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055778, 0.312654, 0.948228,
		0.665414, 0.719693, -0.198158,
		-0.744388, 0.619911, -0.248187,
		32.070309, 37.438320, 31.982143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716328, 37.712749, 32.367661>,  <32.591381, 37.004383, 32.155872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716328, 37.712749, 32.367661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322414, 37.646294, 32.347282>,  <32.086067, 37.606419, 32.335056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322414, 37.646294, 32.347282>,  <32.716328, 37.712749, 32.367661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322414, 37.646294, 32.347282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100664, 0.306442, 0.946552,
		-0.141654, 0.937278, -0.318504,
		-0.984785, -0.166144, -0.050941,
		32.026978, 37.596451, 32.332001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536251, 38.200405, 32.814743>,  <32.716328, 37.712749, 32.367661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536251, 38.200405, 32.814743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209461, 37.969994, 32.803806>,  <32.013386, 37.831749, 32.797245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209461, 37.969994, 32.803806>,  <32.536251, 38.200405, 32.814743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209461, 37.969994, 32.803806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162270, 0.184134, 0.969414,
		-0.553375, 0.796422, -0.243905,
		-0.816973, -0.576027, -0.027340,
		31.964369, 37.797184, 32.795605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084164, 38.645939, 33.055908>,  <32.536251, 38.200405, 32.814743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084164, 38.645939, 33.055908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921776, 38.282391, 33.094162>,  <31.824343, 38.064262, 33.117115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921776, 38.282391, 33.094162>,  <32.084164, 38.645939, 33.055908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921776, 38.282391, 33.094162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350809, 0.251609, 0.902012,
		-0.843872, 0.332642, -0.420985,
		-0.405971, -0.908869, 0.095632,
		31.799984, 38.009731, 33.122852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184559, 39.003117, 32.470417>,  <32.084164, 38.645939, 33.055908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184559, 39.003117, 32.470417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.355194, 39.320610, 32.643856>,  <32.457573, 39.511105, 32.747921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.355194, 39.320610, 32.643856>,  <32.184559, 39.003117, 32.470417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355194, 39.320610, 32.643856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529658, 0.169371, -0.831129,
		-0.733136, 0.584207, -0.348157,
		0.426585, 0.793735, 0.433602,
		32.483170, 39.558731, 32.773937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061264, 39.593906, 32.029545>,  <32.184559, 39.003117, 32.470417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061264, 39.593906, 32.029545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386765, 39.646351, 32.256035>,  <32.582066, 39.677818, 32.391930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386765, 39.646351, 32.256035>,  <32.061264, 39.593906, 32.029545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386765, 39.646351, 32.256035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564171, 0.055983, -0.823758,
		-0.139703, 0.989786, -0.028413,
		0.813753, 0.131111, 0.566230,
		32.630890, 39.685684, 32.425903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267902, 40.263676, 31.904327>,  <32.061264, 39.593906, 32.029545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267902, 40.263676, 31.904327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576801, 40.047909, 32.038589>,  <32.762142, 39.918449, 32.119148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576801, 40.047909, 32.038589>,  <32.267902, 40.263676, 31.904327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576801, 40.047909, 32.038589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476796, 0.142904, -0.867320,
		0.419877, 0.829826, 0.367548,
		0.772249, -0.539413, 0.335656,
		32.808475, 39.886086, 32.139286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790752, 40.578724, 31.646301>,  <32.267902, 40.263676, 31.904327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790752, 40.578724, 31.646301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959240, 40.224964, 31.726706>,  <33.060333, 40.012707, 31.774948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959240, 40.224964, 31.726706>,  <32.790752, 40.578724, 31.646301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959240, 40.224964, 31.726706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530756, 0.060651, -0.845352,
		0.735440, 0.462766, 0.494949,
		0.421220, -0.884403, 0.201011,
		33.085606, 39.959644, 31.787008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465618, 40.691311, 31.525862>,  <32.790752, 40.578724, 31.646301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465618, 40.691311, 31.525862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457375, 40.291519, 31.515959>,  <33.452431, 40.051643, 31.510017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457375, 40.291519, 31.515959>,  <33.465618, 40.691311, 31.525862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457375, 40.291519, 31.515959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747743, 0.001032, -0.663987,
		0.663668, -0.032195, 0.747334,
		-0.020606, -0.999481, -0.024758,
		33.451191, 39.991676, 31.508532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183914, 40.503429, 31.314556>,  <33.465618, 40.691311, 31.525862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183914, 40.503429, 31.314556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993343, 40.155807, 31.261255>,  <33.879002, 39.947235, 31.229275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993343, 40.155807, 31.261255>,  <34.183914, 40.503429, 31.314556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993343, 40.155807, 31.261255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660812, -0.253971, -0.706276,
		0.579952, -0.424544, 0.695283,
		-0.476427, -0.869057, -0.133253,
		33.850414, 39.895092, 31.221279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753746, 39.956280, 31.267275>,  <34.183914, 40.503429, 31.314556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753746, 39.956280, 31.267275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419807, 39.813015, 31.100060>,  <34.219444, 39.727058, 30.999731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419807, 39.813015, 31.100060>,  <34.753746, 39.956280, 31.267275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419807, 39.813015, 31.100060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547828, -0.466021, -0.694772,
		0.054025, -0.809040, 0.585265,
		-0.834844, -0.358160, -0.418038,
		34.169353, 39.705566, 30.974648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866169, 39.232258, 31.144625>,  <34.753746, 39.956280, 31.267275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866169, 39.232258, 31.144625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.572899, 39.343807, 30.896534>,  <34.396935, 39.410736, 30.747681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.572899, 39.343807, 30.896534>,  <34.866169, 39.232258, 31.144625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572899, 39.343807, 30.896534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461993, -0.464999, -0.755207,
		-0.499011, -0.840242, 0.212090,
		-0.733179, 0.278873, -0.620226,
		34.352947, 39.427467, 30.710466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862110, 38.663437, 30.579041>,  <34.866169, 39.232258, 31.144625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862110, 38.663437, 30.579041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626118, 38.946167, 30.422928>,  <34.484520, 39.115803, 30.329260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626118, 38.946167, 30.422928>,  <34.862110, 38.663437, 30.579041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626118, 38.946167, 30.422928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410585, -0.153571, -0.898797,
		-0.695226, -0.690521, -0.199605,
		-0.589984, 0.706822, -0.390284,
		34.449123, 39.158215, 30.305843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577961, 38.360237, 29.910322>,  <34.862110, 38.663437, 30.579041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577961, 38.360237, 29.910322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580330, 38.760204, 29.914906>,  <34.581753, 39.000183, 29.917656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580330, 38.760204, 29.914906>,  <34.577961, 38.360237, 29.910322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580330, 38.760204, 29.914906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502473, 0.006933, -0.864565,
		-0.864572, 0.010879, -0.502391,
		0.005923, 0.999917, 0.011460,
		34.582108, 39.060181, 29.918343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228806, 38.558910, 29.256573>,  <34.577961, 38.360237, 29.910322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228806, 38.558910, 29.256573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457268, 38.859436, 29.388819>,  <34.594345, 39.039753, 29.468166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457268, 38.859436, 29.388819>,  <34.228806, 38.558910, 29.256573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457268, 38.859436, 29.388819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495196, 0.005842, -0.868762,
		-0.654644, 0.659920, -0.368710,
		0.571159, 0.751313, 0.330614,
		34.628616, 39.084831, 29.488003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345673, 39.004265, 28.702475>,  <34.228806, 38.558910, 29.256573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345673, 39.004265, 28.702475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653507, 39.093403, 28.941832>,  <34.838207, 39.146885, 29.085445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653507, 39.093403, 28.941832>,  <34.345673, 39.004265, 28.702475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653507, 39.093403, 28.941832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601772, 0.060300, -0.796388,
		-0.213558, 0.972986, -0.087698,
		0.769587, 0.222849, 0.598393,
		34.884384, 39.160259, 29.121349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662930, 39.416039, 28.208427>,  <34.345673, 39.004265, 28.702475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662930, 39.416039, 28.208427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913582, 39.338196, 28.510277>,  <35.063972, 39.291489, 28.691387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913582, 39.338196, 28.510277>,  <34.662930, 39.416039, 28.208427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913582, 39.338196, 28.510277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774016, 0.042716, -0.631723,
		0.090704, 0.979950, 0.177397,
		0.626635, -0.194608, 0.754623,
		35.101574, 39.279812, 28.736664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172688, 39.944313, 28.234982>,  <34.662930, 39.416039, 28.208427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172688, 39.944313, 28.234982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.340313, 39.619987, 28.398430>,  <35.440887, 39.425392, 28.496500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.340313, 39.619987, 28.398430>,  <35.172688, 39.944313, 28.234982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340313, 39.619987, 28.398430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778813, 0.089656, -0.620815,
		0.466728, 0.578402, 0.669041,
		0.419064, -0.810810, 0.408622,
		35.466034, 39.376743, 28.521017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862183, 40.089252, 28.304644>,  <35.172688, 39.944313, 28.234982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862183, 40.089252, 28.304644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841248, 39.689838, 28.310020>,  <35.828686, 39.450188, 28.313246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841248, 39.689838, 28.310020>,  <35.862183, 40.089252, 28.304644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841248, 39.689838, 28.310020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733086, -0.047556, -0.678471,
		0.678119, -0.025654, 0.734504,
		-0.052336, -0.998539, 0.013442,
		35.825546, 39.390278, 28.314053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637543, 39.828529, 28.277113>,  <35.862183, 40.089252, 28.304644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637543, 39.828529, 28.277113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410137, 39.511948, 28.187321>,  <36.273693, 39.321999, 28.133446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410137, 39.511948, 28.187321>,  <36.637543, 39.828529, 28.277113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410137, 39.511948, 28.187321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716846, -0.342700, -0.607197,
		0.403641, -0.506116, 0.762181,
		-0.568512, -0.791456, -0.224480,
		36.239582, 39.274509, 28.119976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138672, 39.267643, 28.405237>,  <36.637543, 39.828529, 28.277113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138672, 39.267643, 28.405237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855637, 39.173672, 28.138666>,  <36.685814, 39.117290, 27.978724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855637, 39.173672, 28.138666>,  <37.138672, 39.267643, 28.405237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855637, 39.173672, 28.138666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706614, -0.239486, -0.665840,
		-0.003177, -0.942049, 0.335460,
		-0.707591, -0.234925, -0.666427,
		36.643360, 39.103195, 27.938738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332855, 38.614773, 28.102488>,  <37.138672, 39.267643, 28.405237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332855, 38.614773, 28.102488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.061806, 38.698357, 27.820448>,  <36.899178, 38.748508, 27.651224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.061806, 38.698357, 27.820448>,  <37.332855, 38.614773, 28.102488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061806, 38.698357, 27.820448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681070, -0.183401, -0.708878,
		-0.277443, -0.960573, -0.018040,
		-0.677621, 0.208959, -0.705100,
		36.858521, 38.761044, 27.608917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375546, 38.112595, 27.641113>,  <37.332855, 38.614773, 28.102488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375546, 38.112595, 27.641113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226974, 38.430428, 27.448999>,  <37.137833, 38.621128, 27.333731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226974, 38.430428, 27.448999>,  <37.375546, 38.112595, 27.641113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226974, 38.430428, 27.448999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668083, -0.130494, -0.732555,
		-0.644751, -0.592965, -0.482378,
		-0.371432, 0.794584, -0.480286,
		37.115543, 38.668804, 27.304913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586742, 37.872379, 26.983686>,  <37.375546, 38.112595, 27.641113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586742, 37.872379, 26.983686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464241, 38.249607, 26.931791>,  <37.390739, 38.475945, 26.900654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464241, 38.249607, 26.931791>,  <37.586742, 37.872379, 26.983686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464241, 38.249607, 26.931791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639050, 0.102659, -0.762284,
		-0.705566, -0.316362, -0.634107,
		-0.306255, 0.943067, -0.129739,
		37.372364, 38.532528, 26.892870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420700, 38.033806, 26.254095>,  <37.586742, 37.872379, 26.983686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420700, 38.033806, 26.254095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484577, 38.388977, 26.426645>,  <37.522903, 38.602081, 26.530176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484577, 38.388977, 26.426645>,  <37.420700, 38.033806, 26.254095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484577, 38.388977, 26.426645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539675, 0.287378, -0.791306,
		-0.826590, 0.359166, -0.433300,
		0.159690, 0.887926, 0.431377,
		37.532482, 38.655354, 26.556059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183338, 38.598576, 25.866945>,  <37.420700, 38.033806, 26.254095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183338, 38.598576, 25.866945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472198, 38.747887, 26.099895>,  <37.645515, 38.837475, 26.239666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472198, 38.747887, 26.099895>,  <37.183338, 38.598576, 25.866945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472198, 38.747887, 26.099895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410145, 0.446899, -0.795024,
		-0.557027, 0.812986, 0.169632,
		0.722151, 0.373276, 0.582377,
		37.688843, 38.859871, 26.274609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293720, 39.244064, 25.569818>,  <37.183338, 38.598576, 25.866945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293720, 39.244064, 25.569818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628426, 39.148666, 25.766979>,  <37.829247, 39.091427, 25.885277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628426, 39.148666, 25.766979>,  <37.293720, 39.244064, 25.569818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628426, 39.148666, 25.766979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546711, 0.414321, -0.727630,
		-0.030683, 0.878327, 0.477075,
		0.836759, -0.238497, 0.492903,
		37.879452, 39.077118, 25.914850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618881, 39.855854, 25.519314>,  <37.293720, 39.244064, 25.569818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618881, 39.855854, 25.519314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.878162, 39.557034, 25.578295>,  <38.033733, 39.377743, 25.613684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.878162, 39.557034, 25.578295>,  <37.618881, 39.855854, 25.519314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878162, 39.557034, 25.578295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455767, 0.225510, -0.861059,
		0.610003, 0.625348, 0.486658,
		0.648207, -0.747051, 0.147451,
		38.072624, 39.332920, 25.622530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178291, 40.070271, 25.107601>,  <37.618881, 39.855854, 25.519314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178291, 40.070271, 25.107601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.322048, 39.713367, 25.216930>,  <38.408302, 39.499226, 25.282528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.322048, 39.713367, 25.216930>,  <38.178291, 40.070271, 25.107601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322048, 39.713367, 25.216930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678290, 0.048615, -0.733184,
		0.640905, 0.448894, 0.622684,
		0.359394, -0.892262, 0.273323,
		38.429867, 39.445690, 25.298927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941589, 40.163620, 25.132792>,  <38.178291, 40.070271, 25.107601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941589, 40.163620, 25.132792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.836403, 39.782619, 25.071348>,  <38.773289, 39.554020, 25.034481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.836403, 39.782619, 25.071348>,  <38.941589, 40.163620, 25.132792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836403, 39.782619, 25.071348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605950, -0.039156, -0.794539,
		0.750781, -0.302018, 0.587462,
		-0.262968, -0.952497, -0.153610,
		38.757511, 39.496872, 25.025265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635101, 39.783733, 25.147083>,  <38.941589, 40.163620, 25.132792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635101, 39.783733, 25.147083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.374569, 39.572590, 24.929041>,  <39.218250, 39.445904, 24.798216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.374569, 39.572590, 24.929041>,  <39.635101, 39.783733, 25.147083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374569, 39.572590, 24.929041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627136, 0.029938, -0.778334,
		0.427170, -0.848804, 0.311540,
		-0.651327, -0.527859, -0.545104,
		39.179173, 39.414230, 24.765511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988602, 39.385895, 24.693764>,  <39.635101, 39.783733, 25.147083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988602, 39.385895, 24.693764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642124, 39.342232, 24.498711>,  <39.434238, 39.316032, 24.381678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642124, 39.342232, 24.498711>,  <39.988602, 39.385895, 24.693764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642124, 39.342232, 24.498711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494119, -0.041621, -0.868397,
		0.074499, -0.993153, 0.089990,
		-0.866196, -0.109161, -0.487635,
		39.382267, 39.309483, 24.352421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179733, 38.875957, 25.091846>,  <39.988602, 39.385895, 24.693764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179733, 38.875957, 25.091846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.391949, 38.546371, 25.171461>,  <40.519276, 38.348621, 25.219229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.391949, 38.546371, 25.171461>,  <40.179733, 38.875957, 25.091846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391949, 38.546371, 25.171461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360712, -0.006967, 0.932651,
		-0.767084, -0.566599, -0.300910,
		0.530536, -0.823964, 0.199035,
		40.551109, 38.299183, 25.231171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669773, 38.375397, 25.347095>,  <40.179733, 38.875957, 25.091846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669773, 38.375397, 25.347095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019749, 38.231533, 25.476793>,  <40.229733, 38.145214, 25.554611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019749, 38.231533, 25.476793>,  <39.669773, 38.375397, 25.347095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019749, 38.231533, 25.476793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369408, -0.062804, 0.927142,
		-0.313088, -0.930969, -0.187809,
		0.874936, -0.359656, 0.324245,
		40.282230, 38.123638, 25.574066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502701, 37.840019, 25.839264>,  <39.669773, 38.375397, 25.347095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502701, 37.840019, 25.839264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.882374, 37.938251, 25.917997>,  <40.110176, 37.997192, 25.965239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.882374, 37.938251, 25.917997>,  <39.502701, 37.840019, 25.839264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882374, 37.938251, 25.917997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220059, 0.070738, 0.972918,
		0.225007, -0.966792, 0.121185,
		0.949181, 0.245581, 0.196835,
		40.167130, 38.011925, 25.977047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761227, 37.454609, 26.412357>,  <39.502701, 37.840019, 25.839264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761227, 37.454609, 26.412357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.967514, 37.797207, 26.420914>,  <40.091286, 38.002766, 26.426048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.967514, 37.797207, 26.420914>,  <39.761227, 37.454609, 26.412357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967514, 37.797207, 26.420914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155526, 0.069035, 0.985416,
		0.842526, -0.511521, 0.168810,
		0.515715, 0.856493, 0.021391,
		40.122227, 38.054153, 26.427332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165749, 37.304375, 27.016352>,  <39.761227, 37.454609, 26.412357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165749, 37.304375, 27.016352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.208511, 37.694592, 26.939528>,  <40.234169, 37.928722, 26.893433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.208511, 37.694592, 26.939528>,  <40.165749, 37.304375, 27.016352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208511, 37.694592, 26.939528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078930, 0.200887, 0.976430,
		0.991131, -0.089229, 0.098476,
		0.106908, 0.975542, -0.192062,
		40.240585, 37.987255, 26.881908>
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
