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
	<24.640806, 35.373116, 34.968880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511545, 34.994804, 34.982033>,  <24.433989, 34.767818, 34.989925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511545, 34.994804, 34.982033>,  <24.640806, 35.373116, 34.968880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511545, 34.994804, 34.982033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850120, -0.305383, -0.428996,
		0.415774, -0.110679, 0.902708,
		-0.323153, -0.945775, 0.032880,
		24.414598, 34.711071, 34.991898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048332, 34.883823, 35.389557>,  <24.640806, 35.373116, 34.968880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048332, 34.883823, 35.389557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886944, 34.716320, 35.064140>,  <24.790110, 34.615818, 34.868889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886944, 34.716320, 35.064140>,  <25.048332, 34.883823, 35.389557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.886944, 34.716320, 35.064140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914669, -0.160981, -0.370763,
		0.024297, -0.893713, 0.447981,
		-0.403472, -0.418763, -0.813540,
		24.765902, 34.590691, 34.820080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403151, 34.234116, 35.154572>,  <25.048332, 34.883823, 35.389557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403151, 34.234116, 35.154572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193344, 34.342266, 34.831638>,  <25.067461, 34.407154, 34.637878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193344, 34.342266, 34.831638>,  <25.403151, 34.234116, 35.154572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193344, 34.342266, 34.831638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703218, -0.396979, -0.589823,
		-0.479966, -0.877101, 0.018089,
		-0.524515, 0.270375, -0.807330,
		25.035990, 34.423378, 34.589439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442877, 33.666142, 34.725357>,  <25.403151, 34.234116, 35.154572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442877, 33.666142, 34.725357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366295, 34.009998, 34.535892>,  <25.320345, 34.216312, 34.422215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366295, 34.009998, 34.535892>,  <25.442877, 33.666142, 34.725357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366295, 34.009998, 34.535892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747318, -0.185176, -0.638142,
		-0.636287, -0.476153, -0.606974,
		-0.191456, 0.859644, -0.473663,
		25.308859, 34.267891, 34.393795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251120, 33.591202, 33.891777>,  <25.442877, 33.666142, 34.725357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251120, 33.591202, 33.891777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392078, 33.961689, 33.945358>,  <25.476654, 34.183979, 33.977505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392078, 33.961689, 33.945358>,  <25.251120, 33.591202, 33.891777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392078, 33.961689, 33.945358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529783, -0.079447, -0.844404,
		-0.771458, 0.368528, -0.518690,
		0.352395, 0.926216, 0.133950,
		25.497797, 34.239555, 33.985542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198456, 33.938145, 33.273918>,  <25.251120, 33.591202, 33.891777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198456, 33.938145, 33.273918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520409, 34.084202, 33.461037>,  <25.713579, 34.171837, 33.573307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520409, 34.084202, 33.461037>,  <25.198456, 33.938145, 33.273918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520409, 34.084202, 33.461037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588875, -0.393875, -0.705754,
		-0.073448, 0.843523, -0.532047,
		0.804880, 0.365145, 0.467800,
		25.761873, 34.193745, 33.601376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602617, 34.351997, 32.848431>,  <25.198456, 33.938145, 33.273918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602617, 34.351997, 32.848431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867355, 34.231506, 33.123013>,  <26.026197, 34.159214, 33.287762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867355, 34.231506, 33.123013>,  <25.602617, 34.351997, 32.848431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867355, 34.231506, 33.123013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638777, -0.252639, -0.726731,
		0.392335, 0.919477, 0.025207,
		0.661845, -0.301223, 0.686459,
		26.065908, 34.141140, 33.328949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246008, 34.626514, 32.672123>,  <25.602617, 34.351997, 32.848431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246008, 34.626514, 32.672123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322077, 34.308292, 32.902225>,  <26.367718, 34.117359, 33.040287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322077, 34.308292, 32.902225>,  <26.246008, 34.626514, 32.672123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322077, 34.308292, 32.902225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612596, -0.361722, -0.702768,
		0.767177, 0.486047, 0.418566,
		0.190174, -0.795559, 0.575256,
		26.379129, 34.069626, 33.074802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786537, 34.413010, 32.431778>,  <26.246008, 34.626514, 32.672123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786537, 34.413010, 32.431778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702888, 34.097553, 32.663059>,  <26.652700, 33.908279, 32.801830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702888, 34.097553, 32.663059>,  <26.786537, 34.413010, 32.431778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702888, 34.097553, 32.663059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565234, -0.579980, -0.586630,
		0.797985, 0.204145, 0.567049,
		-0.209119, -0.788637, 0.578205,
		26.640152, 33.860962, 32.836521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445107, 34.149181, 32.656399>,  <26.786537, 34.413010, 32.431778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445107, 34.149181, 32.656399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163483, 33.870949, 32.599182>,  <26.994509, 33.704010, 32.564850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163483, 33.870949, 32.599182>,  <27.445107, 34.149181, 32.656399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163483, 33.870949, 32.599182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607461, -0.485581, -0.628652,
		0.367822, -0.529501, 0.764418,
		-0.704059, -0.695586, -0.143044,
		26.952265, 33.662273, 32.556271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915224, 33.519119, 32.594559>,  <27.445107, 34.149181, 32.656399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915224, 33.519119, 32.594559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548853, 33.422768, 32.466148>,  <27.329031, 33.364956, 32.389103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548853, 33.422768, 32.466148>,  <27.915224, 33.519119, 32.594559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548853, 33.422768, 32.466148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395481, -0.405418, -0.824155,
		0.068369, -0.881825, 0.466595,
		-0.915926, -0.240876, -0.321028,
		27.274075, 33.350506, 32.369839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964895, 32.828823, 32.357323>,  <27.915224, 33.519119, 32.594559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964895, 32.828823, 32.357323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627836, 32.964542, 32.190075>,  <27.425602, 33.045975, 32.089725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627836, 32.964542, 32.190075>,  <27.964895, 32.828823, 32.357323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627836, 32.964542, 32.190075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283497, -0.380614, -0.880206,
		-0.457799, -0.860236, 0.224531,
		-0.842645, 0.339303, -0.418119,
		27.375042, 33.066334, 32.064640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665350, 32.297104, 31.961445>,  <27.964895, 32.828823, 32.357323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665350, 32.297104, 31.961445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516565, 32.623837, 31.785069>,  <27.427296, 32.819878, 31.679243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516565, 32.623837, 31.785069>,  <27.665350, 32.297104, 31.961445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516565, 32.623837, 31.785069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290726, -0.348611, -0.891038,
		-0.881546, -0.459624, -0.107805,
		-0.371960, 0.816833, -0.440942,
		27.404978, 32.868885, 31.652786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581377, 32.061752, 31.261448>,  <27.665350, 32.297104, 31.961445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581377, 32.061752, 31.261448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517958, 32.454605, 31.220890>,  <27.479906, 32.690315, 31.196556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517958, 32.454605, 31.220890>,  <27.581377, 32.061752, 31.261448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517958, 32.454605, 31.220890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227795, -0.063536, -0.971634,
		-0.960714, -0.177147, -0.213651,
		-0.158548, 0.982131, -0.101393,
		27.470394, 32.749245, 31.190472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970329, 32.251358, 30.831493>,  <27.581377, 32.061752, 31.261448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970329, 32.251358, 30.831493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238394, 32.541878, 30.770340>,  <27.399233, 32.716190, 30.733648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238394, 32.541878, 30.770340>,  <26.970329, 32.251358, 30.831493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238394, 32.541878, 30.770340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014924, -0.192752, -0.981134,
		-0.742066, 0.659799, -0.118335,
		0.670161, 0.726300, -0.152882,
		27.439442, 32.759769, 30.724476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863148, 32.505692, 30.089724>,  <26.970329, 32.251358, 30.831493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863148, 32.505692, 30.089724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214531, 32.657066, 30.206409>,  <27.425362, 32.747890, 30.276421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214531, 32.657066, 30.206409>,  <26.863148, 32.505692, 30.089724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214531, 32.657066, 30.206409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345644, -0.081753, -0.934798,
		-0.329913, 0.922010, -0.202621,
		0.878458, 0.378437, 0.291715,
		27.478067, 32.770596, 30.293924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066849, 32.819508, 29.592031>,  <26.863148, 32.505692, 30.089724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066849, 32.819508, 29.592031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426657, 32.776367, 29.761374>,  <27.642542, 32.750484, 29.862978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426657, 32.776367, 29.761374>,  <27.066849, 32.819508, 29.592031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426657, 32.776367, 29.761374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411025, -0.119470, -0.903762,
		0.148049, 0.986963, -0.063137,
		0.899522, -0.107851, 0.423353,
		27.696514, 32.744011, 29.888380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509094, 33.193192, 29.203693>,  <27.066849, 32.819508, 29.592031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509094, 33.193192, 29.203693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754732, 32.956379, 29.412457>,  <27.902115, 32.814293, 29.537714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754732, 32.956379, 29.412457>,  <27.509094, 33.193192, 29.203693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754732, 32.956379, 29.412457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477229, -0.248147, -0.843015,
		0.628600, 0.766762, 0.130148,
		0.614096, -0.592030, 0.521907,
		27.938961, 32.778770, 29.569029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061640, 33.487099, 29.049925>,  <27.509094, 33.193192, 29.203693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061640, 33.487099, 29.049925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188091, 33.134872, 29.191162>,  <28.263962, 32.923538, 29.275904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188091, 33.134872, 29.191162>,  <28.061640, 33.487099, 29.049925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188091, 33.134872, 29.191162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604669, -0.099781, -0.790202,
		0.731054, 0.463309, 0.500905,
		0.316127, -0.880562, 0.353094,
		28.282928, 32.870705, 29.297091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812597, 33.475597, 29.091328>,  <28.061640, 33.487099, 29.049925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812597, 33.475597, 29.091328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700840, 33.092766, 29.060497>,  <28.633785, 32.863068, 29.042000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700840, 33.092766, 29.060497>,  <28.812597, 33.475597, 29.091328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700840, 33.092766, 29.060497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579655, -0.104130, -0.808181,
		0.765468, -0.270475, 0.583868,
		-0.279391, -0.957079, -0.077074,
		28.617023, 32.805641, 29.037374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390512, 33.119930, 29.119457>,  <28.812597, 33.475597, 29.091328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390512, 33.119930, 29.119457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152554, 32.818138, 29.008568>,  <29.009779, 32.637062, 28.942034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152554, 32.818138, 29.008568>,  <29.390512, 33.119930, 29.119457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152554, 32.818138, 29.008568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744458, -0.387110, -0.543992,
		0.303116, -0.530002, 0.791971,
		-0.594897, -0.754482, -0.277225,
		28.974085, 32.591793, 28.925400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755142, 32.458694, 29.288103>,  <29.390512, 33.119930, 29.119457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755142, 32.458694, 29.288103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482920, 32.417973, 28.997868>,  <29.319586, 32.393539, 28.823727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482920, 32.417973, 28.997868>,  <29.755142, 32.458694, 29.288103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482920, 32.417973, 28.997868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690315, -0.421008, -0.588402,
		-0.245579, -0.901326, 0.356794,
		-0.680556, -0.101801, -0.725590,
		29.278753, 32.387432, 28.780191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801043, 31.848333, 29.050777>,  <29.755142, 32.458694, 29.288103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801043, 31.848333, 29.050777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611416, 32.024094, 28.745573>,  <29.497641, 32.129551, 28.562450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611416, 32.024094, 28.745573>,  <29.801043, 31.848333, 29.050777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611416, 32.024094, 28.745573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589578, -0.485211, -0.645731,
		-0.653958, -0.755973, -0.029042,
		-0.474064, 0.439403, -0.763012,
		29.469196, 32.155914, 28.516670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703482, 31.356136, 28.532793>,  <29.801043, 31.848333, 29.050777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703482, 31.356136, 28.532793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685865, 31.708046, 28.343454>,  <29.675295, 31.919191, 28.229851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685865, 31.708046, 28.343454>,  <29.703482, 31.356136, 28.532793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685865, 31.708046, 28.343454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640567, -0.338723, -0.689159,
		-0.766639, -0.333561, -0.548637,
		-0.044041, 0.879775, -0.473346,
		29.672653, 31.971979, 28.201450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544321, 31.207762, 27.755823>,  <29.703482, 31.356136, 28.532793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544321, 31.207762, 27.755823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722624, 31.556665, 27.836290>,  <29.829605, 31.766006, 27.884571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722624, 31.556665, 27.836290>,  <29.544321, 31.207762, 27.755823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722624, 31.556665, 27.836290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703500, -0.202397, -0.681266,
		-0.553523, 0.445200, -0.703853,
		0.445757, 0.872257, 0.201167,
		29.856350, 31.818342, 27.896641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938065, 31.491686, 27.176241>,  <29.544321, 31.207762, 27.755823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938065, 31.491686, 27.176241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096258, 31.708313, 27.472967>,  <30.191175, 31.838289, 27.651003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096258, 31.708313, 27.472967>,  <29.938065, 31.491686, 27.176241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096258, 31.708313, 27.472967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915186, -0.164097, -0.368114,
		-0.077629, 0.824484, -0.560535,
		0.395486, 0.541570, 0.741818,
		30.214905, 31.870785, 27.695513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186869, 32.213707, 27.014694>,  <29.938065, 31.491686, 27.176241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186869, 32.213707, 27.014694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413706, 32.053776, 27.302732>,  <30.549809, 31.957817, 27.475555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413706, 32.053776, 27.302732>,  <30.186869, 32.213707, 27.014694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413706, 32.053776, 27.302732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664388, -0.294679, -0.686843,
		0.486818, 0.867928, 0.098532,
		0.567095, -0.399832, 0.720096,
		30.583834, 31.933826, 27.518761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854511, 32.312065, 26.769701>,  <30.186869, 32.213707, 27.014694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854511, 32.312065, 26.769701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900375, 32.023407, 27.042780>,  <30.927895, 31.850212, 27.206627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900375, 32.023407, 27.042780>,  <30.854511, 32.312065, 26.769701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900375, 32.023407, 27.042780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660444, -0.457982, -0.595035,
		0.742069, 0.519111, 0.424096,
		0.114660, -0.721649, 0.682698,
		30.934774, 31.806911, 27.247589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572491, 32.237400, 26.899088>,  <30.854511, 32.312065, 26.769701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572491, 32.237400, 26.899088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416613, 31.884672, 27.005322>,  <31.323086, 31.673037, 27.069061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416613, 31.884672, 27.005322>,  <31.572491, 32.237400, 26.899088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416613, 31.884672, 27.005322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712185, -0.471394, -0.520173,
		0.583893, -0.013564, 0.811717,
		-0.389694, -0.881818, 0.265584,
		31.299704, 31.620127, 27.084997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198351, 32.194176, 27.619726>,  <31.572491, 32.237400, 26.899088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198351, 32.194176, 27.619726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579041, 32.236439, 27.735004>,  <31.807455, 32.261795, 27.804171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579041, 32.236439, 27.735004>,  <31.198351, 32.194176, 27.619726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579041, 32.236439, 27.735004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055064, -0.982429, 0.178326,
		0.301972, -0.153848, -0.940820,
		0.951725, 0.105655, 0.288195,
		31.864557, 32.268135, 27.821463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161390, 31.607071, 28.101023>,  <31.198351, 32.194176, 27.619726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161390, 31.607071, 28.101023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439236, 31.853437, 28.249701>,  <31.605944, 32.001259, 28.338907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439236, 31.853437, 28.249701>,  <31.161390, 31.607071, 28.101023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439236, 31.853437, 28.249701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683999, -0.725509, -0.076035,
		0.222836, 0.307054, -0.925236,
		0.694614, 0.615918, 0.371694,
		31.647619, 32.038212, 28.361208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757334, 31.598537, 27.661894>,  <31.161390, 31.607071, 28.101023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757334, 31.598537, 27.661894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890354, 31.703390, 28.024263>,  <31.970165, 31.766302, 28.241686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890354, 31.703390, 28.024263>,  <31.757334, 31.598537, 27.661894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890354, 31.703390, 28.024263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634309, -0.773025, -0.009166,
		0.697898, 0.577684, -0.423343,
		0.332550, 0.262134, 0.905923,
		31.990120, 31.782030, 28.296040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527531, 31.790337, 27.728407>,  <31.757334, 31.598537, 27.661894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527531, 31.790337, 27.728407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405281, 31.636658, 28.076885>,  <32.331932, 31.544451, 28.285973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405281, 31.636658, 28.076885>,  <32.527531, 31.790337, 27.728407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405281, 31.636658, 28.076885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597479, -0.789798, -0.138700,
		0.741358, 0.478132, 0.470933,
		-0.305625, -0.384199, 0.871197,
		32.313595, 31.521399, 28.338243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999050, 31.495127, 28.220980>,  <32.527531, 31.790337, 27.728407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999050, 31.495127, 28.220980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665329, 31.290390, 28.302919>,  <32.465096, 31.167549, 28.352083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665329, 31.290390, 28.302919>,  <32.999050, 31.495127, 28.220980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665329, 31.290390, 28.302919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486095, -0.858247, -0.164690,
		0.260108, -0.037823, 0.964838,
		-0.834299, -0.511840, 0.204852,
		32.415039, 31.136837, 28.364374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476646, 31.607723, 28.810169>,  <32.999050, 31.495127, 28.220980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476646, 31.607723, 28.810169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485394, 32.007153, 28.829672>,  <33.490643, 32.246811, 28.841373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485394, 32.007153, 28.829672>,  <33.476646, 31.607723, 28.810169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485394, 32.007153, 28.829672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583102, -0.026878, 0.811954,
		0.812105, -0.046184, 0.581681,
		0.021865, 0.998571, 0.048758,
		33.491955, 32.306725, 28.844299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607941, 31.932455, 29.562759>,  <33.476646, 31.607723, 28.810169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607941, 31.932455, 29.562759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410103, 32.199669, 29.340370>,  <33.291401, 32.359997, 29.206936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410103, 32.199669, 29.340370>,  <33.607941, 31.932455, 29.562759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410103, 32.199669, 29.340370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559398, 0.244897, 0.791896,
		0.665172, 0.702676, 0.252574,
		-0.494591, 0.668036, -0.555974,
		33.261726, 32.400078, 29.173578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706593, 32.652763, 29.805580>,  <33.607941, 31.932455, 29.562759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706593, 32.652763, 29.805580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357891, 32.659294, 29.609711>,  <33.148670, 32.663212, 29.492189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357891, 32.659294, 29.609711>,  <33.706593, 32.652763, 29.805580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357891, 32.659294, 29.609711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424854, 0.472594, 0.772110,
		0.244022, 0.881129, -0.405049,
		-0.871753, 0.016325, -0.489675,
		33.096367, 32.664192, 29.462809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419785, 33.243286, 30.095392>,  <33.706593, 32.652763, 29.805580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419785, 33.243286, 30.095392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112335, 33.050949, 29.926632>,  <32.927864, 32.935547, 29.825377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112335, 33.050949, 29.926632>,  <33.419785, 33.243286, 30.095392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112335, 33.050949, 29.926632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601659, 0.319370, 0.732127,
		-0.217299, 0.816572, -0.534782,
		-0.768627, -0.480847, -0.421899,
		32.881748, 32.906696, 29.800062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834213, 33.764194, 30.043667>,  <33.419785, 33.243286, 30.095392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834213, 33.764194, 30.043667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672729, 33.398258, 30.047106>,  <32.575840, 33.178696, 30.049170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672729, 33.398258, 30.047106>,  <32.834213, 33.764194, 30.043667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672729, 33.398258, 30.047106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600867, 0.272221, 0.751568,
		-0.689909, 0.298251, -0.659600,
		-0.403713, -0.914846, 0.008599,
		32.551617, 33.123806, 30.049685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136448, 33.841202, 29.813511>,  <32.834213, 33.764194, 30.043667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136448, 33.841202, 29.813511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176056, 33.510738, 30.035376>,  <32.199821, 33.312458, 30.168495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176056, 33.510738, 30.035376>,  <32.136448, 33.841202, 29.813511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176056, 33.510738, 30.035376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849567, 0.220031, 0.479398,
		-0.518103, -0.518693, -0.680093,
		0.099019, -0.826163, 0.554663,
		32.205761, 33.262890, 30.201775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380268, 33.604694, 29.754807>,  <32.136448, 33.841202, 29.813511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380268, 33.604694, 29.754807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538715, 33.365555, 30.033567>,  <31.633783, 33.222073, 30.200823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538715, 33.365555, 30.033567>,  <31.380268, 33.604694, 29.754807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538715, 33.365555, 30.033567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824056, 0.103301, 0.557011,
		-0.404998, -0.794926, -0.451740,
		0.396118, -0.597847, 0.696900,
		31.657551, 33.186199, 30.242638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893208, 33.071236, 29.848825>,  <31.380268, 33.604694, 29.754807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893208, 33.071236, 29.848825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122862, 33.071995, 30.176329>,  <31.260654, 33.072449, 30.372831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122862, 33.071995, 30.176329>,  <30.893208, 33.071236, 29.848825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122862, 33.071995, 30.176329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816656, -0.070311, 0.572826,
		0.058657, -0.997523, -0.038816,
		0.574136, 0.001900, 0.818757,
		31.295103, 33.072563, 30.421955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620537, 32.614143, 30.267027>,  <30.893208, 33.071236, 29.848825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620537, 32.614143, 30.267027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831339, 32.856312, 30.505600>,  <30.957819, 33.001614, 30.648745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831339, 32.856312, 30.505600>,  <30.620537, 32.614143, 30.267027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831339, 32.856312, 30.505600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820494, 0.179550, 0.542727,
		0.221489, -0.775388, 0.591368,
		0.527004, 0.605422, 0.596432,
		30.989441, 33.037937, 30.684530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385590, 32.481556, 30.937435>,  <30.620537, 32.614143, 30.267027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385590, 32.481556, 30.937435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582323, 32.822166, 31.010105>,  <30.700363, 33.026531, 31.053707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582323, 32.822166, 31.010105>,  <30.385590, 32.481556, 30.937435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582323, 32.822166, 31.010105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625857, 0.200692, 0.753675,
		0.605312, -0.484385, 0.631639,
		0.491834, 0.851525, 0.181674,
		30.729874, 33.077625, 31.064608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619226, 32.520584, 31.692888>,  <30.385590, 32.481556, 30.937435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619226, 32.520584, 31.692888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603313, 32.895271, 31.553766>,  <30.593765, 33.120083, 31.470293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603313, 32.895271, 31.553766>,  <30.619226, 32.520584, 31.692888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603313, 32.895271, 31.553766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390698, 0.305786, 0.868245,
		0.919659, 0.170428, 0.353810,
		-0.039783, 0.936723, -0.347805,
		30.591379, 33.176289, 31.449425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483660, 32.872311, 32.231819>,  <30.619226, 32.520584, 31.692888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483660, 32.872311, 32.231819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452084, 33.183617, 31.982635>,  <30.433138, 33.370399, 31.833126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452084, 33.183617, 31.982635>,  <30.483660, 32.872311, 32.231819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452084, 33.183617, 31.982635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505683, 0.507277, 0.697821,
		0.859100, 0.370104, 0.353510,
		-0.078939, 0.778262, -0.622957,
		30.428402, 33.417095, 31.795748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658997, 33.474075, 32.676445>,  <30.483660, 32.872311, 32.231819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658997, 33.474075, 32.676445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446218, 33.597511, 32.361027>,  <30.318552, 33.671574, 32.171776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446218, 33.597511, 32.361027>,  <30.658997, 33.474075, 32.676445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446218, 33.597511, 32.361027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618680, 0.494184, 0.610752,
		0.578158, 0.812745, -0.071961,
		-0.531948, 0.308590, -0.788545,
		30.286634, 33.690090, 32.124462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558947, 34.165722, 32.729454>,  <30.658997, 33.474075, 32.676445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558947, 34.165722, 32.729454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253757, 34.028900, 32.510048>,  <30.070644, 33.946808, 32.378403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253757, 34.028900, 32.510048>,  <30.558947, 34.165722, 32.729454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253757, 34.028900, 32.510048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645747, 0.442274, 0.622418,
		0.029695, 0.829092, -0.558324,
		-0.762973, -0.342053, -0.548518,
		30.024866, 33.926285, 32.345493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174812, 34.770870, 32.615875>,  <30.558947, 34.165722, 32.729454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174812, 34.770870, 32.615875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946602, 34.448799, 32.551132>,  <29.809675, 34.255558, 32.512287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946602, 34.448799, 32.551132>,  <30.174812, 34.770870, 32.615875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946602, 34.448799, 32.551132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649325, 0.321555, 0.689187,
		-0.502870, 0.498294, -0.706275,
		-0.570524, -0.805174, -0.161854,
		29.775444, 34.207249, 32.502575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491047, 34.902962, 32.665699>,  <30.174812, 34.770870, 32.615875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491047, 34.902962, 32.665699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409708, 34.513916, 32.710743>,  <29.360905, 34.280491, 32.737770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409708, 34.513916, 32.710743>,  <29.491047, 34.902962, 32.665699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409708, 34.513916, 32.710743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702377, 0.225034, 0.675296,
		-0.682141, 0.058225, -0.728899,
		-0.203347, -0.972610, 0.112609,
		29.348703, 34.222134, 32.744526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836811, 34.976864, 32.763474>,  <29.491047, 34.902962, 32.665699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836811, 34.976864, 32.763474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971558, 34.625546, 32.899185>,  <29.052404, 34.414753, 32.980614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971558, 34.625546, 32.899185>,  <28.836811, 34.976864, 32.763474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971558, 34.625546, 32.899185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567849, 0.097920, 0.817288,
		-0.751046, -0.467976, -0.465756,
		0.336864, -0.878300, 0.339282,
		29.072617, 34.362057, 33.000969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209457, 34.715954, 33.088020>,  <28.836811, 34.976864, 32.763474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209457, 34.715954, 33.088020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528410, 34.513466, 33.219429>,  <28.719782, 34.391975, 33.298275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528410, 34.513466, 33.219429>,  <28.209457, 34.715954, 33.088020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528410, 34.513466, 33.219429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422673, -0.079926, 0.902751,
		-0.430732, -0.858693, -0.277697,
		0.797381, -0.506219, 0.328520,
		28.767624, 34.361599, 33.317986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874125, 34.325119, 33.500423>,  <28.209457, 34.715954, 33.088020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874125, 34.325119, 33.500423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244553, 34.255611, 33.634407>,  <28.466810, 34.213905, 33.714798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244553, 34.255611, 33.634407>,  <27.874125, 34.325119, 33.500423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244553, 34.255611, 33.634407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340016, 0.000710, 0.940419,
		-0.163654, -0.984786, -0.058427,
		0.926071, -0.173770, 0.334960,
		28.522373, 34.203480, 33.734894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802946, 33.810181, 33.962341>,  <27.874125, 34.325119, 33.500423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802946, 33.810181, 33.962341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135506, 34.004761, 34.069775>,  <28.335041, 34.121510, 34.134235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135506, 34.004761, 34.069775>,  <27.802946, 33.810181, 33.962341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135506, 34.004761, 34.069775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292265, -0.028282, 0.955919,
		0.472603, -0.873250, 0.118659,
		0.831401, 0.486450, 0.268587,
		28.384926, 34.150696, 34.150352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231178, 33.381462, 34.406025>,  <27.802946, 33.810181, 33.962341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231178, 33.381462, 34.406025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315042, 33.764851, 34.483360>,  <28.365360, 33.994884, 34.529762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315042, 33.764851, 34.483360>,  <28.231178, 33.381462, 34.406025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315042, 33.764851, 34.483360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394441, -0.098026, 0.913678,
		0.894684, -0.267823, 0.357507,
		0.209659, 0.958469, 0.193343,
		28.377939, 34.052391, 34.541363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313099, 33.429230, 35.037220>,  <28.231178, 33.381462, 34.406025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313099, 33.429230, 35.037220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215643, 33.810879, 34.967613>,  <28.157169, 34.039867, 34.925850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215643, 33.810879, 34.967613>,  <28.313099, 33.429230, 35.037220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215643, 33.810879, 34.967613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631362, -0.019832, 0.775235,
		0.736221, 0.298746, 0.607231,
		-0.243641, 0.954126, -0.174016,
		28.142551, 34.097118, 34.915409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312195, 33.671497, 35.766090>,  <28.313099, 33.429230, 35.037220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312195, 33.671497, 35.766090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131941, 33.958096, 35.553089>,  <28.023788, 34.130054, 35.425289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131941, 33.958096, 35.553089>,  <28.312195, 33.671497, 35.766090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131941, 33.958096, 35.553089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675237, 0.116612, 0.728324,
		0.583937, 0.687777, 0.431255,
		-0.450635, 0.716495, -0.532506,
		27.996750, 34.173042, 35.393337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677872, 33.987064, 36.182373>,  <28.312195, 33.671497, 35.766090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677872, 33.987064, 36.182373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623621, 34.255604, 35.890923>,  <27.591070, 34.416729, 35.716053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623621, 34.255604, 35.890923>,  <27.677872, 33.987064, 36.182373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623621, 34.255604, 35.890923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571206, 0.547908, 0.611163,
		0.809524, 0.499087, 0.309166,
		-0.135629, 0.671348, -0.728626,
		27.582932, 34.457008, 35.672333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805485, 34.654903, 36.525265>,  <27.677872, 33.987064, 36.182373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805485, 34.654903, 36.525265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565331, 34.690910, 36.207413>,  <27.421238, 34.712513, 36.016701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565331, 34.690910, 36.207413>,  <27.805485, 34.654903, 36.525265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565331, 34.690910, 36.207413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689518, 0.445065, 0.571386,
		0.405093, 0.890963, -0.205145,
		-0.600387, 0.090013, -0.794628,
		27.385214, 34.717915, 35.969025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220003, 34.604099, 35.854778>,  <27.805485, 34.654903, 36.525265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220003, 34.604099, 35.854778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490881, 34.864830, 35.718235>,  <28.653408, 35.021271, 35.636311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490881, 34.864830, 35.718235>,  <28.220003, 34.604099, 35.854778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490881, 34.864830, 35.718235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735803, 0.599523, -0.314906,
		-0.000615, 0.464423, 0.885613,
		0.677195, 0.651831, -0.341356,
		28.694040, 35.060379, 35.615829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245142, 35.345249, 36.091618>,  <28.220003, 34.604099, 35.854778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245142, 35.345249, 36.091618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357864, 35.342770, 35.707836>,  <28.425497, 35.341282, 35.477570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357864, 35.342770, 35.707836>,  <28.245142, 35.345249, 36.091618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357864, 35.342770, 35.707836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775377, 0.587523, -0.231533,
		0.565134, 0.809184, 0.160764,
		0.281805, -0.006194, -0.959452,
		28.442406, 35.340912, 35.420002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200336, 36.133213, 35.914753>,  <28.245142, 35.345249, 36.091618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200336, 36.133213, 35.914753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182886, 35.876938, 35.608128>,  <28.172417, 35.723171, 35.424152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182886, 35.876938, 35.608128>,  <28.200336, 36.133213, 35.914753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182886, 35.876938, 35.608128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790752, 0.491082, -0.365445,
		0.610581, 0.590216, -0.528050,
		-0.043624, -0.640690, -0.766559,
		28.169798, 35.684731, 35.378159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847961, 35.889812, 35.955006>,  <28.200336, 36.133213, 35.914753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847961, 35.889812, 35.955006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009974, 35.824501, 36.314846>,  <29.107182, 35.785313, 36.530750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009974, 35.824501, 36.314846>,  <28.847961, 35.889812, 35.955006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009974, 35.824501, 36.314846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571352, -0.722952, -0.388456,
		0.713797, 0.671328, -0.199529,
		0.405032, -0.163278, 0.899605,
		29.131483, 35.775517, 36.584728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659914, 35.951771, 35.909000>,  <28.847961, 35.889812, 35.955006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659914, 35.951771, 35.909000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464750, 35.700718, 36.151661>,  <29.347652, 35.550087, 36.297256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464750, 35.700718, 36.151661>,  <29.659914, 35.951771, 35.909000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464750, 35.700718, 36.151661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384193, -0.778459, -0.496384,
		0.783798, -0.009119, 0.620948,
		-0.487909, -0.627629, 0.606651,
		29.318377, 35.512428, 36.333656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082874, 35.401474, 36.223900>,  <29.659914, 35.951771, 35.909000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082874, 35.401474, 36.223900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707569, 35.288734, 36.143673>,  <29.482386, 35.221092, 36.095535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707569, 35.288734, 36.143673>,  <30.082874, 35.401474, 36.223900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707569, 35.288734, 36.143673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345059, -0.803617, -0.484906,
		-0.024509, -0.524176, 0.851258,
		-0.938261, -0.281850, -0.200568,
		29.426090, 35.204178, 36.083504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493881, 35.953114, 36.480610>,  <30.082874, 35.401474, 36.223900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493881, 35.953114, 36.480610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194195, 35.760475, 36.662487>,  <30.014383, 35.644894, 36.771614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194195, 35.760475, 36.662487>,  <30.493881, 35.953114, 36.480610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194195, 35.760475, 36.662487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226714, -0.831509, -0.507143,
		0.622316, -0.276875, 0.732164,
		-0.749216, -0.481595, 0.454689,
		29.969431, 35.615997, 36.798893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856825, 35.617779, 35.883144>,  <30.493881, 35.953114, 36.480610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856825, 35.617779, 35.883144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232456, 35.698944, 35.772182>,  <31.457836, 35.747643, 35.705605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232456, 35.698944, 35.772182>,  <30.856825, 35.617779, 35.883144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232456, 35.698944, 35.772182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197511, 0.341930, 0.918735,
		0.281275, -0.917557, 0.281022,
		0.939081, 0.202913, -0.277404,
		31.514181, 35.759819, 35.688961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267029, 35.652512, 36.523972>,  <30.856825, 35.617779, 35.883144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267029, 35.652512, 36.523972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496445, 35.843166, 36.257477>,  <31.634094, 35.957558, 36.097580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496445, 35.843166, 36.257477>,  <31.267029, 35.652512, 36.523972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496445, 35.843166, 36.257477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257201, 0.667395, 0.698879,
		0.777753, -0.572192, 0.260186,
		0.573540, 0.476635, -0.666237,
		31.668507, 35.986156, 36.057606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895439, 35.749447, 36.853577>,  <31.267029, 35.652512, 36.523972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895439, 35.749447, 36.853577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870590, 36.027241, 36.566849>,  <31.855680, 36.193916, 36.394814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870590, 36.027241, 36.566849>,  <31.895439, 35.749447, 36.853577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870590, 36.027241, 36.566849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306156, 0.696842, 0.648598,
		0.949952, -0.179164, -0.255912,
		-0.062125, 0.694486, -0.716819,
		31.851954, 36.235588, 36.351803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510803, 36.107960, 36.763279>,  <31.895439, 35.749447, 36.853577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510803, 36.107960, 36.763279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244019, 36.366177, 36.614452>,  <32.083946, 36.521107, 36.525154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244019, 36.366177, 36.614452>,  <32.510803, 36.107960, 36.763279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244019, 36.366177, 36.614452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419069, 0.737897, 0.529045,
		0.616072, 0.196929, -0.762676,
		-0.666961, 0.645544, -0.372071,
		32.043930, 36.559841, 36.502831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920090, 36.786472, 36.651379>,  <32.510803, 36.107960, 36.763279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920090, 36.786472, 36.651379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527695, 36.864098, 36.651405>,  <32.292259, 36.910675, 36.651421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527695, 36.864098, 36.651405>,  <32.920090, 36.786472, 36.651379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527695, 36.864098, 36.651405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146966, 0.742686, 0.653313,
		0.126741, 0.640902, -0.757088,
		-0.980988, 0.194068, 0.000062,
		32.233398, 36.922318, 36.651424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891537, 37.549366, 36.800571>,  <32.920090, 36.786472, 36.651379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891537, 37.549366, 36.800571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517368, 37.432781, 36.880608>,  <32.292866, 37.362831, 36.928627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517368, 37.432781, 36.880608>,  <32.891537, 37.549366, 36.800571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517368, 37.432781, 36.880608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013744, 0.535559, 0.844386,
		-0.353264, 0.792608, -0.496969,
		-0.935423, -0.291460, 0.200087,
		32.236740, 37.345345, 36.940636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425163, 38.213833, 36.896564>,  <32.891537, 37.549366, 36.800571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425163, 38.213833, 36.896564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231796, 37.913300, 37.076256>,  <32.115776, 37.732979, 37.184071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231796, 37.913300, 37.076256>,  <32.425163, 38.213833, 36.896564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231796, 37.913300, 37.076256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071084, 0.477784, 0.875596,
		-0.872499, 0.455212, -0.177561,
		-0.483418, -0.751335, 0.449225,
		32.086769, 37.687901, 37.211021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815371, 38.475861, 37.297745>,  <32.425163, 38.213833, 36.896564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815371, 38.475861, 37.297745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904057, 38.120956, 37.459541>,  <31.957268, 37.908012, 37.556618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904057, 38.120956, 37.459541>,  <31.815371, 38.475861, 37.297745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904057, 38.120956, 37.459541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044110, 0.405265, 0.913135,
		-0.974114, -0.220297, 0.050716,
		0.221714, -0.887260, 0.404491,
		31.970572, 37.854778, 37.580887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158474, 38.217808, 37.666897>,  <31.815371, 38.475861, 37.297745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158474, 38.217808, 37.666897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471256, 38.032104, 37.833275>,  <31.658926, 37.920681, 37.933102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471256, 38.032104, 37.833275>,  <31.158474, 38.217808, 37.666897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471256, 38.032104, 37.833275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328799, 0.259697, 0.907992,
		-0.529564, -0.846770, 0.050422,
		0.781955, -0.464261, 0.415943,
		31.705843, 37.892826, 37.958057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915203, 37.972687, 38.299080>,  <31.158474, 38.217808, 37.666897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915203, 37.972687, 38.299080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307856, 37.941532, 38.368752>,  <31.543447, 37.922840, 38.410553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307856, 37.941532, 38.368752>,  <30.915203, 37.972687, 38.299080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307856, 37.941532, 38.368752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168590, 0.073363, 0.982952,
		-0.089337, -0.994259, 0.058885,
		0.981629, -0.077887, 0.174176,
		31.602345, 37.918167, 38.421005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994579, 37.538986, 38.824020>,  <30.915203, 37.972687, 38.299080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994579, 37.538986, 38.824020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357656, 37.706593, 38.833103>,  <31.575502, 37.807156, 38.838554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357656, 37.706593, 38.833103>,  <30.994579, 37.538986, 38.824020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357656, 37.706593, 38.833103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076204, 0.111372, 0.990853,
		0.412654, -0.901122, 0.133022,
		0.907694, 0.419016, 0.022711,
		31.629965, 37.832298, 38.839916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227840, 37.234394, 39.364159>,  <30.994579, 37.538986, 38.824020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227840, 37.234394, 39.364159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460943, 37.557598, 39.329472>,  <31.600805, 37.751518, 39.308659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460943, 37.557598, 39.329472>,  <31.227840, 37.234394, 39.364159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460943, 37.557598, 39.329472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190174, 0.239342, 0.952129,
		0.790083, -0.538366, 0.293140,
		0.582755, 0.808008, -0.086717,
		31.635769, 37.799999, 39.303455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624409, 37.192432, 39.949398>,  <31.227840, 37.234394, 39.364159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624409, 37.192432, 39.949398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589445, 37.566814, 39.812954>,  <31.568466, 37.791443, 39.731087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589445, 37.566814, 39.812954>,  <31.624409, 37.192432, 39.949398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589445, 37.566814, 39.812954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080829, 0.334626, 0.938878,
		0.992888, 0.109640, 0.046402,
		-0.087411, 0.935951, -0.341109,
		31.563221, 37.847599, 39.710621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200455, 37.613979, 40.092575>,  <31.624409, 37.192432, 39.949398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200455, 37.613979, 40.092575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865726, 37.831589, 40.068005>,  <31.664890, 37.962154, 40.053261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865726, 37.831589, 40.068005>,  <32.200455, 37.613979, 40.092575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865726, 37.831589, 40.068005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000475, 0.112920, 0.993604,
		0.547484, 0.831435, -0.094752,
		-0.836816, 0.544027, -0.061427,
		31.614681, 37.994797, 40.049576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200115, 38.147648, 40.650845>,  <32.200455, 37.613979, 40.092575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200115, 38.147648, 40.650845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827370, 38.204865, 40.517471>,  <31.603724, 38.239193, 40.437447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827370, 38.204865, 40.517471>,  <32.200115, 38.147648, 40.650845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827370, 38.204865, 40.517471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247112, 0.422676, 0.871941,
		0.265655, 0.894922, -0.358528,
		-0.931860, 0.143039, -0.333432,
		31.547812, 38.247776, 40.417442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052647, 38.837074, 40.902168>,  <32.200115, 38.147648, 40.650845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052647, 38.837074, 40.902168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714067, 38.641701, 40.817360>,  <31.510920, 38.524475, 40.766476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714067, 38.641701, 40.817360>,  <32.052647, 38.837074, 40.902168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714067, 38.641701, 40.817360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420076, 0.367882, 0.829577,
		-0.327194, 0.791262, -0.516574,
		-0.846452, -0.488433, -0.212022,
		31.460133, 38.495171, 40.753754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623693, 39.349800, 41.033825>,  <32.052647, 38.837074, 40.902168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623693, 39.349800, 41.033825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406738, 39.014999, 41.062794>,  <31.276566, 38.814117, 41.080173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406738, 39.014999, 41.062794>,  <31.623693, 39.349800, 41.033825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406738, 39.014999, 41.062794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311708, 0.280537, 0.907820,
		-0.780163, 0.469817, -0.413060,
		-0.542388, -0.837001, 0.072419,
		31.244022, 38.763901, 41.084518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088179, 39.490089, 41.360420>,  <31.623693, 39.349800, 41.033825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088179, 39.490089, 41.360420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088095, 39.093208, 41.410263>,  <31.088045, 38.855080, 41.440170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088095, 39.093208, 41.410263>,  <31.088179, 39.490089, 41.360420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088095, 39.093208, 41.410263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482973, 0.109214, 0.868798,
		-0.875635, -0.060003, -0.479231,
		-0.000208, -0.992206, 0.124612,
		31.088032, 38.795547, 41.447647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498852, 39.414158, 41.650421>,  <31.088179, 39.490089, 41.360420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498852, 39.414158, 41.650421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695337, 39.086262, 41.768219>,  <30.813229, 38.889523, 41.838898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695337, 39.086262, 41.768219>,  <30.498852, 39.414158, 41.650421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695337, 39.086262, 41.768219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515021, -0.000674, 0.857177,
		-0.702468, -0.572729, -0.422517,
		0.491215, -0.819744, 0.294494,
		30.842701, 38.840340, 41.856567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970667, 38.919483, 41.898319>,  <30.498852, 39.414158, 41.650421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970667, 38.919483, 41.898319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324560, 38.796612, 42.038540>,  <30.536896, 38.722889, 42.122673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324560, 38.796612, 42.038540>,  <29.970667, 38.919483, 41.898319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324560, 38.796612, 42.038540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412462, -0.165695, 0.895779,
		-0.217080, -0.937115, -0.273296,
		0.884733, -0.307181, 0.350555,
		30.589979, 38.704456, 42.143707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763050, 38.316162, 42.220840>,  <29.970667, 38.919483, 41.898319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763050, 38.316162, 42.220840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114908, 38.450462, 42.355595>,  <30.326023, 38.531044, 42.436447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114908, 38.450462, 42.355595>,  <29.763050, 38.316162, 42.220840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114908, 38.450462, 42.355595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351375, -0.018636, 0.936049,
		0.320560, -0.941766, 0.101582,
		0.879646, 0.335753, 0.336887,
		30.378801, 38.551189, 42.456661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070574, 37.734261, 42.812725>,  <29.763050, 38.316162, 42.220840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070574, 37.734261, 42.812725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263161, 38.082405, 42.854027>,  <30.378712, 38.291290, 42.878807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263161, 38.082405, 42.854027>,  <30.070574, 37.734261, 42.812725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263161, 38.082405, 42.854027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370357, 0.095255, 0.923993,
		0.794372, -0.483112, 0.368206,
		0.481465, 0.870362, 0.103256,
		30.407600, 38.343513, 42.885002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338064, 37.713776, 43.496807>,  <30.070574, 37.734261, 42.812725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338064, 37.713776, 43.496807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340734, 38.103119, 43.405125>,  <30.342337, 38.336723, 43.350113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340734, 38.103119, 43.405125>,  <30.338064, 37.713776, 43.496807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340734, 38.103119, 43.405125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069152, 0.229115, 0.970940,
		0.997584, 0.009367, 0.068839,
		0.006677, 0.973354, -0.229209,
		30.342737, 38.395126, 43.336361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739695, 38.004215, 44.126034>,  <30.338064, 37.713776, 43.496807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739695, 38.004215, 44.126034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541096, 38.302513, 43.948334>,  <30.421936, 38.481491, 43.841713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541096, 38.302513, 43.948334>,  <30.739695, 38.004215, 44.126034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541096, 38.302513, 43.948334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175153, 0.415187, 0.892715,
		0.850184, 0.521041, -0.075519,
		-0.496496, 0.745745, -0.444248,
		30.392147, 38.526237, 43.815060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987844, 38.584034, 44.401928>,  <30.739695, 38.004215, 44.126034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987844, 38.584034, 44.401928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631828, 38.704906, 44.265392>,  <30.418219, 38.777428, 44.183472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631828, 38.704906, 44.265392>,  <30.987844, 38.584034, 44.401928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631828, 38.704906, 44.265392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214543, 0.383017, 0.898481,
		0.402241, 0.872919, -0.276071,
		-0.890041, 0.302177, -0.341344,
		30.364817, 38.795559, 44.162991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901354, 39.278030, 44.566875>,  <30.987844, 38.584034, 44.401928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901354, 39.278030, 44.566875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525808, 39.150730, 44.514343>,  <30.300480, 39.074348, 44.482822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525808, 39.150730, 44.514343>,  <30.901354, 39.278030, 44.566875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525808, 39.150730, 44.514343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273265, 0.456803, 0.846556,
		-0.209425, 0.830690, -0.515844,
		-0.938865, -0.318252, -0.131332,
		30.244148, 39.055256, 44.474945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504112, 39.875637, 44.572205>,  <30.901354, 39.278030, 44.566875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504112, 39.875637, 44.572205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252251, 39.572014, 44.638386>,  <30.101133, 39.389839, 44.678093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252251, 39.572014, 44.638386>,  <30.504112, 39.875637, 44.572205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252251, 39.572014, 44.638386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365657, 0.477466, 0.798950,
		-0.685444, 0.442563, -0.578191,
		-0.629652, -0.759055, 0.165449,
		30.063354, 39.344296, 44.688019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811636, 40.124336, 44.569458>,  <30.504112, 39.875637, 44.572205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811636, 40.124336, 44.569458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830610, 39.791725, 44.790840>,  <29.841995, 39.592159, 44.923672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830610, 39.791725, 44.790840>,  <29.811636, 40.124336, 44.569458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830610, 39.791725, 44.790840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205507, 0.534105, 0.820060,
		-0.977505, -0.152639, -0.145549,
		0.047435, -0.831524, 0.553459,
		29.844841, 39.542267, 44.956879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252251, 40.197083, 44.881634>,  <29.811636, 40.124336, 44.569458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252251, 40.197083, 44.881634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450521, 39.920197, 45.091450>,  <29.569485, 39.754066, 45.217339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450521, 39.920197, 45.091450>,  <29.252251, 40.197083, 44.881634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450521, 39.920197, 45.091450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336242, 0.403911, 0.850763,
		-0.800778, -0.598077, -0.032542,
		0.495677, -0.692214, 0.524542,
		29.599224, 39.712532, 45.248814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650723, 39.992287, 45.377743>,  <29.252251, 40.197083, 44.881634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650723, 39.992287, 45.377743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030207, 39.914070, 45.477112>,  <29.257896, 39.867138, 45.536732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030207, 39.914070, 45.477112>,  <28.650723, 39.992287, 45.377743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030207, 39.914070, 45.477112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167085, 0.356941, 0.919062,
		-0.268389, -0.913431, 0.305960,
		0.948710, -0.195545, 0.248420,
		29.314819, 39.855408, 45.551640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667961, 39.679203, 45.987144>,  <28.650723, 39.992287, 45.377743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667961, 39.679203, 45.987144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048176, 39.802925, 45.998528>,  <29.276304, 39.877159, 46.005356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048176, 39.802925, 45.998528>,  <28.667961, 39.679203, 45.987144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048176, 39.802925, 45.998528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186669, 0.495616, 0.848245,
		0.248259, -0.811602, 0.528838,
		0.950538, 0.309303, 0.028459,
		29.333338, 39.895718, 46.007065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903112, 39.518745, 46.661690>,  <28.667961, 39.679203, 45.987144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903112, 39.518745, 46.661690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141418, 39.790993, 46.491127>,  <29.284403, 39.954342, 46.388790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141418, 39.790993, 46.491127>,  <28.903112, 39.518745, 46.661690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141418, 39.790993, 46.491127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081715, 0.476794, 0.875209,
		0.798989, -0.556265, 0.228441,
		0.595767, 0.680615, -0.426409,
		29.320148, 39.995178, 46.363205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459528, 39.575970, 47.125542>,  <28.903112, 39.518745, 46.661690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459528, 39.575970, 47.125542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450583, 39.904995, 46.898251>,  <29.445215, 40.102409, 46.761875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450583, 39.904995, 46.898251>,  <29.459528, 39.575970, 47.125542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450583, 39.904995, 46.898251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120630, 0.561999, 0.818294,
		0.992446, 0.086844, 0.086660,
		-0.022361, 0.822566, -0.568229,
		29.443874, 40.151764, 46.727783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879765, 39.931831, 47.418224>,  <29.459528, 39.575970, 47.125542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879765, 39.931831, 47.418224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652719, 40.181980, 47.204037>,  <29.516493, 40.332069, 47.075523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652719, 40.181980, 47.204037>,  <29.879765, 39.931831, 47.418224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652719, 40.181980, 47.204037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043968, 0.626443, 0.778226,
		0.822121, 0.465274, -0.328080,
		-0.567612, 0.625371, -0.535470,
		29.482435, 40.369591, 47.043396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147881, 40.586639, 47.506596>,  <29.879765, 39.931831, 47.418224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147881, 40.586639, 47.506596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783680, 40.671272, 47.364487>,  <29.565159, 40.722054, 47.279221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783680, 40.671272, 47.364487>,  <30.147881, 40.586639, 47.506596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783680, 40.671272, 47.364487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096106, 0.727367, 0.679485,
		0.402181, 0.652817, -0.641935,
		-0.910502, 0.211582, -0.355273,
		29.510529, 40.734745, 47.257904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213871, 41.368374, 47.398457>,  <30.147881, 40.586639, 47.506596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213871, 41.368374, 47.398457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848890, 41.213539, 47.451519>,  <29.629902, 41.120640, 47.483356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848890, 41.213539, 47.451519>,  <30.213871, 41.368374, 47.398457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848890, 41.213539, 47.451519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167417, 0.648981, 0.742156,
		-0.373370, 0.654972, -0.656968,
		-0.912451, -0.387086, 0.132657,
		29.575155, 41.097412, 47.491318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747055, 41.854240, 47.744545>,  <30.213871, 41.368374, 47.398457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747055, 41.854240, 47.744545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519833, 41.536327, 47.829998>,  <29.383499, 41.345581, 47.881271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519833, 41.536327, 47.829998>,  <29.747055, 41.854240, 47.744545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519833, 41.536327, 47.829998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121188, 0.337531, 0.933481,
		-0.814019, 0.504378, -0.288054,
		-0.568055, -0.794780, 0.213632,
		29.349417, 41.297894, 47.894089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163774, 42.155720, 47.986259>,  <29.747055, 41.854240, 47.744545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163774, 42.155720, 47.986259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199110, 41.781334, 48.122593>,  <29.220310, 41.556702, 48.204391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199110, 41.781334, 48.122593>,  <29.163774, 42.155720, 47.986259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199110, 41.781334, 48.122593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097993, 0.332345, 0.938053,
		-0.991259, -0.116265, -0.062360,
		0.088337, -0.935965, 0.340833,
		29.225611, 41.500546, 48.224842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818050, 42.200150, 48.671619>,  <29.163774, 42.155720, 47.986259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818050, 42.200150, 48.671619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025763, 41.858433, 48.680897>,  <29.150389, 41.653404, 48.686462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025763, 41.858433, 48.680897>,  <28.818050, 42.200150, 48.671619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025763, 41.858433, 48.680897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045982, 0.055031, 0.997425,
		-0.853367, -0.516875, 0.067858,
		0.519279, -0.854290, 0.023195,
		29.181547, 41.602146, 48.687855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508316, 41.471954, 48.912880>,  <28.818050, 42.200150, 48.671619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508316, 41.471954, 48.912880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895363, 41.518692, 49.002384>,  <29.127590, 41.546734, 49.056087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895363, 41.518692, 49.002384>,  <28.508316, 41.471954, 48.912880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895363, 41.518692, 49.002384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210909, -0.112876, 0.970967,
		0.138706, -0.986715, -0.084578,
		0.967615, 0.116841, 0.223764,
		29.185648, 41.553745, 49.069511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586466, 41.024490, 49.389534>,  <28.508316, 41.471954, 48.912880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586466, 41.024490, 49.389534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908390, 41.254738, 49.447414>,  <29.101545, 41.392887, 49.482143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908390, 41.254738, 49.447414>,  <28.586466, 41.024490, 49.389534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908390, 41.254738, 49.447414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098390, -0.111037, 0.988934,
		0.585317, -0.810144, -0.032729,
		0.804813, 0.575620, 0.144702,
		29.149834, 41.427425, 49.490826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108438, 40.719189, 49.849575>,  <28.586466, 41.024490, 49.389534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108438, 40.719189, 49.849575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081747, 41.118008, 49.864746>,  <29.065731, 41.357300, 49.873848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081747, 41.118008, 49.864746>,  <29.108438, 40.719189, 49.849575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081747, 41.118008, 49.864746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186121, -0.049788, 0.981264,
		0.980258, 0.058421, 0.188894,
		-0.066731, 0.997050, 0.037932,
		29.061728, 41.417122, 49.876125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629660, 40.982079, 50.302086>,  <29.108438, 40.719189, 49.849575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629660, 40.982079, 50.302086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303190, 41.212902, 50.313881>,  <29.107309, 41.351395, 50.320957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303190, 41.212902, 50.313881>,  <29.629660, 40.982079, 50.302086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303190, 41.212902, 50.313881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095172, -0.184590, 0.978197,
		0.569916, 0.795572, 0.205577,
		-0.816173, 0.577055, 0.029485,
		29.058338, 41.386017, 50.322727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812805, 41.523430, 50.729900>,  <29.629660, 40.982079, 50.302086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812805, 41.523430, 50.729900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435303, 41.393768, 50.703838>,  <29.208801, 41.315971, 50.688202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435303, 41.393768, 50.703838>,  <29.812805, 41.523430, 50.729900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435303, 41.393768, 50.703838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013312, -0.159655, 0.987083,
		-0.330372, 0.932434, 0.146361,
		-0.943757, -0.324157, -0.065158,
		29.152176, 41.296520, 50.684292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332075, 41.847416, 51.110813>,  <29.812805, 41.523430, 50.729900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332075, 41.847416, 51.110813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147907, 41.492996, 51.089172>,  <29.037407, 41.280342, 51.076187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147907, 41.492996, 51.089172>,  <29.332075, 41.847416, 51.110813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147907, 41.492996, 51.089172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036675, -0.041905, 0.998448,
		-0.886943, 0.461689, -0.013203,
		-0.460420, -0.886051, -0.054100,
		29.009781, 41.227180, 51.072941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597502, 42.327339, 51.483242>,  <29.332075, 41.847416, 51.110813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597502, 42.327339, 51.483242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649721, 41.941715, 51.575798>,  <29.681053, 41.710339, 51.631332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649721, 41.941715, 51.575798>,  <29.597502, 42.327339, 51.483242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649721, 41.941715, 51.575798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755231, -0.054507, -0.653188,
		0.642326, 0.260025, 0.720975,
		0.130547, -0.964062, 0.231390,
		29.688885, 41.652496, 51.645214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344494, 42.103241, 51.337566>,  <29.597502, 42.327339, 51.483242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344494, 42.103241, 51.337566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160110, 41.748791, 51.356758>,  <30.049480, 41.536121, 51.368275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160110, 41.748791, 51.356758>,  <30.344494, 42.103241, 51.337566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160110, 41.748791, 51.356758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624623, -0.362385, -0.691754,
		0.630368, -0.288898, 0.720538,
		-0.460958, -0.886123, 0.047983,
		30.021824, 41.482952, 51.371155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921913, 41.653233, 51.405754>,  <30.344494, 42.103241, 51.337566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921913, 41.653233, 51.405754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596603, 41.467163, 51.265926>,  <30.401419, 41.355522, 51.182030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596603, 41.467163, 51.265926>,  <30.921913, 41.653233, 51.405754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596603, 41.467163, 51.265926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551022, -0.422628, -0.719555,
		0.186980, -0.777816, 0.600033,
		-0.813273, -0.465174, -0.349571,
		30.352621, 41.327610, 51.161057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200979, 40.902145, 51.210247>,  <30.921913, 41.653233, 51.405754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200979, 40.902145, 51.210247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856350, 40.941833, 51.011112>,  <30.649572, 40.965649, 50.891632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856350, 40.941833, 51.011112>,  <31.200979, 40.902145, 51.210247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856350, 40.941833, 51.011112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392816, -0.490871, -0.777651,
		-0.321536, -0.865564, 0.383945,
		-0.861574, 0.099223, -0.497840,
		30.597878, 40.971600, 50.861759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078598, 40.316795, 50.917130>,  <31.200979, 40.902145, 51.210247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078598, 40.316795, 50.917130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827461, 40.534733, 50.694794>,  <30.676779, 40.665497, 50.561394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827461, 40.534733, 50.694794>,  <31.078598, 40.316795, 50.917130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827461, 40.534733, 50.694794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215145, -0.564822, -0.796673,
		-0.748015, -0.619771, 0.237398,
		-0.627842, 0.544848, -0.555836,
		30.639109, 40.698189, 50.528042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639498, 39.844955, 50.545593>,  <31.078598, 40.316795, 50.917130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639498, 39.844955, 50.545593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661623, 40.178120, 50.325336>,  <30.674898, 40.378017, 50.193184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661623, 40.178120, 50.325336>,  <30.639498, 39.844955, 50.545593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661623, 40.178120, 50.325336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077565, -0.553401, -0.829296,
		-0.995452, 0.003159, -0.095215,
		0.055312, 0.832909, -0.550639,
		30.678217, 40.427994, 50.160145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450296, 39.591293, 49.899845>,  <30.639498, 39.844955, 50.545593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450296, 39.591293, 49.899845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628359, 39.933891, 49.795349>,  <30.735195, 40.139450, 49.732651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628359, 39.933891, 49.795349>,  <30.450296, 39.591293, 49.899845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628359, 39.933891, 49.795349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130020, -0.350476, -0.927503,
		-0.885964, 0.378915, -0.267378,
		0.445154, 0.856499, -0.261242,
		30.761906, 40.190842, 49.716976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343866, 39.634068, 49.207516>,  <30.450296, 39.591293, 49.899845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343866, 39.634068, 49.207516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649641, 39.884678, 49.268311>,  <30.833105, 40.035046, 49.304787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649641, 39.884678, 49.268311>,  <30.343866, 39.634068, 49.207516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649641, 39.884678, 49.268311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357230, -0.215391, -0.908842,
		-0.536678, 0.749046, -0.388467,
		0.764437, 0.626527, 0.151986,
		30.878973, 40.072636, 49.313908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465340, 39.884777, 48.508881>,  <30.343866, 39.634068, 49.207516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465340, 39.884777, 48.508881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786667, 40.023685, 48.702408>,  <30.979464, 40.107029, 48.818523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786667, 40.023685, 48.702408>,  <30.465340, 39.884777, 48.508881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786667, 40.023685, 48.702408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541209, -0.086653, -0.836412,
		-0.248538, 0.933752, -0.257557,
		0.803319, 0.347272, 0.483818,
		31.027662, 40.127869, 48.847553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737644, 40.522339, 48.222729>,  <30.465340, 39.884777, 48.508881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737644, 40.522339, 48.222729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034451, 40.316135, 48.394154>,  <31.212534, 40.192413, 48.497009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034451, 40.316135, 48.394154>,  <30.737644, 40.522339, 48.222729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034451, 40.316135, 48.394154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506955, 0.013190, -0.861871,
		0.438647, 0.856785, 0.271126,
		0.742014, -0.515506, 0.428566,
		31.257055, 40.161484, 48.522724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265884, 40.643959, 47.808197>,  <30.737644, 40.522339, 48.222729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265884, 40.643959, 47.808197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428898, 40.348160, 48.022507>,  <31.526707, 40.170681, 48.151093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428898, 40.348160, 48.022507>,  <31.265884, 40.643959, 47.808197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428898, 40.348160, 48.022507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575278, -0.247750, -0.779535,
		0.709205, 0.625908, 0.324451,
		0.407534, -0.739499, 0.535776,
		31.551159, 40.126308, 48.183239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112926, 40.658745, 47.766865>,  <31.265884, 40.643959, 47.808197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112926, 40.658745, 47.766865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990736, 40.291733, 47.868702>,  <31.917421, 40.071526, 47.929806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990736, 40.291733, 47.868702>,  <32.112926, 40.658745, 47.766865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990736, 40.291733, 47.868702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465996, -0.377225, -0.800343,
		0.830379, -0.125847, 0.542800,
		-0.305479, -0.917531, 0.254596,
		31.899092, 40.016472, 47.945080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620808, 40.340931, 47.642387>,  <32.112926, 40.658745, 47.766865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620808, 40.340931, 47.642387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340630, 40.056324, 47.664761>,  <32.172523, 39.885559, 47.678185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340630, 40.056324, 47.664761>,  <32.620808, 40.340931, 47.642387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340630, 40.056324, 47.664761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534147, -0.574582, -0.620115,
		0.473358, -0.404480, 0.782514,
		-0.700443, -0.711514, 0.055932,
		32.130497, 39.842869, 47.681541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958218, 39.741047, 47.471348>,  <32.620808, 40.340931, 47.642387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958218, 39.741047, 47.471348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582287, 39.606697, 47.446312>,  <32.356728, 39.526089, 47.431290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582287, 39.606697, 47.446312>,  <32.958218, 39.741047, 47.471348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582287, 39.606697, 47.446312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300247, -0.724513, -0.620429,
		0.163039, -0.601887, 0.781761,
		-0.939825, -0.335876, -0.062591,
		32.300339, 39.505936, 47.427536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071911, 39.061920, 47.336769>,  <32.958218, 39.741047, 47.471348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071911, 39.061920, 47.336769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699234, 39.142609, 47.215935>,  <32.475628, 39.191021, 47.143433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699234, 39.142609, 47.215935>,  <33.071911, 39.061920, 47.336769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699234, 39.142609, 47.215935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106237, -0.643959, -0.757648,
		-0.347364, -0.737989, 0.578542,
		-0.931693, 0.201717, -0.302090,
		32.419727, 39.203125, 47.125309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874809, 38.516567, 47.275349>,  <33.071911, 39.061920, 47.336769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874809, 38.516567, 47.275349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666126, 38.769787, 47.046589>,  <32.540916, 38.921719, 46.909332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666126, 38.769787, 47.046589>,  <32.874809, 38.516567, 47.275349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666126, 38.769787, 47.046589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008559, -0.666443, -0.745507,
		-0.853079, -0.393834, 0.342272,
		-0.521711, 0.633047, -0.571899,
		32.509613, 38.959702, 46.875019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318966, 38.163708, 46.951229>,  <32.874809, 38.516567, 47.275349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318966, 38.163708, 46.951229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342823, 38.487087, 46.717010>,  <32.357136, 38.681114, 46.576481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342823, 38.487087, 46.717010>,  <32.318966, 38.163708, 46.951229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342823, 38.487087, 46.717010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150257, -0.572634, -0.805924,
		-0.986847, 0.136047, 0.087323,
		0.059639, 0.808444, -0.585544,
		32.360714, 38.729622, 46.541348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592010, 38.251221, 46.627220>,  <32.318966, 38.163708, 46.951229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592010, 38.251221, 46.627220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884748, 38.425262, 46.417427>,  <32.060390, 38.529686, 46.291550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884748, 38.425262, 46.417427>,  <31.592010, 38.251221, 46.627220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884748, 38.425262, 46.417427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167648, -0.631034, -0.757423,
		-0.660527, 0.642246, -0.388876,
		0.731846, 0.435104, -0.524487,
		32.104301, 38.555794, 46.260082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546381, 38.549999, 45.982216>,  <31.592010, 38.251221, 46.627220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546381, 38.549999, 45.982216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935936, 38.474648, 45.931530>,  <32.169670, 38.429436, 45.901119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935936, 38.474648, 45.931530>,  <31.546381, 38.549999, 45.982216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935936, 38.474648, 45.931530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214895, -0.584825, -0.782176,
		0.073242, 0.788981, -0.610036,
		0.973887, -0.188381, -0.126714,
		32.228104, 38.418133, 45.893517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600817, 38.544910, 45.257824>,  <31.546381, 38.549999, 45.982216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600817, 38.544910, 45.257824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946791, 38.373444, 45.362236>,  <32.154373, 38.270565, 45.424885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946791, 38.373444, 45.362236>,  <31.600817, 38.544910, 45.257824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946791, 38.373444, 45.362236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052955, -0.595149, -0.801869,
		0.499086, 0.679739, -0.537464,
		0.864933, -0.428663, 0.261035,
		32.206272, 38.244846, 45.440548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984818, 38.474628, 44.663113>,  <31.600817, 38.544910, 45.257824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984818, 38.474628, 44.663113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190262, 38.217838, 44.890820>,  <32.313530, 38.063763, 45.027443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190262, 38.217838, 44.890820>,  <31.984818, 38.474628, 44.663113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190262, 38.217838, 44.890820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003429, -0.664999, -0.746836,
		0.858016, 0.381631, -0.343753,
		0.513611, -0.641976, 0.569272,
		32.344345, 38.025246, 45.061600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592571, 38.313408, 44.227169>,  <31.984818, 38.474628, 44.663113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592571, 38.313408, 44.227169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600929, 38.023201, 44.502323>,  <32.605946, 37.849079, 44.667416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600929, 38.023201, 44.502323>,  <32.592571, 38.313408, 44.227169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600929, 38.023201, 44.502323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213301, -0.668962, -0.712034,
		0.976763, 0.161608, 0.140773,
		0.020899, -0.725515, 0.687889,
		32.607201, 37.805546, 44.708691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175018, 37.872883, 44.024986>,  <32.592571, 38.313408, 44.227169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175018, 37.872883, 44.024986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899616, 37.670158, 44.232483>,  <32.734375, 37.548523, 44.356979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899616, 37.670158, 44.232483>,  <33.175018, 37.872883, 44.024986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899616, 37.670158, 44.232483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202291, -0.821103, -0.533730,
		0.696443, -0.262542, 0.667861,
		-0.688509, -0.506815, 0.518742,
		32.693062, 37.518112, 44.388107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358612, 37.226791, 43.913357>,  <33.175018, 37.872883, 44.024986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358612, 37.226791, 43.913357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999413, 37.143242, 44.068260>,  <32.783894, 37.093113, 44.161201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999413, 37.143242, 44.068260>,  <33.358612, 37.226791, 43.913357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999413, 37.143242, 44.068260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031891, -0.846922, -0.530759,
		0.438838, -0.488972, 0.753875,
		-0.898000, -0.208875, 0.387256,
		32.730011, 37.080578, 44.184437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358921, 36.503239, 44.032639>,  <33.358612, 37.226791, 43.913357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358921, 36.503239, 44.032639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968887, 36.588203, 44.007027>,  <32.734867, 36.639183, 43.991657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968887, 36.588203, 44.007027>,  <33.358921, 36.503239, 44.032639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968887, 36.588203, 44.007027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135047, -0.797277, -0.588313,
		-0.176016, -0.565004, 0.806094,
		-0.975080, 0.212413, -0.064031,
		32.676365, 36.651928, 43.987816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980297, 35.879623, 44.233997>,  <33.358921, 36.503239, 44.032639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980297, 35.879623, 44.233997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752445, 36.116116, 44.005623>,  <32.615734, 36.258011, 43.868599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752445, 36.116116, 44.005623>,  <32.980297, 35.879623, 44.233997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752445, 36.116116, 44.005623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218841, -0.778681, -0.588018,
		-0.792234, -0.210005, 0.572942,
		-0.569626, 0.591231, -0.570940,
		32.581554, 36.293484, 43.834343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549660, 35.414684, 44.135456>,  <32.980297, 35.879623, 44.233997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549660, 35.414684, 44.135456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481724, 35.708488, 43.872658>,  <32.440964, 35.884773, 43.714977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481724, 35.708488, 43.872658>,  <32.549660, 35.414684, 44.135456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481724, 35.708488, 43.872658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349365, -0.668260, -0.656789,
		-0.921465, 0.117983, 0.370110,
		-0.169840, 0.734512, -0.656998,
		32.430771, 35.928841, 43.675560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843939, 35.303249, 43.797123>,  <32.549660, 35.414684, 44.135456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843939, 35.303249, 43.797123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065018, 35.522808, 43.546288>,  <32.197666, 35.654541, 43.395786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065018, 35.522808, 43.546288>,  <31.843939, 35.303249, 43.797123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065018, 35.522808, 43.546288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325533, -0.550488, -0.768760,
		-0.767173, 0.629030, -0.125570,
		0.552698, 0.548894, -0.627089,
		32.230827, 35.687477, 43.358162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370651, 35.399082, 43.302979>,  <31.843939, 35.303249, 43.797123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370651, 35.399082, 43.302979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699867, 35.525394, 43.114132>,  <31.897396, 35.601181, 43.000824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699867, 35.525394, 43.114132>,  <31.370651, 35.399082, 43.302979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699867, 35.525394, 43.114132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290782, -0.479762, -0.827813,
		-0.487906, 0.818605, -0.303040,
		0.823039, 0.315776, -0.472115,
		31.946779, 35.620129, 42.972496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121996, 35.599403, 42.658043>,  <31.370651, 35.399082, 43.302979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121996, 35.599403, 42.658043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514532, 35.526096, 42.634773>,  <31.750053, 35.482113, 42.620811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514532, 35.526096, 42.634773>,  <31.121996, 35.599403, 42.658043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514532, 35.526096, 42.634773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146630, -0.517584, -0.842975,
		0.124376, 0.835776, -0.534798,
		0.981341, -0.183264, -0.058175,
		31.808935, 35.471119, 42.617321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225451, 35.450165, 41.944870>,  <31.121996, 35.599403, 42.658043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225451, 35.450165, 41.944870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573641, 35.335030, 42.104580>,  <31.782555, 35.265949, 42.200405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573641, 35.335030, 42.104580>,  <31.225451, 35.450165, 41.944870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573641, 35.335030, 42.104580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263322, -0.413026, -0.871821,
		0.415857, 0.864036, -0.283734,
		0.870474, -0.287839, 0.399279,
		31.834784, 35.248676, 42.224365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849339, 35.647488, 41.451786>,  <31.225451, 35.450165, 41.944870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849339, 35.647488, 41.451786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942749, 35.339584, 41.689419>,  <31.998795, 35.154842, 41.831997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942749, 35.339584, 41.689419>,  <31.849339, 35.647488, 41.451786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942749, 35.339584, 41.689419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432601, -0.464926, -0.772464,
		0.870817, 0.437390, 0.224428,
		0.233525, -0.769762, 0.594081,
		32.012806, 35.108654, 41.867641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424995, 35.491791, 41.164230>,  <31.849339, 35.647488, 41.451786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424995, 35.491791, 41.164230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373024, 35.165848, 41.390194>,  <32.341843, 34.970280, 41.525772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373024, 35.165848, 41.390194>,  <32.424995, 35.491791, 41.164230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373024, 35.165848, 41.390194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343525, -0.571447, -0.745278,
		0.930112, 0.097227, 0.354172,
		-0.129929, -0.814859, 0.564909,
		32.334045, 34.921391, 41.559666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065926, 35.162304, 41.126682>,  <32.424995, 35.491791, 41.164230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065926, 35.162304, 41.126682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757889, 34.919415, 41.204891>,  <32.573067, 34.773682, 41.251816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757889, 34.919415, 41.204891>,  <33.065926, 35.162304, 41.126682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757889, 34.919415, 41.204891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223006, -0.543409, -0.809305,
		0.597678, -0.579641, 0.553892,
		-0.770097, -0.607226, 0.195520,
		32.526859, 34.737247, 41.263546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270721, 34.684116, 40.644485>,  <33.065926, 35.162304, 41.126682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270721, 34.684116, 40.644485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911983, 34.546387, 40.755554>,  <32.696739, 34.463749, 40.822197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911983, 34.546387, 40.755554>,  <33.270721, 34.684116, 40.644485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911983, 34.546387, 40.755554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021547, -0.592992, -0.804920,
		0.441814, -0.727874, 0.524405,
		-0.896848, -0.344326, 0.277676,
		32.642929, 34.443089, 40.838856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266060, 34.003593, 40.352840>,  <33.270721, 34.684116, 40.644485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266060, 34.003593, 40.352840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881496, 34.089794, 40.421257>,  <32.650761, 34.141514, 40.462307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881496, 34.089794, 40.421257>,  <33.266060, 34.003593, 40.352840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881496, 34.089794, 40.421257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254129, -0.457343, -0.852206,
		-0.105430, -0.862783, 0.494459,
		-0.961407, 0.215504, 0.171040,
		32.593075, 34.154446, 40.472569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995655, 33.433990, 40.296181>,  <33.266060, 34.003593, 40.352840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995655, 33.433990, 40.296181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715225, 33.710999, 40.228172>,  <32.546967, 33.877205, 40.187366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715225, 33.710999, 40.228172>,  <32.995655, 33.433990, 40.296181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715225, 33.710999, 40.228172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205873, -0.424842, -0.881547,
		-0.682726, -0.583025, 0.440417,
		-0.701072, 0.692525, -0.170021,
		32.504902, 33.918755, 40.177166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435749, 33.125111, 39.886398>,  <32.995655, 33.433990, 40.296181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435749, 33.125111, 39.886398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389606, 33.519199, 39.835739>,  <32.361923, 33.755653, 39.805344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389606, 33.519199, 39.835739>,  <32.435749, 33.125111, 39.886398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389606, 33.519199, 39.835739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016915, -0.125537, -0.991945,
		-0.993181, -0.116566, -0.002184,
		-0.115353, 0.985217, -0.126652,
		32.355000, 33.814766, 39.797745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866497, 33.223190, 39.438114>,  <32.435749, 33.125111, 39.886398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866497, 33.223190, 39.438114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074825, 33.562836, 39.402908>,  <32.199821, 33.766624, 39.381783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074825, 33.562836, 39.402908>,  <31.866497, 33.223190, 39.438114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074825, 33.562836, 39.402908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030642, -0.084443, -0.995957,
		-0.853116, 0.521411, -0.017961,
		0.520820, 0.849117, -0.088017,
		32.231071, 33.817570, 39.376503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415701, 33.683392, 39.043873>,  <31.866497, 33.223190, 39.438114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415701, 33.683392, 39.043873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786047, 33.830067, 39.007397>,  <32.008255, 33.918072, 38.985512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786047, 33.830067, 39.007397>,  <31.415701, 33.683392, 39.043873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786047, 33.830067, 39.007397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144720, 0.121205, -0.982021,
		-0.349040, 0.922416, 0.165287,
		0.925866, 0.366685, -0.091187,
		32.063808, 33.940071, 38.980042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364882, 34.330162, 38.521637>,  <31.415701, 33.683392, 39.043873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364882, 34.330162, 38.521637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746241, 34.209511, 38.518539>,  <31.975056, 34.137119, 38.516682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746241, 34.209511, 38.518539>,  <31.364882, 34.330162, 38.521637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746241, 34.209511, 38.518539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082110, 0.284056, -0.955285,
		0.290336, 0.910129, 0.295584,
		0.953395, -0.301624, -0.007741,
		32.032261, 34.119022, 38.516216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658571, 34.877522, 38.094444>,  <31.364882, 34.330162, 38.521637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658571, 34.877522, 38.094444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921656, 34.576214, 38.095406>,  <32.079506, 34.395432, 38.095982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921656, 34.576214, 38.095406>,  <31.658571, 34.877522, 38.094444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921656, 34.576214, 38.095406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216960, 0.186375, -0.958224,
		0.721350, 0.630757, 0.286009,
		0.657711, -0.753267, 0.002407,
		32.118969, 34.350235, 38.096127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285946, 35.132927, 37.712051>,  <31.658571, 34.877522, 38.094444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285946, 35.132927, 37.712051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308372, 34.733864, 37.727730>,  <32.321827, 34.494427, 37.737137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308372, 34.733864, 37.727730>,  <32.285946, 35.132927, 37.712051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308372, 34.733864, 37.727730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304778, -0.020284, -0.952207,
		0.950772, 0.065331, 0.302926,
		0.056064, -0.997657, 0.039197,
		32.325191, 34.434566, 37.739491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915009, 35.022095, 37.619701>,  <32.285946, 35.132927, 37.712051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915009, 35.022095, 37.619701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707035, 34.701721, 37.500923>,  <32.582253, 34.509495, 37.429657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707035, 34.701721, 37.500923>,  <32.915009, 35.022095, 37.619701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707035, 34.701721, 37.500923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256617, 0.185110, -0.948621,
		0.814752, -0.569416, 0.109290,
		-0.519929, -0.800937, -0.296941,
		32.551056, 34.461441, 37.411842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425655, 35.462036, 37.333939>,  <32.915009, 35.022095, 37.619701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425655, 35.462036, 37.333939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806004, 35.553677, 37.250645>,  <34.034210, 35.608662, 37.200668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806004, 35.553677, 37.250645>,  <33.425655, 35.462036, 37.333939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806004, 35.553677, 37.250645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109431, 0.380480, 0.918292,
		0.289614, -0.895961, 0.336715,
		0.950867, 0.229104, -0.208238,
		34.091263, 35.622410, 37.188171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774578, 35.389679, 37.977909>,  <33.425655, 35.462036, 37.333939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774578, 35.389679, 37.977909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058132, 35.587505, 37.776756>,  <34.228264, 35.706200, 37.656063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058132, 35.587505, 37.776756>,  <33.774578, 35.389679, 37.977909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058132, 35.587505, 37.776756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323545, 0.405536, 0.854903,
		0.626743, -0.768731, 0.127463,
		0.708881, 0.494565, -0.502885,
		34.270798, 35.735874, 37.625893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300068, 35.378731, 38.377293>,  <33.774578, 35.389679, 37.977909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300068, 35.378731, 38.377293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413025, 35.682281, 38.142563>,  <34.480801, 35.864410, 38.001724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413025, 35.682281, 38.142563>,  <34.300068, 35.378731, 38.377293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413025, 35.682281, 38.142563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411841, 0.456577, 0.788622,
		0.866395, -0.464382, -0.183600,
		0.282395, 0.758872, -0.586827,
		34.497742, 35.909943, 37.966515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932945, 35.452404, 38.598186>,  <34.300068, 35.378731, 38.377293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932945, 35.452404, 38.598186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826797, 35.797253, 38.425522>,  <34.763107, 36.004162, 38.321922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826797, 35.797253, 38.425522>,  <34.932945, 35.452404, 38.598186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826797, 35.797253, 38.425522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463654, 0.506653, 0.726862,
		0.845343, -0.007255, -0.534174,
		-0.265368, 0.862119, -0.431660,
		34.747189, 36.055889, 38.296024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544334, 35.844296, 38.650337>,  <34.932945, 35.452404, 38.598186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544334, 35.844296, 38.650337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263062, 36.113697, 38.559193>,  <35.094296, 36.275337, 38.504505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263062, 36.113697, 38.559193>,  <35.544334, 35.844296, 38.650337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263062, 36.113697, 38.559193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437384, 0.662421, 0.608189,
		0.560559, 0.328006, -0.760385,
		-0.703185, 0.673506, -0.227861,
		35.052105, 36.315750, 38.490833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838451, 36.625134, 38.387348>,  <35.544334, 35.844296, 38.650337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838451, 36.625134, 38.387348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481754, 36.652431, 38.566296>,  <35.267738, 36.668812, 38.673664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481754, 36.652431, 38.566296>,  <35.838451, 36.625134, 38.387348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481754, 36.652431, 38.566296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363324, 0.697342, 0.617827,
		-0.269806, 0.713482, -0.646644,
		-0.891740, 0.068248, 0.447372,
		35.214233, 36.672905, 38.700508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833294, 37.287899, 38.639561>,  <35.838451, 36.625134, 38.387348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833294, 37.287899, 38.639561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519833, 37.119564, 38.822330>,  <35.331757, 37.018562, 38.931992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519833, 37.119564, 38.822330>,  <35.833294, 37.287899, 38.639561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519833, 37.119564, 38.822330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136037, 0.601436, 0.787253,
		-0.606114, 0.679096, -0.414071,
		-0.783658, -0.420836, 0.456922,
		35.284737, 36.993313, 38.959408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613007, 37.785194, 38.980766>,  <35.833294, 37.287899, 38.639561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613007, 37.785194, 38.980766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417419, 37.488472, 39.164345>,  <35.300068, 37.310440, 39.274494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417419, 37.488472, 39.164345>,  <35.613007, 37.785194, 38.980766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417419, 37.488472, 39.164345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124987, 0.461126, 0.878488,
		-0.863301, 0.486915, -0.132760,
		-0.488968, -0.741806, 0.458949,
		35.270729, 37.265930, 39.302029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280640, 38.183941, 39.419361>,  <35.613007, 37.785194, 38.980766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280640, 38.183941, 39.419361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244450, 37.809132, 39.554298>,  <35.222736, 37.584248, 39.635262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244450, 37.809132, 39.554298>,  <35.280640, 38.183941, 39.419361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244450, 37.809132, 39.554298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020526, 0.340420, 0.940049,
		-0.995687, 0.078129, -0.050034,
		-0.090478, -0.937022, 0.337348,
		35.217308, 37.528027, 39.655502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660961, 38.116440, 39.896687>,  <35.280640, 38.183941, 39.419361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660961, 38.116440, 39.896687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932476, 37.838440, 39.991531>,  <35.095383, 37.671638, 40.048439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932476, 37.838440, 39.991531>,  <34.660961, 38.116440, 39.896687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932476, 37.838440, 39.991531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123885, 0.209887, 0.969845,
		-0.723814, -0.687689, 0.056368,
		0.678782, -0.695004, 0.237113,
		35.136112, 37.629940, 40.062664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436119, 37.674351, 40.450871>,  <34.660961, 38.116440, 39.896687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436119, 37.674351, 40.450871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827007, 37.597725, 40.487389>,  <35.061543, 37.551750, 40.509300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827007, 37.597725, 40.487389>,  <34.436119, 37.674351, 40.450871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827007, 37.597725, 40.487389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072590, 0.102513, 0.992079,
		-0.199403, -0.976112, 0.086273,
		0.977225, -0.191561, 0.091297,
		35.120174, 37.540257, 40.514778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475777, 37.441841, 41.127735>,  <34.436119, 37.674351, 40.450871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475777, 37.441841, 41.127735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865673, 37.494823, 41.055817>,  <35.099613, 37.526611, 41.012665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865673, 37.494823, 41.055817>,  <34.475777, 37.441841, 41.127735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865673, 37.494823, 41.055817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169285, 0.086841, 0.981734,
		0.145653, -0.987377, 0.062224,
		0.974745, 0.132459, -0.179797,
		35.158096, 37.534561, 41.001877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888855, 36.903206, 41.381821>,  <34.475777, 37.441841, 41.127735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888855, 36.903206, 41.381821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120564, 37.227856, 41.351601>,  <35.259590, 37.422646, 41.333469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120564, 37.227856, 41.351601>,  <34.888855, 36.903206, 41.381821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120564, 37.227856, 41.351601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162823, -0.024395, 0.986354,
		0.798708, -0.583667, -0.146283,
		0.579271, 0.811627, -0.075550,
		35.294346, 37.471344, 41.328938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394630, 36.735859, 41.718468>,  <34.888855, 36.903206, 41.381821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394630, 36.735859, 41.718468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407814, 37.134716, 41.745640>,  <35.415722, 37.374031, 41.761944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407814, 37.134716, 41.745640>,  <35.394630, 36.735859, 41.718468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407814, 37.134716, 41.745640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355797, -0.075216, 0.931531,
		0.933982, -0.006533, -0.357260,
		0.032957, 0.997146, 0.067926,
		35.417702, 37.433861, 41.766018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960331, 36.783520, 42.224487>,  <35.394630, 36.735859, 41.718468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960331, 36.783520, 42.224487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803654, 37.145401, 42.157459>,  <35.709648, 37.362530, 42.117241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803654, 37.145401, 42.157459>,  <35.960331, 36.783520, 42.224487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803654, 37.145401, 42.157459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144974, 0.240534, 0.959753,
		0.908601, 0.351639, -0.225375,
		-0.391697, 0.904706, -0.167571,
		35.686146, 37.416813, 42.107189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395123, 37.346237, 42.655663>,  <35.960331, 36.783520, 42.224487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395123, 37.346237, 42.655663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049755, 37.528191, 42.568409>,  <35.842533, 37.637363, 42.516056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049755, 37.528191, 42.568409>,  <36.395123, 37.346237, 42.655663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049755, 37.528191, 42.568409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052963, 0.348262, 0.935900,
		0.501694, 0.819629, -0.276605,
		-0.863422, 0.454886, -0.218131,
		35.790730, 37.664658, 42.502968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404568, 37.958736, 43.132065>,  <36.395123, 37.346237, 42.655663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404568, 37.958736, 43.132065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027672, 37.900776, 43.011272>,  <35.801537, 37.865997, 42.938797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027672, 37.900776, 43.011272>,  <36.404568, 37.958736, 43.132065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027672, 37.900776, 43.011272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334684, 0.371680, 0.865934,
		-0.013237, 0.916983, -0.398707,
		-0.942237, -0.144903, -0.301979,
		35.744999, 37.857304, 42.920677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076775, 38.483646, 43.369129>,  <36.404568, 37.958736, 43.132065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076775, 38.483646, 43.369129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758034, 38.255745, 43.288727>,  <35.566788, 38.119003, 43.240486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758034, 38.255745, 43.288727>,  <36.076775, 38.483646, 43.369129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758034, 38.255745, 43.288727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304994, 0.092149, 0.947886,
		-0.521541, 0.816631, -0.247201,
		-0.796852, -0.569757, -0.201008,
		35.518978, 38.084820, 43.228424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441891, 38.819733, 43.434254>,  <36.076775, 38.483646, 43.369129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441891, 38.819733, 43.434254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378662, 38.431671, 43.507812>,  <35.340725, 38.198833, 43.551949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378662, 38.431671, 43.507812>,  <35.441891, 38.819733, 43.434254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378662, 38.431671, 43.507812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375047, 0.231271, 0.897693,
		-0.913429, 0.072930, -0.400410,
		-0.158072, -0.970152, 0.183897,
		35.331242, 38.140625, 43.562981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791222, 38.816082, 43.733273>,  <35.441891, 38.819733, 43.434254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791222, 38.816082, 43.733273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969433, 38.479664, 43.856010>,  <35.076359, 38.277813, 43.929653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969433, 38.479664, 43.856010>,  <34.791222, 38.816082, 43.733273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969433, 38.479664, 43.856010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403107, 0.117575, 0.907569,
		-0.799381, -0.528038, -0.286647,
		0.445528, -0.841043, 0.306843,
		35.103092, 38.227352, 43.948063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264854, 38.541874, 44.253906>,  <34.791222, 38.816082, 43.733273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264854, 38.541874, 44.253906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598858, 38.332832, 44.322773>,  <34.799259, 38.207409, 44.364094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598858, 38.332832, 44.322773>,  <34.264854, 38.541874, 44.253906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598858, 38.332832, 44.322773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126976, 0.121430, 0.984445,
		-0.535380, -0.843884, 0.035037,
		0.835012, -0.522603, 0.172164,
		34.849361, 38.176052, 44.374424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994389, 38.163052, 44.755726>,  <34.264854, 38.541874, 44.253906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994389, 38.163052, 44.755726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392712, 38.134758, 44.778896>,  <34.631706, 38.117783, 44.792797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392712, 38.134758, 44.778896>,  <33.994389, 38.163052, 44.755726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392712, 38.134758, 44.778896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056836, 0.017323, 0.998233,
		-0.071610, -0.997345, 0.013231,
		0.995812, -0.070732, 0.057925,
		34.691456, 38.113541, 44.796272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108547, 37.607143, 45.201580>,  <33.994389, 38.163052, 44.755726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108547, 37.607143, 45.201580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419331, 37.858906, 45.207058>,  <34.605801, 38.009964, 45.210342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419331, 37.858906, 45.207058>,  <34.108547, 37.607143, 45.201580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419331, 37.858906, 45.207058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067250, 0.061350, 0.995848,
		0.625955, -0.774649, 0.089994,
		0.776954, 0.629409, 0.013692,
		34.652416, 38.047729, 45.211166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252975, 37.586369, 45.904640>,  <34.108547, 37.607143, 45.201580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252975, 37.586369, 45.904640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503376, 37.851513, 45.740330>,  <34.653614, 38.010601, 45.641743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503376, 37.851513, 45.740330>,  <34.252975, 37.586369, 45.904640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503376, 37.851513, 45.740330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124179, 0.435304, 0.891679,
		0.769873, -0.609200, 0.190186,
		0.625999, 0.662862, -0.410778,
		34.691177, 38.050373, 45.617096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792095, 37.584633, 46.416317>,  <34.252975, 37.586369, 45.904640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792095, 37.584633, 46.416317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778820, 37.925381, 46.207233>,  <34.770855, 38.129829, 46.081783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778820, 37.925381, 46.207233>,  <34.792095, 37.584633, 46.416317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778820, 37.925381, 46.207233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048516, 0.523754, 0.850487,
		0.998271, 0.002864, -0.058710,
		-0.033185, 0.851865, -0.522709,
		34.768864, 38.180939, 46.050419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224319, 38.197777, 46.742256>,  <34.792095, 37.584633, 46.416317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224319, 38.197777, 46.742256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981968, 38.404247, 46.500107>,  <34.836555, 38.528130, 46.354816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981968, 38.404247, 46.500107>,  <35.224319, 38.197777, 46.742256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981968, 38.404247, 46.500107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020888, 0.750357, 0.660703,
		0.795283, 0.412951, -0.443843,
		-0.605879, 0.516175, -0.605372,
		34.800205, 38.559101, 46.318497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559364, 38.851227, 46.745262>,  <35.224319, 38.197777, 46.742256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559364, 38.851227, 46.745262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178635, 38.902126, 46.633659>,  <34.950199, 38.932667, 46.566700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178635, 38.902126, 46.633659>,  <35.559364, 38.851227, 46.745262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178635, 38.902126, 46.633659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017690, 0.885541, 0.464224,
		0.306140, 0.446794, -0.840627,
		-0.951822, 0.127247, -0.279003,
		34.893089, 38.940300, 46.549957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566441, 39.467022, 46.502983>,  <35.559364, 38.851227, 46.745262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566441, 39.467022, 46.502983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186813, 39.391693, 46.604019>,  <34.959038, 39.346497, 46.664642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186813, 39.391693, 46.604019>,  <35.566441, 39.467022, 46.502983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186813, 39.391693, 46.604019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099093, 0.939435, 0.328088,
		-0.299082, 0.286347, -0.910250,
		-0.949068, -0.188325, 0.252593,
		34.902092, 39.335197, 46.679798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146950, 39.990410, 46.331276>,  <35.566441, 39.467022, 46.502983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146950, 39.990410, 46.331276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906620, 39.822834, 46.603600>,  <34.762421, 39.722290, 46.766994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906620, 39.822834, 46.603600>,  <35.146950, 39.990410, 46.331276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906620, 39.822834, 46.603600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118799, 0.889009, 0.442210,
		-0.790504, 0.184812, -0.583908,
		-0.600825, -0.418936, 0.680810,
		34.726372, 39.697155, 46.807842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611874, 40.456486, 46.423393>,  <35.146950, 39.990410, 46.331276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611874, 40.456486, 46.423393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575649, 40.228001, 46.749710>,  <34.553913, 40.090908, 46.945499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575649, 40.228001, 46.749710>,  <34.611874, 40.456486, 46.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575649, 40.228001, 46.749710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309550, 0.794727, 0.522100,
		-0.946561, -0.205244, -0.248792,
		-0.090564, -0.571213, 0.815791,
		34.548481, 40.056637, 46.994446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904957, 40.666550, 46.721844>,  <34.611874, 40.456486, 46.423393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904957, 40.666550, 46.721844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142307, 40.489536, 46.990788>,  <34.284718, 40.383327, 47.152153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142307, 40.489536, 46.990788>,  <33.904957, 40.666550, 46.721844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142307, 40.489536, 46.990788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280778, 0.669040, 0.688149,
		-0.754364, -0.597116, 0.272739,
		0.593378, -0.442536, 0.672357,
		34.320320, 40.356777, 47.192493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431007, 40.510864, 47.243347>,  <33.904957, 40.666550, 46.721844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431007, 40.510864, 47.243347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792526, 40.513927, 47.414505>,  <34.009438, 40.515766, 47.517200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792526, 40.513927, 47.414505>,  <33.431007, 40.510864, 47.243347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792526, 40.513927, 47.414505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311467, 0.697464, 0.645393,
		-0.293497, -0.716579, 0.632751,
		0.903796, 0.007661, 0.427895,
		34.063663, 40.516224, 47.542873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278767, 40.610001, 47.948196>,  <33.431007, 40.510864, 47.243347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278767, 40.610001, 47.948196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668011, 40.700638, 47.931656>,  <33.901558, 40.755020, 47.921734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668011, 40.700638, 47.931656>,  <33.278767, 40.610001, 47.948196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668011, 40.700638, 47.931656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152422, 0.768088, 0.621939,
		0.172682, -0.598915, 0.781973,
		0.973113, 0.226588, -0.041347,
		33.959946, 40.768616, 47.919250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504807, 40.793892, 48.712933>,  <33.278767, 40.610001, 47.948196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504807, 40.793892, 48.712933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772659, 40.941860, 48.455326>,  <33.933372, 41.030640, 48.300762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772659, 40.941860, 48.455326>,  <33.504807, 40.793892, 48.712933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772659, 40.941860, 48.455326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035653, 0.850122, 0.525378,
		0.741836, -0.374771, 0.556081,
		0.669633, 0.369918, -0.644012,
		33.973549, 41.052837, 48.262123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104931, 41.181015, 49.071953>,  <33.504807, 40.793892, 48.712933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104931, 41.181015, 49.071953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068073, 41.351921, 48.712185>,  <34.045959, 41.454464, 48.496323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068073, 41.351921, 48.712185>,  <34.104931, 41.181015, 49.071953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068073, 41.351921, 48.712185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003661, 0.903111, 0.429392,
		0.995739, 0.042857, -0.081648,
		-0.092140, 0.427264, -0.899420,
		34.040432, 41.480099, 48.442360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514790, 41.734993, 49.094425>,  <34.104931, 41.181015, 49.071953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514790, 41.734993, 49.094425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266945, 41.818356, 48.791733>,  <34.118237, 41.868374, 48.610115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266945, 41.818356, 48.791733>,  <34.514790, 41.734993, 49.094425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266945, 41.818356, 48.791733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023164, 0.958830, 0.283035,
		0.784566, 0.192901, -0.589276,
		-0.619613, 0.208409, -0.756733,
		34.081062, 41.880878, 48.564713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740440, 42.368279, 48.694241>,  <34.514790, 41.734993, 49.094425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740440, 42.368279, 48.694241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343880, 42.338017, 48.651543>,  <34.105942, 42.319859, 48.625923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343880, 42.338017, 48.651543>,  <34.740440, 42.368279, 48.694241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343880, 42.338017, 48.651543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091899, 0.983384, 0.156557,
		0.093122, 0.165021, -0.981884,
		-0.991404, -0.075655, -0.106740,
		34.046459, 42.315319, 48.619522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748268, 43.094269, 48.377666>,  <34.740440, 42.368279, 48.694241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748268, 43.094269, 48.377666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913750, 43.383183, 48.599354>,  <35.013039, 43.556530, 48.732365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913750, 43.383183, 48.599354>,  <34.748268, 43.094269, 48.377666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913750, 43.383183, 48.599354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196448, -0.523594, 0.829010,
		0.888964, -0.451840, -0.074722,
		0.413704, 0.722281, 0.554220,
		35.037861, 43.599865, 48.765621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080276, 43.091763, 48.825649>,  <34.748268, 43.094269, 48.377666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080276, 43.091763, 48.825649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216816, 43.465355, 48.783371>,  <34.298740, 43.689510, 48.758003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216816, 43.465355, 48.783371>,  <34.080276, 43.091763, 48.825649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216816, 43.465355, 48.783371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449394, -0.260929, -0.854378,
		-0.825548, 0.244139, -0.508790,
		0.341345, 0.933977, -0.105694,
		34.319218, 43.745548, 48.751663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018391, 43.381203, 48.026955>,  <34.080276, 43.091763, 48.825649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018391, 43.381203, 48.026955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318840, 43.559635, 48.221615>,  <34.499111, 43.666695, 48.338409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318840, 43.559635, 48.221615>,  <34.018391, 43.381203, 48.026955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318840, 43.559635, 48.221615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627917, -0.255179, -0.735258,
		-0.203804, 0.857842, -0.471774,
		0.751122, 0.446084, 0.486647,
		34.544178, 43.693459, 48.367607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413525, 43.665367, 47.508251>,  <34.018391, 43.381203, 48.026955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413525, 43.665367, 47.508251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653423, 43.691738, 47.827240>,  <34.797363, 43.707561, 48.018631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653423, 43.691738, 47.827240>,  <34.413525, 43.665367, 47.508251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653423, 43.691738, 47.827240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795606, -0.155665, -0.585474,
		0.085537, 0.985607, -0.145814,
		0.599745, 0.065931, 0.797470,
		34.833347, 43.711517, 48.066483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965496, 44.120693, 47.388733>,  <34.413525, 43.665367, 47.508251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965496, 44.120693, 47.388733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098774, 43.844292, 47.645325>,  <35.178741, 43.678452, 47.799278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098774, 43.844292, 47.645325>,  <34.965496, 44.120693, 47.388733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098774, 43.844292, 47.645325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844377, -0.084049, -0.529116,
		0.419538, 0.717947, 0.555464,
		0.333190, -0.691005, 0.641480,
		35.198730, 43.636990, 47.837769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761959, 44.228466, 47.311913>,  <34.965496, 44.120693, 47.388733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761959, 44.228466, 47.311913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691525, 43.873566, 47.482452>,  <35.649265, 43.660625, 47.584778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691525, 43.873566, 47.482452>,  <35.761959, 44.228466, 47.311913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691525, 43.873566, 47.482452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701596, -0.416923, -0.577873,
		0.690475, 0.197369, 0.695909,
		-0.176086, -0.887255, 0.426348,
		35.638699, 43.607388, 47.610355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449562, 43.992397, 47.448124>,  <35.761959, 44.228466, 47.311913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449562, 43.992397, 47.448124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200802, 43.679802, 47.468170>,  <36.051544, 43.492245, 47.480198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200802, 43.679802, 47.468170>,  <36.449562, 43.992397, 47.448124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200802, 43.679802, 47.468170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632632, -0.539102, -0.556009,
		0.461532, -0.314079, 0.829664,
		-0.621904, -0.781488, 0.050116,
		36.014229, 43.445354, 47.483204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914825, 43.377399, 47.503902>,  <36.449562, 43.992397, 47.448124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914825, 43.377399, 47.503902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560284, 43.235191, 47.385254>,  <36.347557, 43.149868, 47.314064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560284, 43.235191, 47.385254>,  <36.914825, 43.377399, 47.503902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560284, 43.235191, 47.385254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454581, -0.546508, -0.703339,
		0.087943, -0.758245, 0.646011,
		-0.886353, -0.355518, -0.296622,
		36.294376, 43.128536, 47.296268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006435, 42.706142, 47.541359>,  <36.914825, 43.377399, 47.503902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006435, 42.706142, 47.541359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703007, 42.757095, 47.285751>,  <36.520950, 42.787666, 47.132389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703007, 42.757095, 47.285751>,  <37.006435, 42.706142, 47.541359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703007, 42.757095, 47.285751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402966, -0.678963, -0.613700,
		-0.512041, -0.723038, 0.463713,
		-0.758573, 0.127379, -0.639017,
		36.475433, 42.795311, 47.094048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791897, 41.967545, 47.444870>,  <37.006435, 42.706142, 47.541359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791897, 41.967545, 47.444870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615353, 42.165863, 47.145699>,  <36.509426, 42.284855, 46.966198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615353, 42.165863, 47.145699>,  <36.791897, 41.967545, 47.444870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615353, 42.165863, 47.145699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050764, -0.818369, -0.572446,
		-0.895894, -0.290622, 0.336026,
		-0.441359, 0.495793, -0.747925,
		36.482944, 42.314602, 46.921322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189732, 41.526638, 47.199966>,  <36.791897, 41.967545, 47.444870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189732, 41.526638, 47.199966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300064, 41.779697, 46.910507>,  <36.366264, 41.931534, 46.736832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300064, 41.779697, 46.910507>,  <36.189732, 41.526638, 47.199966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300064, 41.779697, 46.910507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179263, -0.773508, -0.607906,
		-0.944342, 0.037956, -0.326768,
		0.275832, 0.632649, -0.723652,
		36.382812, 41.969494, 46.693413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847057, 41.302578, 46.590118>,  <36.189732, 41.526638, 47.199966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847057, 41.302578, 46.590118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151134, 41.519737, 46.447369>,  <36.333580, 41.650032, 46.361717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151134, 41.519737, 46.447369>,  <35.847057, 41.302578, 46.590118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151134, 41.519737, 46.447369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119693, -0.656924, -0.744395,
		-0.638572, 0.523171, -0.564373,
		0.760197, 0.542902, -0.356874,
		36.379192, 41.682610, 46.340305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674244, 41.540329, 45.925686>,  <35.847057, 41.302578, 46.590118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674244, 41.540329, 45.925686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073971, 41.537739, 45.940273>,  <36.313805, 41.536186, 45.949024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073971, 41.537739, 45.940273>,  <35.674244, 41.540329, 45.925686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073971, 41.537739, 45.940273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030760, -0.403371, -0.914519,
		0.020632, 0.915013, -0.402895,
		0.999314, -0.006475, 0.036468,
		36.373764, 41.535797, 45.951214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843815, 41.739460, 45.204945>,  <35.674244, 41.540329, 45.925686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843815, 41.739460, 45.204945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169559, 41.584671, 45.377953>,  <36.365005, 41.491798, 45.481758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169559, 41.584671, 45.377953>,  <35.843815, 41.739460, 45.204945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169559, 41.584671, 45.377953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220695, -0.482796, -0.847468,
		0.536764, 0.785598, -0.307767,
		0.814358, -0.386968, 0.432525,
		36.413868, 41.468582, 45.507710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327362, 41.802425, 44.719624>,  <35.843815, 41.739460, 45.204945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327362, 41.802425, 44.719624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518406, 41.544998, 44.958862>,  <36.633030, 41.390541, 45.102406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518406, 41.544998, 44.958862>,  <36.327362, 41.802425, 44.719624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518406, 41.544998, 44.958862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315605, -0.509639, -0.800413,
		0.819929, 0.571044, -0.040296,
		0.477608, -0.643565, 0.598092,
		36.661690, 41.351929, 45.138290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042305, 41.774399, 44.478668>,  <36.327362, 41.802425, 44.719624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042305, 41.774399, 44.478668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951893, 41.442123, 44.682186>,  <36.897644, 41.242760, 44.804295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951893, 41.442123, 44.682186>,  <37.042305, 41.774399, 44.478668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951893, 41.442123, 44.682186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368318, -0.556414, -0.744813,
		0.901804, 0.019044, 0.431725,
		-0.226033, -0.830687, 0.508791,
		36.884083, 41.192917, 44.834824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608292, 41.279175, 44.363785>,  <37.042305, 41.774399, 44.478668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608292, 41.279175, 44.363785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295937, 41.065151, 44.492737>,  <37.108524, 40.936737, 44.570110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295937, 41.065151, 44.492737>,  <37.608292, 41.279175, 44.363785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295937, 41.065151, 44.492737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131938, -0.645710, -0.752098,
		0.610581, -0.544769, 0.574820,
		-0.780886, -0.535057, 0.322382,
		37.061672, 40.904633, 44.589451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930988, 40.604317, 44.336288>,  <37.608292, 41.279175, 44.363785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930988, 40.604317, 44.336288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539635, 40.523014, 44.351551>,  <37.304825, 40.474232, 44.360710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539635, 40.523014, 44.351551>,  <37.930988, 40.604317, 44.336288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539635, 40.523014, 44.351551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082383, -0.552300, -0.829565,
		0.189692, -0.808487, 0.557105,
		-0.978381, -0.203258, 0.038161,
		37.246120, 40.462036, 44.362999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756050, 39.817261, 44.246601>,  <37.930988, 40.604317, 44.336288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756050, 39.817261, 44.246601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418308, 39.998444, 44.132130>,  <37.215664, 40.107151, 44.063446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418308, 39.998444, 44.132130>,  <37.756050, 39.817261, 44.246601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418308, 39.998444, 44.132130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024289, -0.501219, -0.864979,
		-0.535239, -0.737298, 0.412204,
		-0.844352, 0.452958, -0.286180,
		37.165001, 40.134331, 44.046276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205589, 39.361126, 44.044670>,  <37.756050, 39.817261, 44.246601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205589, 39.361126, 44.044670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106129, 39.691547, 43.842358>,  <37.046452, 39.889801, 43.720970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106129, 39.691547, 43.842358>,  <37.205589, 39.361126, 44.044670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106129, 39.691547, 43.842358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078711, -0.503223, -0.860564,
		-0.965390, -0.253789, 0.060106,
		-0.248648, 0.826049, -0.505783,
		37.031532, 39.939362, 43.690624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688389, 39.151150, 43.607937>,  <37.205589, 39.361126, 44.044670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688389, 39.151150, 43.607937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805840, 39.504776, 43.462494>,  <36.876308, 39.716953, 43.375229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805840, 39.504776, 43.462494>,  <36.688389, 39.151150, 43.607937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805840, 39.504776, 43.462494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119385, -0.343478, -0.931542,
		-0.948437, 0.316932, 0.004691,
		0.293624, 0.884068, -0.363604,
		36.893925, 39.769997, 43.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173237, 39.327122, 43.054642>,  <36.688389, 39.151150, 43.607937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173237, 39.327122, 43.054642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511646, 39.522755, 42.969753>,  <36.714691, 39.640133, 42.918819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511646, 39.522755, 42.969753>,  <36.173237, 39.327122, 43.054642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511646, 39.522755, 42.969753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043549, -0.333338, -0.941801,
		-0.531360, 0.806030, -0.260714,
		0.846026, 0.489082, -0.212224,
		36.765453, 39.669479, 42.906086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241547, 39.402649, 42.374695>,  <36.173237, 39.327122, 43.054642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241547, 39.402649, 42.374695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621490, 39.517338, 42.424591>,  <36.849457, 39.586151, 42.454529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621490, 39.517338, 42.424591>,  <36.241547, 39.402649, 42.374695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621490, 39.517338, 42.424591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186676, -0.199969, -0.961855,
		-0.250839, 0.936912, -0.243466,
		0.949859, 0.286720, 0.124739,
		36.906448, 39.603355, 42.462013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417736, 39.858047, 41.798389>,  <36.241547, 39.402649, 42.374695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417736, 39.858047, 41.798389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771175, 39.731895, 41.936836>,  <36.983238, 39.656204, 42.019905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771175, 39.731895, 41.936836>,  <36.417736, 39.858047, 41.798389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771175, 39.731895, 41.936836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276574, -0.244936, -0.929254,
		0.377844, 0.916811, -0.129198,
		0.883595, -0.315380, 0.346114,
		37.036255, 39.637283, 42.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875767, 39.957283, 41.250027>,  <36.417736, 39.858047, 41.798389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875767, 39.957283, 41.250027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096287, 39.736153, 41.499969>,  <37.228600, 39.603474, 41.649937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096287, 39.736153, 41.499969>,  <36.875767, 39.957283, 41.250027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096287, 39.736153, 41.499969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576140, -0.289436, -0.764388,
		0.603430, 0.781416, 0.158937,
		0.551303, -0.552825, 0.624860,
		37.261677, 39.570305, 41.687428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637779, 40.183929, 41.202236>,  <36.875767, 39.957283, 41.250027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637779, 40.183929, 41.202236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549511, 39.809364, 41.311363>,  <37.496552, 39.584625, 41.376839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549511, 39.809364, 41.311363>,  <37.637779, 40.183929, 41.202236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549511, 39.809364, 41.311363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560900, -0.350672, -0.749947,
		0.797932, -0.012468, 0.602619,
		-0.220672, -0.936415, 0.272819,
		37.483311, 39.528439, 41.393208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178947, 39.839886, 40.997559>,  <37.637779, 40.183929, 41.202236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178947, 39.839886, 40.997559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944016, 39.526806, 41.079945>,  <37.803055, 39.338959, 41.129375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944016, 39.526806, 41.079945>,  <38.178947, 39.839886, 40.997559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944016, 39.526806, 41.079945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353733, -0.477143, -0.804492,
		0.727951, -0.399647, 0.557108,
		-0.587333, -0.782698, 0.205969,
		37.767815, 39.291996, 41.141735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547123, 39.268864, 40.983757>,  <38.178947, 39.839886, 40.997559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547123, 39.268864, 40.983757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182224, 39.140488, 40.881927>,  <37.963284, 39.063461, 40.820831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182224, 39.140488, 40.881927>,  <38.547123, 39.268864, 40.983757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182224, 39.140488, 40.881927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355486, -0.311407, -0.881280,
		0.203560, -0.894441, 0.398168,
		-0.912246, -0.320937, -0.254572,
		37.908550, 39.044209, 40.805557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692936, 38.555473, 40.702396>,  <38.547123, 39.268864, 40.983757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692936, 38.555473, 40.702396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335339, 38.635353, 40.541950>,  <38.120781, 38.683281, 40.445683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335339, 38.635353, 40.541950>,  <38.692936, 38.555473, 40.702396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335339, 38.635353, 40.541950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338661, -0.285013, -0.896703,
		-0.293392, -0.937490, 0.187170,
		-0.893996, 0.199699, -0.401112,
		38.067139, 38.695263, 40.421616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406769, 37.930859, 40.304916>,  <38.692936, 38.555473, 40.702396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406769, 37.930859, 40.304916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218864, 38.252594, 40.159389>,  <38.106121, 38.445637, 40.072075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218864, 38.252594, 40.159389>,  <38.406769, 37.930859, 40.304916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218864, 38.252594, 40.159389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194024, -0.307970, -0.931402,
		-0.861208, -0.508125, -0.011389,
		-0.469761, 0.804341, -0.363814,
		38.077934, 38.493896, 40.050243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148029, 37.635189, 39.803989>,  <38.406769, 37.930859, 40.304916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148029, 37.635189, 39.803989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145016, 38.022522, 39.704170>,  <38.143208, 38.254921, 39.644279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145016, 38.022522, 39.704170>,  <38.148029, 37.635189, 39.803989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145016, 38.022522, 39.704170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123269, -0.246748, -0.961208,
		-0.992345, -0.038000, -0.117507,
		-0.007531, 0.968334, -0.249543,
		38.142757, 38.313023, 39.629307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782543, 37.665176, 39.177097>,  <38.148029, 37.635189, 39.803989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782543, 37.665176, 39.177097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984478, 38.010460, 39.176338>,  <38.105640, 38.217632, 39.175884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984478, 38.010460, 39.176338>,  <37.782543, 37.665176, 39.177097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984478, 38.010460, 39.176338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201761, -0.120129, -0.972040,
		-0.839305, 0.490339, -0.234808,
		0.504837, 0.863213, -0.001894,
		38.135929, 38.269424, 39.175770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637085, 37.837582, 38.423149>,  <37.782543, 37.665176, 39.177097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637085, 37.837582, 38.423149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919361, 38.087765, 38.556301>,  <38.088726, 38.237873, 38.636192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919361, 38.087765, 38.556301>,  <37.637085, 37.837582, 38.423149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919361, 38.087765, 38.556301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312470, 0.146933, -0.938495,
		-0.635896, 0.766302, -0.091746,
		0.705691, 0.625453, 0.332880,
		38.131069, 38.275402, 38.656166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636505, 38.390316, 38.014290>,  <37.637085, 37.837582, 38.423149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636505, 38.390316, 38.014290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002636, 38.392948, 38.175354>,  <38.222313, 38.394527, 38.271992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002636, 38.392948, 38.175354>,  <37.636505, 38.390316, 38.014290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002636, 38.392948, 38.175354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395652, 0.171688, -0.902210,
		-0.075064, 0.985129, 0.154549,
		0.915328, 0.006576, 0.402656,
		38.277233, 38.394920, 38.296150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926601, 38.885208, 37.585629>,  <37.636505, 38.390316, 38.014290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926601, 38.885208, 37.585629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258606, 38.706867, 37.719673>,  <38.457809, 38.599861, 37.800102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258606, 38.706867, 37.719673>,  <37.926601, 38.885208, 37.585629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258606, 38.706867, 37.719673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351764, -0.047822, -0.934866,
		0.432838, 0.893828, 0.117142,
		0.830008, -0.445852, 0.335116,
		38.507607, 38.573112, 37.820210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576748, 39.268982, 37.340710>,  <37.926601, 38.885208, 37.585629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576748, 39.268982, 37.340710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682110, 38.892941, 37.427265>,  <38.745327, 38.667316, 37.479198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682110, 38.892941, 37.427265>,  <38.576748, 39.268982, 37.340710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682110, 38.892941, 37.427265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559039, -0.034054, -0.828442,
		0.786190, 0.339184, 0.516584,
		0.263402, -0.940104, 0.216390,
		38.761131, 38.610909, 37.492184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174957, 39.188873, 36.936329>,  <38.576748, 39.268982, 37.340710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174957, 39.188873, 36.936329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071182, 38.814697, 37.032356>,  <39.008915, 38.590191, 37.089973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071182, 38.814697, 37.032356>,  <39.174957, 39.188873, 36.936329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071182, 38.814697, 37.032356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489186, -0.341624, -0.802490,
		0.832700, -0.090757, 0.546237,
		-0.259439, -0.935444, 0.240073,
		38.993351, 38.534065, 37.104378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757072, 38.797554, 37.146580>,  <39.174957, 39.188873, 36.936329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757072, 38.797554, 37.146580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490707, 38.524940, 37.025208>,  <39.330887, 38.361370, 36.952385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490707, 38.524940, 37.025208>,  <39.757072, 38.797554, 37.146580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490707, 38.524940, 37.025208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498814, -0.104315, -0.860408,
		0.554747, -0.724311, 0.409425,
		-0.665912, -0.681536, -0.303429,
		39.290936, 38.320480, 36.934177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221889, 38.161777, 36.987656>,  <39.757072, 38.797554, 37.146580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221889, 38.161777, 36.987656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872051, 38.080341, 36.811638>,  <39.662148, 38.031479, 36.706028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872051, 38.080341, 36.811638>,  <40.221889, 38.161777, 36.987656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872051, 38.080341, 36.811638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483057, -0.287729, -0.826963,
		0.041753, -0.935821, 0.349993,
		-0.874593, -0.203595, -0.440042,
		39.609673, 38.019264, 36.679626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281792, 37.520927, 36.724976>,  <40.221889, 38.161777, 36.987656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281792, 37.520927, 36.724976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972488, 37.659264, 36.512383>,  <39.786907, 37.742268, 36.384827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972488, 37.659264, 36.512383>,  <40.281792, 37.520927, 36.724976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972488, 37.659264, 36.512383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443261, -0.304541, -0.843074,
		-0.453429, -0.887495, 0.082189,
		-0.773254, 0.345843, -0.531480,
		39.740513, 37.763016, 36.352940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149227, 36.990921, 36.280159>,  <40.281792, 37.520927, 36.724976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149227, 36.990921, 36.280159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006447, 37.332569, 36.128868>,  <39.920776, 37.537560, 36.038094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006447, 37.332569, 36.128868>,  <40.149227, 36.990921, 36.280159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006447, 37.332569, 36.128868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380858, -0.236649, -0.893837,
		-0.852954, -0.463111, -0.240826,
		-0.356955, 0.854123, -0.378230,
		39.899361, 37.588806, 36.015400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655441, 36.849495, 35.568619>,  <40.149227, 36.990921, 36.280159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655441, 36.849495, 35.568619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839386, 37.204674, 35.565239>,  <39.949753, 37.417782, 35.563213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839386, 37.204674, 35.565239>,  <39.655441, 36.849495, 35.568619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839386, 37.204674, 35.565239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284174, -0.156169, -0.945969,
		-0.841293, 0.432613, -0.324148,
		0.459861, 0.887951, -0.008447,
		39.977345, 37.471058, 35.562706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445038, 37.195503, 34.994133>,  <39.655441, 36.849495, 35.568619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445038, 37.195503, 34.994133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810661, 37.334801, 35.077286>,  <40.030037, 37.418381, 35.127178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810661, 37.334801, 35.077286>,  <39.445038, 37.195503, 34.994133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810661, 37.334801, 35.077286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302327, -0.243405, -0.921603,
		-0.270346, 0.905251, -0.327771,
		0.914063, 0.348246, 0.207878,
		40.084881, 37.439274, 35.139648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182041, 36.870449, 34.807423>,  <39.445038, 37.195503, 34.994133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182041, 36.870449, 34.807423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494102, 36.668842, 34.659195>,  <40.681339, 36.547878, 34.570259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494102, 36.668842, 34.659195>,  <40.182041, 36.870449, 34.807423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494102, 36.668842, 34.659195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137868, 0.716310, -0.684027,
		0.610204, 0.482559, 0.628322,
		0.780156, -0.504021, -0.370565,
		40.728149, 36.517635, 34.548027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511688, 37.399158, 34.596111>,  <40.182041, 36.870449, 34.807423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511688, 37.399158, 34.596111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659122, 37.085102, 34.397030>,  <40.747581, 36.896667, 34.277580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659122, 37.085102, 34.397030>,  <40.511688, 37.399158, 34.596111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659122, 37.085102, 34.397030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064866, 0.555812, -0.828773,
		0.927329, 0.273189, 0.255792,
		0.368584, -0.785138, -0.497700,
		40.769699, 36.849560, 34.247719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164001, 37.557266, 34.281063>,  <40.511688, 37.399158, 34.596111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164001, 37.557266, 34.281063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007538, 37.253323, 34.073368>,  <40.913658, 37.070957, 33.948750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007538, 37.253323, 34.073368>,  <41.164001, 37.557266, 34.281063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007538, 37.253323, 34.073368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036916, 0.550782, -0.833832,
		0.919581, -0.345331, -0.187394,
		-0.391162, -0.759859, -0.519237,
		40.890190, 37.025364, 33.917599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075516, 37.846462, 33.577328>,  <41.164001, 37.557266, 34.281063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075516, 37.846462, 33.577328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993290, 37.456257, 33.546055>,  <40.943954, 37.222134, 33.527290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993290, 37.456257, 33.546055>,  <41.075516, 37.846462, 33.577328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993290, 37.456257, 33.546055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008422, 0.078122, -0.996908,
		0.978608, -0.205584, -0.007843,
		-0.205561, -0.975516, -0.078183,
		40.931622, 37.163601, 33.522598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606415, 37.256474, 33.250229>,  <41.075516, 37.846462, 33.577328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606415, 37.256474, 33.250229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216034, 37.226635, 33.168297>,  <40.981804, 37.208733, 33.119137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216034, 37.226635, 33.168297>,  <41.606415, 37.256474, 33.250229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216034, 37.226635, 33.168297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188853, 0.179991, -0.965369,
		0.108876, -0.980836, -0.161575,
		-0.975951, -0.074591, -0.204830,
		40.923248, 37.204258, 33.106846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148205, 36.742672, 33.294930>,  <41.606415, 37.256474, 33.250229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148205, 36.742672, 33.294930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454803, 36.697372, 33.547806>,  <42.638763, 36.670193, 33.699532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454803, 36.697372, 33.547806>,  <42.148205, 36.742672, 33.294930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454803, 36.697372, 33.547806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467321, 0.773569, -0.428021,
		-0.440569, 0.623510, 0.645859,
		0.766492, -0.113250, 0.632190,
		42.684750, 36.663399, 33.737461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326969, 37.348129, 33.728714>,  <42.148205, 36.742672, 33.294930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326969, 37.348129, 33.728714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672550, 37.148670, 33.700615>,  <42.879898, 37.028996, 33.683758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672550, 37.148670, 33.700615>,  <42.326969, 37.348129, 33.728714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672550, 37.148670, 33.700615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389297, 0.749851, -0.534949,
		0.319424, 0.434826, 0.841959,
		0.863954, -0.498648, -0.070244,
		42.931736, 36.999077, 33.679543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797424, 37.790470, 33.839493>,  <42.326969, 37.348129, 33.728714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797424, 37.790470, 33.839493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991531, 37.506138, 33.635830>,  <43.107994, 37.335541, 33.513634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991531, 37.506138, 33.635830>,  <42.797424, 37.790470, 33.839493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991531, 37.506138, 33.635830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420624, 0.700289, -0.576777,
		0.766546, 0.065727, 0.638817,
		0.485267, -0.710828, -0.509157,
		43.137112, 37.292889, 33.483082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482819, 38.052734, 33.724293>,  <42.797424, 37.790470, 33.839493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482819, 38.052734, 33.724293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458023, 37.743183, 33.472176>,  <43.443146, 37.557453, 33.320908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458023, 37.743183, 33.472176>,  <43.482819, 38.052734, 33.724293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458023, 37.743183, 33.472176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453834, 0.540589, -0.708378,
		0.888928, -0.329957, 0.317704,
		-0.061987, -0.773882, -0.630290,
		43.439426, 37.511017, 33.283089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159618, 37.938835, 33.318466>,  <43.482819, 38.052734, 33.724293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159618, 37.938835, 33.318466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892769, 37.735893, 33.100281>,  <43.732658, 37.614128, 32.969368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892769, 37.735893, 33.100281>,  <44.159618, 37.938835, 33.318466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892769, 37.735893, 33.100281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334837, 0.449861, -0.827954,
		0.665451, -0.734992, -0.130232,
		-0.667127, -0.507357, -0.545464,
		43.692631, 37.583687, 32.936642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470951, 37.658600, 32.632801>,  <44.159618, 37.938835, 33.318466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470951, 37.658600, 32.632801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073105, 37.649868, 32.592270>,  <43.834396, 37.644630, 32.567951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073105, 37.649868, 32.592270>,  <44.470951, 37.658600, 32.632801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073105, 37.649868, 32.592270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080163, 0.457708, -0.885481,
		0.065708, -0.888834, -0.453493,
		-0.994614, -0.021830, -0.101326,
		43.774719, 37.643318, 32.561871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484634, 37.605309, 31.898239>,  <44.470951, 37.658600, 32.632801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484634, 37.605309, 31.898239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119640, 37.726749, 32.007931>,  <43.900646, 37.799614, 32.073746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119640, 37.726749, 32.007931>,  <44.484634, 37.605309, 31.898239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119640, 37.726749, 32.007931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120898, 0.440261, -0.889693,
		-0.390846, -0.844983, -0.365026,
		-0.912482, 0.303602, 0.274231,
		43.845894, 37.817829, 32.090199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094318, 37.388485, 31.268215>,  <44.484634, 37.605309, 31.898239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094318, 37.388485, 31.268215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947342, 37.681923, 31.496891>,  <43.859158, 37.857986, 31.634096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947342, 37.681923, 31.496891>,  <44.094318, 37.388485, 31.268215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947342, 37.681923, 31.496891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121090, 0.571721, -0.811463,
		-0.922131, -0.367389, -0.121242,
		-0.367439, 0.733594, 0.571689,
		43.837109, 37.902000, 31.668398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587433, 37.663010, 30.841473>,  <44.094318, 37.388485, 31.268215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587433, 37.663010, 30.841473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631271, 37.955399, 31.110893>,  <43.657574, 38.130833, 31.272545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631271, 37.955399, 31.110893>,  <43.587433, 37.663010, 30.841473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631271, 37.955399, 31.110893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053186, 0.680976, -0.730372,
		-0.992553, 0.044220, 0.113507,
		0.109592, 0.730970, 0.673552,
		43.664150, 38.174690, 31.312960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201191, 38.125870, 30.602554>,  <43.587433, 37.663010, 30.841473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201191, 38.125870, 30.602554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414532, 38.362865, 30.844048>,  <43.542534, 38.505062, 30.988943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414532, 38.362865, 30.844048>,  <43.201191, 38.125870, 30.602554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414532, 38.362865, 30.844048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023006, 0.703297, -0.710523,
		-0.845582, 0.392847, 0.361472,
		0.533350, 0.592490, 0.603734,
		43.574535, 38.540611, 31.025167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850677, 38.746700, 30.574282>,  <43.201191, 38.125870, 30.602554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850677, 38.746700, 30.574282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222103, 38.834076, 30.694321>,  <43.444958, 38.886501, 30.766344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222103, 38.834076, 30.694321>,  <42.850677, 38.746700, 30.574282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222103, 38.834076, 30.694321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033825, 0.755337, -0.654463,
		-0.369632, 0.617860, 0.693989,
		0.928562, 0.218436, 0.300095,
		43.500671, 38.899609, 30.784349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823368, 39.443573, 30.633518>,  <42.850677, 38.746700, 30.574282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823368, 39.443573, 30.633518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210976, 39.346893, 30.613207>,  <43.443542, 39.288883, 30.601019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210976, 39.346893, 30.613207>,  <42.823368, 39.443573, 30.633518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210976, 39.346893, 30.613207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139577, 0.705550, -0.694778,
		0.203758, 0.666167, 0.717429,
		0.969020, -0.241703, -0.050780,
		43.501682, 39.274384, 30.597973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225163, 40.013062, 30.759386>,  <42.823368, 39.443573, 30.633518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225163, 40.013062, 30.759386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493309, 39.773308, 30.584412>,  <43.654198, 39.629456, 30.479427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493309, 39.773308, 30.584412>,  <43.225163, 40.013062, 30.759386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493309, 39.773308, 30.584412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235041, 0.730680, -0.640985,
		0.703820, 0.326880, 0.630703,
		0.670368, -0.599380, -0.437436,
		43.694420, 39.593494, 30.453180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870750, 40.450016, 30.707401>,  <43.225163, 40.013062, 30.759386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870750, 40.450016, 30.707401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897621, 40.149494, 30.444792>,  <43.913742, 39.969181, 30.287226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897621, 40.149494, 30.444792>,  <43.870750, 40.450016, 30.707401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897621, 40.149494, 30.444792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306643, 0.641709, -0.702980,
		0.949451, -0.154096, 0.273490,
		0.067174, -0.751309, -0.656524,
		43.917774, 39.924103, 30.247835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457989, 40.472469, 30.461048>,  <43.870750, 40.450016, 30.707401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457989, 40.472469, 30.461048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264111, 40.281250, 30.168051>,  <44.147785, 40.166519, 29.992252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264111, 40.281250, 30.168051>,  <44.457989, 40.472469, 30.461048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264111, 40.281250, 30.168051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388192, 0.632881, -0.669902,
		0.783825, -0.609044, -0.121179,
		-0.484692, -0.478046, -0.732494,
		44.118702, 40.137836, 29.948303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923550, 40.260345, 29.925076>,  <44.457989, 40.472469, 30.461048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923550, 40.260345, 29.925076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574669, 40.211372, 29.735645>,  <44.365341, 40.181988, 29.621986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574669, 40.211372, 29.735645>,  <44.923550, 40.260345, 29.925076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574669, 40.211372, 29.735645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215519, 0.772939, -0.596755,
		0.439109, -0.622555, -0.647772,
		-0.872201, -0.122433, -0.473577,
		44.313007, 40.174641, 29.593573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196434, 40.261639, 29.232500>,  <44.923550, 40.260345, 29.925076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196434, 40.261639, 29.232500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803604, 40.330040, 29.200779>,  <44.567905, 40.371082, 29.181746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803604, 40.330040, 29.200779>,  <45.196434, 40.261639, 29.232500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803604, 40.330040, 29.200779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188376, 0.875198, -0.445581,
		-0.006791, -0.452532, -0.891722,
		-0.982073, 0.171005, -0.079302,
		44.508984, 40.381340, 29.176989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129288, 40.622696, 28.659870>,  <45.196434, 40.261639, 29.232500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129288, 40.622696, 28.659870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799301, 40.721741, 28.863092>,  <44.601311, 40.781166, 28.985025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799301, 40.721741, 28.863092>,  <45.129288, 40.622696, 28.659870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799301, 40.721741, 28.863092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141859, 0.960863, -0.237948,
		-0.547089, -0.124227, -0.827805,
		-0.824967, 0.247610, 0.508055,
		44.551811, 40.796024, 29.015509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716064, 40.973522, 28.192223>,  <45.129288, 40.622696, 28.659870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716064, 40.973522, 28.192223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591778, 41.087414, 28.554964>,  <44.517204, 41.155750, 28.772610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591778, 41.087414, 28.554964>,  <44.716064, 40.973522, 28.192223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591778, 41.087414, 28.554964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164407, 0.955798, -0.243764,
		-0.936176, 0.073352, -0.343793,
		-0.310716, 0.284728, 0.906855,
		44.498562, 41.172832, 28.827021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332966, 41.523609, 28.059814>,  <44.716064, 40.973522, 28.192223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332966, 41.523609, 28.059814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433899, 41.569157, 28.444181>,  <44.494457, 41.596485, 28.674801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433899, 41.569157, 28.444181>,  <44.332966, 41.523609, 28.059814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433899, 41.569157, 28.444181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084386, 0.991858, -0.095379,
		-0.963955, -0.057021, 0.259883,
		0.252329, 0.113872, 0.960918,
		44.509598, 41.603317, 28.732456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827579, 41.882992, 28.420044>,  <44.332966, 41.523609, 28.059814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827579, 41.882992, 28.420044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182339, 41.926449, 28.599644>,  <44.395195, 41.952522, 28.707403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182339, 41.926449, 28.599644>,  <43.827579, 41.882992, 28.420044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182339, 41.926449, 28.599644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037344, 0.985633, -0.164724,
		-0.460446, 0.129326, 0.878216,
		0.886902, 0.108642, 0.449001,
		44.448410, 41.959042, 28.734344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756561, 42.271309, 29.054682>,  <43.827579, 41.882992, 28.420044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756561, 42.271309, 29.054682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085178, 42.278019, 28.826721>,  <44.282349, 42.282043, 28.689945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085178, 42.278019, 28.826721>,  <43.756561, 42.271309, 29.054682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085178, 42.278019, 28.826721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158219, 0.967017, -0.199614,
		0.547755, 0.254160, 0.797099,
		0.821542, 0.016776, -0.569901,
		44.331642, 42.283051, 28.655750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067184, 42.951984, 29.120556>,  <43.756561, 42.271309, 29.054682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067184, 42.951984, 29.120556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238438, 42.823669, 28.782610>,  <44.341190, 42.746681, 28.579842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238438, 42.823669, 28.782610>,  <44.067184, 42.951984, 29.120556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238438, 42.823669, 28.782610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174433, 0.946632, -0.271037,
		0.886722, -0.031333, 0.461239,
		0.428131, -0.320790, -0.844865,
		44.366879, 42.727432, 28.529150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819008, 42.868614, 28.938931>,  <44.067184, 42.951984, 29.120556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819008, 42.868614, 28.938931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671612, 43.072121, 28.627708>,  <44.583176, 43.194225, 28.440975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671612, 43.072121, 28.627708>,  <44.819008, 42.868614, 28.938931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671612, 43.072121, 28.627708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657996, 0.733971, 0.168308,
		0.656701, -0.449938, -0.605227,
		-0.368491, 0.508765, -0.778057,
		44.561066, 43.224751, 28.394291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577763, 43.061203, 29.022009>,  <44.819008, 42.868614, 28.938931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577763, 43.061203, 29.022009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563824, 43.178078, 29.404301>,  <45.555462, 43.248203, 29.633675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563824, 43.178078, 29.404301>,  <45.577763, 43.061203, 29.022009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563824, 43.178078, 29.404301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082080, 0.953914, -0.288635,
		-0.996016, 0.068388, -0.057223,
		-0.034847, 0.292183, 0.955728,
		45.553371, 43.265732, 29.691019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539684, 43.773628, 28.980024>,  <45.577763, 43.061203, 29.022009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539684, 43.773628, 28.980024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610485, 43.722111, 29.370323>,  <45.652966, 43.691200, 29.604502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610485, 43.722111, 29.370323>,  <45.539684, 43.773628, 28.980024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610485, 43.722111, 29.370323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048764, 0.991331, 0.122005,
		-0.983002, 0.025986, 0.181748,
		0.177002, -0.128793, 0.975747,
		45.663586, 43.683472, 29.663048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786163, 44.355556, 29.279856>,  <45.539684, 43.773628, 28.980024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786163, 44.355556, 29.279856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005379, 44.647644, 29.443041>,  <46.136906, 44.822899, 29.540953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005379, 44.647644, 29.443041>,  <45.786163, 44.355556, 29.279856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005379, 44.647644, 29.443041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826142, 0.548886, 0.127329,
		-0.130947, -0.406816, 0.904076,
		0.548035, 0.730222, 0.407963,
		46.169788, 44.866711, 29.565430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549458, 44.396790, 29.854342>,  <45.786163, 44.355556, 29.279856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549458, 44.396790, 29.854342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688332, 44.753777, 29.739128>,  <45.771656, 44.967968, 29.670000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688332, 44.753777, 29.739128>,  <45.549458, 44.396790, 29.854342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688332, 44.753777, 29.739128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868967, 0.421646, 0.259056,
		0.352647, 0.160352, 0.921915,
		0.347182, 0.892470, -0.288033,
		45.792488, 45.021519, 29.652718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595852, 44.940353, 30.475496>,  <45.549458, 44.396790, 29.854342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595852, 44.940353, 30.475496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511200, 45.064236, 30.104704>,  <45.460407, 45.138565, 29.882229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511200, 45.064236, 30.104704>,  <45.595852, 44.940353, 30.475496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511200, 45.064236, 30.104704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859259, 0.392986, 0.327469,
		0.465710, 0.865820, 0.182949,
		-0.211633, 0.309707, -0.926981,
		45.447712, 45.157146, 29.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113289, 44.559696, 30.571384>,  <45.595852, 44.940353, 30.475496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113289, 44.559696, 30.571384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047318, 44.690140, 30.943718>,  <46.007732, 44.768406, 31.167118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047318, 44.690140, 30.943718>,  <46.113289, 44.559696, 30.571384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047318, 44.690140, 30.943718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236369, -0.929324, 0.283702,
		0.957564, -0.173229, 0.230356,
		-0.164930, 0.326111, 0.930833,
		45.997837, 44.787971, 31.222967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639668, 44.203270, 31.043325>,  <46.113289, 44.559696, 30.571384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639668, 44.203270, 31.043325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304218, 44.298519, 31.239288>,  <46.102947, 44.355667, 31.356867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304218, 44.298519, 31.239288>,  <46.639668, 44.203270, 31.043325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304218, 44.298519, 31.239288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011801, -0.907118, 0.420712,
		0.544585, 0.347037, 0.763539,
		-0.838622, 0.238124, 0.489908,
		46.052631, 44.369957, 31.386261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656639, 44.008404, 31.798559>,  <46.639668, 44.203270, 31.043325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656639, 44.008404, 31.798559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267731, 44.014477, 31.705212>,  <46.034386, 44.018120, 31.649202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267731, 44.014477, 31.705212>,  <46.656639, 44.008404, 31.798559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.267731, 44.014477, 31.705212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131240, -0.861361, 0.490748,
		-0.193567, 0.507767, 0.839467,
		-0.972269, 0.015179, -0.233370,
		45.976051, 44.019032, 31.635201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255768, 43.974110, 32.500420>,  <46.656639, 44.008404, 31.798559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255768, 43.974110, 32.500420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008144, 43.866367, 32.205338>,  <45.859570, 43.801720, 32.028290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008144, 43.866367, 32.205338>,  <46.255768, 43.974110, 32.500420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008144, 43.866367, 32.205338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155202, -0.878856, 0.451137,
		-0.769854, 0.393775, 0.502261,
		-0.619061, -0.269358, -0.737705,
		45.822426, 43.785561, 31.984026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647087, 43.561073, 32.839241>,  <46.255768, 43.974110, 32.500420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647087, 43.561073, 32.839241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690178, 43.457977, 32.455166>,  <45.716030, 43.396118, 32.224720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690178, 43.457977, 32.455166>,  <45.647087, 43.561073, 32.839241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690178, 43.457977, 32.455166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218372, -0.948358, 0.230068,
		-0.969902, 0.184895, -0.158445,
		0.107725, -0.257743, -0.960189,
		45.722496, 43.380653, 32.167110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.011211, 43.208347, 32.645546>,  <45.647087, 43.561073, 32.839241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.011211, 43.208347, 32.645546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306511, 43.091465, 32.402367>,  <45.483692, 43.021336, 32.256458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306511, 43.091465, 32.402367>,  <45.011211, 43.208347, 32.645546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306511, 43.091465, 32.402367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213478, -0.956183, 0.200351,
		-0.639852, -0.018126, -0.768284,
		0.738252, -0.292207, -0.607947,
		45.527985, 43.003803, 32.219982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596779, 42.772438, 32.316643>,  <45.011211, 43.208347, 32.645546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596779, 42.772438, 32.316643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974457, 42.676060, 32.226807>,  <45.201065, 42.618233, 32.172905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974457, 42.676060, 32.226807>,  <44.596779, 42.772438, 32.316643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974457, 42.676060, 32.226807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171777, -0.941971, 0.288416,
		-0.281054, -0.233741, -0.930792,
		0.944193, -0.240949, -0.224594,
		45.257713, 42.603775, 32.159428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565693, 42.157944, 31.893707>,  <44.596779, 42.772438, 32.316643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565693, 42.157944, 31.893707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936695, 42.163067, 32.043140>,  <45.159298, 42.166142, 32.132801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936695, 42.163067, 32.043140>,  <44.565693, 42.157944, 31.893707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936695, 42.163067, 32.043140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070305, -0.975599, 0.207997,
		0.367131, -0.219184, -0.903976,
		0.927508, 0.012808, 0.373582,
		45.214947, 42.166908, 32.155216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921207, 41.559895, 31.655823>,  <44.565693, 42.157944, 31.893707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921207, 41.559895, 31.655823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131405, 41.675129, 31.976038>,  <45.257523, 41.744270, 32.168167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131405, 41.675129, 31.976038>,  <44.921207, 41.559895, 31.655823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131405, 41.675129, 31.976038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106096, -0.955771, 0.274308,
		0.844156, -0.059213, -0.532817,
		0.525494, 0.288089, 0.800538,
		45.289055, 41.761555, 32.216198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219410, 40.942532, 31.812447>,  <44.921207, 41.559895, 31.655823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219410, 40.942532, 31.812447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316380, 41.149014, 32.141022>,  <45.374561, 41.272903, 32.338165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316380, 41.149014, 32.141022>,  <45.219410, 40.942532, 31.812447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316380, 41.149014, 32.141022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236221, -0.852621, 0.466087,
		0.940973, 0.081051, -0.328634,
		0.242423, 0.516206, 0.821439,
		45.389107, 41.303875, 32.387455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940483, 40.717411, 32.155010>,  <45.219410, 40.942532, 31.812447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940483, 40.717411, 32.155010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702648, 40.880077, 32.432453>,  <45.559948, 40.977676, 32.598919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702648, 40.880077, 32.432453>,  <45.940483, 40.717411, 32.155010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702648, 40.880077, 32.432453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039770, -0.846727, 0.530539,
		0.803047, 0.343037, 0.487280,
		-0.594587, 0.406669, 0.693604,
		45.524273, 41.002079, 32.640533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377781, 40.722164, 32.775684>,  <45.940483, 40.717411, 32.155010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377781, 40.722164, 32.775684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.997028, 40.745247, 32.896072>,  <45.768578, 40.759098, 32.968307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.997028, 40.745247, 32.896072>,  <46.377781, 40.722164, 32.775684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.997028, 40.745247, 32.896072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113837, -0.845250, 0.522106,
		0.284529, 0.531246, 0.798010,
		-0.951885, 0.057711, 0.300974,
		45.711464, 40.762562, 32.986366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379189, 40.523861, 33.448078>,  <46.377781, 40.722164, 32.775684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379189, 40.523861, 33.448078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987728, 40.482288, 33.377151>,  <45.752853, 40.457344, 33.334595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987728, 40.482288, 33.377151>,  <46.379189, 40.523861, 33.448078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987728, 40.482288, 33.377151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014387, -0.825961, 0.563543,
		-0.205031, 0.554062, 0.806831,
		-0.978650, -0.103936, -0.177319,
		45.694134, 40.451107, 33.323956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126781, 40.422737, 34.100349>,  <46.379189, 40.523861, 33.448078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126781, 40.422737, 34.100349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862999, 40.292480, 33.829330>,  <45.704731, 40.214325, 33.666718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862999, 40.292480, 33.829330>,  <46.126781, 40.422737, 34.100349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862999, 40.292480, 33.829330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123648, -0.842042, 0.525049,
		-0.741504, 0.430025, 0.515024,
		-0.659456, -0.325644, -0.677550,
		45.665161, 40.194786, 33.626064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624569, 40.043739, 34.470314>,  <46.126781, 40.422737, 34.100349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624569, 40.043739, 34.470314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600151, 39.915508, 34.092213>,  <45.585499, 39.838570, 33.865353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600151, 39.915508, 34.092213>,  <45.624569, 40.043739, 34.470314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600151, 39.915508, 34.092213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114526, -0.938514, 0.325691,
		-0.991543, 0.128139, 0.020578,
		-0.061047, -0.320579, -0.945253,
		45.581837, 39.819336, 33.808636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390224, 39.480679, 34.652786>,  <45.624569, 40.043739, 34.470314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390224, 39.480679, 34.652786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454014, 39.424496, 34.261921>,  <45.492287, 39.390785, 34.027401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454014, 39.424496, 34.261921>,  <45.390224, 39.480679, 34.652786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454014, 39.424496, 34.261921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065409, -0.989155, 0.131505,
		-0.985033, 0.042943, -0.166931,
		0.159474, -0.140456, -0.977159,
		45.501858, 39.382359, 33.968773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942345, 39.016712, 34.491142>,  <45.390224, 39.480679, 34.652786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942345, 39.016712, 34.491142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235985, 38.968803, 34.223785>,  <45.412170, 38.940056, 34.063370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235985, 38.968803, 34.223785>,  <44.942345, 39.016712, 34.491142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235985, 38.968803, 34.223785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027931, -0.988814, 0.146518,
		-0.678467, -0.088890, -0.729234,
		0.734100, -0.119776, -0.668395,
		45.456215, 38.932869, 34.023266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726955, 38.516735, 34.016117>,  <44.942345, 39.016712, 34.491142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726955, 38.516735, 34.016117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126301, 38.500019, 34.000523>,  <45.365910, 38.489990, 33.991165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126301, 38.500019, 34.000523>,  <44.726955, 38.516735, 34.016117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126301, 38.500019, 34.000523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043494, -0.998090, -0.043875,
		-0.037077, 0.045499, -0.998276,
		0.998366, -0.041792, -0.038985,
		45.425812, 38.487480, 33.988827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867920, 37.966854, 33.557877>,  <44.726955, 38.516735, 34.016117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867920, 37.966854, 33.557877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239666, 38.023907, 33.694073>,  <45.462715, 38.058136, 33.775791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239666, 38.023907, 33.694073>,  <44.867920, 37.966854, 33.557877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239666, 38.023907, 33.694073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200627, -0.969389, -0.141541,
		0.309883, 0.199856, -0.929532,
		0.929366, 0.142628, 0.340494,
		45.518475, 38.066696, 33.796223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274265, 37.755699, 33.012444>,  <44.867920, 37.966854, 33.557877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274265, 37.755699, 33.012444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447834, 37.719086, 33.370960>,  <45.551975, 37.697117, 33.586071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447834, 37.719086, 33.370960>,  <45.274265, 37.755699, 33.012444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447834, 37.719086, 33.370960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051074, -0.990726, -0.125906,
		0.899501, 0.100411, -0.425225,
		0.433924, -0.091535, 0.896287,
		45.578011, 37.691624, 33.639847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647915, 37.149529, 32.990120>,  <45.274265, 37.755699, 33.012444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647915, 37.149529, 32.990120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640446, 37.221817, 33.383461>,  <45.635963, 37.265190, 33.619465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640446, 37.221817, 33.383461>,  <45.647915, 37.149529, 32.990120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640446, 37.221817, 33.383461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066156, -0.981149, 0.181577,
		0.997634, 0.068446, 0.006367,
		-0.018675, 0.180726, 0.983356,
		45.634842, 37.276035, 33.678467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976242, 36.544510, 33.356419>,  <45.647915, 37.149529, 32.990120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976242, 36.544510, 33.356419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788452, 36.707386, 33.669796>,  <45.675777, 36.805111, 33.857822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.788452, 36.707386, 33.669796>,  <45.976242, 36.544510, 33.356419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788452, 36.707386, 33.669796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077952, -0.902958, 0.422599,
		0.879497, 0.137330, 0.455660,
		-0.469477, 0.407194, 0.783444,
		45.647610, 36.829544, 33.904831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405674, 36.274628, 34.063782>,  <45.976242, 36.544510, 33.356419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405674, 36.274628, 34.063782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032299, 36.393955, 34.143475>,  <45.808273, 36.465553, 34.191292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032299, 36.393955, 34.143475>,  <46.405674, 36.274628, 34.063782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.032299, 36.393955, 34.143475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181807, -0.872174, 0.454158,
		0.309252, 0.387707, 0.868359,
		-0.933440, 0.298323, 0.199234,
		45.752266, 36.483452, 34.203243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.735321, 36.658863, 34.651257>,  <46.405674, 36.274628, 34.063782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.735321, 36.658863, 34.651257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973663, 36.705299, 34.969120>,  <47.116669, 36.733162, 35.159836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973663, 36.705299, 34.969120>,  <46.735321, 36.658863, 34.651257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973663, 36.705299, 34.969120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203942, -0.935185, 0.289547,
		0.776765, -0.334592, -0.533559,
		0.595856, 0.116095, 0.794655,
		47.152420, 36.740128, 35.207516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119247, 36.070126, 34.697262>,  <46.735321, 36.658863, 34.651257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119247, 36.070126, 34.697262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.116806, 36.217697, 35.069038>,  <47.115341, 36.306240, 35.292103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.116806, 36.217697, 35.069038>,  <47.119247, 36.070126, 34.697262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.116806, 36.217697, 35.069038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258898, -0.898347, 0.354886,
		0.965885, -0.238465, 0.100995,
		-0.006101, 0.368927, 0.929438,
		47.114975, 36.328377, 35.347870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.526333, 35.835587, 35.178677>,  <47.119247, 36.070126, 34.697262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.526333, 35.835587, 35.178677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.224899, 35.947136, 35.416782>,  <47.044041, 36.014065, 35.559647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.224899, 35.947136, 35.416782>,  <47.526333, 35.835587, 35.178677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.224899, 35.947136, 35.416782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019005, -0.895929, 0.443790,
		0.657080, 0.345745, 0.669855,
		-0.753581, 0.278875, 0.595268,
		46.998825, 36.030800, 35.595364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827934, 35.208912, 35.219090>,  <47.526333, 35.835587, 35.178677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827934, 35.208912, 35.219090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674370, 35.058849, 34.881599>,  <47.582233, 34.968811, 34.679104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674370, 35.058849, 34.881599>,  <47.827934, 35.208912, 35.219090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674370, 35.058849, 34.881599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464775, -0.868064, 0.174495,
		-0.797872, -0.325153, 0.507618,
		-0.383907, -0.375153, -0.843727,
		47.559196, 34.946304, 34.628483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.710613, 42.744286, 41.475910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.398071, 42.498680, 41.431232>,  <32.210545, 42.351318, 41.404427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.398071, 42.498680, 41.431232>,  <32.710613, 42.744286, 41.475910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398071, 42.498680, 41.431232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370839, -0.312846, -0.874417,
		0.501961, -0.724649, 0.472143,
		-0.781354, -0.614012, -0.111692,
		32.163666, 42.314476, 41.397724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951572, 42.177067, 41.187016>,  <32.710613, 42.744286, 41.475910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951572, 42.177067, 41.187016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.561504, 42.131817, 41.110870>,  <32.327461, 42.104668, 41.065182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.561504, 42.131817, 41.110870>,  <32.951572, 42.177067, 41.187016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561504, 42.131817, 41.110870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221031, -0.444989, -0.867830,
		0.013468, -0.888362, 0.458947,
		-0.975174, -0.113129, -0.190363,
		32.268951, 42.097878, 41.053761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916203, 41.463528, 40.968254>,  <32.951572, 42.177067, 41.187016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916203, 41.463528, 40.968254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603424, 41.676102, 40.837940>,  <32.415756, 41.803646, 40.759754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603424, 41.676102, 40.837940>,  <32.916203, 41.463528, 40.968254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603424, 41.676102, 40.837940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068925, -0.445720, -0.892515,
		-0.619520, -0.720356, 0.311902,
		-0.781949, 0.531432, -0.325783,
		32.368839, 41.835529, 40.740204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436962, 40.983799, 40.745911>,  <32.916203, 41.463528, 40.968254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436962, 40.983799, 40.745911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.321667, 41.311920, 40.548317>,  <32.252491, 41.508793, 40.429760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.321667, 41.311920, 40.548317>,  <32.436962, 40.983799, 40.745911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321667, 41.311920, 40.548317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036406, -0.524898, -0.850387,
		-0.956867, -0.227128, 0.181158,
		-0.288236, 0.820302, -0.493989,
		32.235195, 41.558010, 40.400120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919006, 40.761276, 40.386028>,  <32.436962, 40.983799, 40.745911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919006, 40.761276, 40.386028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044785, 41.095741, 40.206268>,  <32.120251, 41.296421, 40.098412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044785, 41.095741, 40.206268>,  <31.919006, 40.761276, 40.386028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044785, 41.095741, 40.206268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051017, -0.487617, -0.871566,
		-0.947903, 0.251135, -0.195989,
		0.314448, 0.836158, -0.449401,
		32.139118, 41.346588, 40.071449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598433, 40.725792, 39.775810>,  <31.919006, 40.761276, 40.386028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598433, 40.725792, 39.775810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.881481, 40.995529, 39.691402>,  <32.051311, 41.157372, 39.640759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.881481, 40.995529, 39.691402>,  <31.598433, 40.725792, 39.775810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881481, 40.995529, 39.691402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184267, -0.464422, -0.866232,
		-0.682140, 0.574082, -0.452895,
		0.707623, 0.674345, -0.211016,
		32.093769, 41.197834, 39.628098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532513, 40.771351, 39.037094>,  <31.598433, 40.725792, 39.775810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532513, 40.771351, 39.037094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.886332, 40.917118, 39.153557>,  <32.098621, 41.004578, 39.223434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.886332, 40.917118, 39.153557>,  <31.532513, 40.771351, 39.037094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886332, 40.917118, 39.153557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454414, -0.532367, -0.714208,
		-0.105272, 0.764057, -0.636502,
		0.884548, 0.364422, 0.291155,
		32.151695, 41.026443, 39.240902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804363, 40.811935, 38.405956>,  <31.532513, 40.771351, 39.037094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804363, 40.811935, 38.405956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.105392, 40.819553, 38.669250>,  <32.286011, 40.824123, 38.827225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.105392, 40.819553, 38.669250>,  <31.804363, 40.811935, 38.405956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105392, 40.819553, 38.669250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507954, -0.652907, -0.561867,
		0.419066, 0.757198, -0.501033,
		0.752573, 0.019043, 0.658233,
		32.331165, 40.825268, 38.866722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485443, 40.959076, 38.016285>,  <31.804363, 40.811935, 38.405956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485443, 40.959076, 38.016285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599209, 40.795925, 38.363327>,  <32.667469, 40.698036, 38.571552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599209, 40.795925, 38.363327>,  <32.485443, 40.959076, 38.016285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599209, 40.795925, 38.363327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651991, -0.581188, -0.486958,
		0.702863, 0.704171, 0.100632,
		0.284415, -0.407876, 0.867609,
		32.684532, 40.673561, 38.623611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213589, 41.019318, 37.984604>,  <32.485443, 40.959076, 38.016285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213589, 41.019318, 37.984604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115234, 40.740948, 38.254486>,  <33.056221, 40.573925, 38.416416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115234, 40.740948, 38.254486>,  <33.213589, 41.019318, 37.984604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115234, 40.740948, 38.254486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553295, -0.672304, -0.491805,
		0.795868, 0.252386, 0.550359,
		-0.245884, -0.695923, 0.674709,
		33.041470, 40.532169, 38.456898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868866, 40.775097, 38.214897>,  <33.213589, 41.019318, 37.984604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868866, 40.775097, 38.214897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596687, 40.496387, 38.305660>,  <33.433380, 40.329163, 38.360119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.596687, 40.496387, 38.305660>,  <33.868866, 40.775097, 38.214897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596687, 40.496387, 38.305660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614285, -0.711206, -0.341819,
		0.399550, -0.093205, 0.911961,
		-0.680451, -0.696778, 0.226908,
		33.392551, 40.287354, 38.373734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150356, 40.425728, 38.667034>,  <33.868866, 40.775097, 38.214897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150356, 40.425728, 38.667034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899532, 40.165024, 38.496387>,  <33.749039, 40.008602, 38.394001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899532, 40.165024, 38.496387>,  <34.150356, 40.425728, 38.667034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899532, 40.165024, 38.496387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778416, -0.544965, -0.311579,
		-0.029414, -0.527463, 0.849069,
		-0.627059, -0.651764, -0.426615,
		33.711414, 39.969494, 38.368404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454201, 39.707268, 38.809719>,  <34.150356, 40.425728, 38.667034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454201, 39.707268, 38.809719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.208702, 39.680771, 38.495029>,  <34.061405, 39.664871, 38.306217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.208702, 39.680771, 38.495029>,  <34.454201, 39.707268, 38.809719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208702, 39.680771, 38.495029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621555, -0.654971, -0.429746,
		-0.486813, -0.752745, 0.443158,
		-0.613745, -0.066241, -0.786721,
		34.024578, 39.660900, 38.259014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546700, 39.042385, 38.624542>,  <34.454201, 39.707268, 38.809719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546700, 39.042385, 38.624542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.372364, 39.171150, 38.288349>,  <34.267765, 39.248409, 38.086632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.372364, 39.171150, 38.288349>,  <34.546700, 39.042385, 38.624542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372364, 39.171150, 38.288349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572663, -0.621241, -0.534899,
		-0.694337, -0.714443, 0.086409,
		-0.435835, 0.321917, -0.840486,
		34.241611, 39.267727, 38.036201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479797, 38.495529, 38.200336>,  <34.546700, 39.042385, 38.624542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479797, 38.495529, 38.200336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.505775, 38.809898, 37.954372>,  <34.521362, 38.998520, 37.806793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.505775, 38.809898, 37.954372>,  <34.479797, 38.495529, 38.200336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505775, 38.809898, 37.954372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527513, -0.550111, -0.647386,
		-0.847061, -0.282325, -0.450311,
		0.064947, 0.785920, -0.614907,
		34.525261, 39.045673, 37.769901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754215, 38.220837, 37.591133>,  <34.479797, 38.495529, 38.200336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754215, 38.220837, 37.591133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766827, 38.608700, 37.494156>,  <34.774391, 38.841415, 37.435970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766827, 38.608700, 37.494156>,  <34.754215, 38.220837, 37.591133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766827, 38.608700, 37.494156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497449, -0.225605, -0.837644,
		-0.866920, -0.094195, -0.489466,
		0.031524, 0.969654, -0.242438,
		34.776283, 38.899597, 37.421425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728134, 38.198315, 36.861137>,  <34.754215, 38.220837, 37.591133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728134, 38.198315, 36.861137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861618, 38.563896, 36.953514>,  <34.941708, 38.783245, 37.008942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861618, 38.563896, 36.953514>,  <34.728134, 38.198315, 36.861137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861618, 38.563896, 36.953514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540631, 0.015142, -0.841124,
		-0.772242, 0.405544, -0.489057,
		0.333707, 0.913950, 0.230943,
		34.961731, 38.838081, 37.022797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620579, 38.681427, 36.228191>,  <34.728134, 38.198315, 36.861137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620579, 38.681427, 36.228191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909874, 38.845165, 36.450672>,  <35.083450, 38.943409, 36.584160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909874, 38.845165, 36.450672>,  <34.620579, 38.681427, 36.228191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909874, 38.845165, 36.450672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620334, -0.031125, -0.783720,
		-0.303502, 0.911848, -0.276442,
		0.723238, 0.409347, 0.556204,
		35.126846, 38.967968, 36.617535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739899, 39.311874, 35.903572>,  <34.620579, 38.681427, 36.228191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739899, 39.311874, 35.903572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048023, 39.145569, 36.096966>,  <35.232899, 39.045784, 36.213001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048023, 39.145569, 36.096966>,  <34.739899, 39.311874, 35.903572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048023, 39.145569, 36.096966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552350, 0.056184, -0.831716,
		0.318633, 0.907736, 0.272926,
		0.770313, -0.415763, 0.483486,
		35.279118, 39.020840, 36.242012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378517, 39.551823, 35.514919>,  <34.739899, 39.311874, 35.903572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378517, 39.551823, 35.514919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546314, 39.273540, 35.748161>,  <35.646992, 39.106571, 35.888107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546314, 39.273540, 35.748161>,  <35.378517, 39.551823, 35.514919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546314, 39.273540, 35.748161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731562, -0.121212, -0.670913,
		0.537438, 0.708026, 0.458105,
		0.419496, -0.695706, 0.583109,
		35.672165, 39.064827, 35.923096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132858, 39.619396, 35.391621>,  <35.378517, 39.551823, 35.514919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132858, 39.619396, 35.391621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087429, 39.260906, 35.563145>,  <36.060169, 39.045811, 35.666058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087429, 39.260906, 35.563145>,  <36.132858, 39.619396, 35.391621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087429, 39.260906, 35.563145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730511, -0.367858, -0.575355,
		0.673390, 0.247903, 0.696484,
		-0.113575, -0.896228, 0.428808,
		36.053356, 38.992039, 35.691788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799606, 39.453011, 35.443218>,  <36.132858, 39.619396, 35.391621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799606, 39.453011, 35.443218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616219, 39.099358, 35.479248>,  <36.506187, 38.887165, 35.500866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616219, 39.099358, 35.479248>,  <36.799606, 39.453011, 35.443218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616219, 39.099358, 35.479248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771786, -0.446352, -0.452898,
		0.440627, -0.138123, 0.887000,
		-0.458470, -0.884134, 0.090074,
		36.478676, 38.834118, 35.506271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320518, 39.247639, 34.970917>,  <36.799606, 39.453011, 35.443218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320518, 39.247639, 34.970917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664284, 39.411591, 35.093163>,  <37.870544, 39.509964, 35.166512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664284, 39.411591, 35.093163>,  <37.320518, 39.247639, 34.970917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664284, 39.411591, 35.093163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457692, 0.350359, 0.817170,
		0.227869, -0.842166, 0.488704,
		0.859415, 0.409884, 0.305616,
		37.922108, 39.534557, 35.184849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439240, 39.044655, 35.644428>,  <37.320518, 39.247639, 34.970917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439240, 39.044655, 35.644428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680286, 39.361111, 35.602589>,  <37.824917, 39.550987, 35.577484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680286, 39.361111, 35.602589>,  <37.439240, 39.044655, 35.644428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680286, 39.361111, 35.602589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317614, 0.358013, 0.878036,
		0.732101, -0.495900, 0.467024,
		0.602619, 0.791144, -0.104597,
		37.861073, 39.598454, 35.571209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961651, 39.026588, 36.081863>,  <37.439240, 39.044655, 35.644428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961651, 39.026588, 36.081863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952732, 39.425732, 36.057266>,  <37.947380, 39.665218, 36.042507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952732, 39.425732, 36.057266>,  <37.961651, 39.026588, 36.081863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952732, 39.425732, 36.057266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051779, 0.060278, 0.996838,
		0.998410, 0.025408, 0.050324,
		-0.022294, 0.997858, -0.061498,
		37.946045, 39.725090, 36.038818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460178, 39.376095, 36.583214>,  <37.961651, 39.026588, 36.081863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460178, 39.376095, 36.583214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210163, 39.675591, 36.494926>,  <38.060154, 39.855289, 36.441956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210163, 39.675591, 36.494926>,  <38.460178, 39.376095, 36.583214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210163, 39.675591, 36.494926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004709, 0.286368, 0.958108,
		0.780583, 0.597810, -0.182516,
		-0.625034, 0.748743, -0.220719,
		38.022652, 39.900215, 36.428711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711639, 39.901989, 36.936878>,  <38.460178, 39.376095, 36.583214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711639, 39.901989, 36.936878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356125, 40.061180, 36.845947>,  <38.142818, 40.156696, 36.791389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356125, 40.061180, 36.845947>,  <38.711639, 39.901989, 36.936878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356125, 40.061180, 36.845947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006624, 0.484783, 0.874609,
		0.458279, 0.778845, -0.428231,
		-0.888784, 0.397978, -0.227325,
		38.089489, 40.180573, 36.777748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782257, 40.584457, 37.221409>,  <38.711639, 39.901989, 36.936878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782257, 40.584457, 37.221409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390804, 40.506702, 37.194576>,  <38.155933, 40.460049, 37.178478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390804, 40.506702, 37.194576>,  <38.782257, 40.584457, 37.221409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390804, 40.506702, 37.194576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144553, 0.418272, 0.896746,
		-0.146261, 0.887277, -0.437433,
		-0.978628, -0.194391, -0.067082,
		38.097218, 40.448383, 37.174450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410332, 41.162788, 37.306385>,  <38.782257, 40.584457, 37.221409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410332, 41.162788, 37.306385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.111874, 40.902176, 37.361195>,  <37.932796, 40.745808, 37.394081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.111874, 40.902176, 37.361195>,  <38.410332, 41.162788, 37.306385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111874, 40.902176, 37.361195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382946, 0.588341, 0.712185,
		-0.544626, 0.478922, -0.688489,
		-0.746147, -0.651528, 0.137024,
		37.888031, 40.706718, 37.402302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706585, 41.522015, 37.426659>,  <38.410332, 41.162788, 37.306385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706585, 41.522015, 37.426659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657803, 41.152111, 37.570847>,  <37.628532, 40.930168, 37.657360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657803, 41.152111, 37.570847>,  <37.706585, 41.522015, 37.426659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657803, 41.152111, 37.570847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423061, 0.376974, 0.823960,
		-0.897856, -0.052014, -0.437205,
		-0.121958, -0.924762, 0.360474,
		37.621216, 40.874683, 37.678989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904133, 41.454704, 37.535900>,  <37.706585, 41.522015, 37.426659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904133, 41.454704, 37.535900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063454, 41.164062, 37.759827>,  <37.159046, 40.989677, 37.894180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063454, 41.164062, 37.759827>,  <36.904133, 41.454704, 37.535900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063454, 41.164062, 37.759827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669944, 0.186419, 0.718626,
		-0.626520, -0.661277, -0.412535,
		0.398307, -0.726609, 0.559814,
		37.182945, 40.946079, 37.927773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297981, 40.987762, 37.803856>,  <36.904133, 41.454704, 37.535900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297981, 40.987762, 37.803856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590622, 40.881287, 38.054901>,  <36.766205, 40.817402, 38.205528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590622, 40.881287, 38.054901>,  <36.297981, 40.987762, 37.803856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590622, 40.881287, 38.054901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660480, -0.048674, 0.749265,
		-0.168895, -0.962692, -0.211421,
		0.731602, -0.266186, 0.627618,
		36.810104, 40.801430, 38.243187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056103, 40.306862, 38.106976>,  <36.297981, 40.987762, 37.803856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056103, 40.306862, 38.106976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322845, 40.491016, 38.341358>,  <36.482891, 40.601509, 38.481987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322845, 40.491016, 38.341358>,  <36.056103, 40.306862, 38.106976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322845, 40.491016, 38.341358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662387, 0.005994, 0.749138,
		0.341381, -0.887698, 0.308951,
		0.666860, 0.460387, 0.585953,
		36.522903, 40.629131, 38.517143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982372, 40.130585, 38.773769>,  <36.056103, 40.306862, 38.106976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982372, 40.130585, 38.773769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227879, 40.433559, 38.862831>,  <36.375183, 40.615345, 38.916267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227879, 40.433559, 38.862831>,  <35.982372, 40.130585, 38.773769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227879, 40.433559, 38.862831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372219, 0.028914, 0.927694,
		0.696235, -0.652264, 0.299680,
		0.613767, 0.757440, 0.222654,
		36.412010, 40.660793, 38.929626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428829, 39.968227, 39.243221>,  <35.982372, 40.130585, 38.773769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428829, 39.968227, 39.243221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397915, 40.365501, 39.278126>,  <36.379368, 40.603867, 39.299068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397915, 40.365501, 39.278126>,  <36.428829, 39.968227, 39.243221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397915, 40.365501, 39.278126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257554, -0.104443, 0.960603,
		0.963168, 0.051763, 0.263870,
		-0.077283, 0.993183, 0.087265,
		36.374729, 40.663456, 39.304306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709377, 40.103222, 39.929726>,  <36.428829, 39.968227, 39.243221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709377, 40.103222, 39.929726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463474, 40.407917, 39.847919>,  <36.315933, 40.590736, 39.798836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463474, 40.407917, 39.847919>,  <36.709377, 40.103222, 39.929726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463474, 40.407917, 39.847919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363187, -0.043223, 0.930713,
		0.700122, 0.646438, 0.303226,
		-0.614755, 0.761741, -0.204517,
		36.279049, 40.636440, 39.786564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774033, 40.557030, 40.520447>,  <36.709377, 40.103222, 39.929726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774033, 40.557030, 40.520447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436852, 40.710632, 40.369728>,  <36.234543, 40.802795, 40.279297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436852, 40.710632, 40.369728>,  <36.774033, 40.557030, 40.520447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436852, 40.710632, 40.369728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301430, 0.243007, 0.922002,
		0.445617, 0.890779, -0.089092,
		-0.842950, 0.384005, -0.376796,
		36.183968, 40.825832, 40.256691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680397, 41.170944, 40.917774>,  <36.774033, 40.557030, 40.520447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680397, 41.170944, 40.917774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324024, 41.093197, 40.753601>,  <36.110199, 41.046547, 40.655098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324024, 41.093197, 40.753601>,  <36.680397, 41.170944, 40.917774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324024, 41.093197, 40.753601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450949, 0.271829, 0.850149,
		-0.053675, 0.942512, -0.329833,
		-0.890934, -0.194370, -0.410435,
		36.056744, 41.034885, 40.630470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312054, 41.791088, 41.059338>,  <36.680397, 41.170944, 40.917774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312054, 41.791088, 41.059338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017014, 41.535168, 40.972996>,  <35.839989, 41.381615, 40.921192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017014, 41.535168, 40.972996>,  <36.312054, 41.791088, 41.059338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017014, 41.535168, 40.972996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549150, 0.382389, 0.743110,
		-0.392906, 0.666655, -0.633400,
		-0.737603, -0.639805, -0.215851,
		35.795734, 41.343227, 40.908241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574028, 42.153160, 40.982342>,  <36.312054, 41.791088, 41.059338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574028, 42.153160, 40.982342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511906, 41.767277, 41.067398>,  <35.474632, 41.535748, 41.118431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.511906, 41.767277, 41.067398>,  <35.574028, 42.153160, 40.982342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511906, 41.767277, 41.067398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656944, 0.261618, 0.707093,
		-0.737769, -0.029877, -0.674391,
		-0.155307, -0.964709, 0.212641,
		35.465313, 41.477863, 41.131191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.864147, 42.109013, 40.934471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.966846, 41.787178, 41.148659>,  <35.028465, 41.594078, 41.277172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.966846, 41.787178, 41.148659>,  <34.864147, 42.109013, 40.934471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966846, 41.787178, 41.148659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609527, 0.295167, 0.735767,
		-0.750040, -0.515286, -0.414634,
		0.256744, -0.804585, 0.535467,
		35.043869, 41.545803, 41.309299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303604, 41.734722, 41.094662>,  <34.864147, 42.109013, 40.934471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303604, 41.734722, 41.094662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.579464, 41.637489, 41.367512>,  <34.744980, 41.579151, 41.531223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.579464, 41.637489, 41.367512>,  <34.303604, 41.734722, 41.094662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579464, 41.637489, 41.367512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599763, 0.336130, 0.726155,
		-0.405798, -0.909906, 0.086020,
		0.689646, -0.243081, 0.682129,
		34.786358, 41.564564, 41.572151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973610, 41.351387, 41.577141>,  <34.303604, 41.734722, 41.094662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973610, 41.351387, 41.577141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287056, 41.510029, 41.768410>,  <34.475124, 41.605213, 41.883171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287056, 41.510029, 41.768410>,  <33.973610, 41.351387, 41.577141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287056, 41.510029, 41.768410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618942, 0.432235, 0.655808,
		0.053415, -0.809863, 0.584182,
		0.783619, 0.396605, 0.478171,
		34.522141, 41.629009, 41.911861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752007, 41.350693, 42.261189>,  <33.973610, 41.351387, 41.577141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752007, 41.350693, 42.261189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088711, 41.563717, 42.296558>,  <34.290733, 41.691532, 42.317780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088711, 41.563717, 42.296558>,  <33.752007, 41.350693, 42.261189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088711, 41.563717, 42.296558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407471, 0.519326, 0.751178,
		0.354127, -0.668342, 0.654151,
		0.841761, 0.532560, 0.088423,
		34.341240, 41.723484, 42.323086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986858, 41.259789, 42.952408>,  <33.752007, 41.350693, 42.261189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986858, 41.259789, 42.952408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144009, 41.594036, 42.798840>,  <34.238300, 41.794582, 42.706699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144009, 41.594036, 42.798840>,  <33.986858, 41.259789, 42.952408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144009, 41.594036, 42.798840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423171, 0.534941, 0.731276,
		0.816440, -0.124836, 0.563774,
		0.392876, 0.835616, -0.383921,
		34.261871, 41.844719, 42.683662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376389, 41.501720, 43.505058>,  <33.986858, 41.259789, 42.952408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376389, 41.501720, 43.505058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325546, 41.818245, 43.265835>,  <34.295040, 42.008160, 43.122299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325546, 41.818245, 43.265835>,  <34.376389, 41.501720, 43.505058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325546, 41.818245, 43.265835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276056, 0.550904, 0.787590,
		0.952699, 0.265208, 0.148420,
		-0.127110, 0.791308, -0.598059,
		34.287415, 42.055637, 43.086418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750530, 42.056652, 43.815861>,  <34.376389, 41.501720, 43.505058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750530, 42.056652, 43.815861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474865, 42.230484, 43.583931>,  <34.309467, 42.334782, 43.444775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474865, 42.230484, 43.583931>,  <34.750530, 42.056652, 43.815861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474865, 42.230484, 43.583931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259970, 0.598631, 0.757665,
		0.676363, 0.672893, -0.299579,
		-0.689165, 0.434575, -0.579825,
		34.268116, 42.360855, 43.409985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719864, 42.663662, 44.080902>,  <34.750530, 42.056652, 43.815861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719864, 42.663662, 44.080902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385731, 42.714828, 43.867039>,  <34.185249, 42.745529, 43.738720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385731, 42.714828, 43.867039>,  <34.719864, 42.663662, 44.080902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385731, 42.714828, 43.867039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353629, 0.619596, 0.700748,
		0.420909, 0.774427, -0.472332,
		-0.835333, 0.127921, -0.534654,
		34.135132, 42.753204, 43.706642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529625, 43.437611, 43.878864>,  <34.719864, 42.663662, 44.080902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529625, 43.437611, 43.878864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.192139, 43.222935, 43.882931>,  <33.989647, 43.094128, 43.885368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.192139, 43.222935, 43.882931>,  <34.529625, 43.437611, 43.878864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192139, 43.222935, 43.882931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305958, 0.496370, 0.812408,
		-0.441059, 0.682332, -0.583001,
		-0.843716, -0.536694, 0.010163,
		33.939022, 43.061928, 43.885979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099342, 43.919224, 44.122528>,  <34.529625, 43.437611, 43.878864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099342, 43.919224, 44.122528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900810, 43.573433, 44.154358>,  <33.781689, 43.365959, 44.173454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900810, 43.573433, 44.154358>,  <34.099342, 43.919224, 44.122528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900810, 43.573433, 44.154358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444529, 0.331810, 0.832043,
		-0.745686, 0.377598, -0.548974,
		-0.496333, -0.864478, 0.079573,
		33.751911, 43.314091, 44.178230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415863, 44.112621, 44.248676>,  <34.099342, 43.919224, 44.122528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415863, 44.112621, 44.248676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449776, 43.738602, 44.386372>,  <33.470123, 43.514191, 44.468990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449776, 43.738602, 44.386372>,  <33.415863, 44.112621, 44.248676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449776, 43.738602, 44.386372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518503, 0.253621, 0.816597,
		-0.850862, -0.247724, -0.463321,
		0.084783, -0.935045, 0.344242,
		33.475212, 43.458088, 44.489643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721970, 44.040100, 44.499088>,  <33.415863, 44.112621, 44.248676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721970, 44.040100, 44.499088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.977440, 43.777031, 44.658871>,  <33.130722, 43.619190, 44.754742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.977440, 43.777031, 44.658871>,  <32.721970, 44.040100, 44.499088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977440, 43.777031, 44.658871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179560, 0.377416, 0.908468,
		-0.748235, -0.651941, 0.122955,
		0.638673, -0.657670, 0.399458,
		33.169041, 43.579731, 44.778709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330902, 43.606857, 44.898975>,  <32.721970, 44.040100, 44.499088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330902, 43.606857, 44.898975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.712280, 43.595379, 45.019054>,  <32.941109, 43.588490, 45.091103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.712280, 43.595379, 45.019054>,  <32.330902, 43.606857, 44.898975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712280, 43.595379, 45.019054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264672, 0.397498, 0.878603,
		-0.144545, -0.917154, 0.371397,
		0.953444, -0.028700, 0.300202,
		32.998314, 43.586769, 45.109116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307514, 43.321926, 45.483154>,  <32.330902, 43.606857, 44.898975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307514, 43.321926, 45.483154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668034, 43.492722, 45.512371>,  <32.884346, 43.595200, 45.529903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668034, 43.492722, 45.512371>,  <32.307514, 43.321926, 45.483154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668034, 43.492722, 45.512371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227474, 0.323009, 0.918652,
		0.368661, -0.844598, 0.388257,
		0.901302, 0.426989, 0.073043,
		32.938423, 43.620819, 45.534283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570847, 43.224625, 46.213829>,  <32.307514, 43.321926, 45.483154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570847, 43.224625, 46.213829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770832, 43.530941, 46.052040>,  <32.890823, 43.714733, 45.954967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770832, 43.530941, 46.052040>,  <32.570847, 43.224625, 46.213829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770832, 43.530941, 46.052040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008542, 0.462650, 0.886500,
		0.866006, -0.446669, 0.224765,
		0.499960, 0.765795, -0.404473,
		32.920818, 43.760681, 45.930698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003113, 43.362244, 46.720940>,  <32.570847, 43.224625, 46.213829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003113, 43.362244, 46.720940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958443, 43.687126, 46.491905>,  <32.931641, 43.882053, 46.354485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958443, 43.687126, 46.491905>,  <33.003113, 43.362244, 46.720940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958443, 43.687126, 46.491905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021761, 0.574053, 0.818529,
		0.993507, 0.103869, -0.046433,
		-0.111674, 0.812204, -0.572585,
		32.924942, 43.930786, 46.320129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530220, 43.891773, 47.050247>,  <33.003113, 43.362244, 46.720940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530220, 43.891773, 47.050247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249035, 44.087872, 46.844139>,  <33.080322, 44.205532, 46.720474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249035, 44.087872, 46.844139>,  <33.530220, 43.891773, 47.050247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249035, 44.087872, 46.844139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158542, 0.598236, 0.785480,
		0.693332, 0.633854, -0.342812,
		-0.702962, 0.490248, -0.515269,
		33.038147, 44.234947, 46.689560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717693, 44.628815, 47.151394>,  <33.530220, 43.891773, 47.050247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717693, 44.628815, 47.151394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.348820, 44.672394, 47.002964>,  <33.127495, 44.698540, 46.913906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.348820, 44.672394, 47.002964>,  <33.717693, 44.628815, 47.151394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348820, 44.672394, 47.002964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201705, 0.683171, 0.701849,
		0.329975, 0.722085, -0.608037,
		-0.922189, 0.108948, -0.371077,
		33.072163, 44.705078, 46.891640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553856, 45.329620, 47.217834>,  <33.717693, 44.628815, 47.151394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553856, 45.329620, 47.217834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200485, 45.146919, 47.175999>,  <32.988464, 45.037300, 47.150898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200485, 45.146919, 47.175999>,  <33.553856, 45.329620, 47.217834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200485, 45.146919, 47.175999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352878, 0.501668, 0.789814,
		-0.308282, 0.734648, -0.604363,
		-0.883425, -0.456752, -0.104586,
		32.935459, 45.009895, 47.144623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165863, 45.850788, 47.298431>,  <33.553856, 45.329620, 47.217834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165863, 45.850788, 47.298431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935299, 45.530972, 47.365940>,  <32.796959, 45.339081, 47.406445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935299, 45.530972, 47.365940>,  <33.165863, 45.850788, 47.298431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935299, 45.530972, 47.365940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412190, 0.462822, 0.784790,
		-0.705582, 0.382797, -0.596339,
		-0.576414, -0.799539, 0.168774,
		32.762375, 45.291111, 47.416573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411327, 46.037861, 47.344872>,  <33.165863, 45.850788, 47.298431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411327, 46.037861, 47.344872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442036, 45.685944, 47.532516>,  <32.460461, 45.474792, 47.645103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442036, 45.685944, 47.532516>,  <32.411327, 46.037861, 47.344872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442036, 45.685944, 47.532516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508129, 0.370290, 0.777618,
		-0.857853, -0.298071, -0.418620,
		0.076774, -0.879795, 0.469113,
		32.465069, 45.422005, 47.673252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764656, 45.927235, 47.522152>,  <32.411327, 46.037861, 47.344872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764656, 45.927235, 47.522152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.992413, 45.710220, 47.769199>,  <32.129066, 45.580013, 47.917427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.992413, 45.710220, 47.769199>,  <31.764656, 45.927235, 47.522152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992413, 45.710220, 47.769199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529862, 0.332206, 0.780312,
		-0.628523, -0.771553, -0.098314,
		0.569391, -0.542537, 0.617615,
		32.163231, 45.547459, 47.954483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354046, 45.411804, 47.994118>,  <31.764656, 45.927235, 47.522152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354046, 45.411804, 47.994118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.705334, 45.473774, 48.175106>,  <31.916107, 45.510956, 48.283699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.705334, 45.473774, 48.175106>,  <31.354046, 45.411804, 47.994118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705334, 45.473774, 48.175106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472054, 0.432638, 0.768108,
		-0.076760, -0.888158, 0.453082,
		0.878221, 0.154919, 0.452468,
		31.968800, 45.520248, 48.310844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618834, 45.167233, 48.161209>,  <31.354046, 45.411804, 47.994118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618834, 45.167233, 48.161209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.361189, 44.895802, 48.302429>,  <30.206602, 44.732941, 48.387161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.361189, 44.895802, 48.302429>,  <30.618834, 45.167233, 48.161209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361189, 44.895802, 48.302429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156757, -0.568851, -0.807364,
		0.748697, -0.464689, 0.472776,
		-0.644111, -0.678582, 0.353054,
		30.167955, 44.692226, 48.408344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916059, 44.454117, 48.148323>,  <30.618834, 45.167233, 48.161209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916059, 44.454117, 48.148323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516832, 44.430687, 48.140053>,  <30.277296, 44.416630, 48.135090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516832, 44.430687, 48.140053>,  <30.916059, 44.454117, 48.148323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516832, 44.430687, 48.140053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055234, -0.684587, -0.726835,
		0.028418, -0.726574, 0.686500,
		-0.998069, -0.058573, -0.020677,
		30.217411, 44.413116, 48.133850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710838, 43.840473, 48.341110>,  <30.916059, 44.454117, 48.148323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710838, 43.840473, 48.341110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436104, 43.997234, 48.096268>,  <30.271263, 44.091290, 47.949364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436104, 43.997234, 48.096268>,  <30.710838, 43.840473, 48.341110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436104, 43.997234, 48.096268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000345, -0.842352, -0.538927,
		-0.726814, -0.369942, 0.578692,
		-0.686834, 0.391899, -0.612105,
		30.230053, 44.114803, 47.912636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183058, 43.279976, 48.213902>,  <30.710838, 43.840473, 48.341110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183058, 43.279976, 48.213902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.121485, 43.558529, 47.933514>,  <30.084541, 43.725662, 47.765282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.121485, 43.558529, 47.933514>,  <30.183058, 43.279976, 48.213902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121485, 43.558529, 47.933514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089754, -0.716345, -0.691949,
		-0.983996, -0.043599, 0.172772,
		-0.153933, 0.696382, -0.700968,
		30.075304, 43.767445, 47.723225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442020, 43.203056, 47.932823>,  <30.183058, 43.279976, 48.213902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442020, 43.203056, 47.932823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.640232, 43.371510, 47.628956>,  <29.759159, 43.472580, 47.446636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.640232, 43.371510, 47.628956>,  <29.442020, 43.203056, 47.932823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640232, 43.371510, 47.628956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141915, -0.823592, -0.549141,
		-0.856919, 0.379924, -0.348349,
		0.495529, 0.421134, -0.759669,
		29.788891, 43.497849, 47.401054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058649, 42.963669, 47.319374>,  <29.442020, 43.203056, 47.932823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058649, 42.963669, 47.319374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.422869, 43.082874, 47.204773>,  <29.641401, 43.154396, 47.136013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.422869, 43.082874, 47.204773>,  <29.058649, 42.963669, 47.319374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422869, 43.082874, 47.204773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062675, -0.784554, -0.616884,
		-0.408619, 0.543747, -0.733055,
		0.910551, 0.298015, -0.286505,
		29.696033, 43.172279, 47.118820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062571, 42.982922, 46.513367>,  <29.058649, 42.963669, 47.319374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062571, 42.982922, 46.513367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.443127, 42.976929, 46.636414>,  <29.671461, 42.973331, 46.710243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.443127, 42.976929, 46.636414>,  <29.062571, 42.982922, 46.513367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443127, 42.976929, 46.636414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255297, -0.520322, -0.814916,
		0.172271, 0.853839, -0.491205,
		0.951392, -0.014984, 0.307618,
		29.728544, 42.972435, 46.728699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462521, 43.113850, 45.919201>,  <29.062571, 42.982922, 46.513367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462521, 43.113850, 45.919201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757601, 42.992573, 46.160488>,  <29.934649, 42.919807, 46.305260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757601, 42.992573, 46.160488>,  <29.462521, 43.113850, 45.919201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757601, 42.992573, 46.160488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509037, -0.337131, -0.791975,
		0.443486, 0.891300, -0.094364,
		0.737700, -0.303195, 0.603218,
		29.978910, 42.901615, 46.341454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128756, 43.498402, 45.723164>,  <29.462521, 43.113850, 45.919201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128756, 43.498402, 45.723164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.203838, 43.145435, 45.895721>,  <30.248888, 42.933655, 45.999256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.203838, 43.145435, 45.895721>,  <30.128756, 43.498402, 45.723164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203838, 43.145435, 45.895721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614784, -0.236983, -0.752249,
		0.766033, 0.406419, 0.498014,
		0.187707, -0.882419, 0.431397,
		30.260151, 42.880711, 46.025139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702578, 43.336910, 45.397545>,  <30.128756, 43.498402, 45.723164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702578, 43.336910, 45.397545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.666269, 42.989006, 45.591564>,  <30.644485, 42.780262, 45.707977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.666269, 42.989006, 45.591564>,  <30.702578, 43.336910, 45.397545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666269, 42.989006, 45.591564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366988, -0.481994, -0.795614,
		0.925786, 0.105790, 0.362943,
		-0.090769, -0.869765, 0.485047,
		30.639038, 42.728077, 45.737080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366489, 43.115345, 45.419739>,  <30.702578, 43.336910, 45.397545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366489, 43.115345, 45.419739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.143295, 42.785191, 45.454121>,  <31.009378, 42.587097, 45.474751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.143295, 42.785191, 45.454121>,  <31.366489, 43.115345, 45.419739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143295, 42.785191, 45.454121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455779, -0.391372, -0.799433,
		0.693482, -0.406897, 0.594574,
		-0.557987, -0.825386, 0.085954,
		30.975899, 42.537575, 45.479908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826117, 42.491505, 45.427444>,  <31.366489, 43.115345, 45.419739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826117, 42.491505, 45.427444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.462929, 42.359726, 45.323860>,  <31.245016, 42.280659, 45.261711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.462929, 42.359726, 45.323860>,  <31.826117, 42.491505, 45.427444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462929, 42.359726, 45.323860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348960, -0.252324, -0.902529,
		0.231991, -0.909835, 0.344066,
		-0.907969, -0.329444, -0.258959,
		31.190538, 42.260891, 45.246174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985710, 41.917717, 44.999702>,  <31.826117, 42.491505, 45.427444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985710, 41.917717, 44.999702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.606447, 42.014378, 44.917141>,  <31.378889, 42.072372, 44.867603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.606447, 42.014378, 44.917141>,  <31.985710, 41.917717, 44.999702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606447, 42.014378, 44.917141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159476, -0.199981, -0.966734,
		-0.274889, -0.949533, 0.151075,
		-0.948158, 0.241652, -0.206400,
		31.322001, 42.086872, 44.855221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884892, 41.412533, 44.502876>,  <31.985710, 41.917717, 44.999702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884892, 41.412533, 44.502876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593056, 41.682415, 44.458210>,  <31.417953, 41.844345, 44.431412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593056, 41.682415, 44.458210>,  <31.884892, 41.412533, 44.502876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593056, 41.682415, 44.458210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175064, 0.026422, -0.984203,
		-0.661098, -0.737613, -0.137394,
		-0.729591, 0.674707, -0.111662,
		31.374178, 41.884827, 44.424713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512091, 41.194813, 43.926571>,  <31.884892, 41.412533, 44.502876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512091, 41.194813, 43.926571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.468657, 41.590458, 43.966290>,  <31.442596, 41.827847, 43.990120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.468657, 41.590458, 43.966290>,  <31.512091, 41.194813, 43.926571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468657, 41.590458, 43.966290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025454, 0.102620, -0.994395,
		-0.993761, -0.105449, -0.036320,
		-0.108585, 0.989116, 0.099296,
		31.436081, 41.887192, 43.996078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944429, 41.305859, 43.442501>,  <31.512091, 41.194813, 43.926571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944429, 41.305859, 43.442501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.117130, 41.663605, 43.489323>,  <31.220751, 41.878254, 43.517414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.117130, 41.663605, 43.489323>,  <30.944429, 41.305859, 43.442501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117130, 41.663605, 43.489323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021928, 0.140138, -0.989889,
		-0.901726, 0.424819, 0.080116,
		0.431751, 0.894366, 0.117051,
		31.246655, 41.931915, 43.524437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614254, 41.842991, 43.019848>,  <30.944429, 41.305859, 43.442501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614254, 41.842991, 43.019848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955566, 42.028355, 43.115482>,  <31.160355, 42.139572, 43.172863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955566, 42.028355, 43.115482>,  <30.614254, 41.842991, 43.019848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955566, 42.028355, 43.115482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088190, 0.323651, -0.942058,
		-0.513938, 0.824926, 0.235297,
		0.853282, 0.463409, 0.239086,
		31.211552, 42.167377, 43.187210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621382, 42.507530, 42.698196>,  <30.614254, 41.842991, 43.019848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621382, 42.507530, 42.698196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003277, 42.398991, 42.746937>,  <31.232414, 42.333866, 42.776180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003277, 42.398991, 42.746937>,  <30.621382, 42.507530, 42.698196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003277, 42.398991, 42.746937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208538, 0.318498, -0.924700,
		0.212104, 0.908257, 0.360668,
		0.954738, -0.271345, 0.121851,
		31.289698, 42.317589, 42.783493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888197, 42.882740, 42.202942>,  <30.621382, 42.507530, 42.698196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888197, 42.882740, 42.202942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193005, 42.648338, 42.313156>,  <31.375889, 42.507698, 42.379284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193005, 42.648338, 42.313156>,  <30.888197, 42.882740, 42.202942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193005, 42.648338, 42.313156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411411, 0.109529, -0.904845,
		0.500065, 0.802870, 0.324553,
		0.762021, -0.586006, 0.275538,
		31.421612, 42.472538, 42.395817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457895, 43.176060, 41.879635>,  <30.888197, 42.882740, 42.202942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457895, 43.176060, 41.879635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557138, 42.805134, 41.991726>,  <31.616684, 42.582577, 42.058979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557138, 42.805134, 41.991726>,  <31.457895, 43.176060, 41.879635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557138, 42.805134, 41.991726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552088, -0.102345, -0.827481,
		0.796016, 0.360014, 0.486567,
		0.248107, -0.927316, 0.280227,
		31.631571, 42.526939, 42.075794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164906, 43.204144, 41.791504>,  <31.457895, 43.176060, 41.879635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164906, 43.204144, 41.791504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027908, 42.828552, 41.778694>,  <31.945709, 42.603199, 41.771008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027908, 42.828552, 41.778694>,  <32.164906, 43.204144, 41.791504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027908, 42.828552, 41.778694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469438, -0.141507, -0.871553,
		0.813835, -0.313532, 0.489255,
		-0.342493, -0.938975, -0.032021,
		31.925159, 42.546860, 41.769089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.370625, 41.772774, 29.451029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018471, 41.900345, 29.310627>,  <44.807178, 41.976887, 29.226385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018471, 41.900345, 29.310627>,  <45.370625, 41.772774, 29.451029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018471, 41.900345, 29.310627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398197, -0.899097, 0.181834,
		-0.257597, 0.299854, 0.918549,
		-0.880388, 0.318924, -0.351006,
		44.754353, 41.996021, 29.205326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777412, 41.653893, 30.013630>,  <45.370625, 41.772774, 29.451029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777412, 41.653893, 30.013630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668545, 41.656765, 29.628742>,  <44.603222, 41.658489, 29.397810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668545, 41.656765, 29.628742>,  <44.777412, 41.653893, 30.013630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668545, 41.656765, 29.628742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451990, -0.883743, 0.121252,
		-0.849486, 0.467917, 0.243779,
		-0.272174, 0.007184, -0.962221,
		44.586891, 41.658920, 29.340076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016880, 41.416637, 30.011351>,  <44.777412, 41.653893, 30.013630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016880, 41.416637, 30.011351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.140594, 41.354099, 29.636139>,  <44.214821, 41.316578, 29.411013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.140594, 41.354099, 29.636139>,  <44.016880, 41.416637, 30.011351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140594, 41.354099, 29.636139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439827, -0.898070, 0.004669,
		-0.843147, 0.411127, -0.346522,
		0.309282, -0.156346, -0.938030,
		44.233379, 41.307194, 29.354731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441666, 41.029984, 29.695547>,  <44.016880, 41.416637, 30.011351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441666, 41.029984, 29.695547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769859, 40.969200, 29.475105>,  <43.966774, 40.932732, 29.342840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769859, 40.969200, 29.475105>,  <43.441666, 41.029984, 29.695547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769859, 40.969200, 29.475105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157432, -0.986810, 0.037708,
		-0.549565, 0.055822, -0.833584,
		0.820484, -0.151956, -0.551104,
		44.016006, 40.923615, 29.309774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200718, 40.635994, 29.082764>,  <43.441666, 41.029984, 29.695547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200718, 40.635994, 29.082764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591671, 40.567509, 29.132402>,  <43.826244, 40.526417, 29.162186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591671, 40.567509, 29.132402>,  <43.200718, 40.635994, 29.082764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591671, 40.567509, 29.132402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175077, -0.984335, 0.020826,
		0.118588, -0.042082, -0.992052,
		0.977387, -0.171215, 0.124097,
		43.884888, 40.516144, 29.169632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248646, 39.991085, 28.943811>,  <43.200718, 40.635994, 29.082764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248646, 39.991085, 28.943811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.579849, 40.071373, 29.153234>,  <43.778572, 40.119545, 29.278889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.579849, 40.071373, 29.153234>,  <43.248646, 39.991085, 28.943811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579849, 40.071373, 29.153234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053669, -0.901072, 0.430335,
		0.558143, -0.384419, -0.735322,
		0.828008, 0.200724, 0.523558,
		43.828251, 40.131592, 29.310303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472240, 39.359055, 29.185167>,  <43.248646, 39.991085, 28.943811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472240, 39.359055, 29.185167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690006, 39.602528, 29.416033>,  <43.820667, 39.748611, 29.554552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690006, 39.602528, 29.416033>,  <43.472240, 39.359055, 29.185167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690006, 39.602528, 29.416033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098688, -0.729768, 0.676535,
		0.832989, -0.311358, -0.457368,
		0.544416, 0.608683, 0.577162,
		43.853333, 39.785133, 29.589182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140491, 38.982014, 29.321655>,  <43.472240, 39.359055, 29.185167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140491, 38.982014, 29.321655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.035343, 39.252857, 29.596586>,  <43.972256, 39.415363, 29.761545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.035343, 39.252857, 29.596586>,  <44.140491, 38.982014, 29.321655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035343, 39.252857, 29.596586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012635, -0.714736, 0.699280,
		0.964750, 0.175132, 0.196436,
		-0.262866, 0.677112, 0.687328,
		43.956482, 39.455990, 29.802784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586479, 38.833828, 29.907888>,  <44.140491, 38.982014, 29.321655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586479, 38.833828, 29.907888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310421, 39.080208, 30.059843>,  <44.144787, 39.228035, 30.151016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310421, 39.080208, 30.059843>,  <44.586479, 38.833828, 29.907888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310421, 39.080208, 30.059843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021388, -0.542075, 0.840058,
		0.723359, 0.571633, 0.387282,
		-0.690141, 0.615946, 0.379889,
		44.103378, 39.264992, 30.173809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785725, 38.828892, 30.506842>,  <44.586479, 38.833828, 29.907888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785725, 38.828892, 30.506842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.419006, 38.985252, 30.539530>,  <44.198975, 39.079071, 30.559143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.419006, 38.985252, 30.539530>,  <44.785725, 38.828892, 30.506842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419006, 38.985252, 30.539530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121577, -0.468115, 0.875264,
		0.380400, 0.792503, 0.476691,
		-0.916796, 0.390905, 0.081721,
		44.143967, 39.102524, 30.564047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690018, 39.167183, 31.165665>,  <44.785725, 38.828892, 30.506842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690018, 39.167183, 31.165665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320805, 39.079304, 31.039339>,  <44.099277, 39.026577, 30.963545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320805, 39.079304, 31.039339>,  <44.690018, 39.167183, 31.165665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320805, 39.079304, 31.039339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163650, -0.518701, 0.839147,
		-0.348173, 0.826246, 0.442825,
		-0.923035, -0.219700, -0.315812,
		44.043896, 39.013393, 30.944595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300346, 39.264606, 31.787901>,  <44.690018, 39.167183, 31.165665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300346, 39.264606, 31.787901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082001, 39.038643, 31.540384>,  <43.950993, 38.903065, 31.391874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082001, 39.038643, 31.540384>,  <44.300346, 39.264606, 31.787901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082001, 39.038643, 31.540384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308799, -0.550903, 0.775338,
		-0.778894, 0.614312, 0.126274,
		-0.545864, -0.564913, -0.618794,
		43.918243, 38.869167, 31.354746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805870, 39.119576, 32.201298>,  <44.300346, 39.264606, 31.787901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805870, 39.119576, 32.201298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756275, 38.835289, 31.924311>,  <43.726521, 38.664719, 31.758118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756275, 38.835289, 31.924311>,  <43.805870, 39.119576, 32.201298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756275, 38.835289, 31.924311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376043, -0.612147, 0.695606,
		-0.918270, 0.346641, -0.191363,
		-0.123984, -0.710715, -0.692468,
		43.719082, 38.622074, 31.716570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157936, 38.753304, 32.357304>,  <43.805870, 39.119576, 32.201298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157936, 38.753304, 32.357304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386845, 38.502491, 32.145897>,  <43.524189, 38.352001, 32.019054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386845, 38.502491, 32.145897>,  <43.157936, 38.753304, 32.357304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386845, 38.502491, 32.145897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211352, -0.735486, 0.643731,
		-0.792359, -0.256687, -0.553424,
		0.572273, -0.627034, -0.528518,
		43.558529, 38.314381, 31.987341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654884, 38.262428, 32.322750>,  <43.157936, 38.753304, 32.357304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654884, 38.262428, 32.322750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020309, 38.117859, 32.248150>,  <43.239563, 38.031116, 32.203392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020309, 38.117859, 32.248150>,  <42.654884, 38.262428, 32.322750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020309, 38.117859, 32.248150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184974, -0.777619, 0.600911,
		-0.362208, -0.514471, -0.777255,
		0.913559, -0.361427, -0.186496,
		43.294376, 38.009430, 32.192200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567886, 37.600986, 32.162933>,  <42.654884, 38.262428, 32.322750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567886, 37.600986, 32.162933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935001, 37.640171, 32.316849>,  <43.155270, 37.663681, 32.409199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935001, 37.640171, 32.316849>,  <42.567886, 37.600986, 32.162933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935001, 37.640171, 32.316849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129565, -0.842156, 0.523437,
		0.375329, -0.530261, -0.760231,
		0.917791, 0.097961, 0.384789,
		43.210339, 37.669559, 32.432285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872402, 36.944393, 32.160370>,  <42.567886, 37.600986, 32.162933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872402, 36.944393, 32.160370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.096367, 37.150398, 32.419991>,  <43.230743, 37.274002, 32.575764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.096367, 37.150398, 32.419991>,  <42.872402, 36.944393, 32.160370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096367, 37.150398, 32.419991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048130, -0.802244, 0.595053,
		0.827156, -0.301936, -0.473970,
		0.559908, 0.515014, 0.649049,
		43.264339, 37.304901, 32.614704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283512, 36.442394, 32.480774>,  <42.872402, 36.944393, 32.160370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283512, 36.442394, 32.480774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306999, 36.765823, 32.714958>,  <43.321091, 36.959881, 32.855469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306999, 36.765823, 32.714958>,  <43.283512, 36.442394, 32.480774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306999, 36.765823, 32.714958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030064, -0.584771, 0.810641,
		0.997822, -0.065197, -0.010025,
		0.058714, 0.808574, 0.585457,
		43.324612, 37.008396, 32.890594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619308, 36.191795, 33.025845>,  <43.283512, 36.442394, 32.480774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619308, 36.191795, 33.025845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.504093, 36.559891, 33.131821>,  <43.434963, 36.780750, 33.195408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.504093, 36.559891, 33.131821>,  <43.619308, 36.191795, 33.025845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504093, 36.559891, 33.131821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198141, -0.327948, 0.923683,
		0.936897, 0.213559, 0.276798,
		-0.288036, 0.920241, 0.264939,
		43.417683, 36.835964, 33.211304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049446, 36.366009, 33.687813>,  <43.619308, 36.191795, 33.025845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049446, 36.366009, 33.687813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692871, 36.546799, 33.674820>,  <43.478924, 36.655273, 33.667023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692871, 36.546799, 33.674820>,  <44.049446, 36.366009, 33.687813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692871, 36.546799, 33.674820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275398, -0.483451, 0.830922,
		0.359850, 0.749663, 0.555440,
		-0.891439, 0.451975, -0.032486,
		43.425438, 36.682392, 33.665073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885590, 36.523266, 34.368649>,  <44.049446, 36.366009, 33.687813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885590, 36.523266, 34.368649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529190, 36.528156, 34.187115>,  <43.315350, 36.531090, 34.078194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529190, 36.528156, 34.187115>,  <43.885590, 36.523266, 34.368649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529190, 36.528156, 34.187115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396777, -0.506791, 0.765330,
		-0.220643, 0.861982, 0.456402,
		-0.891002, 0.012225, -0.453835,
		43.261890, 36.531822, 34.050964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577263, 36.823601, 34.462391>,  <43.885590, 36.523266, 34.368649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577263, 36.823601, 34.462391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967697, 36.740360, 34.437237>,  <45.201958, 36.690418, 34.422146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967697, 36.740360, 34.437237>,  <44.577263, 36.823601, 34.462391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967697, 36.740360, 34.437237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174173, 0.921698, -0.346606,
		0.130088, 0.327364, 0.935900,
		0.976084, -0.208098, -0.062884,
		45.260521, 36.677929, 34.418373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997734, 37.258953, 34.907242>,  <44.577263, 36.823601, 34.462391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997734, 37.258953, 34.907242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190739, 37.135406, 34.579391>,  <45.306541, 37.061279, 34.382683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190739, 37.135406, 34.579391>,  <44.997734, 37.258953, 34.907242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190739, 37.135406, 34.579391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226404, 0.947942, -0.223936,
		0.846125, -0.077515, 0.527318,
		0.482509, -0.308865, -0.819627,
		45.335491, 37.042747, 34.333504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559887, 37.545025, 34.902996>,  <44.997734, 37.258953, 34.907242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559887, 37.545025, 34.902996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605106, 37.452259, 34.516537>,  <45.632236, 37.396599, 34.284660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605106, 37.452259, 34.516537>,  <45.559887, 37.545025, 34.902996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605106, 37.452259, 34.516537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359070, 0.916198, -0.177907,
		0.926439, -0.326802, 0.186848,
		0.113049, -0.231911, -0.966145,
		45.639023, 37.382687, 34.226692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266792, 37.638847, 34.669895>,  <45.559887, 37.545025, 34.902996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266792, 37.638847, 34.669895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025612, 37.673191, 34.352638>,  <45.880905, 37.693798, 34.162285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025612, 37.673191, 34.352638>,  <46.266792, 37.638847, 34.669895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025612, 37.673191, 34.352638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380460, 0.904799, -0.191284,
		0.701215, -0.417095, -0.578212,
		-0.602949, 0.085855, -0.793146,
		45.844727, 37.698948, 34.114693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615330, 38.214333, 34.419289>,  <46.266792, 37.638847, 34.669895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615330, 38.214333, 34.419289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.265301, 38.181469, 34.228500>,  <46.055283, 38.161751, 34.114025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.265301, 38.181469, 34.228500>,  <46.615330, 38.214333, 34.419289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265301, 38.181469, 34.228500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012920, 0.981171, -0.192708,
		0.483825, -0.174796, -0.857531,
		-0.875069, -0.082157, -0.476973,
		46.002781, 38.156822, 34.085407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686096, 38.662899, 33.906479>,  <46.615330, 38.214333, 34.419289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686096, 38.662899, 33.906479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.293892, 38.587696, 33.929317>,  <46.058571, 38.542572, 33.943020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.293892, 38.587696, 33.929317>,  <46.686096, 38.662899, 33.906479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293892, 38.587696, 33.929317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196388, 0.947061, -0.253983,
		-0.006323, -0.260245, -0.965522,
		-0.980506, -0.188011, 0.057097,
		45.999741, 38.531292, 33.946445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451385, 38.765598, 33.221996>,  <46.686096, 38.662899, 33.906479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451385, 38.765598, 33.221996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.161831, 38.835560, 33.488949>,  <45.988098, 38.877537, 33.649120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.161831, 38.835560, 33.488949>,  <46.451385, 38.765598, 33.221996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.161831, 38.835560, 33.488949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252407, 0.833131, -0.492121,
		-0.642091, -0.524691, -0.558944,
		-0.723885, 0.174905, 0.667382,
		45.944664, 38.888031, 33.689163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966274, 39.104439, 32.841343>,  <46.451385, 38.765598, 33.221996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966274, 39.104439, 32.841343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811241, 39.199100, 33.197720>,  <45.718224, 39.255898, 33.411545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811241, 39.199100, 33.197720>,  <45.966274, 39.104439, 32.841343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811241, 39.199100, 33.197720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332941, 0.865311, -0.374683,
		-0.859611, -0.441851, -0.256586,
		-0.387581, 0.236654, 0.890941,
		45.694965, 39.270096, 33.465000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335781, 39.324707, 32.629189>,  <45.966274, 39.104439, 32.841343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335781, 39.324707, 32.629189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.379120, 39.474190, 32.997665>,  <45.405125, 39.563881, 33.218754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.379120, 39.474190, 32.997665>,  <45.335781, 39.324707, 32.629189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379120, 39.474190, 32.997665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316294, 0.891457, -0.324441,
		-0.942453, -0.256216, 0.214791,
		0.108350, 0.373707, 0.921196,
		45.411625, 39.586304, 33.274025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717800, 39.787495, 32.802856>,  <45.335781, 39.324707, 32.629189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717800, 39.787495, 32.802856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003494, 39.908424, 33.055355>,  <45.174911, 39.980984, 33.206852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003494, 39.908424, 33.055355>,  <44.717800, 39.787495, 32.802856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003494, 39.908424, 33.055355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197409, 0.952297, -0.232725,
		-0.671491, 0.041607, 0.739844,
		0.714234, 0.302325, 0.631245,
		45.217766, 39.999123, 33.244728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430367, 40.302044, 33.191166>,  <44.717800, 39.787495, 32.802856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430367, 40.302044, 33.191166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823704, 40.367001, 33.223846>,  <45.059704, 40.405975, 33.243454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823704, 40.367001, 33.223846>,  <44.430367, 40.302044, 33.191166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823704, 40.367001, 33.223846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139126, 0.961567, -0.236713,
		-0.116997, 0.221403, 0.968139,
		0.983339, 0.162388, 0.081697,
		45.118706, 40.415718, 33.248356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470985, 40.985958, 33.463982>,  <44.430367, 40.302044, 33.191166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470985, 40.985958, 33.463982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.828835, 40.907146, 33.303574>,  <45.043545, 40.859859, 33.207329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.828835, 40.907146, 33.303574>,  <44.470985, 40.985958, 33.463982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828835, 40.907146, 33.303574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001911, 0.899199, -0.437536,
		0.446810, 0.390666, 0.804824,
		0.894627, -0.197033, -0.401024,
		45.097221, 40.848038, 33.183266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855232, 41.633614, 33.561466>,  <44.470985, 40.985958, 33.463982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855232, 41.633614, 33.561466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052830, 41.431004, 33.278793>,  <45.171391, 41.309437, 33.109188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052830, 41.431004, 33.278793>,  <44.855232, 41.633614, 33.561466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052830, 41.431004, 33.278793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268620, 0.861931, -0.430021,
		0.826928, 0.022600, 0.561854,
		0.493998, -0.506522, -0.706684,
		45.201031, 41.279049, 33.066788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393364, 42.019001, 33.444748>,  <44.855232, 41.633614, 33.561466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393364, 42.019001, 33.444748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424026, 41.790844, 33.117634>,  <45.442425, 41.653950, 32.921364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.424026, 41.790844, 33.117634>,  <45.393364, 42.019001, 33.444748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424026, 41.790844, 33.117634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299175, 0.795566, -0.526848,
		0.951114, -0.204275, 0.231633,
		0.076658, -0.570392, -0.817788,
		45.447025, 41.619728, 32.872299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018105, 42.055733, 33.274132>,  <45.393364, 42.019001, 33.444748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018105, 42.055733, 33.274132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793659, 41.971321, 32.953979>,  <45.658993, 41.920673, 32.761887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793659, 41.971321, 32.953979>,  <46.018105, 42.055733, 33.274132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793659, 41.971321, 32.953979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350370, 0.815505, -0.460644,
		0.749925, -0.538906, -0.383657,
		-0.561118, -0.211026, -0.800384,
		45.625324, 41.908012, 32.713863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.393608, 42.251610, 32.700970>,  <46.018105, 42.055733, 33.274132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.393608, 42.251610, 32.700970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021713, 42.266006, 32.554390>,  <45.798576, 42.274647, 32.466442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021713, 42.266006, 32.554390>,  <46.393608, 42.251610, 32.700970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021713, 42.266006, 32.554390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275428, 0.728503, -0.627235,
		0.244384, -0.684097, -0.687232,
		-0.929740, 0.035996, -0.366454,
		45.742790, 42.276806, 32.444454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.503830, 42.406998, 31.993397>,  <46.393608, 42.251610, 32.700970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.503830, 42.406998, 31.993397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115406, 42.467201, 32.067574>,  <45.882351, 42.503323, 32.112080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115406, 42.467201, 32.067574>,  <46.503830, 42.406998, 31.993397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115406, 42.467201, 32.067574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019568, 0.823979, -0.566282,
		-0.238032, -0.546265, -0.803079,
		-0.971060, 0.150508, 0.185444,
		45.824089, 42.512352, 32.123207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288460, 42.523518, 31.242834>,  <46.503830, 42.406998, 31.993397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288460, 42.523518, 31.242834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.056591, 42.663372, 31.537247>,  <45.917469, 42.747284, 31.713894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.056591, 42.663372, 31.537247>,  <46.288460, 42.523518, 31.242834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056591, 42.663372, 31.537247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012873, 0.899227, -0.437294,
		-0.814750, -0.262961, -0.516754,
		-0.579670, 0.349633, 0.736030,
		45.882690, 42.768261, 31.758055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763752, 42.996296, 30.953966>,  <46.288460, 42.523518, 31.242834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763752, 42.996296, 30.953966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.759064, 43.114185, 31.336170>,  <45.756252, 43.184917, 31.565493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.759064, 43.114185, 31.336170>,  <45.763752, 42.996296, 30.953966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759064, 43.114185, 31.336170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057192, 0.953815, -0.294900,
		-0.998294, -0.058103, 0.005680,
		-0.011717, 0.294722, 0.955511,
		45.755550, 43.202602, 31.622824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152657, 43.382671, 30.920237>,  <45.763752, 42.996296, 30.953966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152657, 43.382671, 30.920237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363964, 43.497936, 31.239712>,  <45.490749, 43.567093, 31.431396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363964, 43.497936, 31.239712>,  <45.152657, 43.382671, 30.920237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363964, 43.497936, 31.239712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215850, 0.955324, -0.201904,
		-0.821186, -0.065738, 0.566862,
		0.528264, 0.288158, 0.798688,
		45.522442, 43.584385, 31.479319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762493, 43.853283, 31.283686>,  <45.152657, 43.382671, 30.920237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762493, 43.853283, 31.283686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.142967, 43.929089, 31.381113>,  <45.371254, 43.974571, 31.439569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.142967, 43.929089, 31.381113>,  <44.762493, 43.853283, 31.283686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142967, 43.929089, 31.381113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107492, 0.943263, -0.314166,
		-0.289289, 0.272649, 0.917592,
		0.951188, 0.189518, 0.243568,
		45.428322, 43.985943, 31.454184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.066227, 41.581039, 39.452396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850235, 41.307186, 39.256557>,  <36.720638, 41.142876, 39.139053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850235, 41.307186, 39.256557>,  <37.066227, 41.581039, 39.452396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850235, 41.307186, 39.256557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791237, -0.214562, -0.572632,
		0.286993, -0.696595, 0.657564,
		-0.539981, -0.684630, -0.489594,
		36.688240, 41.101795, 39.109680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525860, 41.202942, 39.200577>,  <37.066227, 41.581039, 39.452396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525860, 41.202942, 39.200577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220127, 41.028450, 39.010632>,  <37.036686, 40.923756, 38.896664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220127, 41.028450, 39.010632>,  <37.525860, 41.202942, 39.200577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220127, 41.028450, 39.010632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593241, -0.187123, -0.782975,
		0.252701, -0.880163, 0.401815,
		-0.764335, -0.436231, -0.474862,
		36.990826, 40.897579, 38.868172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850830, 40.683846, 38.976982>,  <37.525860, 41.202942, 39.200577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850830, 40.683846, 38.976982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511539, 40.699436, 38.765701>,  <37.307964, 40.708790, 38.638931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511539, 40.699436, 38.765701>,  <37.850830, 40.683846, 38.976982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511539, 40.699436, 38.765701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503757, -0.248575, -0.827308,
		-0.163543, -0.967828, 0.191212,
		-0.848223, 0.038976, -0.528204,
		37.257072, 40.711128, 38.607239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778824, 40.023003, 38.604362>,  <37.850830, 40.683846, 38.976982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778824, 40.023003, 38.604362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588425, 40.322903, 38.420494>,  <37.474186, 40.502842, 38.310173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588425, 40.322903, 38.420494>,  <37.778824, 40.023003, 38.604362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588425, 40.322903, 38.420494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338563, -0.326176, -0.882601,
		-0.811665, -0.575744, -0.098578,
		-0.475999, 0.749751, -0.459671,
		37.445625, 40.547829, 38.282593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397919, 39.679268, 38.121872>,  <37.778824, 40.023003, 38.604362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397919, 39.679268, 38.121872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472446, 40.051239, 37.995049>,  <37.517162, 40.274422, 37.918957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472446, 40.051239, 37.995049>,  <37.397919, 39.679268, 38.121872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472446, 40.051239, 37.995049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231847, -0.355208, -0.905580,
		-0.954743, 0.095217, -0.281781,
		0.186317, 0.929925, -0.317057,
		37.528343, 40.330215, 37.899933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054131, 39.751186, 37.456650>,  <37.397919, 39.679268, 38.121872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054131, 39.751186, 37.456650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303642, 40.063633, 37.467670>,  <37.453350, 40.251099, 37.474285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303642, 40.063633, 37.467670>,  <37.054131, 39.751186, 37.456650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303642, 40.063633, 37.467670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072319, -0.022580, -0.997126,
		-0.778245, 0.623982, -0.070575,
		0.623782, 0.781112, 0.027553,
		37.490776, 40.297966, 37.475937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815861, 40.199032, 36.988617>,  <37.054131, 39.751186, 37.456650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815861, 40.199032, 36.988617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210411, 40.247852, 37.032722>,  <37.447144, 40.277145, 37.059185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210411, 40.247852, 37.032722>,  <36.815861, 40.199032, 36.988617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210411, 40.247852, 37.032722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103826, 0.057918, -0.992908,
		-0.127576, 0.990832, 0.044457,
		0.986380, 0.122056, 0.110263,
		37.506325, 40.284470, 37.065800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985161, 40.686844, 36.467041>,  <36.815861, 40.199032, 36.988617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985161, 40.686844, 36.467041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328049, 40.518715, 36.586044>,  <37.533779, 40.417839, 36.657444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328049, 40.518715, 36.586044>,  <36.985161, 40.686844, 36.467041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328049, 40.518715, 36.586044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264796, -0.135713, -0.954707,
		0.441656, 0.897170, -0.005037,
		0.857218, -0.420319, 0.297506,
		37.585213, 40.392620, 36.675297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401947, 40.937000, 36.027153>,  <36.985161, 40.686844, 36.467041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401947, 40.937000, 36.027153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589317, 40.612843, 36.167915>,  <37.701740, 40.418346, 36.252373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589317, 40.612843, 36.167915>,  <37.401947, 40.937000, 36.027153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589317, 40.612843, 36.167915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216831, -0.280680, -0.934988,
		0.856482, 0.514277, 0.044241,
		0.468426, -0.810394, 0.351908,
		37.729843, 40.369724, 36.273487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023544, 40.962601, 35.658314>,  <37.401947, 40.937000, 36.027153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023544, 40.962601, 35.658314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001629, 40.589012, 35.799561>,  <37.988480, 40.364857, 35.884308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001629, 40.589012, 35.799561>,  <38.023544, 40.962601, 35.658314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001629, 40.589012, 35.799561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313677, -0.351843, -0.881937,
		0.947947, 0.062440, 0.312245,
		-0.054793, -0.933974, 0.353114,
		37.985191, 40.308819, 35.905495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586514, 40.729565, 35.476517>,  <38.023544, 40.962601, 35.658314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586514, 40.729565, 35.476517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385906, 40.386398, 35.521168>,  <38.265541, 40.180500, 35.547958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385906, 40.386398, 35.521168>,  <38.586514, 40.729565, 35.476517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385906, 40.386398, 35.521168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411054, -0.349824, -0.841818,
		0.761256, -0.376307, 0.528093,
		-0.501522, -0.857914, 0.111623,
		38.235451, 40.129025, 35.554653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075394, 40.166588, 35.431274>,  <38.586514, 40.729565, 35.476517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075394, 40.166588, 35.431274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725372, 39.991859, 35.347874>,  <38.515358, 39.887024, 35.297832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725372, 39.991859, 35.347874>,  <39.075394, 40.166588, 35.431274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725372, 39.991859, 35.347874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434177, -0.517971, -0.737019,
		0.213950, -0.735455, 0.642909,
		-0.875052, -0.436821, -0.208497,
		38.462856, 39.860813, 35.285324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276421, 39.553288, 35.407402>,  <39.075394, 40.166588, 35.431274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276421, 39.553288, 35.407402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914417, 39.551521, 35.237255>,  <38.697216, 39.550461, 35.135166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914417, 39.551521, 35.237255>,  <39.276421, 39.553288, 35.407402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914417, 39.551521, 35.237255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314808, -0.679463, -0.662741,
		-0.286093, -0.733696, 0.616311,
		-0.905012, -0.004414, -0.425363,
		38.642914, 39.550198, 35.109646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115345, 38.995502, 35.190765>,  <39.276421, 39.553288, 35.407402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115345, 38.995502, 35.190765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844536, 39.187546, 34.967648>,  <38.682049, 39.302773, 34.833778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844536, 39.187546, 34.967648>,  <39.115345, 38.995502, 35.190765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844536, 39.187546, 34.967648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014134, -0.749293, -0.662088,
		-0.735825, -0.456133, 0.500504,
		-0.677024, 0.480107, -0.557796,
		38.641426, 39.331577, 34.800308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542286, 38.596088, 35.612240>,  <39.115345, 38.995502, 35.190765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542286, 38.596088, 35.612240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596531, 38.205688, 35.680397>,  <39.629078, 37.971447, 35.721291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596531, 38.205688, 35.680397>,  <39.542286, 38.596088, 35.612240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596531, 38.205688, 35.680397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572556, 0.063150, 0.817430,
		-0.808572, -0.208414, -0.550250,
		0.135616, -0.976000, 0.170390,
		39.637215, 37.912888, 35.731514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792313, 38.275208, 35.658390>,  <39.542286, 38.596088, 35.612240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792313, 38.275208, 35.658390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084675, 38.102318, 35.869652>,  <39.260094, 37.998585, 35.996410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084675, 38.102318, 35.869652>,  <38.792313, 38.275208, 35.658390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084675, 38.102318, 35.869652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582755, 0.007512, 0.812613,
		-0.355202, -0.901733, -0.246393,
		0.730909, -0.432229, 0.528158,
		39.303947, 37.972649, 36.028099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405499, 37.918278, 36.154503>,  <38.792313, 38.275208, 35.658390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405499, 37.918278, 36.154503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771378, 37.928989, 36.315800>,  <38.990906, 37.935417, 36.412579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771378, 37.928989, 36.315800>,  <38.405499, 37.918278, 36.154503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771378, 37.928989, 36.315800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403607, 0.111468, 0.908117,
		-0.020633, -0.993407, 0.112767,
		0.914700, 0.026776, 0.403246,
		39.045788, 37.937023, 36.436775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504391, 37.351852, 36.651974>,  <38.405499, 37.918278, 36.154503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504391, 37.351852, 36.651974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747765, 37.658302, 36.734783>,  <38.893787, 37.842175, 36.784470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747765, 37.658302, 36.734783>,  <38.504391, 37.351852, 36.651974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747765, 37.658302, 36.734783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355380, 0.029777, 0.934248,
		0.709588, -0.641999, 0.290383,
		0.608433, 0.766127, 0.207024,
		38.930294, 37.888142, 36.796890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821995, 37.286983, 37.329506>,  <38.504391, 37.351852, 36.651974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821995, 37.286983, 37.329506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879066, 37.678844, 37.273056>,  <38.913311, 37.913963, 37.239185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879066, 37.678844, 37.273056>,  <38.821995, 37.286983, 37.329506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879066, 37.678844, 37.273056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185062, 0.166476, 0.968524,
		0.972314, -0.112073, 0.205050,
		0.142681, 0.979656, -0.141126,
		38.921871, 37.972740, 37.230717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098885, 37.431263, 37.905876>,  <38.821995, 37.286983, 37.329506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098885, 37.431263, 37.905876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000366, 37.789772, 37.758343>,  <38.941257, 38.004875, 37.669823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000366, 37.789772, 37.758343>,  <39.098885, 37.431263, 37.905876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000366, 37.789772, 37.758343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296792, 0.292530, 0.909033,
		0.922634, 0.333357, 0.193958,
		-0.246293, 0.896270, -0.368836,
		38.926479, 38.058655, 37.647694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514568, 37.889988, 38.306026>,  <39.098885, 37.431263, 37.905876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514568, 37.889988, 38.306026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201427, 38.082253, 38.147987>,  <39.013542, 38.197613, 38.053165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201427, 38.082253, 38.147987>,  <39.514568, 37.889988, 38.306026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201427, 38.082253, 38.147987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254783, 0.331671, 0.908339,
		0.567645, 0.811763, -0.137186,
		-0.782856, 0.480662, -0.395095,
		38.966572, 38.226452, 38.029457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485817, 38.428070, 38.737614>,  <39.514568, 37.889988, 38.306026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485817, 38.428070, 38.737614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110138, 38.427608, 38.600262>,  <38.884731, 38.427330, 38.517849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110138, 38.427608, 38.600262>,  <39.485817, 38.428070, 38.737614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110138, 38.427608, 38.600262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330092, 0.278545, 0.901916,
		0.094606, 0.960422, -0.261989,
		-0.939196, -0.001154, -0.343380,
		38.828381, 38.427261, 38.497246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153496, 38.913322, 39.074680>,  <39.485817, 38.428070, 38.737614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153496, 38.913322, 39.074680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809959, 38.756969, 38.942253>,  <38.603836, 38.663158, 38.862797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809959, 38.756969, 38.942253>,  <39.153496, 38.913322, 39.074680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809959, 38.756969, 38.942253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456134, 0.289467, 0.841517,
		-0.233099, 0.873740, -0.426900,
		-0.858840, -0.390880, -0.331068,
		38.552307, 38.639706, 38.842934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669769, 39.414639, 39.347855>,  <39.153496, 38.913322, 39.074680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669769, 39.414639, 39.347855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468086, 39.078377, 39.268780>,  <38.347076, 38.876621, 39.221336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468086, 39.078377, 39.268780>,  <38.669769, 39.414639, 39.347855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468086, 39.078377, 39.268780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570414, 0.152326, 0.807109,
		-0.648383, 0.519715, -0.556323,
		-0.504209, -0.840650, -0.197687,
		38.316822, 38.826183, 39.209473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965160, 39.608852, 39.389633>,  <38.669769, 39.414639, 39.347855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965160, 39.608852, 39.389633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003235, 39.215820, 39.453480>,  <38.026081, 38.980003, 39.491787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003235, 39.215820, 39.453480>,  <37.965160, 39.608852, 39.389633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003235, 39.215820, 39.453480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588454, 0.073791, 0.805156,
		-0.802908, -0.170572, -0.571178,
		0.095189, -0.982579, 0.159621,
		38.031792, 38.921047, 39.501366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307766, 39.308407, 39.479218>,  <37.965160, 39.608852, 39.389633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307766, 39.308407, 39.479218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551201, 39.050499, 39.664211>,  <37.697262, 38.895756, 39.775208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551201, 39.050499, 39.664211>,  <37.307766, 39.308407, 39.479218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551201, 39.050499, 39.664211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548796, 0.078939, 0.832221,
		-0.573097, -0.760292, -0.305804,
		0.608591, -0.644767, 0.462485,
		37.733780, 38.857067, 39.802956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851288, 38.916775, 40.024803>,  <37.307766, 39.308407, 39.479218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851288, 38.916775, 40.024803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221699, 38.846115, 40.158230>,  <37.443947, 38.803719, 40.238285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221699, 38.846115, 40.158230>,  <36.851288, 38.916775, 40.024803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221699, 38.846115, 40.158230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343823, -0.030122, 0.938551,
		-0.155748, -0.983813, -0.088630,
		0.926028, -0.176650, 0.333566,
		37.499508, 38.793121, 40.258301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853481, 38.356182, 40.441021>,  <36.851288, 38.916775, 40.024803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853481, 38.356182, 40.441021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161003, 38.590309, 40.544052>,  <37.345516, 38.730785, 40.605869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161003, 38.590309, 40.544052>,  <36.853481, 38.356182, 40.441021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161003, 38.590309, 40.544052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351949, 0.050986, 0.934630,
		0.533923, -0.809199, 0.245200,
		0.768803, 0.585318, 0.257574,
		37.391644, 38.765903, 40.621323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417343, 37.907852, 40.866154>,  <36.853481, 38.356182, 40.441021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417343, 37.907852, 40.866154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033718, 37.797760, 40.892834>,  <35.803543, 37.731705, 40.908840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033718, 37.797760, 40.892834>,  <36.417343, 37.907852, 40.866154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033718, 37.797760, 40.892834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050287, -0.397296, -0.916312,
		0.278696, -0.875446, 0.394871,
		-0.959062, -0.275229, 0.066701,
		35.745998, 37.715191, 40.912846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362339, 37.286972, 40.490414>,  <36.417343, 37.907852, 40.866154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362339, 37.286972, 40.490414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968967, 37.359482, 40.491516>,  <35.732944, 37.402988, 40.492176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968967, 37.359482, 40.491516>,  <36.362339, 37.286972, 40.490414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968967, 37.359482, 40.491516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103058, -0.546463, -0.831118,
		-0.149159, -0.817629, 0.556089,
		-0.983428, 0.181278, 0.002753,
		35.673939, 37.413864, 40.492344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098228, 36.753880, 40.235573>,  <36.362339, 37.286972, 40.490414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098228, 36.753880, 40.235573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767456, 36.976818, 40.205761>,  <35.568993, 37.110580, 40.187874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767456, 36.976818, 40.205761>,  <36.098228, 36.753880, 40.235573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767456, 36.976818, 40.205761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249035, -0.481843, -0.840125,
		-0.504157, -0.676159, 0.537248,
		-0.826927, 0.557348, -0.074537,
		35.519379, 37.144020, 40.183399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553768, 36.357407, 40.151180>,  <36.098228, 36.753880, 40.235573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553768, 36.357407, 40.151180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441135, 36.710335, 40.000328>,  <35.373558, 36.922092, 39.909817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441135, 36.710335, 40.000328>,  <35.553768, 36.357407, 40.151180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441135, 36.710335, 40.000328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352384, -0.460655, -0.814630,
		-0.892490, -0.096487, 0.440626,
		-0.281578, 0.882319, -0.377130,
		35.356663, 36.975029, 39.887188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891666, 36.240021, 39.976196>,  <35.553768, 36.357407, 40.151180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891666, 36.240021, 39.976196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963680, 36.580639, 39.779240>,  <35.006889, 36.785011, 39.661064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963680, 36.580639, 39.779240>,  <34.891666, 36.240021, 39.976196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963680, 36.580639, 39.779240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418447, -0.386720, -0.821796,
		-0.890218, 0.353996, 0.286704,
		0.180038, 0.851548, -0.492394,
		35.017693, 36.836102, 39.631523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246548, 36.539997, 39.622734>,  <34.891666, 36.240021, 39.976196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246548, 36.539997, 39.622734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554886, 36.695477, 39.420856>,  <34.739887, 36.788765, 39.299732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554886, 36.695477, 39.420856>,  <34.246548, 36.539997, 39.622734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554886, 36.695477, 39.420856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404552, -0.313287, -0.859179,
		-0.492077, 0.866466, -0.084245,
		0.770842, 0.388701, -0.504692,
		34.786140, 36.812088, 39.269447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944012, 36.748337, 38.980072>,  <34.246548, 36.539997, 39.622734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944012, 36.748337, 38.980072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337193, 36.704266, 38.921192>,  <34.573101, 36.677822, 38.885864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337193, 36.704266, 38.921192>,  <33.944012, 36.748337, 38.980072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337193, 36.704266, 38.921192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176649, -0.343765, -0.922291,
		0.051016, 0.932570, -0.357367,
		0.982951, -0.110180, -0.147200,
		34.632076, 36.671211, 38.877033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048920, 37.146919, 38.321491>,  <33.944012, 36.748337, 38.980072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048920, 37.146919, 38.321491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341686, 36.880730, 38.380066>,  <34.517345, 36.721016, 38.415211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341686, 36.880730, 38.380066>,  <34.048920, 37.146919, 38.321491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341686, 36.880730, 38.380066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111419, -0.328905, -0.937767,
		0.672222, 0.670052, -0.314877,
		0.731917, -0.665471, 0.146441,
		34.561260, 36.681087, 38.424000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188618, 37.027382, 37.749130>,  <34.048920, 37.146919, 38.321491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188618, 37.027382, 37.749130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394283, 36.739098, 37.935123>,  <34.517681, 36.566128, 38.046719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394283, 36.739098, 37.935123>,  <34.188618, 37.027382, 37.749130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394283, 36.739098, 37.935123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006807, -0.538685, -0.842480,
		0.857666, 0.436336, -0.272065,
		0.514162, -0.720714, 0.464982,
		34.548531, 36.522884, 38.074619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688560, 36.836617, 37.197830>,  <34.188618, 37.027382, 37.749130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688560, 36.836617, 37.197830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690765, 36.522354, 37.445286>,  <34.692089, 36.333797, 37.593758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690765, 36.522354, 37.445286>,  <34.688560, 36.836617, 37.197830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690765, 36.522354, 37.445286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023086, -0.618584, -0.785380,
		0.999718, -0.009954, -0.021547,
		0.005510, -0.785656, 0.618639,
		34.692417, 36.286659, 37.630878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245911, 36.366325, 36.958336>,  <34.688560, 36.836617, 37.197830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245911, 36.366325, 36.958336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951260, 36.181271, 37.155659>,  <34.774467, 36.070240, 37.274052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951260, 36.181271, 37.155659>,  <35.245911, 36.366325, 36.958336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951260, 36.181271, 37.155659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302677, -0.426769, -0.852206,
		0.604787, -0.777070, 0.174341,
		-0.736627, -0.462634, 0.493306,
		34.730270, 36.042480, 37.303650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287952, 35.654652, 36.831493>,  <35.245911, 36.366325, 36.958336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287952, 35.654652, 36.831493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903526, 35.701969, 36.931374>,  <34.672871, 35.730358, 36.991302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903526, 35.701969, 36.931374>,  <35.287952, 35.654652, 36.831493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903526, 35.701969, 36.931374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274757, -0.504676, -0.818419,
		0.029208, -0.855166, 0.517530,
		-0.961070, 0.118291, 0.249704,
		34.615204, 35.737457, 37.006283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.921772, 37.493443, 44.548805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573856, 37.685249, 44.502277>,  <35.365108, 37.800335, 44.474361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573856, 37.685249, 44.502277>,  <35.921772, 37.493443, 44.548805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573856, 37.685249, 44.502277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034487, -0.294244, -0.955108,
		-0.492220, -0.826729, 0.272467,
		-0.869787, 0.479520, -0.116321,
		35.312920, 37.829105, 44.467381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500961, 37.063431, 44.234421>,  <35.921772, 37.493443, 44.548805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500961, 37.063431, 44.234421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351234, 37.421677, 44.138279>,  <35.261398, 37.636623, 44.080593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351234, 37.421677, 44.138279>,  <35.500961, 37.063431, 44.234421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351234, 37.421677, 44.138279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077173, -0.228213, -0.970548,
		-0.924085, -0.381838, 0.016306,
		-0.374313, 0.895611, -0.240356,
		35.238941, 37.690361, 44.066174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949966, 36.958790, 43.793270>,  <35.500961, 37.063431, 44.234421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949966, 36.958790, 43.793270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078094, 37.327393, 43.705429>,  <35.154972, 37.548553, 43.652725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078094, 37.327393, 43.705429>,  <34.949966, 36.958790, 43.793270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078094, 37.327393, 43.705429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088012, -0.259768, -0.961652,
		-0.943213, 0.288706, -0.164312,
		0.320318, 0.921504, -0.219607,
		35.174191, 37.603844, 43.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733597, 37.067158, 43.081425>,  <34.949966, 36.958790, 43.793270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733597, 37.067158, 43.081425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.985500, 37.370880, 43.146992>,  <35.136642, 37.553112, 43.186333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.985500, 37.370880, 43.146992>,  <34.733597, 37.067158, 43.081425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985500, 37.370880, 43.146992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137154, 0.099013, -0.985589,
		-0.764589, 0.643162, -0.041787,
		0.629756, 0.759301, 0.163917,
		35.174427, 37.598671, 43.196167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484280, 37.630184, 42.624020>,  <34.733597, 37.067158, 43.081425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484280, 37.630184, 42.624020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866329, 37.703251, 42.717285>,  <35.095558, 37.747089, 42.773247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866329, 37.703251, 42.717285>,  <34.484280, 37.630184, 42.624020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866329, 37.703251, 42.717285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237021, 0.000750, -0.971504,
		-0.177632, 0.983175, -0.042579,
		0.955127, 0.182663, 0.233167,
		35.152866, 37.758049, 42.787235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557922, 38.073059, 42.181370>,  <34.484280, 37.630184, 42.624020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557922, 38.073059, 42.181370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915813, 37.928879, 42.286850>,  <35.130547, 37.842369, 42.350136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915813, 37.928879, 42.286850>,  <34.557922, 38.073059, 42.181370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915813, 37.928879, 42.286850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261922, -0.054747, -0.963535,
		0.361742, 0.931171, 0.045426,
		0.894729, -0.360450, 0.263698,
		35.184231, 37.820744, 42.365959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032097, 38.541271, 41.903721>,  <34.557922, 38.073059, 42.181370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032097, 38.541271, 41.903721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.216568, 38.191078, 41.961483>,  <35.327251, 37.980965, 41.996140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.216568, 38.191078, 41.961483>,  <35.032097, 38.541271, 41.903721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216568, 38.191078, 41.961483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272556, -0.015102, -0.962021,
		0.844409, 0.483022, 0.231652,
		0.461179, -0.875478, 0.144403,
		35.354923, 37.928436, 42.004803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549122, 38.758114, 41.644966>,  <35.032097, 38.541271, 41.903721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549122, 38.758114, 41.644966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584557, 38.359886, 41.657589>,  <35.605816, 38.120949, 41.665161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584557, 38.359886, 41.657589>,  <35.549122, 38.758114, 41.644966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584557, 38.359886, 41.657589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311387, -0.002410, -0.950280,
		0.946145, 0.094009, 0.309793,
		0.088588, -0.995568, 0.031553,
		35.611134, 38.061214, 41.667053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154896, 38.437023, 41.319035>,  <35.549122, 38.758114, 41.644966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154896, 38.437023, 41.319035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907589, 38.122646, 41.316376>,  <35.759205, 37.934021, 41.314781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907589, 38.122646, 41.316376>,  <36.154896, 38.437023, 41.319035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907589, 38.122646, 41.316376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154870, -0.113526, -0.981390,
		0.770560, -0.607790, 0.191908,
		-0.618266, -0.785941, -0.006649,
		35.722111, 37.886864, 41.314381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907299, 38.346142, 41.226734>,  <36.154896, 38.437023, 41.319035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907299, 38.346142, 41.226734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179794, 38.636776, 41.190971>,  <37.343292, 38.811157, 41.169514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179794, 38.636776, 41.190971>,  <36.907299, 38.346142, 41.226734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179794, 38.636776, 41.190971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331770, 0.415292, 0.847031,
		0.652568, -0.547366, 0.523971,
		0.681237, 0.726583, -0.089407,
		37.384167, 38.854752, 41.164150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368008, 38.263165, 41.846752>,  <36.907299, 38.346142, 41.226734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368008, 38.263165, 41.846752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388119, 38.641644, 41.718891>,  <37.400185, 38.868732, 41.642174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388119, 38.641644, 41.718891>,  <37.368008, 38.263165, 41.846752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388119, 38.641644, 41.718891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077849, 0.322792, 0.943263,
		0.995697, -0.022540, 0.089890,
		0.050277, 0.946202, -0.319648,
		37.403202, 38.925503, 41.622997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753681, 38.546936, 42.290436>,  <37.368008, 38.263165, 41.846752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753681, 38.546936, 42.290436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615475, 38.875767, 42.109409>,  <37.532551, 39.073063, 42.000793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615475, 38.875767, 42.109409>,  <37.753681, 38.546936, 42.290436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615475, 38.875767, 42.109409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047824, 0.466217, 0.883377,
		0.937195, 0.326861, -0.121769,
		-0.345512, 0.822073, -0.452568,
		37.511822, 39.122387, 41.973640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208115, 39.202728, 42.443657>,  <37.753681, 38.546936, 42.290436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208115, 39.202728, 42.443657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846172, 39.325233, 42.325378>,  <37.629005, 39.398735, 42.254414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846172, 39.325233, 42.325378>,  <38.208115, 39.202728, 42.443657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846172, 39.325233, 42.325378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113794, 0.495305, 0.861234,
		0.410221, 0.812944, -0.413330,
		-0.904859, 0.306261, -0.295693,
		37.574715, 39.417110, 42.236671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096912, 39.906471, 42.776108>,  <38.208115, 39.202728, 42.443657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096912, 39.906471, 42.776108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722843, 39.810421, 42.671963>,  <37.498402, 39.752792, 42.609474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722843, 39.810421, 42.671963>,  <38.096912, 39.906471, 42.776108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722843, 39.810421, 42.671963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343412, 0.434778, 0.832488,
		-0.086701, 0.867933, -0.489055,
		-0.935175, -0.240125, -0.260362,
		37.442291, 39.738384, 42.593853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816330, 40.542881, 42.683247>,  <38.096912, 39.906471, 42.776108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816330, 40.542881, 42.683247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519764, 40.277500, 42.723526>,  <37.341824, 40.118271, 42.747696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519764, 40.277500, 42.723526>,  <37.816330, 40.542881, 42.683247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519764, 40.277500, 42.723526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354356, 0.514518, 0.780835,
		-0.569856, 0.543238, -0.616568,
		-0.741415, -0.663448, 0.100702,
		37.297340, 40.078465, 42.753738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135532, 40.923443, 42.774372>,  <37.816330, 40.542881, 42.683247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135532, 40.923443, 42.774372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069447, 40.579651, 42.967865>,  <37.029797, 40.373375, 43.083961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069447, 40.579651, 42.967865>,  <37.135532, 40.923443, 42.774372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069447, 40.579651, 42.967865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426356, 0.504511, 0.750793,
		-0.889340, -0.082201, -0.449797,
		-0.165211, -0.859484, 0.483728,
		37.019882, 40.321804, 43.112984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536156, 41.042622, 43.142155>,  <37.135532, 40.923443, 42.774372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536156, 41.042622, 43.142155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703777, 40.716698, 43.302391>,  <36.804352, 40.521145, 43.398533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703777, 40.716698, 43.302391>,  <36.536156, 41.042622, 43.142155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703777, 40.716698, 43.302391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226432, 0.333478, 0.915162,
		-0.879273, -0.474211, -0.044754,
		0.419055, -0.814811, 0.400595,
		36.829494, 40.472256, 43.422569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061775, 40.769318, 43.633587>,  <36.536156, 41.042622, 43.142155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061775, 40.769318, 43.633587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387249, 40.581501, 43.770668>,  <36.582535, 40.468811, 43.852917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387249, 40.581501, 43.770668>,  <36.061775, 40.769318, 43.633587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387249, 40.581501, 43.770668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264828, 0.225389, 0.937585,
		-0.517480, -0.853655, 0.059046,
		0.813683, -0.469545, 0.342706,
		36.631355, 40.440639, 43.873478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909603, 40.409836, 44.388042>,  <36.061775, 40.769318, 43.633587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909603, 40.409836, 44.388042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308762, 40.423000, 44.365715>,  <36.548256, 40.430897, 44.352318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308762, 40.423000, 44.365715>,  <35.909603, 40.409836, 44.388042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308762, 40.423000, 44.365715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052556, 0.092790, 0.994298,
		0.037895, -0.995142, 0.090866,
		0.997899, 0.032904, -0.055817,
		36.608131, 40.432873, 44.348969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090206, 40.203472, 45.028389>,  <35.909603, 40.409836, 44.388042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090206, 40.203472, 45.028389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404785, 40.403427, 44.883278>,  <36.593533, 40.523399, 44.796211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404785, 40.403427, 44.883278>,  <36.090206, 40.203472, 45.028389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404785, 40.403427, 44.883278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116755, 0.456446, 0.882057,
		0.606520, -0.736049, 0.300607,
		0.786449, 0.499888, -0.362781,
		36.640720, 40.553394, 44.774445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584503, 40.079456, 45.595165>,  <36.090206, 40.203472, 45.028389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584503, 40.079456, 45.595165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659256, 40.400990, 45.369274>,  <36.704109, 40.593910, 45.233738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659256, 40.400990, 45.369274>,  <36.584503, 40.079456, 45.595165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659256, 40.400990, 45.369274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090843, 0.586537, 0.804811,
		0.978172, -0.099106, 0.182639,
		0.186886, 0.803836, -0.564732,
		36.715321, 40.642139, 45.199856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226822, 40.417053, 45.867332>,  <36.584503, 40.079456, 45.595165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226822, 40.417053, 45.867332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029682, 40.697250, 45.660873>,  <36.911400, 40.865368, 45.536999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029682, 40.697250, 45.660873>,  <37.226822, 40.417053, 45.867332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029682, 40.697250, 45.660873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004681, 0.591055, 0.806618,
		0.870104, 0.399955, -0.288020,
		-0.492846, 0.700493, -0.516151,
		36.881828, 40.907398, 45.506027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496887, 41.007854, 46.085228>,  <37.226822, 40.417053, 45.867332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496887, 41.007854, 46.085228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173695, 41.159966, 45.905205>,  <36.979778, 41.251232, 45.797192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173695, 41.159966, 45.905205>,  <37.496887, 41.007854, 46.085228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173695, 41.159966, 45.905205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023562, 0.784083, 0.620209,
		0.588735, 0.490514, -0.642485,
		-0.807983, 0.380277, -0.450060,
		36.931301, 41.274048, 45.770187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.203646, 39.109188, 43.725033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.566366, 39.026432, 43.871952>,  <29.783998, 38.976780, 43.960102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.566366, 39.026432, 43.871952>,  <29.203646, 39.109188, 43.725033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566366, 39.026432, 43.871952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374730, -0.003491, -0.927127,
		0.193096, 0.978358, 0.074362,
		0.906803, -0.206890, 0.367294,
		29.838408, 38.964363, 43.982140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672928, 39.543678, 43.311848>,  <29.203646, 39.109188, 43.725033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672928, 39.543678, 43.311848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.868141, 39.232704, 43.470551>,  <29.985270, 39.046120, 43.565773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.868141, 39.232704, 43.470551>,  <29.672928, 39.543678, 43.311848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868141, 39.232704, 43.470551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317778, -0.265109, -0.910348,
		0.812921, 0.570362, 0.117670,
		0.488033, -0.777434, 0.396761,
		30.014551, 38.999474, 43.589581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401318, 39.664223, 43.125435>,  <29.672928, 39.543678, 43.311848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401318, 39.664223, 43.125435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374403, 39.270370, 43.189903>,  <30.358253, 39.034058, 43.228584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374403, 39.270370, 43.189903>,  <30.401318, 39.664223, 43.125435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374403, 39.270370, 43.189903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332163, -0.174427, -0.926954,
		0.940819, -0.008836, 0.338794,
		-0.067286, -0.984630, 0.161169,
		30.354218, 38.974983, 43.238255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137869, 39.435604, 43.054932>,  <30.401318, 39.664223, 43.125435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137869, 39.435604, 43.054932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.898758, 39.118885, 43.004784>,  <30.755291, 38.928852, 42.974697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.898758, 39.118885, 43.004784>,  <31.137869, 39.435604, 43.054932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898758, 39.118885, 43.004784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523070, -0.266730, -0.809477,
		0.607504, -0.549462, 0.573611,
		-0.597776, -0.791799, -0.125367,
		30.719425, 38.881344, 42.967175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584948, 38.963333, 42.786583>,  <31.137869, 39.435604, 43.054932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584948, 38.963333, 42.786583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.223949, 38.802959, 42.723648>,  <31.007351, 38.706738, 42.685886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.223949, 38.802959, 42.723648>,  <31.584948, 38.963333, 42.786583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223949, 38.802959, 42.723648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315711, -0.367349, -0.874861,
		0.292962, -0.839231, 0.458110,
		-0.902496, -0.400932, -0.157335,
		30.953201, 38.682678, 42.676449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691866, 38.302940, 42.635525>,  <31.584948, 38.963333, 42.786583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691866, 38.302940, 42.635525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340889, 38.413410, 42.478642>,  <31.130302, 38.479691, 42.384510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340889, 38.413410, 42.478642>,  <31.691866, 38.302940, 42.635525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340889, 38.413410, 42.478642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323987, -0.261750, -0.909131,
		-0.353739, -0.924778, 0.140193,
		-0.877440, 0.276175, -0.392207,
		31.077658, 38.496262, 42.360981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527338, 37.792328, 42.189587>,  <31.691866, 38.302940, 42.635525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527338, 37.792328, 42.189587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.291584, 38.096699, 42.081059>,  <31.150131, 38.279324, 42.015942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.291584, 38.096699, 42.081059>,  <31.527338, 37.792328, 42.189587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291584, 38.096699, 42.081059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105194, -0.260702, -0.959671,
		-0.800975, -0.594156, 0.073608,
		-0.589384, 0.760929, -0.271318,
		31.114769, 38.324978, 41.999664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929436, 37.554356, 41.734638>,  <31.527338, 37.792328, 42.189587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929436, 37.554356, 41.734638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.004253, 37.938309, 41.651081>,  <31.049145, 38.168682, 41.600948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.004253, 37.938309, 41.651081>,  <30.929436, 37.554356, 41.734638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004253, 37.938309, 41.651081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107750, -0.231410, -0.966871,
		-0.976424, 0.158339, -0.146711,
		0.187043, 0.959885, -0.208893,
		31.060366, 38.226273, 41.588413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582211, 37.556969, 41.123352>,  <30.929436, 37.554356, 41.734638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582211, 37.556969, 41.123352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.762913, 37.913589, 41.110340>,  <30.871334, 38.127560, 41.102531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.762913, 37.913589, 41.110340>,  <30.582211, 37.556969, 41.123352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762913, 37.913589, 41.110340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280914, -0.176761, -0.943315,
		-0.846760, 0.417012, -0.330302,
		0.451758, 0.891547, -0.032529,
		30.898439, 38.181053, 41.100582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282934, 38.014324, 40.602283>,  <30.582211, 37.556969, 41.123352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282934, 38.014324, 40.602283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656145, 38.151905, 40.644535>,  <30.880072, 38.234455, 40.669888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656145, 38.151905, 40.644535>,  <30.282934, 38.014324, 40.602283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656145, 38.151905, 40.644535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129471, -0.047031, -0.990467,
		-0.335710, 0.937807, -0.088413,
		0.933025, 0.343956, 0.105630,
		30.936052, 38.255093, 40.676224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317234, 38.508747, 40.026100>,  <30.282934, 38.014324, 40.602283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317234, 38.508747, 40.026100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697805, 38.446827, 40.132553>,  <30.926147, 38.409676, 40.196423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697805, 38.446827, 40.132553>,  <30.317234, 38.508747, 40.026100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697805, 38.446827, 40.132553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237562, -0.180724, -0.954412,
		0.195836, 0.971276, -0.135172,
		0.951427, -0.154797, 0.266130,
		30.983232, 38.400387, 40.212391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817825, 39.081608, 39.726906>,  <30.317234, 38.508747, 40.026100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817825, 39.081608, 39.726906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997913, 38.731846, 39.799263>,  <31.105967, 38.521988, 39.842678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997913, 38.731846, 39.799263>,  <30.817825, 39.081608, 39.726906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997913, 38.731846, 39.799263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196571, -0.100553, -0.975320,
		0.871012, 0.474666, 0.126611,
		0.450220, -0.874403, 0.180888,
		31.132980, 38.469524, 39.853531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473396, 39.021606, 39.324829>,  <30.817825, 39.081608, 39.726906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473396, 39.021606, 39.324829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.564714, 38.655334, 39.457134>,  <31.619505, 38.435570, 39.536518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.564714, 38.655334, 39.457134>,  <31.473396, 39.021606, 39.324829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564714, 38.655334, 39.457134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243853, -0.275127, -0.929968,
		0.942559, 0.292963, 0.160482,
		0.228293, -0.915684, 0.330763,
		31.633202, 38.380630, 39.556362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231205, 38.929012, 39.167065>,  <31.473396, 39.021606, 39.324829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231205, 38.929012, 39.167065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063534, 38.567879, 39.205399>,  <31.962931, 38.351200, 39.228401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063534, 38.567879, 39.205399>,  <32.231205, 38.929012, 39.167065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063534, 38.567879, 39.205399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448122, -0.297548, -0.843002,
		0.789604, -0.310424, 0.529304,
		-0.419181, -0.902830, 0.095837,
		31.937780, 38.297031, 39.234150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521496, 39.619930, 39.302448>,  <32.231205, 38.929012, 39.167065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521496, 39.619930, 39.302448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.692421, 39.885254, 39.056705>,  <32.794975, 40.044449, 38.909260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.692421, 39.885254, 39.056705>,  <32.521496, 39.619930, 39.302448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692421, 39.885254, 39.056705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418896, 0.747432, 0.515627,
		0.801207, 0.037018, 0.597242,
		0.427310, 0.663306, -0.614354,
		32.820614, 40.084248, 38.872398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812729, 40.070290, 39.750206>,  <32.521496, 39.619930, 39.302448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812729, 40.070290, 39.750206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759941, 40.249561, 39.396545>,  <32.728268, 40.357124, 39.184349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759941, 40.249561, 39.396545>,  <32.812729, 40.070290, 39.750206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759941, 40.249561, 39.396545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405217, 0.789624, 0.460753,
		0.904645, 0.419078, 0.077402,
		-0.131973, 0.448182, -0.884147,
		32.720348, 40.384014, 39.131302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294170, 40.642612, 39.648899>,  <32.812729, 40.070290, 39.750206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294170, 40.642612, 39.648899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.962463, 40.701332, 39.433208>,  <32.763439, 40.736565, 39.303795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.962463, 40.701332, 39.433208>,  <33.294170, 40.642612, 39.648899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962463, 40.701332, 39.433208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239881, 0.777972, 0.580704,
		0.504754, 0.610909, -0.609930,
		-0.829265, 0.146802, -0.539229,
		32.713684, 40.745373, 39.271439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386745, 41.274929, 39.506145>,  <33.294170, 40.642612, 39.648899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386745, 41.274929, 39.506145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.998405, 41.215881, 39.430614>,  <32.765400, 41.180454, 39.385296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.998405, 41.215881, 39.430614>,  <33.386745, 41.274929, 39.506145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998405, 41.215881, 39.430614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227791, 0.813355, 0.535318,
		0.074564, 0.562728, -0.823272,
		-0.970851, -0.147619, -0.188832,
		32.707150, 41.171597, 39.373966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078648, 41.968098, 39.443821>,  <33.386745, 41.274929, 39.506145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078648, 41.968098, 39.443821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763454, 41.725033, 39.483494>,  <32.574341, 41.579193, 39.507298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763454, 41.725033, 39.483494>,  <33.078648, 41.968098, 39.443821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763454, 41.725033, 39.483494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362202, 0.587765, 0.723424,
		-0.497892, 0.534119, -0.683243,
		-0.787981, -0.607659, 0.099184,
		32.527061, 41.542736, 39.513248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474216, 42.378418, 39.399292>,  <33.078648, 41.968098, 39.443821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474216, 42.378418, 39.399292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428070, 42.053265, 39.627647>,  <32.400383, 41.858173, 39.764660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428070, 42.053265, 39.627647>,  <32.474216, 42.378418, 39.399292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428070, 42.053265, 39.627647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197277, 0.582025, 0.788878,
		-0.973537, -0.021617, -0.227506,
		-0.115361, -0.812883, 0.570887,
		32.393463, 41.809399, 39.798912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849304, 42.601288, 39.719360>,  <32.474216, 42.378418, 39.399292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849304, 42.601288, 39.719360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.995609, 42.299503, 39.937351>,  <32.083393, 42.118431, 40.068146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.995609, 42.299503, 39.937351>,  <31.849304, 42.601288, 39.719360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995609, 42.299503, 39.937351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375410, 0.416209, 0.828153,
		-0.851637, -0.507497, -0.131001,
		0.365762, -0.754465, 0.544978,
		32.105339, 42.073162, 40.100845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354094, 42.493805, 40.182564>,  <31.849304, 42.601288, 39.719360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354094, 42.493805, 40.182564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.664837, 42.301949, 40.345749>,  <31.851282, 42.186832, 40.443661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.664837, 42.301949, 40.345749>,  <31.354094, 42.493805, 40.182564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664837, 42.301949, 40.345749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332016, 0.238485, 0.912628,
		-0.535029, -0.844433, 0.026020,
		0.776859, -0.479644, 0.407961,
		31.897894, 42.158054, 40.468136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042301, 42.137081, 40.669941>,  <31.354094, 42.493805, 40.182564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042301, 42.137081, 40.669941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.419918, 42.094143, 40.794685>,  <31.646488, 42.068378, 40.869534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.419918, 42.094143, 40.794685>,  <31.042301, 42.137081, 40.669941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419918, 42.094143, 40.794685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306267, 0.065568, 0.949685,
		-0.122397, -0.992057, 0.029022,
		0.944044, -0.107350, 0.311860,
		31.703131, 42.061939, 40.888245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102257, 41.554333, 41.264179>,  <31.042301, 42.137081, 40.669941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102257, 41.554333, 41.264179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433483, 41.774837, 41.305004>,  <31.632219, 41.907143, 41.329498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433483, 41.774837, 41.305004>,  <31.102257, 41.554333, 41.264179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433483, 41.774837, 41.305004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222153, 0.155494, 0.962533,
		0.514741, -0.819712, 0.251224,
		0.828064, 0.551265, 0.102063,
		31.681902, 41.940216, 41.335625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508301, 41.248249, 41.765934>,  <31.102257, 41.554333, 41.264179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508301, 41.248249, 41.765934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.612814, 41.634037, 41.750267>,  <31.675522, 41.865509, 41.740868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.612814, 41.634037, 41.750267>,  <31.508301, 41.248249, 41.765934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612814, 41.634037, 41.750267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220104, 0.099042, 0.970435,
		0.939832, -0.244938, 0.238161,
		0.261285, 0.964467, -0.039171,
		31.691200, 41.923378, 41.738514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827902, 41.274017, 42.413807>,  <31.508301, 41.248249, 41.765934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827902, 41.274017, 42.413807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793869, 41.651711, 42.286564>,  <31.773449, 41.878326, 42.210220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793869, 41.651711, 42.286564>,  <31.827902, 41.274017, 42.413807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793869, 41.651711, 42.286564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018067, 0.317747, 0.948003,
		0.996210, 0.086407, -0.009976,
		-0.085084, 0.944230, -0.318104,
		31.768343, 41.934978, 42.191132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350185, 41.615139, 42.687714>,  <31.827902, 41.274017, 42.413807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350185, 41.615139, 42.687714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.074581, 41.892410, 42.603081>,  <31.909218, 42.058773, 42.552303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.074581, 41.892410, 42.603081>,  <32.350185, 41.615139, 42.687714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074581, 41.892410, 42.603081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014449, 0.278739, 0.960258,
		0.724604, 0.664688, -0.182039,
		-0.689014, 0.693177, -0.211579,
		31.867878, 42.100365, 42.539608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585205, 42.188118, 43.051563>,  <32.350185, 41.615139, 42.687714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585205, 42.188118, 43.051563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.192989, 42.216351, 42.978287>,  <31.957659, 42.233292, 42.934322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.192989, 42.216351, 42.978287>,  <32.585205, 42.188118, 43.051563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192989, 42.216351, 42.978287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155568, 0.289807, 0.944357,
		0.119744, 0.954479, -0.273187,
		-0.980541, 0.070582, -0.183189,
		31.898827, 42.237526, 42.923328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033485, 42.703075, 43.063232>,  <32.585205, 42.188118, 43.051563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033485, 42.703075, 43.063232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375240, 42.719105, 43.270470>,  <33.580292, 42.728722, 43.394810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375240, 42.719105, 43.270470>,  <33.033485, 42.703075, 43.063232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375240, 42.719105, 43.270470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467620, -0.494105, -0.732933,
		0.226618, 0.868478, -0.440897,
		0.854386, 0.040077, 0.518091,
		33.631557, 42.731129, 43.425896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458973, 42.964291, 42.577339>,  <33.033485, 42.703075, 43.063232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458973, 42.964291, 42.577339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.713787, 42.797977, 42.836971>,  <33.866676, 42.698189, 42.992752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.713787, 42.797977, 42.836971>,  <33.458973, 42.964291, 42.577339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713787, 42.797977, 42.836971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537130, -0.364528, -0.760665,
		0.552878, 0.833215, -0.008890,
		0.637038, -0.415780, 0.649084,
		33.904900, 42.673244, 43.031696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199108, 43.148518, 42.436966>,  <33.458973, 42.964291, 42.577339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199108, 43.148518, 42.436966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218872, 42.798367, 42.629330>,  <34.230732, 42.588276, 42.744747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218872, 42.798367, 42.629330>,  <34.199108, 43.148518, 42.436966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218872, 42.798367, 42.629330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471685, -0.403967, -0.783788,
		0.880382, 0.265563, 0.392943,
		0.049409, -0.875378, 0.480908,
		34.233696, 42.535751, 42.773602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814087, 42.898384, 42.117531>,  <34.199108, 43.148518, 42.436966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814087, 42.898384, 42.117531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.651299, 42.583797, 42.303371>,  <34.553627, 42.395046, 42.414875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.651299, 42.583797, 42.303371>,  <34.814087, 42.898384, 42.117531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651299, 42.583797, 42.303371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536778, -0.617446, -0.575004,
		0.739085, 0.015380, 0.673436,
		-0.406967, -0.786463, 0.464601,
		34.529209, 42.347858, 42.442753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393085, 42.508568, 42.378216>,  <34.814087, 42.898384, 42.117531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393085, 42.508568, 42.378216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080978, 42.258568, 42.387630>,  <34.893715, 42.108566, 42.393280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080978, 42.258568, 42.387630>,  <35.393085, 42.508568, 42.378216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080978, 42.258568, 42.387630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556675, -0.711141, -0.429407,
		0.285114, -0.321954, 0.902804,
		-0.780271, -0.624999, 0.023532,
		34.846897, 42.071068, 42.394691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566391, 41.843441, 42.678505>,  <35.393085, 42.508568, 42.378216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566391, 41.843441, 42.678505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.243500, 41.801140, 42.446232>,  <35.049763, 41.775761, 42.306870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.243500, 41.801140, 42.446232>,  <35.566391, 41.843441, 42.678505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243500, 41.801140, 42.446232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531836, -0.557004, -0.637885,
		-0.255985, -0.823749, 0.505874,
		-0.807231, -0.105753, -0.580684,
		35.001331, 41.769413, 42.272026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586567, 41.053612, 42.483547>,  <35.566391, 41.843441, 42.678505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586567, 41.053612, 42.483547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348816, 41.218906, 42.207592>,  <35.206165, 41.318081, 42.042019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348816, 41.218906, 42.207592>,  <35.586567, 41.053612, 42.483547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348816, 41.218906, 42.207592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317010, -0.668009, -0.673252,
		-0.739065, -0.618870, 0.266051,
		-0.594380, 0.413236, -0.689890,
		35.170502, 41.342876, 42.000626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473392, 40.514317, 41.959732>,  <35.586567, 41.053612, 42.483547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473392, 40.514317, 41.959732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349926, 40.843849, 41.769562>,  <35.275848, 41.041569, 41.655460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349926, 40.843849, 41.769562>,  <35.473392, 40.514317, 41.959732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349926, 40.843849, 41.769562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228978, -0.420780, -0.877789,
		-0.923199, -0.379805, -0.058759,
		-0.308663, 0.823828, -0.475431,
		35.257328, 41.090996, 41.626934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138176, 40.213917, 41.369274>,  <35.473392, 40.514317, 41.959732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138176, 40.213917, 41.369274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.241001, 40.593212, 41.294693>,  <35.302696, 40.820789, 41.249947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.241001, 40.593212, 41.294693>,  <35.138176, 40.213917, 41.369274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241001, 40.593212, 41.294693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328652, -0.267213, -0.905862,
		-0.908794, 0.171588, -0.380331,
		0.257064, 0.948238, -0.186448,
		35.318119, 40.877682, 41.238758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971970, 40.389610, 40.611427>,  <35.138176, 40.213917, 41.369274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971970, 40.389610, 40.611427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209087, 40.697582, 40.705925>,  <35.351357, 40.882366, 40.762623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209087, 40.697582, 40.705925>,  <34.971970, 40.389610, 40.611427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209087, 40.697582, 40.705925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428857, -0.053488, -0.901787,
		-0.681673, 0.635889, -0.361895,
		0.592793, 0.769925, 0.236244,
		35.386925, 40.928558, 40.776798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855289, 40.812851, 40.089306>,  <34.971970, 40.389610, 40.611427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855289, 40.812851, 40.089306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.211540, 40.886715, 40.255531>,  <35.425289, 40.931034, 40.355267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.211540, 40.886715, 40.255531>,  <34.855289, 40.812851, 40.089306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211540, 40.886715, 40.255531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434458, -0.075656, -0.897509,
		-0.134295, 0.979886, -0.147609,
		0.890624, 0.184661, 0.415559,
		35.478729, 40.942112, 40.380199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119640, 41.319172, 39.669643>,  <34.855289, 40.812851, 40.089306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119640, 41.319172, 39.669643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440552, 41.173870, 39.859127>,  <35.633099, 41.086689, 39.972816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440552, 41.173870, 39.859127>,  <35.119640, 41.319172, 39.669643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440552, 41.173870, 39.859127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566330, 0.212233, -0.796384,
		0.188750, 0.907197, 0.375989,
		0.802274, -0.363252, 0.473714,
		35.681232, 41.064896, 40.001240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631557, 41.696735, 39.489414>,  <35.119640, 41.319172, 39.669643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631557, 41.696735, 39.489414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.814884, 41.356392, 39.592163>,  <35.924881, 41.152187, 39.653812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.814884, 41.356392, 39.592163>,  <35.631557, 41.696735, 39.489414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814884, 41.356392, 39.592163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657479, 0.130103, -0.742155,
		0.598051, 0.509029, 0.619051,
		0.458319, -0.850860, 0.256868,
		35.952381, 41.101135, 39.669224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353897, 41.900261, 39.507362>,  <35.631557, 41.696735, 39.489414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353897, 41.900261, 39.507362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.334881, 41.509541, 39.423847>,  <36.323471, 41.275108, 39.373737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.334881, 41.509541, 39.423847>,  <36.353897, 41.900261, 39.507362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334881, 41.509541, 39.423847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633046, 0.132217, -0.762739,
		0.772653, -0.168433, 0.612077,
		-0.047543, -0.976806, -0.208783,
		36.320618, 41.216499, 39.361214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.280205, 33.082500, 27.989813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114994, 32.725895, 27.915394>,  <30.015867, 32.511932, 27.870743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114994, 32.725895, 27.915394>,  <30.280205, 33.082500, 27.989813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114994, 32.725895, 27.915394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875954, 0.332981, 0.349039,
		-0.249223, 0.307131, -0.918454,
		-0.413029, -0.891512, -0.186046,
		29.991085, 32.458443, 27.859581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495655, 33.095440, 27.628904>,  <30.280205, 33.082500, 27.989813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495655, 33.095440, 27.628904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555788, 32.743530, 27.809303>,  <29.591867, 32.532383, 27.917543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555788, 32.743530, 27.809303>,  <29.495655, 33.095440, 27.628904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555788, 32.743530, 27.809303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888395, 0.079937, 0.452066,
		-0.433767, -0.468624, -0.769570,
		0.150332, -0.879774, 0.450997,
		29.600887, 32.479599, 27.944603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733749, 32.734482, 27.620491>,  <29.495655, 33.095440, 27.628904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733749, 32.734482, 27.620491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969233, 32.556496, 27.890432>,  <29.110523, 32.449703, 28.052397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969233, 32.556496, 27.890432>,  <28.733749, 32.734482, 27.620491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969233, 32.556496, 27.890432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781699, -0.100790, 0.615458,
		-0.205839, -0.889858, -0.407165,
		0.588708, -0.444965, 0.674855,
		29.145845, 32.423008, 28.092890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298616, 32.243568, 27.942095>,  <28.733749, 32.734482, 27.620491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298616, 32.243568, 27.942095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614588, 32.297657, 28.181337>,  <28.804171, 32.330112, 28.324883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614588, 32.297657, 28.181337>,  <28.298616, 32.243568, 27.942095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614588, 32.297657, 28.181337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600477, -0.027080, 0.799183,
		0.124267, -0.990445, 0.059809,
		0.789927, 0.135225, 0.598104,
		28.851566, 32.338223, 28.360769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223967, 31.725214, 28.358303>,  <28.298616, 32.243568, 27.942095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223967, 31.725214, 28.358303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.445381, 32.001980, 28.543711>,  <28.578230, 32.168041, 28.654955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.445381, 32.001980, 28.543711>,  <28.223967, 31.725214, 28.358303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445381, 32.001980, 28.543711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644596, 0.003529, 0.764515,
		0.527345, -0.721969, 0.447960,
		0.553537, 0.691917, 0.463517,
		28.611443, 32.209557, 28.682766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200235, 31.582033, 29.123116>,  <28.223967, 31.725214, 28.358303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200235, 31.582033, 29.123116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347704, 31.953140, 29.100031>,  <28.436184, 32.175804, 29.086180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347704, 31.953140, 29.100031>,  <28.200235, 31.582033, 29.123116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347704, 31.953140, 29.100031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453295, 0.233635, 0.860197,
		0.811546, -0.290968, 0.506686,
		0.368669, 0.927767, -0.057711,
		28.458305, 32.231472, 29.082718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596348, 31.692327, 29.658201>,  <28.200235, 31.582033, 29.123116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596348, 31.692327, 29.658201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464157, 32.051250, 29.541153>,  <28.384844, 32.266605, 29.470924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464157, 32.051250, 29.541153>,  <28.596348, 31.692327, 29.658201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464157, 32.051250, 29.541153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382664, 0.156029, 0.910617,
		0.862759, 0.412913, 0.291803,
		-0.330476, 0.897306, -0.292623,
		28.365015, 32.320442, 29.453365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801374, 32.032646, 30.205683>,  <28.596348, 31.692327, 29.658201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801374, 32.032646, 30.205683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531830, 32.254230, 30.010115>,  <28.370104, 32.387180, 29.892773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531830, 32.254230, 30.010115>,  <28.801374, 32.032646, 30.205683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531830, 32.254230, 30.010115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335706, 0.359925, 0.870492,
		0.658190, 0.750723, -0.056572,
		-0.673860, 0.553957, -0.488921,
		28.329672, 32.420418, 29.863438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861410, 32.754284, 30.477694>,  <28.801374, 32.032646, 30.205683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861410, 32.754284, 30.477694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498940, 32.716232, 30.312870>,  <28.281456, 32.693401, 30.213976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498940, 32.716232, 30.312870>,  <28.861410, 32.754284, 30.477694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498940, 32.716232, 30.312870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401402, 0.500167, 0.767274,
		0.133108, 0.860688, -0.491425,
		-0.906178, -0.095129, -0.412058,
		28.227087, 32.687695, 30.189253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570898, 33.444622, 30.556267>,  <28.861410, 32.754284, 30.477694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570898, 33.444622, 30.556267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.249273, 33.217258, 30.486530>,  <28.056299, 33.080841, 30.444689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.249273, 33.217258, 30.486530>,  <28.570898, 33.444622, 30.556267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249273, 33.217258, 30.486530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433901, 0.360538, 0.825677,
		-0.406468, 0.739540, -0.536529,
		-0.804061, -0.568412, -0.174340,
		28.008055, 33.046734, 30.434229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102137, 33.802265, 30.880690>,  <28.570898, 33.444622, 30.556267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102137, 33.802265, 30.880690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878143, 33.474693, 30.830448>,  <27.743748, 33.278152, 30.800303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878143, 33.474693, 30.830448>,  <28.102137, 33.802265, 30.880690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878143, 33.474693, 30.830448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464048, 0.184433, 0.866397,
		-0.686351, 0.543454, -0.483302,
		-0.559984, -0.818927, -0.125603,
		27.710148, 33.229015, 30.792767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360628, 34.039093, 30.951706>,  <28.102137, 33.802265, 30.880690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360628, 34.039093, 30.951706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363405, 33.649712, 31.043213>,  <27.365070, 33.416080, 31.098118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363405, 33.649712, 31.043213>,  <27.360628, 34.039093, 30.951706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363405, 33.649712, 31.043213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445918, 0.201754, 0.872039,
		-0.895047, -0.108064, -0.432682,
		0.006941, -0.973456, 0.228767,
		27.365488, 33.357674, 31.111843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643105, 33.817211, 31.149467>,  <27.360628, 34.039093, 30.951706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643105, 33.817211, 31.149467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.892155, 33.545132, 31.304214>,  <27.041584, 33.381882, 31.397062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.892155, 33.545132, 31.304214>,  <26.643105, 33.817211, 31.149467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892155, 33.545132, 31.304214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497161, 0.037934, 0.866828,
		-0.604293, -0.732044, -0.314551,
		0.622624, -0.680201, 0.386867,
		27.078941, 33.341072, 31.420275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227690, 33.339920, 31.463108>,  <26.643105, 33.817211, 31.149467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227690, 33.339920, 31.463108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584366, 33.296520, 31.638887>,  <26.798372, 33.270481, 31.744354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584366, 33.296520, 31.638887>,  <26.227690, 33.339920, 31.463108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584366, 33.296520, 31.638887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439701, 0.022867, 0.897853,
		-0.107467, -0.993833, -0.027318,
		0.891691, -0.108502, 0.439447,
		26.851873, 33.263969, 31.770721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053612, 32.905445, 31.954634>,  <26.227690, 33.339920, 31.463108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053612, 32.905445, 31.954634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.412830, 33.036446, 32.072113>,  <26.628361, 33.115044, 32.142601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.412830, 33.036446, 32.072113>,  <26.053612, 32.905445, 31.954634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412830, 33.036446, 32.072113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386561, 0.268838, 0.882211,
		0.209961, -0.905800, 0.368026,
		0.898046, 0.327495, 0.293701,
		26.682243, 33.134693, 32.160225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164877, 32.682064, 32.673496>,  <26.053612, 32.905445, 31.954634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164877, 32.682064, 32.673496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.399206, 33.003422, 32.630840>,  <26.539804, 33.196236, 32.605247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.399206, 33.003422, 32.630840>,  <26.164877, 32.682064, 32.673496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399206, 33.003422, 32.630840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338389, 0.362039, 0.868574,
		0.736413, -0.472745, 0.483950,
		0.585823, 0.803392, -0.106639,
		26.574953, 33.244438, 32.598850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297623, 32.792042, 33.450218>,  <26.164877, 32.682064, 32.673496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297623, 32.792042, 33.450218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423586, 33.114120, 33.249222>,  <26.499165, 33.307365, 33.128624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423586, 33.114120, 33.249222>,  <26.297623, 32.792042, 33.450218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423586, 33.114120, 33.249222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249559, 0.581041, 0.774668,
		0.915725, -0.118550, 0.383919,
		0.314910, 0.805194, -0.502489,
		26.518059, 33.355679, 33.098476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666979, 33.175156, 33.975220>,  <26.297623, 32.792042, 33.450218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666979, 33.175156, 33.975220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584696, 33.448765, 33.695278>,  <26.535326, 33.612930, 33.527313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584696, 33.448765, 33.695278>,  <26.666979, 33.175156, 33.975220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584696, 33.448765, 33.695278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359924, 0.612143, 0.704085,
		0.910021, 0.396731, 0.120273,
		-0.205708, 0.684021, -0.699857,
		26.522984, 33.653973, 33.485321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730656, 33.756981, 34.355343>,  <26.666979, 33.175156, 33.975220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730656, 33.756981, 34.355343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543989, 33.854614, 34.015308>,  <26.431990, 33.913193, 33.811287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543989, 33.854614, 34.015308>,  <26.730656, 33.756981, 34.355343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543989, 33.854614, 34.015308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496730, 0.722918, 0.480259,
		0.731765, 0.646384, -0.216118,
		-0.466668, 0.244084, -0.850085,
		26.403988, 33.927841, 33.760284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849047, 34.443661, 34.280674>,  <26.730656, 33.756981, 34.355343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849047, 34.443661, 34.280674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519632, 34.340740, 34.078453>,  <26.321983, 34.278988, 33.957119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519632, 34.340740, 34.078453>,  <26.849047, 34.443661, 34.280674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519632, 34.340740, 34.078453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546034, 0.601093, 0.583553,
		0.153740, 0.756628, -0.635514,
		-0.823535, -0.257297, -0.505557,
		26.272572, 34.263550, 33.926785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402411, 35.019211, 34.572021>,  <26.849047, 34.443661, 34.280674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402411, 35.019211, 34.572021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588976, 34.763390, 34.816456>,  <27.700916, 34.609898, 34.963116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588976, 34.763390, 34.816456>,  <27.402411, 35.019211, 34.572021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588976, 34.763390, 34.816456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852509, 0.140710, -0.503417,
		0.235978, 0.755756, 0.610858,
		0.466415, -0.639557, 0.611084,
		27.728901, 34.571522, 34.999783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059797, 35.322701, 34.660328>,  <27.402411, 35.019211, 34.572021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059797, 35.322701, 34.660328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079155, 34.932236, 34.744965>,  <28.090771, 34.697956, 34.795746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079155, 34.932236, 34.744965>,  <28.059797, 35.322701, 34.660328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079155, 34.932236, 34.744965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811419, -0.085112, -0.578235,
		0.582458, 0.199677, 0.787954,
		0.048396, -0.976158, 0.211596,
		28.093674, 34.639389, 34.808445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800499, 35.252354, 34.761253>,  <28.059797, 35.322701, 34.660328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800499, 35.252354, 34.761253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.661764, 34.883041, 34.695206>,  <28.578524, 34.661453, 34.655579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.661764, 34.883041, 34.695206>,  <28.800499, 35.252354, 34.761253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661764, 34.883041, 34.695206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821514, -0.214099, -0.528465,
		0.452569, -0.318936, 0.832743,
		-0.346836, -0.923278, -0.165116,
		28.557713, 34.606056, 34.645672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436621, 34.811165, 34.544849>,  <28.800499, 35.252354, 34.761253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436621, 34.811165, 34.544849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.126057, 34.581425, 34.441078>,  <28.939718, 34.443581, 34.378815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.126057, 34.581425, 34.441078>,  <29.436621, 34.811165, 34.544849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126057, 34.581425, 34.441078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516237, -0.343473, -0.784555,
		0.361502, -0.743066, 0.563177,
		-0.776412, -0.574351, -0.259432,
		28.893133, 34.409119, 34.363247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757771, 34.310638, 34.229057>,  <29.436621, 34.811165, 34.544849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757771, 34.310638, 34.229057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.390041, 34.278225, 34.075031>,  <29.169403, 34.258778, 33.982616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.390041, 34.278225, 34.075031>,  <29.757771, 34.310638, 34.229057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390041, 34.278225, 34.075031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384569, -0.392294, -0.835591,
		-0.083351, -0.916264, 0.391808,
		-0.919326, -0.081030, -0.385065,
		29.114244, 34.253918, 33.959511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708557, 33.664497, 33.899235>,  <29.757771, 34.310638, 34.229057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708557, 33.664497, 33.899235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412922, 33.870499, 33.725559>,  <29.235540, 33.994099, 33.621353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412922, 33.870499, 33.725559>,  <29.708557, 33.664497, 33.899235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412922, 33.870499, 33.725559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190655, -0.458278, -0.868120,
		-0.646066, -0.724396, 0.240519,
		-0.739087, 0.515007, -0.434187,
		29.191196, 34.025002, 33.595303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312952, 33.173874, 33.447071>,  <29.708557, 33.664497, 33.899235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312952, 33.173874, 33.447071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.241112, 33.538357, 33.298779>,  <29.198008, 33.757046, 33.209801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.241112, 33.538357, 33.298779>,  <29.312952, 33.173874, 33.447071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241112, 33.538357, 33.298779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165964, -0.343394, -0.924411,
		-0.969639, -0.227555, -0.089553,
		-0.179602, 0.911208, -0.370734,
		29.187231, 33.811718, 33.187557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946371, 33.058163, 32.821304>,  <29.312952, 33.173874, 33.447071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946371, 33.058163, 32.821304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116436, 33.419182, 32.794064>,  <29.218475, 33.635796, 32.777718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116436, 33.419182, 32.794064>,  <28.946371, 33.058163, 32.821304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116436, 33.419182, 32.794064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322965, -0.221566, -0.920110,
		-0.845536, 0.369201, -0.385694,
		0.425162, 0.902551, -0.068103,
		29.243984, 33.689949, 32.773632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056723, 33.113079, 32.104305>,  <28.946371, 33.058163, 32.821304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056723, 33.113079, 32.104305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229183, 33.443409, 32.249699>,  <29.332661, 33.641605, 32.336933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229183, 33.443409, 32.249699>,  <29.056723, 33.113079, 32.104305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229183, 33.443409, 32.249699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496762, 0.119033, -0.859685,
		-0.753216, 0.551221, -0.358917,
		0.431154, 0.825825, 0.363483,
		29.358530, 33.691158, 32.358742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072033, 33.571148, 31.583080>,  <29.056723, 33.113079, 32.104305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072033, 33.571148, 31.583080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.373308, 33.692188, 31.816711>,  <29.554073, 33.764812, 31.956890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.373308, 33.692188, 31.816711>,  <29.072033, 33.571148, 31.583080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373308, 33.692188, 31.816711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606211, 0.025418, -0.794898,
		-0.255381, 0.952779, -0.164295,
		0.753186, 0.302599, 0.584076,
		29.599264, 33.782967, 31.991934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453123, 34.090546, 31.217459>,  <29.072033, 33.571148, 31.583080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453123, 34.090546, 31.217459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.724577, 33.959194, 31.480249>,  <29.887449, 33.880383, 31.637924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.724577, 33.959194, 31.480249>,  <29.453123, 34.090546, 31.217459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724577, 33.959194, 31.480249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625851, -0.209608, -0.751249,
		0.384404, 0.920994, 0.063271,
		0.678634, -0.328382, 0.656979,
		29.928167, 33.860680, 31.677343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983473, 34.050697, 30.805624>,  <29.453123, 34.090546, 31.217459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983473, 34.050697, 30.805624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135643, 33.896507, 31.141884>,  <30.226946, 33.803993, 31.343639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135643, 33.896507, 31.141884>,  <29.983473, 34.050697, 30.805624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135643, 33.896507, 31.141884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797244, -0.323990, -0.509345,
		0.468699, 0.863969, 0.184061,
		0.380425, -0.385471, 0.840648,
		30.249771, 33.780865, 31.394077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650589, 34.237270, 30.784660>,  <29.983473, 34.050697, 30.805624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650589, 34.237270, 30.784660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661573, 33.927887, 31.037960>,  <30.668163, 33.742256, 31.189939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661573, 33.927887, 31.037960>,  <30.650589, 34.237270, 30.784660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661573, 33.927887, 31.037960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812589, -0.351677, -0.464781,
		0.582189, 0.527335, 0.618849,
		0.027461, -0.773461, 0.633249,
		30.669811, 33.695850, 31.227934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334248, 34.234173, 31.192921>,  <30.650589, 34.237270, 30.784660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334248, 34.234173, 31.192921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.165564, 33.871571, 31.184839>,  <31.064352, 33.654011, 31.179991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.165564, 33.871571, 31.184839>,  <31.334248, 34.234173, 31.192921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165564, 33.871571, 31.184839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850969, -0.387987, -0.354001,
		0.313065, -0.166478, 0.935027,
		-0.421712, -0.906505, -0.020202,
		31.039049, 33.599621, 31.178778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747969, 33.722591, 31.479380>,  <31.334248, 34.234173, 31.192921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747969, 33.722591, 31.479380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.515226, 33.503124, 31.239246>,  <31.375580, 33.371445, 31.095167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.515226, 33.503124, 31.239246>,  <31.747969, 33.722591, 31.479380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515226, 33.503124, 31.239246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813251, -0.385286, -0.436093,
		0.007972, -0.741966, 0.670391,
		-0.581858, -0.548673, -0.600333,
		31.340670, 33.338524, 31.059147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011410, 33.045086, 31.453209>,  <31.747969, 33.722591, 31.479380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011410, 33.045086, 31.453209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.789284, 33.053825, 31.120667>,  <31.656008, 33.059071, 30.921141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.789284, 33.053825, 31.120667>,  <32.011410, 33.045086, 31.453209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789284, 33.053825, 31.120667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755041, -0.405810, -0.515007,
		-0.348625, -0.913696, 0.208852,
		-0.555314, 0.021852, -0.831354,
		31.622690, 33.060383, 30.871260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039543, 32.387535, 31.226458>,  <32.011410, 33.045086, 31.453209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039543, 32.387535, 31.226458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.949926, 32.640030, 30.929449>,  <31.896154, 32.791527, 30.751244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.949926, 32.640030, 30.929449>,  <32.039543, 32.387535, 31.226458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949926, 32.640030, 30.929449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722708, -0.403530, -0.561121,
		-0.653832, -0.662343, -0.365793,
		-0.224046, 0.631241, -0.742522,
		31.882713, 32.829403, 30.706692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187485, 31.956438, 30.602324>,  <32.039543, 32.387535, 31.226458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187485, 31.956438, 30.602324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.162098, 32.340420, 30.493174>,  <32.146866, 32.570808, 30.427685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.162098, 32.340420, 30.493174>,  <32.187485, 31.956438, 30.602324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162098, 32.340420, 30.493174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612451, -0.178416, -0.770111,
		-0.787956, -0.215999, -0.576602,
		-0.063468, 0.959954, -0.272873,
		32.143059, 32.628407, 30.411312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942993, 31.964476, 29.928099>,  <32.187485, 31.956438, 30.602324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942993, 31.964476, 29.928099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.120682, 32.320511, 29.968906>,  <32.227295, 32.534134, 29.993391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.120682, 32.320511, 29.968906>,  <31.942993, 31.964476, 29.928099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120682, 32.320511, 29.968906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664570, -0.251000, -0.703808,
		-0.600846, 0.380446, -0.703026,
		0.444221, 0.890090, 0.102020,
		32.253948, 32.587540, 29.999512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928802, 32.202831, 29.260393>,  <31.942993, 31.964476, 29.928099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928802, 32.202831, 29.260393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.212395, 32.435303, 29.420181>,  <32.382549, 32.574787, 29.516054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.212395, 32.435303, 29.420181>,  <31.928802, 32.202831, 29.260393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212395, 32.435303, 29.420181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526115, -0.058679, -0.848386,
		-0.469624, 0.811657, -0.347369,
		0.708982, 0.581179, 0.399468,
		32.425091, 32.609657, 29.540022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969051, 32.703285, 28.803694>,  <31.928802, 32.202831, 29.260393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969051, 32.703285, 28.803694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.305431, 32.686947, 29.019522>,  <32.507259, 32.677143, 29.149019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.305431, 32.686947, 29.019522>,  <31.969051, 32.703285, 28.803694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305431, 32.686947, 29.019522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540780, 0.028442, -0.840683,
		0.018993, 0.998761, 0.046008,
		0.840949, -0.040848, 0.539570,
		32.557716, 32.674694, 29.181393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527149, 33.118839, 28.390741>,  <31.969051, 32.703285, 28.803694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527149, 33.118839, 28.390741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.769646, 32.910366, 28.631021>,  <32.915146, 32.785282, 28.775188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.769646, 32.910366, 28.631021>,  <32.527149, 33.118839, 28.390741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769646, 32.910366, 28.631021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591332, -0.209661, -0.778697,
		0.531784, 0.827293, 0.181084,
		0.606244, -0.521180, 0.600699,
		32.951519, 32.754013, 28.811232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.592701, 41.818085, 45.841919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201519, 41.741474, 45.875195>,  <36.966808, 41.695507, 45.895161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201519, 41.741474, 45.875195>,  <37.592701, 41.818085, 45.841919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201519, 41.741474, 45.875195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092948, 0.756010, 0.647928,
		-0.186987, 0.625912, -0.757146,
		-0.977955, -0.191529, 0.083186,
		36.908131, 41.684017, 45.900150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275436, 42.454071, 45.835785>,  <37.592701, 41.818085, 45.841919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275436, 42.454071, 45.835785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998821, 42.217709, 46.001968>,  <36.832851, 42.075890, 46.101677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998821, 42.217709, 46.001968>,  <37.275436, 42.454071, 45.835785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998821, 42.217709, 46.001968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334401, 0.771701, 0.540975,
		-0.640277, 0.235173, -0.731259,
		-0.691536, -0.590908, 0.415460,
		36.791359, 42.040436, 46.126606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699669, 42.799873, 45.774200>,  <37.275436, 42.454071, 45.835785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699669, 42.799873, 45.774200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587673, 42.533962, 46.051235>,  <36.520477, 42.374416, 46.217457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.587673, 42.533962, 46.051235>,  <36.699669, 42.799873, 45.774200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587673, 42.533962, 46.051235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505130, 0.715513, 0.482581,
		-0.816363, -0.214727, -0.536137,
		-0.279990, -0.664780, 0.692584,
		36.503677, 42.334530, 46.259010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025467, 43.029778, 45.908676>,  <36.699669, 42.799873, 45.774200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025467, 43.029778, 45.908676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156364, 42.801685, 46.210072>,  <36.234901, 42.664829, 46.390911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156364, 42.801685, 46.210072>,  <36.025467, 43.029778, 45.908676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156364, 42.801685, 46.210072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511602, 0.563502, 0.648636,
		-0.794467, -0.597748, -0.107331,
		0.327239, -0.570231, 0.753493,
		36.254536, 42.630615, 46.436119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430229, 42.868217, 46.322613>,  <36.025467, 43.029778, 45.908676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430229, 42.868217, 46.322613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754375, 42.857071, 46.556713>,  <35.948864, 42.850384, 46.697174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754375, 42.857071, 46.556713>,  <35.430229, 42.868217, 46.322613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754375, 42.857071, 46.556713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526878, 0.402320, 0.748691,
		-0.256321, -0.915075, 0.311347,
		0.810370, -0.027864, 0.585256,
		35.997486, 42.848713, 46.732288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166149, 42.712433, 46.959484>,  <35.430229, 42.868217, 46.322613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166149, 42.712433, 46.959484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525665, 42.839996, 47.079803>,  <35.741375, 42.916534, 47.151993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525665, 42.839996, 47.079803>,  <35.166149, 42.712433, 46.959484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525665, 42.839996, 47.079803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406040, 0.346926, 0.845443,
		0.165266, -0.882009, 0.441302,
		0.898787, 0.318909, 0.300796,
		35.795303, 42.935669, 47.170040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190590, 42.382858, 47.589478>,  <35.166149, 42.712433, 46.959484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190590, 42.382858, 47.589478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441212, 42.692932, 47.557209>,  <35.591587, 42.878979, 47.537849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441212, 42.692932, 47.557209>,  <35.190590, 42.382858, 47.589478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441212, 42.692932, 47.557209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500779, 0.479735, 0.720469,
		0.597198, -0.411019, 0.688780,
		0.626558, 0.775189, -0.080667,
		35.629181, 42.925488, 47.533009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410297, 42.475666, 48.281895>,  <35.190590, 42.382858, 47.589478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410297, 42.475666, 48.281895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476089, 42.807587, 48.068588>,  <35.515564, 43.006741, 47.940605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476089, 42.807587, 48.068588>,  <35.410297, 42.475666, 48.281895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476089, 42.807587, 48.068588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522390, 0.531870, 0.666501,
		0.836692, 0.168945, 0.520964,
		0.164483, 0.829802, -0.533266,
		35.525433, 43.056526, 47.908607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693478, 42.944054, 48.759399>,  <35.410297, 42.475666, 48.281895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693478, 42.944054, 48.759399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519905, 43.149246, 48.463142>,  <35.415764, 43.272362, 48.285389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519905, 43.149246, 48.463142>,  <35.693478, 42.944054, 48.759399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519905, 43.149246, 48.463142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547015, 0.503193, 0.669008,
		0.715877, 0.695445, 0.062261,
		-0.433929, 0.512985, -0.740643,
		35.389725, 43.303143, 48.240948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794071, 43.699287, 48.899422>,  <35.693478, 42.944054, 48.759399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794071, 43.699287, 48.899422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469048, 43.659149, 48.669750>,  <35.274033, 43.635067, 48.531948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469048, 43.659149, 48.669750>,  <35.794071, 43.699287, 48.899422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469048, 43.659149, 48.669750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534100, 0.522668, 0.664496,
		0.233425, 0.846610, -0.478293,
		-0.812558, -0.100346, -0.574178,
		35.225281, 43.629044, 48.497498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480690, 44.452312, 48.926445>,  <35.794071, 43.699287, 48.899422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480690, 44.452312, 48.926445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208050, 44.208008, 48.765255>,  <35.044464, 44.061424, 48.668541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208050, 44.208008, 48.765255>,  <35.480690, 44.452312, 48.926445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208050, 44.208008, 48.765255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699058, 0.380827, 0.605218,
		-0.216182, 0.694219, -0.686531,
		-0.681604, -0.610762, -0.402972,
		35.003567, 44.024780, 48.644363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939541, 44.912273, 48.721806>,  <35.480690, 44.452312, 48.926445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939541, 44.912273, 48.721806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761898, 44.555027, 48.750431>,  <34.655312, 44.340679, 48.767609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761898, 44.555027, 48.750431>,  <34.939541, 44.912273, 48.721806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761898, 44.555027, 48.750431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714658, 0.401278, 0.572922,
		-0.540401, 0.203293, -0.816479,
		-0.444106, -0.893111, 0.071566,
		34.628666, 44.287094, 48.771900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145939, 44.885662, 48.479397>,  <34.939541, 44.912273, 48.721806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145939, 44.885662, 48.479397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227020, 44.630386, 48.776482>,  <34.275669, 44.477222, 48.954735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227020, 44.630386, 48.776482>,  <34.145939, 44.885662, 48.479397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227020, 44.630386, 48.776482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833374, 0.285837, 0.473059,
		-0.514196, -0.714853, -0.473907,
		0.202708, -0.638187, 0.742716,
		34.287834, 44.438931, 48.999298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487228, 44.449024, 48.744453>,  <34.145939, 44.885662, 48.479397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487228, 44.449024, 48.744453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761528, 44.505447, 49.030067>,  <33.926109, 44.539303, 49.201435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761528, 44.505447, 49.030067>,  <33.487228, 44.449024, 48.744453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761528, 44.505447, 49.030067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689307, 0.440836, 0.574908,
		-0.233678, -0.886434, 0.399536,
		0.685748, 0.141059, 0.714039,
		33.967251, 44.547764, 49.244278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895229, 44.811810, 48.703926>,  <33.487228, 44.449024, 48.744453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895229, 44.811810, 48.703926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643387, 45.026455, 48.479198>,  <32.492283, 45.155243, 48.344360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643387, 45.026455, 48.479198>,  <32.895229, 44.811810, 48.703926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643387, 45.026455, 48.479198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153850, -0.622704, -0.767183,
		-0.761531, -0.569457, 0.309498,
		-0.629604, 0.536618, -0.561819,
		32.454506, 45.187439, 48.310654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509087, 44.291641, 48.301735>,  <32.895229, 44.811810, 48.703926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509087, 44.291641, 48.301735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512699, 44.645466, 48.115196>,  <32.514866, 44.857761, 48.003273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512699, 44.645466, 48.115196>,  <32.509087, 44.291641, 48.301735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512699, 44.645466, 48.115196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203722, -0.458209, -0.865183,
		-0.978987, -0.087190, -0.184342,
		0.009032, 0.884558, -0.466343,
		32.515408, 44.910831, 47.975292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138168, 44.153976, 47.741058>,  <32.509087, 44.291641, 48.301735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138168, 44.153976, 47.741058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325943, 44.492306, 47.639698>,  <32.438606, 44.695305, 47.578880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325943, 44.492306, 47.639698>,  <32.138168, 44.153976, 47.741058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325943, 44.492306, 47.639698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128379, -0.349318, -0.928168,
		-0.873586, 0.403181, -0.272568,
		0.469432, 0.845826, -0.253400,
		32.466774, 44.746052, 47.563679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856823, 44.287106, 47.094021>,  <32.138168, 44.153976, 47.741058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856823, 44.287106, 47.094021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193684, 44.502766, 47.097900>,  <32.395802, 44.632164, 47.100227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193684, 44.502766, 47.097900>,  <31.856823, 44.287106, 47.094021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193684, 44.502766, 47.097900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210215, -0.311686, -0.926640,
		-0.496578, 0.782411, -0.375824,
		0.842152, 0.539153, 0.009698,
		32.446331, 44.664513, 47.100811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860500, 44.696651, 46.414856>,  <31.856823, 44.287106, 47.094021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860500, 44.696651, 46.414856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.237293, 44.680492, 46.548141>,  <32.463371, 44.670799, 46.628113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.237293, 44.680492, 46.548141>,  <31.860500, 44.696651, 46.414856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237293, 44.680492, 46.548141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285592, -0.425138, -0.858892,
		0.176359, 0.904227, -0.388936,
		0.941984, -0.040396, 0.333217,
		32.519890, 44.668373, 46.648106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227745, 44.903004, 45.879902>,  <31.860500, 44.696651, 46.414856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227745, 44.903004, 45.879902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474796, 44.695950, 46.116749>,  <32.623028, 44.571716, 46.258858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474796, 44.695950, 46.116749>,  <32.227745, 44.903004, 45.879902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474796, 44.695950, 46.116749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405779, -0.435193, -0.803710,
		0.673709, 0.736658, -0.058741,
		0.617624, -0.517631, 0.592114,
		32.660084, 44.540661, 46.294384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899319, 45.022949, 45.593475>,  <32.227745, 44.903004, 45.879902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899319, 45.022949, 45.593475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907146, 44.696198, 45.824066>,  <32.911842, 44.500145, 45.962421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907146, 44.696198, 45.824066>,  <32.899319, 45.022949, 45.593475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907146, 44.696198, 45.824066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383098, -0.526456, -0.758999,
		0.923500, 0.235698, 0.302644,
		0.019565, -0.816878, 0.576478,
		32.913017, 44.451134, 45.997009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515091, 44.757008, 45.412575>,  <32.899319, 45.022949, 45.593475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515091, 44.757008, 45.412575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352974, 44.433258, 45.582592>,  <33.255703, 44.239010, 45.684601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352974, 44.433258, 45.582592>,  <33.515091, 44.757008, 45.412575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352974, 44.433258, 45.582592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382684, -0.572445, -0.725162,
		0.830236, -0.131246, 0.541740,
		-0.405291, -0.809371, 0.425039,
		33.231388, 44.190445, 45.710102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091045, 44.218369, 45.417416>,  <33.515091, 44.757008, 45.412575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091045, 44.218369, 45.417416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749100, 44.018227, 45.472340>,  <33.543934, 43.898140, 45.505295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749100, 44.018227, 45.472340>,  <34.091045, 44.218369, 45.417416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749100, 44.018227, 45.472340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283614, -0.672226, -0.683868,
		0.434483, -0.545668, 0.716568,
		-0.854861, -0.500358, 0.137312,
		33.492641, 43.868118, 45.513535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231903, 43.430794, 45.490379>,  <34.091045, 44.218369, 45.417416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231903, 43.430794, 45.490379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855652, 43.487392, 45.366966>,  <33.629902, 43.521351, 45.292919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855652, 43.487392, 45.366966>,  <34.231903, 43.430794, 45.490379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855652, 43.487392, 45.366966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129451, -0.690723, -0.711438,
		-0.313775, -0.709141, 0.631399,
		-0.940632, 0.141496, -0.308531,
		33.573463, 43.529842, 45.274406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078934, 42.790173, 45.280403>,  <34.231903, 43.430794, 45.490379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078934, 42.790173, 45.280403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800476, 43.037609, 45.134682>,  <33.633400, 43.186073, 45.047249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800476, 43.037609, 45.134682>,  <34.078934, 42.790173, 45.280403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800476, 43.037609, 45.134682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146705, -0.619334, -0.771299,
		-0.702750, -0.483492, 0.521899,
		-0.696147, 0.618596, -0.364306,
		33.591633, 43.223186, 45.025391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497028, 42.327724, 45.095642>,  <34.078934, 42.790173, 45.280403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497028, 42.327724, 45.095642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483025, 42.667923, 44.885715>,  <33.474625, 42.872044, 44.759762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483025, 42.667923, 44.885715>,  <33.497028, 42.327724, 45.095642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483025, 42.667923, 44.885715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083285, -0.525790, -0.846527,
		-0.995911, 0.014076, 0.089239,
		-0.035005, 0.850498, -0.524812,
		33.472523, 42.923073, 44.728271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106808, 42.163094, 44.437645>,  <33.497028, 42.327724, 45.095642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106808, 42.163094, 44.437645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301174, 42.506084, 44.369976>,  <33.417793, 42.711880, 44.329372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301174, 42.506084, 44.369976>,  <33.106808, 42.163094, 44.437645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301174, 42.506084, 44.369976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063003, -0.227423, -0.971756,
		-0.871733, 0.461530, -0.164532,
		0.485913, 0.857478, -0.169175,
		33.446949, 42.763329, 44.319225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832844, 42.390289, 43.767174>,  <33.106808, 42.163094, 44.437645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832844, 42.390289, 43.767174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184696, 42.576828, 43.804630>,  <33.395805, 42.688751, 43.827106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184696, 42.576828, 43.804630>,  <32.832844, 42.390289, 43.767174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184696, 42.576828, 43.804630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119628, -0.026349, -0.992469,
		-0.460372, 0.884207, -0.078966,
		0.879629, 0.466351, 0.093646,
		33.448586, 42.716732, 43.832726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332447, 42.766674, 43.410843>,  <32.832844, 42.390289, 43.767174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332447, 42.766674, 43.410843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992193, 42.566467, 43.346466>,  <31.788040, 42.446342, 43.307838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992193, 42.566467, 43.346466>,  <32.332447, 42.766674, 43.410843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992193, 42.566467, 43.346466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262629, 0.139325, 0.954785,
		-0.455462, 0.854442, -0.249965,
		-0.850635, -0.500517, -0.160944,
		31.737003, 42.416313, 43.298183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828392, 43.112114, 43.722927>,  <32.332447, 42.766674, 43.410843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828392, 43.112114, 43.722927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.647728, 42.760334, 43.662838>,  <31.539330, 42.549267, 43.626785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.647728, 42.760334, 43.662838>,  <31.828392, 43.112114, 43.722927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647728, 42.760334, 43.662838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233839, -0.045801, 0.971196,
		-0.861002, 0.473777, -0.184964,
		-0.451659, -0.879453, -0.150222,
		31.512230, 42.496498, 43.617771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360508, 43.174610, 44.127983>,  <31.828392, 43.112114, 43.722927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360508, 43.174610, 44.127983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.356327, 42.778877, 44.069870>,  <31.353819, 42.541435, 44.035004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.356327, 42.778877, 44.069870>,  <31.360508, 43.174610, 44.127983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356327, 42.778877, 44.069870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387697, -0.129917, 0.912586,
		-0.921728, 0.065863, -0.382204,
		-0.010451, -0.989335, -0.145283,
		31.353191, 42.482079, 44.026287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619707, 42.924034, 44.260178>,  <31.360508, 43.174610, 44.127983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619707, 42.924034, 44.260178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.867510, 42.614597, 44.313496>,  <31.016191, 42.428936, 44.345486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.867510, 42.614597, 44.313496>,  <30.619707, 42.924034, 44.260178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867510, 42.614597, 44.313496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334833, -0.106825, 0.936203,
		-0.709997, -0.624618, -0.325202,
		0.619509, -0.773590, 0.133297,
		31.053362, 42.382519, 44.353485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177435, 42.274391, 44.314419>,  <30.619707, 42.924034, 44.260178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177435, 42.274391, 44.314419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.522013, 42.225838, 44.511673>,  <30.728760, 42.196705, 44.630024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.522013, 42.225838, 44.511673>,  <30.177435, 42.274391, 44.314419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522013, 42.225838, 44.511673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496891, -0.000802, 0.867813,
		-0.104947, -0.992605, -0.061008,
		0.861444, -0.121389, 0.493132,
		30.780445, 42.189423, 44.659611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001600, 41.807980, 44.876102>,  <30.177435, 42.274391, 44.314419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001600, 41.807980, 44.876102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.364727, 41.945969, 44.971485>,  <30.582603, 42.028763, 45.028717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.364727, 41.945969, 44.971485>,  <30.001600, 41.807980, 44.876102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364727, 41.945969, 44.971485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260880, 0.019356, 0.965177,
		0.328340, -0.938414, 0.107567,
		0.907818, 0.344969, 0.238459,
		30.637074, 42.049458, 45.043022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191391, 41.523109, 45.398388>,  <30.001600, 41.807980, 44.876102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191391, 41.523109, 45.398388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.436916, 41.837326, 45.429768>,  <30.584230, 42.025856, 45.448597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.436916, 41.837326, 45.429768>,  <30.191391, 41.523109, 45.398388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436916, 41.837326, 45.429768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201324, 0.059671, 0.977705,
		0.763350, -0.615921, 0.194776,
		0.613812, 0.785545, 0.078450,
		30.621059, 42.072990, 45.453304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036995, 40.861851, 45.783703>,  <30.191391, 41.523109, 45.398388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036995, 40.861851, 45.783703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.833937, 40.588821, 45.993996>,  <29.712103, 40.425003, 46.120171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.833937, 40.588821, 45.993996>,  <30.036995, 40.861851, 45.783703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833937, 40.588821, 45.993996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169152, -0.677284, -0.716012,
		0.844799, -0.274551, 0.459278,
		-0.507644, -0.682574, 0.525728,
		29.681643, 40.384048, 46.151714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525503, 40.355286, 45.915474>,  <30.036995, 40.861851, 45.783703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525503, 40.355286, 45.915474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163910, 40.185600, 45.936867>,  <29.946955, 40.083790, 45.949703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163910, 40.185600, 45.936867>,  <30.525503, 40.355286, 45.915474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163910, 40.185600, 45.936867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318462, -0.751479, -0.577807,
		0.285304, -0.505295, 0.814419,
		-0.903982, -0.424212, 0.053483,
		29.892715, 40.058338, 45.952911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591820, 39.520615, 45.998787>,  <30.525503, 40.355286, 45.915474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591820, 39.520615, 45.998787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.212784, 39.589325, 45.891033>,  <29.985363, 39.630550, 45.826382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.212784, 39.589325, 45.891033>,  <30.591820, 39.520615, 45.998787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212784, 39.589325, 45.891033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067791, -0.715856, -0.694950,
		-0.312218, -0.676788, 0.666692,
		-0.947589, 0.171780, -0.269383,
		29.928507, 39.640858, 45.810219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283413, 38.825497, 45.923046>,  <30.591820, 39.520615, 45.998787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283413, 38.825497, 45.923046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.081980, 39.102295, 45.716148>,  <29.961119, 39.268375, 45.592010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.081980, 39.102295, 45.716148>,  <30.283413, 38.825497, 45.923046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081980, 39.102295, 45.716148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009337, -0.603020, -0.797671,
		-0.863895, -0.396866, 0.310134,
		-0.503585, 0.692000, -0.517241,
		29.930904, 39.309895, 45.560978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784168, 38.467064, 45.565872>,  <30.283413, 38.825497, 45.923046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784168, 38.467064, 45.565872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.786842, 38.819366, 45.376461>,  <29.788446, 39.030746, 45.262814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.786842, 38.819366, 45.376461>,  <29.784168, 38.467064, 45.565872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786842, 38.819366, 45.376461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051049, -0.473220, -0.879464,
		-0.998674, -0.018292, -0.048126,
		0.006687, 0.880755, -0.473526,
		29.788849, 39.083591, 45.234402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312401, 38.323624, 44.992916>,  <29.784168, 38.467064, 45.565872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312401, 38.323624, 44.992916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.543993, 38.638290, 44.907188>,  <29.682947, 38.827091, 44.855751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.543993, 38.638290, 44.907188>,  <29.312401, 38.323624, 44.992916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543993, 38.638290, 44.907188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181629, -0.380694, -0.906688,
		-0.794855, 0.486026, -0.363295,
		0.578979, 0.786671, -0.214320,
		29.717686, 38.874290, 44.842892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059473, 38.506786, 44.201218>,  <29.312401, 38.323624, 44.992916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059473, 38.506786, 44.201218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.404900, 38.689751, 44.286095>,  <29.612156, 38.799530, 44.337021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.404900, 38.689751, 44.286095>,  <29.059473, 38.506786, 44.201218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404900, 38.689751, 44.286095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357620, -0.258924, -0.897255,
		-0.355473, 0.850725, -0.387178,
		0.863567, 0.457412, 0.212196,
		29.663969, 38.826973, 44.349754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.927067, 42.426998, 48.946983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223038, 42.567181, 48.717308>,  <33.400620, 42.651291, 48.579502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223038, 42.567181, 48.717308>,  <32.927067, 42.426998, 48.946983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223038, 42.567181, 48.717308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238019, -0.934750, -0.263797,
		-0.629171, 0.058523, -0.775061,
		0.739926, 0.350453, -0.574188,
		33.445015, 42.672318, 48.545052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939377, 42.155434, 48.279793>,  <32.927067, 42.426998, 48.946983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939377, 42.155434, 48.279793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.324059, 42.265060, 48.280510>,  <33.554867, 42.330837, 48.280941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.324059, 42.265060, 48.280510>,  <32.939377, 42.155434, 48.279793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324059, 42.265060, 48.280510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248613, -0.869599, -0.426603,
		-0.115358, 0.410714, -0.904437,
		0.961709, 0.274067, 0.001794,
		33.612572, 42.347282, 48.281048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270584, 42.176933, 47.624287>,  <32.939377, 42.155434, 48.279793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270584, 42.176933, 47.624287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.545582, 42.099072, 47.904133>,  <33.710579, 42.052357, 48.072041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.545582, 42.099072, 47.904133>,  <33.270584, 42.176933, 47.624287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545582, 42.099072, 47.904133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319875, -0.783738, -0.532386,
		0.651948, 0.589801, -0.476548,
		0.687491, -0.194652, 0.699619,
		33.751827, 42.040676, 48.114017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836357, 41.782032, 47.228352>,  <33.270584, 42.176933, 47.624287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836357, 41.782032, 47.228352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.931561, 41.712585, 47.610600>,  <33.988682, 41.670918, 47.839947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.931561, 41.712585, 47.610600>,  <33.836357, 41.782032, 47.228352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931561, 41.712585, 47.610600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353489, -0.900934, -0.251720,
		0.904654, 0.397712, -0.153057,
		0.238006, -0.173616, 0.955621,
		34.002964, 41.660500, 47.897285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633678, 41.676582, 47.371269>,  <33.836357, 41.782032, 47.228352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633678, 41.676582, 47.371269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.446392, 41.479198, 47.664463>,  <34.334023, 41.360767, 47.840382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.446392, 41.479198, 47.664463>,  <34.633678, 41.676582, 47.371269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446392, 41.479198, 47.664463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406335, -0.856862, -0.317300,
		0.784645, 0.149275, 0.601705,
		-0.468213, -0.493462, 0.732988,
		34.305927, 41.331161, 47.884361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193081, 41.157528, 47.722988>,  <34.633678, 41.676582, 47.371269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193081, 41.157528, 47.722988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.820633, 41.028538, 47.791145>,  <34.597164, 40.951145, 47.832039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.820633, 41.028538, 47.791145>,  <35.193081, 41.157528, 47.722988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820633, 41.028538, 47.791145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257440, -0.912031, -0.319256,
		0.258350, -0.253400, 0.932225,
		-0.931117, -0.322472, 0.170388,
		34.541298, 40.931797, 47.842262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222740, 40.507950, 48.132599>,  <35.193081, 41.157528, 47.722988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222740, 40.507950, 48.132599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871372, 40.509541, 47.941452>,  <34.660553, 40.510494, 47.826763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871372, 40.509541, 47.941452>,  <35.222740, 40.507950, 48.132599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871372, 40.509541, 47.941452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193530, -0.911342, -0.363322,
		-0.436947, -0.411632, 0.799773,
		-0.878421, 0.003973, -0.477871,
		34.607845, 40.510731, 47.798092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850994, 39.841049, 48.357796>,  <35.222740, 40.507950, 48.132599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850994, 39.841049, 48.357796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.687012, 39.961536, 48.013424>,  <34.588623, 40.033829, 47.806801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.687012, 39.961536, 48.013424>,  <34.850994, 39.841049, 48.357796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687012, 39.961536, 48.013424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135362, -0.913352, -0.384011,
		-0.902003, -0.273967, 0.333665,
		-0.409960, 0.301214, -0.860931,
		34.564026, 40.051899, 47.755146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539021, 39.222836, 48.014778>,  <34.850994, 39.841049, 48.357796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539021, 39.222836, 48.014778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.520260, 39.479630, 47.708668>,  <34.509003, 39.633705, 47.525002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.520260, 39.479630, 47.708668>,  <34.539021, 39.222836, 48.014778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520260, 39.479630, 47.708668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053450, -0.763412, -0.643697,
		-0.997469, -0.071093, 0.001489,
		-0.046899, 0.641987, -0.765279,
		34.506191, 39.672226, 47.479084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037796, 38.931122, 47.643883>,  <34.539021, 39.222836, 48.014778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037796, 38.931122, 47.643883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.253624, 39.168819, 47.405308>,  <34.383121, 39.311436, 47.262161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.253624, 39.168819, 47.405308>,  <34.037796, 38.931122, 47.643883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253624, 39.168819, 47.405308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024132, -0.697206, -0.716464,
		-0.841594, 0.400977, -0.361852,
		0.539571, 0.594240, -0.596441,
		34.415497, 39.347092, 47.226376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708736, 38.875366, 47.074337>,  <34.037796, 38.931122, 47.643883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708736, 38.875366, 47.074337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.038280, 39.044865, 46.923771>,  <34.236008, 39.146564, 46.833431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.038280, 39.044865, 46.923771>,  <33.708736, 38.875366, 47.074337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038280, 39.044865, 46.923771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059355, -0.595965, -0.800814,
		-0.563677, 0.682100, -0.465840,
		0.823860, 0.423751, -0.376418,
		34.285439, 39.171989, 46.810844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591293, 39.057381, 46.323929>,  <33.708736, 38.875366, 47.074337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591293, 39.057381, 46.323929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.987221, 39.029255, 46.373440>,  <34.224777, 39.012379, 46.403145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.987221, 39.029255, 46.373440>,  <33.591293, 39.057381, 46.323929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987221, 39.029255, 46.373440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049512, -0.645164, -0.762438,
		0.133465, 0.760802, -0.635113,
		0.989816, -0.070313, 0.123775,
		34.284164, 39.008160, 46.410572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173737, 39.440819, 45.848568>,  <33.591293, 39.057381, 46.323929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173737, 39.440819, 45.848568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.852097, 39.205303, 45.881432>,  <32.659111, 39.063995, 45.901150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.852097, 39.205303, 45.881432>,  <33.173737, 39.440819, 45.848568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852097, 39.205303, 45.881432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208378, 0.408585, 0.888615,
		-0.556774, 0.697417, -0.451234,
		-0.804103, -0.588785, 0.082163,
		32.610867, 39.028667, 45.906082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572361, 39.827911, 45.913345>,  <33.173737, 39.440819, 45.848568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572361, 39.827911, 45.913345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.479931, 39.473717, 46.074596>,  <32.424473, 39.261200, 46.171349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.479931, 39.473717, 46.074596>,  <32.572361, 39.827911, 45.913345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479931, 39.473717, 46.074596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215484, 0.450632, 0.866313,
		-0.948774, 0.113312, -0.294937,
		-0.231072, -0.885489, 0.403131,
		32.410610, 39.208069, 46.195538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830597, 39.742374, 46.112183>,  <32.572361, 39.827911, 45.913345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830597, 39.742374, 46.112183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048698, 39.490566, 46.333599>,  <32.179558, 39.339481, 46.466450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048698, 39.490566, 46.333599>,  <31.830597, 39.742374, 46.112183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048698, 39.490566, 46.333599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438093, 0.348983, 0.828424,
		-0.714683, -0.694202, -0.085503,
		0.545255, -0.629519, 0.553538,
		32.212276, 39.301712, 46.499660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254219, 39.555653, 46.606693>,  <31.830597, 39.742374, 46.112183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254219, 39.555653, 46.606693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601139, 39.437813, 46.767193>,  <31.809292, 39.367111, 46.863495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601139, 39.437813, 46.767193>,  <31.254219, 39.555653, 46.606693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601139, 39.437813, 46.767193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312923, 0.304220, 0.899738,
		-0.387127, -0.905905, 0.171665,
		0.867301, -0.294595, 0.401251,
		31.861330, 39.349434, 46.887569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160599, 38.990234, 47.126526>,  <31.254219, 39.555653, 46.606693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160599, 38.990234, 47.126526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.492044, 39.190681, 47.226349>,  <31.690912, 39.310951, 47.286243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.492044, 39.190681, 47.226349>,  <31.160599, 38.990234, 47.126526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492044, 39.190681, 47.226349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314636, 0.048157, 0.947990,
		0.463041, -0.864036, 0.197575,
		0.828612, 0.501122, 0.249558,
		31.740627, 39.341019, 47.301216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192886, 38.951134, 47.803116>,  <31.160599, 38.990234, 47.126526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192886, 38.951134, 47.803116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.491037, 39.212921, 47.752388>,  <31.669928, 39.369995, 47.721951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.491037, 39.212921, 47.752388>,  <31.192886, 38.951134, 47.803116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491037, 39.212921, 47.752388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107953, 0.306218, 0.945820,
		0.657845, -0.691302, 0.298900,
		0.745376, 0.654471, -0.126816,
		31.714651, 39.409264, 47.714344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485636, 38.969051, 48.510174>,  <31.192886, 38.951134, 47.803116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485636, 38.969051, 48.510174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638269, 39.276772, 48.305202>,  <31.729849, 39.461403, 48.182220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638269, 39.276772, 48.305202>,  <31.485636, 38.969051, 48.510174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638269, 39.276772, 48.305202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111551, 0.511993, 0.851716,
		0.917579, -0.382161, 0.109552,
		0.381582, 0.769296, -0.512424,
		31.752745, 39.507561, 48.151474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173824, 39.152077, 48.811047>,  <31.485636, 38.969051, 48.510174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173824, 39.152077, 48.811047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987988, 39.463654, 48.642570>,  <31.876486, 39.650600, 48.541485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987988, 39.463654, 48.642570>,  <32.173824, 39.152077, 48.811047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987988, 39.463654, 48.642570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002499, 0.474484, 0.880260,
		0.885521, 0.410014, -0.218495,
		-0.464592, 0.778944, -0.421190,
		31.848610, 39.697338, 48.516212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281284, 39.698341, 49.263466>,  <32.173824, 39.152077, 48.811047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281284, 39.698341, 49.263466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.992077, 39.838612, 49.025383>,  <31.818552, 39.922771, 48.882534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.992077, 39.838612, 49.025383>,  <32.281284, 39.698341, 49.263466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992077, 39.838612, 49.025383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363287, 0.539828, 0.759347,
		0.587591, 0.765254, -0.262912,
		-0.723021, 0.350673, -0.595205,
		31.775171, 39.943813, 48.846821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226612, 40.422928, 49.346577>,  <32.281284, 39.698341, 49.263466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226612, 40.422928, 49.346577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.866779, 40.349682, 49.187977>,  <31.650879, 40.305733, 49.092815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.866779, 40.349682, 49.187977>,  <32.226612, 40.422928, 49.346577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866779, 40.349682, 49.187977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435640, 0.440731, 0.784840,
		0.031035, 0.878764, -0.476247,
		-0.899586, -0.183115, -0.396503,
		31.596903, 40.294746, 49.069027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880711, 41.041435, 49.426388>,  <32.226612, 40.422928, 49.346577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880711, 41.041435, 49.426388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.606882, 40.751446, 49.396004>,  <31.442585, 40.577450, 49.377773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.606882, 40.751446, 49.396004>,  <31.880711, 41.041435, 49.426388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606882, 40.751446, 49.396004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551907, 0.447412, 0.703719,
		-0.476194, 0.523669, -0.706406,
		-0.684571, -0.724978, -0.075962,
		31.401510, 40.533951, 49.373215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280355, 41.346455, 49.441963>,  <31.880711, 41.041435, 49.426388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280355, 41.346455, 49.441963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.115755, 40.988392, 49.510498>,  <31.016994, 40.773552, 49.551620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.115755, 40.988392, 49.510498>,  <31.280355, 41.346455, 49.441963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115755, 40.988392, 49.510498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515074, 0.383501, 0.766567,
		-0.751907, 0.227193, -0.618885,
		-0.411502, -0.895159, 0.171336,
		30.992304, 40.719845, 49.561897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606834, 41.505447, 49.500828>,  <31.280355, 41.346455, 49.441963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606834, 41.505447, 49.500828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.689808, 41.164711, 49.693214>,  <30.739592, 40.960270, 49.808647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.689808, 41.164711, 49.693214>,  <30.606834, 41.505447, 49.500828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689808, 41.164711, 49.693214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274147, 0.421341, 0.864474,
		-0.939050, -0.311177, -0.146130,
		0.207434, -0.851845, 0.480969,
		30.752039, 40.909157, 49.837505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312119, 40.970226, 49.045708>,  <30.606834, 41.505447, 49.500828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312119, 40.970226, 49.045708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.925417, 41.068470, 49.074158>,  <29.693396, 41.127419, 49.091228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.925417, 41.068470, 49.074158>,  <30.312119, 40.970226, 49.045708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925417, 41.068470, 49.074158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122300, -0.199852, -0.972163,
		-0.224567, -0.948541, 0.223247,
		-0.966753, 0.245619, 0.071127,
		29.635391, 41.142155, 49.095497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875162, 40.467300, 48.688667>,  <30.312119, 40.970226, 49.045708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875162, 40.467300, 48.688667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.651800, 40.798965, 48.699081>,  <29.517782, 40.997963, 48.705330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.651800, 40.798965, 48.699081>,  <29.875162, 40.467300, 48.688667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651800, 40.798965, 48.699081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261074, -0.145864, -0.954235,
		-0.787416, -0.539646, 0.297923,
		-0.558405, 0.829159, 0.026031,
		29.484278, 41.047714, 48.706890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211784, 40.251141, 48.620716>,  <29.875162, 40.467300, 48.688667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211784, 40.251141, 48.620716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.233513, 40.625130, 48.480503>,  <29.246550, 40.849522, 48.396374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.233513, 40.625130, 48.480503>,  <29.211784, 40.251141, 48.620716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233513, 40.625130, 48.480503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330647, -0.314404, -0.889844,
		-0.942190, 0.164240, 0.292068,
		0.054321, 0.934974, -0.350533,
		29.249809, 40.905621, 48.375343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583618, 40.355526, 48.149734>,  <29.211784, 40.251141, 48.620716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583618, 40.355526, 48.149734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.859428, 40.631218, 48.060730>,  <29.024916, 40.796635, 48.007328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.859428, 40.631218, 48.060730>,  <28.583618, 40.355526, 48.149734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859428, 40.631218, 48.060730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059937, -0.251863, -0.965905,
		-0.721775, 0.679355, -0.132356,
		0.689528, 0.689233, -0.222507,
		29.066286, 40.837986, 47.993977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403379, 40.445061, 47.447617>,  <28.583618, 40.355526, 48.149734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403379, 40.445061, 47.447617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.738316, 40.662376, 47.471939>,  <28.939278, 40.792767, 47.486530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.738316, 40.662376, 47.471939>,  <28.403379, 40.445061, 47.447617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738316, 40.662376, 47.471939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155253, -0.129677, -0.979326,
		-0.524176, 0.829468, -0.192932,
		0.837339, 0.543293, 0.060804,
		28.989517, 40.825363, 47.490181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370443, 40.952484, 46.899315>,  <28.403379, 40.445061, 47.447617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370443, 40.952484, 46.899315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.758398, 40.954491, 46.996716>,  <28.991171, 40.955696, 47.055157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.758398, 40.954491, 46.996716>,  <28.370443, 40.952484, 46.899315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758398, 40.954491, 46.996716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232707, -0.314139, -0.920415,
		0.071872, 0.949364, -0.305848,
		0.969888, 0.005021, 0.243501,
		29.049364, 40.955997, 47.069767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728556, 41.258087, 46.288567>,  <28.370443, 40.952484, 46.899315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728556, 41.258087, 46.288567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.958261, 41.019299, 46.512653>,  <29.096085, 40.876026, 46.647106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.958261, 41.019299, 46.512653>,  <28.728556, 41.258087, 46.288567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958261, 41.019299, 46.512653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347160, -0.442158, -0.827029,
		0.741418, 0.669418, -0.046671,
		0.574264, -0.596972, 0.560219,
		29.130541, 40.840206, 46.680717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510365, 41.322216, 46.083382>,  <28.728556, 41.258087, 46.288567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510365, 41.322216, 46.083382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465731, 40.964622, 46.256981>,  <29.438951, 40.750069, 46.361141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465731, 40.964622, 46.256981>,  <29.510365, 41.322216, 46.083382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465731, 40.964622, 46.256981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473475, -0.431792, -0.767709,
		0.873711, 0.119822, 0.471457,
		-0.111583, -0.893979, 0.433994,
		29.432257, 40.696430, 46.387180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240158, 41.594101, 46.225342>,  <29.510365, 41.322216, 46.083382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240158, 41.594101, 46.225342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.384056, 41.935032, 46.073490>,  <30.470394, 42.139591, 45.982380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.384056, 41.935032, 46.073490>,  <30.240158, 41.594101, 46.225342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384056, 41.935032, 46.073490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183578, 0.463574, 0.866832,
		0.914813, -0.242146, 0.323237,
		0.359744, 0.852329, -0.379631,
		30.491980, 42.190731, 45.959602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616879, 41.813862, 46.698566>,  <30.240158, 41.594101, 46.225342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616879, 41.813862, 46.698566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.498745, 42.123619, 46.474747>,  <30.427864, 42.309471, 46.340454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.498745, 42.123619, 46.474747>,  <30.616879, 41.813862, 46.698566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498745, 42.123619, 46.474747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280191, 0.489719, 0.825632,
		0.913384, 0.400618, 0.072347,
		-0.295334, 0.774390, -0.559551,
		30.410145, 42.355938, 46.306881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936203, 42.375599, 47.022366>,  <30.616879, 41.813862, 46.698566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936203, 42.375599, 47.022366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.644102, 42.548328, 46.810608>,  <30.468842, 42.651966, 46.683552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.644102, 42.548328, 46.810608>,  <30.936203, 42.375599, 47.022366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644102, 42.548328, 46.810608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137262, 0.666366, 0.732882,
		0.669245, 0.607856, -0.427343,
		-0.730254, 0.431819, -0.529397,
		30.425026, 42.677876, 46.651787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999950, 43.028843, 47.071220>,  <30.936203, 42.375599, 47.022366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999950, 43.028843, 47.071220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.625278, 43.042126, 46.931778>,  <30.400475, 43.050095, 46.848110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.625278, 43.042126, 46.931778>,  <30.999950, 43.028843, 47.071220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625278, 43.042126, 46.931778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219764, 0.719324, 0.658997,
		0.272644, 0.693880, -0.666480,
		-0.936680, 0.033204, -0.348609,
		30.344275, 43.052086, 46.827194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813250, 43.687805, 46.696976>,  <30.999950, 43.028843, 47.071220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813250, 43.687805, 46.696976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.464018, 43.532177, 46.814522>,  <30.254478, 43.438801, 46.885048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.464018, 43.532177, 46.814522>,  <30.813250, 43.687805, 46.696976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464018, 43.532177, 46.814522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322853, 0.912963, 0.249529,
		-0.365371, 0.122984, -0.922702,
		-0.873080, -0.389068, 0.293864,
		30.202093, 43.415455, 46.902679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341297, 44.184586, 46.512360>,  <30.813250, 43.687805, 46.696976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341297, 44.184586, 46.512360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.171066, 43.974728, 46.807285>,  <30.068928, 43.848812, 46.984241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.171066, 43.974728, 46.807285>,  <30.341297, 44.184586, 46.512360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171066, 43.974728, 46.807285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100300, 0.837110, 0.537761,
		-0.899346, 0.154906, -0.408877,
		-0.425577, -0.524644, 0.737315,
		30.043392, 43.817333, 47.028481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920786, 44.695160, 46.883289>,  <30.341297, 44.184586, 46.512360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920786, 44.695160, 46.883289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.952089, 44.384144, 47.132866>,  <29.970871, 44.197533, 47.282612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.952089, 44.384144, 47.132866>,  <29.920786, 44.695160, 46.883289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952089, 44.384144, 47.132866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169223, 0.606417, 0.776931,
		-0.982466, -0.166386, -0.084122,
		0.078258, -0.777543, 0.623941,
		29.975567, 44.150883, 47.320049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208702, 44.558464, 47.246220>,  <29.920786, 44.695160, 46.883289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208702, 44.558464, 47.246220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.530321, 44.438591, 47.451626>,  <29.723293, 44.366669, 47.574871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.530321, 44.438591, 47.451626>,  <29.208702, 44.558464, 47.246220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530321, 44.438591, 47.451626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252629, 0.609645, 0.751340,
		-0.538224, -0.733843, 0.414476,
		0.804048, -0.299680, 0.513516,
		29.771536, 44.348686, 47.605682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905872, 44.448009, 47.868355>,  <29.208702, 44.558464, 47.246220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905872, 44.448009, 47.868355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.301359, 44.484962, 47.915527>,  <29.538651, 44.507133, 47.943832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.301359, 44.484962, 47.915527>,  <28.905872, 44.448009, 47.868355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301359, 44.484962, 47.915527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146984, 0.446029, 0.882867,
		0.028954, -0.890238, 0.454574,
		0.988715, 0.092377, 0.117936,
		29.597973, 44.512676, 47.950909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.711082, 37.817253, 35.567749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986259, 38.106857, 35.587967>,  <36.151363, 38.280621, 35.600098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986259, 38.106857, 35.587967>,  <35.711082, 37.817253, 35.567749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986259, 38.106857, 35.587967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582833, 0.509611, 0.632931,
		0.432488, -0.464878, 0.772556,
		0.687939, 0.724006, 0.050545,
		36.192642, 38.324059, 35.603130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051449, 37.851723, 36.269119>,  <35.711082, 37.817253, 35.567749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051449, 37.851723, 36.269119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068008, 38.217239, 36.107491>,  <36.077946, 38.436550, 36.010513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068008, 38.217239, 36.107491>,  <36.051449, 37.851723, 36.269119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068008, 38.217239, 36.107491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546290, 0.359315, 0.756611,
		0.836572, 0.189413, 0.514071,
		0.041402, 0.913792, -0.404067,
		36.080429, 38.491379, 35.986271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206905, 38.199696, 36.765514>,  <36.051449, 37.851723, 36.269119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206905, 38.199696, 36.765514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036598, 38.451225, 36.505268>,  <35.934414, 38.602142, 36.349121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036598, 38.451225, 36.505268>,  <36.206905, 38.199696, 36.765514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036598, 38.451225, 36.505268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480505, 0.452143, 0.751453,
		0.766703, 0.632569, 0.109646,
		-0.425770, 0.628827, -0.650612,
		35.908867, 38.639874, 36.310085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293964, 38.819313, 37.138699>,  <36.206905, 38.199696, 36.765514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293964, 38.819313, 37.138699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006836, 38.857292, 36.862812>,  <35.834557, 38.880081, 36.697281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006836, 38.857292, 36.862812>,  <36.293964, 38.819313, 37.138699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006836, 38.857292, 36.862812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544161, 0.541454, 0.640871,
		0.434302, 0.835351, -0.337001,
		-0.717823, 0.094949, -0.689721,
		35.791489, 38.885777, 36.655895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078323, 39.505337, 37.299381>,  <36.293964, 38.819313, 37.138699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078323, 39.505337, 37.299381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779461, 39.320946, 37.107857>,  <35.600143, 39.210312, 36.992943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779461, 39.320946, 37.107857>,  <36.078323, 39.505337, 37.299381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779461, 39.320946, 37.107857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656316, 0.397957, 0.640999,
		-0.104940, 0.793177, -0.599882,
		-0.747152, -0.460978, -0.478813,
		35.555317, 39.182652, 36.964214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557518, 39.998070, 37.264030>,  <36.078323, 39.505337, 37.299381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557518, 39.998070, 37.264030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359501, 39.654316, 37.212814>,  <35.240692, 39.448063, 37.182083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359501, 39.654316, 37.212814>,  <35.557518, 39.998070, 37.264030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359501, 39.654316, 37.212814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811852, 0.404999, 0.420561,
		-0.309568, 0.312143, -0.898184,
		-0.495039, -0.859385, -0.128039,
		35.210991, 39.396500, 37.174404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878716, 40.173069, 37.133209>,  <35.557518, 39.998070, 37.264030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878716, 40.173069, 37.133209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840717, 39.782097, 37.208679>,  <34.817917, 39.547512, 37.253960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840717, 39.782097, 37.208679>,  <34.878716, 40.173069, 37.133209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840717, 39.782097, 37.208679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903923, 0.164090, 0.394966,
		-0.417013, -0.133028, -0.899113,
		-0.094994, -0.977434, 0.188675,
		34.812218, 39.488865, 37.265282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255791, 39.930180, 36.794048>,  <34.878716, 40.173069, 37.133209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255791, 39.930180, 36.794048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338497, 39.703224, 37.112877>,  <34.388123, 39.567051, 37.304173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338497, 39.703224, 37.112877>,  <34.255791, 39.930180, 36.794048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338497, 39.703224, 37.112877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945702, 0.092924, 0.311470,
		-0.250791, -0.818190, -0.517367,
		0.206766, -0.567389, 0.797068,
		34.400528, 39.533009, 37.351997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571678, 39.806545, 37.063488>,  <34.255791, 39.930180, 36.794048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571678, 39.806545, 37.063488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789371, 39.645794, 37.358051>,  <33.919987, 39.549343, 37.534790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789371, 39.645794, 37.358051>,  <33.571678, 39.806545, 37.063488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789371, 39.645794, 37.358051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739718, 0.184211, 0.647212,
		-0.395759, -0.896970, -0.197026,
		0.544235, -0.401883, 0.736408,
		33.952641, 39.525230, 37.578976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140789, 39.391197, 37.338299>,  <33.571678, 39.806545, 37.063488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140789, 39.391197, 37.338299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408035, 39.458054, 37.628315>,  <33.568382, 39.498169, 37.802322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408035, 39.458054, 37.628315>,  <33.140789, 39.391197, 37.338299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408035, 39.458054, 37.628315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743926, 0.168118, 0.646769,
		-0.013788, -0.971493, 0.236666,
		0.668120, 0.167144, 0.725037,
		33.608471, 39.508198, 37.845825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817303, 39.122322, 37.994747>,  <33.140789, 39.391197, 37.338299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817303, 39.122322, 37.994747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089584, 39.397392, 38.095734>,  <33.252953, 39.562435, 38.156326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089584, 39.397392, 38.095734>,  <32.817303, 39.122322, 37.994747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089584, 39.397392, 38.095734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690672, 0.487592, 0.534067,
		0.244165, -0.537914, 0.806866,
		0.680703, 0.687680, 0.252469,
		33.293797, 39.603695, 38.171474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656166, 39.277012, 38.674149>,  <32.817303, 39.122322, 37.994747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656166, 39.277012, 38.674149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876507, 39.599861, 38.589184>,  <33.008709, 39.793571, 38.538204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876507, 39.599861, 38.589184>,  <32.656166, 39.277012, 38.674149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876507, 39.599861, 38.589184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624780, 0.567528, 0.536248,
		0.553359, -0.162692, 0.816899,
		0.550857, 0.807120, -0.212400,
		33.041763, 39.841999, 38.525459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708549, 38.525711, 38.776218>,  <32.656166, 39.277012, 38.674149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708549, 38.525711, 38.776218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372040, 38.312542, 38.812553>,  <32.170135, 38.184639, 38.834354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372040, 38.312542, 38.812553>,  <32.708549, 38.525711, 38.776218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372040, 38.312542, 38.812553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052081, -0.247143, -0.967578,
		0.538098, -0.809265, 0.235669,
		-0.841271, -0.532926, 0.090840,
		32.119659, 38.152664, 38.839806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861198, 37.829727, 38.447723>,  <32.708549, 38.525711, 38.776218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861198, 37.829727, 38.447723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461414, 37.842873, 38.446602>,  <32.221546, 37.850758, 38.445927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461414, 37.842873, 38.446602>,  <32.861198, 37.829727, 38.447723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461414, 37.842873, 38.446602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008718, -0.345338, -0.938438,
		-0.031807, -0.937903, 0.345437,
		-0.999456, 0.032861, -0.002808,
		32.161579, 37.852730, 38.445759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654770, 37.144703, 38.367657>,  <32.861198, 37.829727, 38.447723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654770, 37.144703, 38.367657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369678, 37.401337, 38.254253>,  <32.198624, 37.555317, 38.186211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369678, 37.401337, 38.254253>,  <32.654770, 37.144703, 38.367657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369678, 37.401337, 38.254253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052098, -0.451485, -0.890756,
		-0.699498, -0.620101, 0.355214,
		-0.712733, 0.641588, -0.283507,
		32.155857, 37.593815, 38.169201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058861, 36.691330, 38.105598>,  <32.654770, 37.144703, 38.367657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058861, 36.691330, 38.105598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040886, 37.057716, 37.946102>,  <32.030102, 37.277546, 37.850407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040886, 37.057716, 37.946102>,  <32.058861, 36.691330, 38.105598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040886, 37.057716, 37.946102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269256, -0.395476, -0.878123,
		-0.962020, 0.067903, 0.264400,
		-0.044937, 0.915963, -0.398739,
		32.027405, 37.332504, 37.826481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469654, 36.664547, 37.761074>,  <32.058861, 36.691330, 38.105598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469654, 36.664547, 37.761074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656265, 36.971355, 37.584877>,  <31.768232, 37.155441, 37.479156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656265, 36.971355, 37.584877>,  <31.469654, 36.664547, 37.761074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656265, 36.971355, 37.584877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335841, -0.307109, -0.890446,
		-0.818268, 0.563354, 0.114322,
		0.466527, 0.767018, -0.440495,
		31.796223, 37.201462, 37.452728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059589, 36.926838, 37.185745>,  <31.469654, 36.664547, 37.761074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059589, 36.926838, 37.185745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429245, 37.054344, 37.101505>,  <31.651039, 37.130848, 37.050961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429245, 37.054344, 37.101505>,  <31.059589, 36.926838, 37.185745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429245, 37.054344, 37.101505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101764, -0.325950, -0.939894,
		-0.368252, 0.890025, -0.268784,
		0.924140, 0.318766, -0.210604,
		31.706488, 37.149975, 37.038322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947502, 37.176128, 36.500328>,  <31.059589, 36.926838, 37.185745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947502, 37.176128, 36.500328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337454, 37.106510, 36.555920>,  <31.571424, 37.064739, 36.589275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337454, 37.106510, 36.555920>,  <30.947502, 37.176128, 36.500328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337454, 37.106510, 36.555920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059412, -0.398181, -0.915381,
		0.214657, 0.900644, -0.377839,
		0.974881, -0.174045, 0.138981,
		31.629919, 37.054298, 36.597614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285313, 37.411774, 35.894249>,  <30.947502, 37.176128, 36.500328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285313, 37.411774, 35.894249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528728, 37.145767, 36.067425>,  <31.674778, 36.986164, 36.171329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528728, 37.145767, 36.067425>,  <31.285313, 37.411774, 35.894249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528728, 37.145767, 36.067425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017793, -0.534015, -0.845288,
		0.793324, 0.522094, -0.313136,
		0.608539, -0.665015, 0.432937,
		31.711290, 36.946262, 36.197308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745546, 37.168213, 35.356705>,  <31.285313, 37.411774, 35.894249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745546, 37.168213, 35.356705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792843, 36.885052, 35.635242>,  <31.821220, 36.715157, 35.802364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792843, 36.885052, 35.635242>,  <31.745546, 37.168213, 35.356705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792843, 36.885052, 35.635242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070122, -0.705468, -0.705264,
		0.990506, 0.034560, -0.133054,
		0.118239, -0.707898, 0.696347,
		31.828314, 36.672684, 35.844147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245392, 36.731617, 35.162395>,  <31.745546, 37.168213, 35.356705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245392, 36.731617, 35.162395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072479, 36.508415, 35.445736>,  <31.968731, 36.374496, 35.615742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072479, 36.508415, 35.445736>,  <32.245392, 36.731617, 35.162395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072479, 36.508415, 35.445736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019904, -0.791255, -0.611161,
		0.901518, -0.250095, 0.353152,
		-0.432282, -0.558003, 0.708354,
		31.942795, 36.341015, 35.658241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637947, 36.096508, 35.220131>,  <32.245392, 36.731617, 35.162395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637947, 36.096508, 35.220131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257355, 36.057224, 35.336773>,  <32.028999, 36.033653, 35.406757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257355, 36.057224, 35.336773>,  <32.637947, 36.096508, 35.220131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257355, 36.057224, 35.336773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039498, -0.900871, -0.432287,
		0.305153, -0.422831, 0.853285,
		-0.951484, -0.098211, 0.291605,
		31.971910, 36.027760, 35.424255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675026, 35.416100, 35.634949>,  <32.637947, 36.096508, 35.220131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675026, 35.416100, 35.634949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338364, 35.537334, 35.456173>,  <32.136368, 35.610077, 35.348907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338364, 35.537334, 35.456173>,  <32.675026, 35.416100, 35.634949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338364, 35.537334, 35.456173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108069, -0.905432, -0.410504,
		-0.529096, -0.297201, 0.794813,
		-0.841652, 0.303091, -0.446943,
		32.085869, 35.628262, 35.322090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950886, 35.139961, 36.160618>,  <32.675026, 35.416100, 35.634949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950886, 35.139961, 36.160618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984711, 34.764175, 36.027798>,  <33.005005, 34.538704, 35.948105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984711, 34.764175, 36.027798>,  <32.950886, 35.139961, 36.160618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984711, 34.764175, 36.027798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639939, -0.306635, 0.704594,
		-0.763758, 0.152907, -0.627131,
		0.084563, -0.939465, -0.332046,
		33.010078, 34.482334, 35.928185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253075, 34.777149, 36.052967>,  <32.950886, 35.139961, 36.160618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253075, 34.777149, 36.052967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522499, 34.492836, 36.134071>,  <32.684155, 34.322250, 36.182735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522499, 34.492836, 36.134071>,  <32.253075, 34.777149, 36.052967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522499, 34.492836, 36.134071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611574, -0.381877, 0.692926,
		-0.415088, -0.590729, -0.691911,
		0.673557, -0.710781, 0.202762,
		32.724567, 34.279602, 36.194901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926262, 34.111134, 36.125294>,  <32.253075, 34.777149, 36.052967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926262, 34.111134, 36.125294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271900, 34.071243, 36.322632>,  <32.479282, 34.047310, 36.441036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271900, 34.071243, 36.322632>,  <31.926262, 34.111134, 36.125294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271900, 34.071243, 36.322632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503284, -0.158832, 0.849398,
		-0.006349, -0.982256, -0.187437,
		0.864097, -0.099727, 0.493346,
		32.531128, 34.041325, 36.470634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718262, 33.855476, 36.793007>,  <31.926262, 34.111134, 36.125294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718262, 33.855476, 36.793007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105206, 33.934349, 36.856678>,  <32.337372, 33.981670, 36.894882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105206, 33.934349, 36.856678>,  <31.718262, 33.855476, 36.793007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105206, 33.934349, 36.856678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115715, -0.215121, 0.969708,
		0.225449, -0.956475, -0.185282,
		0.967359, 0.197179, 0.159177,
		32.395412, 33.993504, 36.904430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070377, 33.232899, 37.089363>,  <31.718262, 33.855476, 36.793007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070377, 33.232899, 37.089363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275002, 33.557579, 37.202110>,  <32.397774, 33.752388, 37.269760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275002, 33.557579, 37.202110>,  <32.070377, 33.232899, 37.089363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275002, 33.557579, 37.202110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127294, -0.252828, 0.959101,
		0.849769, -0.526513, -0.026011,
		0.511556, 0.811703, 0.281867,
		32.428467, 33.801090, 37.286671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545578, 33.114582, 37.678356>,  <32.070377, 33.232899, 37.089363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545578, 33.114582, 37.678356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472092, 33.507458, 37.694080>,  <32.428001, 33.743183, 37.703514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472092, 33.507458, 37.694080>,  <32.545578, 33.114582, 37.678356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472092, 33.507458, 37.694080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037523, -0.032957, 0.998752,
		0.982263, 0.184961, -0.030800,
		-0.183715, 0.982193, 0.039312,
		32.416977, 33.802116, 37.705875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024078, 33.431007, 38.136765>,  <32.545578, 33.114582, 37.678356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024078, 33.431007, 38.136765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737274, 33.709251, 38.118809>,  <32.565189, 33.876198, 38.108036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737274, 33.709251, 38.118809>,  <33.024078, 33.431007, 38.136765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737274, 33.709251, 38.118809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063897, -0.001458, 0.997956,
		0.694123, 0.718417, 0.045493,
		-0.717015, 0.695611, -0.044892,
		32.522171, 33.917934, 38.105343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325172, 33.831928, 38.566780>,  <33.024078, 33.431007, 38.136765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325172, 33.831928, 38.566780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937653, 33.930557, 38.556740>,  <32.705139, 33.989735, 38.550716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937653, 33.930557, 38.556740>,  <33.325172, 33.831928, 38.566780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937653, 33.930557, 38.556740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012000, 0.054500, 0.998442,
		0.247555, 0.967591, -0.049841,
		-0.968800, 0.246571, -0.025103,
		32.647011, 34.004528, 38.549210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268162, 34.470867, 38.884121>,  <33.325172, 33.831928, 38.566780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268162, 34.470867, 38.884121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901527, 34.311447, 38.896984>,  <32.681549, 34.215797, 38.904701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901527, 34.311447, 38.896984>,  <33.268162, 34.470867, 38.884121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901527, 34.311447, 38.896984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027802, 0.143762, 0.989222,
		-0.398874, 0.905811, -0.142851,
		-0.916584, -0.398546, 0.032159,
		32.626553, 34.191883, 38.906631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866943, 34.979836, 39.286182>,  <33.268162, 34.470867, 38.884121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866943, 34.979836, 39.286182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688717, 34.622810, 39.313908>,  <32.581783, 34.408596, 39.330544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688717, 34.622810, 39.313908>,  <32.866943, 34.979836, 39.286182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688717, 34.622810, 39.313908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170880, 0.160787, 0.972084,
		-0.878791, 0.421280, -0.224162,
		-0.445562, -0.892564, 0.069310,
		32.555050, 34.355042, 39.334702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236221, 35.101387, 39.684139>,  <32.866943, 34.979836, 39.286182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236221, 35.101387, 39.684139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283615, 34.705334, 39.714054>,  <32.312054, 34.467701, 39.732002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283615, 34.705334, 39.714054>,  <32.236221, 35.101387, 39.684139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283615, 34.705334, 39.714054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318232, 0.033474, 0.947421,
		-0.940579, -0.136057, -0.311127,
		0.118489, -0.990135, 0.074783,
		32.319160, 34.408295, 39.736488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583305, 34.841473, 39.972370>,  <32.236221, 35.101387, 39.684139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583305, 34.841473, 39.972370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878578, 34.583557, 40.051697>,  <32.055744, 34.428806, 40.099293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878578, 34.583557, 40.051697>,  <31.583305, 34.841473, 39.972370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878578, 34.583557, 40.051697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162463, 0.115411, 0.979942,
		-0.654745, -0.755597, -0.019560,
		0.738184, -0.644790, 0.198321,
		32.100033, 34.390121, 40.111195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376228, 34.575302, 40.540047>,  <31.583305, 34.841473, 39.972370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376228, 34.575302, 40.540047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746450, 34.423889, 40.537033>,  <31.968584, 34.333042, 40.535225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746450, 34.423889, 40.537033>,  <31.376228, 34.575302, 40.540047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746450, 34.423889, 40.537033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072262, 0.157077, 0.984939,
		-0.371650, -0.912161, 0.172738,
		0.925556, -0.378535, -0.007537,
		32.024117, 34.310329, 40.534771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353727, 34.156509, 41.032520>,  <31.376228, 34.575302, 40.540047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353727, 34.156509, 41.032520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747025, 34.221218, 40.998909>,  <31.983004, 34.260044, 40.978745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747025, 34.221218, 40.998909>,  <31.353727, 34.156509, 41.032520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747025, 34.221218, 40.998909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067681, 0.104027, 0.992269,
		0.169260, -0.981330, 0.091335,
		0.983245, 0.161770, -0.084026,
		32.042000, 34.269749, 40.973701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657307, 33.809155, 41.448029>,  <31.353727, 34.156509, 41.032520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657307, 33.809155, 41.448029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884880, 34.130478, 41.377590>,  <32.021423, 34.323273, 41.335327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884880, 34.130478, 41.377590>,  <31.657307, 33.809155, 41.448029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884880, 34.130478, 41.377590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035775, 0.189750, 0.981180,
		0.821605, -0.564526, 0.079216,
		0.568933, 0.803309, -0.176095,
		32.055561, 34.371471, 41.324760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846924, 33.948517, 42.116432>,  <31.657307, 33.809155, 41.448029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846924, 33.948517, 42.116432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040192, 34.262512, 41.961338>,  <32.156151, 34.450909, 41.868282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040192, 34.262512, 41.961338>,  <31.846924, 33.948517, 42.116432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040192, 34.262512, 41.961338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077259, 0.402905, 0.911975,
		0.872111, -0.470595, 0.134024,
		0.483170, 0.784989, -0.387736,
		32.185143, 34.498009, 41.845016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369156, 34.077835, 42.538540>,  <31.846924, 33.948517, 42.116432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369156, 34.077835, 42.538540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262215, 34.409027, 42.341370>,  <32.198048, 34.607742, 42.223068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262215, 34.409027, 42.341370>,  <32.369156, 34.077835, 42.538540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262215, 34.409027, 42.341370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126316, 0.537243, 0.833915,
		0.955282, 0.160689, -0.248223,
		-0.267357, 0.827979, -0.492921,
		32.182007, 34.657421, 42.193493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888588, 34.576897, 42.720726>,  <32.369156, 34.077835, 42.538540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888588, 34.576897, 42.720726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582706, 34.789612, 42.575157>,  <32.399178, 34.917240, 42.487816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582706, 34.789612, 42.575157>,  <32.888588, 34.576897, 42.720726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582706, 34.789612, 42.575157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116973, 0.669933, 0.733149,
		0.633681, 0.518070, -0.574502,
		-0.764700, 0.531784, -0.363924,
		32.353298, 34.949146, 42.465981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062275, 35.246506, 42.790478>,  <32.888588, 34.576897, 42.720726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062275, 35.246506, 42.790478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669395, 35.287033, 42.727207>,  <32.433666, 35.311352, 42.689243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669395, 35.287033, 42.727207>,  <33.062275, 35.246506, 42.790478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669395, 35.287033, 42.727207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015898, 0.883875, 0.467453,
		0.187173, 0.456617, -0.869751,
		-0.982198, 0.101321, -0.158178,
		32.374737, 35.317429, 42.679752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093266, 35.890518, 42.421581>,  <33.062275, 35.246506, 42.790478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093266, 35.890518, 42.421581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734409, 35.814140, 42.580921>,  <32.519096, 35.768314, 42.676525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734409, 35.814140, 42.580921>,  <33.093266, 35.890518, 42.421581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734409, 35.814140, 42.580921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069699, 0.829272, 0.554481,
		-0.436220, 0.525210, -0.730662,
		-0.897137, -0.190949, 0.398352,
		32.465267, 35.756855, 42.700428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794815, 36.539566, 42.572208>,  <33.093266, 35.890518, 42.421581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794815, 36.539566, 42.572208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609798, 36.277695, 42.811356>,  <32.498787, 36.120571, 42.954845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609798, 36.277695, 42.811356>,  <32.794815, 36.539566, 42.572208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609798, 36.277695, 42.811356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094208, 0.706819, 0.701093,
		-0.881578, 0.267961, -0.388609,
		-0.462542, -0.654678, 0.597872,
		32.471035, 36.081291, 42.990719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165001, 36.809242, 42.759411>,  <32.794815, 36.539566, 42.572208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165001, 36.809242, 42.759411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261948, 36.536861, 43.035835>,  <32.320114, 36.373432, 43.201691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261948, 36.536861, 43.035835>,  <32.165001, 36.809242, 42.759411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261948, 36.536861, 43.035835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171663, 0.670957, 0.721352,
		-0.954877, -0.293462, 0.045724,
		0.242368, -0.680953, 0.691058,
		32.334660, 36.332577, 43.243153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710419, 37.025928, 43.203457>,  <32.165001, 36.809242, 42.759411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710419, 37.025928, 43.203457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972357, 36.789650, 43.392033>,  <32.129520, 36.647884, 43.505177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972357, 36.789650, 43.392033>,  <31.710419, 37.025928, 43.203457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972357, 36.789650, 43.392033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057782, 0.582836, 0.810533,
		-0.753550, -0.558015, 0.347536,
		0.654846, -0.590696, 0.471439,
		32.168812, 36.612442, 43.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421520, 36.952496, 43.922791>,  <31.710419, 37.025928, 43.203457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421520, 36.952496, 43.922791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815538, 36.884331, 43.912655>,  <32.051949, 36.843433, 43.906574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815538, 36.884331, 43.912655>,  <31.421520, 36.952496, 43.922791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815538, 36.884331, 43.912655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117893, 0.559475, 0.820420,
		-0.125629, -0.811140, 0.571200,
		0.985047, -0.170409, -0.025341,
		32.111053, 36.833210, 43.905052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464262, 37.046589, 44.601524>,  <31.421520, 36.952496, 43.922791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464262, 37.046589, 44.601524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840210, 37.036873, 44.465260>,  <32.065781, 37.031044, 44.383499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840210, 37.036873, 44.465260>,  <31.464262, 37.046589, 44.601524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840210, 37.036873, 44.465260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315792, 0.441668, 0.839764,
		0.130060, -0.896849, 0.422783,
		0.939872, -0.024292, -0.340661,
		32.122173, 37.029587, 44.363060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885674, 36.736706, 45.144470>,  <31.464262, 37.046589, 44.601524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885674, 36.736706, 45.144470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108006, 36.987133, 44.925713>,  <32.241405, 37.137390, 44.794456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108006, 36.987133, 44.925713>,  <31.885674, 36.736706, 45.144470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108006, 36.987133, 44.925713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269749, 0.486446, 0.831027,
		0.786314, -0.609433, 0.101499,
		0.555829, 0.626069, -0.546893,
		32.274754, 37.174953, 44.761646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372131, 36.784969, 45.532894>,  <31.885674, 36.736706, 45.144470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372131, 36.784969, 45.532894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443272, 37.088207, 45.281921>,  <32.485954, 37.270149, 45.131340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443272, 37.088207, 45.281921>,  <32.372131, 36.784969, 45.532894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443272, 37.088207, 45.281921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339227, 0.551282, 0.762242,
		0.923740, -0.348404, -0.159121,
		0.177847, 0.758092, -0.627429,
		32.496624, 37.315636, 45.093693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868118, 37.191986, 45.839951>,  <32.372131, 36.784969, 45.532894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868118, 37.191986, 45.839951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738758, 37.464611, 45.577385>,  <32.661140, 37.628185, 45.419846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738758, 37.464611, 45.577385>,  <32.868118, 37.191986, 45.839951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738758, 37.464611, 45.577385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320993, 0.731582, 0.601458,
		0.890154, -0.016193, -0.455371,
		-0.323402, 0.681561, -0.656419,
		32.641739, 37.669079, 45.380459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360123, 37.708332, 45.748993>,  <32.868118, 37.191986, 45.839951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360123, 37.708332, 45.748993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999275, 37.857292, 45.661808>,  <32.782768, 37.946667, 45.609497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999275, 37.857292, 45.661808>,  <33.360123, 37.708332, 45.748993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999275, 37.857292, 45.661808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158171, 0.755367, 0.635926,
		0.401460, 0.539203, -0.740331,
		-0.902115, 0.372398, -0.217964,
		32.728642, 37.969013, 45.596420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492474, 38.378742, 45.804840>,  <33.360123, 37.708332, 45.748993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492474, 38.378742, 45.804840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094589, 38.408119, 45.833557>,  <32.855858, 38.425747, 45.850788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094589, 38.408119, 45.833557>,  <33.492474, 38.378742, 45.804840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094589, 38.408119, 45.833557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102511, 0.667167, 0.737821,
		0.006289, 0.741279, -0.671167,
		-0.994712, 0.073442, 0.071793,
		32.796177, 38.430153, 45.855095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948929, 38.972771, 45.561230>,  <33.492474, 38.378742, 45.804840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948929, 38.972771, 45.561230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260574, 38.906139, 45.802971>,  <34.447559, 38.866161, 45.948013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260574, 38.906139, 45.802971>,  <33.948929, 38.972771, 45.561230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260574, 38.906139, 45.802971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493702, -0.431061, -0.755278,
		0.386326, 0.886814, -0.253603,
		0.779109, -0.166579, 0.604351,
		34.494308, 38.856167, 45.984276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518764, 39.272427, 45.384193>,  <33.948929, 38.972771, 45.561230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518764, 39.272427, 45.384193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642036, 38.955975, 45.595528>,  <34.716000, 38.766102, 45.722328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642036, 38.955975, 45.595528>,  <34.518764, 39.272427, 45.384193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642036, 38.955975, 45.595528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387212, -0.402967, -0.829268,
		0.868959, 0.460145, 0.182147,
		0.308184, -0.791129, 0.528335,
		34.734493, 38.718636, 45.754028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144310, 39.160728, 45.075542>,  <34.518764, 39.272427, 45.384193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144310, 39.160728, 45.075542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045132, 38.849709, 45.306694>,  <34.985626, 38.663097, 45.445385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045132, 38.849709, 45.306694>,  <35.144310, 39.160728, 45.075542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045132, 38.849709, 45.306694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401381, -0.625347, -0.669205,
		0.881712, 0.066021, 0.467146,
		-0.247946, -0.777549, 0.577876,
		34.970749, 38.616444, 45.480057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678879, 38.827648, 45.214268>,  <35.144310, 39.160728, 45.075542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678879, 38.827648, 45.214268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364128, 38.580814, 45.216660>,  <35.175278, 38.432713, 45.218094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364128, 38.580814, 45.216660>,  <35.678879, 38.827648, 45.214268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364128, 38.580814, 45.216660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280000, -0.365649, -0.887638,
		0.549936, -0.696784, 0.460503,
		-0.786874, -0.617085, 0.005984,
		35.128067, 38.395691, 45.218456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926849, 38.103531, 45.060051>,  <35.678879, 38.827648, 45.214268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926849, 38.103531, 45.060051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541599, 38.137356, 44.957890>,  <35.310448, 38.157650, 44.896591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541599, 38.137356, 44.957890>,  <35.926849, 38.103531, 45.060051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541599, 38.137356, 44.957890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204466, -0.386948, -0.899147,
		-0.174860, -0.918216, 0.355391,
		-0.963129, 0.084559, -0.255406,
		35.252659, 38.162724, 44.881268>
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
