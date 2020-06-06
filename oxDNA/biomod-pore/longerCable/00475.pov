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
	<23.914484, 35.304581, 35.336037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182625, 35.088024, 35.133049>,  <24.343510, 34.958092, 35.011257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182625, 35.088024, 35.133049>,  <23.914484, 35.304581, 35.336037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.182625, 35.088024, 35.133049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216946, 0.796991, -0.563684,
		0.709620, 0.267775, 0.651718,
		0.670354, -0.541389, -0.507468,
		24.383730, 34.925606, 34.980808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.482828, 35.732357, 35.283108>,  <23.914484, 35.304581, 35.336037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.482828, 35.732357, 35.283108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469069, 35.458546, 34.991837>,  <24.460814, 35.294258, 34.817074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469069, 35.458546, 34.991837>,  <24.482828, 35.732357, 35.283108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.469069, 35.458546, 34.991837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084934, 0.727974, -0.680323,
		0.995793, 0.038445, -0.083181,
		-0.034399, -0.684526, -0.728177,
		24.458750, 35.253189, 34.773384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039310, 35.699451, 34.891502>,  <24.482828, 35.732357, 35.283108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039310, 35.699451, 34.891502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715782, 35.581512, 34.687984>,  <24.521666, 35.510750, 34.565872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715782, 35.581512, 34.687984>,  <25.039310, 35.699451, 34.891502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715782, 35.581512, 34.687984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078307, 0.803511, -0.590118,
		0.582821, -0.517141, -0.626806,
		-0.808819, -0.294850, -0.508798,
		24.473137, 35.493057, 34.535343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062988, 35.149189, 35.366024>,  <25.039310, 35.699451, 34.891502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062988, 35.149189, 35.366024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401154, 35.186775, 35.576336>,  <25.604053, 35.209328, 35.702522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401154, 35.186775, 35.576336>,  <25.062988, 35.149189, 35.366024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401154, 35.186775, 35.576336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375237, 0.805030, 0.459482,
		-0.380094, -0.585745, 0.715843,
		0.845414, 0.093964, 0.525780,
		25.654778, 35.214966, 35.734070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940063, 34.967037, 36.015903>,  <25.062988, 35.149189, 35.366024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940063, 34.967037, 36.015903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237059, 35.234951, 36.011890>,  <25.415257, 35.395699, 36.009483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237059, 35.234951, 36.011890>,  <24.940063, 34.967037, 36.015903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237059, 35.234951, 36.011890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552422, 0.620715, 0.556365,
		0.378871, -0.407554, 0.830877,
		0.742487, 0.669785, -0.010029,
		25.459805, 35.435886, 36.008881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101257, 35.109482, 36.719761>,  <24.940063, 34.967037, 36.015903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101257, 35.109482, 36.719761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212784, 35.425957, 36.502033>,  <25.279699, 35.615841, 36.371395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212784, 35.425957, 36.502033>,  <25.101257, 35.109482, 36.719761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212784, 35.425957, 36.502033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434004, 0.609427, 0.663506,
		0.856681, 0.051242, 0.513296,
		0.278817, 0.791185, -0.544323,
		25.296429, 35.663311, 36.338737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678822, 35.370342, 37.073174>,  <25.101257, 35.109482, 36.719761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678822, 35.370342, 37.073174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459879, 35.623306, 36.853916>,  <25.328514, 35.775085, 36.722363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459879, 35.623306, 36.853916>,  <25.678822, 35.370342, 37.073174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459879, 35.623306, 36.853916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130368, 0.582544, 0.802276,
		0.826683, 0.510591, -0.236413,
		-0.547356, 0.632407, -0.548144,
		25.295671, 35.813030, 36.689472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035793, 36.017567, 37.119984>,  <25.678822, 35.370342, 37.073174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035793, 36.017567, 37.119984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640554, 36.038200, 37.062019>,  <25.403410, 36.050579, 37.027241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640554, 36.038200, 37.062019>,  <26.035793, 36.017567, 37.119984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.640554, 36.038200, 37.062019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086450, 0.592992, 0.800554,
		0.127227, 0.803554, -0.581476,
		-0.988099, 0.051583, -0.144912,
		25.344124, 36.053677, 37.018547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844669, 36.593727, 37.458199>,  <26.035793, 36.017567, 37.119984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844669, 36.593727, 37.458199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463926, 36.487156, 37.397560>,  <25.235479, 36.423214, 37.361179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463926, 36.487156, 37.397560>,  <25.844669, 36.593727, 37.458199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463926, 36.487156, 37.397560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298514, 0.693264, 0.655953,
		-0.069670, 0.669628, -0.739422,
		-0.951859, -0.266428, -0.151594,
		25.178370, 36.407227, 37.352081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347200, 37.261002, 37.411331>,  <25.844669, 36.593727, 37.458199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347200, 37.261002, 37.411331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112030, 36.948139, 37.493866>,  <24.970928, 36.760422, 37.543388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112030, 36.948139, 37.493866>,  <25.347200, 37.261002, 37.411331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112030, 36.948139, 37.493866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603947, 0.594128, 0.531280,
		-0.538134, 0.187738, -0.821685,
		-0.587928, -0.782154, 0.206336,
		24.935652, 36.713493, 37.555767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638645, 37.492546, 37.287144>,  <25.347200, 37.261002, 37.411331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638645, 37.492546, 37.287144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675274, 37.194660, 37.551575>,  <24.697252, 37.015930, 37.710232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675274, 37.194660, 37.551575>,  <24.638645, 37.492546, 37.287144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675274, 37.194660, 37.551575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502260, 0.538694, 0.676420,
		-0.859854, -0.393974, -0.324707,
		0.091574, -0.744710, 0.661076,
		24.702745, 36.971249, 37.749897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.970930, 37.405773, 37.802666>,  <24.638645, 37.492546, 37.287144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.970930, 37.405773, 37.802666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291960, 37.261929, 37.993057>,  <24.484577, 37.175621, 38.107292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291960, 37.261929, 37.993057>,  <23.970930, 37.405773, 37.802666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291960, 37.261929, 37.993057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298636, 0.448512, 0.842409,
		-0.516424, -0.818239, 0.252570,
		0.802572, -0.359614, 0.475978,
		24.532732, 37.154045, 38.135849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.988571, 37.614964, 38.539494>,  <23.970930, 37.405773, 37.802666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.988571, 37.614964, 38.539494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151268, 37.543873, 38.897930>,  <24.248886, 37.501217, 39.112991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151268, 37.543873, 38.897930>,  <23.988571, 37.614964, 38.539494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.151268, 37.543873, 38.897930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440812, -0.820961, -0.362915,
		0.800153, 0.542619, -0.255576,
		0.406743, -0.177727, 0.896088,
		24.273291, 37.490555, 39.166756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.769402, 37.635864, 38.479649>,  <23.988571, 37.614964, 38.539494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.769402, 37.635864, 38.479649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.619118, 37.392742, 38.759483>,  <24.528948, 37.246868, 38.927383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.619118, 37.392742, 38.759483>,  <24.769402, 37.635864, 38.479649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.619118, 37.392742, 38.759483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270070, -0.793934, -0.544730,
		0.886512, -0.015725, 0.462439,
		-0.375712, -0.607801, 0.699585,
		24.506405, 37.210403, 38.969360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242146, 37.089737, 38.785248>,  <24.769402, 37.635864, 38.479649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242146, 37.089737, 38.785248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852573, 37.002419, 38.760582>,  <24.618830, 36.950027, 38.745785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852573, 37.002419, 38.760582>,  <25.242146, 37.089737, 38.785248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852573, 37.002419, 38.760582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185538, -0.610214, -0.770204,
		0.130508, -0.761567, 0.634810,
		-0.973932, -0.218299, -0.061661,
		24.560394, 36.936928, 38.742085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113565, 36.329952, 38.756245>,  <25.242146, 37.089737, 38.785248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.113565, 36.329952, 38.756245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839039, 36.548161, 38.563839>,  <24.674322, 36.679085, 38.448395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839039, 36.548161, 38.563839>,  <25.113565, 36.329952, 38.756245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839039, 36.548161, 38.563839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131258, -0.557599, -0.819667,
		-0.715362, -0.625688, 0.311084,
		-0.686316, 0.545526, -0.481012,
		24.633144, 36.711819, 38.419537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619122, 35.905331, 38.477505>,  <25.113565, 36.329952, 38.756245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619122, 35.905331, 38.477505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637173, 36.238689, 38.257175>,  <24.648003, 36.438705, 38.124977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637173, 36.238689, 38.257175>,  <24.619122, 35.905331, 38.477505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637173, 36.238689, 38.257175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063716, -0.552668, -0.830962,
		-0.996947, 0.002404, -0.078042,
		0.045129, 0.833398, -0.550827,
		24.650711, 36.488708, 38.091927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188234, 35.759163, 37.957146>,  <24.619122, 35.905331, 38.477505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188234, 35.759163, 37.957146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443317, 36.041874, 37.834644>,  <24.596367, 36.211502, 37.761143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443317, 36.041874, 37.834644>,  <24.188234, 35.759163, 37.957146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.443317, 36.041874, 37.834644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094301, -0.466228, -0.879624,
		-0.764484, 0.532064, -0.363967,
		0.637708, 0.706781, -0.306250,
		24.634630, 36.253910, 37.742771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027151, 35.843124, 37.290131>,  <24.188234, 35.759163, 37.957146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.027151, 35.843124, 37.290131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389877, 36.010406, 37.311264>,  <24.607513, 36.110775, 37.323944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389877, 36.010406, 37.311264>,  <24.027151, 35.843124, 37.290131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389877, 36.010406, 37.311264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194715, -0.304421, -0.932424,
		-0.373865, 0.855821, -0.357484,
		0.906814, 0.418208, 0.052829,
		24.661921, 36.135868, 37.327114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.039394, 36.407890, 36.776234>,  <24.027151, 35.843124, 37.290131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.039394, 36.407890, 36.776234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398891, 36.246902, 36.845829>,  <24.614590, 36.150311, 36.887589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398891, 36.246902, 36.845829>,  <24.039394, 36.407890, 36.776234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.398891, 36.246902, 36.845829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062518, -0.275133, -0.959371,
		0.433993, 0.873107, -0.222112,
		0.898745, -0.402474, 0.173990,
		24.668514, 36.126160, 36.898026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.407513, 36.237946, 36.219608>,  <24.039394, 36.407890, 36.776234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.407513, 36.237946, 36.219608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726778, 36.302219, 36.451855>,  <24.918337, 36.340782, 36.591202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726778, 36.302219, 36.451855>,  <24.407513, 36.237946, 36.219608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726778, 36.302219, 36.451855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601528, -0.265632, -0.753395,
		0.033176, 0.950590, -0.308671,
		0.798163, 0.160680, 0.580619,
		24.966227, 36.350422, 36.626041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891581, 36.726521, 35.852409>,  <24.407513, 36.237946, 36.219608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891581, 36.726521, 35.852409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041752, 36.472950, 36.122871>,  <25.131855, 36.320808, 36.285149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041752, 36.472950, 36.122871>,  <24.891581, 36.726521, 35.852409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041752, 36.472950, 36.122871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521556, -0.458561, -0.719515,
		0.766180, 0.622780, 0.158472,
		0.375430, -0.633930, 0.676155,
		25.154381, 36.282772, 36.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693178, 36.696289, 35.696793>,  <24.891581, 36.726521, 35.852409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693178, 36.696289, 35.696793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573439, 36.370785, 35.896065>,  <25.501595, 36.175480, 36.015629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573439, 36.370785, 35.896065>,  <25.693178, 36.696289, 35.696793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573439, 36.370785, 35.896065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725060, -0.533403, -0.435625,
		0.620225, 0.230805, 0.749700,
		-0.299348, -0.813763, 0.498177,
		25.483635, 36.126656, 36.045517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729948, 37.132965, 36.423115>,  <25.693178, 36.696289, 35.696793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729948, 37.132965, 36.423115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100723, 37.186184, 36.563446>,  <26.323189, 37.218117, 36.647644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100723, 37.186184, 36.563446>,  <25.729948, 37.132965, 36.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100723, 37.186184, 36.563446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153941, -0.717839, 0.678976,
		0.342177, -0.683377, -0.644912,
		0.926940, 0.133052, 0.350828,
		26.378805, 37.226101, 36.668694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150162, 36.467064, 36.493042>,  <25.729948, 37.132965, 36.423115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150162, 36.467064, 36.493042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253105, 36.754051, 36.751965>,  <26.314871, 36.926243, 36.907318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253105, 36.754051, 36.751965>,  <26.150162, 36.467064, 36.493042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253105, 36.754051, 36.751965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137686, -0.635806, 0.759469,
		0.956457, -0.284580, -0.064844,
		0.257358, 0.717471, 0.647304,
		26.330313, 36.969292, 36.946156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472872, 36.095215, 35.913170>,  <26.150162, 36.467064, 36.493042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472872, 36.095215, 35.913170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184446, 35.850208, 36.042717>,  <26.011391, 35.703205, 36.120445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184446, 35.850208, 36.042717>,  <26.472872, 36.095215, 35.913170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184446, 35.850208, 36.042717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493719, -0.782169, -0.380069,
		0.486117, -0.114155, 0.866405,
		-0.721062, -0.612519, 0.323865,
		25.968128, 35.666454, 36.139877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746122, 35.534367, 36.319836>,  <26.472872, 36.095215, 35.913170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746122, 35.534367, 36.319836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410625, 35.417793, 36.135845>,  <26.209328, 35.347851, 36.025452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410625, 35.417793, 36.135845>,  <26.746122, 35.534367, 36.319836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410625, 35.417793, 36.135845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512510, -0.707895, -0.486023,
		-0.183975, -0.643392, 0.743101,
		-0.838741, -0.291430, -0.459980,
		26.159002, 35.330364, 35.997852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854654, 34.792675, 36.217957>,  <26.746122, 35.534367, 36.319836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854654, 34.792675, 36.217957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580530, 34.918602, 35.955280>,  <26.416056, 34.994156, 35.797672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580530, 34.918602, 35.955280>,  <26.854654, 34.792675, 36.217957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580530, 34.918602, 35.955280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334060, -0.665376, -0.667592,
		-0.647111, -0.676883, 0.350824,
		-0.685312, 0.314810, -0.656691,
		26.374937, 35.013046, 35.758274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486063, 34.897671, 36.679333>,  <26.854654, 34.792675, 36.217957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486063, 34.897671, 36.679333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364943, 34.618202, 36.938614>,  <27.292271, 34.450520, 37.094185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.364943, 34.618202, 36.938614>,  <27.486063, 34.897671, 36.679333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364943, 34.618202, 36.938614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812129, -0.166775, -0.559135,
		0.498756, -0.695732, -0.516912,
		-0.302801, -0.698672, 0.648205,
		27.274103, 34.408600, 37.133076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014793, 34.805031, 36.170887>,  <27.486063, 34.897671, 36.679333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014793, 34.805031, 36.170887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265661, 34.791969, 35.859608>,  <28.416182, 34.784130, 35.672840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265661, 34.791969, 35.859608>,  <28.014793, 34.805031, 36.170887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265661, 34.791969, 35.859608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127331, 0.989978, 0.061076,
		0.768404, -0.137394, 0.625042,
		0.627169, -0.032656, -0.778198,
		28.453812, 34.782173, 35.626148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466877, 35.384125, 36.302338>,  <28.014793, 34.805031, 36.170887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466877, 35.384125, 36.302338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563995, 35.307594, 35.921928>,  <28.622267, 35.261677, 35.693684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563995, 35.307594, 35.921928>,  <28.466877, 35.384125, 36.302338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563995, 35.307594, 35.921928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152147, 0.975735, -0.157456,
		0.958071, -0.106465, 0.266016,
		0.242797, -0.191328, -0.951022,
		28.636835, 35.250195, 35.636623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053469, 35.761276, 36.154972>,  <28.466877, 35.384125, 36.302338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053469, 35.761276, 36.154972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862465, 35.695957, 35.809647>,  <28.747862, 35.656765, 35.602451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862465, 35.695957, 35.809647>,  <29.053469, 35.761276, 36.154972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862465, 35.695957, 35.809647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058756, 0.974442, -0.216819,
		0.876659, -0.154259, -0.455712,
		-0.477511, -0.163301, -0.863317,
		28.719212, 35.646969, 35.550652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346573, 36.187481, 35.731899>,  <29.053469, 35.761276, 36.154972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346573, 36.187481, 35.731899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019444, 36.090851, 35.522972>,  <28.823166, 36.032875, 35.397617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019444, 36.090851, 35.522972>,  <29.346573, 36.187481, 35.731899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019444, 36.090851, 35.522972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154070, 0.966405, -0.205726,
		0.554464, -0.087775, -0.827566,
		-0.817822, -0.241571, -0.522313,
		28.774097, 36.018379, 35.366280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464264, 36.477013, 35.119183>,  <29.346573, 36.187481, 35.731899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464264, 36.477013, 35.119183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070091, 36.426800, 35.165085>,  <28.833588, 36.396671, 35.192627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070091, 36.426800, 35.165085>,  <29.464264, 36.477013, 35.119183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070091, 36.426800, 35.165085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159839, 0.914132, -0.372577,
		-0.058132, -0.385492, -0.920878,
		-0.985430, -0.125534, 0.114757,
		28.774462, 36.389141, 35.199512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142763, 36.751892, 34.473465>,  <29.464264, 36.477013, 35.119183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142763, 36.751892, 34.473465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928391, 36.810810, 34.805988>,  <28.799767, 36.846161, 35.005505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928391, 36.810810, 34.805988>,  <29.142763, 36.751892, 34.473465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928391, 36.810810, 34.805988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278233, 0.898839, -0.338636,
		-0.797097, -0.412784, -0.440733,
		-0.535932, 0.147299, 0.831312,
		28.767611, 36.855000, 35.055382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456099, 36.865627, 34.374672>,  <29.142763, 36.751892, 34.473465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456099, 36.865627, 34.374672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592848, 37.055820, 34.698906>,  <28.674898, 37.169937, 34.893444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592848, 37.055820, 34.698906>,  <28.456099, 36.865627, 34.374672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592848, 37.055820, 34.698906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300334, 0.872599, -0.385189,
		-0.890462, -0.111760, 0.441120,
		0.341873, 0.475480, 0.810582,
		28.695410, 37.198463, 34.942081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871162, 37.434311, 34.606117>,  <28.456099, 36.865627, 34.374672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871162, 37.434311, 34.606117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260059, 37.497284, 34.675350>,  <28.493399, 37.535069, 34.716888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260059, 37.497284, 34.675350>,  <27.871162, 37.434311, 34.606117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260059, 37.497284, 34.675350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060280, 0.883331, -0.464858,
		-0.226071, 0.441522, 0.868303,
		0.972244, 0.157432, 0.173080,
		28.551733, 37.544514, 34.727276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682968, 38.206661, 34.460804>,  <27.871162, 37.434311, 34.606117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682968, 38.206661, 34.460804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860020, 38.458614, 34.716091>,  <27.966249, 38.609787, 34.869263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860020, 38.458614, 34.716091>,  <27.682968, 38.206661, 34.460804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860020, 38.458614, 34.716091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787543, -0.613408, 0.059211,
		0.428785, 0.476417, -0.767574,
		0.442627, 0.629887, 0.638219,
		27.992807, 38.647579, 34.907558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386452, 38.292664, 34.260063>,  <27.682968, 38.206661, 34.460804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386452, 38.292664, 34.260063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364241, 38.352940, 34.654873>,  <28.350914, 38.389103, 34.891758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364241, 38.352940, 34.654873>,  <28.386452, 38.292664, 34.260063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364241, 38.352940, 34.654873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736378, -0.661413, 0.142406,
		0.674287, 0.734728, -0.074235,
		-0.055530, 0.150688, 0.987021,
		28.347582, 38.398148, 34.950977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087484, 38.320080, 34.653633>,  <28.386452, 38.292664, 34.260063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087484, 38.320080, 34.653633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802576, 38.195679, 34.905331>,  <28.631632, 38.121040, 35.056351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802576, 38.195679, 34.905331>,  <29.087484, 38.320080, 34.653633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802576, 38.195679, 34.905331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560879, -0.791171, 0.243851,
		0.422003, 0.526619, 0.737961,
		-0.712270, -0.311001, 0.629246,
		28.588896, 38.102379, 35.094105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401445, 38.221855, 35.415638>,  <29.087484, 38.320080, 34.653633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401445, 38.221855, 35.415638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071657, 38.013168, 35.327946>,  <28.873785, 37.887955, 35.275330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071657, 38.013168, 35.327946>,  <29.401445, 38.221855, 35.415638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071657, 38.013168, 35.327946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439876, -0.834539, 0.331742,
		-0.356031, 0.177078, 0.917543,
		-0.824470, -0.521716, -0.219229,
		28.824316, 37.856655, 35.262177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201832, 37.783089, 36.012211>,  <29.401445, 38.221855, 35.415638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201832, 37.783089, 36.012211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057981, 37.600285, 35.686806>,  <28.971672, 37.490601, 35.491562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057981, 37.600285, 35.686806>,  <29.201832, 37.783089, 36.012211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057981, 37.600285, 35.686806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435579, -0.853247, 0.286776,
		-0.825191, -0.251219, 0.505915,
		-0.359627, -0.457011, -0.813517,
		28.950094, 37.463181, 35.442749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902077, 37.165878, 36.152374>,  <29.201832, 37.783089, 36.012211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902077, 37.165878, 36.152374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009356, 37.094357, 35.773724>,  <29.073723, 37.051441, 35.546532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009356, 37.094357, 35.773724>,  <28.902077, 37.165878, 36.152374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009356, 37.094357, 35.773724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412254, -0.866805, 0.280528,
		-0.870699, -0.465487, -0.158761,
		0.268197, -0.178806, -0.946625,
		29.089815, 37.040714, 35.489735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506330, 37.644032, 35.803303>,  <28.902077, 37.165878, 36.152374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506330, 37.644032, 35.803303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376959, 37.608513, 35.426472>,  <28.299335, 37.587200, 35.200375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376959, 37.608513, 35.426472>,  <28.506330, 37.644032, 35.803303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376959, 37.608513, 35.426472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066768, -0.995247, 0.070888,
		-0.943894, -0.039973, 0.327820,
		-0.323428, -0.088799, -0.942077,
		28.279930, 37.581875, 35.143848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866259, 37.294155, 35.819527>,  <28.506330, 37.644032, 35.803303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866259, 37.294155, 35.819527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049273, 37.233593, 35.469044>,  <28.159081, 37.197254, 35.258755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049273, 37.233593, 35.469044>,  <27.866259, 37.294155, 35.819527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049273, 37.233593, 35.469044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081303, -0.988392, 0.128340,
		-0.885467, 0.012518, -0.464535,
		0.457536, -0.151409, -0.876206,
		28.186533, 37.188171, 35.206181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701986, 36.610321, 35.883373>,  <27.866259, 37.294155, 35.819527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701986, 36.610321, 35.883373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939869, 36.655041, 35.564922>,  <28.082598, 36.681873, 35.373852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939869, 36.655041, 35.564922>,  <27.701986, 36.610321, 35.883373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939869, 36.655041, 35.564922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155852, -0.987530, -0.022256,
		-0.788692, -0.110843, -0.604714,
		0.594706, 0.111799, -0.796132,
		28.118280, 36.688580, 35.326084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486246, 36.210938, 35.262997>,  <27.701986, 36.610321, 35.883373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486246, 36.210938, 35.262997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880838, 36.273201, 35.242489>,  <28.117594, 36.310558, 35.230183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880838, 36.273201, 35.242489>,  <27.486246, 36.210938, 35.262997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880838, 36.273201, 35.242489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156173, -0.987711, 0.006084,
		-0.049691, -0.014009, -0.998666,
		0.986479, 0.155663, -0.051268,
		28.176783, 36.319901, 35.227108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679972, 35.728729, 34.730175>,  <27.486246, 36.210938, 35.262997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679972, 35.728729, 34.730175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007862, 35.821579, 34.939617>,  <28.204597, 35.877289, 35.065285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007862, 35.821579, 34.939617>,  <27.679972, 35.728729, 34.730175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007862, 35.821579, 34.939617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288998, -0.956914, -0.028226,
		0.494497, 0.174459, -0.851491,
		0.819727, 0.232121, 0.523609,
		28.253780, 35.891216, 35.096699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192961, 35.346859, 34.389000>,  <27.679972, 35.728729, 34.730175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192961, 35.346859, 34.389000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322712, 35.453678, 34.751980>,  <28.400562, 35.517769, 34.969769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322712, 35.453678, 34.751980>,  <28.192961, 35.346859, 34.389000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322712, 35.453678, 34.751980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366270, -0.919946, 0.139802,
		0.872138, 0.287022, -0.396225,
		0.324379, 0.267052, 0.907448,
		28.420025, 35.533794, 35.024216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650726, 34.928314, 34.450909>,  <28.192961, 35.346859, 34.389000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650726, 34.928314, 34.450909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691019, 35.032963, 34.834869>,  <28.715195, 35.095753, 35.065247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691019, 35.032963, 34.834869>,  <28.650726, 34.928314, 34.450909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691019, 35.032963, 34.834869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295043, -0.929261, 0.222314,
		0.950160, 0.260818, -0.170795,
		0.100730, 0.261625, 0.959899,
		28.721237, 35.111450, 35.122841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333256, 34.826717, 34.707489>,  <28.650726, 34.928314, 34.450909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333256, 34.826717, 34.707489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032658, 34.792545, 34.969162>,  <28.852299, 34.772041, 35.126167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032658, 34.792545, 34.969162>,  <29.333256, 34.826717, 34.707489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032658, 34.792545, 34.969162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073303, -0.996253, -0.045888,
		0.655655, 0.013469, 0.754940,
		-0.751494, -0.085427, 0.654186,
		28.807209, 34.766918, 35.165417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686691, 34.468872, 35.302952>,  <29.333256, 34.826717, 34.707489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686691, 34.468872, 35.302952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294416, 34.395367, 35.329727>,  <29.059052, 34.351265, 35.345795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294416, 34.395367, 35.329727>,  <29.686691, 34.468872, 35.302952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294416, 34.395367, 35.329727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165334, -0.961806, -0.218162,
		0.104475, -0.202881, 0.973614,
		-0.980688, -0.183763, 0.066941,
		29.000210, 34.340237, 35.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600513, 33.965618, 35.823536>,  <29.686691, 34.468872, 35.302952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600513, 33.965618, 35.823536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292263, 33.959297, 35.568699>,  <29.107313, 33.955505, 35.415798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292263, 33.959297, 35.568699>,  <29.600513, 33.965618, 35.823536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292263, 33.959297, 35.568699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222354, -0.943538, -0.245551,
		-0.597237, -0.330887, 0.730631,
		-0.770627, -0.015807, -0.637090,
		29.061075, 33.954556, 35.377571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079250, 33.383869, 36.012012>,  <29.600513, 33.965618, 35.823536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079250, 33.383869, 36.012012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114563, 33.471153, 35.623253>,  <29.135750, 33.523521, 35.389996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114563, 33.471153, 35.623253>,  <29.079250, 33.383869, 36.012012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114563, 33.471153, 35.623253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206397, -0.958543, -0.196459,
		-0.974478, -0.183254, -0.129659,
		0.088282, 0.218206, -0.971901,
		29.141048, 33.536613, 35.331684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721371, 32.882122, 35.710583>,  <29.079250, 33.383869, 36.012012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721371, 32.882122, 35.710583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924391, 33.012619, 35.391594>,  <29.046204, 33.090916, 35.200199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924391, 33.012619, 35.391594>,  <28.721371, 32.882122, 35.710583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924391, 33.012619, 35.391594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230711, -0.943208, -0.239022,
		-0.830159, -0.062669, -0.553994,
		0.507552, 0.326238, -0.797471,
		29.076656, 33.110489, 35.152351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448923, 32.542053, 35.105335>,  <28.721371, 32.882122, 35.710583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448923, 32.542053, 35.105335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823105, 32.675606, 35.058945>,  <29.047613, 32.755737, 35.031109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823105, 32.675606, 35.058945>,  <28.448923, 32.542053, 35.105335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823105, 32.675606, 35.058945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313035, -0.934978, -0.166810,
		-0.164130, 0.119738, -0.979145,
		0.935452, 0.333885, -0.115975,
		29.103741, 32.775772, 35.024151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704096, 32.286087, 34.450275>,  <28.448923, 32.542053, 35.105335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704096, 32.286087, 34.450275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022804, 32.363796, 34.679157>,  <29.214029, 32.410423, 34.816486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022804, 32.363796, 34.679157>,  <28.704096, 32.286087, 34.450275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022804, 32.363796, 34.679157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468894, -0.796070, -0.382637,
		0.381176, 0.573175, -0.725379,
		0.796771, 0.194274, 0.572201,
		29.261835, 32.422077, 34.850819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361038, 32.352638, 34.060871>,  <28.704096, 32.286087, 34.450275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361038, 32.352638, 34.060871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430300, 32.231911, 34.435875>,  <29.471857, 32.159473, 34.660877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430300, 32.231911, 34.435875>,  <29.361038, 32.352638, 34.060871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430300, 32.231911, 34.435875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363232, -0.865215, -0.345637,
		0.915467, 0.400381, -0.040184,
		0.173155, -0.301823, 0.937508,
		29.482246, 32.141365, 34.717129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113548, 32.203880, 34.148647>,  <29.361038, 32.352638, 34.060871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113548, 32.203880, 34.148647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895651, 31.971500, 34.390556>,  <29.764912, 31.832073, 34.535702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895651, 31.971500, 34.390556>,  <30.113548, 32.203880, 34.148647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895651, 31.971500, 34.390556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390155, -0.813941, -0.430441,
		0.742315, 0.001476, 0.670049,
		-0.544745, -0.580946, 0.604777,
		29.732227, 31.797216, 34.571991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609167, 31.812378, 34.496990>,  <30.113548, 32.203880, 34.148647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609167, 31.812378, 34.496990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256002, 31.627077, 34.466358>,  <30.044104, 31.515898, 34.447979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256002, 31.627077, 34.466358>,  <30.609167, 31.812378, 34.496990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256002, 31.627077, 34.466358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417036, -0.698742, -0.581240,
		0.215748, -0.545122, 0.810120,
		-0.882912, -0.463251, -0.076583,
		29.991129, 31.488102, 34.443382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681410, 31.034777, 34.712135>,  <30.609167, 31.812378, 34.496990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681410, 31.034777, 34.712135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387987, 31.103123, 34.449017>,  <30.211933, 31.144131, 34.291145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387987, 31.103123, 34.449017>,  <30.681410, 31.034777, 34.712135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387987, 31.103123, 34.449017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382062, -0.696786, -0.607057,
		-0.562068, -0.696631, 0.445852,
		-0.733558, 0.170864, -0.657798,
		30.167919, 31.154383, 34.251678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356211, 30.364494, 34.482716>,  <30.681410, 31.034777, 34.712135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356211, 30.364494, 34.482716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335257, 30.669098, 34.224300>,  <30.322683, 30.851860, 34.069252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335257, 30.669098, 34.224300>,  <30.356211, 30.364494, 34.482716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335257, 30.669098, 34.224300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225835, -0.621130, -0.750464,
		-0.972756, -0.185211, -0.139437,
		-0.052385, 0.761508, -0.646035,
		30.319542, 30.897551, 34.030491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946648, 30.270266, 33.923889>,  <30.356211, 30.364494, 34.482716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946648, 30.270266, 33.923889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253294, 30.512894, 33.839634>,  <30.437283, 30.658470, 33.789082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253294, 30.512894, 33.839634>,  <29.946648, 30.270266, 33.923889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253294, 30.512894, 33.839634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348252, -0.668384, -0.657254,
		-0.539460, 0.430507, -0.723635,
		0.766618, 0.606570, -0.210641,
		30.483280, 30.694864, 33.776440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401091, 30.708899, 34.011814>,  <29.946648, 30.270266, 33.923889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401091, 30.708899, 34.011814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226616, 30.438137, 33.774651>,  <29.121931, 30.275681, 33.632351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226616, 30.438137, 33.774651>,  <29.401091, 30.708899, 34.011814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226616, 30.438137, 33.774651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402406, 0.736071, -0.544307,
		0.804869, 0.001174, -0.593451,
		-0.436183, -0.676904, -0.592913,
		29.095760, 30.235065, 33.596779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659954, 30.656244, 33.358330>,  <29.401091, 30.708899, 34.011814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659954, 30.656244, 33.358330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268385, 30.575327, 33.369545>,  <29.033443, 30.526777, 33.376274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268385, 30.575327, 33.369545>,  <29.659954, 30.656244, 33.358330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268385, 30.575327, 33.369545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203490, 0.954526, -0.217882,
		0.017313, -0.218995, -0.975572,
		-0.978924, -0.202292, 0.028037,
		28.974709, 30.514639, 33.377956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425291, 31.090401, 32.815647>,  <29.659954, 30.656244, 33.358330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425291, 31.090401, 32.815647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138521, 31.016939, 33.084656>,  <28.966459, 30.972862, 33.246059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138521, 31.016939, 33.084656>,  <29.425291, 31.090401, 32.815647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138521, 31.016939, 33.084656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286786, 0.956966, -0.044389,
		-0.635429, -0.224693, -0.738744,
		-0.716927, -0.183655, 0.672523,
		28.923443, 30.961843, 33.286411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981293, 31.216673, 32.198521>,  <29.425291, 31.090401, 32.815647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981293, 31.216673, 32.198521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738503, 31.424490, 31.957970>,  <28.592829, 31.549181, 31.813639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738503, 31.424490, 31.957970>,  <28.981293, 31.216673, 32.198521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738503, 31.424490, 31.957970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341465, -0.512813, -0.787670,
		-0.717624, -0.683446, 0.133858,
		-0.606975, 0.519543, -0.601380,
		28.556410, 31.580353, 31.777555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432476, 30.738329, 31.795452>,  <28.981293, 31.216673, 32.198521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432476, 30.738329, 31.795452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574043, 31.065645, 31.614281>,  <28.658983, 31.262035, 31.505579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574043, 31.065645, 31.614281>,  <28.432476, 30.738329, 31.795452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574043, 31.065645, 31.614281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466318, -0.574171, -0.672960,
		-0.810735, 0.026964, -0.584792,
		0.353916, 0.818291, -0.452927,
		28.680218, 31.311132, 31.478403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191359, 30.597010, 31.181370>,  <28.432476, 30.738329, 31.795452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191359, 30.597010, 31.181370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478188, 30.870190, 31.125679>,  <28.650286, 31.034098, 31.092264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478188, 30.870190, 31.125679>,  <28.191359, 30.597010, 31.181370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478188, 30.870190, 31.125679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477672, -0.626994, -0.615392,
		-0.507576, 0.374778, -0.775827,
		0.717075, 0.682949, -0.139227,
		28.693310, 31.075075, 31.083912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290117, 30.742256, 30.371046>,  <28.191359, 30.597010, 31.181370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290117, 30.742256, 30.371046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616114, 30.849085, 30.576750>,  <28.811710, 30.913181, 30.700172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616114, 30.849085, 30.576750>,  <28.290117, 30.742256, 30.371046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616114, 30.849085, 30.576750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573083, -0.502925, -0.647026,
		0.085833, 0.822034, -0.562933,
		0.814990, 0.267071, 0.514261,
		28.860611, 30.929207, 30.731028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678642, 31.182629, 29.964169>,  <28.290117, 30.742256, 30.371046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678642, 31.182629, 29.964169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938332, 31.004984, 30.211159>,  <29.094145, 30.898397, 30.359352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938332, 31.004984, 30.211159>,  <28.678642, 31.182629, 29.964169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938332, 31.004984, 30.211159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637390, -0.125305, -0.760285,
		0.415024, 0.887166, 0.201721,
		0.649222, -0.444112, 0.617475,
		29.133099, 30.871750, 30.396400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212332, 31.108807, 29.520819>,  <28.678642, 31.182629, 29.964169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212332, 31.108807, 29.520819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378277, 30.945606, 29.846132>,  <29.477844, 30.847687, 30.041321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378277, 30.945606, 29.846132>,  <29.212332, 31.108807, 29.520819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378277, 30.945606, 29.846132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768897, -0.320721, -0.553115,
		0.486507, 0.854796, 0.180654,
		0.414860, -0.407999, 0.813282,
		29.502735, 30.823206, 30.090117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957504, 31.331545, 29.561625>,  <29.212332, 31.108807, 29.520819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957504, 31.331545, 29.561625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900572, 30.972645, 29.728806>,  <29.866413, 30.757305, 29.829115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900572, 30.972645, 29.728806>,  <29.957504, 31.331545, 29.561625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900572, 30.972645, 29.728806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750187, -0.373247, -0.545808,
		0.645725, 0.235857, 0.726230,
		-0.142330, -0.897250, 0.417952,
		29.857872, 30.703470, 29.854191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644590, 31.167000, 29.755236>,  <29.957504, 31.331545, 29.561625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644590, 31.167000, 29.755236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462671, 30.811134, 29.771542>,  <30.353519, 30.597616, 29.781326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462671, 30.811134, 29.771542>,  <30.644590, 31.167000, 29.755236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462671, 30.811134, 29.771542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843020, -0.444812, -0.302423,
		0.287187, -0.103174, 0.952302,
		-0.454797, -0.889661, 0.040767,
		30.326233, 30.544235, 29.783772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024090, 30.792465, 30.289370>,  <30.644590, 31.167000, 29.755236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024090, 30.792465, 30.289370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853422, 30.552505, 30.018644>,  <30.751022, 30.408529, 29.856209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853422, 30.552505, 30.018644>,  <31.024090, 30.792465, 30.289370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853422, 30.552505, 30.018644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901297, -0.344048, -0.263237,
		-0.074941, -0.722325, 0.687482,
		-0.426669, -0.599898, -0.676813,
		30.725422, 30.372536, 29.815601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414740, 30.202646, 30.261024>,  <31.024090, 30.792465, 30.289370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414740, 30.202646, 30.261024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190884, 30.113831, 29.941650>,  <31.056570, 30.060541, 29.750025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190884, 30.113831, 29.941650>,  <31.414740, 30.202646, 30.261024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190884, 30.113831, 29.941650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783293, -0.456370, -0.422112,
		-0.270656, -0.861641, 0.429326,
		-0.559640, -0.222041, -0.798437,
		31.022991, 30.047218, 29.702120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352837, 29.472185, 30.129448>,  <31.414740, 30.202646, 30.261024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352837, 29.472185, 30.129448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316475, 29.639629, 29.768005>,  <31.294659, 29.740095, 29.551140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316475, 29.639629, 29.768005>,  <31.352837, 29.472185, 30.129448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316475, 29.639629, 29.768005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723716, -0.595524, -0.348692,
		-0.684085, -0.685651, -0.248819,
		-0.090904, 0.418609, -0.903606,
		31.289204, 29.765211, 29.496923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569008, 28.933352, 29.714582>,  <31.352837, 29.472185, 30.129448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569008, 28.933352, 29.714582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543587, 29.245129, 29.465284>,  <31.528334, 29.432194, 29.315706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543587, 29.245129, 29.465284>,  <31.569008, 28.933352, 29.714582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543587, 29.245129, 29.465284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640185, -0.447244, -0.624609,
		-0.765588, -0.438686, -0.470564,
		-0.063550, 0.779441, -0.623245,
		31.524521, 29.478960, 29.278311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433662, 28.692915, 28.988178>,  <31.569008, 28.933352, 29.714582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433662, 28.692915, 28.988178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606848, 29.050533, 28.942183>,  <31.710760, 29.265104, 28.914585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606848, 29.050533, 28.942183>,  <31.433662, 28.692915, 28.988178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606848, 29.050533, 28.942183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525768, -0.354094, -0.773425,
		-0.732194, 0.274408, -0.623371,
		0.432966, 0.894046, -0.114990,
		31.736738, 29.318747, 28.907686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656439, 28.814705, 28.246231>,  <31.433662, 28.692915, 28.988178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656439, 28.814705, 28.246231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853724, 29.129477, 28.394547>,  <31.972094, 29.318340, 28.483536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853724, 29.129477, 28.394547>,  <31.656439, 28.814705, 28.246231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853724, 29.129477, 28.394547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575773, 0.024208, -0.817251,
		-0.652095, 0.616568, -0.441153,
		0.493212, 0.786929, 0.370789,
		32.001686, 29.365555, 28.505783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731997, 29.288473, 27.708876>,  <31.656439, 28.814705, 28.246231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731997, 29.288473, 27.708876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035400, 29.357010, 27.960369>,  <32.217442, 29.398132, 28.111265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035400, 29.357010, 27.960369>,  <31.731997, 29.288473, 27.708876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035400, 29.357010, 27.960369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643100, -0.040933, -0.764688,
		-0.105289, 0.984361, -0.141239,
		0.758510, 0.171344, 0.628732,
		32.262955, 29.408413, 28.148989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051003, 29.897781, 27.599358>,  <31.731997, 29.288473, 27.708876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051003, 29.897781, 27.599358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321503, 29.661892, 27.775949>,  <32.483803, 29.520357, 27.881905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321503, 29.661892, 27.775949>,  <32.051003, 29.897781, 27.599358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321503, 29.661892, 27.775949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588152, 0.071364, -0.805596,
		0.443573, 0.804445, 0.395108,
		0.676254, -0.589724, 0.441481,
		32.524380, 29.484974, 27.908394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521862, 30.213160, 27.375307>,  <32.051003, 29.897781, 27.599358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521862, 30.213160, 27.375307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710758, 29.883984, 27.501646>,  <32.824097, 29.686478, 27.577450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710758, 29.883984, 27.501646>,  <32.521862, 30.213160, 27.375307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710758, 29.883984, 27.501646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699047, 0.131371, -0.702905,
		0.536954, 0.552735, 0.637311,
		0.472244, -0.822938, 0.315847,
		32.852432, 29.637102, 27.596399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295631, 30.427139, 27.479498>,  <32.521862, 30.213160, 27.375307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295631, 30.427139, 27.479498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268318, 30.030804, 27.432890>,  <33.251930, 29.793003, 27.404924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268318, 30.030804, 27.432890>,  <33.295631, 30.427139, 27.479498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268318, 30.030804, 27.432890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907539, -0.013179, -0.419761,
		0.414379, -0.134409, 0.900124,
		-0.068282, -0.990838, -0.116520,
		33.247833, 29.733553, 27.397934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955128, 30.156969, 27.769983>,  <33.295631, 30.427139, 27.479498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955128, 30.156969, 27.769983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780926, 29.873840, 27.547516>,  <33.676403, 29.703964, 27.414036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780926, 29.873840, 27.547516>,  <33.955128, 30.156969, 27.769983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780926, 29.873840, 27.547516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853957, -0.129414, -0.503993,
		0.284761, -0.694436, 0.660810,
		-0.435509, -0.707821, -0.556167,
		33.650272, 29.661493, 27.380665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449467, 29.687046, 27.591116>,  <33.955128, 30.156969, 27.769983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449467, 29.687046, 27.591116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185047, 29.604343, 27.302597>,  <34.026394, 29.554722, 27.129486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185047, 29.604343, 27.302597>,  <34.449467, 29.687046, 27.591116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185047, 29.604343, 27.302597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735123, 0.014178, -0.677785,
		0.150363, -0.978290, 0.142620,
		-0.661048, -0.206757, -0.721295,
		33.986732, 29.542316, 27.086208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743553, 29.219860, 27.236826>,  <34.449467, 29.687046, 27.591116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743553, 29.219860, 27.236826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484772, 29.358259, 26.965023>,  <34.329502, 29.441299, 26.801941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484772, 29.358259, 26.965023>,  <34.743553, 29.219860, 27.236826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484772, 29.358259, 26.965023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706257, -0.064073, -0.705050,
		-0.287484, -0.936045, -0.202910,
		-0.646958, 0.345998, -0.679508,
		34.290684, 29.462059, 26.761171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741787, 28.731682, 26.734531>,  <34.743553, 29.219860, 27.236826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741787, 28.731682, 26.734531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596317, 29.044653, 26.532324>,  <34.509037, 29.232435, 26.410999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596317, 29.044653, 26.532324>,  <34.741787, 28.731682, 26.734531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596317, 29.044653, 26.532324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654731, -0.171328, -0.736189,
		-0.662624, -0.598710, -0.449972,
		-0.363672, 0.782427, -0.505520,
		34.487217, 29.279381, 26.380669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482258, 28.499681, 26.070217>,  <34.741787, 28.731682, 26.734531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482258, 28.499681, 26.070217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538342, 28.891890, 26.015192>,  <34.571991, 29.127214, 25.982176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538342, 28.891890, 26.015192>,  <34.482258, 28.499681, 26.070217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538342, 28.891890, 26.015192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516451, -0.190964, -0.834753,
		-0.844760, 0.045996, -0.533165,
		0.140210, 0.980519, -0.137564,
		34.580406, 29.186045, 25.973923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295101, 28.582415, 25.389263>,  <34.482258, 28.499681, 26.070217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295101, 28.582415, 25.389263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521240, 28.898260, 25.484667>,  <34.656925, 29.087769, 25.541908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521240, 28.898260, 25.484667>,  <34.295101, 28.582415, 25.389263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521240, 28.898260, 25.484667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563607, -0.158664, -0.810662,
		-0.602269, 0.592733, -0.534734,
		0.565349, 0.789616, 0.238510,
		34.690845, 29.135145, 25.556219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279064, 28.992167, 24.816473>,  <34.295101, 28.582415, 25.389263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279064, 28.992167, 24.816473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599056, 29.119648, 25.019829>,  <34.791050, 29.196136, 25.141842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599056, 29.119648, 25.019829>,  <34.279064, 28.992167, 24.816473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599056, 29.119648, 25.019829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521422, 0.049995, -0.851833,
		-0.296901, 0.946534, -0.126185,
		0.799980, 0.318706, 0.508387,
		34.839050, 29.215260, 25.172344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530586, 29.528412, 24.472834>,  <34.279064, 28.992167, 24.816473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530586, 29.528412, 24.472834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834568, 29.401651, 24.699827>,  <35.016956, 29.325594, 24.836023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834568, 29.401651, 24.699827>,  <34.530586, 29.528412, 24.472834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834568, 29.401651, 24.699827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630507, 0.147348, -0.762070,
		0.157884, 0.936943, 0.311787,
		0.759957, -0.316903, 0.567484,
		35.062553, 29.306581, 24.870073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025814, 29.950680, 24.226370>,  <34.530586, 29.528412, 24.472834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025814, 29.950680, 24.226370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227425, 29.676777, 24.436920>,  <35.348389, 29.512436, 24.563250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227425, 29.676777, 24.436920>,  <35.025814, 29.950680, 24.226370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227425, 29.676777, 24.436920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828869, 0.212185, -0.517642,
		0.242768, 0.697200, 0.674519,
		0.504023, -0.684755, 0.526376,
		35.378632, 29.471350, 24.594833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714024, 30.354658, 24.298565>,  <35.025814, 29.950680, 24.226370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714024, 30.354658, 24.298565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771667, 29.966349, 24.375330>,  <35.806255, 29.733362, 24.421389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771667, 29.966349, 24.375330>,  <35.714024, 30.354658, 24.298565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771667, 29.966349, 24.375330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899852, 0.047870, -0.433562,
		0.411703, 0.235174, 0.880451,
		0.144109, -0.970774, 0.191914,
		35.814899, 29.675116, 24.432903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436100, 30.345558, 24.501648>,  <35.714024, 30.354658, 24.298565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436100, 30.345558, 24.501648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302059, 29.984005, 24.395288>,  <36.221634, 29.767073, 24.331472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302059, 29.984005, 24.395288>,  <36.436100, 30.345558, 24.501648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302059, 29.984005, 24.395288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847188, -0.165576, -0.504834,
		0.412285, -0.394435, 0.821244,
		-0.335102, -0.903884, -0.265896,
		36.201527, 29.712839, 24.315519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956581, 29.824238, 24.747812>,  <36.436100, 30.345558, 24.501648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956581, 29.824238, 24.747812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745472, 29.675140, 24.442522>,  <36.618805, 29.585682, 24.259348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745472, 29.675140, 24.442522>,  <36.956581, 29.824238, 24.747812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745472, 29.675140, 24.442522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840040, -0.096155, -0.533935,
		0.125632, -0.922940, 0.363866,
		-0.527778, -0.372741, -0.763227,
		36.587139, 29.563318, 24.213554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273426, 29.198395, 24.439426>,  <36.956581, 29.824238, 24.747812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273426, 29.198395, 24.439426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050213, 29.318243, 24.129890>,  <36.916286, 29.390152, 23.944168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050213, 29.318243, 24.129890>,  <37.273426, 29.198395, 24.439426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050213, 29.318243, 24.129890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777713, -0.136410, -0.613640,
		-0.289418, -0.944256, -0.156897,
		-0.558031, 0.299620, -0.773840,
		36.882805, 29.408129, 23.897738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263634, 28.672464, 23.992611>,  <37.273426, 29.198395, 24.439426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263634, 28.672464, 23.992611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176247, 28.982109, 23.754950>,  <37.123814, 29.167896, 23.612352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176247, 28.982109, 23.754950>,  <37.263634, 28.672464, 23.992611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176247, 28.982109, 23.754950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878343, -0.109297, -0.465369,
		-0.425187, -0.623543, -0.656057,
		-0.218472, 0.774112, -0.594156,
		37.110706, 29.214342, 23.576702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351273, 28.420610, 23.220676>,  <37.263634, 28.672464, 23.992611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351273, 28.420610, 23.220676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350719, 28.820568, 23.214943>,  <37.350388, 29.060543, 23.211504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350719, 28.820568, 23.214943>,  <37.351273, 28.420610, 23.220676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350719, 28.820568, 23.214943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755079, -0.008350, -0.655581,
		-0.655632, -0.011729, -0.754989,
		-0.001385, 0.999896, -0.014331,
		37.350304, 29.120537, 23.210644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404423, 28.636496, 22.409998>,  <37.351273, 28.420610, 23.220676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404423, 28.636496, 22.409998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493744, 28.948767, 22.643469>,  <37.547337, 29.136129, 22.783550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493744, 28.948767, 22.643469>,  <37.404423, 28.636496, 22.409998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493744, 28.948767, 22.643469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705387, 0.283838, -0.649511,
		-0.672728, 0.556757, -0.487298,
		0.223306, 0.780678, 0.583675,
		37.560734, 29.182970, 22.818571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366203, 29.251829, 22.030527>,  <37.404423, 28.636496, 22.409998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366203, 29.251829, 22.030527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606636, 29.372549, 22.326530>,  <37.750896, 29.444981, 22.504133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606636, 29.372549, 22.326530>,  <37.366203, 29.251829, 22.030527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606636, 29.372549, 22.326530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706399, 0.232407, -0.668571,
		-0.373758, 0.924610, -0.073495,
		0.601086, 0.301801, 0.740008,
		37.786961, 29.463089, 22.548532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618805, 29.942547, 21.878786>,  <37.366203, 29.251829, 22.030527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618805, 29.942547, 21.878786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878536, 29.807062, 22.151152>,  <38.034374, 29.725771, 22.314571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878536, 29.807062, 22.151152>,  <37.618805, 29.942547, 21.878786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878536, 29.807062, 22.151152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728601, 0.533680, -0.429331,
		-0.217970, 0.774893, 0.593321,
		0.649330, -0.338713, 0.680914,
		38.073334, 29.705448, 22.355427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983761, 30.534523, 22.151459>,  <37.618805, 29.942547, 21.878786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983761, 30.534523, 22.151459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213017, 30.216501, 22.230860>,  <38.350571, 30.025688, 22.278500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213017, 30.216501, 22.230860>,  <37.983761, 30.534523, 22.151459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213017, 30.216501, 22.230860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813686, 0.523440, -0.252833,
		0.097112, 0.306427, 0.946927,
		0.573135, -0.795055, 0.198503,
		38.384956, 29.977985, 22.290411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562687, 30.825588, 22.325224>,  <37.983761, 30.534523, 22.151459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562687, 30.825588, 22.325224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688046, 30.448027, 22.283598>,  <38.763260, 30.221489, 22.258621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688046, 30.448027, 22.283598>,  <38.562687, 30.825588, 22.325224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688046, 30.448027, 22.283598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879172, 0.329816, -0.343915,
		0.358946, 0.016289, 0.933216,
		0.313392, -0.943905, -0.104066,
		38.782063, 30.164856, 22.252378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208916, 30.845787, 22.529379>,  <38.562687, 30.825588, 22.325224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208916, 30.845787, 22.529379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202564, 30.511553, 22.309727>,  <39.198753, 30.311012, 22.177935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202564, 30.511553, 22.309727>,  <39.208916, 30.845787, 22.529379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202564, 30.511553, 22.309727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838887, 0.287711, -0.462051,
		0.544074, -0.467996, 0.696393,
		-0.015878, -0.835585, -0.549132,
		39.197800, 30.260878, 22.144987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801586, 30.571228, 22.709957>,  <39.208916, 30.845787, 22.529379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801586, 30.571228, 22.709957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706421, 30.399794, 22.361311>,  <39.649323, 30.296934, 22.152122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706421, 30.399794, 22.361311>,  <39.801586, 30.571228, 22.709957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706421, 30.399794, 22.361311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952871, 0.070936, -0.294968,
		0.188248, -0.900713, 0.391509,
		-0.237910, -0.428585, -0.871616,
		39.635048, 30.271217, 22.099827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384174, 30.115250, 22.612495>,  <39.801586, 30.571228, 22.709957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384174, 30.115250, 22.612495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212124, 30.182619, 22.257727>,  <40.108894, 30.223040, 22.044867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212124, 30.182619, 22.257727>,  <40.384174, 30.115250, 22.612495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212124, 30.182619, 22.257727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886423, 0.264903, -0.379579,
		0.171018, -0.949453, -0.263235,
		-0.430124, 0.168422, -0.886920,
		40.083088, 30.233147, 21.991652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689537, 29.718040, 22.105566>,  <40.384174, 30.115250, 22.612495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689537, 29.718040, 22.105566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546280, 30.009407, 21.871937>,  <40.460323, 30.184227, 21.731760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546280, 30.009407, 21.871937>,  <40.689537, 29.718040, 22.105566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546280, 30.009407, 21.871937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928784, 0.214075, -0.302541,
		-0.095340, -0.650833, -0.753211,
		-0.358147, 0.728415, -0.584073,
		40.438835, 30.227932, 21.696714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289249, 29.805779, 21.713770>,  <40.689537, 29.718040, 22.105566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289249, 29.805779, 21.713770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060097, 30.108145, 21.587029>,  <40.922604, 30.289564, 21.510983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060097, 30.108145, 21.587029>,  <41.289249, 29.805779, 21.713770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060097, 30.108145, 21.587029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768363, 0.360709, -0.528685,
		-0.285349, -0.546334, -0.787461,
		-0.572883, 0.755915, -0.316855,
		40.888233, 30.334919, 21.491972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150799, 29.717505, 20.974018>,  <41.289249, 29.805779, 21.713770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150799, 29.717505, 20.974018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130405, 30.097061, 21.098600>,  <41.118168, 30.324795, 21.173349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130405, 30.097061, 21.098600>,  <41.150799, 29.717505, 20.974018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130405, 30.097061, 21.098600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741620, 0.244845, -0.624541,
		-0.668880, 0.199140, -0.716200,
		-0.050987, 0.948891, 0.311458,
		41.115108, 30.381729, 21.192038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836147, 30.191704, 20.420055>,  <41.150799, 29.717505, 20.974018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836147, 30.191704, 20.420055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075809, 30.379379, 20.679554>,  <41.219608, 30.491983, 20.835253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075809, 30.379379, 20.679554>,  <40.836147, 30.191704, 20.420055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075809, 30.379379, 20.679554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630929, 0.222137, -0.743360,
		-0.492885, 0.854704, -0.162928,
		0.599160, 0.469187, 0.648745,
		41.255558, 30.520136, 20.874178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064571, 30.841320, 20.178158>,  <40.836147, 30.191704, 20.420055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064571, 30.841320, 20.178158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370968, 30.755838, 20.420675>,  <41.554806, 30.704550, 20.566187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370968, 30.755838, 20.420675>,  <41.064571, 30.841320, 20.178158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370968, 30.755838, 20.420675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639483, 0.156802, -0.752646,
		0.065776, 0.964232, 0.256769,
		0.765987, -0.213705, 0.606296,
		41.600765, 30.691727, 20.602564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531193, 31.437223, 20.210722>,  <41.064571, 30.841320, 20.178158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531193, 31.437223, 20.210722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708355, 31.080944, 20.251684>,  <41.814651, 30.867176, 20.276262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708355, 31.080944, 20.251684>,  <41.531193, 31.437223, 20.210722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708355, 31.080944, 20.251684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569272, 0.191140, -0.799622,
		0.692650, 0.412454, 0.591708,
		0.442906, -0.890700, 0.102406,
		41.841228, 30.813734, 20.282406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433132, 32.191319, 20.309711>,  <41.531193, 31.437223, 20.210722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433132, 32.191319, 20.309711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525139, 32.528114, 20.504911>,  <41.580341, 32.730194, 20.622030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525139, 32.528114, 20.504911>,  <41.433132, 32.191319, 20.309711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525139, 32.528114, 20.504911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738375, 0.175661, -0.651111,
		-0.633953, 0.510090, -0.581301,
		0.230014, 0.841992, 0.487999,
		41.594143, 32.780712, 20.651312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642826, 32.756916, 19.758926>,  <41.433132, 32.191319, 20.309711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642826, 32.756916, 19.758926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827492, 32.849693, 20.101404>,  <41.938290, 32.905357, 20.306890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827492, 32.849693, 20.101404>,  <41.642826, 32.756916, 19.758926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827492, 32.849693, 20.101404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852499, 0.150773, -0.500513,
		-0.245181, 0.960974, -0.128123,
		0.461662, 0.231941, 0.856196,
		41.965992, 32.919277, 20.358263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284222, 32.453686, 20.051998>,  <41.642826, 32.756916, 19.758926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284222, 32.453686, 20.051998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068283, 32.790375, 20.055462>,  <41.938721, 32.992390, 20.057539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068283, 32.790375, 20.055462>,  <42.284222, 32.453686, 20.051998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068283, 32.790375, 20.055462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684942, 0.433266, 0.585777,
		0.489311, 0.322157, -0.810426,
		-0.539843, 0.841722, 0.008657,
		41.906330, 33.042892, 20.058060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796417, 32.391975, 20.568966>,  <42.284222, 32.453686, 20.051998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796417, 32.391975, 20.568966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891117, 32.779915, 20.592110>,  <42.947937, 33.012676, 20.605997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891117, 32.779915, 20.592110>,  <42.796417, 32.391975, 20.568966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891117, 32.779915, 20.592110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865972, 0.183645, 0.465153,
		0.440501, -0.160231, 0.883337,
		0.236752, 0.969846, 0.057860,
		42.962143, 33.070869, 20.609468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709980, 32.736370, 21.310850>,  <42.796417, 32.391975, 20.568966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709980, 32.736370, 21.310850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623108, 32.946751, 20.981922>,  <42.570984, 33.072979, 20.784565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623108, 32.946751, 20.981922>,  <42.709980, 32.736370, 21.310850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623108, 32.946751, 20.981922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888360, 0.242630, 0.389804,
		0.404537, 0.815173, 0.414539,
		-0.217178, 0.525950, -0.822320,
		42.557953, 33.104534, 20.735226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396767, 33.417812, 21.483345>,  <42.709980, 32.736370, 21.310850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396767, 33.417812, 21.483345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259930, 33.283237, 21.132397>,  <42.177826, 33.202492, 20.921827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259930, 33.283237, 21.132397>,  <42.396767, 33.417812, 21.483345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259930, 33.283237, 21.132397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933141, 0.011796, 0.359317,
		-0.110539, 0.941631, -0.317981,
		-0.342095, -0.336440, -0.877370,
		42.157303, 33.182304, 20.869186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928032, 33.969246, 21.199812>,  <42.396767, 33.417812, 21.483345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928032, 33.969246, 21.199812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819996, 33.623169, 21.030815>,  <41.755177, 33.415524, 20.929417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819996, 33.623169, 21.030815>,  <41.928032, 33.969246, 21.199812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819996, 33.623169, 21.030815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952595, 0.176285, 0.247966,
		-0.140058, 0.469436, -0.871787,
		-0.270087, -0.865190, -0.422492,
		41.738968, 33.363613, 20.904068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221348, 34.021282, 20.878513>,  <41.928032, 33.969246, 21.199812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221348, 34.021282, 20.878513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259121, 33.628586, 20.944571>,  <41.281784, 33.392967, 20.984205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259121, 33.628586, 20.944571>,  <41.221348, 34.021282, 20.878513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259121, 33.628586, 20.944571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938298, -0.032336, 0.344313,
		-0.332685, -0.187469, -0.924216,
		0.094433, -0.981738, 0.165145,
		41.287453, 33.334064, 20.994114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636814, 33.799526, 20.556593>,  <41.221348, 34.021282, 20.878513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636814, 33.799526, 20.556593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763233, 33.532757, 20.826504>,  <40.839085, 33.372696, 20.988451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763233, 33.532757, 20.826504>,  <40.636814, 33.799526, 20.556593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763233, 33.532757, 20.826504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890306, 0.037272, 0.453834,
		-0.327823, -0.744192, -0.581988,
		0.316048, -0.666925, 0.674778,
		40.858047, 33.332680, 21.028936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078426, 33.293865, 20.696831>,  <40.636814, 33.799526, 20.556593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078426, 33.293865, 20.696831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300976, 33.238365, 21.024538>,  <40.434505, 33.205067, 21.221163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300976, 33.238365, 21.024538>,  <40.078426, 33.293865, 20.696831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300976, 33.238365, 21.024538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816498, 0.091698, 0.570020,
		-0.154217, -0.986073, -0.062273,
		0.556370, -0.138752, 0.819267,
		40.467888, 33.196739, 21.270319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558651, 33.006462, 21.161785>,  <40.078426, 33.293865, 20.696831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558651, 33.006462, 21.161785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877995, 33.113644, 21.377501>,  <40.069599, 33.177952, 21.506929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877995, 33.113644, 21.377501>,  <39.558651, 33.006462, 21.161785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877995, 33.113644, 21.377501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601306, 0.306286, 0.737984,
		0.032567, -0.913450, 0.405646,
		0.798355, 0.267952, 0.539288,
		40.117500, 33.194031, 21.539288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539452, 32.608318, 21.737221>,  <39.558651, 33.006462, 21.161785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539452, 32.608318, 21.737221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777355, 32.911343, 21.844826>,  <39.920097, 33.093159, 21.909389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777355, 32.911343, 21.844826>,  <39.539452, 32.608318, 21.737221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777355, 32.911343, 21.844826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615777, 0.214183, 0.758251,
		0.516803, -0.616626, 0.593874,
		0.594755, 0.757560, 0.269014,
		39.955780, 33.138611, 21.925529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598427, 32.589790, 22.490988>,  <39.539452, 32.608318, 21.737221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598427, 32.589790, 22.490988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664776, 32.962658, 22.362272>,  <39.704586, 33.186378, 22.285044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664776, 32.962658, 22.362272>,  <39.598427, 32.589790, 22.490988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664776, 32.962658, 22.362272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632763, 0.350884, 0.690284,
		0.756371, 0.089116, 0.648044,
		0.165873, 0.932169, -0.321788,
		39.714539, 33.242310, 22.265736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732010, 32.898071, 23.048727>,  <39.598427, 32.589790, 22.490988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732010, 32.898071, 23.048727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605072, 33.196362, 22.814400>,  <39.528912, 33.375336, 22.673803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605072, 33.196362, 22.814400>,  <39.732010, 32.898071, 23.048727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605072, 33.196362, 22.814400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668137, 0.262565, 0.696171,
		0.672970, 0.612330, 0.414926,
		-0.317341, 0.745729, -0.585818,
		39.509869, 33.420082, 22.638655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647137, 33.465561, 23.449762>,  <39.732010, 32.898071, 23.048727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647137, 33.465561, 23.449762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434494, 33.566547, 23.126368>,  <39.306908, 33.627140, 22.932331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434494, 33.566547, 23.126368>,  <39.647137, 33.465561, 23.449762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434494, 33.566547, 23.126368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787919, 0.202820, 0.581419,
		0.310766, 0.946110, 0.091102,
		-0.531609, 0.252467, -0.808488,
		39.275013, 33.642288, 22.883821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266460, 34.023148, 23.725384>,  <39.647137, 33.465561, 23.449762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266460, 34.023148, 23.725384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066299, 33.918144, 23.395369>,  <38.946201, 33.855141, 23.197359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066299, 33.918144, 23.395369>,  <39.266460, 34.023148, 23.725384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066299, 33.918144, 23.395369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865188, 0.187219, 0.465187,
		0.032347, 0.946593, -0.320804,
		-0.500403, -0.262508, -0.825037,
		38.916180, 33.839394, 23.147858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820694, 34.515331, 23.694670>,  <39.266460, 34.023148, 23.725384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820694, 34.515331, 23.694670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663765, 34.233620, 23.457998>,  <38.569607, 34.064594, 23.315996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663765, 34.233620, 23.457998>,  <38.820694, 34.515331, 23.694670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663765, 34.233620, 23.457998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890429, 0.129447, 0.436326,
		-0.230702, 0.698026, -0.677891,
		-0.392318, -0.704275, -0.591678,
		38.546070, 34.022339, 23.280495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241741, 34.842861, 23.447952>,  <38.820694, 34.515331, 23.694670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241741, 34.842861, 23.447952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175682, 34.451092, 23.401560>,  <38.136047, 34.216030, 23.373724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175682, 34.451092, 23.401560>,  <38.241741, 34.842861, 23.447952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175682, 34.451092, 23.401560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918406, 0.109853, 0.380082,
		-0.359521, 0.169291, -0.917652,
		-0.165151, -0.979425, -0.115983,
		38.126137, 34.157265, 23.366764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598774, 34.748009, 23.083380>,  <38.241741, 34.842861, 23.447952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598774, 34.748009, 23.083380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649727, 34.392796, 23.260096>,  <37.680298, 34.179668, 23.366125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649727, 34.392796, 23.260096>,  <37.598774, 34.748009, 23.083380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649727, 34.392796, 23.260096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875088, 0.109050, 0.471517,
		-0.466898, -0.446669, -0.763212,
		0.127384, -0.888029, 0.441790,
		37.687943, 34.126389, 23.392633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975327, 34.326359, 22.999865>,  <37.598774, 34.748009, 23.083380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975327, 34.326359, 22.999865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157013, 34.172966, 23.321518>,  <37.266026, 34.080933, 23.514511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157013, 34.172966, 23.321518>,  <36.975327, 34.326359, 22.999865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157013, 34.172966, 23.321518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885645, -0.096546, 0.454216,
		-0.096546, -0.918490, -0.383477,
		-0.454216, 0.383477, -0.804135,
		37.293278, 34.057922, 23.562757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610252, 33.858334, 23.168327>,  <36.975327, 34.326359, 22.999865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610252, 33.858334, 23.168327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816364, 33.890781, 23.509596>,  <36.940033, 33.910252, 23.714357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816364, 33.890781, 23.509596>,  <36.610252, 33.858334, 23.168327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816364, 33.890781, 23.509596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832747, -0.187863, 0.520806,
		0.202528, -0.978839, -0.029249,
		0.515281, 0.081121, 0.853173,
		36.970947, 33.915119, 23.765549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433273, 33.304436, 23.521797>,  <36.610252, 33.858334, 23.168327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433273, 33.304436, 23.521797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572556, 33.543884, 23.810352>,  <36.656124, 33.687553, 23.983486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572556, 33.543884, 23.810352>,  <36.433273, 33.304436, 23.521797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572556, 33.543884, 23.810352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786605, -0.232005, 0.572212,
		0.509905, -0.766698, 0.390093,
		0.348210, 0.598622, 0.721389,
		36.677017, 33.723473, 24.026770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175514, 32.833382, 24.118879>,  <36.433273, 33.304436, 23.521797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175514, 32.833382, 24.118879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288830, 33.204750, 24.215031>,  <36.356819, 33.427570, 24.272720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288830, 33.204750, 24.215031>,  <36.175514, 32.833382, 24.118879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288830, 33.204750, 24.215031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677111, 0.016127, 0.735704,
		0.679167, -0.371178, 0.633213,
		0.283289, 0.928422, 0.240376,
		36.373817, 33.483276, 24.287144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199810, 32.863441, 24.847048>,  <36.175514, 32.833382, 24.118879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199810, 32.863441, 24.847048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131596, 33.246002, 24.752203>,  <36.090668, 33.475536, 24.695297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131596, 33.246002, 24.752203>,  <36.199810, 32.863441, 24.847048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131596, 33.246002, 24.752203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636903, 0.076621, 0.767127,
		0.751846, 0.281837, 0.596066,
		-0.170534, 0.956398, -0.237110,
		36.080437, 33.532921, 24.681070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243572, 33.293964, 25.436548>,  <36.199810, 32.863441, 24.847048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243572, 33.293964, 25.436548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999393, 33.487862, 25.185989>,  <35.852886, 33.604198, 25.035654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999393, 33.487862, 25.185989>,  <36.243572, 33.293964, 25.436548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999393, 33.487862, 25.185989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733316, -0.047020, 0.678260,
		0.299329, 0.873391, 0.384174,
		-0.610450, 0.484744, -0.626398,
		35.816257, 33.633286, 24.998070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048355, 33.869160, 25.809364>,  <36.243572, 33.293964, 25.436548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048355, 33.869160, 25.809364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765545, 33.835678, 25.528481>,  <35.595856, 33.815590, 25.359949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765545, 33.835678, 25.528481>,  <36.048355, 33.869160, 25.809364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765545, 33.835678, 25.528481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705365, 0.154626, 0.691773,
		0.050673, 0.984420, -0.168370,
		-0.707030, -0.083708, -0.702212,
		35.553436, 33.810566, 25.317818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522869, 34.375412, 25.865616>,  <36.048355, 33.869160, 25.809364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522869, 34.375412, 25.865616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318264, 34.114323, 25.642078>,  <35.195499, 33.957668, 25.507956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318264, 34.114323, 25.642078>,  <35.522869, 34.375412, 25.865616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318264, 34.114323, 25.642078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770150, 0.059824, 0.635051,
		-0.381080, 0.755231, -0.533296,
		-0.511514, -0.652723, -0.558844,
		35.164810, 33.918507, 25.474424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804890, 34.647564, 25.804146>,  <35.522869, 34.375412, 25.865616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804890, 34.647564, 25.804146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805294, 34.259014, 25.709120>,  <34.805534, 34.025887, 25.652103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805294, 34.259014, 25.709120>,  <34.804890, 34.647564, 25.804146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805294, 34.259014, 25.709120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769534, -0.152464, 0.620139,
		-0.638605, 0.182190, -0.747657,
		0.001008, -0.971371, -0.237565,
		34.805595, 33.967602, 25.637850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279400, 34.530872, 25.389954>,  <34.804890, 34.647564, 25.804146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279400, 34.530872, 25.389954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362431, 34.168644, 25.537931>,  <34.412251, 33.951309, 25.626719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362431, 34.168644, 25.537931>,  <34.279400, 34.530872, 25.389954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362431, 34.168644, 25.537931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874995, -0.002794, 0.484123,
		-0.437373, -0.424191, -0.792948,
		0.207576, -0.905568, 0.369943,
		34.424702, 33.896973, 25.648914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646282, 34.103474, 25.297779>,  <34.279400, 34.530872, 25.389954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646282, 34.103474, 25.297779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827892, 33.900604, 25.590801>,  <33.936859, 33.778881, 25.766615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827892, 33.900604, 25.590801>,  <33.646282, 34.103474, 25.297779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827892, 33.900604, 25.590801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884707, -0.159163, 0.438134,
		-0.105615, -0.847019, -0.520965,
		0.454026, -0.507175, 0.732553,
		33.964100, 33.748451, 25.810568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245338, 33.497971, 25.373549>,  <33.646282, 34.103474, 25.297779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245338, 33.497971, 25.373549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432144, 33.537384, 25.725046>,  <33.544228, 33.561031, 25.935944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432144, 33.537384, 25.725046>,  <33.245338, 33.497971, 25.373549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432144, 33.537384, 25.725046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866907, -0.144833, 0.476965,
		0.174270, -0.984537, 0.017785,
		0.467014, 0.098539, 0.878743,
		33.572250, 33.566944, 25.988668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810818, 33.053699, 25.837688>,  <33.245338, 33.497971, 25.373549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810818, 33.053699, 25.837688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061245, 33.265457, 26.066698>,  <33.211502, 33.392513, 26.204103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061245, 33.265457, 26.066698>,  <32.810818, 33.053699, 25.837688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061245, 33.265457, 26.066698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721050, 0.113506, 0.683522,
		0.296870, -0.840746, 0.452784,
		0.626063, 0.529397, 0.572524,
		33.249065, 33.424274, 26.238455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005672, 32.672806, 26.438261>,  <32.810818, 33.053699, 25.837688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005672, 32.672806, 26.438261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012241, 33.065437, 26.514393>,  <33.016182, 33.301018, 26.560072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012241, 33.065437, 26.514393>,  <33.005672, 32.672806, 26.438261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012241, 33.065437, 26.514393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710783, -0.122417, 0.692677,
		0.703220, -0.146657, 0.695682,
		0.016423, 0.981583, 0.190328,
		33.017170, 33.359913, 26.571491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593113, 32.694588, 27.040924>,  <33.005672, 32.672806, 26.438261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593113, 32.694588, 27.040924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638241, 33.086781, 26.976515>,  <32.665318, 33.322098, 26.937870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638241, 33.086781, 26.976515>,  <32.593113, 32.694588, 27.040924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638241, 33.086781, 26.976515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692029, 0.193828, 0.695361,
		0.712999, 0.032978, 0.700390,
		0.112823, 0.980481, -0.161021,
		32.672089, 33.380924, 26.928209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766037, 32.990894, 27.727259>,  <32.593113, 32.694588, 27.040924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766037, 32.990894, 27.727259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593105, 33.229019, 27.456348>,  <32.489346, 33.371895, 27.293802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593105, 33.229019, 27.456348>,  <32.766037, 32.990894, 27.727259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593105, 33.229019, 27.456348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812660, 0.068241, 0.578728,
		0.390741, 0.800593, 0.454283,
		-0.432325, 0.595310, -0.677275,
		32.463409, 33.407612, 27.253166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592869, 33.595619, 28.125317>,  <32.766037, 32.990894, 27.727259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592869, 33.595619, 28.125317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384083, 33.647022, 27.788025>,  <32.258812, 33.677864, 27.585649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384083, 33.647022, 27.788025>,  <32.592869, 33.595619, 28.125317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384083, 33.647022, 27.788025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832810, 0.136856, 0.536375,
		0.184331, 0.982219, 0.035591,
		-0.521968, 0.128511, -0.843229,
		32.227493, 33.685577, 27.535057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098412, 34.163826, 28.180208>,  <32.592869, 33.595619, 28.125317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098412, 34.163826, 28.180208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930199, 33.941860, 27.893093>,  <31.829271, 33.808681, 27.720823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930199, 33.941860, 27.893093>,  <32.098412, 34.163826, 28.180208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930199, 33.941860, 27.893093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892213, 0.109357, 0.438175,
		-0.164656, 0.824686, -0.541092,
		-0.420529, -0.554917, -0.717789,
		31.804039, 33.775387, 27.677755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351740, 34.381657, 28.171318>,  <32.098412, 34.163826, 28.180208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351740, 34.381657, 28.171318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345800, 34.028694, 27.983219>,  <31.342237, 33.816917, 27.870359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345800, 34.028694, 27.983219>,  <31.351740, 34.381657, 28.171318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345800, 34.028694, 27.983219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842305, -0.242385, 0.481427,
		-0.538797, 0.403239, -0.739659,
		-0.014848, -0.882410, -0.470247,
		31.341347, 33.763969, 27.842146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719810, 34.308750, 27.964029>,  <31.351740, 34.381657, 28.171318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719810, 34.308750, 27.964029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867622, 33.939621, 28.007576>,  <30.956310, 33.718143, 28.033705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867622, 33.939621, 28.007576>,  <30.719810, 34.308750, 27.964029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867622, 33.939621, 28.007576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806390, -0.260259, 0.531038,
		-0.461718, -0.284024, -0.840325,
		0.369530, -0.922819, 0.108868,
		30.978481, 33.662777, 28.040236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106817, 33.892357, 27.860888>,  <30.719810, 34.308750, 27.964029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106817, 33.892357, 27.860888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377655, 33.652859, 28.032024>,  <30.540157, 33.509159, 28.134706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377655, 33.652859, 28.032024>,  <30.106817, 33.892357, 27.860888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377655, 33.652859, 28.032024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613091, -0.137407, 0.777971,
		-0.407020, -0.789064, -0.460123,
		0.677092, -0.598747, 0.427841,
		30.580784, 33.473236, 28.160378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668280, 33.434277, 28.182158>,  <30.106817, 33.892357, 27.860888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668280, 33.434277, 28.182158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019636, 33.346840, 28.352167>,  <30.230450, 33.294380, 28.454174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019636, 33.346840, 28.352167>,  <29.668280, 33.434277, 28.182158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019636, 33.346840, 28.352167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471346, -0.248969, 0.846078,
		-0.079125, -0.943522, -0.321723,
		0.878391, -0.218589, 0.425026,
		30.283154, 33.281261, 28.479675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725380, 32.741707, 28.410786>,  <29.668280, 33.434277, 28.182158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725380, 32.741707, 28.410786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004227, 32.911270, 28.642071>,  <30.171534, 33.013008, 28.780842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004227, 32.911270, 28.642071>,  <29.725380, 32.741707, 28.410786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004227, 32.911270, 28.642071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525094, -0.247244, 0.814338,
		0.488167, -0.871303, 0.050236,
		0.697115, 0.423912, 0.578212,
		30.213362, 33.038445, 28.815535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750984, 32.274174, 28.902317>,  <29.725380, 32.741707, 28.410786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750984, 32.274174, 28.902317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923138, 32.602173, 29.053251>,  <30.026430, 32.798973, 29.143812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923138, 32.602173, 29.053251>,  <29.750984, 32.274174, 28.902317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923138, 32.602173, 29.053251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432462, -0.179611, 0.883581,
		0.792305, -0.543461, 0.277315,
		0.430383, 0.819994, 0.377333,
		30.052252, 32.848171, 29.166451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060095, 32.116695, 29.574053>,  <29.750984, 32.274174, 28.902317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060095, 32.116695, 29.574053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027390, 32.514866, 29.593784>,  <30.007767, 32.753769, 29.605623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027390, 32.514866, 29.593784>,  <30.060095, 32.116695, 29.574053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027390, 32.514866, 29.593784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467239, -0.082003, 0.880320,
		0.880342, 0.048928, 0.471809,
		-0.081762, 0.995430, 0.049329,
		30.002861, 32.813496, 29.608583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290506, 32.281929, 30.181679>,  <30.060095, 32.116695, 29.574053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290506, 32.281929, 30.181679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074194, 32.601776, 30.077244>,  <29.944407, 32.793686, 30.014582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074194, 32.601776, 30.077244>,  <30.290506, 32.281929, 30.181679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074194, 32.601776, 30.077244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403271, 0.025939, 0.914713,
		0.738194, 0.599948, 0.308435,
		-0.540780, 0.799619, -0.261090,
		29.911961, 32.841663, 29.998917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416172, 32.686115, 30.770096>,  <30.290506, 32.281929, 30.181679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416172, 32.686115, 30.770096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079662, 32.784698, 30.577633>,  <29.877756, 32.843849, 30.462154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079662, 32.784698, 30.577633>,  <30.416172, 32.686115, 30.770096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079662, 32.784698, 30.577633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536371, -0.269339, 0.799852,
		0.067538, 0.930975, 0.358783,
		-0.841276, 0.246461, -0.481157,
		29.827280, 32.858635, 30.433287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736948, 33.378479, 30.848196>,  <30.416172, 32.686115, 30.770096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736948, 33.378479, 30.848196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967752, 33.351067, 31.173738>,  <31.106236, 33.334618, 31.369064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967752, 33.351067, 31.173738>,  <30.736948, 33.378479, 30.848196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967752, 33.351067, 31.173738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715681, 0.522548, -0.463404,
		-0.393521, 0.849851, 0.350563,
		0.577011, -0.068532, 0.813856,
		31.140856, 33.330505, 31.417896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027182, 34.024281, 30.940331>,  <30.736948, 33.378479, 30.848196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027182, 34.024281, 30.940331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260689, 33.792824, 31.168152>,  <31.400793, 33.653950, 31.304844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260689, 33.792824, 31.168152>,  <31.027182, 34.024281, 30.940331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260689, 33.792824, 31.168152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778321, 0.598539, -0.189652,
		-0.231158, 0.554006, 0.799777,
		0.583766, -0.578643, 0.569552,
		31.435818, 33.619232, 31.339018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425755, 34.485588, 31.293188>,  <31.027182, 34.024281, 30.940331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425755, 34.485588, 31.293188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620504, 34.136303, 31.301659>,  <31.737354, 33.926731, 31.306742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620504, 34.136303, 31.301659>,  <31.425755, 34.485588, 31.293188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620504, 34.136303, 31.301659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813414, 0.444429, -0.375288,
		0.318295, 0.199945, 0.926666,
		0.486874, -0.873215, 0.021179,
		31.766567, 33.874340, 31.308012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123199, 34.618225, 31.473433>,  <31.425755, 34.485588, 31.293188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123199, 34.618225, 31.473433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131115, 34.271156, 31.274733>,  <32.135864, 34.062916, 31.155512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131115, 34.271156, 31.274733>,  <32.123199, 34.618225, 31.473433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131115, 34.271156, 31.274733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708408, 0.362778, -0.605435,
		0.705526, -0.339920, 0.621842,
		0.019791, -0.867667, -0.496751,
		32.137051, 34.010857, 31.125708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819302, 34.475922, 31.459606>,  <32.123199, 34.618225, 31.473433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819302, 34.475922, 31.459606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671528, 34.250557, 31.164017>,  <32.582863, 34.115337, 30.986662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671528, 34.250557, 31.164017>,  <32.819302, 34.475922, 31.459606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671528, 34.250557, 31.164017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781472, 0.241924, -0.575130,
		0.502811, -0.789962, 0.350915,
		-0.369436, -0.563412, -0.738976,
		32.560696, 34.081535, 30.942324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418694, 34.184063, 31.132013>,  <32.819302, 34.475922, 31.459606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418694, 34.184063, 31.132013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136959, 34.120930, 30.855173>,  <32.967918, 34.083050, 30.689068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136959, 34.120930, 30.855173>,  <33.418694, 34.184063, 31.132013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136959, 34.120930, 30.855173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659142, 0.216533, -0.720170,
		0.263529, -0.963433, -0.048478,
		-0.704333, -0.157832, -0.692102,
		32.925659, 34.073582, 30.647543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608696, 33.706795, 30.658461>,  <33.418694, 34.184063, 31.132013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608696, 33.706795, 30.658461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340050, 33.935093, 30.469490>,  <33.178864, 34.072071, 30.356108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340050, 33.935093, 30.469490>,  <33.608696, 33.706795, 30.658461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340050, 33.935093, 30.469490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663426, 0.179388, -0.726420,
		-0.329855, -0.801291, -0.499127,
		-0.671611, 0.570747, -0.472426,
		33.138565, 34.106316, 30.327763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675652, 33.610550, 29.965664>,  <33.608696, 33.706795, 30.658461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675652, 33.610550, 29.965664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468323, 33.951942, 29.944057>,  <33.343925, 34.156776, 29.931093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468323, 33.951942, 29.944057>,  <33.675652, 33.610550, 29.965664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468323, 33.951942, 29.944057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516603, 0.262149, -0.815107,
		-0.681517, -0.450390, -0.576787,
		-0.518320, 0.853479, -0.054014,
		33.312828, 34.207985, 29.927853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563362, 33.644493, 29.234285>,  <33.675652, 33.610550, 29.965664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563362, 33.644493, 29.234285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547150, 34.009567, 29.396942>,  <33.537422, 34.228611, 29.494537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547150, 34.009567, 29.396942>,  <33.563362, 33.644493, 29.234285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547150, 34.009567, 29.396942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462850, 0.377830, -0.801882,
		-0.885510, 0.155710, -0.437752,
		-0.040535, 0.912688, 0.406643,
		33.534988, 34.283375, 29.518934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649082, 34.012737, 28.668768>,  <33.563362, 33.644493, 29.234285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649082, 34.012737, 28.668768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720314, 34.277245, 28.960249>,  <33.763054, 34.435951, 29.135138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720314, 34.277245, 28.960249>,  <33.649082, 34.012737, 28.668768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720314, 34.277245, 28.960249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614041, 0.503990, -0.607410,
		-0.768923, 0.555619, -0.316300,
		0.178077, 0.661273, 0.728702,
		33.773739, 34.475628, 29.178860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693886, 34.667171, 28.336706>,  <33.649082, 34.012737, 28.668768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693886, 34.667171, 28.336706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897327, 34.714428, 28.677849>,  <34.019394, 34.742783, 28.882534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897327, 34.714428, 28.677849>,  <33.693886, 34.667171, 28.336706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897327, 34.714428, 28.677849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787877, 0.335613, -0.516347,
		-0.347232, 0.934562, 0.077612,
		0.508606, 0.118143, 0.852856,
		34.049908, 34.749870, 28.933706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890285, 35.354218, 28.310341>,  <33.693886, 34.667171, 28.336706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890285, 35.354218, 28.310341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127186, 35.164928, 28.571199>,  <34.269325, 35.051353, 28.727715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127186, 35.164928, 28.571199>,  <33.890285, 35.354218, 28.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127186, 35.164928, 28.571199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804356, 0.394854, -0.443961,
		-0.047410, 0.787495, 0.614494,
		0.592253, -0.473224, 0.652147,
		34.304863, 35.022961, 28.766844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508492, 35.808918, 28.516727>,  <33.890285, 35.354218, 28.310341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508492, 35.808918, 28.516727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594078, 35.435394, 28.631422>,  <34.645432, 35.211281, 28.700239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594078, 35.435394, 28.631422>,  <34.508492, 35.808918, 28.516727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594078, 35.435394, 28.631422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921322, 0.095371, -0.376922,
		0.324627, 0.344826, 0.880745,
		0.213970, -0.933809, 0.286736,
		34.658268, 35.155251, 28.717443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160648, 35.905750, 28.772655>,  <34.508492, 35.808918, 28.516727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160648, 35.905750, 28.772655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097870, 35.528976, 28.653906>,  <35.060204, 35.302914, 28.582655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097870, 35.528976, 28.653906>,  <35.160648, 35.905750, 28.772655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097870, 35.528976, 28.653906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849744, 0.024396, -0.526630,
		0.503291, -0.334921, 0.796571,
		-0.156947, -0.941930, -0.296875,
		35.050785, 35.246399, 28.564844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785454, 35.713753, 28.812618>,  <35.160648, 35.905750, 28.772655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785454, 35.713753, 28.812618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595490, 35.437302, 28.594700>,  <35.481510, 35.271431, 28.463949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595490, 35.437302, 28.594700>,  <35.785454, 35.713753, 28.812618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595490, 35.437302, 28.594700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781982, -0.047439, -0.621493,
		0.403684, -0.721178, 0.562976,
		-0.474914, -0.691124, -0.544798,
		35.453014, 35.229965, 28.431261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209309, 35.032162, 28.710867>,  <35.785454, 35.713753, 28.812618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209309, 35.032162, 28.710867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971581, 35.014866, 28.389641>,  <35.828945, 35.004490, 28.196905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971581, 35.014866, 28.389641>,  <36.209309, 35.032162, 28.710867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971581, 35.014866, 28.389641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777411, -0.286606, -0.559901,
		-0.205955, -0.957072, 0.203949,
		-0.594319, -0.043237, -0.803067,
		35.793285, 35.001896, 28.148720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394680, 34.365078, 28.420584>,  <36.209309, 35.032162, 28.710867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394680, 34.365078, 28.420584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213257, 34.558025, 28.120823>,  <36.104401, 34.673794, 27.940966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213257, 34.558025, 28.120823>,  <36.394680, 34.365078, 28.420584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213257, 34.558025, 28.120823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687966, -0.345043, -0.638473,
		-0.566556, -0.805149, -0.175355,
		-0.453561, 0.482369, -0.749401,
		36.077187, 34.702736, 27.896002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258900, 33.878117, 27.939779>,  <36.394680, 34.365078, 28.420584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258900, 33.878117, 27.939779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262547, 34.207546, 27.712923>,  <36.264736, 34.405205, 27.576809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262547, 34.207546, 27.712923>,  <36.258900, 33.878117, 27.939779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262547, 34.207546, 27.712923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732410, -0.391643, -0.556949,
		-0.680803, -0.410302, -0.606762,
		0.009117, 0.823571, -0.567141,
		36.265282, 34.454617, 27.542780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288445, 33.616161, 27.226534>,  <36.258900, 33.878117, 27.939779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288445, 33.616161, 27.226534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416313, 33.995094, 27.234221>,  <36.493034, 34.222454, 27.238832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416313, 33.995094, 27.234221>,  <36.288445, 33.616161, 27.226534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416313, 33.995094, 27.234221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864258, -0.283209, -0.415752,
		-0.388414, 0.149512, -0.909275,
		0.319675, 0.947332, 0.019215,
		36.512215, 34.279293, 27.239985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520596, 33.727867, 26.547750>,  <36.288445, 33.616161, 27.226534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520596, 33.727867, 26.547750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680016, 34.000702, 26.792999>,  <36.775665, 34.164402, 26.940149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680016, 34.000702, 26.792999>,  <36.520596, 33.727867, 26.547750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680016, 34.000702, 26.792999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889603, -0.124893, -0.439326,
		-0.223083, 0.720528, -0.656561,
		0.398547, 0.682086, 0.613123,
		36.799580, 34.205326, 26.976936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853649, 34.177391, 26.058603>,  <36.520596, 33.727867, 26.547750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853649, 34.177391, 26.058603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047001, 34.243938, 26.402386>,  <37.163010, 34.283867, 26.608656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047001, 34.243938, 26.402386>,  <36.853649, 34.177391, 26.058603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047001, 34.243938, 26.402386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860952, -0.268058, -0.432327,
		0.158458, 0.948929, -0.272809,
		0.483377, 0.166370, 0.859458,
		37.192013, 34.293850, 26.660223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500641, 34.695885, 25.967222>,  <36.853649, 34.177391, 26.058603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500641, 34.695885, 25.967222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560707, 34.468288, 26.290628>,  <37.596745, 34.331730, 26.484673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560707, 34.468288, 26.290628>,  <37.500641, 34.695885, 25.967222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560707, 34.468288, 26.290628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968956, -0.077766, -0.234686,
		0.196410, 0.818658, 0.539650,
		0.150161, -0.568992, 0.808517,
		37.605755, 34.297592, 26.533184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212360, 34.806343, 26.153006>,  <37.500641, 34.695885, 25.967222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212360, 34.806343, 26.153006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091656, 34.482483, 26.354362>,  <38.019234, 34.288166, 26.475178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091656, 34.482483, 26.354362>,  <38.212360, 34.806343, 26.153006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091656, 34.482483, 26.354362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788437, -0.508785, -0.345695,
		0.536012, 0.292577, 0.791890,
		-0.301759, -0.809652, 0.503393,
		38.001129, 34.239586, 26.505381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857914, 34.489216, 26.361547>,  <38.212360, 34.806343, 26.153006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857914, 34.489216, 26.361547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585663, 34.198082, 26.395010>,  <38.422314, 34.023399, 26.415087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585663, 34.198082, 26.395010>,  <38.857914, 34.489216, 26.361547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585663, 34.198082, 26.395010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668369, -0.663632, -0.335971,
		0.300049, -0.172758, 0.938150,
		-0.680627, -0.727838, 0.083656,
		38.381474, 33.979733, 26.420107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306843, 33.971100, 26.636255>,  <38.857914, 34.489216, 26.361547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306843, 33.971100, 26.636255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985050, 33.781403, 26.493204>,  <38.791973, 33.667583, 26.407373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985050, 33.781403, 26.493204>,  <39.306843, 33.971100, 26.636255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985050, 33.781403, 26.493204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593959, -0.646490, -0.478814,
		-0.004127, -0.597614, 0.801774,
		-0.804485, -0.474245, -0.357626,
		38.743706, 33.639130, 26.385916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442001, 33.242065, 26.653084>,  <39.306843, 33.971100, 26.636255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442001, 33.242065, 26.653084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161373, 33.285469, 26.371368>,  <38.992996, 33.311512, 26.202339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161373, 33.285469, 26.371368>,  <39.442001, 33.242065, 26.653084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161373, 33.285469, 26.371368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585768, -0.475007, -0.656692,
		-0.405798, -0.873266, 0.269692,
		-0.701573, 0.108508, -0.704288,
		38.950901, 33.318020, 26.160082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372601, 32.629662, 26.322384>,  <39.442001, 33.242065, 26.653084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372601, 32.629662, 26.322384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243370, 32.888508, 26.046164>,  <39.165833, 33.043816, 25.880430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243370, 32.888508, 26.046164>,  <39.372601, 32.629662, 26.322384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243370, 32.888508, 26.046164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610845, -0.414736, -0.674435,
		-0.722834, -0.639716, -0.261294,
		-0.323078, 0.647115, -0.690552,
		39.146446, 33.082642, 25.838997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402851, 32.190075, 25.793238>,  <39.372601, 32.629662, 26.322384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402851, 32.190075, 25.793238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380741, 32.545395, 25.610867>,  <39.367474, 32.758587, 25.501444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380741, 32.545395, 25.610867>,  <39.402851, 32.190075, 25.793238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380741, 32.545395, 25.610867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535349, -0.359074, -0.764505,
		-0.842820, -0.286341, -0.455701,
		-0.055279, 0.888299, -0.455927,
		39.364159, 32.811886, 25.474089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158192, 32.089664, 25.065798>,  <39.402851, 32.190075, 25.793238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158192, 32.089664, 25.065798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368172, 32.429173, 25.091137>,  <39.494160, 32.632877, 25.106340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368172, 32.429173, 25.091137>,  <39.158192, 32.089664, 25.065798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368172, 32.429173, 25.091137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651899, -0.353102, -0.671078,
		-0.547224, 0.393580, -0.738675,
		0.524950, 0.848772, 0.063348,
		39.525658, 32.683804, 25.110142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275425, 32.282612, 24.384392>,  <39.158192, 32.089664, 25.065798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275425, 32.282612, 24.384392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551979, 32.485291, 24.590401>,  <39.717911, 32.606895, 24.714006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551979, 32.485291, 24.590401>,  <39.275425, 32.282612, 24.384392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551979, 32.485291, 24.590401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675084, -0.199114, -0.710362,
		-0.257387, 0.838818, -0.479724,
		0.691385, 0.506692, 0.515024,
		39.759396, 32.637299, 24.744907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689232, 32.688263, 23.891125>,  <39.275425, 32.282612, 24.384392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689232, 32.688263, 23.891125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918667, 32.685341, 24.218771>,  <40.056328, 32.683586, 24.415358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918667, 32.685341, 24.218771>,  <39.689232, 32.688263, 23.891125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918667, 32.685341, 24.218771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799262, -0.213996, -0.561593,
		0.179391, 0.976807, -0.116905,
		0.573585, -0.007307, 0.819113,
		40.090744, 32.683147, 24.464504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426559, 33.033195, 23.720308>,  <39.689232, 32.688263, 23.891125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426559, 33.033195, 23.720308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458698, 32.801403, 24.044714>,  <40.477982, 32.662327, 24.239357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458698, 32.801403, 24.044714>,  <40.426559, 33.033195, 23.720308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458698, 32.801403, 24.044714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839904, -0.398786, -0.368144,
		0.536754, 0.710755, 0.454667,
		0.080345, -0.579480, 0.811016,
		40.482803, 32.627560, 24.288019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103394, 33.079498, 23.851725>,  <40.426559, 33.033195, 23.720308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103394, 33.079498, 23.851725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987782, 32.742538, 24.033640>,  <40.918415, 32.540363, 24.142788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987782, 32.742538, 24.033640>,  <41.103394, 33.079498, 23.851725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987782, 32.742538, 24.033640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830793, -0.456756, -0.318051,
		0.475652, 0.285908, 0.831873,
		-0.289030, -0.842396, 0.454787,
		40.901073, 32.489819, 24.170076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704597, 32.720345, 24.039724>,  <41.103394, 33.079498, 23.851725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704597, 32.720345, 24.039724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430607, 32.429844, 24.062922>,  <41.266212, 32.255543, 24.076839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430607, 32.429844, 24.062922>,  <41.704597, 32.720345, 24.039724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430607, 32.429844, 24.062922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690922, -0.672777, -0.264570,
		0.231160, -0.141157, 0.962621,
		-0.684976, -0.726254, 0.057991,
		41.225113, 32.211967, 24.080318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096901, 32.250626, 24.324892>,  <41.704597, 32.720345, 24.039724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096901, 32.250626, 24.324892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782619, 32.083332, 24.142572>,  <41.594051, 31.982956, 24.033180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782619, 32.083332, 24.142572>,  <42.096901, 32.250626, 24.324892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782619, 32.083332, 24.142572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598297, -0.701012, -0.388101,
		-0.157203, -0.577635, 0.801015,
		-0.785702, -0.418234, -0.455799,
		41.546909, 31.957861, 24.005833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195740, 31.533398, 24.530119>,  <42.096901, 32.250626, 24.324892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195740, 31.533398, 24.530119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981274, 31.579247, 24.195601>,  <41.852596, 31.606756, 23.994888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981274, 31.579247, 24.195601>,  <42.195740, 31.533398, 24.530119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981274, 31.579247, 24.195601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516952, -0.738624, -0.432660,
		-0.667302, -0.664301, 0.336767,
		-0.536161, 0.114622, -0.836297,
		41.820427, 31.613634, 23.944712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149372, 30.895544, 24.272982>,  <42.195740, 31.533398, 24.530119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149372, 30.895544, 24.272982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070793, 31.136597, 23.963596>,  <42.023643, 31.281229, 23.777966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070793, 31.136597, 23.963596>,  <42.149372, 30.895544, 24.272982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070793, 31.136597, 23.963596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435695, -0.653025, -0.619458,
		-0.878394, -0.458686, -0.134277,
		-0.196450, 0.602632, -0.773461,
		42.011860, 31.317387, 23.731558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047081, 30.483835, 23.821928>,  <42.149372, 30.895544, 24.272982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047081, 30.483835, 23.821928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115208, 30.823027, 23.621161>,  <42.156086, 31.026541, 23.500700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115208, 30.823027, 23.621161>,  <42.047081, 30.483835, 23.821928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115208, 30.823027, 23.621161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485024, -0.515531, -0.706385,
		-0.857755, -0.123133, -0.499095,
		0.170319, 0.847978, -0.501921,
		42.166302, 31.077419, 23.470585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704552, 30.039940, 23.790472>,  <42.047081, 30.483835, 23.821928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704552, 30.039940, 23.790472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771530, 29.730497, 24.034929>,  <42.811718, 29.544832, 24.181604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771530, 29.730497, 24.034929>,  <42.704552, 30.039940, 23.790472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771530, 29.730497, 24.034929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898545, 0.135329, 0.417495,
		-0.405682, -0.619048, -0.672459,
		0.167447, -0.773605, 0.611144,
		42.821766, 29.498415, 24.218273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110481, 29.718178, 23.829649>,  <42.704552, 30.039940, 23.790472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110481, 29.718178, 23.829649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312202, 29.539913, 24.125505>,  <42.433235, 29.432955, 24.303020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312202, 29.539913, 24.125505>,  <42.110481, 29.718178, 23.829649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312202, 29.539913, 24.125505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825730, 0.001774, 0.564063,
		-0.252692, -0.895201, -0.367100,
		0.504298, -0.445659, 0.739642,
		42.463493, 29.406216, 24.347399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610138, 29.160646, 24.128983>,  <42.110481, 29.718178, 23.829649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610138, 29.160646, 24.128983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889175, 29.268379, 24.394562>,  <42.056599, 29.333019, 24.553909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889175, 29.268379, 24.394562>,  <41.610138, 29.160646, 24.128983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889175, 29.268379, 24.394562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712893, 0.168088, 0.680830,
		0.071763, -0.948267, 0.309258,
		0.697591, 0.269327, 0.663951,
		42.098454, 29.349178, 24.593746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596821, 28.750000, 24.606472>,  <41.610138, 29.160646, 24.128983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596821, 28.750000, 24.606472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763538, 29.062561, 24.792246>,  <41.863567, 29.250097, 24.903709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763538, 29.062561, 24.792246>,  <41.596821, 28.750000, 24.606472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763538, 29.062561, 24.792246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705773, -0.043810, 0.707082,
		0.572862, -0.622488, 0.533233,
		0.416789, 0.781402, 0.464433,
		41.888577, 29.296982, 24.931576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436565, 28.571035, 25.343458>,  <41.596821, 28.750000, 24.606472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436565, 28.571035, 25.343458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549553, 28.954744, 25.342190>,  <41.617348, 29.184969, 25.341429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549553, 28.954744, 25.342190>,  <41.436565, 28.571035, 25.343458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549553, 28.954744, 25.342190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624402, 0.186371, 0.758543,
		0.728239, -0.212286, 0.651615,
		0.282471, 0.959271, -0.003171,
		41.634293, 29.242525, 25.341238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615314, 28.730995, 26.015976>,  <41.436565, 28.571035, 25.343458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615314, 28.730995, 26.015976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533127, 29.084736, 25.848309>,  <41.483814, 29.296980, 25.747707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533127, 29.084736, 25.848309>,  <41.615314, 28.730995, 26.015976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533127, 29.084736, 25.848309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607176, 0.220719, 0.763296,
		0.767541, 0.411347, 0.491605,
		-0.205473, 0.884351, -0.419170,
		41.471485, 29.350040, 25.722557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560474, 29.247267, 26.568895>,  <41.615314, 28.730995, 26.015976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560474, 29.247267, 26.568895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401970, 29.445374, 26.259655>,  <41.306866, 29.564238, 26.074112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401970, 29.445374, 26.259655>,  <41.560474, 29.247267, 26.568895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401970, 29.445374, 26.259655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636743, 0.458389, 0.620030,
		0.661462, 0.737963, 0.133715,
		-0.396266, 0.495268, -0.773100,
		41.283089, 29.593954, 26.027725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462448, 29.940838, 26.807501>,  <41.560474, 29.247267, 26.568895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462448, 29.940838, 26.807501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210190, 29.893105, 26.500767>,  <41.058834, 29.864464, 26.316727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210190, 29.893105, 26.500767>,  <41.462448, 29.940838, 26.807501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210190, 29.893105, 26.500767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708104, 0.492854, 0.505651,
		0.317597, 0.861890, -0.395320,
		-0.630650, -0.119335, -0.766837,
		41.020996, 29.857304, 26.270716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305611, 30.555775, 26.640251>,  <41.462448, 29.940838, 26.807501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305611, 30.555775, 26.640251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005421, 30.319967, 26.520754>,  <40.825306, 30.178482, 26.449055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005421, 30.319967, 26.520754>,  <41.305611, 30.555775, 26.640251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005421, 30.319967, 26.520754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657158, 0.617637, 0.432052,
		-0.070186, 0.520568, -0.850930,
		-0.750479, -0.589519, -0.298746,
		40.780277, 30.143112, 26.431129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683762, 30.963049, 26.396303>,  <41.305611, 30.555775, 26.640251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683762, 30.963049, 26.396303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534618, 30.596756, 26.456190>,  <40.445133, 30.376980, 26.492123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534618, 30.596756, 26.456190>,  <40.683762, 30.963049, 26.396303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534618, 30.596756, 26.456190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817585, 0.400529, 0.413681,
		-0.438785, 0.031839, -0.898028,
		-0.372857, -0.915731, 0.149715,
		40.422760, 30.322037, 26.501104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021515, 31.090582, 26.184000>,  <40.683762, 30.963049, 26.396303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021515, 31.090582, 26.184000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021065, 30.767086, 26.419268>,  <40.020794, 30.572989, 26.560429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021065, 30.767086, 26.419268>,  <40.021515, 31.090582, 26.184000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021065, 30.767086, 26.419268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955368, 0.174623, 0.238285,
		-0.295418, -0.561648, -0.772838,
		-0.001123, -0.808738, 0.588167,
		40.020729, 30.524464, 26.595718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448517, 30.655785, 25.996826>,  <40.021515, 31.090582, 26.184000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448517, 30.655785, 25.996826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535503, 30.542826, 26.370556>,  <39.587696, 30.475050, 26.594793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535503, 30.542826, 26.370556>,  <39.448517, 30.655785, 25.996826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535503, 30.542826, 26.370556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947861, 0.167359, 0.271201,
		-0.232953, -0.944586, -0.231278,
		0.217466, -0.282397, 0.934324,
		39.600742, 30.458107, 26.650852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831326, 30.287344, 26.299370>,  <39.448517, 30.655785, 25.996826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831326, 30.287344, 26.299370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037704, 30.424490, 26.613373>,  <39.161533, 30.506777, 26.801775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037704, 30.424490, 26.613373>,  <38.831326, 30.287344, 26.299370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037704, 30.424490, 26.613373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829710, 0.427910, 0.358434,
		-0.213018, -0.836264, 0.505259,
		0.515951, 0.342865, 0.785009,
		39.192490, 30.527349, 26.848875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368904, 30.242456, 26.753199>,  <38.831326, 30.287344, 26.299370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368904, 30.242456, 26.753199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644341, 30.468988, 26.934353>,  <38.809605, 30.604908, 27.043045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644341, 30.468988, 26.934353>,  <38.368904, 30.242456, 26.753199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644341, 30.468988, 26.934353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716154, 0.433058, 0.547343,
		0.113850, -0.701235, 0.703781,
		0.688594, 0.566330, 0.452889,
		38.850918, 30.638887, 27.070219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234119, 30.205217, 27.436289>,  <38.368904, 30.242456, 26.753199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234119, 30.205217, 27.436289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448761, 30.542616, 27.426794>,  <38.577545, 30.745056, 27.421097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448761, 30.542616, 27.426794>,  <38.234119, 30.205217, 27.436289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448761, 30.542616, 27.426794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733698, 0.480281, 0.480644,
		0.416822, -0.240502, 0.876595,
		0.536608, 0.843498, -0.023736,
		38.609741, 30.795666, 27.419672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284668, 30.469639, 28.124731>,  <38.234119, 30.205217, 27.436289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284668, 30.469639, 28.124731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354397, 30.788494, 27.893497>,  <38.396236, 30.979807, 27.754757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354397, 30.788494, 27.893497>,  <38.284668, 30.469639, 28.124731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354397, 30.788494, 27.893497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768785, 0.477017, 0.425938,
		0.615288, 0.370172, 0.695984,
		0.174326, 0.797137, -0.578085,
		38.406696, 31.027636, 27.720072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309891, 31.069031, 28.586092>,  <38.284668, 30.469639, 28.124731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309891, 31.069031, 28.586092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271694, 31.250696, 28.231777>,  <38.248775, 31.359695, 28.019188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271694, 31.250696, 28.231777>,  <38.309891, 31.069031, 28.586092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271694, 31.250696, 28.231777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501594, 0.746668, 0.436910,
		0.859816, 0.486027, 0.156503,
		-0.095494, 0.454163, -0.885786,
		38.243046, 31.386946, 27.966042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398666, 31.788408, 28.751932>,  <38.309891, 31.069031, 28.586092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398666, 31.788408, 28.751932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222427, 31.785036, 28.392866>,  <38.116684, 31.783012, 28.177427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222427, 31.785036, 28.392866>,  <38.398666, 31.788408, 28.751932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222427, 31.785036, 28.392866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804934, 0.446415, 0.390889,
		0.397436, 0.894786, -0.203476,
		-0.440597, -0.008431, -0.897665,
		38.090248, 31.782507, 28.123566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214264, 32.485664, 28.504654>,  <38.398666, 31.788408, 28.751932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214264, 32.485664, 28.504654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966049, 32.254589, 28.292536>,  <37.817120, 32.115944, 28.165266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966049, 32.254589, 28.292536>,  <38.214264, 32.485664, 28.504654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966049, 32.254589, 28.292536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777263, 0.542698, 0.318341,
		0.103889, 0.609721, -0.785778,
		-0.620540, -0.577684, -0.530294,
		37.779888, 32.081284, 28.133448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782631, 32.960197, 28.242540>,  <38.214264, 32.485664, 28.504654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782631, 32.960197, 28.242540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576622, 32.618580, 28.213268>,  <37.453014, 32.413609, 28.195705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576622, 32.618580, 28.213268>,  <37.782631, 32.960197, 28.242540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576622, 32.618580, 28.213268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844836, 0.491324, 0.211784,
		-0.144919, 0.170898, -0.974573,
		-0.515025, -0.854046, -0.073179,
		37.422115, 32.362366, 28.191315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170849, 33.189079, 27.955055>,  <37.782631, 32.960197, 28.242540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170849, 33.189079, 27.955055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100140, 32.831470, 28.119720>,  <37.057713, 32.616905, 28.218519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100140, 32.831470, 28.119720>,  <37.170849, 33.189079, 27.955055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100140, 32.831470, 28.119720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875923, 0.333655, 0.348473,
		-0.448898, -0.298984, -0.842080,
		-0.176776, -0.894026, 0.411664,
		37.047108, 32.563263, 28.243219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481312, 33.157928, 27.875528>,  <37.170849, 33.189079, 27.955055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481312, 33.157928, 27.875528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589603, 32.881290, 28.143379>,  <36.654579, 32.715309, 28.304090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589603, 32.881290, 28.143379>,  <36.481312, 33.157928, 27.875528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589603, 32.881290, 28.143379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857153, 0.143434, 0.494687,
		-0.438170, -0.707902, -0.553969,
		0.270732, -0.691593, 0.669629,
		36.670822, 32.673813, 28.344269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876461, 32.813866, 28.020147>,  <36.481312, 33.157928, 27.875528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876461, 32.813866, 28.020147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109493, 32.725521, 28.333023>,  <36.249313, 32.672512, 28.520748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109493, 32.725521, 28.333023>,  <35.876461, 32.813866, 28.020147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109493, 32.725521, 28.333023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760635, 0.190980, 0.620452,
		-0.286419, -0.956423, -0.056736,
		0.582579, -0.220864, 0.782189,
		36.284267, 32.659260, 28.567680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525135, 32.323761, 28.428520>,  <35.876461, 32.813866, 28.020147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525135, 32.323761, 28.428520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772736, 32.490211, 28.694960>,  <35.921295, 32.590080, 28.854822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772736, 32.490211, 28.694960>,  <35.525135, 32.323761, 28.428520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772736, 32.490211, 28.694960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749718, 0.060359, 0.658998,
		0.234020, -0.907303, 0.349337,
		0.618997, 0.416124, 0.666096,
		35.958435, 32.615047, 28.894789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393040, 31.898849, 29.029669>,  <35.525135, 32.323761, 28.428520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393040, 31.898849, 29.029669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548885, 32.254597, 29.125355>,  <35.642391, 32.468044, 29.182766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548885, 32.254597, 29.125355>,  <35.393040, 31.898849, 29.029669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548885, 32.254597, 29.125355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699226, 0.116602, 0.705327,
		0.599404, -0.442068, 0.667300,
		0.389611, 0.889370, 0.239214,
		35.665768, 32.521408, 29.197119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686108, 31.828133, 29.787712>,  <35.393040, 31.898849, 29.029669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686108, 31.828133, 29.787712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630650, 32.208435, 29.676830>,  <35.597374, 32.436615, 29.610302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630650, 32.208435, 29.676830>,  <35.686108, 31.828133, 29.787712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630650, 32.208435, 29.676830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585873, 0.146929, 0.796972,
		0.798454, 0.272904, 0.536651,
		-0.138647, 0.950755, -0.277203,
		35.589054, 32.493660, 29.593670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859371, 32.234005, 30.406609>,  <35.686108, 31.828133, 29.787712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859371, 32.234005, 30.406609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661457, 32.514698, 30.201571>,  <35.542709, 32.683113, 30.078547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661457, 32.514698, 30.201571>,  <35.859371, 32.234005, 30.406609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661457, 32.514698, 30.201571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414192, 0.328120, 0.848989,
		0.763958, 0.632381, 0.128304,
		-0.494786, 0.701735, -0.512597,
		35.513020, 32.725220, 30.047791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002674, 32.921497, 30.679722>,  <35.859371, 32.234005, 30.406609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002674, 32.921497, 30.679722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646309, 32.923885, 30.498066>,  <35.432491, 32.925316, 30.389072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646309, 32.923885, 30.498066>,  <36.002674, 32.921497, 30.679722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646309, 32.923885, 30.498066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451619, 0.094338, 0.887209,
		0.048137, 0.995522, -0.081352,
		-0.890911, 0.005968, -0.454138,
		35.379036, 32.925674, 30.361824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815216, 33.441372, 31.022568>,  <36.002674, 32.921497, 30.679722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815216, 33.441372, 31.022568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465218, 33.341225, 30.856825>,  <35.255219, 33.281136, 30.757380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465218, 33.341225, 30.856825>,  <35.815216, 33.441372, 31.022568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465218, 33.341225, 30.856825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443604, 0.071857, 0.893337,
		-0.193891, 0.965480, -0.173940,
		-0.874998, -0.250371, -0.414359,
		35.202717, 33.266113, 30.732517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348335, 33.862923, 31.247166>,  <35.815216, 33.441372, 31.022568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348335, 33.862923, 31.247166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116920, 33.557426, 31.132626>,  <34.978073, 33.374130, 31.063902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116920, 33.557426, 31.132626>,  <35.348335, 33.862923, 31.247166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116920, 33.557426, 31.132626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566698, 0.123868, 0.814561,
		-0.586645, 0.633526, -0.504473,
		-0.578534, -0.763742, -0.286351,
		34.943359, 33.328304, 31.046721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689503, 34.071297, 31.471216>,  <35.348335, 33.862923, 31.247166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689503, 34.071297, 31.471216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663918, 33.675903, 31.416370>,  <34.648567, 33.438667, 31.383463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663918, 33.675903, 31.416370>,  <34.689503, 34.071297, 31.471216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663918, 33.675903, 31.416370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457593, -0.093047, 0.884280,
		-0.886858, 0.119308, -0.446373,
		-0.063968, -0.988487, -0.137114,
		34.644726, 33.379356, 31.375237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057869, 33.908875, 31.679531>,  <34.689503, 34.071297, 31.471216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057869, 33.908875, 31.679531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272278, 33.571243, 31.685366>,  <34.400921, 33.368664, 31.688868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272278, 33.571243, 31.685366>,  <34.057869, 33.908875, 31.679531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272278, 33.571243, 31.685366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427186, -0.256291, 0.867080,
		-0.728147, -0.471001, -0.497956,
		0.536017, -0.844081, 0.014588,
		34.433083, 33.318020, 31.689743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625515, 33.511993, 31.966839>,  <34.057869, 33.908875, 31.679531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625515, 33.511993, 31.966839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972214, 33.315441, 32.001003>,  <34.180233, 33.197510, 32.021503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972214, 33.315441, 32.001003>,  <33.625515, 33.511993, 31.966839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972214, 33.315441, 32.001003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293136, -0.363344, 0.884337,
		-0.403517, -0.791531, -0.458969,
		0.866744, -0.491386, 0.085411,
		34.232239, 33.168026, 32.026627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438919, 32.884270, 32.482067>,  <33.625515, 33.511993, 31.966839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438919, 32.884270, 32.482067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832081, 32.957775, 32.477581>,  <34.067978, 33.001877, 32.474892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832081, 32.957775, 32.477581>,  <33.438919, 32.884270, 32.482067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832081, 32.957775, 32.477581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019622, -0.044016, 0.998838,
		0.183056, -0.981985, -0.046869,
		0.982906, 0.183763, -0.011211,
		34.126953, 33.012905, 32.474216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687603, 32.487221, 32.966076>,  <33.438919, 32.884270, 32.482067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687603, 32.487221, 32.966076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013672, 32.713745, 32.917439>,  <34.209312, 32.849659, 32.888256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013672, 32.713745, 32.917439>,  <33.687603, 32.487221, 32.966076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013672, 32.713745, 32.917439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362096, -0.334392, 0.870097,
		0.452085, -0.753308, -0.477647,
		0.815172, 0.566311, -0.121596,
		34.258224, 32.883640, 32.880959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318321, 32.073940, 33.135380>,  <33.687603, 32.487221, 32.966076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318321, 32.073940, 33.135380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371922, 32.464848, 33.201084>,  <34.404079, 32.699394, 33.240509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371922, 32.464848, 33.201084>,  <34.318321, 32.073940, 33.135380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371922, 32.464848, 33.201084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403543, -0.205204, 0.891652,
		0.905095, -0.053191, -0.421869,
		0.133997, 0.977273, 0.164264,
		34.412121, 32.758030, 33.250362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012680, 32.059177, 33.507992>,  <34.318321, 32.073940, 33.135380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012680, 32.059177, 33.507992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863789, 32.426937, 33.558811>,  <34.774452, 32.647594, 33.589302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863789, 32.426937, 33.558811>,  <35.012680, 32.059177, 33.507992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863789, 32.426937, 33.558811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408595, 0.039418, 0.911864,
		0.833363, 0.391335, -0.390337,
		-0.372231, 0.919404, 0.127048,
		34.752121, 32.702759, 33.596924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538849, 32.433613, 33.698391>,  <35.012680, 32.059177, 33.507992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538849, 32.433613, 33.698391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220760, 32.633835, 33.835255>,  <35.029907, 32.753967, 33.917374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220760, 32.633835, 33.835255>,  <35.538849, 32.433613, 33.698391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220760, 32.633835, 33.835255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440995, 0.090202, 0.892965,
		0.416112, 0.860995, -0.292471,
		-0.795220, 0.500551, 0.342160,
		34.982193, 32.784000, 33.937904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772785, 32.976315, 34.159203>,  <35.538849, 32.433613, 33.698391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772785, 32.976315, 34.159203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384861, 32.943237, 34.250965>,  <35.152107, 32.923389, 34.306023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384861, 32.943237, 34.250965>,  <35.772785, 32.976315, 34.159203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384861, 32.943237, 34.250965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210826, 0.188470, 0.959183,
		-0.122554, 0.978591, -0.165347,
		-0.969811, -0.082692, 0.229410,
		35.093918, 32.918430, 34.319790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554100, 33.611774, 34.471649>,  <35.772785, 32.976315, 34.159203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554100, 33.611774, 34.471649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310661, 33.332245, 34.621986>,  <35.164597, 33.164528, 34.712189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310661, 33.332245, 34.621986>,  <35.554100, 33.611774, 34.471649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310661, 33.332245, 34.621986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195863, 0.326708, 0.924608,
		-0.768926, 0.636328, -0.061960,
		-0.608597, -0.698819, 0.375847,
		35.128082, 33.122601, 34.734741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014263, 33.862579, 34.942188>,  <35.554100, 33.611774, 34.471649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014263, 33.862579, 34.942188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126652, 33.496185, 35.056747>,  <35.194084, 33.276348, 35.125484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126652, 33.496185, 35.056747>,  <35.014263, 33.862579, 34.942188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126652, 33.496185, 35.056747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343089, 0.374568, 0.861387,
		-0.896296, -0.143762, 0.419507,
		0.280969, -0.915986, 0.286401,
		35.210941, 33.221390, 35.142666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743629, 33.712887, 35.593777>,  <35.014263, 33.862579, 34.942188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743629, 33.712887, 35.593777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083530, 33.511147, 35.532394>,  <35.287472, 33.390102, 35.495564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083530, 33.511147, 35.532394>,  <34.743629, 33.712887, 35.593777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083530, 33.511147, 35.532394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433195, 0.502136, 0.748466,
		-0.300434, -0.702488, 0.645174,
		0.849753, -0.504351, -0.153455,
		35.338455, 33.359840, 35.486359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019577, 33.380814, 36.273808>,  <34.743629, 33.712887, 35.593777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019577, 33.380814, 36.273808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350903, 33.422897, 36.053692>,  <35.549698, 33.448147, 35.921623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350903, 33.422897, 36.053692>,  <35.019577, 33.380814, 36.273808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350903, 33.422897, 36.053692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406744, 0.562541, 0.719796,
		0.385290, -0.820048, 0.423170,
		0.828318, 0.105209, -0.550291,
		35.599400, 33.454460, 35.888603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709167, 33.235630, 36.527660>,  <35.019577, 33.380814, 36.273808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709167, 33.235630, 36.527660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742210, 33.532455, 36.261570>,  <35.762035, 33.710552, 36.101917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742210, 33.532455, 36.261570>,  <35.709167, 33.235630, 36.527660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742210, 33.532455, 36.261570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375583, 0.595105, 0.710484,
		0.923100, -0.308534, -0.229549,
		0.082603, 0.742063, -0.665222,
		35.766991, 33.755074, 36.062004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637909, 33.140877, 37.191662>,  <35.709167, 33.235630, 36.527660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637909, 33.140877, 37.191662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901176, 33.028965, 37.471245>,  <36.059135, 32.961819, 37.638992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901176, 33.028965, 37.471245>,  <35.637909, 33.140877, 37.191662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901176, 33.028965, 37.471245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051092, -0.909647, -0.412228,
		0.751134, 0.307027, -0.584408,
		0.658170, -0.279780, 0.698953,
		36.098629, 32.945030, 37.680931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220047, 32.849781, 36.869801>,  <35.637909, 33.140877, 37.191662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220047, 32.849781, 36.869801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185848, 32.685200, 37.232765>,  <36.165329, 32.586449, 37.450542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185848, 32.685200, 37.232765>,  <36.220047, 32.849781, 36.869801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185848, 32.685200, 37.232765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319376, -0.874004, -0.366220,
		0.943764, 0.258496, 0.206130,
		-0.085492, -0.411458, 0.907410,
		36.160202, 32.561764, 37.504990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849236, 32.701508, 37.109871>,  <36.220047, 32.849781, 36.869801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849236, 32.701508, 37.109871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572639, 32.454742, 37.260208>,  <36.406681, 32.306683, 37.350410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572639, 32.454742, 37.260208>,  <36.849236, 32.701508, 37.109871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572639, 32.454742, 37.260208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380149, -0.753178, -0.536851,
		0.614267, -0.228351, 0.755335,
		-0.691493, -0.616910, 0.375845,
		36.365192, 32.269669, 37.372963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235619, 32.063156, 37.311047>,  <36.849236, 32.701508, 37.109871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235619, 32.063156, 37.311047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863220, 32.012089, 37.174259>,  <36.639782, 31.981449, 37.092186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863220, 32.012089, 37.174259>,  <37.235619, 32.063156, 37.311047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863220, 32.012089, 37.174259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340798, -0.639624, -0.689012,
		-0.130767, -0.758012, 0.638997,
		-0.930997, -0.127669, -0.341971,
		36.583920, 31.973787, 37.071667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793129, 32.473610, 37.662762>,  <37.235619, 32.063156, 37.311047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793129, 32.473610, 37.662762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145538, 32.516460, 37.847076>,  <38.356983, 32.542171, 37.957664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145538, 32.516460, 37.847076>,  <37.793129, 32.473610, 37.662762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145538, 32.516460, 37.847076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296376, -0.634207, 0.714103,
		0.368735, -0.765706, -0.527000,
		0.881020, 0.107124, 0.460791,
		38.409843, 32.548599, 37.985313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880314, 31.935299, 38.137939>,  <37.793129, 32.473610, 37.662762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880314, 31.935299, 38.137939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231647, 31.756350, 38.205334>,  <38.442448, 31.648979, 38.245770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231647, 31.756350, 38.205334>,  <37.880314, 31.935299, 38.137939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231647, 31.756350, 38.205334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164681, 0.614032, 0.771910,
		-0.448791, -0.650246, 0.612998,
		0.878332, -0.447375, 0.168489,
		38.495148, 31.622137, 38.255878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035004, 31.794813, 38.947681>,  <37.880314, 31.935299, 38.137939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035004, 31.794813, 38.947681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372215, 31.833549, 38.736050>,  <38.574543, 31.856791, 38.609070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372215, 31.833549, 38.736050>,  <38.035004, 31.794813, 38.947681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372215, 31.833549, 38.736050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393740, 0.559021, 0.729701,
		0.366432, -0.823479, 0.433140,
		0.843028, 0.096841, -0.529080,
		38.625122, 31.862602, 38.577324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514389, 31.768869, 39.336647>,  <38.035004, 31.794813, 38.947681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514389, 31.768869, 39.336647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691284, 31.959467, 39.032707>,  <38.797421, 32.073826, 38.850342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691284, 31.959467, 39.032707>,  <38.514389, 31.768869, 39.336647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691284, 31.959467, 39.032707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472252, 0.596540, 0.648936,
		0.762497, -0.645827, 0.038789,
		0.442240, 0.476494, -0.759854,
		38.823956, 32.102413, 38.804752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157612, 31.670031, 39.300205>,  <38.514389, 31.768869, 39.336647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157612, 31.670031, 39.300205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071445, 32.042118, 39.181351>,  <39.019745, 32.265369, 39.110039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071445, 32.042118, 39.181351>,  <39.157612, 31.670031, 39.300205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071445, 32.042118, 39.181351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398693, 0.361541, 0.842812,
		0.891426, 0.063088, -0.448753,
		-0.215414, 0.930219, -0.297134,
		39.006821, 32.321182, 39.092209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676674, 32.033401, 39.477470>,  <39.157612, 31.670031, 39.300205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676674, 32.033401, 39.477470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386703, 32.305885, 39.436619>,  <39.212723, 32.469376, 39.412106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386703, 32.305885, 39.436619>,  <39.676674, 32.033401, 39.477470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386703, 32.305885, 39.436619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224896, 0.374210, 0.899661,
		0.651080, 0.629218, -0.424476,
		-0.724926, 0.681214, -0.102132,
		39.169228, 32.510250, 39.405979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896976, 32.710381, 39.722351>,  <39.676674, 32.033401, 39.477470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896976, 32.710381, 39.722351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501514, 32.767178, 39.741928>,  <39.264236, 32.801254, 39.753674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501514, 32.767178, 39.741928>,  <39.896976, 32.710381, 39.722351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501514, 32.767178, 39.741928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127205, 0.618402, 0.775498,
		0.079849, 0.772928, -0.629450,
		-0.988657, 0.141992, 0.048941,
		39.204918, 32.809776, 39.756611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870274, 33.342804, 40.018532>,  <39.896976, 32.710381, 39.722351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870274, 33.342804, 40.018532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506500, 33.177074, 40.032738>,  <39.288235, 33.077637, 40.041264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506500, 33.177074, 40.032738>,  <39.870274, 33.342804, 40.018532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506500, 33.177074, 40.032738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246613, 0.606136, 0.756162,
		-0.334825, 0.678922, -0.653420,
		-0.909436, -0.414324, 0.035518,
		39.233669, 33.052776, 40.043392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500801, 33.963436, 40.118355>,  <39.870274, 33.342804, 40.018532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500801, 33.963436, 40.118355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267368, 33.665279, 40.247246>,  <39.127308, 33.486385, 40.324581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267368, 33.665279, 40.247246>,  <39.500801, 33.963436, 40.118355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267368, 33.665279, 40.247246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066631, 0.439414, 0.895810,
		-0.809319, 0.501306, -0.306099,
		-0.583578, -0.745391, 0.322223,
		39.092297, 33.441662, 40.343914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797413, 34.274445, 40.354580>,  <39.500801, 33.963436, 40.118355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797413, 34.274445, 40.354580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861298, 33.927124, 40.542427>,  <38.899628, 33.718731, 40.655136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861298, 33.927124, 40.542427>,  <38.797413, 34.274445, 40.354580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861298, 33.927124, 40.542427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108454, 0.457409, 0.882618,
		-0.981188, -0.191899, -0.021116,
		0.159715, -0.868304, 0.469616,
		38.909210, 33.666634, 40.683311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237942, 34.214874, 40.765190>,  <38.797413, 34.274445, 40.354580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237942, 34.214874, 40.765190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495129, 33.956638, 40.930023>,  <38.649441, 33.801697, 41.028923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495129, 33.956638, 40.930023>,  <38.237942, 34.214874, 40.765190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495129, 33.956638, 40.930023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144888, 0.425801, 0.893141,
		-0.752068, -0.633963, 0.180236,
		0.642963, -0.645589, 0.412085,
		38.688019, 33.762962, 41.053650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783978, 34.001965, 41.404781>,  <38.237942, 34.214874, 40.765190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783978, 34.001965, 41.404781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183632, 34.003193, 41.421371>,  <38.423424, 34.003929, 41.431324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183632, 34.003193, 41.421371>,  <37.783978, 34.001965, 41.404781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183632, 34.003193, 41.421371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035090, 0.597400, 0.801175,
		-0.022321, -0.801937, 0.596991,
		0.999135, 0.003066, 0.041475,
		38.483372, 34.004112, 41.433815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008141, 33.862995, 41.998192>,  <37.783978, 34.001965, 41.404781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008141, 33.862995, 41.998192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310875, 34.078491, 41.850159>,  <38.492516, 34.207787, 41.761337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310875, 34.078491, 41.850159>,  <38.008141, 33.862995, 41.998192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310875, 34.078491, 41.850159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093654, 0.649764, 0.754344,
		0.646832, -0.536275, 0.542234,
		0.756860, 0.538716, -0.370064,
		38.537926, 34.240112, 41.739132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593658, 33.843727, 42.457355>,  <38.008141, 33.862995, 41.998192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593658, 33.843727, 42.457355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544689, 34.165146, 42.224350>,  <38.515308, 34.357998, 42.084545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544689, 34.165146, 42.224350>,  <38.593658, 33.843727, 42.457355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544689, 34.165146, 42.224350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311020, 0.526304, 0.791372,
		0.942485, 0.278059, 0.185486,
		-0.122426, 0.803546, -0.582516,
		38.507961, 34.406208, 42.049595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727383, 34.467571, 42.732246>,  <38.593658, 33.843727, 42.457355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727383, 34.467571, 42.732246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455925, 34.223827, 42.896255>,  <38.293049, 34.077579, 42.994659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455925, 34.223827, 42.896255>,  <38.727383, 34.467571, 42.732246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455925, 34.223827, 42.896255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698526, 0.363015, -0.616669,
		0.226928, -0.704913, -0.672012,
		-0.678649, -0.609358, 0.410023,
		38.252331, 34.041019, 43.019260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073780, 34.701073, 42.107723>,  <38.727383, 34.467571, 42.732246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073780, 34.701073, 42.107723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227421, 34.343273, 42.199230>,  <39.319607, 34.128593, 42.254135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227421, 34.343273, 42.199230>,  <39.073780, 34.701073, 42.107723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227421, 34.343273, 42.199230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146985, -0.303854, -0.941312,
		0.911515, 0.327935, -0.248189,
		0.384103, -0.894501, 0.228766,
		39.342651, 34.074924, 42.267860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456280, 34.560139, 41.450409>,  <39.073780, 34.701073, 42.107723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456280, 34.560139, 41.450409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408863, 34.243298, 41.689915>,  <39.380413, 34.053192, 41.833618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408863, 34.243298, 41.689915>,  <39.456280, 34.560139, 41.450409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408863, 34.243298, 41.689915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408456, -0.510731, -0.756516,
		0.905048, -0.334246, -0.262998,
		-0.118542, -0.792107, 0.598761,
		39.373299, 34.005665, 41.869541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782536, 33.803440, 41.266113>,  <39.456280, 34.560139, 41.450409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782536, 33.803440, 41.266113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420628, 33.760052, 41.430859>,  <39.203484, 33.734020, 41.529705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420628, 33.760052, 41.430859>,  <39.782536, 33.803440, 41.266113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420628, 33.760052, 41.430859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255168, -0.636212, -0.728095,
		0.341009, -0.763851, 0.547946,
		-0.904766, -0.108469, 0.411865,
		39.149197, 33.727512, 41.554417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612503, 33.068996, 41.516041>,  <39.782536, 33.803440, 41.266113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612503, 33.068996, 41.516041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286900, 33.263451, 41.388874>,  <39.091537, 33.380123, 41.312572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286900, 33.263451, 41.388874>,  <39.612503, 33.068996, 41.516041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286900, 33.263451, 41.388874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060463, -0.615264, -0.785999,
		-0.577698, -0.620587, 0.530223,
		-0.814008, 0.486129, -0.317914,
		39.042698, 33.409290, 41.293499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198635, 32.544388, 41.246216>,  <39.612503, 33.068996, 41.516041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198635, 32.544388, 41.246216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072731, 32.888760, 41.086357>,  <38.997189, 33.095383, 40.990440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072731, 32.888760, 41.086357>,  <39.198635, 32.544388, 41.246216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072731, 32.888760, 41.086357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135196, -0.457423, -0.878912,
		-0.939493, -0.222618, 0.260374,
		-0.314763, 0.860933, -0.399648,
		38.978302, 33.147041, 40.966461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388508, 32.529385, 40.916187>,  <39.198635, 32.544388, 41.246216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388508, 32.529385, 40.916187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618122, 32.798923, 40.730106>,  <38.755890, 32.960648, 40.618458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618122, 32.798923, 40.730106>,  <38.388508, 32.529385, 40.916187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618122, 32.798923, 40.730106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329199, -0.330277, -0.884616,
		-0.749741, 0.660946, 0.032238,
		0.574036, 0.673845, -0.465205,
		38.790333, 33.001076, 40.590546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181656, 32.579132, 40.312523>,  <38.388508, 32.529385, 40.916187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181656, 32.579132, 40.312523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490993, 32.813587, 40.215874>,  <38.676594, 32.954262, 40.157887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490993, 32.813587, 40.215874>,  <38.181656, 32.579132, 40.312523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490993, 32.813587, 40.215874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170408, -0.174909, -0.969726,
		-0.610658, 0.791104, -0.035382,
		0.773342, 0.586141, -0.241620,
		38.722996, 32.989429, 40.143387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976597, 33.099609, 39.863335>,  <38.181656, 32.579132, 40.312523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976597, 33.099609, 39.863335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362507, 33.007507, 39.812424>,  <38.594051, 32.952244, 39.781879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362507, 33.007507, 39.812424>,  <37.976597, 33.099609, 39.863335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362507, 33.007507, 39.812424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181156, -0.230588, -0.956039,
		0.190789, 0.945415, -0.264177,
		0.964770, -0.230259, -0.127274,
		38.651939, 32.938431, 39.774242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181637, 33.419262, 39.245411>,  <37.976597, 33.099609, 39.863335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181637, 33.419262, 39.245411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444771, 33.126938, 39.318264>,  <38.602650, 32.951546, 39.361977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444771, 33.126938, 39.318264>,  <38.181637, 33.419262, 39.245411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444771, 33.126938, 39.318264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207916, -0.408636, -0.888700,
		0.723894, 0.546751, -0.420762,
		0.657836, -0.730808, 0.182131,
		38.642120, 32.907696, 39.372902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811237, 33.550800, 38.764736>,  <38.181637, 33.419262, 39.245411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811237, 33.550800, 38.764736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806767, 33.162788, 38.861828>,  <38.804085, 32.929981, 38.920082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806767, 33.162788, 38.861828>,  <38.811237, 33.550800, 38.764736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806767, 33.162788, 38.861828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000272, -0.242746, -0.970090,
		0.999938, -0.010781, 0.002978,
		-0.011181, -0.970030, 0.242728,
		38.803413, 32.871780, 38.934647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554241, 33.428368, 38.923988>,  <38.811237, 33.550800, 38.764736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554241, 33.428368, 38.923988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558617, 33.632175, 39.268147>,  <39.561241, 33.754459, 39.474640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558617, 33.632175, 39.268147>,  <39.554241, 33.428368, 38.923988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558617, 33.632175, 39.268147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884605, 0.396245, -0.245895,
		-0.466213, 0.763796, -0.446387,
		0.010935, 0.509516, 0.860392,
		39.561897, 33.785030, 39.526264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785618, 34.137062, 38.822720>,  <39.554241, 33.428368, 38.923988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785618, 34.137062, 38.822720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885670, 34.117256, 39.209499>,  <39.945702, 34.105373, 39.441566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885670, 34.117256, 39.209499>,  <39.785618, 34.137062, 38.822720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885670, 34.117256, 39.209499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768350, 0.617827, -0.167116,
		-0.589131, 0.784753, 0.192581,
		0.250127, -0.049517, 0.966946,
		39.960709, 34.102402, 39.499584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758064, 34.778988, 39.225746>,  <39.785618, 34.137062, 38.822720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758064, 34.778988, 39.225746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036022, 34.533092, 39.375000>,  <40.202797, 34.385555, 39.464550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036022, 34.533092, 39.375000>,  <39.758064, 34.778988, 39.225746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036022, 34.533092, 39.375000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698930, 0.699428, -0.149323,
		-0.169185, 0.364557, 0.915682,
		0.694891, -0.614735, 0.373133,
		40.244488, 34.348671, 39.486938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122414, 35.130939, 39.817726>,  <39.758064, 34.778988, 39.225746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122414, 35.130939, 39.817726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336662, 34.857048, 39.620037>,  <40.465210, 34.692711, 39.501423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336662, 34.857048, 39.620037>,  <40.122414, 35.130939, 39.817726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336662, 34.857048, 39.620037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700209, 0.687264, -0.193326,
		0.472039, -0.242512, 0.847565,
		0.535618, -0.684730, -0.494224,
		40.497349, 34.651630, 39.471771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785110, 35.101780, 40.226540>,  <40.122414, 35.130939, 39.817726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785110, 35.101780, 40.226540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788399, 34.995029, 39.841061>,  <40.790371, 34.930981, 39.609772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788399, 34.995029, 39.841061>,  <40.785110, 35.101780, 40.226540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788399, 34.995029, 39.841061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554797, 0.803014, -0.217644,
		0.831945, -0.532866, 0.154665,
		0.008223, -0.266876, -0.963696,
		40.790867, 34.914967, 39.551952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447170, 34.921356, 39.812386>,  <40.785110, 35.101780, 40.226540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447170, 34.921356, 39.812386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163105, 35.111000, 39.604198>,  <40.992664, 35.224785, 39.479286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163105, 35.111000, 39.604198>,  <41.447170, 34.921356, 39.812386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163105, 35.111000, 39.604198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517421, 0.852795, 0.070825,
		0.477428, -0.219001, -0.850941,
		-0.710168, 0.474108, -0.520464,
		40.950054, 35.253231, 39.448059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660931, 35.171272, 39.113426>,  <41.447170, 34.921356, 39.812386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660931, 35.171272, 39.113426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388947, 35.450726, 39.202480>,  <41.225758, 35.618397, 39.255913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388947, 35.450726, 39.202480>,  <41.660931, 35.171272, 39.113426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388947, 35.450726, 39.202480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679194, 0.714516, -0.167815,
		-0.276319, 0.037107, -0.960349,
		-0.679958, 0.698634, 0.222637,
		41.184959, 35.660316, 39.269272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046898, 35.492401, 38.781487>,  <41.660931, 35.171272, 39.113426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046898, 35.492401, 38.781487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700794, 35.366802, 38.625164>,  <40.493134, 35.291443, 38.531372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700794, 35.366802, 38.625164>,  <41.046898, 35.492401, 38.781487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700794, 35.366802, 38.625164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501322, -0.541394, -0.674958,
		0.000355, -0.779934, 0.625861,
		-0.865261, -0.313998, -0.390806,
		40.441216, 35.272602, 38.507923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912201, 34.760967, 38.871693>,  <41.046898, 35.492401, 38.781487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912201, 34.760967, 38.871693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825386, 34.949112, 38.529545>,  <40.773296, 35.061996, 38.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825386, 34.949112, 38.529545>,  <40.912201, 34.760967, 38.871693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825386, 34.949112, 38.529545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603872, -0.623775, -0.496229,
		-0.766964, -0.624233, -0.148655,
		-0.217036, 0.470359, -0.855370,
		40.760277, 35.090221, 38.272934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584431, 34.346794, 38.122139>,  <40.912201, 34.760967, 38.871693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584431, 34.346794, 38.122139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843346, 34.649113, 38.082573>,  <40.998695, 34.830505, 38.058834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843346, 34.649113, 38.082573>,  <40.584431, 34.346794, 38.122139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843346, 34.649113, 38.082573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651010, -0.615657, -0.444019,
		-0.396485, 0.223017, -0.890541,
		0.647292, 0.755798, -0.098912,
		41.037533, 34.875851, 38.052898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840179, 34.395100, 37.402908>,  <40.584431, 34.346794, 38.122139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840179, 34.395100, 37.402908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115952, 34.543327, 37.651867>,  <41.281414, 34.632263, 37.801243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115952, 34.543327, 37.651867>,  <40.840179, 34.395100, 37.402908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115952, 34.543327, 37.651867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702209, -0.552761, -0.448729,
		0.177750, 0.746415, -0.641303,
		0.689425, 0.370567, 0.622393,
		41.322781, 34.654499, 37.838585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370899, 34.568989, 36.955132>,  <40.840179, 34.395100, 37.402908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370899, 34.568989, 36.955132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521317, 34.542133, 37.324799>,  <41.611565, 34.526020, 37.546600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521317, 34.542133, 37.324799>,  <41.370899, 34.568989, 36.955132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521317, 34.542133, 37.324799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836793, -0.403745, -0.369822,
		0.397959, 0.912405, -0.095640,
		0.376041, -0.067143, 0.924167,
		41.634129, 34.521992, 37.602047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024525, 34.925903, 37.244232>,  <41.370899, 34.568989, 36.955132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024525, 34.925903, 37.244232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983498, 34.574272, 37.430439>,  <41.958881, 34.363293, 37.542164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983498, 34.574272, 37.430439>,  <42.024525, 34.925903, 37.244232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983498, 34.574272, 37.430439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904966, -0.276737, -0.323191,
		0.412935, 0.388126, 0.823919,
		-0.102570, -0.879076, 0.465515,
		41.952728, 34.310551, 37.570095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719784, 34.728451, 37.402901>,  <42.024525, 34.925903, 37.244232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719784, 34.728451, 37.402901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490601, 34.401535, 37.427402>,  <42.353088, 34.205383, 37.442104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490601, 34.401535, 37.427402>,  <42.719784, 34.728451, 37.402901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490601, 34.401535, 37.427402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777683, -0.565738, -0.274134,
		0.258701, -0.109432, 0.959739,
		-0.572960, -0.817291, 0.061254,
		42.318714, 34.156349, 37.445778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224213, 35.302277, 37.382530>,  <42.719784, 34.728451, 37.402901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224213, 35.302277, 37.382530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247360, 35.680008, 37.252979>,  <43.261250, 35.906647, 37.175251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247360, 35.680008, 37.252979>,  <43.224213, 35.302277, 37.382530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247360, 35.680008, 37.252979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957169, -0.144667, -0.250797,
		-0.283689, -0.295491, -0.912253,
		0.057865, 0.944328, -0.323876,
		43.264721, 35.963306, 37.155815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629215, 35.233940, 36.745983>,  <43.224213, 35.302277, 37.382530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629215, 35.233940, 36.745983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662228, 35.604477, 36.892994>,  <43.682034, 35.826801, 36.981201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662228, 35.604477, 36.892994>,  <43.629215, 35.233940, 36.745983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662228, 35.604477, 36.892994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958667, 0.026967, -0.283249,
		-0.272298, 0.375710, -0.885831,
		0.082532, 0.926345, 0.367524,
		43.686989, 35.882381, 37.003250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724155, 35.803066, 36.185005>,  <43.629215, 35.233940, 36.745983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724155, 35.803066, 36.185005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898479, 35.911758, 36.528221>,  <44.003075, 35.976974, 36.734150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898479, 35.911758, 36.528221>,  <43.724155, 35.803066, 36.185005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898479, 35.911758, 36.528221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882985, 0.055632, -0.466092,
		-0.174384, 0.960766, -0.215685,
		0.435807, 0.271726, 0.858043,
		44.029221, 35.993275, 36.785633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399860, 35.438904, 36.049530>,  <43.724155, 35.803066, 36.185005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399860, 35.438904, 36.049530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672192, 35.404072, 36.340427>,  <44.835590, 35.383171, 36.514965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672192, 35.404072, 36.340427>,  <44.399860, 35.438904, 36.049530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672192, 35.404072, 36.340427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491826, -0.681406, -0.542026,
		0.542751, 0.726707, -0.421092,
		0.680829, -0.087081, 0.727247,
		44.876442, 35.377949, 36.558601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113342, 35.566887, 35.758945>,  <44.399860, 35.438904, 36.049530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113342, 35.566887, 35.758945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111111, 35.333305, 36.083652>,  <45.109772, 35.193157, 36.278477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111111, 35.333305, 36.083652>,  <45.113342, 35.566887, 35.758945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111111, 35.333305, 36.083652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682061, -0.595863, -0.423956,
		0.731274, 0.551311, 0.401616,
		-0.005576, -0.583955, 0.811767,
		45.109436, 35.158119, 36.327183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793373, 35.357388, 35.882069>,  <45.113342, 35.566887, 35.758945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793373, 35.357388, 35.882069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583141, 35.068211, 36.061451>,  <45.457001, 34.894703, 36.169083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583141, 35.068211, 36.061451>,  <45.793373, 35.357388, 35.882069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583141, 35.068211, 36.061451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666545, -0.677496, -0.310994,
		0.528660, 0.135464, 0.837955,
		-0.525582, -0.722945, 0.448458,
		45.425468, 34.851326, 36.195988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077007, 35.053432, 36.533466>,  <45.793373, 35.357388, 35.882069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077007, 35.053432, 36.533466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844093, 34.803699, 36.325176>,  <45.704346, 34.653862, 36.200203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844093, 34.803699, 36.325176>,  <46.077007, 35.053432, 36.533466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844093, 34.803699, 36.325176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763281, -0.640349, -0.085763,
		-0.279900, -0.447397, 0.849407,
		-0.582287, -0.624331, -0.520723,
		45.669407, 34.616402, 36.168961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469700, 34.358574, 36.428894>,  <46.077007, 35.053432, 36.533466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469700, 34.358574, 36.428894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124886, 34.297085, 36.235703>,  <45.917999, 34.260189, 36.119785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124886, 34.297085, 36.235703>,  <46.469700, 34.358574, 36.428894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124886, 34.297085, 36.235703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430310, -0.725498, -0.537109,
		-0.267835, -0.670836, 0.691552,
		-0.862031, -0.153726, -0.482981,
		45.866276, 34.250969, 36.090809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322033, 33.551418, 36.420719>,  <46.469700, 34.358574, 36.428894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322033, 33.551418, 36.420719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169891, 33.741306, 36.103233>,  <46.078606, 33.855240, 35.912743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169891, 33.741306, 36.103233>,  <46.322033, 33.551418, 36.420719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.169891, 33.741306, 36.103233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491845, -0.622960, -0.608284,
		-0.783213, -0.621744, 0.003456,
		-0.380350, 0.474716, -0.793712,
		46.055786, 33.883720, 35.865120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.698452, 33.204350, 37.043064>,  <46.322033, 33.551418, 36.420719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.698452, 33.204350, 37.043064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300648, 33.194691, 37.002331>,  <46.061966, 33.188896, 36.977890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300648, 33.194691, 37.002331>,  <46.698452, 33.204350, 37.043064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.300648, 33.194691, 37.002331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093529, 0.231472, -0.968335,
		0.046951, -0.972542, -0.227943,
		-0.994509, -0.024145, -0.101829,
		46.002296, 33.187447, 36.971783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.461563, 32.733913, 36.497623>,  <46.698452, 33.204350, 37.043064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.461563, 32.733913, 36.497623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173290, 33.009014, 36.532516>,  <46.000328, 33.174076, 36.553452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173290, 33.009014, 36.532516>,  <46.461563, 32.733913, 36.497623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173290, 33.009014, 36.532516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120283, 0.247964, -0.961273,
		-0.682750, -0.682281, -0.261429,
		-0.720683, 0.687754, 0.087231,
		45.957085, 33.215340, 36.558685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046906, 33.032368, 35.956837>,  <46.461563, 32.733913, 36.497623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046906, 33.032368, 35.956837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173733, 33.360474, 35.766415>,  <46.249828, 33.557339, 35.652161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173733, 33.360474, 35.766415>,  <46.046906, 33.032368, 35.956837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173733, 33.360474, 35.766415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240964, -0.555157, -0.796076,
		-0.917282, 0.137695, -0.373675,
		0.317064, 0.820269, -0.476056,
		46.268852, 33.606556, 35.623596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763130, 32.983997, 35.274529>,  <46.046906, 33.032368, 35.956837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763130, 32.983997, 35.274529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086849, 33.218910, 35.269787>,  <46.281082, 33.359859, 35.266941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086849, 33.218910, 35.269787>,  <45.763130, 32.983997, 35.274529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086849, 33.218910, 35.269787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348324, -0.496057, -0.795360,
		-0.472979, 0.639553, -0.606021,
		0.809296, 0.587281, -0.011853,
		46.329639, 33.395096, 35.266232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719841, 33.373108, 34.643040>,  <45.763130, 32.983997, 35.274529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719841, 33.373108, 34.643040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051132, 33.232357, 34.817497>,  <46.249908, 33.147907, 34.922173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051132, 33.232357, 34.817497>,  <45.719841, 33.373108, 34.643040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051132, 33.232357, 34.817497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169946, -0.583924, -0.793821,
		0.534003, 0.731585, -0.423822,
		0.828227, -0.351876, 0.436147,
		46.299599, 33.126793, 34.948341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333744, 33.647755, 34.313992>,  <45.719841, 33.373108, 34.643040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333744, 33.647755, 34.313992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371338, 33.282635, 34.472969>,  <46.393894, 33.063560, 34.568356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371338, 33.282635, 34.472969>,  <46.333744, 33.647755, 34.313992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371338, 33.282635, 34.472969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076391, -0.391420, -0.917036,
		0.992639, 0.116548, 0.032943,
		0.093984, -0.912802, 0.397442,
		46.399532, 33.008793, 34.592201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991959, 33.341774, 34.097107>,  <46.333744, 33.647755, 34.313992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991959, 33.341774, 34.097107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705494, 33.075630, 34.181404>,  <46.533615, 32.915943, 34.231983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705494, 33.075630, 34.181404>,  <46.991959, 33.341774, 34.097107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705494, 33.075630, 34.181404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048368, -0.348539, -0.936045,
		0.696255, -0.660168, 0.281793,
		-0.716163, -0.665357, 0.210741,
		46.490646, 32.876022, 34.244625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.634029, 33.569370, 34.571251>,  <46.991959, 33.341774, 34.097107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.634029, 33.569370, 34.571251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842888, 33.747803, 34.862007>,  <47.968204, 33.854862, 35.036461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842888, 33.747803, 34.862007>,  <47.634029, 33.569370, 34.571251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.842888, 33.747803, 34.862007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140853, 0.885703, -0.442369,
		-0.841142, 0.128598, 0.525302,
		0.522149, 0.446086, 0.726889,
		47.999531, 33.881630, 35.080074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.176315, 34.127686, 35.005184>,  <47.634029, 33.569370, 34.571251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.176315, 34.127686, 35.005184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.572002, 34.180920, 34.980732>,  <47.809414, 34.212860, 34.966061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.572002, 34.180920, 34.980732>,  <47.176315, 34.127686, 35.005184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.572002, 34.180920, 34.980732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144049, 0.959490, -0.242132,
		0.026431, 0.248327, 0.968315,
		0.989217, 0.133085, -0.061132,
		47.868767, 34.220844, 34.962391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381062, 34.788883, 35.432457>,  <47.176315, 34.127686, 35.005184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381062, 34.788883, 35.432457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593422, 34.694069, 35.107014>,  <47.720837, 34.637180, 34.911747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593422, 34.694069, 35.107014>,  <47.381062, 34.788883, 35.432457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593422, 34.694069, 35.107014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169767, 0.910872, -0.376153,
		0.830256, 0.337823, 0.443341,
		0.530900, -0.237038, -0.813608,
		47.752693, 34.622959, 34.862930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.934799, 35.259338, 35.350689>,  <47.381062, 34.788883, 35.432457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.934799, 35.259338, 35.350689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851368, 35.098991, 34.993858>,  <47.801311, 35.002785, 34.779758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851368, 35.098991, 34.993858>,  <47.934799, 35.259338, 35.350689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.851368, 35.098991, 34.993858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160000, 0.913837, -0.373232,
		0.964830, 0.064885, -0.254742,
		-0.208575, -0.400864, -0.892079,
		47.788795, 34.978733, 34.726234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.265022, 27.451761, 28.176712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996475, 27.492874, 27.883127>,  <36.835346, 27.517542, 27.706976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996475, 27.492874, 27.883127>,  <37.265022, 27.451761, 28.176712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996475, 27.492874, 27.883127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721298, 0.136905, 0.678960,
		0.170269, 0.985237, -0.017776,
		-0.671370, 0.102784, -0.733960,
		36.795063, 27.523710, 27.662939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887104, 27.980921, 28.420992>,  <37.265022, 27.451761, 28.176712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887104, 27.980921, 28.420992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655079, 27.844057, 28.125303>,  <36.515862, 27.761938, 27.947889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655079, 27.844057, 28.125303>,  <36.887104, 27.980921, 28.420992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655079, 27.844057, 28.125303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813295, 0.192538, 0.549073,
		-0.045542, 0.919705, -0.389961,
		-0.580067, -0.342159, -0.739222,
		36.481060, 27.741409, 27.903536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328648, 28.470726, 28.279949>,  <36.887104, 27.980921, 28.420992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328648, 28.470726, 28.279949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.209389, 28.105864, 28.167461>,  <36.137833, 27.886946, 28.099970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.209389, 28.105864, 28.167461>,  <36.328648, 28.470726, 28.279949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209389, 28.105864, 28.167461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796722, 0.075555, 0.599604,
		-0.525685, 0.402820, -0.749260,
		-0.298143, -0.912155, -0.281218,
		36.119946, 27.832216, 28.083096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625320, 28.571136, 28.174488>,  <36.328648, 28.470726, 28.279949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625320, 28.571136, 28.174488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681725, 28.175138, 28.172424>,  <35.715565, 27.937540, 28.171186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681725, 28.175138, 28.172424>,  <35.625320, 28.571136, 28.174488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681725, 28.175138, 28.172424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792066, -0.115940, 0.599324,
		-0.593926, -0.080423, -0.800490,
		0.141008, -0.989995, -0.005159,
		35.724026, 27.878139, 28.170877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042915, 28.305578, 27.963724>,  <35.625320, 28.571136, 28.174488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042915, 28.305578, 27.963724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.230957, 28.035223, 28.190767>,  <35.343784, 27.873011, 28.326994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.230957, 28.035223, 28.190767>,  <35.042915, 28.305578, 27.963724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230957, 28.035223, 28.190767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744112, 0.042342, 0.666711,
		-0.474655, -0.735789, -0.483030,
		0.470106, -0.675886, 0.567607,
		35.371990, 27.832457, 28.361050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499020, 27.963053, 28.076393>,  <35.042915, 28.305578, 27.963724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499020, 27.963053, 28.076393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772038, 27.873293, 28.354610>,  <34.935848, 27.819437, 28.521542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772038, 27.873293, 28.354610>,  <34.499020, 27.963053, 28.076393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772038, 27.873293, 28.354610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721497, -0.055163, 0.690216,
		-0.116520, -0.972933, -0.199558,
		0.682543, -0.224405, 0.695541,
		34.976799, 27.805973, 28.563272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202595, 27.496756, 28.477673>,  <34.499020, 27.963053, 28.076393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202595, 27.496756, 28.477673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.489498, 27.617643, 28.728817>,  <34.661640, 27.690176, 28.879503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.489498, 27.617643, 28.728817>,  <34.202595, 27.496756, 28.477673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489498, 27.617643, 28.728817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649091, -0.037923, 0.759765,
		0.253428, -0.952483, 0.168969,
		0.717256, 0.302222, 0.627859,
		34.704674, 27.708309, 28.917175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094238, 27.144739, 29.141703>,  <34.202595, 27.496756, 28.477673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094238, 27.144739, 29.141703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.308846, 27.471586, 29.226055>,  <34.437611, 27.667694, 29.276667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.308846, 27.471586, 29.226055>,  <34.094238, 27.144739, 29.141703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308846, 27.471586, 29.226055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645004, 0.235922, 0.726850,
		0.544172, -0.525983, 0.653620,
		0.536514, 0.817119, 0.210879,
		34.469799, 27.716722, 29.289318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025257, 27.233789, 29.833424>,  <34.094238, 27.144739, 29.141703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025257, 27.233789, 29.833424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.163467, 27.597166, 29.739325>,  <34.246395, 27.815191, 29.682865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.163467, 27.597166, 29.739325>,  <34.025257, 27.233789, 29.833424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163467, 27.597166, 29.739325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604876, 0.407271, 0.684292,
		0.717450, -0.094146, 0.690219,
		0.345529, 0.908442, -0.235250,
		34.267128, 27.869699, 29.668749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335228, 27.622810, 30.478210>,  <34.025257, 27.233789, 29.833424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335228, 27.622810, 30.478210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.271637, 27.920462, 30.218672>,  <34.233482, 28.099052, 30.062948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.271637, 27.920462, 30.218672>,  <34.335228, 27.622810, 30.478210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271637, 27.920462, 30.218672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433163, 0.538001, 0.723135,
		0.887184, 0.396018, 0.236799,
		-0.158977, 0.744127, -0.648846,
		34.223946, 28.143700, 30.024017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532898, 28.267214, 30.795362>,  <34.335228, 27.622810, 30.478210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532898, 28.267214, 30.795362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.265903, 28.374073, 30.517342>,  <34.105709, 28.438189, 30.350529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.265903, 28.374073, 30.517342>,  <34.532898, 28.267214, 30.795362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265903, 28.374073, 30.517342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427117, 0.627241, 0.651260,
		0.609948, 0.731575, -0.304570,
		-0.667484, 0.267148, -0.695052,
		34.065659, 28.454218, 30.308826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570034, 29.026331, 30.850471>,  <34.532898, 28.267214, 30.795362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570034, 29.026331, 30.850471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.230667, 28.910730, 30.673086>,  <34.027046, 28.841370, 30.566654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.230667, 28.910730, 30.673086>,  <34.570034, 29.026331, 30.850471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230667, 28.910730, 30.673086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518078, 0.625147, 0.583769,
		0.108522, 0.725031, -0.680112,
		-0.848421, -0.288999, -0.443464,
		33.976139, 28.824030, 30.540047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215099, 29.627905, 30.598637>,  <34.570034, 29.026331, 30.850471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215099, 29.627905, 30.598637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.911655, 29.367393, 30.591213>,  <33.729588, 29.211086, 30.586760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.911655, 29.367393, 30.591213>,  <34.215099, 29.627905, 30.598637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911655, 29.367393, 30.591213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522483, 0.591078, 0.614523,
		-0.389256, 0.475881, -0.788680,
		-0.758611, -0.651279, -0.018559,
		33.684071, 29.172010, 30.585646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575420, 30.040905, 30.508486>,  <34.215099, 29.627905, 30.598637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575420, 30.040905, 30.508486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.475559, 29.690689, 30.673943>,  <33.415642, 29.480558, 30.773216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.475559, 29.690689, 30.673943>,  <33.575420, 30.040905, 30.508486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475559, 29.690689, 30.673943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653382, 0.467582, 0.595365,
		-0.714678, -0.121630, -0.688797,
		-0.249655, -0.875542, 0.413641,
		33.400661, 29.428026, 30.798035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937035, 30.263475, 30.868835>,  <33.575420, 30.040905, 30.508486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937035, 30.263475, 30.868835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.036350, 29.918940, 31.046125>,  <33.095940, 29.712219, 31.152500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.036350, 29.918940, 31.046125>,  <32.937035, 30.263475, 30.868835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036350, 29.918940, 31.046125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643813, 0.195141, 0.739881,
		-0.723779, -0.469060, -0.506089,
		0.248290, -0.861338, 0.443226,
		33.110836, 29.660538, 31.179092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327038, 29.926138, 31.106289>,  <32.937035, 30.263475, 30.868835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327038, 29.926138, 31.106289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628712, 29.783979, 31.327160>,  <32.809715, 29.698685, 31.459682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628712, 29.783979, 31.327160>,  <32.327038, 29.926138, 31.106289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628712, 29.783979, 31.327160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461929, 0.310520, 0.830782,
		-0.466718, -0.881630, 0.070022,
		0.754185, -0.355396, 0.552176,
		32.854969, 29.677361, 31.492813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973225, 29.516972, 31.719463>,  <32.327038, 29.926138, 31.106289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973225, 29.516972, 31.719463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.353580, 29.600275, 31.811062>,  <32.581795, 29.650257, 31.866022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.353580, 29.600275, 31.811062>,  <31.973225, 29.516972, 31.719463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353580, 29.600275, 31.811062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290362, 0.343824, 0.893014,
		0.107240, -0.915650, 0.387408,
		0.950889, 0.208256, 0.228998,
		32.638847, 29.662752, 31.879761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963003, 29.398481, 32.331230>,  <31.973225, 29.516972, 31.719463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963003, 29.398481, 32.331230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.304668, 29.606401, 32.325382>,  <32.509666, 29.731153, 32.321873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.304668, 29.606401, 32.325382>,  <31.963003, 29.398481, 32.331230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304668, 29.606401, 32.325382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262759, 0.455699, 0.850468,
		0.448705, -0.722616, 0.525824,
		0.854179, 0.519774, -0.014600,
		32.560917, 29.762341, 32.320995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408577, 29.144806, 32.925343>,  <31.963003, 29.398481, 32.331230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408577, 29.144806, 32.925343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.460304, 29.519947, 32.796532>,  <32.491341, 29.745031, 32.719246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.460304, 29.519947, 32.796532>,  <32.408577, 29.144806, 32.925343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460304, 29.519947, 32.796532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387181, 0.346737, 0.854321,
		0.912889, 0.014202, 0.407961,
		0.129322, 0.937855, -0.322031,
		32.499100, 29.801304, 32.699921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741013, 29.436552, 33.439594>,  <32.408577, 29.144806, 32.925343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741013, 29.436552, 33.439594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595264, 29.759850, 33.254562>,  <32.507816, 29.953829, 33.143543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595264, 29.759850, 33.254562>,  <32.741013, 29.436552, 33.439594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595264, 29.759850, 33.254562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173966, 0.428904, 0.886441,
		0.914862, 0.403462, -0.015671,
		-0.364367, 0.808245, -0.462577,
		32.485954, 30.002323, 33.115788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995480, 30.054262, 33.825859>,  <32.741013, 29.436552, 33.439594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995480, 30.054262, 33.825859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.672234, 30.166132, 33.618500>,  <32.478287, 30.233253, 33.494083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.672234, 30.166132, 33.618500>,  <32.995480, 30.054262, 33.825859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672234, 30.166132, 33.618500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344837, 0.488881, 0.801301,
		0.477541, 0.826303, -0.298627,
		-0.808110, 0.279676, -0.518400,
		32.429802, 30.250034, 33.462978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278679, 30.662222, 34.164631>,  <32.995480, 30.054262, 33.825859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278679, 30.662222, 34.164631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564018, 30.716722, 34.439606>,  <33.735222, 30.749422, 34.604591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.564018, 30.716722, 34.439606>,  <33.278679, 30.662222, 34.164631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564018, 30.716722, 34.439606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511941, -0.771196, -0.378382,
		0.478597, 0.621846, -0.619881,
		0.713345, 0.136250, 0.687441,
		33.778023, 30.757597, 34.645840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850220, 30.482960, 33.794441>,  <33.278679, 30.662222, 34.164631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850220, 30.482960, 33.794441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982471, 30.475273, 34.171867>,  <34.061821, 30.470661, 34.398323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982471, 30.475273, 34.171867>,  <33.850220, 30.482960, 33.794441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982471, 30.475273, 34.171867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731212, -0.626878, -0.268986,
		0.596670, 0.778881, -0.193210,
		0.330627, -0.019219, 0.943566,
		34.081661, 30.469507, 34.454937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553665, 30.669994, 33.744347>,  <33.850220, 30.482960, 33.794441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553665, 30.669994, 33.744347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506134, 30.487316, 34.097008>,  <34.477615, 30.377708, 34.308605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506134, 30.487316, 34.097008>,  <34.553665, 30.669994, 33.744347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506134, 30.487316, 34.097008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647102, -0.709088, -0.280093,
		0.753086, 0.537235, 0.379789,
		-0.118828, -0.456697, 0.881651,
		34.470486, 30.350307, 34.361504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231117, 30.679840, 34.046421>,  <34.553665, 30.669994, 33.744347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231117, 30.679840, 34.046421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015034, 30.386578, 34.211662>,  <34.885384, 30.210619, 34.310806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015034, 30.386578, 34.211662>,  <35.231117, 30.679840, 34.046421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015034, 30.386578, 34.211662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671954, -0.671324, -0.312732,
		0.506605, 0.108642, 0.855306,
		-0.540212, -0.733158, 0.413098,
		34.852970, 30.166630, 34.335590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687775, 30.275726, 34.499489>,  <35.231117, 30.679840, 34.046421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687775, 30.275726, 34.499489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379658, 30.047018, 34.386547>,  <35.194786, 29.909792, 34.318783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379658, 30.047018, 34.386547>,  <35.687775, 30.275726, 34.499489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379658, 30.047018, 34.386547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637527, -0.700430, -0.320869,
		-0.014303, -0.427170, 0.904058,
		-0.770295, -0.571772, -0.282351,
		35.148571, 29.875486, 34.301842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851677, 29.759468, 34.812763>,  <35.687775, 30.275726, 34.499489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851677, 29.759468, 34.812763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574512, 29.648428, 34.546589>,  <35.408215, 29.581804, 34.386883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574512, 29.648428, 34.546589>,  <35.851677, 29.759468, 34.812763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574512, 29.648428, 34.546589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585563, -0.755154, -0.294716,
		-0.420695, -0.593869, 0.685810,
		-0.692915, -0.277600, -0.665438,
		35.366638, 29.565147, 34.346958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000397, 29.024965, 34.758854>,  <35.851677, 29.759468, 34.812763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000397, 29.024965, 34.758854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793236, 29.139479, 34.436409>,  <35.668941, 29.208187, 34.242943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793236, 29.139479, 34.436409>,  <36.000397, 29.024965, 34.758854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793236, 29.139479, 34.436409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574206, -0.582159, -0.575655,
		-0.634087, -0.761008, 0.137114,
		-0.517900, 0.286283, -0.806115,
		35.637867, 29.225363, 34.194576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851570, 28.444866, 34.502640>,  <36.000397, 29.024965, 34.758854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851570, 28.444866, 34.502640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872932, 28.735371, 34.228504>,  <35.885750, 28.909674, 34.064022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872932, 28.735371, 34.228504>,  <35.851570, 28.444866, 34.502640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872932, 28.735371, 34.228504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664978, -0.537874, -0.518166,
		-0.744951, -0.428065, -0.511673,
		0.053407, 0.726259, -0.685343,
		35.888954, 28.953249, 34.022900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879887, 28.135895, 33.752686>,  <35.851570, 28.444866, 34.502640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879887, 28.135895, 33.752686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975605, 28.517046, 33.678112>,  <36.033035, 28.745737, 33.633369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975605, 28.517046, 33.678112>,  <35.879887, 28.135895, 33.752686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975605, 28.517046, 33.678112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609049, -0.296850, -0.735486,
		-0.756172, 0.062456, -0.651386,
		0.239299, 0.952880, -0.186430,
		36.047394, 28.802910, 33.622185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822361, 28.151375, 33.020733>,  <35.879887, 28.135895, 33.752686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822361, 28.151375, 33.020733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041946, 28.467073, 33.130806>,  <36.173698, 28.656492, 33.196850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041946, 28.467073, 33.130806>,  <35.822361, 28.151375, 33.020733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041946, 28.467073, 33.130806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667365, -0.215654, -0.712824,
		-0.503252, 0.574961, -0.645103,
		0.548965, 0.789249, 0.275181,
		36.206635, 28.703848, 33.213360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024792, 28.311310, 32.281986>,  <35.822361, 28.151375, 33.020733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024792, 28.311310, 32.281986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264545, 28.490782, 32.547142>,  <36.408398, 28.598465, 32.706238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264545, 28.490782, 32.547142>,  <36.024792, 28.311310, 32.281986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264545, 28.490782, 32.547142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714149, 0.074326, -0.696037,
		-0.361567, 0.890597, -0.275873,
		0.599383, 0.448679, 0.662893,
		36.444359, 28.625385, 32.746010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367672, 28.869524, 31.937981>,  <36.024792, 28.311310, 32.281986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367672, 28.869524, 31.937981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594353, 28.813499, 32.262753>,  <36.730362, 28.779884, 32.457615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594353, 28.813499, 32.262753>,  <36.367672, 28.869524, 31.937981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594353, 28.813499, 32.262753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821038, 0.013644, -0.570711,
		0.068857, 0.990049, 0.122729,
		0.566706, -0.140063, 0.811928,
		36.764366, 28.771481, 32.506332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887897, 29.468052, 31.935705>,  <36.367672, 28.869524, 31.937981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887897, 29.468052, 31.935705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016800, 29.152765, 32.145416>,  <37.094139, 28.963594, 32.271244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016800, 29.152765, 32.145416>,  <36.887897, 29.468052, 31.935705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016800, 29.152765, 32.145416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832660, -0.027471, -0.553102,
		0.450366, 0.614786, 0.647463,
		0.322253, -0.788215, 0.524280,
		37.113476, 28.916300, 32.302700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435535, 29.694517, 32.233707>,  <36.887897, 29.468052, 31.935705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435535, 29.694517, 32.233707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.466217, 29.295834, 32.223228>,  <37.484627, 29.056623, 32.216942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.466217, 29.295834, 32.223228>,  <37.435535, 29.694517, 32.233707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466217, 29.295834, 32.223228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751318, 0.075056, -0.655659,
		0.655468, 0.030608, 0.754603,
		0.076705, -0.996709, -0.026200,
		37.489227, 28.996820, 32.215370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160110, 29.550835, 32.037407>,  <37.435535, 29.694517, 32.233707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160110, 29.550835, 32.037407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007359, 29.186243, 31.976254>,  <37.915707, 28.967487, 31.939560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.007359, 29.186243, 31.976254>,  <38.160110, 29.550835, 32.037407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007359, 29.186243, 31.976254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550711, -0.091568, -0.829658,
		0.742216, -0.401027, 0.536929,
		-0.381880, -0.911478, -0.152887,
		37.892796, 28.912800, 31.930387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694580, 29.150051, 31.835285>,  <38.160110, 29.550835, 32.037407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694580, 29.150051, 31.835285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379971, 28.945210, 31.697224>,  <38.191204, 28.822304, 31.614386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.379971, 28.945210, 31.697224>,  <38.694580, 29.150051, 31.835285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379971, 28.945210, 31.697224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547382, -0.319320, -0.773568,
		0.285934, -0.797359, 0.531470,
		-0.786521, -0.512106, -0.345155,
		38.144012, 28.791578, 31.593678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046345, 28.493893, 31.691086>,  <38.694580, 29.150051, 31.835285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046345, 28.493893, 31.691086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692677, 28.489702, 31.504267>,  <38.480476, 28.487188, 31.392176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692677, 28.489702, 31.504267>,  <39.046345, 28.493893, 31.691086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692677, 28.489702, 31.504267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357865, -0.657822, -0.662724,
		-0.300289, -0.753101, 0.585377,
		-0.884171, -0.010477, -0.467045,
		38.427425, 28.486559, 31.364153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911449, 27.769821, 31.554867>,  <39.046345, 28.493893, 31.691086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911449, 27.769821, 31.554867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673649, 27.962540, 31.297359>,  <38.530968, 28.078171, 31.142855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673649, 27.962540, 31.297359>,  <38.911449, 27.769821, 31.554867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673649, 27.962540, 31.297359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325364, -0.588007, -0.740531,
		-0.735325, -0.649708, 0.192813,
		-0.594505, 0.481796, -0.643768,
		38.495296, 28.107079, 31.104229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654606, 27.267418, 31.194153>,  <38.911449, 27.769821, 31.554867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654606, 27.267418, 31.194153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.608700, 27.568897, 30.935305>,  <38.581158, 27.749784, 30.779995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.608700, 27.568897, 30.935305>,  <38.654606, 27.267418, 31.194153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608700, 27.568897, 30.935305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297841, -0.595350, -0.746224,
		-0.947692, -0.278378, -0.156159,
		-0.114763, 0.753701, -0.647121,
		38.574272, 27.795008, 30.741169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.338799, 26.965521, 30.485081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457722, 27.326319, 30.359852>,  <38.529076, 27.542797, 30.284716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457722, 27.326319, 30.359852>,  <38.338799, 26.965521, 30.485081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457722, 27.326319, 30.359852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152710, -0.368598, -0.916960,
		-0.942491, 0.224807, -0.247329,
		0.297304, 0.901997, -0.313070,
		38.546913, 27.596918, 30.265930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920483, 27.197868, 29.832680>,  <38.338799, 26.965521, 30.485081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920483, 27.197868, 29.832680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280758, 27.371632, 29.829784>,  <38.496922, 27.475889, 29.828047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280758, 27.371632, 29.829784>,  <37.920483, 27.197868, 29.832680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280758, 27.371632, 29.829784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114336, -0.253063, -0.960670,
		-0.419155, 0.864435, -0.277599,
		0.900687, 0.434409, -0.007237,
		38.550964, 27.501955, 29.827614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937778, 27.554564, 29.185820>,  <37.920483, 27.197868, 29.832680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937778, 27.554564, 29.185820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318871, 27.501081, 29.294945>,  <38.547527, 27.468992, 29.360420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318871, 27.501081, 29.294945>,  <37.937778, 27.554564, 29.185820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318871, 27.501081, 29.294945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285178, 0.083893, -0.954796,
		0.104775, 0.987464, 0.118058,
		0.952731, -0.133706, 0.272813,
		38.604691, 27.460970, 29.376789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355087, 28.127264, 28.773018>,  <37.937778, 27.554564, 29.185820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355087, 28.127264, 28.773018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589596, 27.834410, 28.911732>,  <38.730301, 27.658697, 28.994959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589596, 27.834410, 28.911732>,  <38.355087, 28.127264, 28.773018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589596, 27.834410, 28.911732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488542, -0.021945, -0.872264,
		0.646227, 0.680804, 0.344814,
		0.586274, -0.732137, 0.346783,
		38.765476, 27.614769, 29.015766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042263, 28.442184, 28.595228>,  <38.355087, 28.127264, 28.773018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042263, 28.442184, 28.595228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.100643, 28.047802, 28.627684>,  <39.135674, 27.811172, 28.647158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.100643, 28.047802, 28.627684>,  <39.042263, 28.442184, 28.595228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100643, 28.047802, 28.627684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808881, 0.071714, -0.583583,
		0.569569, 0.150808, 0.807990,
		0.145953, -0.985958, 0.081139,
		39.144428, 27.752014, 28.652025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813007, 28.387478, 28.527607>,  <39.042263, 28.442184, 28.595228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813007, 28.387478, 28.527607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658382, 28.025400, 28.456953>,  <39.565609, 27.808153, 28.414560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658382, 28.025400, 28.456953>,  <39.813007, 28.387478, 28.527607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658382, 28.025400, 28.456953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736139, -0.187459, -0.650353,
		0.555583, -0.381427, 0.738811,
		-0.386558, -0.905192, -0.176634,
		39.542416, 27.753843, 28.403963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328709, 27.843948, 28.504133>,  <39.813007, 28.387478, 28.527607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328709, 27.843948, 28.504133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021332, 27.675962, 28.310997>,  <39.836906, 27.575171, 28.195116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021332, 27.675962, 28.310997>,  <40.328709, 27.843948, 28.504133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021332, 27.675962, 28.310997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635837, -0.415945, -0.650155,
		0.072207, -0.806611, 0.586656,
		-0.768438, -0.419963, -0.482839,
		39.790802, 27.549974, 28.166145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407803, 27.166286, 28.421225>,  <40.328709, 27.843948, 28.504133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407803, 27.166286, 28.421225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142616, 27.215960, 28.125914>,  <39.983505, 27.245764, 27.948727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142616, 27.215960, 28.125914>,  <40.407803, 27.166286, 28.421225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142616, 27.215960, 28.125914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605913, -0.490201, -0.626556,
		-0.439709, -0.862718, 0.249746,
		-0.662967, 0.124178, -0.738278,
		39.943726, 27.253214, 27.904430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317043, 26.567575, 28.062786>,  <40.407803, 27.166286, 28.421225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317043, 26.567575, 28.062786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.207638, 26.845854, 27.797096>,  <40.141994, 27.012821, 27.637682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.207638, 26.845854, 27.797096>,  <40.317043, 26.567575, 28.062786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207638, 26.845854, 27.797096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523026, -0.471974, -0.709707,
		-0.807238, -0.541525, -0.234774,
		-0.273517, 0.695695, -0.664227,
		40.125584, 27.054562, 27.597828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328938, 26.147545, 27.398785>,  <40.317043, 26.567575, 28.062786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328938, 26.147545, 27.398785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281239, 26.523712, 27.271416>,  <40.252621, 26.749413, 27.194994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281239, 26.523712, 27.271416>,  <40.328938, 26.147545, 27.398785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281239, 26.523712, 27.271416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435409, -0.238696, -0.868011,
		-0.892300, -0.242149, -0.381004,
		-0.119244, 0.940419, -0.318423,
		40.245464, 26.805838, 27.175888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070522, 26.108448, 26.740538>,  <40.328938, 26.147545, 27.398785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070522, 26.108448, 26.740538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.219425, 26.479683, 26.736965>,  <40.308765, 26.702423, 26.734821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.219425, 26.479683, 26.736965>,  <40.070522, 26.108448, 26.740538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219425, 26.479683, 26.736965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303832, -0.130950, -0.943683,
		-0.876990, 0.348578, -0.330729,
		0.372256, 0.928087, -0.008933,
		40.331100, 26.758108, 26.734285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916412, 26.334816, 26.036036>,  <40.070522, 26.108448, 26.740538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916412, 26.334816, 26.036036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.197567, 26.582167, 26.176638>,  <40.366261, 26.730577, 26.261000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.197567, 26.582167, 26.176638>,  <39.916412, 26.334816, 26.036036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197567, 26.582167, 26.176638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453088, -0.008292, -0.891427,
		-0.548325, 0.785837, -0.286008,
		0.702888, 0.618379, 0.351506,
		40.408432, 26.767681, 26.282089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904457, 26.973854, 25.534555>,  <39.916412, 26.334816, 26.036036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904457, 26.973854, 25.534555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250835, 26.981569, 25.734459>,  <40.458664, 26.986198, 25.854401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250835, 26.981569, 25.734459>,  <39.904457, 26.973854, 25.534555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250835, 26.981569, 25.734459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490624, 0.161140, -0.856342,
		-0.097050, 0.986743, 0.130075,
		0.865950, 0.019290, 0.499758,
		40.510620, 26.987356, 25.884386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404789, 27.615425, 25.315432>,  <39.904457, 26.973854, 25.534555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404789, 27.615425, 25.315432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629429, 27.311840, 25.447241>,  <40.764214, 27.129688, 25.526327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629429, 27.311840, 25.447241>,  <40.404789, 27.615425, 25.315432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629429, 27.311840, 25.447241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405819, -0.094406, -0.909065,
		0.721055, 0.644254, 0.254983,
		0.561597, -0.758962, 0.329523,
		40.797909, 27.084152, 25.546097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975216, 27.740368, 25.005613>,  <40.404789, 27.615425, 25.315432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975216, 27.740368, 25.005613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.075600, 27.373207, 25.128561>,  <41.135830, 27.152910, 25.202330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.075600, 27.373207, 25.128561>,  <40.975216, 27.740368, 25.005613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075600, 27.373207, 25.128561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527595, -0.136515, -0.838455,
		0.811579, 0.372588, 0.450020,
		0.250964, -0.917901, 0.307369,
		41.150890, 27.097837, 25.220772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717548, 27.631536, 24.968933>,  <40.975216, 27.740368, 25.005613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717548, 27.631536, 24.968933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.546627, 27.269964, 24.961754>,  <41.444073, 27.053020, 24.957447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.546627, 27.269964, 24.961754>,  <41.717548, 27.631536, 24.968933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546627, 27.269964, 24.961754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624814, -0.280898, -0.728494,
		0.653466, -0.322503, 0.684817,
		-0.427305, -0.903929, -0.017948,
		41.418434, 26.998785, 24.956369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203247, 27.020266, 25.298328>,  <41.717548, 27.631536, 24.968933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203247, 27.020266, 25.298328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.928501, 26.861156, 25.055019>,  <41.763653, 26.765692, 24.909035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.928501, 26.861156, 25.055019>,  <42.203247, 27.020266, 25.298328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928501, 26.861156, 25.055019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726418, -0.349077, -0.591999,
		0.023146, -0.848483, 0.528717,
		-0.686864, -0.397772, -0.608273,
		41.722443, 26.741825, 24.872538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481247, 26.392517, 25.100815>,  <42.203247, 27.020266, 25.298328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481247, 26.392517, 25.100815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.185966, 26.417673, 24.832159>,  <42.008797, 26.432768, 24.670965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.185966, 26.417673, 24.832159>,  <42.481247, 26.392517, 25.100815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185966, 26.417673, 24.832159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615505, -0.344649, -0.708782,
		-0.276053, -0.936623, 0.215714,
		-0.738206, 0.062889, -0.671637,
		41.964504, 26.436541, 24.630669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609802, 25.796745, 24.757872>,  <42.481247, 26.392517, 25.100815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609802, 25.796745, 24.757872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.378574, 26.014704, 24.514915>,  <42.239838, 26.145479, 24.369143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.378574, 26.014704, 24.514915>,  <42.609802, 25.796745, 24.757872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378574, 26.014704, 24.514915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551212, -0.288090, -0.783051,
		-0.601664, -0.787460, -0.133817,
		-0.578070, 0.544896, -0.607390,
		42.205154, 26.178173, 24.332699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312759, 25.384108, 24.075214>,  <42.609802, 25.796745, 24.757872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312759, 25.384108, 24.075214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366505, 25.778608, 24.036743>,  <42.398750, 26.015308, 24.013660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.366505, 25.778608, 24.036743>,  <42.312759, 25.384108, 24.075214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366505, 25.778608, 24.036743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373024, -0.140259, -0.917159,
		-0.918041, 0.087356, -0.386742,
		0.134363, 0.986254, -0.096178,
		42.406815, 26.074484, 24.007889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354488, 25.411821, 23.446741>,  <42.312759, 25.384108, 24.075214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354488, 25.411821, 23.446741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.475807, 25.780386, 23.543907>,  <42.548599, 26.001526, 23.602207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.475807, 25.780386, 23.543907>,  <42.354488, 25.411821, 23.446741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475807, 25.780386, 23.543907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560681, 0.033558, -0.827352,
		-0.770484, 0.387135, -0.506440,
		0.303301, 0.921412, 0.242915,
		42.566799, 26.056810, 23.616781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229599, 25.838820, 22.859560>,  <42.354488, 25.411821, 23.446741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229599, 25.838820, 22.859560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.524136, 25.986704, 23.086229>,  <42.700855, 26.075436, 23.222231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.524136, 25.986704, 23.086229>,  <42.229599, 25.838820, 22.859560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524136, 25.986704, 23.086229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538916, 0.185942, -0.821581,
		-0.409117, 0.910351, -0.062327,
		0.736338, 0.369712, 0.566675,
		42.745037, 26.097618, 23.256231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327427, 26.506777, 22.679440>,  <42.229599, 25.838820, 22.859560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327427, 26.506777, 22.679440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.669987, 26.410492, 22.862148>,  <42.875523, 26.352722, 22.971773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.669987, 26.410492, 22.862148>,  <42.327427, 26.506777, 22.679440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669987, 26.410492, 22.862148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506880, 0.223611, -0.832508,
		0.098254, 0.944487, 0.313512,
		0.856398, -0.240710, 0.456772,
		42.926907, 26.338280, 22.999180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621964, 26.763802, 22.648008>,  <42.327427, 26.506777, 22.679440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621964, 26.763802, 22.648008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.574684, 26.384918, 22.528795>,  <41.546318, 26.157587, 22.457268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.574684, 26.384918, 22.528795>,  <41.621964, 26.763802, 22.648008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574684, 26.384918, 22.528795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957498, 0.029191, 0.286958,
		-0.263110, 0.319281, -0.910403,
		-0.118195, -0.947210, -0.298031,
		41.539227, 26.100756, 22.439386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947926, 26.953716, 22.050564>,  <41.621964, 26.763802, 22.648008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947926, 26.953716, 22.050564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.783428, 26.969269, 21.686285>,  <41.684731, 26.978600, 21.467718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.783428, 26.969269, 21.686285>,  <41.947926, 26.953716, 22.050564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783428, 26.969269, 21.686285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901843, 0.127881, 0.412705,
		0.132507, 0.991027, -0.017526,
		-0.411243, 0.038881, -0.910696,
		41.660057, 26.980932, 21.413076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595394, 27.660141, 21.866871>,  <41.947926, 26.953716, 22.050564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595394, 27.660141, 21.866871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.437786, 27.370811, 21.640049>,  <41.343220, 27.197214, 21.503956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.437786, 27.370811, 21.640049>,  <41.595394, 27.660141, 21.866871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437786, 27.370811, 21.640049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886092, 0.135096, 0.443384,
		-0.244102, 0.677166, -0.694161,
		-0.394023, -0.723322, -0.567055,
		41.319580, 27.153814, 21.469933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989223, 27.921762, 21.598551>,  <41.595394, 27.660141, 21.866871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989223, 27.921762, 21.598551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.925724, 27.527098, 21.612934>,  <40.887623, 27.290298, 21.621563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.925724, 27.527098, 21.612934>,  <40.989223, 27.921762, 21.598551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925724, 27.527098, 21.612934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870334, 0.157042, 0.466751,
		-0.466173, 0.042802, -0.883658,
		-0.158749, -0.986664, 0.035957,
		40.878098, 27.231098, 21.623720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298779, 27.847204, 21.369656>,  <40.989223, 27.921762, 21.598551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298779, 27.847204, 21.369656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.382858, 27.523222, 21.588667>,  <40.433304, 27.328833, 21.720074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.382858, 27.523222, 21.588667>,  <40.298779, 27.847204, 21.369656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382858, 27.523222, 21.588667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815916, 0.163206, 0.554657,
		-0.538609, -0.563324, -0.626552,
		0.210195, -0.809957, 0.547529,
		40.445915, 27.280235, 21.752926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685493, 27.549000, 21.375418>,  <40.298779, 27.847204, 21.369656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685493, 27.549000, 21.375418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889488, 27.390804, 21.680967>,  <40.011887, 27.295887, 21.864296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889488, 27.390804, 21.680967>,  <39.685493, 27.549000, 21.375418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889488, 27.390804, 21.680967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790003, 0.135978, 0.597834,
		-0.340306, -0.908350, -0.243089,
		0.509988, -0.395487, 0.763873,
		40.042484, 27.272158, 21.910130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170895, 27.340820, 21.894806>,  <39.685493, 27.549000, 21.375418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170895, 27.340820, 21.894806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507069, 27.305729, 22.108713>,  <39.708771, 27.284674, 22.237059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507069, 27.305729, 22.108713>,  <39.170895, 27.340820, 21.894806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507069, 27.305729, 22.108713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539185, -0.036396, 0.841400,
		-0.054369, -0.995477, -0.077901,
		0.840431, -0.087749, 0.534768,
		39.759197, 27.279411, 22.269144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937668, 26.808228, 22.380274>,  <39.170895, 27.340820, 21.894806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937668, 26.808228, 22.380274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.240528, 27.028488, 22.520851>,  <39.422245, 27.160645, 22.605198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.240528, 27.028488, 22.520851>,  <38.937668, 26.808228, 22.380274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240528, 27.028488, 22.520851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498974, 0.140281, 0.855188,
		0.421610, -0.822863, 0.380974,
		0.757146, 0.550652, 0.351444,
		39.467670, 27.193684, 22.626284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009724, 26.504755, 23.039394>,  <38.937668, 26.808228, 22.380274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009724, 26.504755, 23.039394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.203293, 26.853167, 23.073151>,  <39.319435, 27.062214, 23.093405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.203293, 26.853167, 23.073151>,  <39.009724, 26.504755, 23.039394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203293, 26.853167, 23.073151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336312, 0.096079, 0.936837,
		0.807905, -0.481742, 0.339433,
		0.483926, 0.871030, 0.084393,
		39.348469, 27.114475, 23.098469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340816, 26.532318, 23.715233>,  <39.009724, 26.504755, 23.039394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340816, 26.532318, 23.715233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.332321, 26.916151, 23.602985>,  <39.327225, 27.146452, 23.535637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.332321, 26.916151, 23.602985>,  <39.340816, 26.532318, 23.715233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332321, 26.916151, 23.602985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210551, 0.270095, 0.939530,
		0.977352, 0.079039, 0.196305,
		-0.021239, 0.959584, -0.280619,
		39.325951, 27.204027, 23.518799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675274, 26.925615, 24.274847>,  <39.340816, 26.532318, 23.715233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675274, 26.925615, 24.274847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.467022, 27.205149, 24.078655>,  <39.342072, 27.372869, 23.960939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.467022, 27.205149, 24.078655>,  <39.675274, 26.925615, 24.274847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467022, 27.205149, 24.078655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319413, 0.373335, 0.870974,
		0.791781, 0.610124, 0.028847,
		-0.520633, 0.698835, -0.490481,
		39.310833, 27.414799, 23.931511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912861, 27.563219, 24.654757>,  <39.675274, 26.925615, 24.274847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912861, 27.563219, 24.654757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.552795, 27.619020, 24.489717>,  <39.336754, 27.652500, 24.390694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.552795, 27.619020, 24.489717>,  <39.912861, 27.563219, 24.654757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552795, 27.619020, 24.489717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396725, 0.128318, 0.908925,
		0.179741, 0.981873, -0.060163,
		-0.900168, 0.139502, -0.412597,
		39.282745, 27.660872, 24.365938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631100, 28.088388, 24.993216>,  <39.912861, 27.563219, 24.654757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631100, 28.088388, 24.993216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316696, 27.920183, 24.811951>,  <39.128056, 27.819260, 24.703192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316696, 27.920183, 24.811951>,  <39.631100, 28.088388, 24.993216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316696, 27.920183, 24.811951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524181, 0.064705, 0.849145,
		-0.327755, 0.904976, -0.271284,
		-0.786009, -0.420514, -0.453164,
		39.080894, 27.794029, 24.676001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038605, 28.550673, 25.202164>,  <39.631100, 28.088388, 24.993216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038605, 28.550673, 25.202164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861023, 28.215801, 25.074389>,  <38.754475, 28.014879, 24.997725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861023, 28.215801, 25.074389>,  <39.038605, 28.550673, 25.202164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861023, 28.215801, 25.074389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666316, 0.070086, 0.742368,
		-0.599106, 0.542422, -0.588940,
		-0.443954, -0.837177, -0.319436,
		38.727837, 27.964647, 24.978558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283337, 28.696260, 25.241329>,  <39.038605, 28.550673, 25.202164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283337, 28.696260, 25.241329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322659, 28.298204, 25.243444>,  <38.346252, 28.059370, 25.244713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322659, 28.298204, 25.243444>,  <38.283337, 28.696260, 25.241329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322659, 28.298204, 25.243444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516177, -0.046448, 0.855222,
		-0.850822, -0.086803, -0.518235,
		0.098307, -0.995142, 0.005287,
		38.352150, 27.999662, 25.245031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627640, 28.455128, 25.224140>,  <38.283337, 28.696260, 25.241329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627640, 28.455128, 25.224140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841358, 28.142990, 25.354124>,  <37.969589, 27.955708, 25.432116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841358, 28.142990, 25.354124>,  <37.627640, 28.455128, 25.224140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841358, 28.142990, 25.354124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577646, -0.056390, 0.814337,
		-0.617137, -0.622805, -0.480891,
		0.534291, -0.780342, 0.324960,
		38.001644, 27.908888, 25.451612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141895, 27.857523, 25.406328>,  <37.627640, 28.455128, 25.224140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141895, 27.857523, 25.406328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472687, 27.787539, 25.620054>,  <37.671162, 27.745548, 25.748291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472687, 27.787539, 25.620054>,  <37.141895, 27.857523, 25.406328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472687, 27.787539, 25.620054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561133, -0.197423, 0.803837,
		-0.035155, -0.964579, -0.261442,
		0.826979, -0.174963, 0.534317,
		37.720779, 27.735050, 25.780350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014023, 27.276844, 25.771957>,  <37.141895, 27.857523, 25.406328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014023, 27.276844, 25.771957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300842, 27.472313, 25.970770>,  <37.472935, 27.589594, 26.090057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300842, 27.472313, 25.970770>,  <37.014023, 27.276844, 25.771957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300842, 27.472313, 25.970770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550197, -0.040972, 0.834029,
		0.427931, -0.871505, 0.239488,
		0.717048, 0.488673, 0.497033,
		37.515957, 27.618914, 26.119881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228733, 26.774397, 26.279276>,  <37.014023, 27.276844, 25.771957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228733, 26.774397, 26.279276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328941, 27.143003, 26.397966>,  <37.389069, 27.364168, 26.469181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328941, 27.143003, 26.397966>,  <37.228733, 26.774397, 26.279276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328941, 27.143003, 26.397966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583041, -0.101065, 0.806132,
		0.772853, -0.374957, 0.511963,
		0.250523, 0.921517, 0.296724,
		37.404099, 27.419458, 26.486984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279533, 26.693550, 27.011049>,  <37.228733, 26.774397, 26.279276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279533, 26.693550, 27.011049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274025, 27.090961, 26.965946>,  <37.270718, 27.329409, 26.938885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274025, 27.090961, 26.965946>,  <37.279533, 26.693550, 27.011049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274025, 27.090961, 26.965946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644747, 0.077368, 0.760471,
		0.764272, 0.083175, 0.639508,
		-0.013775, 0.993527, -0.112757,
		37.269894, 27.389019, 26.932119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449749, 26.929455, 27.598858>,  <37.279533, 26.693550, 27.011049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449749, 26.929455, 27.598858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.244743, 27.208658, 27.398813>,  <37.121738, 27.376181, 27.278788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.244743, 27.208658, 27.398813>,  <37.449749, 26.929455, 27.598858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244743, 27.208658, 27.398813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696901, 0.002130, 0.717164,
		0.501651, 0.716087, 0.485351,
		-0.512518, 0.698008, -0.500111,
		37.090988, 27.418060, 27.248779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.616024, 27.973192, 33.069580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.478603, 28.274189, 32.844818>,  <37.396152, 28.454786, 32.709961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.478603, 28.274189, 32.844818>,  <37.616024, 27.973192, 33.069580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478603, 28.274189, 32.844818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530153, 0.338473, 0.777415,
		0.775186, 0.564973, 0.282654,
		-0.343547, 0.752490, -0.561902,
		37.375538, 28.499937, 32.676247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613949, 28.553146, 33.500351>,  <37.616024, 27.973192, 33.069580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613949, 28.553146, 33.500351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.342815, 28.617743, 33.213448>,  <37.180134, 28.656500, 33.041306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.342815, 28.617743, 33.213448>,  <37.613949, 28.553146, 33.500351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342815, 28.617743, 33.213448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645127, 0.337272, 0.685608,
		0.352628, 0.927453, -0.124436,
		-0.677838, 0.161488, -0.717257,
		37.139465, 28.666189, 32.998272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313747, 29.198727, 33.511944>,  <37.613949, 28.553146, 33.500351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313747, 29.198727, 33.511944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031952, 29.033558, 33.281052>,  <36.862873, 28.934456, 33.142517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031952, 29.033558, 33.281052>,  <37.313747, 29.198727, 33.511944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031952, 29.033558, 33.281052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703196, 0.296134, 0.646390,
		-0.095973, 0.861278, -0.498989,
		-0.704489, -0.412923, -0.577226,
		36.820606, 28.909681, 33.107883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937401, 29.692854, 33.562832>,  <37.313747, 29.198727, 33.511944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937401, 29.692854, 33.562832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.690102, 29.394526, 33.463627>,  <36.541721, 29.215528, 33.404102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.690102, 29.394526, 33.463627>,  <36.937401, 29.692854, 33.562832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690102, 29.394526, 33.463627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703229, 0.383964, 0.598365,
		-0.351045, 0.544352, -0.761871,
		-0.618253, -0.745823, -0.248016,
		36.504627, 29.170778, 33.389221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304695, 30.068695, 33.489441>,  <36.937401, 29.692854, 33.562832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304695, 30.068695, 33.489441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.217834, 29.678667, 33.507721>,  <36.165718, 29.444651, 33.518688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.217834, 29.678667, 33.507721>,  <36.304695, 30.068695, 33.489441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217834, 29.678667, 33.507721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912561, 0.219403, 0.345102,
		-0.346524, 0.033236, -0.937452,
		-0.217149, -0.975068, 0.045698,
		36.152691, 29.386147, 33.521431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679604, 29.997257, 33.260624>,  <36.304695, 30.068695, 33.489441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679604, 29.997257, 33.260624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738922, 29.656126, 33.460903>,  <35.774513, 29.451448, 33.581070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738922, 29.656126, 33.460903>,  <35.679604, 29.997257, 33.260624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738922, 29.656126, 33.460903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894283, 0.100510, 0.436068,
		-0.422215, -0.512430, -0.747763,
		0.148297, -0.852827, 0.500695,
		35.783413, 29.400278, 33.611111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995728, 29.590885, 33.144012>,  <35.679604, 29.997257, 33.260624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995728, 29.590885, 33.144012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.186607, 29.440153, 33.461571>,  <35.301136, 29.349712, 33.652107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.186607, 29.440153, 33.461571>,  <34.995728, 29.590885, 33.144012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186607, 29.440153, 33.461571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750795, 0.294678, 0.591162,
		-0.456714, -0.878158, -0.142304,
		0.477200, -0.376833, 0.793900,
		35.329769, 29.327103, 33.699741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476536, 29.201105, 33.465202>,  <34.995728, 29.590885, 33.144012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476536, 29.201105, 33.465202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.752434, 29.312450, 33.732567>,  <34.917973, 29.379257, 33.892986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.752434, 29.312450, 33.732567>,  <34.476536, 29.201105, 33.465202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752434, 29.312450, 33.732567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675152, 0.580774, 0.454831,
		-0.261587, -0.764993, 0.588521,
		0.689741, 0.278363, 0.668410,
		34.959354, 29.395960, 33.933090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147106, 29.149649, 34.100513>,  <34.476536, 29.201105, 33.465202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147106, 29.149649, 34.100513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468449, 29.376215, 34.174049>,  <34.661255, 29.512156, 34.218170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468449, 29.376215, 34.174049>,  <34.147106, 29.149649, 34.100513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468449, 29.376215, 34.174049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519445, 0.515561, 0.681449,
		0.291207, -0.642936, 0.708401,
		0.803352, 0.566418, 0.183835,
		34.709454, 29.546141, 34.229198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116959, 29.243437, 34.846397>,  <34.147106, 29.149649, 34.100513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116959, 29.243437, 34.846397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.360130, 29.510212, 34.674065>,  <34.506035, 29.670277, 34.570663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.360130, 29.510212, 34.674065>,  <34.116959, 29.243437, 34.846397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360130, 29.510212, 34.674065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455354, 0.737372, 0.498934,
		0.650440, -0.107137, 0.751963,
		0.607931, 0.666936, -0.430832,
		34.542511, 29.710293, 34.544815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265053, 29.630762, 35.423737>,  <34.116959, 29.243437, 34.846397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265053, 29.630762, 35.423737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.364906, 29.867683, 35.117310>,  <34.424820, 30.009836, 34.933453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.364906, 29.867683, 35.117310>,  <34.265053, 29.630762, 35.423737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364906, 29.867683, 35.117310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523805, 0.747977, 0.407626,
		0.814439, 0.299512, 0.496972,
		0.249635, 0.592304, -0.766067,
		34.439796, 30.045374, 34.887489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503380, 30.208984, 35.718094>,  <34.265053, 29.630762, 35.423737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503380, 30.208984, 35.718094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.401333, 30.310394, 35.344860>,  <34.340107, 30.371241, 35.120922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.401333, 30.310394, 35.344860>,  <34.503380, 30.208984, 35.718094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401333, 30.310394, 35.344860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286465, 0.901871, 0.323366,
		0.923501, 0.349791, -0.157455,
		-0.255115, 0.253524, -0.933082,
		34.324799, 30.386452, 35.064934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740803, 30.902811, 35.483433>,  <34.503380, 30.208984, 35.718094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740803, 30.902811, 35.483433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434780, 30.840603, 35.233471>,  <34.251167, 30.803278, 35.083492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434780, 30.840603, 35.233471>,  <34.740803, 30.902811, 35.483433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434780, 30.840603, 35.233471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456638, 0.815251, 0.356156,
		0.454066, 0.557834, -0.694727,
		-0.765053, -0.155521, -0.624906,
		34.205265, 30.793947, 35.045998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469856, 31.610130, 35.216587>,  <34.740803, 30.902811, 35.483433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469856, 31.610130, 35.216587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.169586, 31.352577, 35.157387>,  <33.989426, 31.198046, 35.121868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.169586, 31.352577, 35.157387>,  <34.469856, 31.610130, 35.216587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169586, 31.352577, 35.157387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660414, 0.725025, 0.195427,
		-0.018530, 0.244442, -0.969487,
		-0.750673, -0.643884, -0.147998,
		33.944386, 31.159412, 35.112988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226784, 32.346233, 35.208923>,  <34.469856, 31.610130, 35.216587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226784, 32.346233, 35.208923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.503357, 32.588394, 35.051239>,  <34.669300, 32.733692, 34.956627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.503357, 32.588394, 35.051239>,  <34.226784, 32.346233, 35.208923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503357, 32.588394, 35.051239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370757, -0.170969, -0.912857,
		-0.620048, 0.777337, 0.106245,
		0.691433, 0.605406, -0.394213,
		34.710789, 32.770016, 34.932976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912357, 32.698288, 34.749622>,  <34.226784, 32.346233, 35.208923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912357, 32.698288, 34.749622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.276234, 32.809559, 34.626286>,  <34.494560, 32.876324, 34.552284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.276234, 32.809559, 34.626286>,  <33.912357, 32.698288, 34.749622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276234, 32.809559, 34.626286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341668, 0.079291, -0.936470,
		-0.236058, 0.957251, 0.167175,
		0.909692, 0.278179, -0.308345,
		34.549141, 32.893013, 34.533783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875343, 33.256969, 34.370857>,  <33.912357, 32.698288, 34.749622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875343, 33.256969, 34.370857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.229580, 33.121841, 34.243359>,  <34.442123, 33.040764, 34.166859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.229580, 33.121841, 34.243359>,  <33.875343, 33.256969, 34.370857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229580, 33.121841, 34.243359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225120, 0.288074, -0.930771,
		0.406261, 0.896040, 0.179065,
		0.885592, -0.337825, -0.318750,
		34.495258, 33.020493, 34.147732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185825, 33.811386, 33.891903>,  <33.875343, 33.256969, 34.370857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185825, 33.811386, 33.891903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.344620, 33.455883, 33.800247>,  <34.439896, 33.242580, 33.745255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.344620, 33.455883, 33.800247>,  <34.185825, 33.811386, 33.891903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344620, 33.455883, 33.800247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044311, 0.230801, -0.971992,
		0.916752, 0.396025, 0.052244,
		0.396991, -0.888761, -0.229135,
		34.463718, 33.189255, 33.731506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699059, 33.974144, 33.417095>,  <34.185825, 33.811386, 33.891903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699059, 33.974144, 33.417095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.603065, 33.589737, 33.362175>,  <34.545467, 33.359093, 33.329224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.603065, 33.589737, 33.362175>,  <34.699059, 33.974144, 33.417095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603065, 33.589737, 33.362175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208935, 0.086984, -0.974053,
		0.948026, -0.262444, 0.179915,
		-0.239984, -0.961019, -0.137296,
		34.531071, 33.301430, 33.320988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111595, 33.870300, 32.800533>,  <34.699059, 33.974144, 33.417095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111595, 33.870300, 32.800533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866993, 33.556046, 32.838146>,  <34.720234, 33.367493, 32.860714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866993, 33.556046, 32.838146>,  <35.111595, 33.870300, 32.800533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866993, 33.556046, 32.838146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085736, -0.052348, -0.994942,
		0.786584, -0.616470, -0.035346,
		-0.611502, -0.785636, 0.094030,
		34.683544, 33.320354, 32.866356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426498, 33.197239, 32.552944>,  <35.111595, 33.870300, 32.800533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426498, 33.197239, 32.552944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.029278, 33.153946, 32.534477>,  <34.790947, 33.127972, 32.523396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.029278, 33.153946, 32.534477>,  <35.426498, 33.197239, 32.552944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029278, 33.153946, 32.534477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068379, -0.211458, -0.974992,
		0.095764, -0.971376, 0.217390,
		-0.993053, -0.108234, -0.046172,
		34.731361, 33.121475, 32.520626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410328, 32.607235, 32.198895>,  <35.426498, 33.197239, 32.552944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410328, 32.607235, 32.198895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.053516, 32.784203, 32.161926>,  <34.839428, 32.890385, 32.139744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.053516, 32.784203, 32.161926>,  <35.410328, 32.607235, 32.198895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053516, 32.784203, 32.161926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130366, 0.056059, -0.989880,
		-0.432760, -0.895055, -0.107683,
		-0.892033, 0.442419, -0.092425,
		34.785908, 32.916927, 32.134197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197586, 32.289452, 31.619251>,  <35.410328, 32.607235, 32.198895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197586, 32.289452, 31.619251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.942669, 32.596184, 31.649803>,  <34.789719, 32.780224, 31.668135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.942669, 32.596184, 31.649803>,  <35.197586, 32.289452, 31.619251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942669, 32.596184, 31.649803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006375, 0.104357, -0.994520,
		-0.770598, -0.633310, -0.071394,
		-0.637289, 0.766830, 0.076380,
		34.751484, 32.826233, 31.672718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655136, 32.074841, 31.171097>,  <35.197586, 32.289452, 31.619251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655136, 32.074841, 31.171097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.638168, 32.470280, 31.228899>,  <34.627987, 32.707542, 31.263580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.638168, 32.470280, 31.228899>,  <34.655136, 32.074841, 31.171097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638168, 32.470280, 31.228899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004755, 0.144435, -0.989503,
		-0.999089, -0.042661, -0.001426,
		-0.042419, 0.988594, 0.144506,
		34.625443, 32.766857, 31.272251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242119, 32.324448, 30.681835>,  <34.655136, 32.074841, 31.171097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242119, 32.324448, 30.681835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.458038, 32.646923, 30.778730>,  <34.587589, 32.840408, 30.836868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.458038, 32.646923, 30.778730>,  <34.242119, 32.324448, 30.681835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458038, 32.646923, 30.778730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228491, 0.136640, -0.963910,
		-0.810192, 0.575666, -0.110448,
		0.539798, 0.806188, 0.242239,
		34.619976, 32.888779, 30.851402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120911, 32.807545, 30.169123>,  <34.242119, 32.324448, 30.681835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120911, 32.807545, 30.169123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.460262, 32.947876, 30.327703>,  <34.663872, 33.032074, 30.422852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.460262, 32.947876, 30.327703>,  <34.120911, 32.807545, 30.169123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460262, 32.947876, 30.327703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324521, 0.247032, -0.913051,
		-0.418263, 0.903268, 0.095724,
		0.848376, 0.350831, 0.396453,
		34.714775, 33.053123, 30.446640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319115, 33.200661, 29.712120>,  <34.120911, 32.807545, 30.169123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319115, 33.200661, 29.712120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.649250, 33.124874, 29.924879>,  <34.847332, 33.079403, 30.052534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.649250, 33.124874, 29.924879>,  <34.319115, 33.200661, 29.712120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649250, 33.124874, 29.924879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553956, 0.089357, -0.827737,
		0.109302, 0.977812, 0.178708,
		0.825340, -0.189469, 0.531898,
		34.896851, 33.068035, 30.084448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839447, 33.661320, 29.488512>,  <34.319115, 33.200661, 29.712120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839447, 33.661320, 29.488512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030994, 33.348621, 29.648293>,  <35.145924, 33.161003, 29.744160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030994, 33.348621, 29.648293>,  <34.839447, 33.661320, 29.488512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030994, 33.348621, 29.648293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585831, -0.054321, -0.808611,
		0.653827, 0.621226, 0.431959,
		0.478866, -0.781746, 0.399450,
		35.174656, 33.114098, 29.768127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969238, 34.431133, 29.672552>,  <34.839447, 33.661320, 29.488512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969238, 34.431133, 29.672552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.765282, 34.637192, 29.396978>,  <34.642906, 34.760826, 29.231634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.765282, 34.637192, 29.396978>,  <34.969238, 34.431133, 29.672552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765282, 34.637192, 29.396978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835606, -0.106334, 0.538940,
		0.204377, 0.850479, 0.484681,
		-0.509895, 0.515149, -0.688933,
		34.612312, 34.791737, 29.190298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723148, 34.998772, 30.005283>,  <34.969238, 34.431133, 29.672552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723148, 34.998772, 30.005283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490017, 34.921371, 29.689594>,  <34.350140, 34.874931, 29.500181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490017, 34.921371, 29.689594>,  <34.723148, 34.998772, 30.005283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490017, 34.921371, 29.689594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778634, -0.144868, 0.610526,
		-0.232469, 0.970346, -0.066231,
		-0.582827, -0.193499, -0.789222,
		34.315170, 34.863323, 29.452827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097210, 35.232357, 30.263994>,  <34.723148, 34.998772, 30.005283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097210, 35.232357, 30.263994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.975758, 35.047577, 29.930670>,  <33.902885, 34.936710, 29.730675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.975758, 35.047577, 29.930670>,  <34.097210, 35.232357, 30.263994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975758, 35.047577, 29.930670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843136, -0.277078, 0.460813,
		-0.443766, 0.842513, -0.305358,
		-0.303633, -0.461952, -0.833311,
		33.884666, 34.908993, 29.680676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350677, 35.387928, 30.173399>,  <34.097210, 35.232357, 30.263994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350677, 35.387928, 30.173399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.410255, 35.047192, 29.972528>,  <33.446003, 34.842751, 29.852007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.410255, 35.047192, 29.972528>,  <33.350677, 35.387928, 30.173399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410255, 35.047192, 29.972528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844290, -0.373920, 0.383873,
		-0.514772, 0.366806, -0.774895,
		0.148942, -0.851843, -0.502175,
		33.454937, 34.791637, 29.821877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715366, 35.299614, 29.689413>,  <33.350677, 35.387928, 30.173399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715366, 35.299614, 29.689413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.895622, 34.951958, 29.770918>,  <33.003777, 34.743362, 29.819820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.895622, 34.951958, 29.770918>,  <32.715366, 35.299614, 29.689413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895622, 34.951958, 29.770918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842306, -0.338362, 0.419560,
		-0.295711, -0.360702, -0.884562,
		0.450638, -0.869140, 0.203764,
		33.030815, 34.691216, 29.832047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179749, 34.758812, 29.707640>,  <32.715366, 35.299614, 29.689413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179749, 34.758812, 29.707640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.471104, 34.555145, 29.891033>,  <32.645916, 34.432945, 30.001070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.471104, 34.555145, 29.891033>,  <32.179749, 34.758812, 29.707640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471104, 34.555145, 29.891033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682307, -0.477938, 0.553202,
		-0.062542, -0.715772, -0.695528,
		0.728386, -0.509162, 0.458484,
		32.689621, 34.402397, 30.028578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968222, 34.066692, 29.777557>,  <32.179749, 34.758812, 29.707640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968222, 34.066692, 29.777557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.260021, 34.068413, 30.051144>,  <32.435101, 34.069443, 30.215296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.260021, 34.068413, 30.051144>,  <31.968222, 34.066692, 29.777557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260021, 34.068413, 30.051144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581131, -0.523477, 0.623105,
		0.360719, -0.852029, -0.379379,
		0.729499, 0.004297, 0.683968,
		32.478870, 34.069702, 30.256334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944992, 33.418129, 29.936340>,  <31.968222, 34.066692, 29.777557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944992, 33.418129, 29.936340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.138954, 33.611607, 30.227795>,  <32.255329, 33.727692, 30.402668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.138954, 33.611607, 30.227795>,  <31.944992, 33.418129, 29.936340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138954, 33.611607, 30.227795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508652, -0.521762, 0.684863,
		0.711437, -0.702715, -0.006975,
		0.484903, 0.483689, 0.728638,
		32.284424, 33.756714, 30.446386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201336, 32.913330, 30.506063>,  <31.944992, 33.418129, 29.936340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201336, 32.913330, 30.506063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.178524, 33.259373, 30.705400>,  <32.164837, 33.466999, 30.825003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.178524, 33.259373, 30.705400>,  <32.201336, 32.913330, 30.506063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178524, 33.259373, 30.705400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457037, -0.466404, 0.757354,
		0.887618, -0.184569, 0.421982,
		-0.057030, 0.865102, 0.498343,
		32.161415, 33.518902, 30.854904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247261, 32.698017, 31.183609>,  <32.201336, 32.913330, 30.506063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247261, 32.698017, 31.183609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.101791, 33.069611, 31.211100>,  <32.014507, 33.292568, 31.227594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.101791, 33.069611, 31.211100>,  <32.247261, 32.698017, 31.183609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101791, 33.069611, 31.211100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561081, -0.277348, 0.779914,
		0.743591, 0.245076, 0.622101,
		-0.363677, 0.928986, 0.068726,
		31.992689, 33.348305, 31.231718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231968, 32.768250, 31.878540>,  <32.247261, 32.698017, 31.183609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231968, 32.768250, 31.878540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.993807, 33.039631, 31.706400>,  <31.850910, 33.202461, 31.603115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.993807, 33.039631, 31.706400>,  <32.231968, 32.768250, 31.878540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993807, 33.039631, 31.706400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715512, -0.204130, 0.668112,
		0.365435, 0.705715, 0.606979,
		-0.595399, 0.678452, -0.430351,
		31.815187, 33.243168, 31.577295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887564, 33.081997, 32.409370>,  <32.231968, 32.768250, 31.878540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887564, 33.081997, 32.409370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.641602, 33.160961, 32.103973>,  <31.494024, 33.208340, 31.920734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.641602, 33.160961, 32.103973>,  <31.887564, 33.081997, 32.409370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641602, 33.160961, 32.103973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788265, -0.125609, 0.602379,
		0.023012, 0.972241, 0.232847,
		-0.614905, 0.197407, -0.763494,
		31.457130, 33.220184, 31.874926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.654716, 34.388309, 27.895060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512222, 34.362209, 27.522213>,  <37.426727, 34.346550, 27.298506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512222, 34.362209, 27.522213>,  <37.654716, 34.388309, 27.895060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512222, 34.362209, 27.522213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803038, 0.531402, 0.269708,
		0.477730, 0.844603, -0.241702,
		-0.356237, -0.065248, -0.932115,
		37.405350, 34.342636, 27.242579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413235, 35.120552, 27.687719>,  <37.654716, 34.388309, 27.895060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413235, 35.120552, 27.687719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236057, 34.842365, 27.461399>,  <37.129749, 34.675453, 27.325607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236057, 34.842365, 27.461399>,  <37.413235, 35.120552, 27.687719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236057, 34.842365, 27.461399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891666, 0.407497, 0.197174,
		0.093435, 0.591842, -0.800620,
		-0.442946, -0.695463, -0.565800,
		37.103172, 34.633728, 27.291658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977962, 35.487011, 27.242559>,  <37.413235, 35.120552, 27.687719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977962, 35.487011, 27.242559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827980, 35.116409, 27.255213>,  <36.737991, 34.894047, 27.262804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827980, 35.116409, 27.255213>,  <36.977962, 35.487011, 27.242559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827980, 35.116409, 27.255213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919199, 0.375994, 0.117054,
		-0.120345, 0.014813, -0.992622,
		-0.374954, -0.926504, 0.031633,
		36.715492, 34.838459, 27.264702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330841, 35.566792, 26.853502>,  <36.977962, 35.487011, 27.242559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330841, 35.566792, 26.853502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296940, 35.225025, 27.058554>,  <36.276600, 35.019966, 27.181583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296940, 35.225025, 27.058554>,  <36.330841, 35.566792, 26.853502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296940, 35.225025, 27.058554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871054, 0.313350, 0.378254,
		-0.483819, -0.414466, -0.770803,
		-0.084758, -0.854418, 0.512627,
		36.271511, 34.968700, 27.212341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492722, 35.366016, 26.935093>,  <36.330841, 35.566792, 26.853502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492722, 35.366016, 26.935093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668007, 35.167896, 27.235130>,  <35.773178, 35.049023, 27.415154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668007, 35.167896, 27.235130>,  <35.492722, 35.366016, 26.935093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668007, 35.167896, 27.235130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810286, 0.143563, 0.568178,
		-0.389106, -0.856775, -0.338426,
		0.438216, -0.495304, 0.750094,
		35.799473, 35.019306, 27.460159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907795, 35.104191, 27.295805>,  <35.492722, 35.366016, 26.935093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907795, 35.104191, 27.295805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206844, 35.029232, 27.550657>,  <35.386272, 34.984257, 27.703569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206844, 35.029232, 27.550657>,  <34.907795, 35.104191, 27.295805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206844, 35.029232, 27.550657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659387, -0.095114, 0.745763,
		-0.079160, -0.977667, -0.194682,
		0.747625, -0.187405, 0.637132,
		35.431133, 34.973011, 27.741796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881821, 34.479282, 27.564058>,  <34.907795, 35.104191, 27.295805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881821, 34.479282, 27.564058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062923, 34.704288, 27.840778>,  <35.171585, 34.839294, 28.006809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062923, 34.704288, 27.840778>,  <34.881821, 34.479282, 27.564058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062923, 34.704288, 27.840778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767487, -0.149057, 0.623495,
		0.453844, -0.813238, 0.364239,
		0.452758, 0.562518, 0.691798,
		35.198750, 34.873043, 28.048317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967865, 34.034199, 28.113710>,  <34.881821, 34.479282, 27.564058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967865, 34.034199, 28.113710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971497, 34.410549, 28.249166>,  <34.973675, 34.636360, 28.330441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971497, 34.410549, 28.249166>,  <34.967865, 34.034199, 28.113710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971497, 34.410549, 28.249166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652267, -0.251117, 0.715183,
		0.757935, -0.227373, 0.611422,
		0.009075, 0.940872, 0.338639,
		34.974220, 34.692810, 28.350758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030575, 34.011505, 28.802584>,  <34.967865, 34.034199, 28.113710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030575, 34.011505, 28.802584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886314, 34.377201, 28.728718>,  <34.799759, 34.596619, 28.684399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886314, 34.377201, 28.728718>,  <35.030575, 34.011505, 28.802584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886314, 34.377201, 28.728718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661840, -0.111347, 0.741329,
		0.657189, 0.389579, 0.645237,
		-0.360652, 0.914238, -0.184663,
		34.778118, 34.651474, 28.673319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562931, 33.756046, 29.355478>,  <35.030575, 34.011505, 28.802584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562931, 33.756046, 29.355478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584316, 33.369705, 29.456882>,  <35.597149, 33.137901, 29.517725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584316, 33.369705, 29.456882>,  <35.562931, 33.756046, 29.355478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584316, 33.369705, 29.456882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859917, -0.084528, -0.503386,
		0.507626, 0.244911, 0.826035,
		0.053462, -0.965854, 0.253511,
		35.600353, 33.079948, 29.532936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305756, 33.641327, 29.566830>,  <35.562931, 33.756046, 29.355478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305756, 33.641327, 29.566830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112022, 33.300137, 29.489016>,  <35.995781, 33.095421, 29.442327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112022, 33.300137, 29.489016>,  <36.305756, 33.641327, 29.566830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112022, 33.300137, 29.489016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811386, -0.354776, -0.464528,
		0.327215, -0.382833, 0.863926,
		-0.484337, -0.852979, -0.194537,
		35.966721, 33.044243, 29.430655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695133, 33.055801, 29.874779>,  <36.305756, 33.641327, 29.566830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695133, 33.055801, 29.874779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476238, 32.948219, 29.557743>,  <36.344902, 32.883671, 29.367521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476238, 32.948219, 29.557743>,  <36.695133, 33.055801, 29.874779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476238, 32.948219, 29.557743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836045, -0.220329, -0.502478,
		-0.039486, -0.937614, 0.345429,
		-0.547239, -0.268953, -0.792587,
		36.312065, 32.867535, 29.319967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018688, 32.516319, 29.605789>,  <36.695133, 33.055801, 29.874779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018688, 32.516319, 29.605789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789009, 32.577389, 29.284046>,  <36.651203, 32.614033, 29.091000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789009, 32.577389, 29.284046>,  <37.018688, 32.516319, 29.605789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789009, 32.577389, 29.284046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656588, -0.501013, -0.563806,
		-0.489072, -0.851867, 0.187436,
		-0.574196, 0.152673, -0.804357,
		36.616753, 32.623192, 29.042740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984238, 31.812361, 29.294945>,  <37.018688, 32.516319, 29.605789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984238, 31.812361, 29.294945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852077, 32.040615, 28.994223>,  <36.772781, 32.177567, 28.813789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852077, 32.040615, 28.994223>,  <36.984238, 31.812361, 29.294945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852077, 32.040615, 28.994223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560327, -0.522395, -0.642757,
		-0.759520, -0.633623, -0.147145,
		-0.330398, 0.570636, -0.751806,
		36.752956, 32.211807, 28.768681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782433, 31.373960, 28.743929>,  <36.984238, 31.812361, 29.294945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782433, 31.373960, 28.743929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859566, 31.735868, 28.592030>,  <36.905846, 31.953012, 28.500891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859566, 31.735868, 28.592030>,  <36.782433, 31.373960, 28.743929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859566, 31.735868, 28.592030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580046, -0.417257, -0.699602,
		-0.791431, -0.085367, -0.605268,
		0.192830, 0.904770, -0.379747,
		36.917416, 32.007301, 28.478106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731865, 31.251322, 28.090914>,  <36.782433, 31.373960, 28.743929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731865, 31.251322, 28.090914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948490, 31.585876, 28.124767>,  <37.078465, 31.786610, 28.145079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948490, 31.585876, 28.124767>,  <36.731865, 31.251322, 28.090914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948490, 31.585876, 28.124767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625711, -0.333812, -0.705021,
		-0.561418, 0.434773, -0.704118,
		0.541567, 0.836386, 0.084634,
		37.110962, 31.836792, 28.150158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031651, 31.283787, 27.494686>,  <36.731865, 31.251322, 28.090914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031651, 31.283787, 27.494686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268318, 31.538439, 27.692526>,  <37.410320, 31.691229, 27.811230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268318, 31.538439, 27.692526>,  <37.031651, 31.283787, 27.494686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268318, 31.538439, 27.692526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760536, -0.237284, -0.604385,
		-0.267408, 0.733758, -0.624574,
		0.591674, 0.636628, 0.494598,
		37.445820, 31.729427, 27.840904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420937, 31.798450, 27.017235>,  <37.031651, 31.283787, 27.494686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420937, 31.798450, 27.017235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633667, 31.773956, 27.355091>,  <37.761303, 31.759260, 27.557804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633667, 31.773956, 27.355091>,  <37.420937, 31.798450, 27.017235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633667, 31.773956, 27.355091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840864, -0.080252, -0.535264,
		0.100562, 0.994892, 0.008812,
		0.531822, -0.061237, 0.844639,
		37.793213, 31.755585, 27.608482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055416, 32.050156, 26.825546>,  <37.420937, 31.798450, 27.017235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055416, 32.050156, 26.825546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104248, 31.834610, 27.158945>,  <38.133545, 31.705282, 27.358984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104248, 31.834610, 27.158945>,  <38.055416, 32.050156, 26.825546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104248, 31.834610, 27.158945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905844, -0.282724, -0.315457,
		0.405639, 0.793530, 0.453615,
		0.122077, -0.538866, 0.833499,
		38.140873, 31.672951, 27.408995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771843, 32.028408, 26.921669>,  <38.055416, 32.050156, 26.825546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771843, 32.028408, 26.921669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656052, 31.733644, 27.166019>,  <38.586578, 31.556786, 27.312630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656052, 31.733644, 27.166019>,  <38.771843, 32.028408, 26.921669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656052, 31.733644, 27.166019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827448, -0.513478, -0.227312,
		0.481178, 0.439665, 0.758395,
		-0.289478, -0.736910, 0.610874,
		38.569210, 31.512571, 27.349281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379093, 31.851358, 27.449123>,  <38.771843, 32.028408, 26.921669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379093, 31.851358, 27.449123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133057, 31.537155, 27.421860>,  <38.985435, 31.348633, 27.405500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133057, 31.537155, 27.421860>,  <39.379093, 31.851358, 27.449123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133057, 31.537155, 27.421860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769947, -0.579776, -0.266537,
		0.169848, -0.216423, 0.961412,
		-0.615088, -0.785507, -0.068160,
		38.948532, 31.301502, 27.401411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688648, 31.344004, 27.748919>,  <39.379093, 31.851358, 27.449123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688648, 31.344004, 27.748919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431213, 31.140717, 27.520002>,  <39.276752, 31.018745, 27.382652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431213, 31.140717, 27.520002>,  <39.688648, 31.344004, 27.748919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431213, 31.140717, 27.520002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740929, -0.601167, -0.299370,
		-0.191896, -0.616696, 0.763454,
		-0.643584, -0.508217, -0.572289,
		39.238136, 30.988251, 27.348316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900379, 30.686268, 27.877138>,  <39.688648, 31.344004, 27.748919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900379, 30.686268, 27.877138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707150, 30.674601, 27.527102>,  <39.591213, 30.667601, 27.317080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707150, 30.674601, 27.527102>,  <39.900379, 30.686268, 27.877138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707150, 30.674601, 27.527102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615447, -0.722203, -0.315670,
		-0.622787, -0.691065, 0.366830,
		-0.483075, -0.029169, -0.875093,
		39.562225, 30.665850, 27.264574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.814800, 28.538952, 23.849421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.935608, 28.883389, 24.013033>,  <36.008091, 29.090052, 24.111200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.935608, 28.883389, 24.013033>,  <35.814800, 28.538952, 23.849421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935608, 28.883389, 24.013033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655727, -0.123795, 0.744780,
		0.691961, -0.493147, 0.527254,
		0.302015, 0.861093, 0.409031,
		36.026211, 29.141716, 24.135742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002731, 28.334980, 24.604029>,  <35.814800, 28.538952, 23.849421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002731, 28.334980, 24.604029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942020, 28.725332, 24.541264>,  <35.905594, 28.959543, 24.503605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942020, 28.725332, 24.541264>,  <36.002731, 28.334980, 24.604029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942020, 28.725332, 24.541264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594924, 0.036578, 0.802949,
		0.789321, 0.215224, 0.575022,
		-0.151780, 0.975880, -0.156914,
		35.896488, 29.018097, 24.494190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865837, 28.460936, 25.234598>,  <36.002731, 28.334980, 24.604029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865837, 28.460936, 25.234598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.743256, 28.783302, 25.031982>,  <35.669708, 28.976723, 24.910414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.743256, 28.783302, 25.031982>,  <35.865837, 28.460936, 25.234598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743256, 28.783302, 25.031982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525337, 0.300569, 0.796040,
		0.793792, 0.510054, 0.331268,
		-0.306455, 0.805918, -0.506539,
		35.651318, 29.025078, 24.880020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069645, 29.046101, 25.649235>,  <35.865837, 28.460936, 25.234598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069645, 29.046101, 25.649235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758781, 29.128633, 25.411427>,  <35.572266, 29.178154, 25.268742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758781, 29.128633, 25.411427>,  <36.069645, 29.046101, 25.649235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758781, 29.128633, 25.411427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537920, 0.272502, 0.797737,
		0.326608, 0.939771, -0.100786,
		-0.777155, 0.206333, -0.594523,
		35.525635, 29.190533, 25.233070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825130, 29.756332, 25.813980>,  <36.069645, 29.046101, 25.649235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825130, 29.756332, 25.813980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522636, 29.576487, 25.623838>,  <35.341141, 29.468580, 25.509752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522636, 29.576487, 25.623838>,  <35.825130, 29.756332, 25.813980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522636, 29.576487, 25.623838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635749, 0.333127, 0.696311,
		-0.154716, 0.828779, -0.537762,
		-0.756231, -0.449612, -0.475355,
		35.295769, 29.441603, 25.481232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292534, 30.260466, 25.893410>,  <35.825130, 29.756332, 25.813980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292534, 30.260466, 25.893410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130630, 29.916592, 25.768761>,  <35.033489, 29.710266, 25.693972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130630, 29.916592, 25.768761>,  <35.292534, 30.260466, 25.893410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130630, 29.916592, 25.768761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807722, 0.176368, 0.562565,
		-0.428669, 0.479408, -0.765775,
		-0.404757, -0.859687, -0.311625,
		35.009205, 29.658686, 25.675274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634212, 30.445959, 25.752125>,  <35.292534, 30.260466, 25.893410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634212, 30.445959, 25.752125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633244, 30.055206, 25.837631>,  <34.632664, 29.820755, 25.888935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633244, 30.055206, 25.837631>,  <34.634212, 30.445959, 25.752125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633244, 30.055206, 25.837631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788391, 0.133366, 0.600544,
		-0.615170, -0.167075, -0.770488,
		-0.002421, -0.976882, 0.213764,
		34.632519, 29.762142, 25.901760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921459, 30.269604, 25.768309>,  <34.634212, 30.445959, 25.752125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921459, 30.269604, 25.768309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.084564, 29.960314, 25.962566>,  <34.182426, 29.774740, 26.079121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.084564, 29.960314, 25.962566>,  <33.921459, 30.269604, 25.768309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084564, 29.960314, 25.962566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796419, -0.041041, 0.603351,
		-0.446596, -0.632800, -0.632548,
		0.407761, -0.773227, 0.485645,
		34.206894, 29.728346, 26.108259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399273, 29.788616, 25.873312>,  <33.921459, 30.269604, 25.768309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399273, 29.788616, 25.873312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.678959, 29.685041, 26.139858>,  <33.846771, 29.622896, 26.299786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.678959, 29.685041, 26.139858>,  <33.399273, 29.788616, 25.873312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678959, 29.685041, 26.139858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711377, -0.344522, 0.612574,
		0.070959, -0.902361, -0.425100,
		0.699219, -0.258939, 0.666366,
		33.888725, 29.607359, 26.339767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117325, 29.278116, 26.179308>,  <33.399273, 29.788616, 25.873312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117325, 29.278116, 26.179308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.385899, 29.359451, 26.464355>,  <33.547043, 29.408253, 26.635384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.385899, 29.359451, 26.464355>,  <33.117325, 29.278116, 26.179308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385899, 29.359451, 26.464355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602657, -0.409776, 0.684754,
		0.431252, -0.889234, -0.152595,
		0.671436, 0.203340, 0.712619,
		33.587330, 29.420454, 26.678141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987156, 28.691147, 26.649353>,  <33.117325, 29.278116, 26.179308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987156, 28.691147, 26.649353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.192341, 28.962864, 26.859280>,  <33.315453, 29.125895, 26.985235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.192341, 28.962864, 26.859280>,  <32.987156, 28.691147, 26.649353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192341, 28.962864, 26.859280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514555, -0.246046, 0.821398,
		0.687099, -0.691391, 0.223322,
		0.512960, 0.679293, 0.524817,
		33.346230, 29.166653, 27.016726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146744, 28.433731, 27.339272>,  <32.987156, 28.691147, 26.649353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146744, 28.433731, 27.339272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.189560, 28.828859, 27.384451>,  <33.215248, 29.065935, 27.411558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.189560, 28.828859, 27.384451>,  <33.146744, 28.433731, 27.339272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189560, 28.828859, 27.384451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523452, -0.040593, 0.851087,
		0.845305, -0.150221, 0.512731,
		0.107038, 0.987819, 0.112947,
		33.221672, 29.125204, 27.418335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425056, 28.571714, 28.015436>,  <33.146744, 28.433731, 27.339272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425056, 28.571714, 28.015436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.252094, 28.909840, 27.889917>,  <33.148315, 29.112715, 27.814606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.252094, 28.909840, 27.889917>,  <33.425056, 28.571714, 28.015436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252094, 28.909840, 27.889917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503296, 0.062486, 0.861852,
		0.748144, 0.530602, 0.398424,
		-0.432404, 0.845315, -0.313798,
		33.122372, 29.163435, 27.795778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391220, 28.864897, 28.615263>,  <33.425056, 28.571714, 28.015436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391220, 28.864897, 28.615263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127861, 29.057623, 28.383966>,  <32.969845, 29.173258, 28.245188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127861, 29.057623, 28.383966>,  <33.391220, 28.864897, 28.615263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127861, 29.057623, 28.383966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568080, 0.185876, 0.801708,
		0.493755, 0.856333, 0.151328,
		-0.658400, 0.481814, -0.578243,
		32.930340, 29.202168, 28.210493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957596, 28.968277, 29.073454>,  <33.391220, 28.864897, 28.615263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957596, 28.968277, 29.073454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051659, 28.726955, 29.378275>,  <34.108097, 28.582163, 29.561167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051659, 28.726955, 29.378275>,  <33.957596, 28.968277, 29.073454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051659, 28.726955, 29.378275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781182, -0.349191, -0.517514,
		0.578321, 0.716999, 0.389175,
		0.235161, -0.603305, 0.762051,
		34.122208, 28.545963, 29.606890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658291, 29.025854, 29.189850>,  <33.957596, 28.968277, 29.073454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658291, 29.025854, 29.189850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.557720, 28.676001, 29.355646>,  <34.497379, 28.466089, 29.455124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.557720, 28.676001, 29.355646>,  <34.658291, 29.025854, 29.189850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557720, 28.676001, 29.355646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820568, -0.419728, -0.387939,
		0.513277, 0.242578, 0.823227,
		-0.251426, -0.874634, 0.414489,
		34.482292, 28.413610, 29.479992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266808, 28.729605, 29.497677>,  <34.658291, 29.025854, 29.189850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266808, 28.729605, 29.497677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.999271, 28.442995, 29.418436>,  <34.838749, 28.271029, 29.370892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.999271, 28.442995, 29.418436>,  <35.266808, 28.729605, 29.497677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999271, 28.442995, 29.418436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651210, -0.436175, -0.621028,
		0.358575, -0.544376, 0.758340,
		-0.668842, -0.716524, -0.198102,
		34.798618, 28.228039, 29.359005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655231, 28.150698, 29.654638>,  <35.266808, 28.729605, 29.497677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655231, 28.150698, 29.654638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.352310, 27.990545, 29.448263>,  <35.170559, 27.894453, 29.324438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.352310, 27.990545, 29.448263>,  <35.655231, 28.150698, 29.654638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352310, 27.990545, 29.448263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651250, -0.404103, -0.642319,
		0.048682, -0.822432, 0.566777,
		-0.757300, -0.400383, -0.515936,
		35.125122, 27.870430, 29.293482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900017, 27.401157, 29.459871>,  <35.655231, 28.150698, 29.654638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900017, 27.401157, 29.459871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623222, 27.522867, 29.198011>,  <35.457146, 27.595894, 29.040895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623222, 27.522867, 29.198011>,  <35.900017, 27.401157, 29.459871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623222, 27.522867, 29.198011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628032, -0.193442, -0.753761,
		-0.355987, -0.932736, -0.057234,
		-0.691989, 0.304274, -0.654652,
		35.415627, 27.614149, 29.001616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965332, 26.857767, 28.959188>,  <35.900017, 27.401157, 29.459871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965332, 26.857767, 28.959188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.772888, 27.165304, 28.790709>,  <35.657421, 27.349827, 28.689621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.772888, 27.165304, 28.790709>,  <35.965332, 26.857767, 28.959188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772888, 27.165304, 28.790709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599438, -0.062073, -0.798011,
		-0.639692, -0.636416, -0.431010,
		-0.481113, 0.768844, -0.421199,
		35.628555, 27.395958, 28.664349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743080, 26.580280, 28.351074>,  <35.965332, 26.857767, 28.959188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743080, 26.580280, 28.351074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753925, 26.976221, 28.295273>,  <35.760433, 27.213785, 28.261793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753925, 26.976221, 28.295273>,  <35.743080, 26.580280, 28.351074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753925, 26.976221, 28.295273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552508, -0.131141, -0.823127,
		-0.833067, -0.054755, -0.550456,
		0.027117, 0.989851, -0.139501,
		35.762062, 27.273176, 28.253422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621109, 26.784369, 27.657511>,  <35.743080, 26.580280, 28.351074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621109, 26.784369, 27.657511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.795822, 27.116997, 27.794744>,  <35.900650, 27.316574, 27.877085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.795822, 27.116997, 27.794744>,  <35.621109, 26.784369, 27.657511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795822, 27.116997, 27.794744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490104, 0.099828, -0.865929,
		-0.754331, 0.546373, -0.363953,
		0.436787, 0.831572, 0.343082,
		35.926857, 27.366468, 27.897669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754551, 27.139666, 26.999451>,  <35.621109, 26.784369, 27.657511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754551, 27.139666, 26.999451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980103, 27.315100, 27.279360>,  <36.115433, 27.420361, 27.447306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980103, 27.315100, 27.279360>,  <35.754551, 27.139666, 26.999451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980103, 27.315100, 27.279360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695923, 0.203883, -0.688566,
		-0.444665, 0.875258, -0.190254,
		0.563883, 0.438583, 0.699772,
		36.149269, 27.446674, 27.489292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994011, 27.766533, 26.671206>,  <35.754551, 27.139666, 26.999451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994011, 27.766533, 26.671206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251339, 27.698587, 26.969814>,  <36.405735, 27.657820, 27.148979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251339, 27.698587, 26.969814>,  <35.994011, 27.766533, 26.671206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251339, 27.698587, 26.969814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763758, 0.074768, -0.641158,
		0.053093, 0.982627, 0.177833,
		0.643315, -0.169862, 0.746520,
		36.444332, 27.647629, 27.193769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471470, 28.394175, 26.701033>,  <35.994011, 27.766533, 26.671206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471470, 28.394175, 26.701033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654991, 28.089703, 26.884382>,  <36.765102, 27.907019, 26.994392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654991, 28.089703, 26.884382>,  <36.471470, 28.394175, 26.701033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654991, 28.089703, 26.884382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825736, 0.174755, -0.536302,
		0.328119, 0.624554, 0.708711,
		0.458800, -0.761179, 0.458376,
		36.792633, 27.861349, 27.021894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157047, 28.671097, 26.846163>,  <36.471470, 28.394175, 26.701033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157047, 28.671097, 26.846163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210457, 28.277008, 26.889084>,  <37.242500, 28.040556, 26.914837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210457, 28.277008, 26.889084>,  <37.157047, 28.671097, 26.846163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210457, 28.277008, 26.889084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805215, 0.044725, -0.591294,
		0.577755, 0.165353, 0.799286,
		0.133520, -0.985220, 0.107305,
		37.250511, 27.981441, 26.921276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872486, 28.491531, 27.063118>,  <37.157047, 28.671097, 26.846163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872486, 28.491531, 27.063118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720516, 28.170731, 26.878748>,  <37.629333, 27.978251, 26.768126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720516, 28.170731, 26.878748>,  <37.872486, 28.491531, 27.063118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720516, 28.170731, 26.878748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695050, 0.081293, -0.714351,
		0.610381, -0.591762, 0.526548,
		-0.379921, -0.802003, -0.460924,
		37.606541, 27.930130, 26.740471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492805, 28.063158, 26.812002>,  <37.872486, 28.491531, 27.063118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492805, 28.063158, 26.812002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190521, 27.909960, 26.599504>,  <38.009151, 27.818041, 26.472006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190521, 27.909960, 26.599504>,  <38.492805, 28.063158, 26.812002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190521, 27.909960, 26.599504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622542, -0.168247, -0.764287,
		0.203339, -0.908298, 0.365578,
		-0.755708, -0.382997, -0.531243,
		37.963810, 27.795061, 26.440132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945721, 27.550707, 27.145260>,  <38.492805, 28.063158, 26.812002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945721, 27.550707, 27.145260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257816, 27.432055, 27.365528>,  <39.445072, 27.360863, 27.497688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257816, 27.432055, 27.365528>,  <38.945721, 27.550707, 27.145260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257816, 27.432055, 27.365528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581707, -0.020560, 0.813138,
		-0.229882, -0.954770, -0.188595,
		0.780238, -0.296633, 0.550671,
		39.491886, 27.343065, 27.530729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687130, 27.069416, 27.728872>,  <38.945721, 27.550707, 27.145260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687130, 27.069416, 27.728872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047176, 27.196955, 27.847618>,  <39.263203, 27.273478, 27.918865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047176, 27.196955, 27.847618>,  <38.687130, 27.069416, 27.728872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047176, 27.196955, 27.847618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319425, 0.019662, 0.947407,
		0.296243, -0.947602, 0.119547,
		0.900115, 0.318849, 0.296863,
		39.317211, 27.292610, 27.936676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919529, 26.652601, 28.341618>,  <38.687130, 27.069416, 27.728872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919529, 26.652601, 28.341618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125492, 26.995499, 28.342331>,  <39.249069, 27.201237, 28.342758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125492, 26.995499, 28.342331>,  <38.919529, 26.652601, 28.341618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125492, 26.995499, 28.342331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227873, 0.134868, 0.964305,
		0.826405, -0.496932, 0.264788,
		0.514906, 0.857245, 0.001782,
		39.279964, 27.252672, 28.342865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293945, 26.429527, 28.869576>,  <38.919529, 26.652601, 28.341618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293945, 26.429527, 28.869576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286407, 26.826933, 28.824717>,  <39.281883, 27.065376, 28.797802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286407, 26.826933, 28.824717>,  <39.293945, 26.429527, 28.869576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286407, 26.826933, 28.824717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335388, 0.099384, 0.936823,
		0.941892, 0.055267, 0.331339,
		-0.018845, 0.993513, -0.112145,
		39.280754, 27.124987, 28.791073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632927, 26.685318, 29.388475>,  <39.293945, 26.429527, 28.869576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632927, 26.685318, 29.388475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.387268, 26.980661, 29.277014>,  <39.239872, 27.157867, 29.210136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.387268, 26.980661, 29.277014>,  <39.632927, 26.685318, 29.388475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387268, 26.980661, 29.277014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201927, 0.194320, 0.959930,
		0.762920, 0.645807, 0.029753,
		-0.614148, 0.738358, -0.278656,
		39.203022, 27.202169, 29.193417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851627, 27.418274, 29.640562>,  <39.632927, 26.685318, 29.388475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851627, 27.418274, 29.640562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459148, 27.429502, 29.564177>,  <39.223660, 27.436239, 29.518345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459148, 27.429502, 29.564177>,  <39.851627, 27.418274, 29.640562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459148, 27.429502, 29.564177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170675, 0.335849, 0.926324,
		0.090136, 0.941498, -0.324743,
		-0.981196, 0.028069, -0.190962,
		39.164791, 27.437923, 29.506887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669579, 28.175482, 29.719501>,  <39.851627, 27.418274, 29.640562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669579, 28.175482, 29.719501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.341862, 27.950783, 29.765472>,  <39.145233, 27.815964, 29.793055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.341862, 27.950783, 29.765472>,  <39.669579, 28.175482, 29.719501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341862, 27.950783, 29.765472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200930, 0.469002, 0.860038,
		-0.537023, 0.681527, -0.497119,
		-0.819289, -0.561746, 0.114925,
		39.096077, 27.782259, 29.799950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165279, 28.666706, 29.969746>,  <39.669579, 28.175482, 29.719501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165279, 28.666706, 29.969746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948860, 28.338837, 30.045008>,  <38.819008, 28.142115, 30.090164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948860, 28.338837, 30.045008>,  <39.165279, 28.666706, 29.969746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948860, 28.338837, 30.045008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542319, 0.511052, 0.666871,
		-0.642774, 0.258769, -0.721028,
		-0.541048, -0.819674, 0.188156,
		38.786545, 28.092934, 30.101454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411396, 28.818457, 29.952522>,  <39.165279, 28.666706, 29.969746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411396, 28.818457, 29.952522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468533, 28.498325, 30.185442>,  <38.502815, 28.306246, 30.325193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468533, 28.498325, 30.185442>,  <38.411396, 28.818457, 29.952522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468533, 28.498325, 30.185442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521884, 0.438992, 0.731385,
		-0.840972, -0.408364, -0.354972,
		0.142841, -0.800328, 0.582298,
		38.511383, 28.258226, 30.360132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784977, 28.620338, 30.148312>,  <38.411396, 28.818457, 29.952522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784977, 28.620338, 30.148312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016327, 28.487009, 30.446138>,  <38.155136, 28.407011, 30.624834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016327, 28.487009, 30.446138>,  <37.784977, 28.620338, 30.148312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016327, 28.487009, 30.446138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616489, 0.419146, 0.666527,
		-0.534250, -0.844519, 0.036934,
		0.578376, -0.333323, 0.744565,
		38.189838, 28.387012, 30.669508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354553, 28.477016, 30.694061>,  <37.784977, 28.620338, 30.148312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354553, 28.477016, 30.694061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696892, 28.471727, 30.900885>,  <37.902294, 28.468554, 31.024979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696892, 28.471727, 30.900885>,  <37.354553, 28.477016, 30.694061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696892, 28.471727, 30.900885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490120, 0.298656, 0.818894,
		-0.165252, -0.954269, 0.249122,
		0.855847, -0.013224, 0.517060,
		37.953648, 28.467760, 31.056004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149452, 28.054909, 31.296680>,  <37.354553, 28.477016, 30.694061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149452, 28.054909, 31.296680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462418, 28.279760, 31.403893>,  <37.650196, 28.414671, 31.468220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462418, 28.279760, 31.403893>,  <37.149452, 28.054909, 31.296680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462418, 28.279760, 31.403893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469739, 0.250135, 0.846627,
		0.408869, -0.788318, 0.459762,
		0.782414, 0.562128, 0.268031,
		37.697144, 28.448399, 31.484303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413868, 27.686026, 31.822090>,  <37.149452, 28.054909, 31.296680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413868, 27.686026, 31.822090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571606, 28.050957, 31.866190>,  <37.666248, 28.269915, 31.892651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571606, 28.050957, 31.866190>,  <37.413868, 27.686026, 31.822090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571606, 28.050957, 31.866190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483035, 0.103719, 0.869437,
		0.781774, -0.396111, 0.481586,
		0.394343, 0.912326, 0.110250,
		37.689907, 28.324654, 31.899265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781082, 27.747282, 32.394463>,  <37.413868, 27.686026, 31.822090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781082, 27.747282, 32.394463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668007, 28.125530, 32.330101>,  <37.600163, 28.352480, 32.291485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668007, 28.125530, 32.330101>,  <37.781082, 27.747282, 32.394463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668007, 28.125530, 32.330101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441456, 0.020670, 0.897045,
		0.851591, 0.324613, 0.411607,
		-0.282684, 0.945621, -0.160904,
		37.583202, 28.409216, 32.281830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.894985, 29.862377, 27.731150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.792641, 30.042469, 27.388962>,  <39.731236, 30.150524, 27.183649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.792641, 30.042469, 27.388962>,  <39.894985, 29.862377, 27.731150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792641, 30.042469, 27.388962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760708, -0.452303, -0.465559,
		-0.596541, -0.769881, -0.226767,
		-0.255857, 0.450229, -0.855471,
		39.715885, 30.177538, 27.132320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796608, 29.391617, 27.162664>,  <39.894985, 29.862377, 27.731150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796608, 29.391617, 27.162664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.869534, 29.744520, 26.989052>,  <39.913288, 29.956263, 26.884884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.869534, 29.744520, 26.989052>,  <39.796608, 29.391617, 27.162664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869534, 29.744520, 26.989052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640274, -0.441537, -0.628565,
		-0.746197, -0.163303, -0.645385,
		0.182315, 0.882257, -0.434032,
		39.924229, 30.009197, 26.858843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865139, 29.157940, 26.562618>,  <39.796608, 29.391617, 27.162664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865139, 29.157940, 26.562618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025398, 29.524414, 26.566372>,  <40.121555, 29.744299, 26.568624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025398, 29.524414, 26.566372>,  <39.865139, 29.157940, 26.562618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025398, 29.524414, 26.566372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747096, -0.320744, -0.582213,
		-0.530404, 0.240272, -0.812982,
		0.400649, 0.916184, 0.009382,
		40.145592, 29.799269, 26.569187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838806, 29.398264, 25.894291>,  <39.865139, 29.157940, 26.562618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838806, 29.398264, 25.894291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139172, 29.618755, 26.039770>,  <40.319389, 29.751049, 26.127058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.139172, 29.618755, 26.039770>,  <39.838806, 29.398264, 25.894291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139172, 29.618755, 26.039770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617180, -0.389799, -0.683481,
		-0.234983, 0.737703, -0.632911,
		0.750914, 0.551227, 0.363699,
		40.364445, 29.784122, 26.148880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149345, 29.692434, 25.266762>,  <39.838806, 29.398264, 25.894291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149345, 29.692434, 25.266762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.415485, 29.727289, 25.563334>,  <40.575169, 29.748201, 25.741276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.415485, 29.727289, 25.563334>,  <40.149345, 29.692434, 25.266762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415485, 29.727289, 25.563334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738157, -0.225126, -0.635958,
		0.111499, 0.970425, -0.214109,
		0.665352, 0.087137, 0.741427,
		40.615089, 29.753431, 25.785761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622089, 30.050886, 25.038036>,  <40.149345, 29.692434, 25.266762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622089, 30.050886, 25.038036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.800232, 29.864990, 25.344154>,  <40.907116, 29.753452, 25.527824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.800232, 29.864990, 25.344154>,  <40.622089, 30.050886, 25.038036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800232, 29.864990, 25.344154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849896, -0.049464, -0.524624,
		0.281668, 0.884064, 0.372952,
		0.445354, -0.464740, 0.765295,
		40.933838, 29.725569, 25.573744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157757, 30.483494, 25.292692>,  <40.622089, 30.050886, 25.038036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157757, 30.483494, 25.292692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240276, 30.110695, 25.411903>,  <41.289787, 29.887016, 25.483431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240276, 30.110695, 25.411903>,  <41.157757, 30.483494, 25.292692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240276, 30.110695, 25.411903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814101, -0.005489, -0.580698,
		0.542845, 0.362424, 0.757607,
		0.206300, -0.931997, 0.298029,
		41.302166, 29.831095, 25.501312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825775, 30.508268, 25.328575>,  <41.157757, 30.483494, 25.292692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825775, 30.508268, 25.328575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.778370, 30.111090, 25.327065>,  <41.749928, 29.872784, 25.326159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.778370, 30.111090, 25.327065>,  <41.825775, 30.508268, 25.328575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778370, 30.111090, 25.327065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784376, -0.091282, -0.613532,
		0.608859, -0.075674, 0.789661,
		-0.118510, -0.992946, -0.003779,
		41.742817, 29.813206, 25.325932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453106, 30.273733, 25.595619>,  <41.825775, 30.508268, 25.328575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453106, 30.273733, 25.595619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.290375, 29.970863, 25.391195>,  <42.192738, 29.789143, 25.268541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.290375, 29.970863, 25.391195>,  <42.453106, 30.273733, 25.595619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290375, 29.970863, 25.391195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846415, -0.102003, -0.522664,
		0.343617, -0.645201, 0.682380,
		-0.406828, -0.757173, -0.511058,
		42.168327, 29.743711, 25.237879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903210, 29.705088, 25.592323>,  <42.453106, 30.273733, 25.595619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903210, 29.705088, 25.592323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.680908, 29.590368, 25.280199>,  <42.547527, 29.521536, 25.092924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.680908, 29.590368, 25.280199>,  <42.903210, 29.705088, 25.592323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680908, 29.590368, 25.280199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830902, -0.160973, -0.532625,
		0.027147, -0.944370, 0.327764,
		-0.555757, -0.286799, -0.780309,
		42.514183, 29.504330, 25.046106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080688, 29.005064, 25.397448>,  <42.903210, 29.705088, 25.592323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080688, 29.005064, 25.397448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882450, 29.126665, 25.072002>,  <42.763508, 29.199627, 24.876736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882450, 29.126665, 25.072002>,  <43.080688, 29.005064, 25.397448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882450, 29.126665, 25.072002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791420, -0.227863, -0.567215,
		-0.357828, -0.925019, -0.127667,
		-0.495594, 0.304004, -0.813614,
		42.733772, 29.217867, 24.827919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082264, 28.434961, 24.950277>,  <43.080688, 29.005064, 25.397448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082264, 28.434961, 24.950277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.042213, 28.784697, 24.760324>,  <43.018185, 28.994537, 24.646353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.042213, 28.784697, 24.760324>,  <43.082264, 28.434961, 24.950277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042213, 28.784697, 24.760324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684190, -0.286025, -0.670875,
		-0.722398, -0.392078, -0.569575,
		-0.100122, 0.874337, -0.474880,
		43.012177, 29.046997, 24.617861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247116, 28.201855, 24.340883>,  <43.082264, 28.434961, 24.950277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247116, 28.201855, 24.340883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.251503, 28.600250, 24.305353>,  <43.254135, 28.839287, 24.284035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.251503, 28.600250, 24.305353>,  <43.247116, 28.201855, 24.340883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251503, 28.600250, 24.305353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821991, -0.059564, -0.566377,
		-0.569395, -0.066801, -0.819346,
		0.010969, 0.995987, -0.088825,
		43.254795, 28.899046, 24.278706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653011, 27.470072, 24.182381>,  <43.247116, 28.201855, 24.340883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653011, 27.470072, 24.182381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.572960, 27.492596, 23.791121>,  <43.524929, 27.506109, 23.556364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.572960, 27.492596, 23.791121>,  <43.653011, 27.470072, 24.182381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572960, 27.492596, 23.791121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422575, 0.905678, -0.034320,
		0.883957, -0.420210, -0.205045,
		-0.200126, 0.056309, -0.978151,
		43.512920, 27.509489, 23.497675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606457, 26.803085, 23.972279>,  <43.653011, 27.470072, 24.182381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606457, 26.803085, 23.972279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.337315, 26.598812, 23.758186>,  <43.175831, 26.476248, 23.629730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.337315, 26.598812, 23.758186>,  <43.606457, 26.803085, 23.972279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337315, 26.598812, 23.758186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706420, 0.228732, 0.669815,
		-0.219640, 0.828784, -0.514660,
		-0.672851, -0.510684, -0.535231,
		43.135460, 26.445606, 23.597616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964848, 27.295847, 23.948792>,  <43.606457, 26.803085, 23.972279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964848, 27.295847, 23.948792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.842030, 26.932495, 23.835251>,  <42.768337, 26.714483, 23.767126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.842030, 26.932495, 23.835251>,  <42.964848, 27.295847, 23.948792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842030, 26.932495, 23.835251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867901, 0.144891, 0.475137,
		-0.390477, 0.392242, -0.832871,
		-0.307044, -0.908379, -0.283850,
		42.749916, 26.659981, 23.750095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262150, 27.368912, 23.651125>,  <42.964848, 27.295847, 23.948792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262150, 27.368912, 23.651125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.323803, 26.991032, 23.766905>,  <42.360794, 26.764303, 23.836372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.323803, 26.991032, 23.766905>,  <42.262150, 27.368912, 23.651125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323803, 26.991032, 23.766905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828538, 0.036023, 0.558773,
		-0.538301, -0.325947, -0.777168,
		0.154134, -0.944702, 0.289451,
		42.370045, 26.707621, 23.853741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615013, 27.021143, 23.580206>,  <42.262150, 27.368912, 23.651125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615013, 27.021143, 23.580206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.788280, 26.756392, 23.824919>,  <41.892242, 26.597540, 23.971746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.788280, 26.756392, 23.824919>,  <41.615013, 27.021143, 23.580206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788280, 26.756392, 23.824919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767227, 0.085433, 0.635661,
		-0.472997, -0.744727, -0.470804,
		0.433171, -0.661879, 0.611784,
		41.918232, 26.557829, 24.008453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104610, 26.532330, 23.648911>,  <41.615013, 27.021143, 23.580206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104610, 26.532330, 23.648911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.364182, 26.500105, 23.951540>,  <41.519924, 26.480770, 24.133118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.364182, 26.500105, 23.951540>,  <41.104610, 26.532330, 23.648911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364182, 26.500105, 23.951540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757770, 0.020986, 0.652185,
		-0.068421, -0.996528, -0.047431,
		0.648925, -0.080565, 0.756575,
		41.558861, 26.475937, 24.178513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852184, 26.069023, 24.221941>,  <41.104610, 26.532330, 23.648911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852184, 26.069023, 24.221941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.114571, 26.299664, 24.416771>,  <41.272003, 26.438047, 24.533669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.114571, 26.299664, 24.416771>,  <40.852184, 26.069023, 24.221941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114571, 26.299664, 24.416771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635272, 0.073271, 0.768804,
		0.407605, -0.813733, 0.414362,
		0.655963, 0.576602, 0.487077,
		41.311359, 26.472645, 24.562895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877823, 25.859594, 24.921488>,  <40.852184, 26.069023, 24.221941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877823, 25.859594, 24.921488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.017036, 26.234394, 24.909472>,  <41.100567, 26.459274, 24.902262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.017036, 26.234394, 24.909472>,  <40.877823, 25.859594, 24.921488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017036, 26.234394, 24.909472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506200, 0.214801, 0.835238,
		0.789071, -0.275485, 0.549068,
		0.348035, 0.937000, -0.030043,
		41.121449, 26.515493, 24.900459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228848, 25.839457, 25.578907>,  <40.877823, 25.859594, 24.921488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228848, 25.839457, 25.578907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.221039, 26.228909, 25.487984>,  <41.216354, 26.462580, 25.433430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.221039, 26.228909, 25.487984>,  <41.228848, 25.839457, 25.578907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221039, 26.228909, 25.487984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377781, 0.203310, 0.903297,
		0.925689, 0.103509, 0.363848,
		-0.019525, 0.973628, -0.227306,
		41.215179, 26.520996, 25.419792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449146, 26.165493, 26.118101>,  <41.228848, 25.839457, 25.578907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449146, 26.165493, 26.118101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.272739, 26.476978, 25.939615>,  <41.166897, 26.663870, 25.832523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.272739, 26.476978, 25.939615>,  <41.449146, 26.165493, 26.118101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272739, 26.476978, 25.939615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401613, 0.273396, 0.874049,
		0.802627, 0.564678, 0.192168,
		-0.441018, 0.778713, -0.446216,
		41.140434, 26.710592, 25.805750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609497, 26.747019, 26.544033>,  <41.449146, 26.165493, 26.118101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609497, 26.747019, 26.544033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.277416, 26.822586, 26.334246>,  <41.078167, 26.867928, 26.208374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.277416, 26.822586, 26.334246>,  <41.609497, 26.747019, 26.544033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277416, 26.822586, 26.334246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497522, 0.173281, 0.849968,
		0.251456, 0.966583, -0.049867,
		-0.830206, 0.188920, -0.524469,
		41.028355, 26.879261, 26.176905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379158, 27.451302, 26.790106>,  <41.609497, 26.747019, 26.544033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379158, 27.451302, 26.790106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.072857, 27.252729, 26.626556>,  <40.889076, 27.133587, 26.528427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.072857, 27.252729, 26.626556>,  <41.379158, 27.451302, 26.790106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072857, 27.252729, 26.626556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567695, 0.222988, 0.792464,
		-0.302230, 0.838947, -0.452575,
		-0.765754, -0.496431, -0.408873,
		40.843132, 27.103800, 26.503895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884724, 27.913589, 26.962835>,  <41.379158, 27.451302, 26.790106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884724, 27.913589, 26.962835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695038, 27.573536, 26.871279>,  <40.581226, 27.369503, 26.816345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695038, 27.573536, 26.871279>,  <40.884724, 27.913589, 26.962835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695038, 27.573536, 26.871279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682817, 0.191021, 0.705175,
		-0.555771, 0.490695, -0.671071,
		-0.474215, -0.850135, -0.228891,
		40.552773, 27.318495, 26.802612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188183, 28.120749, 26.923672>,  <40.884724, 27.913589, 26.962835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188183, 28.120749, 26.923672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194435, 27.723068, 26.966230>,  <40.198185, 27.484461, 26.991766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194435, 27.723068, 26.966230>,  <40.188183, 28.120749, 26.923672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194435, 27.723068, 26.966230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780806, 0.054336, 0.622406,
		-0.624578, -0.092803, -0.775429,
		0.015627, -0.994201, 0.106398,
		40.199123, 27.424809, 26.998150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526104, 27.901413, 26.769192>,  <40.188183, 28.120749, 26.923672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526104, 27.901413, 26.769192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.700977, 27.634960, 27.010899>,  <39.805901, 27.475088, 27.155924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.700977, 27.634960, 27.010899>,  <39.526104, 27.901413, 26.769192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700977, 27.634960, 27.010899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728281, 0.132023, 0.672441,
		-0.527711, -0.734056, -0.427413,
		0.437181, -0.666132, 0.604269,
		39.832130, 27.435122, 27.192179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859238, 27.568167, 26.313992>,  <39.526104, 27.901413, 26.769192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859238, 27.568167, 26.313992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495724, 27.587185, 26.148170>,  <38.277615, 27.598595, 26.048677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495724, 27.587185, 26.148170>,  <38.859238, 27.568167, 26.313992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495724, 27.587185, 26.148170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408962, -0.095774, -0.907512,
		-0.082846, -0.994267, 0.067596,
		-0.908783, 0.047540, -0.414552,
		38.223087, 27.601448, 26.023806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769051, 26.961630, 25.894154>,  <38.859238, 27.568167, 26.313992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769051, 26.961630, 25.894154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527939, 27.245920, 25.749088>,  <38.383270, 27.416494, 25.662050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527939, 27.245920, 25.749088>,  <38.769051, 26.961630, 25.894154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527939, 27.245920, 25.749088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377743, -0.146170, -0.914300,
		-0.702829, -0.688114, -0.180365,
		-0.602779, 0.710728, -0.362662,
		38.347107, 27.459139, 25.640289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535217, 26.705984, 25.277809>,  <38.769051, 26.961630, 25.894154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535217, 26.705984, 25.277809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475620, 27.101191, 25.261677>,  <38.439861, 27.338314, 25.251997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475620, 27.101191, 25.261677>,  <38.535217, 26.705984, 25.277809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475620, 27.101191, 25.261677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363136, 0.016733, -0.931586,
		-0.919746, -0.153446, -0.361277,
		-0.148993, 0.988015, -0.040332,
		38.430923, 27.397594, 25.249577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227077, 26.795584, 24.627235>,  <38.535217, 26.705984, 25.277809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227077, 26.795584, 24.627235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369244, 27.151217, 24.742619>,  <38.454544, 27.364597, 24.811848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369244, 27.151217, 24.742619>,  <38.227077, 26.795584, 24.627235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369244, 27.151217, 24.742619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313179, 0.177497, -0.932960,
		-0.880680, 0.421930, -0.215357,
		0.355418, 0.889084, 0.288458,
		38.475868, 27.417942, 24.829155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060604, 27.202753, 24.178932>,  <38.227077, 26.795584, 24.627235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060604, 27.202753, 24.178932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.371548, 27.397211, 24.338619>,  <38.558113, 27.513885, 24.434431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.371548, 27.397211, 24.338619>,  <38.060604, 27.202753, 24.178932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371548, 27.397211, 24.338619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395563, 0.115688, -0.911123,
		-0.489125, 0.866186, -0.102371,
		0.777359, 0.486147, 0.399217,
		38.604755, 27.543055, 24.458384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100578, 27.841013, 23.684006>,  <38.060604, 27.202753, 24.178932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100578, 27.841013, 23.684006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442204, 27.804131, 23.888775>,  <38.647179, 27.782001, 24.011637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442204, 27.804131, 23.888775>,  <38.100578, 27.841013, 23.684006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442204, 27.804131, 23.888775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519755, 0.112332, -0.846898,
		0.020585, 0.989383, 0.143865,
		0.854067, -0.092208, 0.511925,
		38.698425, 27.776468, 24.042353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591541, 28.338583, 23.371515>,  <38.100578, 27.841013, 23.684006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591541, 28.338583, 23.371515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.802540, 28.050011, 23.550974>,  <38.929138, 27.876867, 23.658649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.802540, 28.050011, 23.550974>,  <38.591541, 28.338583, 23.371515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802540, 28.050011, 23.550974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686715, 0.051172, -0.725123,
		0.500169, 0.690592, 0.522411,
		0.527497, -0.721432, 0.448646,
		38.960789, 27.833582, 23.685568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674118, 29.104153, 23.328001>,  <38.591541, 28.338583, 23.371515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674118, 29.104153, 23.328001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.530010, 29.340143, 23.038965>,  <38.443546, 29.481737, 22.865543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.530010, 29.340143, 23.038965>,  <38.674118, 29.104153, 23.328001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530010, 29.340143, 23.038965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877904, 0.047479, 0.476477,
		0.315417, 0.806025, 0.500836,
		-0.360273, 0.589975, -0.722588,
		38.421928, 29.517136, 22.822189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527164, 29.721218, 23.584707>,  <38.674118, 29.104153, 23.328001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527164, 29.721218, 23.584707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.298004, 29.666119, 23.261520>,  <38.160507, 29.633059, 23.067608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.298004, 29.666119, 23.261520>,  <38.527164, 29.721218, 23.584707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298004, 29.666119, 23.261520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813511, -0.024606, 0.581028,
		-0.099916, 0.990162, -0.097962,
		-0.572902, -0.137747, -0.807966,
		38.126133, 29.624794, 23.019131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905190, 30.257750, 23.543646>,  <38.527164, 29.721218, 23.584707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905190, 30.257750, 23.543646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.809570, 29.920704, 23.350626>,  <37.752197, 29.718477, 23.234814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.809570, 29.920704, 23.350626>,  <37.905190, 30.257750, 23.543646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809570, 29.920704, 23.350626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836984, -0.073127, 0.542319,
		-0.492254, 0.533529, -0.687774,
		-0.239048, -0.842615, -0.482552,
		37.737858, 29.667919, 23.205860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348339, 30.411869, 23.243351>,  <37.905190, 30.257750, 23.543646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348339, 30.411869, 23.243351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353161, 30.012636, 23.267645>,  <37.356052, 29.773096, 23.282221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353161, 30.012636, 23.267645>,  <37.348339, 30.411869, 23.243351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353161, 30.012636, 23.267645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870366, 0.019429, 0.492021,
		-0.492257, -0.058792, -0.868462,
		0.012054, -0.998082, 0.060735,
		37.356777, 29.713211, 23.285866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725601, 30.168936, 22.799187>,  <37.348339, 30.411869, 23.243351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725601, 30.168936, 22.799187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832619, 29.867760, 23.039686>,  <36.896832, 29.687054, 23.183987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832619, 29.867760, 23.039686>,  <36.725601, 30.168936, 22.799187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832619, 29.867760, 23.039686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896068, 0.034975, 0.442537,
		-0.354232, -0.657160, -0.665327,
		0.267548, -0.752939, 0.601250,
		36.912884, 29.641878, 23.220060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201920, 29.780922, 22.836208>,  <36.725601, 30.168936, 22.799187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201920, 29.780922, 22.836208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394566, 29.670536, 23.168928>,  <36.510151, 29.604303, 23.368561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394566, 29.670536, 23.168928>,  <36.201920, 29.780922, 22.836208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394566, 29.670536, 23.168928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872788, -0.065132, 0.483734,
		-0.079327, -0.958952, -0.272245,
		0.481610, -0.275986, 0.831795,
		36.539047, 29.587746, 23.418468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796631, 29.261087, 23.123922>,  <36.201920, 29.780922, 22.836208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796631, 29.261087, 23.123922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010090, 29.342316, 23.452307>,  <36.138165, 29.391052, 23.649338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010090, 29.342316, 23.452307>,  <35.796631, 29.261087, 23.123922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010090, 29.342316, 23.452307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825736, -0.084586, 0.557678,
		0.182692, -0.975503, 0.122547,
		0.533651, 0.203075, 0.820961,
		36.170185, 29.403236, 23.698595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.300232, 32.151001, 22.777523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.239029, 31.805246, 22.969116>,  <42.202309, 31.597794, 23.084072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.239029, 31.805246, 22.969116>,  <42.300232, 32.151001, 22.777523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239029, 31.805246, 22.969116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794937, 0.395598, 0.459975,
		-0.587082, -0.310383, -0.747661,
		-0.153005, -0.864386, 0.478983,
		42.193127, 31.545931, 23.112812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560207, 32.099453, 22.734838>,  <42.300232, 32.151001, 22.777523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560207, 32.099453, 22.734838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.677376, 31.845404, 23.020721>,  <41.747677, 31.692972, 23.192251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.677376, 31.845404, 23.020721>,  <41.560207, 32.099453, 22.734838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677376, 31.845404, 23.020721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771564, 0.284458, 0.569010,
		-0.564699, -0.718120, -0.406717,
		0.292923, -0.635128, 0.714709,
		41.765251, 31.654865, 23.235134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078754, 31.687054, 22.935898>,  <41.560207, 32.099453, 22.734838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078754, 31.687054, 22.935898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.314365, 31.641033, 23.255852>,  <41.455730, 31.613420, 23.447824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.314365, 31.641033, 23.255852>,  <41.078754, 31.687054, 22.935898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314365, 31.641033, 23.255852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719977, 0.374792, 0.584092,
		-0.366991, -0.919942, 0.137927,
		0.589025, -0.115053, 0.799883,
		41.491074, 31.606518, 23.495817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644688, 31.210430, 23.421076>,  <41.078754, 31.687054, 22.935898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644688, 31.210430, 23.421076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.907082, 31.443405, 23.613094>,  <41.064518, 31.583189, 23.728306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.907082, 31.443405, 23.613094>,  <40.644688, 31.210430, 23.421076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907082, 31.443405, 23.613094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743396, 0.388580, 0.544397,
		0.130538, -0.713985, 0.687884,
		0.655990, 0.582435, 0.480049,
		41.103878, 31.618135, 23.757109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464153, 31.218317, 24.170305>,  <40.644688, 31.210430, 23.421076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464153, 31.218317, 24.170305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.682316, 31.552454, 24.142797>,  <40.813213, 31.752937, 24.126293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.682316, 31.552454, 24.142797>,  <40.464153, 31.218317, 24.170305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682316, 31.552454, 24.142797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663777, 0.480569, 0.573109,
		0.511794, -0.266928, 0.816588,
		0.545406, 0.835346, -0.068772,
		40.845940, 31.803057, 24.122168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537472, 31.502697, 24.899405>,  <40.464153, 31.218317, 24.170305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537472, 31.502697, 24.899405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.642899, 31.798824, 24.652031>,  <40.706154, 31.976501, 24.503607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.642899, 31.798824, 24.652031>,  <40.537472, 31.502697, 24.899405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642899, 31.798824, 24.652031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590414, 0.630798, 0.503493,
		0.762852, 0.232427, 0.603353,
		0.263568, 0.740319, -0.618433,
		40.721970, 32.020920, 24.466501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750130, 31.974022, 25.381838>,  <40.537472, 31.502697, 24.899405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750130, 31.974022, 25.381838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.652313, 32.151375, 25.036907>,  <40.593624, 32.257786, 24.829948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.652313, 32.151375, 25.036907>,  <40.750130, 31.974022, 25.381838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652313, 32.151375, 25.036907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706165, 0.528006, 0.471743,
		0.664477, 0.724307, 0.183982,
		-0.244543, 0.443384, -0.862328,
		40.578949, 32.284389, 24.778210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783230, 32.620857, 25.595985>,  <40.750130, 31.974022, 25.381838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783230, 32.620857, 25.595985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.574532, 32.607647, 25.255001>,  <40.449314, 32.599720, 25.050409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.574532, 32.607647, 25.255001>,  <40.783230, 32.620857, 25.595985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574532, 32.607647, 25.255001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747053, 0.500200, 0.437848,
		0.411941, 0.865280, -0.285651,
		-0.521744, -0.033029, -0.852463,
		40.418007, 32.597740, 24.999262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603687, 33.363598, 25.468315>,  <40.783230, 32.620857, 25.595985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603687, 33.363598, 25.468315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.351704, 33.138847, 25.253860>,  <40.200512, 33.003998, 25.125189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.351704, 33.138847, 25.253860>,  <40.603687, 33.363598, 25.468315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351704, 33.138847, 25.253860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774027, 0.397799, 0.492583,
		-0.063498, 0.725291, -0.685508,
		-0.629961, -0.561880, -0.536135,
		40.162716, 32.970284, 25.093019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178013, 33.819809, 25.121735>,  <40.603687, 33.363598, 25.468315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178013, 33.819809, 25.121735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981628, 33.471668, 25.136965>,  <39.863800, 33.262783, 25.146103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981628, 33.471668, 25.136965>,  <40.178013, 33.819809, 25.121735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981628, 33.471668, 25.136965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784688, 0.460775, 0.414669,
		-0.378452, 0.173708, -0.909175,
		-0.490957, -0.870351, 0.038074,
		39.834343, 33.210564, 25.148388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396091, 34.001526, 24.913004>,  <40.178013, 33.819809, 25.121735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396091, 34.001526, 24.913004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387909, 33.650677, 25.104939>,  <39.382999, 33.440166, 25.220100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.387909, 33.650677, 25.104939>,  <39.396091, 34.001526, 24.913004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387909, 33.650677, 25.104939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913621, 0.211321, 0.347334,
		-0.406053, -0.431284, -0.805677,
		-0.020457, -0.877119, 0.479838,
		39.381771, 33.387543, 25.248890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674931, 33.843838, 24.954283>,  <39.396091, 34.001526, 24.913004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674931, 33.843838, 24.954283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.811558, 33.579346, 25.221449>,  <38.893536, 33.420650, 25.381748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.811558, 33.579346, 25.221449>,  <38.674931, 33.843838, 24.954283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811558, 33.579346, 25.221449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815318, 0.145050, 0.560551,
		-0.467532, -0.736031, -0.489564,
		0.341572, -0.661226, 0.667915,
		38.914028, 33.380978, 25.421824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093838, 33.585693, 24.541914>,  <38.674931, 33.843838, 24.954283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093838, 33.585693, 24.541914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829361, 33.698227, 24.263725>,  <37.670677, 33.765747, 24.096811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829361, 33.698227, 24.263725>,  <38.093838, 33.585693, 24.541914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829361, 33.698227, 24.263725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626877, -0.302082, -0.718172,
		-0.412135, -0.910823, 0.023373,
		-0.661188, 0.281332, -0.695473,
		37.631004, 33.782627, 24.055084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128769, 33.077785, 24.033974>,  <38.093838, 33.585693, 24.541914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128769, 33.077785, 24.033974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000736, 33.415699, 23.862446>,  <37.923916, 33.618446, 23.759529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000736, 33.415699, 23.862446>,  <38.128769, 33.077785, 24.033974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000736, 33.415699, 23.862446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626235, -0.150986, -0.764874,
		-0.710901, -0.513362, -0.480707,
		-0.320077, 0.844785, -0.428822,
		37.904713, 33.669136, 23.733799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130299, 32.886589, 23.303072>,  <38.128769, 33.077785, 24.033974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130299, 32.886589, 23.303072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126068, 33.286030, 23.323797>,  <38.123528, 33.525696, 23.336231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126068, 33.286030, 23.323797>,  <38.130299, 32.886589, 23.303072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126068, 33.286030, 23.323797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716197, 0.043725, -0.696527,
		-0.697818, 0.029739, -0.715658,
		-0.010578, 0.998601, 0.051811,
		38.122894, 33.585609, 23.339340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054050, 33.026917, 22.592999>,  <38.130299, 32.886589, 23.303072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054050, 33.026917, 22.592999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203484, 33.338516, 22.794434>,  <38.293144, 33.525475, 22.915295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203484, 33.338516, 22.794434>,  <38.054050, 33.026917, 22.592999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203484, 33.338516, 22.794434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823405, -0.028508, -0.566737,
		-0.427129, 0.626382, -0.652079,
		0.373583, 0.778995, 0.503589,
		38.315559, 33.572216, 22.945511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331348, 33.396584, 22.102001>,  <38.054050, 33.026917, 22.592999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331348, 33.396584, 22.102001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.506443, 33.554874, 22.424934>,  <38.611500, 33.649849, 22.618694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.506443, 33.554874, 22.424934>,  <38.331348, 33.396584, 22.102001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506443, 33.554874, 22.424934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851983, 0.104303, -0.513075,
		-0.287243, 0.912427, -0.291492,
		0.437740, 0.395724, 0.807333,
		38.637764, 33.673592, 22.667135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667404, 33.987862, 21.821987>,  <38.331348, 33.396584, 22.102001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667404, 33.987862, 21.821987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.858032, 33.871655, 22.153887>,  <38.972408, 33.801929, 22.353027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.858032, 33.871655, 22.153887>,  <38.667404, 33.987862, 21.821987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858032, 33.871655, 22.153887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861387, -0.034401, -0.506784,
		0.175772, 0.956252, 0.233851,
		0.476568, -0.290515, 0.829749,
		39.001003, 33.784500, 22.402811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290226, 34.218739, 21.634336>,  <38.667404, 33.987862, 21.821987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290226, 34.218739, 21.634336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.354942, 34.013416, 21.971462>,  <39.393772, 33.890221, 22.173738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.354942, 34.013416, 21.971462>,  <39.290226, 34.218739, 21.634336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354942, 34.013416, 21.971462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915383, -0.240980, -0.322493,
		0.368641, 0.823676, 0.430885,
		0.161795, -0.513309, 0.842815,
		39.403481, 33.859425, 22.224306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889946, 34.399395, 21.795534>,  <39.290226, 34.218739, 21.634336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889946, 34.399395, 21.795534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846684, 34.048416, 21.982460>,  <39.820724, 33.837830, 22.094616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846684, 34.048416, 21.982460>,  <39.889946, 34.399395, 21.795534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846684, 34.048416, 21.982460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841594, -0.331032, -0.426776,
		0.529171, 0.347129, 0.774261,
		-0.108159, -0.877451, 0.467314,
		39.814236, 33.785179, 22.122654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610687, 34.242199, 22.168406>,  <39.889946, 34.399395, 21.795534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610687, 34.242199, 22.168406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.404549, 33.903305, 22.116850>,  <40.280865, 33.699970, 22.085917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.404549, 33.903305, 22.116850>,  <40.610687, 34.242199, 22.168406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404549, 33.903305, 22.116850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810254, -0.432723, -0.395272,
		0.279115, -0.308134, 0.909477,
		-0.515348, -0.847234, -0.128887,
		40.249943, 33.649136, 22.078184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063782, 33.754723, 22.217339>,  <40.610687, 34.242199, 22.168406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063782, 33.754723, 22.217339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.782986, 33.558468, 22.010849>,  <40.614510, 33.440716, 21.886955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.782986, 33.558468, 22.010849>,  <41.063782, 33.754723, 22.217339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782986, 33.558468, 22.010849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712147, -0.475446, -0.516526,
		0.007991, -0.730222, 0.683163,
		-0.701985, -0.490640, -0.516226,
		40.572392, 33.411278, 21.855982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237087, 33.012348, 22.294256>,  <41.063782, 33.754723, 22.217339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237087, 33.012348, 22.294256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984364, 33.036743, 21.985167>,  <40.832729, 33.051380, 21.799713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984364, 33.036743, 21.985167>,  <41.237087, 33.012348, 22.294256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984364, 33.036743, 21.985167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628125, -0.543845, -0.556499,
		-0.454179, -0.836967, 0.305300,
		-0.631807, 0.060983, -0.772723,
		40.794823, 33.055038, 21.753349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238899, 32.397655, 21.923019>,  <41.237087, 33.012348, 22.294256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238899, 32.397655, 21.923019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136250, 32.677219, 21.655983>,  <41.074661, 32.844955, 21.495762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136250, 32.677219, 21.655983>,  <41.238899, 32.397655, 21.923019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136250, 32.677219, 21.655983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812826, -0.217654, -0.540315,
		-0.522933, -0.681292, -0.512233,
		-0.256622, 0.698905, -0.667590,
		41.059261, 32.886890, 21.455706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411026, 32.093437, 21.104467>,  <41.238899, 32.397655, 21.923019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411026, 32.093437, 21.104467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.386410, 32.492641, 21.109936>,  <41.371639, 32.732162, 21.113216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.386410, 32.492641, 21.109936>,  <41.411026, 32.093437, 21.104467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386410, 32.492641, 21.109936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801270, 0.057568, -0.595527,
		-0.595130, -0.025695, -0.803219,
		-0.061542, 0.998011, 0.013671,
		41.367947, 32.792046, 21.114037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876274, 31.640518, 21.554787>,  <41.411026, 32.093437, 21.104467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876274, 31.640518, 21.554787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.943188, 31.265448, 21.432951>,  <40.983334, 31.040405, 21.359850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.943188, 31.265448, 21.432951>,  <40.876274, 31.640518, 21.554787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943188, 31.265448, 21.432951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877234, -0.282565, 0.388095,
		-0.449975, 0.202277, -0.869831,
		0.167281, -0.937679, -0.304591,
		40.993374, 30.984144, 21.341574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255772, 31.470734, 21.307709>,  <40.876274, 31.640518, 21.554787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255772, 31.470734, 21.307709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434635, 31.116528, 21.358162>,  <40.541954, 30.904003, 21.388433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434635, 31.116528, 21.358162>,  <40.255772, 31.470734, 21.307709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434635, 31.116528, 21.358162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892604, -0.432720, 0.126534,
		-0.057468, -0.169167, -0.983911,
		0.447163, -0.885514, 0.126131,
		40.568783, 30.850874, 21.396002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892601, 31.066807, 20.908024>,  <40.255772, 31.470734, 21.307709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892601, 31.066807, 20.908024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.058712, 30.807329, 21.163130>,  <40.158379, 30.651642, 21.316193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.058712, 30.807329, 21.163130>,  <39.892601, 31.066807, 20.908024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058712, 30.807329, 21.163130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874887, -0.476877, 0.084625,
		0.249240, -0.593114, -0.765569,
		0.415274, -0.648694, 0.637764,
		40.183296, 30.612720, 21.354460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695694, 30.370901, 20.737225>,  <39.892601, 31.066807, 20.908024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695694, 30.370901, 20.737225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.790306, 30.365551, 21.125837>,  <39.847073, 30.362341, 21.359005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.790306, 30.365551, 21.125837>,  <39.695694, 30.370901, 20.737225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790306, 30.365551, 21.125837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836928, -0.510735, 0.196728,
		0.493564, -0.859634, -0.132000,
		0.236531, -0.013377, 0.971532,
		39.861267, 30.361538, 21.417297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176693, 29.908428, 20.928453>,  <39.695694, 30.370901, 20.737225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176693, 29.908428, 20.928453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333084, 29.995983, 21.286051>,  <39.426918, 30.048517, 21.500608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333084, 29.995983, 21.286051>,  <39.176693, 29.908428, 20.928453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333084, 29.995983, 21.286051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805628, -0.388315, 0.447410,
		0.445085, -0.895153, 0.024521,
		0.390978, 0.218890, 0.893993,
		39.450378, 30.061649, 21.554249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108799, 29.321419, 21.307640>,  <39.176693, 29.908428, 20.928453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108799, 29.321419, 21.307640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.154945, 29.606075, 21.584843>,  <39.182632, 29.776869, 21.751165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.154945, 29.606075, 21.584843>,  <39.108799, 29.321419, 21.307640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154945, 29.606075, 21.584843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715125, -0.424709, 0.555174,
		0.689411, -0.559636, 0.459914,
		0.115366, 0.711639, 0.693008,
		39.189556, 29.819567, 21.792746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257538, 29.007677, 21.982166>,  <39.108799, 29.321419, 21.307640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257538, 29.007677, 21.982166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.105103, 29.369175, 22.060160>,  <39.013641, 29.586073, 22.106956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.105103, 29.369175, 22.060160>,  <39.257538, 29.007677, 21.982166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105103, 29.369175, 22.060160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718204, -0.422187, 0.553119,
		0.582198, 0.070750, 0.809963,
		-0.381089, 0.903744, 0.194983,
		38.990776, 29.640299, 22.118654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213295, 29.099890, 22.744612>,  <39.257538, 29.007677, 21.982166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213295, 29.099890, 22.744612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943241, 29.350863, 22.589426>,  <38.781208, 29.501446, 22.496315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943241, 29.350863, 22.589426>,  <39.213295, 29.099890, 22.744612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943241, 29.350863, 22.589426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704215, -0.391536, 0.592267,
		0.219707, 0.673072, 0.706189,
		-0.675137, 0.627434, -0.387964,
		38.740700, 29.539093, 22.473038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287003, 28.446743, 23.141230>,  <39.213295, 29.099890, 22.744612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287003, 28.446743, 23.141230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.309963, 28.071817, 23.278721>,  <39.323738, 27.846863, 23.361216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.309963, 28.071817, 23.278721>,  <39.287003, 28.446743, 23.141230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309963, 28.071817, 23.278721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665885, -0.220582, -0.712699,
		0.743843, 0.269792, 0.611482,
		0.057399, -0.937313, 0.343728,
		39.327183, 27.790623, 23.381840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025208, 28.264656, 23.148846>,  <39.287003, 28.446743, 23.141230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025208, 28.264656, 23.148846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817997, 27.922510, 23.149456>,  <39.693672, 27.717222, 23.149822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817997, 27.922510, 23.149456>,  <40.025208, 28.264656, 23.148846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817997, 27.922510, 23.149456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665929, -0.404421, -0.626883,
		0.536829, -0.323727, 0.779112,
		-0.518028, -0.855363, 0.001526,
		39.662590, 27.665901, 23.149914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567429, 27.772888, 23.137465>,  <40.025208, 28.264656, 23.148846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567429, 27.772888, 23.137465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242569, 27.581963, 23.003250>,  <40.047653, 27.467407, 22.922722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242569, 27.581963, 23.003250>,  <40.567429, 27.772888, 23.137465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242569, 27.581963, 23.003250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555623, -0.457241, -0.694416,
		0.178033, -0.750401, 0.636555,
		-0.812150, -0.477314, -0.335536,
		39.998924, 27.438768, 22.902590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785576, 27.131887, 23.035126>,  <40.567429, 27.772888, 23.137465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785576, 27.131887, 23.035126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.464809, 27.156914, 22.797462>,  <40.272350, 27.171930, 22.654865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.464809, 27.156914, 22.797462>,  <40.785576, 27.131887, 23.035126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464809, 27.156914, 22.797462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550231, -0.310127, -0.775285,
		-0.232772, -0.948634, 0.214268,
		-0.801912, 0.062568, -0.594157,
		40.224236, 27.175684, 22.619215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695618, 26.515219, 22.854662>,  <40.785576, 27.131887, 23.035126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695618, 26.515219, 22.854662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521854, 26.755268, 22.585993>,  <40.417599, 26.899298, 22.424791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521854, 26.755268, 22.585993>,  <40.695618, 26.515219, 22.854662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521854, 26.755268, 22.585993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610520, -0.352089, -0.709435,
		-0.662236, -0.718253, -0.213436,
		-0.434406, 0.600121, -0.671674,
		40.391533, 26.935305, 22.384491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710827, 26.129839, 22.259266>,  <40.695618, 26.515219, 22.854662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710827, 26.129839, 22.259266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.615383, 26.487225, 22.107059>,  <40.558117, 26.701656, 22.015736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.615383, 26.487225, 22.107059>,  <40.710827, 26.129839, 22.259266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615383, 26.487225, 22.107059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594798, -0.175279, -0.784534,
		-0.767648, -0.413524, -0.489607,
		-0.238606, 0.893463, -0.380515,
		40.543800, 26.755264, 21.992905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583813, 25.977261, 21.565340>,  <40.710827, 26.129839, 22.259266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583813, 25.977261, 21.565340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.686359, 26.363209, 21.588308>,  <40.747887, 26.594778, 21.602089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.686359, 26.363209, 21.588308>,  <40.583813, 25.977261, 21.565340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686359, 26.363209, 21.588308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582412, -0.106790, -0.805849,
		-0.771408, 0.240039, -0.589330,
		0.256370, 0.964872, 0.057423,
		40.763271, 26.652670, 21.605536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903034, 26.041828, 21.004261>,  <40.583813, 25.977261, 21.565340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903034, 26.041828, 21.004261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.999512, 26.403214, 21.146011>,  <41.057396, 26.620045, 21.231062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.999512, 26.403214, 21.146011>,  <40.903034, 26.041828, 21.004261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999512, 26.403214, 21.146011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805041, 0.017667, -0.592956,
		-0.541974, 0.428303, -0.723063,
		0.241190, 0.903462, 0.354377,
		41.071869, 26.674252, 21.252325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902550, 26.505762, 20.462349>,  <40.903034, 26.041828, 21.004261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902550, 26.505762, 20.462349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.128685, 26.634953, 20.765947>,  <41.264366, 26.712467, 20.948107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.128685, 26.634953, 20.765947>,  <40.902550, 26.505762, 20.462349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128685, 26.634953, 20.765947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814151, -0.070708, -0.576332,
		-0.132473, 0.943763, -0.302924,
		0.565340, 0.322975, 0.758998,
		41.298286, 26.731846, 20.993647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.815756, 31.125101, 33.333385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420074, 31.068769, 33.349617>,  <31.182667, 31.034971, 33.359356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420074, 31.068769, 33.349617>,  <31.815756, 31.125101, 33.333385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420074, 31.068769, 33.349617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032847, 0.482888, 0.875066,
		-0.142832, 0.864284, -0.482299,
		-0.989202, -0.140829, 0.040582,
		31.123314, 31.026520, 33.361794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490112, 30.798988, 32.719227>,  <31.815756, 31.125101, 33.333385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490112, 30.798988, 32.719227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.781092, 30.629818, 32.935356>,  <31.955679, 30.528315, 33.065033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.781092, 30.629818, 32.935356>,  <31.490112, 30.798988, 32.719227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781092, 30.629818, 32.935356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604854, 0.023419, -0.795992,
		0.323993, 0.905861, 0.272846,
		0.727448, -0.422928, 0.540325,
		31.999327, 30.502939, 33.097454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155579, 31.093161, 32.517799>,  <31.490112, 30.798988, 32.719227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155579, 31.093161, 32.517799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281086, 30.754189, 32.689106>,  <32.356392, 30.550806, 32.791889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281086, 30.754189, 32.689106>,  <32.155579, 31.093161, 32.517799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281086, 30.754189, 32.689106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599001, -0.173294, -0.781772,
		0.736712, 0.501829, 0.453237,
		0.313772, -0.847430, 0.428263,
		32.375217, 30.499960, 32.817585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987194, 30.982042, 32.435783>,  <32.155579, 31.093161, 32.517799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987194, 30.982042, 32.435783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814804, 30.624269, 32.483540>,  <32.711369, 30.409607, 32.512192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814804, 30.624269, 32.483540>,  <32.987194, 30.982042, 32.435783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814804, 30.624269, 32.483540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567553, -0.371544, -0.734737,
		0.701530, -0.248895, 0.667763,
		-0.430976, -0.894431, 0.119388,
		32.685513, 30.355940, 32.519356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587708, 30.471783, 32.300545>,  <32.987194, 30.982042, 32.435783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587708, 30.471783, 32.300545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246868, 30.262589, 32.292477>,  <33.042362, 30.137072, 32.287636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246868, 30.262589, 32.292477>,  <33.587708, 30.471783, 32.300545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246868, 30.262589, 32.292477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341554, -0.526472, -0.778568,
		0.396561, -0.670309, 0.627236,
		-0.852103, -0.522985, -0.020168,
		32.991238, 30.105694, 32.286427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800716, 29.837320, 32.313278>,  <33.587708, 30.471783, 32.300545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800716, 29.837320, 32.313278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436962, 29.811544, 32.148907>,  <33.218708, 29.796078, 32.050285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436962, 29.811544, 32.148907>,  <33.800716, 29.837320, 32.313278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436962, 29.811544, 32.148907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342798, -0.675670, -0.652656,
		-0.235594, -0.734383, 0.636536,
		-0.909387, -0.064441, -0.410928,
		33.164146, 29.792212, 32.025627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822659, 29.125994, 32.135128>,  <33.800716, 29.837320, 32.313278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822659, 29.125994, 32.135128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520939, 29.295076, 31.934189>,  <33.339909, 29.396526, 31.813625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520939, 29.295076, 31.934189>,  <33.822659, 29.125994, 32.135128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520939, 29.295076, 31.934189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186872, -0.595267, -0.781496,
		-0.629378, -0.683354, 0.370014,
		-0.754296, 0.422711, -0.502348,
		33.294651, 29.421888, 31.783485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533741, 28.566647, 31.759830>,  <33.822659, 29.125994, 32.135128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533741, 28.566647, 31.759830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396366, 28.896603, 31.580227>,  <33.313942, 29.094576, 31.472466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396366, 28.896603, 31.580227>,  <33.533741, 28.566647, 31.759830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396366, 28.896603, 31.580227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448540, -0.275979, -0.850087,
		-0.825144, -0.493350, -0.275214,
		-0.343437, 0.824889, -0.449009,
		33.293335, 29.144070, 31.445524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898098, 28.351553, 31.276514>,  <33.533741, 28.566647, 31.759830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898098, 28.351553, 31.276514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104481, 28.674046, 31.160734>,  <33.228310, 28.867540, 31.091267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104481, 28.674046, 31.160734>,  <32.898098, 28.351553, 31.276514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104481, 28.674046, 31.160734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295352, -0.484612, -0.823358,
		-0.804088, 0.339327, -0.488160,
		0.515956, 0.806231, -0.289450,
		33.259266, 28.915915, 31.073898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702251, 28.370810, 30.601311>,  <32.898098, 28.351553, 31.276514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702251, 28.370810, 30.601311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015495, 28.619564, 30.602058>,  <33.203442, 28.768816, 30.602507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015495, 28.619564, 30.602058>,  <32.702251, 28.370810, 30.601311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015495, 28.619564, 30.602058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292612, -0.365814, -0.883492,
		-0.548747, 0.692415, -0.468442,
		0.783106, 0.621885, 0.001870,
		33.250427, 28.806129, 30.602619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790836, 28.646336, 29.890932>,  <32.702251, 28.370810, 30.601311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790836, 28.646336, 29.890932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144470, 28.676832, 30.075357>,  <33.356651, 28.695129, 30.186012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144470, 28.676832, 30.075357>,  <32.790836, 28.646336, 29.890932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144470, 28.676832, 30.075357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444332, -0.442801, -0.778779,
		0.144786, 0.893372, -0.425350,
		0.884085, 0.076241, 0.461065,
		33.409695, 28.699705, 30.213676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220329, 28.817877, 29.334976>,  <32.790836, 28.646336, 29.890932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220329, 28.817877, 29.334976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478668, 28.715467, 29.622679>,  <33.633671, 28.654022, 29.795300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478668, 28.715467, 29.622679>,  <33.220329, 28.817877, 29.334976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478668, 28.715467, 29.622679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577959, -0.451597, -0.679723,
		0.498840, 0.854700, -0.143691,
		0.645850, -0.256025, 0.719256,
		33.672424, 28.638660, 29.838455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131466, 29.520319, 29.075905>,  <33.220329, 28.817877, 29.334976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131466, 29.520319, 29.075905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869785, 29.481703, 28.775852>,  <32.712776, 29.458534, 28.595821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869785, 29.481703, 28.775852>,  <33.131466, 29.520319, 29.075905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869785, 29.481703, 28.775852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725285, 0.361265, 0.586045,
		0.214419, 0.927452, -0.306361,
		-0.654206, -0.096540, -0.750130,
		32.673523, 29.452742, 28.550814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795818, 30.192471, 29.102600>,  <33.131466, 29.520319, 29.075905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795818, 30.192471, 29.102600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571384, 29.920515, 28.913734>,  <32.436726, 29.757341, 28.800415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571384, 29.920515, 28.913734>,  <32.795818, 30.192471, 29.102600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571384, 29.920515, 28.913734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808088, 0.326279, 0.490444,
		-0.179391, 0.656729, -0.732480,
		-0.561081, -0.679890, -0.472163,
		32.403061, 29.716549, 28.772085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213890, 30.495546, 28.779287>,  <32.795818, 30.192471, 29.102600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213890, 30.495546, 28.779287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060215, 30.129974, 28.831640>,  <31.968010, 29.910631, 28.863052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060215, 30.129974, 28.831640>,  <32.213890, 30.495546, 28.779287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060215, 30.129974, 28.831640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747487, 0.391113, 0.536930,
		-0.541906, 0.108450, -0.833413,
		-0.384188, -0.913931, 0.130881,
		31.944958, 29.855795, 28.870905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545826, 30.669865, 28.707970>,  <32.213890, 30.495546, 28.779287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545826, 30.669865, 28.707970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.536003, 30.296373, 28.850822>,  <31.530109, 30.072279, 28.936535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.536003, 30.296373, 28.850822>,  <31.545826, 30.669865, 28.707970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536003, 30.296373, 28.850822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822614, 0.221872, 0.523526,
		-0.568071, -0.280928, -0.773547,
		-0.024555, -0.933731, 0.357134,
		31.528637, 30.016254, 28.957962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942507, 30.269516, 28.351225>,  <31.545826, 30.669865, 28.707970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942507, 30.269516, 28.351225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.032587, 30.099358, 28.701841>,  <31.086636, 29.997263, 28.912210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.032587, 30.099358, 28.701841>,  <30.942507, 30.269516, 28.351225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032587, 30.099358, 28.701841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878332, 0.300731, 0.371611,
		-0.421685, -0.853580, -0.305915,
		0.225201, -0.425397, 0.876540,
		31.100147, 29.971739, 28.964804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474245, 29.723404, 28.535246>,  <30.942507, 30.269516, 28.351225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474245, 29.723404, 28.535246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.619286, 29.824856, 28.893953>,  <30.706310, 29.885727, 29.109177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.619286, 29.824856, 28.893953>,  <30.474245, 29.723404, 28.535246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619286, 29.824856, 28.893953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931432, 0.066743, 0.357743,
		0.030881, -0.964996, 0.260441,
		0.362603, 0.253631, 0.896767,
		30.728067, 29.900944, 29.162983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947611, 29.610476, 29.052425>,  <30.474245, 29.723404, 28.535246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947611, 29.610476, 29.052425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.208626, 29.807358, 29.282877>,  <30.365234, 29.925488, 29.421148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.208626, 29.807358, 29.282877>,  <29.947611, 29.610476, 29.052425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208626, 29.807358, 29.282877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704805, 0.115016, 0.700015,
		0.278287, -0.862847, 0.421962,
		0.652538, 0.492206, 0.576131,
		30.404387, 29.955019, 29.455717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793556, 29.378706, 29.738075>,  <29.947611, 29.610476, 29.052425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793556, 29.378706, 29.738075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.950407, 29.746426, 29.751492>,  <30.044518, 29.967058, 29.759542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.950407, 29.746426, 29.751492>,  <29.793556, 29.378706, 29.738075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950407, 29.746426, 29.751492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740439, 0.293779, 0.604519,
		0.545880, -0.261885, 0.795884,
		0.392128, 0.919299, 0.033542,
		30.068047, 30.022215, 29.761555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826183, 29.580160, 30.406809>,  <29.793556, 29.378706, 29.738075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826183, 29.580160, 30.406809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.839247, 29.932150, 30.217251>,  <29.847084, 30.143345, 30.103516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.839247, 29.932150, 30.217251>,  <29.826183, 29.580160, 30.406809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839247, 29.932150, 30.217251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615551, 0.391261, 0.684114,
		0.787420, 0.269365, 0.554447,
		0.032657, 0.879975, -0.473895,
		29.849045, 30.196142, 30.075083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975166, 29.981033, 30.949150>,  <29.826183, 29.580160, 30.406809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975166, 29.981033, 30.949150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.842220, 30.254616, 30.689386>,  <29.762453, 30.418766, 30.533527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.842220, 30.254616, 30.689386>,  <29.975166, 29.981033, 30.949150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842220, 30.254616, 30.689386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502730, 0.454108, 0.735560,
		0.797994, 0.570954, 0.192915,
		-0.332367, 0.683957, -0.649411,
		29.742510, 30.459803, 30.494562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052769, 30.574993, 31.287977>,  <29.975166, 29.981033, 30.949150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052769, 30.574993, 31.287977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.786699, 30.660507, 31.001804>,  <29.627058, 30.711815, 30.830101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.786699, 30.660507, 31.001804>,  <30.052769, 30.574993, 31.287977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786699, 30.660507, 31.001804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433263, 0.669844, 0.602986,
		0.608136, 0.711060, -0.352937,
		-0.665172, 0.213783, -0.715432,
		29.587149, 30.724642, 30.787174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961048, 31.267982, 31.361904>,  <30.052769, 30.574993, 31.287977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961048, 31.267982, 31.361904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635765, 31.170118, 31.150686>,  <29.440596, 31.111401, 31.023954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635765, 31.170118, 31.150686>,  <29.961048, 31.267982, 31.361904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635765, 31.170118, 31.150686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498599, 0.760855, 0.415330,
		0.300152, 0.601034, -0.740721,
		-0.813209, -0.244660, -0.528046,
		29.391802, 31.096720, 30.992271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673843, 31.890141, 30.847500>,  <29.961048, 31.267982, 31.361904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673843, 31.890141, 30.847500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.371466, 31.645475, 30.940805>,  <29.190039, 31.498676, 30.996788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.371466, 31.645475, 30.940805>,  <29.673843, 31.890141, 30.847500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371466, 31.645475, 30.940805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399493, 0.713323, 0.575826,
		-0.518606, 0.342105, -0.783589,
		-0.755945, -0.611665, 0.233265,
		29.144682, 31.461975, 31.010784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101919, 32.327488, 30.732941>,  <29.673843, 31.890141, 30.847500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101919, 32.327488, 30.732941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.988827, 32.022961, 30.966333>,  <28.920971, 31.840244, 31.106369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.988827, 32.022961, 30.966333>,  <29.101919, 32.327488, 30.732941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988827, 32.022961, 30.966333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330990, 0.648374, 0.685607,
		-0.900282, 0.000717, -0.435307,
		-0.282733, -0.761322, 0.583482,
		28.904007, 31.794563, 31.141378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413630, 32.465996, 31.012619>,  <29.101919, 32.327488, 30.732941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413630, 32.465996, 31.012619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.622131, 32.220459, 31.249767>,  <28.747232, 32.073139, 31.392057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.622131, 32.220459, 31.249767>,  <28.413630, 32.465996, 31.012619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622131, 32.220459, 31.249767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218653, 0.575466, 0.788055,
		-0.824916, -0.540409, 0.165746,
		0.521253, -0.613838, 0.592873,
		28.778507, 32.036308, 31.427629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612852, 32.712883, 30.350922>,  <28.413630, 32.465996, 31.012619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612852, 32.712883, 30.350922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.933388, 32.915890, 30.477591>,  <29.125710, 33.037693, 30.553593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.933388, 32.915890, 30.477591>,  <28.612852, 32.712883, 30.350922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933388, 32.915890, 30.477591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247515, 0.200638, -0.947882,
		-0.544602, 0.837957, 0.035162,
		0.801340, 0.507516, 0.316675,
		29.173790, 33.068146, 30.572594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696358, 33.275932, 29.795439>,  <28.612852, 32.712883, 30.350922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696358, 33.275932, 29.795439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.029222, 33.196121, 30.002396>,  <29.228941, 33.148235, 30.126570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.029222, 33.196121, 30.002396>,  <28.696358, 33.275932, 29.795439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029222, 33.196121, 30.002396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548234, 0.155794, -0.821686,
		0.083343, 0.967428, 0.239034,
		0.832162, -0.199528, 0.517392,
		29.278872, 33.136261, 30.157614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086929, 33.760391, 29.682957>,  <28.696358, 33.275932, 29.795439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086929, 33.760391, 29.682957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.372631, 33.502605, 29.792135>,  <29.544052, 33.347935, 29.857643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.372631, 33.502605, 29.792135>,  <29.086929, 33.760391, 29.682957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372631, 33.502605, 29.792135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567809, 0.305578, -0.764340,
		0.409186, 0.700916, 0.584195,
		0.714255, -0.644468, 0.272948,
		29.586908, 33.309265, 29.874020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699640, 34.116486, 29.635330>,  <29.086929, 33.760391, 29.682957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699640, 34.116486, 29.635330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.820715, 33.735268, 29.631577>,  <29.893360, 33.506538, 29.629324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.820715, 33.735268, 29.631577>,  <29.699640, 34.116486, 29.635330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820715, 33.735268, 29.631577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626793, 0.206467, -0.751334,
		0.717991, 0.221539, 0.659856,
		0.302687, -0.953044, -0.009382,
		29.911522, 33.449356, 29.628761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428123, 34.009495, 29.588890>,  <29.699640, 34.116486, 29.635330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428123, 34.009495, 29.588890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311478, 33.652451, 29.451363>,  <30.241489, 33.438225, 29.368845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311478, 33.652451, 29.451363>,  <30.428123, 34.009495, 29.588890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311478, 33.652451, 29.451363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663172, 0.070365, -0.745153,
		0.689322, -0.445309, 0.571433,
		-0.291614, -0.892608, -0.343820,
		30.223993, 33.384666, 29.348217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034464, 33.772137, 29.385136>,  <30.428123, 34.009495, 29.588890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034464, 33.772137, 29.385136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.772326, 33.527348, 29.208042>,  <30.615044, 33.380474, 29.101786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.772326, 33.527348, 29.208042>,  <31.034464, 33.772137, 29.385136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772326, 33.527348, 29.208042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576730, -0.026911, -0.816492,
		0.487758, -0.790420, 0.370580,
		-0.655344, -0.611975, -0.442733,
		30.575722, 33.343754, 29.075222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499844, 33.371456, 29.023247>,  <31.034464, 33.772137, 29.385136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499844, 33.371456, 29.023247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.136591, 33.324047, 28.862623>,  <30.918640, 33.295601, 28.766249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.136591, 33.324047, 28.862623>,  <31.499844, 33.371456, 29.023247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136591, 33.324047, 28.862623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411813, -0.079804, -0.907767,
		0.075544, -0.989740, 0.121281,
		-0.908132, -0.118521, -0.401559,
		30.864151, 33.288490, 28.742155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446663, 32.680920, 28.635077>,  <31.499844, 33.371456, 29.023247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446663, 32.680920, 28.635077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191202, 32.951950, 28.489193>,  <31.037926, 33.114567, 28.401663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191202, 32.951950, 28.489193>,  <31.446663, 32.680920, 28.635077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191202, 32.951950, 28.489193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491368, -0.005643, -0.870934,
		-0.592181, -0.735432, -0.329335,
		-0.638654, 0.677575, -0.364709,
		30.999605, 33.155224, 28.379780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270771, 32.460239, 27.938854>,  <31.446663, 32.680920, 28.635077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270771, 32.460239, 27.938854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.206179, 32.852947, 27.978960>,  <31.167423, 33.088573, 28.003023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.206179, 32.852947, 27.978960>,  <31.270771, 32.460239, 27.938854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206179, 32.852947, 27.978960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511738, 0.170175, -0.842119,
		-0.843829, -0.084675, -0.529889,
		-0.161480, 0.981769, 0.100267,
		31.157734, 33.147476, 28.009041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410664, 32.638840, 27.257399>,  <31.270771, 32.460239, 27.938854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410664, 32.638840, 27.257399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385447, 32.993633, 27.440390>,  <31.370316, 33.206509, 27.550184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385447, 32.993633, 27.440390>,  <31.410664, 32.638840, 27.257399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385447, 32.993633, 27.440390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644291, 0.386242, -0.660081,
		-0.762177, 0.253133, -0.595827,
		-0.063045, 0.886984, 0.457476,
		31.366533, 33.259727, 27.577633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255272, 33.099464, 26.722490>,  <31.410664, 32.638840, 27.257399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255272, 33.099464, 26.722490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.436968, 33.292889, 27.021780>,  <31.545986, 33.408943, 27.201353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.436968, 33.292889, 27.021780>,  <31.255272, 33.099464, 26.722490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436968, 33.292889, 27.021780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689760, 0.340646, -0.638898,
		-0.563823, 0.806308, -0.178803,
		0.454241, 0.483557, 0.748223,
		31.573240, 33.437954, 27.246246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475567, 33.661339, 26.498011>,  <31.255272, 33.099464, 26.722490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475567, 33.661339, 26.498011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711187, 33.659576, 26.821243>,  <31.852560, 33.658520, 27.015182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711187, 33.659576, 26.821243>,  <31.475567, 33.661339, 26.498011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711187, 33.659576, 26.821243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764696, 0.326334, -0.555649,
		-0.261257, 0.945244, 0.195596,
		0.589054, -0.004404, 0.808082,
		31.887903, 33.658257, 27.063667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904728, 34.329926, 26.538895>,  <31.475567, 33.661339, 26.498011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904728, 34.329926, 26.538895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062054, 34.030895, 26.752974>,  <32.156448, 33.851479, 26.881420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062054, 34.030895, 26.752974>,  <31.904728, 34.329926, 26.538895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062054, 34.030895, 26.752974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915115, 0.262157, -0.306331,
		0.088700, 0.610251, 0.787227,
		0.393316, -0.747575, 0.535196,
		32.180050, 33.806622, 26.913532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604668, 34.618305, 26.636625>,  <31.904728, 34.329926, 26.538895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604668, 34.618305, 26.636625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641582, 34.230541, 26.727598>,  <32.663731, 33.997883, 26.782181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641582, 34.230541, 26.727598>,  <32.604668, 34.618305, 26.636625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641582, 34.230541, 26.727598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936100, 0.006615, -0.351671,
		0.339410, 0.245354, 0.908076,
		0.092291, -0.969411, 0.227431,
		32.669270, 33.939716, 26.795828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218472, 34.575207, 26.922398>,  <32.604668, 34.618305, 26.636625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218472, 34.575207, 26.922398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152447, 34.195930, 26.813818>,  <33.112831, 33.968365, 26.748671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152447, 34.195930, 26.813818>,  <33.218472, 34.575207, 26.922398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152447, 34.195930, 26.813818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936156, -0.064000, -0.345710,
		0.310427, -0.311184, 0.898220,
		-0.165066, -0.948192, -0.271450,
		33.102928, 33.911472, 26.732384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905365, 34.254089, 27.063040>,  <33.218472, 34.575207, 26.922398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905365, 34.254089, 27.063040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705414, 34.000526, 26.826977>,  <33.585442, 33.848389, 26.685339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705414, 34.000526, 26.826977>,  <33.905365, 34.254089, 27.063040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705414, 34.000526, 26.826977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845922, -0.211132, -0.489734,
		0.185843, -0.744035, 0.641774,
		-0.499879, -0.633905, -0.590158,
		33.555450, 33.810356, 26.649929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241184, 33.646950, 27.058012>,  <33.905365, 34.254089, 27.063040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241184, 33.646950, 27.058012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032364, 33.607075, 26.719185>,  <33.907070, 33.583149, 26.515888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032364, 33.607075, 26.719185>,  <34.241184, 33.646950, 27.058012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032364, 33.607075, 26.719185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840268, -0.230479, -0.490743,
		-0.146312, -0.967958, 0.204085,
		-0.522056, -0.099685, -0.847066,
		33.875748, 33.577171, 26.465065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473965, 32.985153, 26.761244>,  <34.241184, 33.646950, 27.058012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473965, 32.985153, 26.761244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320919, 33.205608, 26.464634>,  <34.229092, 33.337883, 26.286669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320919, 33.205608, 26.464634>,  <34.473965, 32.985153, 26.761244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320919, 33.205608, 26.464634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815282, -0.176178, -0.551613,
		-0.434655, -0.815602, -0.381927,
		-0.382610, 0.551139, -0.741522,
		34.206135, 33.370949, 26.242178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623280, 32.714687, 26.083805>,  <34.473965, 32.985153, 26.761244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623280, 32.714687, 26.083805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565853, 33.089725, 25.957117>,  <34.531395, 33.314747, 25.881105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565853, 33.089725, 25.957117>,  <34.623280, 32.714687, 26.083805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565853, 33.089725, 25.957117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698069, -0.130907, -0.703962,
		-0.701489, -0.322159, -0.635709,
		-0.143569, 0.937591, -0.316719,
		34.522781, 33.371002, 25.862101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737823, 32.683773, 25.351191>,  <34.623280, 32.714687, 26.083805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737823, 32.683773, 25.351191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753300, 33.075199, 25.432100>,  <34.762585, 33.310055, 25.480646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753300, 33.075199, 25.432100>,  <34.737823, 32.683773, 25.351191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753300, 33.075199, 25.432100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639298, 0.131336, -0.757661,
		-0.767986, 0.158630, -0.620512,
		0.038692, 0.978564, 0.202276,
		34.764908, 33.368767, 25.492783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637318, 32.986137, 24.663918>,  <34.737823, 32.683773, 25.351191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637318, 32.986137, 24.663918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772713, 33.278553, 24.900902>,  <34.853951, 33.454002, 25.043093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772713, 33.278553, 24.900902>,  <34.637318, 32.986137, 24.663918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772713, 33.278553, 24.900902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617074, 0.302886, -0.726278,
		-0.710385, 0.611428, -0.348582,
		0.338486, 0.731038, 0.592462,
		34.874260, 33.497864, 25.078640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665443, 33.556381, 24.300903>,  <34.637318, 32.986137, 24.663918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665443, 33.556381, 24.300903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927177, 33.634804, 24.593042>,  <35.084217, 33.681858, 24.768326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927177, 33.634804, 24.593042>,  <34.665443, 33.556381, 24.300903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927177, 33.634804, 24.593042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710213, 0.172348, -0.682563,
		-0.259694, 0.965328, -0.026468,
		0.654336, 0.196055, 0.730347,
		35.123478, 33.693619, 24.812147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084202, 34.187744, 24.105789>,  <34.665443, 33.556381, 24.300903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084202, 34.187744, 24.105789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302937, 34.012684, 24.391287>,  <35.434177, 33.907646, 24.562586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302937, 34.012684, 24.391287>,  <35.084202, 34.187744, 24.105789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302937, 34.012684, 24.391287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833968, 0.209464, -0.510511,
		0.073923, 0.874405, 0.479532,
		0.546839, -0.437653, 0.713742,
		35.466988, 33.881390, 24.605410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646523, 34.672367, 24.273478>,  <35.084202, 34.187744, 24.105789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646523, 34.672367, 24.273478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776031, 34.316856, 24.403242>,  <35.853737, 34.103550, 24.481100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776031, 34.316856, 24.403242>,  <35.646523, 34.672367, 24.273478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776031, 34.316856, 24.403242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849965, 0.122617, -0.512371,
		0.415605, 0.441633, 0.795130,
		0.323777, -0.888777, 0.324412,
		35.873165, 34.050224, 24.500566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405468, 34.837933, 24.561686>,  <35.646523, 34.672367, 24.273478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405468, 34.837933, 24.561686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414303, 34.441238, 24.511124>,  <36.419601, 34.203224, 24.480787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414303, 34.441238, 24.511124>,  <36.405468, 34.837933, 24.561686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414303, 34.441238, 24.511124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925089, 0.068215, -0.373574,
		0.379109, -0.108685, 0.918947,
		0.022084, -0.991733, -0.126404,
		36.420929, 34.143719, 24.473202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065506, 34.579273, 24.886370>,  <36.405468, 34.837933, 24.561686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065506, 34.579273, 24.886370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.946766, 34.298210, 24.627708>,  <36.875523, 34.129574, 24.472511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.946766, 34.298210, 24.627708>,  <37.065506, 34.579273, 24.886370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946766, 34.298210, 24.627708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894934, 0.031530, -0.445084,
		0.333129, -0.710832, 0.619470,
		-0.296848, -0.702655, -0.646651,
		36.857712, 34.087414, 24.433714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633698, 34.049778, 24.857843>,  <37.065506, 34.579273, 24.886370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633698, 34.049778, 24.857843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420498, 34.025181, 24.520292>,  <37.292580, 34.010422, 24.317760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420498, 34.025181, 24.520292>,  <37.633698, 34.049778, 24.857843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420498, 34.025181, 24.520292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844801, -0.094249, -0.526714,
		-0.047148, -0.993648, 0.102179,
		-0.532999, -0.061488, -0.843879,
		37.260597, 34.006733, 24.267128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011124, 33.552521, 25.326572>,  <37.633698, 34.049778, 24.857843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011124, 33.552521, 25.326572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305874, 33.464165, 25.582140>,  <38.482723, 33.411152, 25.735481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305874, 33.464165, 25.582140>,  <38.011124, 33.552521, 25.326572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305874, 33.464165, 25.582140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621274, 0.151322, 0.768843,
		-0.266516, -0.963487, -0.025731,
		0.736877, -0.220895, 0.638919,
		38.526936, 33.397896, 25.773815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647068, 33.128941, 25.828321>,  <38.011124, 33.552521, 25.326572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647068, 33.128941, 25.828321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974770, 33.293030, 25.988588>,  <38.171391, 33.391483, 26.084749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974770, 33.293030, 25.988588>,  <37.647068, 33.128941, 25.828321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974770, 33.293030, 25.988588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564849, 0.456931, 0.687138,
		0.098800, -0.789261, 0.606057,
		0.819258, 0.410220, 0.400669,
		38.220547, 33.416096, 26.108789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550522, 32.961338, 26.563829>,  <37.647068, 33.128941, 25.828321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550522, 32.961338, 26.563829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.793159, 33.274139, 26.506533>,  <37.938744, 33.461819, 26.472155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.793159, 33.274139, 26.506533>,  <37.550522, 32.961338, 26.563829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793159, 33.274139, 26.506533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483329, 0.505797, 0.714536,
		0.631220, -0.364200, 0.684777,
		0.606593, 0.782002, -0.143241,
		37.975136, 33.508739, 26.463560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709812, 33.164116, 27.191330>,  <37.550522, 32.961338, 26.563829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709812, 33.164116, 27.191330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.771343, 33.503864, 26.989374>,  <37.808262, 33.707714, 26.868200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.771343, 33.503864, 26.989374>,  <37.709812, 33.164116, 27.191330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771343, 33.503864, 26.989374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453049, 0.514724, 0.727878,
		0.878114, 0.116773, 0.463983,
		0.153827, 0.849367, -0.504890,
		37.817490, 33.758675, 26.837908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791920, 33.671280, 27.741121>,  <37.709812, 33.164116, 27.191330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791920, 33.671280, 27.741121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743496, 33.882526, 27.404921>,  <37.714443, 34.009274, 27.203201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743496, 33.882526, 27.404921>,  <37.791920, 33.671280, 27.741121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743496, 33.882526, 27.404921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621673, 0.619771, 0.478964,
		0.773865, 0.580499, 0.253285,
		-0.121060, 0.528114, -0.840500,
		37.707180, 34.040962, 27.152771>
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
