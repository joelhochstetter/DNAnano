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
	<4.552038, 15.178735, 15.005466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.202171, 15.116600, 15.189130>,  <3.992251, 15.079319, 15.299329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.202171, 15.116600, 15.189130>,  <4.552038, 15.178735, 15.005466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.202171, 15.116600, 15.189130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058994, -0.906104, -0.418921,
		0.481122, -0.393504, 0.783375,
		-0.874667, -0.155337, 0.459161,
		3.939771, 15.069999, 15.326878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.429908, 14.566201, 15.545875>,  <4.552038, 15.178735, 15.005466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.429908, 14.566201, 15.545875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.107275, 14.649798, 15.324697>,  <3.913696, 14.699957, 15.191990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.107275, 14.649798, 15.324697>,  <4.429908, 14.566201, 15.545875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.107275, 14.649798, 15.324697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066512, -0.897387, -0.436202,
		-0.587369, -0.388610, 0.709915,
		-0.806581, 0.208994, -0.552945,
		3.865301, 14.712497, 15.158813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.108171, 14.854372, 15.879959>,  <4.429908, 14.566201, 15.545875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.108171, 14.854372, 15.879959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.410302, 15.033245, 15.688331>,  <5.591580, 15.140569, 15.573354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.410302, 15.033245, 15.688331>,  <5.108171, 14.854372, 15.879959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.410302, 15.033245, 15.688331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440092, 0.195547, 0.876402,
		0.485592, -0.872805, -0.049099,
		0.755327, 0.447182, -0.479071,
		5.636900, 15.167399, 15.544609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.716169, 14.164067, 16.054874>,  <5.108171, 14.854372, 15.879959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.716169, 14.164067, 16.054874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.044503, 14.390401, 16.086016>,  <6.241504, 14.526201, 16.104700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.044503, 14.390401, 16.086016>,  <5.716169, 14.164067, 16.054874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.044503, 14.390401, 16.086016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567809, -0.823151, -0.003989,
		0.061828, 0.047480, -0.996957,
		0.820835, 0.565834, 0.077854,
		6.290754, 14.560151, 16.109371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.111406, 14.060678, 15.500403>,  <5.716169, 14.164067, 16.054874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.111406, 14.060678, 15.500403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.343111, 14.154196, 15.812761>,  <6.482134, 14.210306, 16.000175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.343111, 14.154196, 15.812761>,  <6.111406, 14.060678, 15.500403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.343111, 14.154196, 15.812761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486851, -0.867580, -0.101396,
		0.653783, 0.438915, -0.616378,
		0.579262, 0.233794, 0.780895,
		6.516890, 14.224334, 16.047029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.726394, 13.731875, 15.326189>,  <6.111406, 14.060678, 15.500403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.726394, 13.731875, 15.326189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.782029, 13.783233, 15.718958>,  <6.815410, 13.814047, 15.954619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.782029, 13.783233, 15.718958>,  <6.726394, 13.731875, 15.326189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.782029, 13.783233, 15.718958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481147, -0.875416, 0.046312,
		0.865536, 0.466007, -0.183535,
		0.139087, 0.128392, 0.981922,
		6.823755, 13.821751, 16.013535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.381674, 13.414863, 15.403330>,  <6.726394, 13.731875, 15.326189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.381674, 13.414863, 15.403330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.216702, 13.427784, 15.767497>,  <7.117720, 13.435536, 15.985997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.216702, 13.427784, 15.767497>,  <7.381674, 13.414863, 15.403330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.216702, 13.427784, 15.767497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237685, -0.960941, 0.141770,
		0.879436, 0.274863, 0.388641,
		-0.412428, 0.032303, 0.910417,
		7.092974, 13.437475, 16.040623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.916392, 13.261869, 15.723976>,  <7.381674, 13.414863, 15.403330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.916392, 13.261869, 15.723976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.608248, 13.163900, 15.959454>,  <7.423362, 13.105119, 16.100740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.608248, 13.163900, 15.959454>,  <7.916392, 13.261869, 15.723976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.608248, 13.163900, 15.959454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507699, -0.794175, 0.333958,
		0.385731, 0.556146, 0.736147,
		-0.770359, -0.244923, 0.588693,
		7.377141, 13.090424, 16.136061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.176284, 13.134347, 16.457058>,  <7.916392, 13.261869, 15.723976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.176284, 13.134347, 16.457058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.835658, 12.925700, 16.436066>,  <7.631282, 12.800512, 16.423471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.835658, 12.925700, 16.436066>,  <8.176284, 13.134347, 16.457058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.835658, 12.925700, 16.436066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509514, -0.847039, 0.151393,
		-0.123421, 0.102183, 0.987080,
		-0.851565, -0.521616, -0.052479,
		7.580188, 12.769216, 16.420322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.109419, 12.742942, 17.056309>,  <8.176284, 13.134347, 16.457058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.109419, 12.742942, 17.056309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.866036, 12.571530, 16.789133>,  <7.720006, 12.468683, 16.628828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.866036, 12.571530, 16.789133>,  <8.109419, 12.742942, 17.056309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.866036, 12.571530, 16.789133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500979, -0.860175, 0.095496,
		-0.615466, -0.276518, 0.738065,
		-0.608459, -0.428529, -0.667938,
		7.683498, 12.442971, 16.588751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.972142, 12.058890, 17.223288>,  <8.109419, 12.742942, 17.056309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.972142, 12.058890, 17.223288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.850197, 12.037890, 16.842909>,  <7.777030, 12.025290, 16.614681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.850197, 12.037890, 16.842909>,  <7.972142, 12.058890, 17.223288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.850197, 12.037890, 16.842909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480708, -0.870444, -0.106054,
		-0.822179, -0.489461, 0.290604,
		-0.304864, -0.052500, -0.950948,
		7.758738, 12.022141, 16.557625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.796911, 11.374370, 17.123402>,  <7.972142, 12.058890, 17.223288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.796911, 11.374370, 17.123402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.833451, 11.480499, 16.739473>,  <7.855376, 11.544177, 16.509115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.833451, 11.480499, 16.739473>,  <7.796911, 11.374370, 17.123402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.833451, 11.480499, 16.739473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234121, -0.942557, -0.238269,
		-0.967906, -0.202949, -0.148222,
		0.091352, 0.265324, -0.959822,
		7.860857, 11.560097, 16.451527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.366986, 10.828036, 16.632204>,  <7.796911, 11.374370, 17.123402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.366986, 10.828036, 16.632204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.685129, 10.998618, 16.459906>,  <7.876015, 11.100967, 16.356527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.685129, 10.998618, 16.459906>,  <7.366986, 10.828036, 16.632204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.685129, 10.998618, 16.459906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366458, -0.904366, -0.218702,
		-0.482817, 0.016096, -0.875573,
		0.795359, 0.426454, -0.430745,
		7.923737, 11.126554, 16.330683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.513823, 10.342764, 16.152145>,  <7.366986, 10.828036, 16.632204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.513823, 10.342764, 16.152145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.833136, 10.583570, 16.159359>,  <8.024723, 10.728053, 16.163687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.833136, 10.583570, 16.159359>,  <7.513823, 10.342764, 16.152145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.833136, 10.583570, 16.159359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573942, -0.751298, -0.325795,
		-0.182584, 0.270426, -0.945268,
		0.798282, 0.602014, 0.018034,
		8.072620, 10.764174, 16.164768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.926310, 10.077395, 15.670012>,  <7.513823, 10.342764, 16.152145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.926310, 10.077395, 15.670012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.176540, 10.311607, 15.876238>,  <8.326678, 10.452135, 15.999974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.176540, 10.311607, 15.876238>,  <7.926310, 10.077395, 15.670012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.176540, 10.311607, 15.876238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758638, -0.610719, -0.226916,
		0.182000, 0.533082, -0.826256,
		0.625575, 0.585531, 0.515567,
		8.364213, 10.487267, 16.030909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.469398, 10.295914, 15.195379>,  <7.926310, 10.077395, 15.670012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.469398, 10.295914, 15.195379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.632104, 10.290879, 15.560758>,  <8.729728, 10.287858, 15.779984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.632104, 10.290879, 15.560758>,  <8.469398, 10.295914, 15.195379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.632104, 10.290879, 15.560758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842753, -0.380739, -0.380533,
		0.352574, 0.924597, -0.144264,
		0.406767, -0.012587, 0.913445,
		8.754134, 10.287103, 15.834791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.095249, 10.596133, 15.151700>,  <8.469398, 10.295914, 15.195379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.095249, 10.596133, 15.151700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.147556, 10.394197, 15.493000>,  <9.178941, 10.273036, 15.697781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.147556, 10.394197, 15.493000>,  <9.095249, 10.596133, 15.151700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.147556, 10.394197, 15.493000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903486, -0.293658, -0.312214,
		0.408182, 0.811727, 0.417715,
		0.130767, -0.504840, 0.853250,
		9.186787, 10.242745, 15.748975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.822814, 10.677074, 15.303433>,  <9.095249, 10.596133, 15.151700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.822814, 10.677074, 15.303433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694335, 10.354902, 15.502678>,  <9.617248, 10.161599, 15.622225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694335, 10.354902, 15.502678>,  <9.822814, 10.677074, 15.303433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.694335, 10.354902, 15.502678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903380, -0.418407, -0.094026,
		0.284144, 0.419782, 0.862001,
		-0.321197, -0.805431, 0.498110,
		9.597976, 10.113273, 15.652111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.316024, 10.423132, 15.944417>,  <9.822814, 10.677074, 15.303433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.316024, 10.423132, 15.944417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.119690, 10.096970, 15.821651>,  <10.001889, 9.901273, 15.747993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.119690, 10.096970, 15.821651>,  <10.316024, 10.423132, 15.944417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.119690, 10.096970, 15.821651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868218, -0.487148, -0.094255,
		-0.072657, -0.312732, 0.947058,
		-0.490835, -0.815405, -0.306914,
		9.972440, 9.852348, 15.729577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.674714, 9.834237, 16.113159>,  <10.316024, 10.423132, 15.944417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.674714, 9.834237, 16.113159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.415030, 9.644675, 15.875188>,  <10.259218, 9.530938, 15.732406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.415030, 9.644675, 15.875188>,  <10.674714, 9.834237, 16.113159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.415030, 9.644675, 15.875188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733797, -0.596080, -0.325930,
		-0.200164, -0.648153, 0.734733,
		-0.649212, -0.473905, -0.594927,
		10.220266, 9.502503, 15.696710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.736566, 9.067433, 16.252674>,  <10.674714, 9.834237, 16.113159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.736566, 9.067433, 16.252674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.569795, 9.124581, 15.893618>,  <10.469732, 9.158871, 15.678184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.569795, 9.124581, 15.893618>,  <10.736566, 9.067433, 16.252674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.569795, 9.124581, 15.893618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618811, -0.678743, -0.395451,
		-0.665765, -0.720345, 0.194578,
		-0.416929, 0.142870, -0.897640,
		10.444716, 9.167442, 15.624326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.577874, 8.454589, 15.996103>,  <10.736566, 9.067433, 16.252674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.577874, 8.454589, 15.996103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.572943, 8.693305, 15.675182>,  <10.569984, 8.836535, 15.482630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.572943, 8.693305, 15.675182>,  <10.577874, 8.454589, 15.996103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.572943, 8.693305, 15.675182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588205, -0.644527, -0.488467,
		-0.808618, -0.477940, -0.343089,
		-0.012328, 0.596790, -0.802303,
		10.569244, 8.872342, 15.434491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.579887, 7.944663, 15.396602>,  <10.577874, 8.454589, 15.996103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.579887, 7.944663, 15.396602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.730638, 8.292280, 15.268398>,  <10.821088, 8.500851, 15.191476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.730638, 8.292280, 15.268398>,  <10.579887, 7.944663, 15.396602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.730638, 8.292280, 15.268398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725346, -0.492092, -0.481371,
		-0.576053, -0.051063, -0.815816,
		0.376877, 0.869044, -0.320509,
		10.843700, 8.552994, 15.172246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.933260, 7.694724, 14.843513>,  <10.579887, 7.944663, 15.396602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.933260, 7.694724, 14.843513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.081926, 8.064226, 14.880479>,  <11.171126, 8.285928, 14.902658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.081926, 8.064226, 14.880479>,  <10.933260, 7.694724, 14.843513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.081926, 8.064226, 14.880479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769611, -0.250909, -0.587148,
		-0.519194, 0.289346, -0.804187,
		0.371666, 0.923755, 0.092414,
		11.193426, 8.341352, 14.908203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.261965, 7.868128, 14.188582>,  <10.933260, 7.694724, 14.843513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.261965, 7.868128, 14.188582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422464, 8.123030, 14.451765>,  <11.518764, 8.275970, 14.609674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422464, 8.123030, 14.451765>,  <11.261965, 7.868128, 14.188582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.422464, 8.123030, 14.451765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897013, -0.127994, -0.423067,
		-0.185386, 0.759951, -0.622982,
		0.401248, 0.637253, 0.657957,
		11.542839, 8.314206, 14.649152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.779092, 8.343991, 13.781439>,  <11.261965, 7.868128, 14.188582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.779092, 8.343991, 13.781439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.850090, 8.335147, 14.174988>,  <11.892689, 8.329841, 14.411118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.850090, 8.335147, 14.174988>,  <11.779092, 8.343991, 13.781439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.850090, 8.335147, 14.174988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945236, -0.274424, -0.176693,
		0.273905, 0.961355, -0.027809,
		0.177496, -0.022111, 0.983873,
		11.903339, 8.328513, 14.470150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.481348, 8.616898, 13.795065>,  <11.779092, 8.343991, 13.781439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.481348, 8.616898, 13.795065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.391544, 8.374234, 14.100106>,  <12.337662, 8.228637, 14.283131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.391544, 8.374234, 14.100106>,  <12.481348, 8.616898, 13.795065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.391544, 8.374234, 14.100106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956771, -0.285713, 0.054385,
		0.184892, 0.741846, 0.644577,
		-0.224509, -0.606658, 0.762602,
		12.324191, 8.192237, 14.328887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.333516, 9.288496, 13.655276>,  <12.481348, 8.616898, 13.795065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.333516, 9.288496, 13.655276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.706615, 9.157887, 13.594137>,  <12.930475, 9.079521, 13.557454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.706615, 9.157887, 13.594137>,  <12.333516, 9.288496, 13.655276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.706615, 9.157887, 13.594137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120021, 0.681002, -0.722379,
		0.339963, 0.655453, 0.674393,
		0.932749, -0.326523, -0.152847,
		12.986440, 9.059930, 13.548283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.840738, 9.827594, 13.790951>,  <12.333516, 9.288496, 13.655276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.840738, 9.827594, 13.790951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032288, 9.584067, 13.537962>,  <13.147218, 9.437951, 13.386168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032288, 9.584067, 13.537962>,  <12.840738, 9.827594, 13.790951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.032288, 9.584067, 13.537962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132125, 0.762229, -0.633680,
		0.867884, 0.219888, 0.445451,
		0.478874, -0.608816, -0.632473,
		13.175950, 9.401423, 13.348220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.575297, 10.020989, 13.084157>,  <12.840738, 9.827594, 13.790951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.575297, 10.020989, 13.084157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.974339, 10.031682, 13.109685>,  <13.213763, 10.038097, 13.125002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.974339, 10.031682, 13.109685>,  <12.575297, 10.020989, 13.084157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.974339, 10.031682, 13.109685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043865, -0.957659, -0.284543,
		0.053512, 0.286660, -0.956537,
		0.997603, 0.026732, 0.063821,
		13.273620, 10.039701, 13.128831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069201, 9.790864, 12.419511>,  <12.575297, 10.020989, 13.084157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069201, 9.790864, 12.419511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205319, 9.731736, 12.790961>,  <13.286991, 9.696259, 13.013831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205319, 9.731736, 12.790961>,  <13.069201, 9.790864, 12.419511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.205319, 9.731736, 12.790961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014344, -0.988268, -0.152057,
		0.940208, 0.038424, -0.338426,
		0.340298, -0.147820, 0.928626,
		13.307409, 9.687390, 13.069550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.594036, 9.437032, 12.125462>,  <13.069201, 9.790864, 12.419511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.594036, 9.437032, 12.125462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256276, 9.561994, 11.951385>,  <13.053620, 9.636971, 11.846938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256276, 9.561994, 11.951385>,  <13.594036, 9.437032, 12.125462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.256276, 9.561994, 11.951385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183662, -0.594311, -0.782983,
		-0.503246, -0.741080, 0.444460,
		-0.844400, 0.312403, -0.435193,
		13.002956, 9.655715, 11.820827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.142720, 8.691695, 11.980685>,  <13.594036, 9.437032, 12.125462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.142720, 8.691695, 11.980685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.127302, 9.015475, 11.746317>,  <13.118052, 9.209743, 11.605696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.127302, 9.015475, 11.746317>,  <13.142720, 8.691695, 11.980685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127302, 9.015475, 11.746317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278231, -0.554475, -0.784311,
		-0.959741, -0.193252, -0.203842,
		-0.038545, 0.809451, -0.585921,
		13.115739, 9.258310, 11.570540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.601997, 8.702793, 11.493065>,  <13.142720, 8.691695, 11.980685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.601997, 8.702793, 11.493065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920180, 8.885346, 11.333586>,  <13.111091, 8.994879, 11.237898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920180, 8.885346, 11.333586>,  <12.601997, 8.702793, 11.493065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920180, 8.885346, 11.333586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138216, -0.777199, -0.613888,
		-0.590036, 0.433215, -0.681309,
		0.795458, 0.456384, -0.398698,
		13.158817, 9.022262, 11.213976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.307951, 9.186676, 11.990792>,  <12.601997, 8.702793, 11.493065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.307951, 9.186676, 11.990792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.932520, 9.177143, 11.853095>,  <11.707261, 9.171423, 11.770476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.932520, 9.177143, 11.853095>,  <12.307951, 9.186676, 11.990792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.932520, 9.177143, 11.853095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261005, 0.701590, 0.663059,
		0.225716, 0.712182, -0.664717,
		-0.938578, -0.023832, -0.344243,
		11.650947, 9.169993, 11.749822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.114127, 9.792236, 11.916485>,  <12.307951, 9.186676, 11.990792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.114127, 9.792236, 11.916485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.764428, 9.607675, 11.976878>,  <11.554608, 9.496938, 12.013114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.764428, 9.607675, 11.976878>,  <12.114127, 9.792236, 11.916485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.764428, 9.607675, 11.976878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243669, 0.686025, 0.685562,
		-0.419900, 0.562561, -0.712186,
		-0.874248, -0.461405, 0.150984,
		11.502153, 9.469254, 12.022173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.625768, 10.309543, 11.723187>,  <12.114127, 9.792236, 11.916485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.625768, 10.309543, 11.723187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469963, 10.047857, 11.982506>,  <11.376480, 9.890846, 12.138097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469963, 10.047857, 11.982506>,  <11.625768, 10.309543, 11.723187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.469963, 10.047857, 11.982506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060412, 0.720519, 0.690799,
		-0.919038, 0.229910, -0.320173,
		-0.389512, -0.654213, 0.648295,
		11.353109, 9.851593, 12.176994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.051036, 10.633003, 11.897646>,  <11.625768, 10.309543, 11.723187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.051036, 10.633003, 11.897646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.089553, 10.358523, 12.186051>,  <11.112663, 10.193835, 12.359095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.089553, 10.358523, 12.186051>,  <11.051036, 10.633003, 11.897646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.089553, 10.358523, 12.186051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200012, 0.696263, 0.689356,
		-0.975050, -0.210592, -0.070202,
		0.096293, -0.686198, 0.721012,
		11.118441, 10.152664, 12.402355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.414428, 10.664048, 12.313531>,  <11.051036, 10.633003, 11.897646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.414428, 10.664048, 12.313531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724827, 10.527963, 12.525976>,  <10.911066, 10.446311, 12.653443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724827, 10.527963, 12.525976>,  <10.414428, 10.664048, 12.313531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724827, 10.527963, 12.525976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190385, 0.676436, 0.711469,
		-0.601316, -0.653214, 0.460141,
		0.775998, -0.340214, 0.531114,
		10.957626, 10.425899, 12.685310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.123519, 10.546528, 13.087914>,  <10.414428, 10.664048, 12.313531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.123519, 10.546528, 13.087914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.519912, 10.548835, 13.141464>,  <10.757748, 10.550220, 13.173594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.519912, 10.548835, 13.141464>,  <10.123519, 10.546528, 13.087914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.519912, 10.548835, 13.141464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125639, 0.387344, 0.913334,
		-0.046588, -0.921917, 0.384575,
		0.990981, 0.005767, 0.133875,
		10.817206, 10.550565, 13.181626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.072112, 10.338901, 13.745950>,  <10.123519, 10.546528, 13.087914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.072112, 10.338901, 13.745950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.449888, 10.463614, 13.704330>,  <10.676554, 10.538442, 13.679359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.449888, 10.463614, 13.704330>,  <10.072112, 10.338901, 13.745950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.449888, 10.463614, 13.704330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009621, 0.342642, 0.939417,
		0.328527, -0.886227, 0.326606,
		0.944446, 0.311765, -0.104041,
		10.733220, 10.557148, 13.673117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.503097, 10.212524, 14.409575>,  <10.072112, 10.338901, 13.745950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.503097, 10.212524, 14.409575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651342, 10.510233, 14.187330>,  <10.740290, 10.688858, 14.053983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.651342, 10.510233, 14.187330>,  <10.503097, 10.212524, 14.409575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.651342, 10.510233, 14.187330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131751, 0.550036, 0.824683,
		0.919395, -0.378841, 0.105792,
		0.370614, 0.744271, -0.555613,
		10.762527, 10.733514, 14.020646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.941587, 10.616320, 14.874125>,  <10.503097, 10.212524, 14.409575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.941587, 10.616320, 14.874125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.872893, 10.866045, 14.569300>,  <10.831677, 11.015880, 14.386404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.872893, 10.866045, 14.569300>,  <10.941587, 10.616320, 14.874125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.872893, 10.866045, 14.569300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107553, 0.757050, 0.644443,
		0.979255, 0.192635, -0.062865,
		-0.171734, 0.624313, -0.762064,
		10.821373, 11.053339, 14.340681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.231216, 11.240975, 15.056142>,  <10.941587, 10.616320, 14.874125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.231216, 11.240975, 15.056142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.961943, 11.350336, 14.781311>,  <10.800379, 11.415953, 14.616412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.961943, 11.350336, 14.781311>,  <11.231216, 11.240975, 15.056142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.961943, 11.350336, 14.781311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133665, 0.868848, 0.476693,
		0.727294, 0.412741, -0.548350,
		-0.673184, 0.273401, -0.687077,
		10.759988, 11.432356, 14.575188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.514171, 11.916391, 14.826770>,  <11.231216, 11.240975, 15.056142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.514171, 11.916391, 14.826770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.122099, 11.884628, 14.754168>,  <10.886856, 11.865570, 14.710607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.122099, 11.884628, 14.754168>,  <11.514171, 11.916391, 14.826770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.122099, 11.884628, 14.754168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138277, 0.930305, 0.339724,
		0.141878, 0.358088, -0.922845,
		-0.980179, -0.079409, -0.181505,
		10.828045, 11.860806, 14.699716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.321404, 12.576557, 14.691935>,  <11.514171, 11.916391, 14.826770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.321404, 12.576557, 14.691935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.961478, 12.409620, 14.742785>,  <10.745523, 12.309458, 14.773295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.961478, 12.409620, 14.742785>,  <11.321404, 12.576557, 14.691935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.961478, 12.409620, 14.742785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339024, 0.852289, 0.398330,
		-0.274588, 0.315323, -0.908390,
		-0.899813, -0.417343, 0.127126,
		10.691534, 12.284417, 14.780923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.823680, 13.032405, 14.370441>,  <11.321404, 12.576557, 14.691935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.823680, 13.032405, 14.370441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638145, 12.802855, 14.640411>,  <10.526825, 12.665124, 14.802393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638145, 12.802855, 14.640411>,  <10.823680, 13.032405, 14.370441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.638145, 12.802855, 14.640411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447785, 0.809220, 0.380330,
		-0.764425, -0.125810, -0.632318,
		-0.463835, -0.573877, 0.674924,
		10.498995, 12.630692, 14.842889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.118892, 13.316739, 14.399416>,  <10.823680, 13.032405, 14.370441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.118892, 13.316739, 14.399416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.140368, 13.096839, 14.732857>,  <10.153255, 12.964899, 14.932921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.140368, 13.096839, 14.732857>,  <10.118892, 13.316739, 14.399416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.140368, 13.096839, 14.732857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570841, 0.668048, 0.477339,
		-0.819303, -0.501483, -0.277952,
		0.053692, -0.549751, 0.833601,
		10.156476, 12.931913, 14.982937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.328093, 13.225168, 14.598518>,  <10.118892, 13.316739, 14.399416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.328093, 13.225168, 14.598518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.579587, 13.162296, 14.903146>,  <9.730484, 13.124574, 15.085922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.579587, 13.162296, 14.903146>,  <9.328093, 13.225168, 14.598518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.579587, 13.162296, 14.903146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475352, 0.697383, 0.536374,
		-0.615412, -0.699251, 0.363754,
		0.628736, -0.157180, 0.761568,
		9.768208, 13.115143, 15.131617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.943542, 13.214554, 15.110573>,  <9.328093, 13.225168, 14.598518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.943542, 13.214554, 15.110573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.290669, 13.252839, 15.305604>,  <9.498945, 13.275810, 15.422623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.290669, 13.252839, 15.305604>,  <8.943542, 13.214554, 15.110573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.290669, 13.252839, 15.305604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451857, 0.560187, 0.694274,
		-0.206684, -0.822818, 0.529388,
		0.867818, 0.095712, 0.487578,
		9.551015, 13.281552, 15.451878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.824934, 13.095610, 15.828656>,  <8.943542, 13.214554, 15.110573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.824934, 13.095610, 15.828656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.138812, 13.340196, 15.787930>,  <9.327139, 13.486947, 15.763494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.138812, 13.340196, 15.787930>,  <8.824934, 13.095610, 15.828656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.138812, 13.340196, 15.787930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390488, 0.615159, 0.684908,
		0.481428, -0.497687, 0.721481,
		0.784695, 0.611464, -0.101814,
		9.374221, 13.523635, 15.757386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.862156, 13.442655, 16.479496>,  <8.824934, 13.095610, 15.828656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.862156, 13.442655, 16.479496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.122412, 13.667477, 16.275236>,  <9.278565, 13.802370, 16.152681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.122412, 13.667477, 16.275236>,  <8.862156, 13.442655, 16.479496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.122412, 13.667477, 16.275236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330213, 0.814950, 0.476252,
		0.683832, -0.141246, 0.715837,
		0.650640, 0.562055, -0.510648,
		9.317604, 13.836093, 16.122042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.269261, 13.809955, 16.952408>,  <8.862156, 13.442655, 16.479496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.269261, 13.809955, 16.952408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.263852, 14.020799, 16.612532>,  <9.260607, 14.147305, 16.408606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.263852, 14.020799, 16.612532>,  <9.269261, 13.809955, 16.952408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.263852, 14.020799, 16.612532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390699, 0.779428, 0.489741,
		0.920419, 0.338595, 0.195401,
		-0.013523, 0.527110, -0.849689,
		9.259795, 14.178932, 16.357624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.647538, 14.439556, 17.029024>,  <9.269261, 13.809955, 16.952408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.647538, 14.439556, 17.029024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.417982, 14.537823, 16.716537>,  <9.280249, 14.596783, 16.529045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.417982, 14.537823, 16.716537>,  <9.647538, 14.439556, 17.029024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.417982, 14.537823, 16.716537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346243, 0.791698, 0.503319,
		0.742136, 0.559341, -0.369287,
		-0.573890, 0.245668, -0.781215,
		9.245815, 14.611523, 16.482172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.793522, 15.091047, 16.895586>,  <9.647538, 14.439556, 17.029024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.793522, 15.091047, 16.895586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.443007, 15.028324, 16.713366>,  <9.232697, 14.990690, 16.604033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.443007, 15.028324, 16.713366>,  <9.793522, 15.091047, 16.895586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.443007, 15.028324, 16.713366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363677, 0.835473, 0.411975,
		0.316000, 0.526683, -0.789144,
		-0.876289, -0.156809, -0.455552,
		9.180120, 14.981281, 16.576700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.671415, 15.801037, 16.500151>,  <9.793522, 15.091047, 16.895586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.671415, 15.801037, 16.500151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.330807, 15.608194, 16.582600>,  <9.126442, 15.492489, 16.632069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.330807, 15.608194, 16.582600>,  <9.671415, 15.801037, 16.500151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.330807, 15.608194, 16.582600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484056, 0.873914, 0.044317,
		-0.201500, -0.062038, -0.977522,
		-0.851521, -0.482105, 0.206124,
		9.075351, 15.463563, 16.644436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.460890, 15.685425, 16.686041>,  <9.671415, 15.801037, 16.500151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.460890, 15.685425, 16.686041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.348841, 16.055857, 16.787161>,  <10.281611, 16.278116, 16.847832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.348841, 16.055857, 16.787161>,  <10.460890, 15.685425, 16.686041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.348841, 16.055857, 16.787161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896462, 0.346548, -0.276153,
		-0.343346, 0.149267, -0.927272,
		-0.280124, 0.926080, 0.252798,
		10.264804, 16.333681, 16.863001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.889891, 16.173590, 17.149080>,  <10.460890, 15.685425, 16.686041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.889891, 16.173590, 17.149080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.186770, 16.356146, 16.952776>,  <11.364899, 16.465679, 16.834993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.186770, 16.356146, 16.952776>,  <10.889891, 16.173590, 17.149080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.186770, 16.356146, 16.952776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082957, 0.789217, 0.608486,
		0.665024, -0.410906, 0.623618,
		0.742200, 0.456391, -0.490761,
		11.409431, 16.493063, 16.805548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.108474, 16.637093, 17.591881>,  <10.889891, 16.173590, 17.149080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.108474, 16.637093, 17.591881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278503, 16.757988, 17.250597>,  <11.380521, 16.830524, 17.045828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278503, 16.757988, 17.250597>,  <11.108474, 16.637093, 17.591881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.278503, 16.757988, 17.250597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246129, 0.868496, 0.430275,
		0.871055, -0.392896, 0.294780,
		0.425068, 0.302239, -0.853211,
		11.406026, 16.848660, 16.994635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847517, 16.940956, 17.749264>,  <11.108474, 16.637093, 17.591881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847517, 16.940956, 17.749264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.693404, 17.090443, 17.411768>,  <11.600937, 17.180134, 17.209270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.693404, 17.090443, 17.411768>,  <11.847517, 16.940956, 17.749264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.693404, 17.090443, 17.411768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220626, 0.925114, 0.309012,
		0.896037, -0.067094, -0.438880,
		-0.385281, 0.373715, -0.843739,
		11.577820, 17.202557, 17.158646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.302234, 17.405312, 17.364414>,  <11.847517, 16.940956, 17.749264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.302234, 17.405312, 17.364414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.923258, 17.517752, 17.303305>,  <11.695872, 17.585215, 17.266640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.923258, 17.517752, 17.303305>,  <12.302234, 17.405312, 17.364414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.923258, 17.517752, 17.303305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217367, 0.915957, 0.337304,
		0.234750, 0.286367, -0.928917,
		-0.947441, 0.281098, -0.152774,
		11.639026, 17.602081, 17.257473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.147656, 17.998913, 16.844772>,  <12.302234, 17.405312, 17.364414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.147656, 17.998913, 16.844772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.883684, 17.996758, 17.145296>,  <11.725301, 17.995464, 17.325609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.883684, 17.996758, 17.145296>,  <12.147656, 17.998913, 16.844772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.883684, 17.996758, 17.145296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378541, 0.861396, 0.338679,
		-0.648998, 0.507905, -0.566422,
		-0.659931, -0.005388, 0.751307,
		11.685705, 17.995142, 17.370687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.624969, 18.520384, 16.771507>,  <12.147656, 17.998913, 16.844772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.624969, 18.520384, 16.771507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.713546, 18.430714, 17.151131>,  <11.766692, 18.376911, 17.378904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.713546, 18.430714, 17.151131>,  <11.624969, 18.520384, 16.771507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.713546, 18.430714, 17.151131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422045, 0.899383, 0.113968,
		-0.879114, 0.375307, 0.293775,
		0.221443, -0.224177, 0.949056,
		11.779979, 18.363461, 17.435848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.638767, 19.225082, 17.131151>,  <11.624969, 18.520384, 16.771507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.638767, 19.225082, 17.131151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.806452, 18.986048, 17.404547>,  <11.907063, 18.842627, 17.568584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.806452, 18.986048, 17.404547>,  <11.638767, 19.225082, 17.131151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.806452, 18.986048, 17.404547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423258, 0.794653, 0.435178,
		-0.803191, 0.106860, 0.586059,
		0.419210, -0.597585, 0.683487,
		11.932215, 18.806772, 17.609592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.625665, 19.664801, 17.692911>,  <11.638767, 19.225082, 17.131151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.625665, 19.664801, 17.692911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.915235, 19.391888, 17.733753>,  <12.088977, 19.228140, 17.758259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.915235, 19.391888, 17.733753>,  <11.625665, 19.664801, 17.692911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.915235, 19.391888, 17.733753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580852, 0.682660, 0.443381,
		-0.372215, -0.261665, 0.890498,
		0.723925, -0.682281, 0.102108,
		12.132412, 19.187204, 17.764385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.717854, 19.519327, 18.381746>,  <11.625665, 19.664801, 17.692911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.717854, 19.519327, 18.381746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064944, 19.435854, 18.201302>,  <12.273198, 19.385771, 18.093035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064944, 19.435854, 18.201302>,  <11.717854, 19.519327, 18.381746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.064944, 19.435854, 18.201302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467378, 0.651426, 0.597663,
		0.169144, -0.729448, 0.662794,
		0.867726, -0.208684, -0.451113,
		12.325262, 19.373249, 18.065968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.265930, 19.492788, 18.899628>,  <11.717854, 19.519327, 18.381746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.265930, 19.492788, 18.899628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.452103, 19.556826, 18.551434>,  <12.563807, 19.595249, 18.342518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.452103, 19.556826, 18.551434>,  <12.265930, 19.492788, 18.899628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.452103, 19.556826, 18.551434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566648, 0.701621, 0.432015,
		0.679914, -0.694332, 0.235839,
		0.465431, 0.160095, -0.870485,
		12.591732, 19.604855, 18.290289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.004102, 19.381224, 18.975035>,  <12.265930, 19.492788, 18.899628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.004102, 19.381224, 18.975035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.978679, 19.610254, 18.648081>,  <12.963425, 19.747673, 18.451908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.978679, 19.610254, 18.648081>,  <13.004102, 19.381224, 18.975035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.978679, 19.610254, 18.648081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705893, 0.604763, 0.368750,
		0.705461, -0.553548, -0.442616,
		-0.063557, 0.572578, -0.817383,
		12.959612, 19.782028, 18.402866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.598584, 19.696949, 18.942995>,  <13.004102, 19.381224, 18.975035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.598584, 19.696949, 18.942995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.405654, 19.926851, 18.678566>,  <13.289896, 20.064793, 18.519909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.405654, 19.926851, 18.678566>,  <13.598584, 19.696949, 18.942995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.405654, 19.926851, 18.678566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552024, 0.785385, 0.280073,
		0.680171, -0.229842, -0.696089,
		-0.482325, 0.574755, -0.661074,
		13.260957, 20.099277, 18.480244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.099353, 20.043205, 18.469183>,  <13.598584, 19.696949, 18.942995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.099353, 20.043205, 18.469183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770934, 20.268097, 18.508743>,  <13.573883, 20.403032, 18.532480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770934, 20.268097, 18.508743>,  <14.099353, 20.043205, 18.469183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.770934, 20.268097, 18.508743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570599, 0.813520, 0.112258,
		-0.017344, 0.148603, -0.988745,
		-0.821046, 0.562230, 0.098902,
		13.524620, 20.436766, 18.538414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.344446, 20.725851, 18.317204>,  <14.099353, 20.043205, 18.469183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.344446, 20.725851, 18.317204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976174, 20.784092, 18.462063>,  <13.755212, 20.819036, 18.548979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976174, 20.784092, 18.462063>,  <14.344446, 20.725851, 18.317204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976174, 20.784092, 18.462063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355526, 0.695760, 0.624115,
		-0.161096, 0.703362, -0.692337,
		-0.920679, 0.145601, 0.362148,
		13.699971, 20.827772, 18.570707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325136, 21.419632, 18.175354>,  <14.344446, 20.725851, 18.317204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325136, 21.419632, 18.175354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068013, 21.303692, 18.458984>,  <13.913739, 21.234127, 18.629162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068013, 21.303692, 18.458984>,  <14.325136, 21.419632, 18.175354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.068013, 21.303692, 18.458984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420851, 0.639814, 0.643057,
		-0.640066, 0.711776, -0.289293,
		-0.642807, -0.289850, 0.709075,
		13.875172, 21.216738, 18.671707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.066574, 21.975941, 18.438843>,  <14.325136, 21.419632, 18.175354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.066574, 21.975941, 18.438843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989560, 21.724949, 18.740625>,  <13.943352, 21.574354, 18.921694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989560, 21.724949, 18.740625>,  <14.066574, 21.975941, 18.438843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989560, 21.724949, 18.740625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294614, 0.696408, 0.654384,
		-0.936020, 0.348265, 0.050780,
		-0.192535, -0.627477, 0.754455,
		13.931800, 21.536705, 18.966963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.804790, 22.475576, 18.854858>,  <14.066574, 21.975941, 18.438843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.804790, 22.475576, 18.854858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907700, 22.167364, 19.088129>,  <13.969445, 21.982437, 19.228090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907700, 22.167364, 19.088129>,  <13.804790, 22.475576, 18.854858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907700, 22.167364, 19.088129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348237, 0.636867, 0.687845,
		-0.901411, 0.026119, 0.432177,
		0.257274, -0.770531, 0.583175,
		13.984881, 21.936205, 19.263081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.573400, 22.754913, 19.491663>,  <13.804790, 22.475576, 18.854858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.573400, 22.754913, 19.491663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.826272, 22.455389, 19.571297>,  <13.977995, 22.275675, 19.619078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.826272, 22.455389, 19.571297>,  <13.573400, 22.754913, 19.491663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.826272, 22.455389, 19.571297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270573, 0.454116, 0.848863,
		-0.726043, -0.482768, 0.489690,
		0.632180, -0.748809, 0.199084,
		14.015926, 22.230747, 19.631021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.509670, 22.587252, 20.301691>,  <13.573400, 22.754913, 19.491663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.509670, 22.587252, 20.301691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.860224, 22.455070, 20.161549>,  <14.070556, 22.375761, 20.077463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.860224, 22.455070, 20.161549>,  <13.509670, 22.587252, 20.301691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.860224, 22.455070, 20.161549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451845, 0.312376, 0.835618,
		-0.166691, -0.890630, 0.423076,
		0.876385, -0.330455, -0.350356,
		14.123139, 22.355934, 20.056442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.675944, 22.307606, 20.849552>,  <13.509670, 22.587252, 20.301691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.675944, 22.307606, 20.849552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.010930, 22.362350, 20.637920>,  <14.211922, 22.395197, 20.510942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.010930, 22.362350, 20.637920>,  <13.675944, 22.307606, 20.849552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.010930, 22.362350, 20.637920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492197, 0.231803, 0.839052,
		0.237456, -0.963090, 0.126776,
		0.837470, 0.136839, -0.529073,
		14.262169, 22.403410, 20.479197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192553, 21.843147, 21.136438>,  <13.675944, 22.307606, 20.849552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.192553, 21.843147, 21.136438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.365801, 22.138248, 20.929316>,  <14.469750, 22.315310, 20.805042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.365801, 22.138248, 20.929316>,  <14.192553, 21.843147, 21.136438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.365801, 22.138248, 20.929316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524703, 0.260735, 0.810372,
		0.732866, -0.622686, -0.274171,
		0.433121, 0.737753, -0.517809,
		14.495737, 22.359575, 20.773973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.800516, 21.631725, 21.261202>,  <14.192553, 21.843147, 21.136438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.800516, 21.631725, 21.261202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.817719, 22.014629, 21.146797>,  <14.828040, 22.244371, 21.078154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.817719, 22.014629, 21.146797>,  <14.800516, 21.631725, 21.261202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.817719, 22.014629, 21.146797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620580, 0.198756, 0.758536,
		0.782963, -0.210116, -0.585508,
		0.043007, 0.957260, -0.286012,
		14.830621, 22.301807, 21.060993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500648, 21.704964, 21.252827>,  <14.800516, 21.631725, 21.261202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.500648, 21.704964, 21.252827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.335184, 22.065243, 21.305943>,  <15.235906, 22.281410, 21.337812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.335184, 22.065243, 21.305943>,  <15.500648, 21.704964, 21.252827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.335184, 22.065243, 21.305943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677480, 0.207090, 0.705787,
		0.608199, 0.381918, -0.695868,
		-0.413660, 0.900695, 0.132790,
		15.211086, 22.335451, 21.345779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052626, 22.026983, 21.524096>,  <15.500648, 21.704964, 21.252827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052626, 22.026983, 21.524096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774132, 22.310749, 21.567886>,  <15.607036, 22.481009, 21.594162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774132, 22.310749, 21.567886>,  <16.052626, 22.026983, 21.524096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.774132, 22.310749, 21.567886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582170, 0.468840, 0.664279,
		0.419921, 0.526231, -0.739424,
		-0.696236, 0.709415, 0.109480,
		15.565261, 22.523573, 21.600731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433609, 22.606297, 21.696030>,  <16.052626, 22.026983, 21.524096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433609, 22.606297, 21.696030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064188, 22.690493, 21.824247>,  <15.842536, 22.741011, 21.901178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064188, 22.690493, 21.824247>,  <16.433609, 22.606297, 21.696030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064188, 22.690493, 21.824247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382382, 0.442372, 0.811228,
		0.028956, 0.871780, -0.489040,
		-0.923551, 0.210490, 0.320544,
		15.787123, 22.753639, 21.920410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.370951, 23.384504, 21.917881>,  <16.433609, 22.606297, 21.696030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.370951, 23.384504, 21.917881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087696, 23.175550, 22.107897>,  <15.917744, 23.050179, 22.221907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087696, 23.175550, 22.107897>,  <16.370951, 23.384504, 21.917881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087696, 23.175550, 22.107897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270370, 0.420894, 0.865880,
		-0.652262, 0.741595, -0.156813,
		-0.708134, -0.522383, 0.475038,
		15.875256, 23.018835, 22.250408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056362, 23.856844, 22.417257>,  <16.370951, 23.384504, 21.917881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056362, 23.856844, 22.417257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.939539, 23.492542, 22.534035>,  <15.869445, 23.273962, 22.604101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.939539, 23.492542, 22.534035>,  <16.056362, 23.856844, 22.417257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939539, 23.492542, 22.534035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253748, 0.220524, 0.941797,
		-0.922125, 0.349139, 0.166696,
		-0.292057, -0.910753, 0.291944,
		15.851922, 23.219316, 22.621618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.578803, 23.828669, 22.992483>,  <16.056362, 23.856844, 22.417257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.578803, 23.828669, 22.992483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778651, 23.482218, 22.998148>,  <15.898560, 23.274347, 23.001547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778651, 23.482218, 22.998148>,  <15.578803, 23.828669, 22.992483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778651, 23.482218, 22.998148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433431, 0.264109, 0.861617,
		-0.750012, -0.424343, 0.507362,
		0.499620, -0.866129, 0.014161,
		15.928537, 23.222380, 23.002396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599574, 23.644579, 23.728634>,  <15.578803, 23.828669, 22.992483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599574, 23.644579, 23.728634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.888586, 23.408201, 23.585114>,  <16.061993, 23.266375, 23.499001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.888586, 23.408201, 23.585114>,  <15.599574, 23.644579, 23.728634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888586, 23.408201, 23.585114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536641, 0.152207, 0.829970,
		-0.435852, -0.792225, 0.427098,
		0.722530, -0.590942, -0.358800,
		16.105345, 23.230919, 23.477474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.804836, 23.333525, 24.367277>,  <15.599574, 23.644579, 23.728634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.804836, 23.333525, 24.367277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.083828, 23.252399, 24.092354>,  <16.251223, 23.203724, 23.927401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.083828, 23.252399, 24.092354>,  <15.804836, 23.333525, 24.367277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.083828, 23.252399, 24.092354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716419, 0.175444, 0.675251,
		-0.016366, -0.963372, 0.267667,
		0.697478, -0.202812, -0.687307,
		16.293072, 23.191555, 23.886162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149620, 22.747721, 24.684216>,  <15.804836, 23.333525, 24.367277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.149620, 22.747721, 24.684216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375328, 22.936203, 24.413052>,  <16.510754, 23.049292, 24.250353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375328, 22.936203, 24.413052>,  <16.149620, 22.747721, 24.684216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375328, 22.936203, 24.413052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385778, 0.575474, 0.721113,
		0.729913, -0.668427, 0.142943,
		0.564271, 0.471206, -0.677911,
		16.544609, 23.077564, 24.209679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727461, 22.445030, 24.757837>,  <16.149620, 22.747721, 24.684216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727461, 22.445030, 24.757837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779507, 22.804182, 24.589607>,  <16.810734, 23.019672, 24.488670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779507, 22.804182, 24.589607>,  <16.727461, 22.445030, 24.757837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.779507, 22.804182, 24.589607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449178, 0.324776, 0.832322,
		0.883918, -0.297208, -0.361050,
		0.130112, 0.897880, -0.420574,
		16.818541, 23.073545, 24.463434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435158, 22.633070, 24.855846>,  <16.727461, 22.445030, 24.757837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435158, 22.633070, 24.855846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259230, 22.979776, 24.761806>,  <17.153673, 23.187799, 24.705383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259230, 22.979776, 24.761806>,  <17.435158, 22.633070, 24.855846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259230, 22.979776, 24.761806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544736, 0.465598, 0.697482,
		0.714016, 0.178701, -0.676939,
		-0.439822, 0.866767, -0.235100,
		17.127283, 23.239807, 24.691277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.933508, 23.092764, 24.980595>,  <17.435158, 22.633070, 24.855846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.933508, 23.092764, 24.980595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.602667, 23.316671, 24.960361>,  <17.404161, 23.451015, 24.948221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.602667, 23.316671, 24.960361>,  <17.933508, 23.092764, 24.980595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.602667, 23.316671, 24.960361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339094, 0.568755, 0.749355,
		0.448235, 0.602642, -0.660233,
		-0.827104, 0.559769, -0.050583,
		17.354536, 23.484602, 24.945187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180424, 23.701332, 24.854340>,  <17.933508, 23.092764, 24.980595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.180424, 23.701332, 24.854340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.830187, 23.770479, 25.034763>,  <17.620045, 23.811968, 25.143017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.830187, 23.770479, 25.034763>,  <18.180424, 23.701332, 24.854340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.830187, 23.770479, 25.034763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441186, 0.666432, 0.601019,
		-0.196704, 0.725249, -0.659789,
		-0.875593, 0.172867, 0.451059,
		17.567509, 23.822340, 25.170080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250189, 24.374670, 25.083546>,  <18.180424, 23.701332, 24.854340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250189, 24.374670, 25.083546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.968468, 24.224234, 25.324383>,  <17.799435, 24.133972, 25.468885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.968468, 24.224234, 25.324383>,  <18.250189, 24.374670, 25.083546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.968468, 24.224234, 25.324383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346840, 0.557716, 0.754092,
		-0.619404, 0.739938, -0.262356,
		-0.704301, -0.376092, 0.602092,
		17.757177, 24.111406, 25.505011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.191263, 24.838205, 25.587027>,  <18.250189, 24.374670, 25.083546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.191263, 24.838205, 25.587027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961828, 24.567675, 25.771885>,  <17.824167, 24.405357, 25.882801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961828, 24.567675, 25.771885>,  <18.191263, 24.838205, 25.587027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.961828, 24.567675, 25.771885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412989, 0.248463, 0.876188,
		-0.707415, 0.693434, 0.136799,
		-0.573589, -0.676325, 0.462147,
		17.789751, 24.364777, 25.910528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872625, 25.190474, 26.075411>,  <18.191263, 24.838205, 25.587027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.872625, 25.190474, 26.075411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.866209, 24.809715, 26.197813>,  <17.862360, 24.581261, 26.271255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.866209, 24.809715, 26.197813>,  <17.872625, 25.190474, 26.075411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.866209, 24.809715, 26.197813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322114, 0.284811, 0.902843,
		-0.946565, 0.113051, 0.302050,
		-0.016040, -0.951894, 0.306007,
		17.861397, 24.524147, 26.289616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504641, 25.175404, 26.748474>,  <17.872625, 25.190474, 26.075411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504641, 25.175404, 26.748474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.742277, 24.854479, 26.725317>,  <17.884859, 24.661924, 26.711424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.742277, 24.854479, 26.725317>,  <17.504641, 25.175404, 26.748474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.742277, 24.854479, 26.725317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470346, 0.288092, 0.834133,
		-0.652556, -0.522781, 0.548518,
		0.594092, -0.802311, -0.057892,
		17.920506, 24.613785, 26.707949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425060, 24.876780, 27.401165>,  <17.504641, 25.175404, 26.748474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425060, 24.876780, 27.401165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.761980, 24.719049, 27.254177>,  <17.964132, 24.624411, 27.165983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.761980, 24.719049, 27.254177>,  <17.425060, 24.876780, 27.401165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.761980, 24.719049, 27.254177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435860, 0.097205, 0.894750,
		-0.317104, -0.913815, 0.253747,
		0.842301, -0.394327, -0.367471,
		18.014671, 24.600752, 27.143936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.594944, 24.344154, 28.011786>,  <17.425060, 24.876780, 27.401165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.594944, 24.344154, 28.011786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.907736, 24.449825, 27.785965>,  <18.095411, 24.513227, 27.650473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.907736, 24.449825, 27.785965>,  <17.594944, 24.344154, 28.011786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.907736, 24.449825, 27.785965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540312, 0.164278, 0.825273,
		0.310761, -0.950381, -0.014275,
		0.781978, 0.264175, -0.564553,
		18.142330, 24.529078, 27.616598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.165773, 23.837402, 28.129368>,  <17.594944, 24.344154, 28.011786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.165773, 23.837402, 28.129368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315498, 24.194675, 28.029680>,  <18.405334, 24.409040, 27.969868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315498, 24.194675, 28.029680>,  <18.165773, 23.837402, 28.129368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315498, 24.194675, 28.029680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563143, -0.005433, 0.826341,
		0.736722, -0.449656, -0.505025,
		0.374314, 0.893185, -0.249218,
		18.427792, 24.462631, 27.954914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958883, 23.733217, 28.165022>,  <18.165773, 23.837402, 28.129368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.958883, 23.733217, 28.165022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822407, 24.103962, 28.227657>,  <18.740520, 24.326408, 28.265240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822407, 24.103962, 28.227657>,  <18.958883, 23.733217, 28.165022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822407, 24.103962, 28.227657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447541, 0.013681, 0.894159,
		0.826617, 0.375159, -0.419476,
		-0.341190, 0.926860, 0.156590,
		18.720049, 24.382019, 28.274633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485516, 24.100769, 28.543890>,  <18.958883, 23.733217, 28.165022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485516, 24.100769, 28.543890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.187395, 24.353828, 28.628065>,  <19.008524, 24.505665, 28.678570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.187395, 24.353828, 28.628065>,  <19.485516, 24.100769, 28.543890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.187395, 24.353828, 28.628065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459278, 0.258358, 0.849891,
		0.483314, 0.730073, -0.483116,
		-0.745299, 0.632649, 0.210438,
		18.963806, 24.543623, 28.691196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787500, 24.773546, 28.747091>,  <19.485516, 24.100769, 28.543890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.787500, 24.773546, 28.747091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.421440, 24.785376, 28.907902>,  <19.201803, 24.792473, 29.004387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.421440, 24.785376, 28.907902>,  <19.787500, 24.773546, 28.747091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.421440, 24.785376, 28.907902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400056, 0.189174, 0.896754,
		-0.049532, 0.981498, -0.184954,
		-0.915151, 0.029574, 0.402025,
		19.146894, 24.794249, 29.028509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.911095, 25.352924, 29.210184>,  <19.787500, 24.773546, 28.747091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.911095, 25.352924, 29.210184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591288, 25.148371, 29.336208>,  <19.399405, 25.025639, 29.411823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591288, 25.148371, 29.336208>,  <19.911095, 25.352924, 29.210184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591288, 25.148371, 29.336208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277539, 0.150652, 0.948829,
		-0.532679, 0.846045, 0.021480,
		-0.799516, -0.511383, 0.315059,
		19.351433, 24.994955, 29.430727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498419, 25.738522, 29.738943>,  <19.911095, 25.352924, 29.210184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.498419, 25.738522, 29.738943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.412083, 25.350433, 29.782911>,  <19.360281, 25.117580, 29.809292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.412083, 25.350433, 29.782911>,  <19.498419, 25.738522, 29.738943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.412083, 25.350433, 29.782911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143183, 0.079907, 0.986465,
		-0.965873, 0.228660, 0.121672,
		-0.215842, -0.970221, 0.109920,
		19.347330, 25.059366, 29.815887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877954, 25.725471, 30.187185>,  <19.498419, 25.738522, 29.738943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877954, 25.725471, 30.187185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090555, 25.386778, 30.177824>,  <19.218115, 25.183561, 30.172207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090555, 25.386778, 30.177824>,  <18.877954, 25.725471, 30.187185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090555, 25.386778, 30.177824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059520, 0.009771, 0.998179,
		-0.844964, -0.531926, 0.055591,
		0.531501, -0.846735, -0.023404,
		19.250006, 25.132757, 30.170803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.468615, 25.432701, 30.573221>,  <18.877954, 25.725471, 30.187185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.468615, 25.432701, 30.573221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854513, 25.328333, 30.586990>,  <19.086052, 25.265711, 30.595251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854513, 25.328333, 30.586990>,  <18.468615, 25.432701, 30.573221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854513, 25.328333, 30.586990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039771, -0.015244, 0.999092,
		-0.260162, -0.965239, -0.025084,
		0.964746, -0.260923, 0.034423,
		19.143936, 25.250055, 30.597317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583265, 25.342091, 31.296162>,  <18.468615, 25.432701, 30.573221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583265, 25.342091, 31.296162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.938559, 25.275200, 31.125011>,  <19.151735, 25.235065, 31.022322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.938559, 25.275200, 31.125011>,  <18.583265, 25.342091, 31.296162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.938559, 25.275200, 31.125011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439155, 0.035695, 0.897702,
		-0.134849, -0.985272, 0.105145,
		0.888234, -0.167229, -0.427873,
		19.205029, 25.225031, 30.996649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.933889, 24.765228, 31.561155>,  <18.583265, 25.342091, 31.296162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.933889, 24.765228, 31.561155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210869, 25.026440, 31.438471>,  <19.377056, 25.183167, 31.364861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.210869, 25.026440, 31.438471>,  <18.933889, 24.765228, 31.561155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210869, 25.026440, 31.438471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336978, 0.083158, 0.937833,
		0.637937, -0.752755, -0.162474,
		0.692447, 0.653028, -0.306712,
		19.418604, 25.222347, 31.346457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198895, 24.756678, 32.248524>,  <18.933889, 24.765228, 31.561155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198895, 24.756678, 32.248524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.919474, 24.781288, 32.533688>,  <18.751822, 24.796055, 32.704784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.919474, 24.781288, 32.533688>,  <19.198895, 24.756678, 32.248524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.919474, 24.781288, 32.533688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016517, -0.997417, 0.069899,
		0.715367, 0.037053, 0.697766,
		-0.698553, 0.061529, 0.712908,
		18.709908, 24.799747, 32.747559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.510813, 24.263302, 32.812881>,  <19.198895, 24.756678, 32.248524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.510813, 24.263302, 32.812881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.114309, 24.303862, 32.846642>,  <18.876408, 24.328197, 32.866898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.114309, 24.303862, 32.846642>,  <19.510813, 24.263302, 32.812881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.114309, 24.303862, 32.846642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053880, -0.895103, 0.442591,
		0.120430, 0.434175, 0.892742,
		-0.991259, 0.101402, 0.084404,
		18.816933, 24.334282, 32.871964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620186, 23.690039, 32.239754>,  <19.510813, 24.263302, 32.812881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620186, 23.690039, 32.239754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.402527, 23.548052, 32.543835>,  <19.271931, 23.462860, 32.726284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.402527, 23.548052, 32.543835>,  <19.620186, 23.690039, 32.239754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.402527, 23.548052, 32.543835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594569, 0.476129, 0.647911,
		-0.591939, 0.804550, -0.048033,
		-0.544147, -0.354965, 0.760200,
		19.239283, 23.441563, 32.771896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116253, 23.938999, 31.914932>,  <19.620186, 23.690039, 32.239754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116253, 23.938999, 31.914932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.480864, 23.774509, 31.913565>,  <20.699631, 23.675816, 31.912745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.480864, 23.774509, 31.913565>,  <20.116253, 23.938999, 31.914932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.480864, 23.774509, 31.913565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314297, -0.691270, -0.650664,
		0.265204, 0.594173, -0.759358,
		0.911529, -0.411223, -0.003419,
		20.754322, 23.651142, 31.912539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297684, 23.770254, 31.181084>,  <20.116253, 23.938999, 31.914932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297684, 23.770254, 31.181084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.483810, 23.523418, 31.434912>,  <20.595488, 23.375317, 31.587208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.483810, 23.523418, 31.434912>,  <20.297684, 23.770254, 31.181084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.483810, 23.523418, 31.434912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308303, -0.785012, -0.537314,
		0.829716, 0.054382, -0.555531,
		0.465318, -0.617089, 0.634570,
		20.623405, 23.338291, 31.625282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.753544, 23.229340, 30.838863>,  <20.297684, 23.770254, 31.181084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.753544, 23.229340, 30.838863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.587591, 23.121880, 31.186588>,  <20.488020, 23.057404, 31.395224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.587591, 23.121880, 31.186588>,  <20.753544, 23.229340, 30.838863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.587591, 23.121880, 31.186588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366420, -0.825185, -0.429890,
		0.832833, -0.496886, 0.243914,
		-0.414880, -0.268652, 0.869310,
		20.463127, 23.041285, 31.447382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116590, 22.671793, 31.222643>,  <20.753544, 23.229340, 30.838863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116590, 22.671793, 31.222643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.721779, 22.722488, 31.262068>,  <20.484892, 22.752905, 31.285723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.721779, 22.722488, 31.262068>,  <21.116590, 22.671793, 31.222643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.721779, 22.722488, 31.262068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160549, -0.782042, -0.602191,
		0.000759, -0.610203, 0.792244,
		-0.987028, 0.126737, 0.098561,
		20.425671, 22.760509, 31.291636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.810942, 22.026083, 31.279858>,  <21.116590, 22.671793, 31.222643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.810942, 22.026083, 31.279858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.574930, 22.298429, 31.106289>,  <20.433323, 22.461838, 31.002148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.574930, 22.298429, 31.106289>,  <20.810942, 22.026083, 31.279858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.574930, 22.298429, 31.106289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035613, -0.558866, -0.828493,
		-0.806598, -0.473380, 0.353994,
		-0.590028, 0.680867, -0.433922,
		20.397923, 22.502689, 30.976112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.221569, 21.702312, 31.066036>,  <20.810942, 22.026083, 31.279858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.221569, 21.702312, 31.066036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.273067, 22.020163, 30.828718>,  <20.303967, 22.210873, 30.686327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.273067, 22.020163, 30.828718>,  <20.221569, 21.702312, 31.066036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.273067, 22.020163, 30.828718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222357, -0.559908, -0.798160,
		-0.966427, 0.234685, 0.104603,
		0.128748, 0.794623, -0.593294,
		20.311691, 22.258549, 30.650730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.576115, 21.702906, 30.613934>,  <20.221569, 21.702312, 31.066036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.576115, 21.702906, 30.613934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860136, 21.927515, 30.443985>,  <20.030548, 22.062281, 30.342016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860136, 21.927515, 30.443985>,  <19.576115, 21.702906, 30.613934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860136, 21.927515, 30.443985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195146, -0.422827, -0.884949,
		-0.676568, 0.711272, -0.190650,
		0.710052, 0.561524, -0.424874,
		20.073151, 22.095972, 30.316523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.197083, 22.105745, 30.116791>,  <19.576115, 21.702906, 30.613934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.197083, 22.105745, 30.116791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.582502, 22.037952, 30.033989>,  <19.813753, 21.997276, 29.984308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.582502, 22.037952, 30.033989>,  <19.197083, 22.105745, 30.116791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.582502, 22.037952, 30.033989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264015, -0.477227, -0.838183,
		0.043270, 0.862282, -0.504577,
		0.963547, -0.169484, -0.207006,
		19.871567, 21.987106, 29.971888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.176552, 22.128841, 29.394173>,  <19.197083, 22.105745, 30.116791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.176552, 22.128841, 29.394173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.546211, 21.989225, 29.456301>,  <19.768007, 21.905457, 29.493578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.546211, 21.989225, 29.456301>,  <19.176552, 22.128841, 29.394173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.546211, 21.989225, 29.456301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041170, -0.495182, -0.867813,
		0.379812, 0.795592, -0.471991,
		0.924147, -0.349038, 0.155321,
		19.823456, 21.884514, 29.502897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.600216, 22.277853, 28.767706>,  <19.176552, 22.128841, 29.394173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.600216, 22.277853, 28.767706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.735653, 21.958313, 28.966581>,  <19.816916, 21.766590, 29.085907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.735653, 21.958313, 28.966581>,  <19.600216, 22.277853, 28.767706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.735653, 21.958313, 28.966581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122484, -0.561324, -0.818482,
		0.932927, 0.216235, -0.287907,
		0.338593, -0.798848, 0.497189,
		19.837231, 21.718658, 29.115738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.020239, 21.904379, 28.301216>,  <19.600216, 22.277853, 28.767706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.020239, 21.904379, 28.301216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.967682, 21.624224, 28.581841>,  <19.936148, 21.456131, 28.750216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.967682, 21.624224, 28.581841>,  <20.020239, 21.904379, 28.301216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.967682, 21.624224, 28.581841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142352, -0.687033, -0.712546,
		0.981057, -0.193491, -0.009433,
		-0.131391, -0.700390, 0.701562,
		19.928265, 21.414106, 28.792309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.566559, 21.371918, 28.246126>,  <20.020239, 21.904379, 28.301216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.566559, 21.371918, 28.246126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.261749, 21.183325, 28.423676>,  <20.078863, 21.070169, 28.530205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.261749, 21.183325, 28.423676>,  <20.566559, 21.371918, 28.246126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.261749, 21.183325, 28.423676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022762, -0.704546, -0.709293,
		0.647147, -0.530396, 0.547614,
		-0.762025, -0.471482, 0.443872,
		20.033142, 21.041880, 28.556837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706203, 20.687469, 28.195084>,  <20.566559, 21.371918, 28.246126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.706203, 20.687469, 28.195084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.317760, 20.661894, 28.287050>,  <20.084694, 20.646549, 28.342230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.317760, 20.661894, 28.287050>,  <20.706203, 20.687469, 28.195084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.317760, 20.661894, 28.287050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140732, -0.624650, -0.768119,
		0.192731, -0.778283, 0.597604,
		-0.971108, -0.063938, 0.229919,
		20.026428, 20.642712, 28.356026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477749, 19.959429, 28.125757>,  <20.706203, 20.687469, 28.195084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477749, 19.959429, 28.125757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.115259, 20.126453, 28.152281>,  <19.897764, 20.226667, 28.168196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.115259, 20.126453, 28.152281>,  <20.477749, 19.959429, 28.125757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.115259, 20.126453, 28.152281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379693, -0.734783, -0.562074,
		-0.185976, -0.534544, 0.824424,
		-0.906226, 0.417561, 0.066310,
		19.843391, 20.251722, 28.172174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.975168, 19.378016, 28.226910>,  <20.477749, 19.959429, 28.125757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.975168, 19.378016, 28.226910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.775948, 19.689981, 28.075291>,  <19.656416, 19.877161, 27.984320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.775948, 19.689981, 28.075291>,  <19.975168, 19.378016, 28.226910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775948, 19.689981, 28.075291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459047, -0.607981, -0.647793,
		-0.735677, -0.148633, 0.660823,
		-0.498051, 0.779915, -0.379048,
		19.626532, 19.923956, 27.961576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.203623, 19.323668, 28.237335>,  <19.975168, 19.378016, 28.226910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.203623, 19.323668, 28.237335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.288206, 19.580189, 27.942305>,  <19.338957, 19.734100, 27.765287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.288206, 19.580189, 27.942305>,  <19.203623, 19.323668, 28.237335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.288206, 19.580189, 27.942305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637145, -0.481809, -0.601587,
		-0.741169, 0.597154, 0.306719,
		0.211460, 0.641302, -0.737575,
		19.351645, 19.772579, 27.721031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583294, 19.430969, 27.992006>,  <19.203623, 19.323668, 28.237335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583294, 19.430969, 27.992006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812880, 19.575432, 27.698030>,  <18.950630, 19.662109, 27.521645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812880, 19.575432, 27.698030>,  <18.583294, 19.430969, 27.992006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.812880, 19.575432, 27.698030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688610, -0.272826, -0.671850,
		-0.443152, 0.891702, 0.092103,
		0.573962, 0.361155, -0.734939,
		18.985067, 19.683779, 27.477549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224766, 19.906109, 27.605616>,  <18.583294, 19.430969, 27.992006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.224766, 19.906109, 27.605616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511436, 19.788910, 27.352468>,  <18.683439, 19.718590, 27.200581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511436, 19.788910, 27.352468>,  <18.224766, 19.906109, 27.605616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511436, 19.788910, 27.352468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696492, -0.347084, -0.628038,
		-0.035644, 0.890890, -0.452819,
		0.716679, -0.292999, -0.632869,
		18.726440, 19.701010, 27.162607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039753, 20.117001, 26.960989>,  <18.224766, 19.906109, 27.605616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039753, 20.117001, 26.960989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304041, 19.821350, 26.908621>,  <18.462614, 19.643959, 26.877199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304041, 19.821350, 26.908621>,  <18.039753, 20.117001, 26.960989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.304041, 19.821350, 26.908621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606374, -0.422756, -0.673489,
		0.442447, 0.524374, -0.727511,
		0.660720, -0.739128, -0.130920,
		18.502256, 19.599611, 26.869345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935816, 19.910725, 26.288002>,  <18.039753, 20.117001, 26.960989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935816, 19.910725, 26.288002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.165258, 19.600805, 26.394333>,  <18.302923, 19.414854, 26.458132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.165258, 19.600805, 26.394333>,  <17.935816, 19.910725, 26.288002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165258, 19.600805, 26.394333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565889, -0.609455, -0.555279,
		0.592239, 0.168082, -0.788036,
		0.573604, -0.774799, 0.265827,
		18.337339, 19.368366, 26.474081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.288450, 19.645378, 25.651052>,  <17.935816, 19.910725, 26.288002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.288450, 19.645378, 25.651052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218992, 19.383717, 25.945517>,  <18.177319, 19.226719, 26.122194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218992, 19.383717, 25.945517>,  <18.288450, 19.645378, 25.651052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218992, 19.383717, 25.945517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650023, -0.485419, -0.584670,
		0.739810, -0.580044, -0.340926,
		-0.173643, -0.654154, 0.736160,
		18.166899, 19.187469, 26.166365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354734, 19.105961, 25.278730>,  <18.288450, 19.645378, 25.651052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354734, 19.105961, 25.278730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.162632, 18.998489, 25.612717>,  <18.047371, 18.934006, 25.813108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.162632, 18.998489, 25.612717>,  <18.354734, 19.105961, 25.278730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.162632, 18.998489, 25.612717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703587, -0.450418, -0.549627,
		0.523757, -0.851431, 0.027274,
		-0.480254, -0.268681, 0.834965,
		18.018557, 18.917885, 25.863207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.136635, 18.394363, 25.125500>,  <18.354734, 19.105961, 25.278730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.136635, 18.394363, 25.125500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.921997, 18.526070, 25.436281>,  <17.793215, 18.605093, 25.622749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.921997, 18.526070, 25.436281>,  <18.136635, 18.394363, 25.125500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.921997, 18.526070, 25.436281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819022, -0.424883, -0.385587,
		0.203154, -0.843244, 0.497663,
		-0.536592, 0.329263, 0.776952,
		17.761019, 18.624849, 25.669367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.785688, 17.748838, 25.440260>,  <18.136635, 18.394363, 25.125500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.785688, 17.748838, 25.440260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.587156, 18.080927, 25.541758>,  <17.468037, 18.280180, 25.602657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.587156, 18.080927, 25.541758>,  <17.785688, 17.748838, 25.440260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.587156, 18.080927, 25.541758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813129, -0.342194, -0.470876,
		-0.304100, -0.440040, 0.844919,
		-0.496330, 0.830222, 0.253748,
		17.438257, 18.329994, 25.617882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071625, 17.590048, 25.460026>,  <17.785688, 17.748838, 25.440260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071625, 17.590048, 25.460026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053709, 17.988295, 25.427195>,  <17.042959, 18.227243, 25.407495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.053709, 17.988295, 25.427195>,  <17.071625, 17.590048, 25.460026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053709, 17.988295, 25.427195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845944, -0.081501, -0.527007,
		-0.531388, 0.045830, 0.845888,
		-0.044788, 0.995619, -0.082078,
		17.040274, 18.286980, 25.402571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345301, 17.667048, 25.503313>,  <17.071625, 17.590048, 25.460026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345301, 17.667048, 25.503313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.507292, 17.990751, 25.333094>,  <16.604486, 18.184975, 25.230963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.507292, 17.990751, 25.333094>,  <16.345301, 17.667048, 25.503313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507292, 17.990751, 25.333094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781845, 0.065205, -0.620053,
		-0.474037, 0.583819, 0.659124,
		0.404977, 0.809261, -0.425547,
		16.628784, 18.233530, 25.205429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802794, 18.298128, 25.510298>,  <16.345301, 17.667048, 25.503313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802794, 18.298128, 25.510298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.072739, 18.357414, 25.221134>,  <16.234705, 18.392986, 25.047636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.072739, 18.357414, 25.221134>,  <15.802794, 18.298128, 25.510298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.072739, 18.357414, 25.221134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735293, 0.218028, -0.641722,
		0.062502, 0.964623, 0.256119,
		0.674861, 0.148214, -0.722908,
		16.275196, 18.401878, 25.004261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.467576, 18.773670, 25.282698>,  <15.802794, 18.298128, 25.510298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.467576, 18.773670, 25.282698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.739357, 18.695955, 24.999685>,  <15.902426, 18.649326, 24.829878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.739357, 18.695955, 24.999685>,  <15.467576, 18.773670, 25.282698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739357, 18.695955, 24.999685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713362, 0.050653, -0.698963,
		0.171637, 0.979636, -0.104180,
		0.679452, -0.194285, -0.707530,
		15.943192, 18.637671, 24.787426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.348217, 19.217197, 24.663965>,  <15.467576, 18.773670, 25.282698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.348217, 19.217197, 24.663965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580175, 18.924738, 24.520218>,  <15.719350, 18.749262, 24.433969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580175, 18.924738, 24.520218>,  <15.348217, 19.217197, 24.663965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580175, 18.924738, 24.520218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456624, 0.073616, -0.886609,
		0.674697, 0.678236, -0.291170,
		0.579895, -0.731148, -0.359367,
		15.754144, 18.705393, 24.412407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504142, 19.396154, 23.924009>,  <15.348217, 19.217197, 24.663965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.504142, 19.396154, 23.924009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543518, 19.000563, 23.968241>,  <15.567143, 18.763208, 23.994780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543518, 19.000563, 23.968241>,  <15.504142, 19.396154, 23.924009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543518, 19.000563, 23.968241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513265, -0.145657, -0.845779,
		0.852566, 0.026503, -0.521948,
		0.098441, -0.988980, 0.110579,
		15.573050, 18.703869, 24.001415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726460, 19.201595, 23.328232>,  <15.504142, 19.396154, 23.924009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726460, 19.201595, 23.328232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581996, 18.853167, 23.461376>,  <15.495317, 18.644110, 23.541264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581996, 18.853167, 23.461376>,  <15.726460, 19.201595, 23.328232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581996, 18.853167, 23.461376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375765, -0.190745, -0.906872,
		0.853442, -0.452605, -0.258428,
		-0.361162, -0.871071, 0.332863,
		15.473647, 18.591845, 23.561235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712238, 18.795551, 22.730436>,  <15.726460, 19.201595, 23.328232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712238, 18.795551, 22.730436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501924, 18.554956, 22.971022>,  <15.375734, 18.410599, 23.115374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501924, 18.554956, 22.971022>,  <15.712238, 18.795551, 22.730436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501924, 18.554956, 22.971022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396457, -0.452306, -0.798900,
		0.752575, -0.658506, -0.000648,
		-0.525788, -0.601489, 0.601463,
		15.344188, 18.374510, 23.151461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915793, 18.151684, 22.671352>,  <15.712238, 18.795551, 22.730436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915793, 18.151684, 22.671352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536173, 18.117567, 22.792696>,  <15.308401, 18.097097, 22.865503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536173, 18.117567, 22.792696>,  <15.915793, 18.151684, 22.671352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536173, 18.117567, 22.792696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253597, -0.364733, -0.895912,
		0.187059, -0.927198, 0.324521,
		-0.949051, -0.085291, 0.303361,
		15.251457, 18.091980, 22.883703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.576891, 17.470972, 22.516869>,  <15.915793, 18.151684, 22.671352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.576891, 17.470972, 22.516869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.242181, 17.685038, 22.563187>,  <15.041355, 17.813477, 22.590977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.242181, 17.685038, 22.563187>,  <15.576891, 17.470972, 22.516869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.242181, 17.685038, 22.563187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400808, -0.454592, -0.795423,
		-0.373040, -0.712003, 0.594889,
		-0.836776, 0.535161, 0.115795,
		14.991148, 17.845587, 22.597925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141085, 17.073088, 22.264515>,  <15.576891, 17.470972, 22.516869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141085, 17.073088, 22.264515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.917348, 17.404476, 22.275614>,  <14.783106, 17.603310, 22.282272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.917348, 17.404476, 22.275614>,  <15.141085, 17.073088, 22.264515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.917348, 17.404476, 22.275614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498445, -0.309403, -0.809828,
		-0.662335, -0.466801, 0.586010,
		-0.559342, 0.828472, 0.027746,
		14.749545, 17.653017, 22.283937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401995, 16.832603, 22.330389>,  <15.141085, 17.073088, 22.264515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.401995, 16.832603, 22.330389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.428646, 17.195370, 22.163982>,  <14.444636, 17.413029, 22.064138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.428646, 17.195370, 22.163982>,  <14.401995, 16.832603, 22.330389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.428646, 17.195370, 22.163982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612086, -0.292123, -0.734857,
		-0.787979, 0.303599, 0.535646,
		0.066628, 0.906913, -0.416016,
		14.448634, 17.467443, 22.039177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833369, 16.774050, 21.965061>,  <14.401995, 16.832603, 22.330389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.833369, 16.774050, 21.965061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.980540, 17.119596, 21.827446>,  <14.068843, 17.326925, 21.744877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.980540, 17.119596, 21.827446>,  <13.833369, 16.774050, 21.965061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.980540, 17.119596, 21.827446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639952, -0.033176, -0.767698,
		-0.674604, 0.502624, 0.540628,
		0.367928, 0.863868, -0.344036,
		14.090919, 17.378757, 21.724236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.333483, 17.156689, 21.834814>,  <13.833369, 16.774050, 21.965061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.333483, 17.156689, 21.834814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.621319, 17.308073, 21.601934>,  <13.794020, 17.398905, 21.462206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.621319, 17.308073, 21.601934>,  <13.333483, 17.156689, 21.834814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.621319, 17.308073, 21.601934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603298, -0.074414, -0.794037,
		-0.343837, 0.922621, 0.174778,
		0.719589, 0.378462, -0.582201,
		13.837195, 17.421612, 21.427275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.970122, 17.679371, 21.463343>,  <13.333483, 17.156689, 21.834814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.970122, 17.679371, 21.463343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.288785, 17.593382, 21.237379>,  <13.479982, 17.541788, 21.101801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.288785, 17.593382, 21.237379>,  <12.970122, 17.679371, 21.463343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.288785, 17.593382, 21.237379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571725, 0.035264, -0.819687,
		0.196130, 0.975984, -0.094811,
		0.796657, -0.214971, -0.564911,
		13.527782, 17.528891, 21.067905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806942, 18.056055, 20.794088>,  <12.970122, 17.679371, 21.463343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806942, 18.056055, 20.794088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.094859, 17.785448, 20.731833>,  <13.267610, 17.623085, 20.694479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.094859, 17.785448, 20.731833>,  <12.806942, 18.056055, 20.794088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.094859, 17.785448, 20.731833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396313, -0.216397, -0.892249,
		0.569941, 0.703917, -0.423873,
		0.719794, -0.676516, -0.155638,
		13.310797, 17.582493, 20.685141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065870, 18.224199, 20.129013>,  <12.806942, 18.056055, 20.794088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065870, 18.224199, 20.129013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.158770, 17.840303, 20.192205>,  <13.214509, 17.609966, 20.230120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.158770, 17.840303, 20.192205>,  <13.065870, 18.224199, 20.129013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.158770, 17.840303, 20.192205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268782, -0.219423, -0.937875,
		0.934782, 0.175357, -0.308922,
		0.232248, -0.959741, 0.157979,
		13.228444, 17.552382, 20.239599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.615428, 18.051582, 19.678219>,  <13.065870, 18.224199, 20.129013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.615428, 18.051582, 19.678219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.411234, 17.725527, 19.787731>,  <13.288717, 17.529894, 19.853437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.411234, 17.725527, 19.787731>,  <13.615428, 18.051582, 19.678219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.411234, 17.725527, 19.787731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212400, -0.188992, -0.958733,
		0.833241, -0.547570, -0.076657,
		-0.510486, -0.815137, 0.273780,
		13.258088, 17.480986, 19.869865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.770842, 17.564657, 19.179485>,  <13.615428, 18.051582, 19.678219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.770842, 17.564657, 19.179485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458788, 17.396086, 19.364433>,  <13.271556, 17.294943, 19.475403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458788, 17.396086, 19.364433>,  <13.770842, 17.564657, 19.179485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.458788, 17.396086, 19.364433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387305, -0.255073, -0.885964,
		0.491309, -0.870251, 0.035770,
		-0.780135, -0.421428, 0.462372,
		13.224748, 17.269657, 19.503145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.723866, 16.849138, 18.893785>,  <13.770842, 17.564657, 19.179485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.723866, 16.849138, 18.893785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.366800, 16.985331, 19.011921>,  <13.152561, 17.067045, 19.082802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.366800, 16.985331, 19.011921>,  <13.723866, 16.849138, 18.893785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.366800, 16.985331, 19.011921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367735, -0.171280, -0.914021,
		-0.260622, -0.924519, 0.278102,
		-0.892663, 0.340481, 0.295339,
		13.099001, 17.087475, 19.100523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.475033, 16.994951, 18.832748>,  <13.723866, 16.849138, 18.893785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.475033, 16.994951, 18.832748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.710126, 16.714899, 18.670570>,  <14.851182, 16.546867, 18.573263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.710126, 16.714899, 18.670570>,  <14.475033, 16.994951, 18.832748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.710126, 16.714899, 18.670570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652675, 0.114155, 0.748989,
		-0.478107, -0.704830, 0.524050,
		0.587732, -0.700131, -0.405446,
		14.886446, 16.504860, 18.548937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594618, 16.494005, 19.339972>,  <14.475033, 16.994951, 18.832748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594618, 16.494005, 19.339972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.921646, 16.517466, 19.110838>,  <15.117863, 16.531542, 18.973358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.921646, 16.517466, 19.110838>,  <14.594618, 16.494005, 19.339972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.921646, 16.517466, 19.110838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541448, 0.260297, 0.799425,
		0.195991, -0.963746, 0.181056,
		0.817571, 0.058647, -0.572834,
		15.166917, 16.535061, 18.938988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.181686, 16.156015, 19.629789>,  <14.594618, 16.494005, 19.339972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.181686, 16.156015, 19.629789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.372022, 16.391718, 19.368607>,  <15.486222, 16.533140, 19.211897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.372022, 16.391718, 19.368607>,  <15.181686, 16.156015, 19.629789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.372022, 16.391718, 19.368607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678809, 0.226034, 0.698661,
		0.559282, -0.775682, -0.292438,
		0.475838, 0.589258, -0.652957,
		15.514773, 16.568495, 19.172720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.905429, 16.013538, 19.663301>,  <15.181686, 16.156015, 19.629789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.905429, 16.013538, 19.663301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.853791, 16.392902, 19.547474>,  <15.822808, 16.620522, 19.477978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.853791, 16.392902, 19.547474>,  <15.905429, 16.013538, 19.663301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.853791, 16.392902, 19.547474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609245, 0.306255, 0.731456,
		0.782403, -0.081990, -0.617351,
		-0.129095, 0.948412, -0.289566,
		15.815063, 16.677425, 19.460604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555576, 16.274839, 19.548470>,  <15.905429, 16.013538, 19.663301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.555576, 16.274839, 19.548470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.333946, 16.603094, 19.604401>,  <16.200968, 16.800047, 19.637959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.333946, 16.603094, 19.604401>,  <16.555576, 16.274839, 19.548470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333946, 16.603094, 19.604401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656422, 0.327399, 0.679647,
		0.511965, 0.468362, -0.720089,
		-0.554078, 0.820638, 0.139827,
		16.167723, 16.849285, 19.646349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.124125, 16.799011, 19.420183>,  <16.555576, 16.274839, 19.548470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.124125, 16.799011, 19.420183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807299, 16.957775, 19.605696>,  <16.617203, 17.053034, 19.717003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807299, 16.957775, 19.605696>,  <17.124125, 16.799011, 19.420183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807299, 16.957775, 19.605696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608188, 0.447980, 0.655303,
		0.052330, 0.801110, -0.596224,
		-0.792066, 0.396908, 0.463783,
		16.569679, 17.076847, 19.744831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309948, 17.486691, 19.636795>,  <17.124125, 16.799011, 19.420183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309948, 17.486691, 19.636795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988794, 17.406395, 19.861324>,  <16.796103, 17.358217, 19.996042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988794, 17.406395, 19.861324>,  <17.309948, 17.486691, 19.636795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988794, 17.406395, 19.861324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389142, 0.536828, 0.748588,
		-0.451604, 0.819463, -0.352895,
		-0.802884, -0.200739, 0.561321,
		16.747929, 17.346172, 20.029720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992172, 18.156889, 19.946543>,  <17.309948, 17.486691, 19.636795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992172, 18.156889, 19.946543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917860, 17.827806, 20.161444>,  <16.873272, 17.630358, 20.290384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917860, 17.827806, 20.161444>,  <16.992172, 18.156889, 19.946543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.917860, 17.827806, 20.161444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556026, 0.362785, 0.747811,
		-0.810136, 0.437657, 0.390047,
		-0.185782, -0.822705, 0.537254,
		16.862125, 17.580996, 20.322620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.136600, 18.455326, 20.605471>,  <16.992172, 18.156889, 19.946543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.136600, 18.455326, 20.605471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126562, 18.059326, 20.661003>,  <17.120539, 17.821726, 20.694323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.126562, 18.059326, 20.661003>,  <17.136600, 18.455326, 20.605471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126562, 18.059326, 20.661003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418435, 0.115721, 0.900845,
		-0.907900, 0.080697, 0.411345,
		-0.025094, -0.989998, 0.138830,
		17.119034, 17.762327, 20.702652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034338, 18.335424, 21.350420>,  <17.136600, 18.455326, 20.605471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.034338, 18.335424, 21.350420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.169472, 17.982222, 21.220089>,  <17.250551, 17.770300, 21.141890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.169472, 17.982222, 21.220089>,  <17.034338, 18.335424, 21.350420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.169472, 17.982222, 21.220089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487497, -0.131968, 0.863094,
		-0.805119, -0.450421, 0.385881,
		0.337832, -0.883009, -0.325829,
		17.270821, 17.717319, 21.122341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.781960, 17.796642, 21.910326>,  <17.034338, 18.335424, 21.350420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.781960, 17.796642, 21.910326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097897, 17.658558, 21.707554>,  <17.287458, 17.575708, 21.585890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097897, 17.658558, 21.707554>,  <16.781960, 17.796642, 21.910326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097897, 17.658558, 21.707554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510201, -0.088863, 0.855452,
		-0.340358, -0.934309, 0.105939,
		0.789842, -0.345210, -0.506931,
		17.334848, 17.554995, 21.555475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116564, 17.243330, 22.330994>,  <16.781960, 17.796642, 21.910326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116564, 17.243330, 22.330994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.394182, 17.367943, 22.071379>,  <17.560753, 17.442711, 21.915609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.394182, 17.367943, 22.071379>,  <17.116564, 17.243330, 22.330994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394182, 17.367943, 22.071379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705765, -0.116455, 0.698809,
		0.142119, -0.943072, -0.300694,
		0.694044, 0.311533, -0.649037,
		17.602396, 17.461403, 21.876667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739918, 16.742010, 22.461262>,  <17.116564, 17.243330, 22.330994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.739918, 16.742010, 22.461262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851374, 17.098108, 22.317141>,  <17.918247, 17.311768, 22.230667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.851374, 17.098108, 22.317141>,  <17.739918, 16.742010, 22.461262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.851374, 17.098108, 22.317141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823029, -0.027999, 0.567309,
		0.494957, -0.454617, -0.740501,
		0.278642, 0.890247, -0.360304,
		17.934967, 17.365183, 22.209049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378590, 16.645597, 22.437674>,  <17.739918, 16.742010, 22.461262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.378590, 16.645597, 22.437674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341696, 17.043396, 22.417803>,  <18.319559, 17.282076, 22.405880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341696, 17.043396, 22.417803>,  <18.378590, 16.645597, 22.437674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341696, 17.043396, 22.417803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788773, 0.103421, 0.605922,
		0.607725, 0.016703, -0.793972,
		-0.092234, 0.994497, -0.049676,
		18.314026, 17.341745, 22.402901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.011398, 16.832901, 22.857531>,  <18.378590, 16.645597, 22.437674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.011398, 16.832901, 22.857531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.887686, 17.199005, 22.754267>,  <18.813457, 17.418667, 22.692308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.887686, 17.199005, 22.754267>,  <19.011398, 16.832901, 22.857531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.887686, 17.199005, 22.754267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724765, 0.402616, 0.559121,
		0.615679, -0.014179, -0.787870,
		-0.309281, 0.915259, -0.258158,
		18.794901, 17.473583, 22.676819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596411, 17.322664, 22.641497>,  <19.011398, 16.832901, 22.857531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596411, 17.322664, 22.641497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.298197, 17.567507, 22.746952>,  <19.119268, 17.714413, 22.810225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.298197, 17.567507, 22.746952>,  <19.596411, 17.322664, 22.641497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.298197, 17.567507, 22.746952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608945, 0.464865, 0.642718,
		0.270855, 0.639709, -0.719312,
		-0.745535, 0.612105, 0.263637,
		19.074535, 17.751139, 22.826044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.853935, 18.011408, 22.742779>,  <19.596411, 17.322664, 22.641497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.853935, 18.011408, 22.742779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.508347, 18.064266, 22.937138>,  <19.300993, 18.095982, 23.053753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.508347, 18.064266, 22.937138>,  <19.853935, 18.011408, 22.742779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.508347, 18.064266, 22.937138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479063, 0.512927, 0.712323,
		-0.155097, 0.848200, -0.506460,
		-0.863970, 0.132147, 0.485895,
		19.249155, 18.103910, 23.082907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.827694, 18.711079, 22.867777>,  <19.853935, 18.011408, 22.742779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.827694, 18.711079, 22.867777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598135, 18.509462, 23.125952>,  <19.460400, 18.388493, 23.280857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598135, 18.509462, 23.125952>,  <19.827694, 18.711079, 22.867777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598135, 18.509462, 23.125952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470388, 0.442269, 0.763632,
		-0.670356, 0.741852, -0.016724,
		-0.573898, -0.504038, 0.645435,
		19.425966, 18.358252, 23.319582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613634, 19.197973, 23.371433>,  <19.827694, 18.711079, 22.867777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613634, 19.197973, 23.371433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.589844, 18.828430, 23.522669>,  <19.575569, 18.606705, 23.613409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.589844, 18.828430, 23.522669>,  <19.613634, 19.197973, 23.371433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.589844, 18.828430, 23.522669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476700, 0.306493, 0.823905,
		-0.877052, 0.229238, 0.422173,
		-0.059477, -0.923857, 0.378087,
		19.572001, 18.551273, 23.636095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334658, 19.263767, 24.063791>,  <19.613634, 19.197973, 23.371433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.334658, 19.263767, 24.063791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.528305, 18.913805, 24.069073>,  <19.644493, 18.703829, 24.072241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.528305, 18.913805, 24.069073>,  <19.334658, 19.263767, 24.063791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.528305, 18.913805, 24.069073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528872, 0.304598, 0.792158,
		-0.697084, -0.376514, 0.610173,
		0.484116, -0.874904, 0.013202,
		19.673540, 18.651333, 24.073034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551527, 19.252987, 24.770370>,  <19.334658, 19.263767, 24.063791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.551527, 19.252987, 24.770370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758379, 18.958641, 24.595520>,  <19.882490, 18.782034, 24.490610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758379, 18.958641, 24.595520>,  <19.551527, 19.252987, 24.770370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758379, 18.958641, 24.595520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720066, 0.097953, 0.686957,
		-0.462690, -0.670005, 0.580526,
		0.517129, -0.735866, -0.437126,
		19.913517, 18.737881, 24.464382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508707, 18.691191, 25.200214>,  <19.551527, 19.252987, 24.770370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508707, 18.691191, 25.200214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848572, 18.644724, 24.994465>,  <20.052490, 18.616844, 24.871016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848572, 18.644724, 24.994465>,  <19.508707, 18.691191, 25.200214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.848572, 18.644724, 24.994465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524718, 0.089279, 0.846582,
		-0.052423, -0.989209, 0.136813,
		0.849661, -0.116168, -0.514375,
		20.103470, 18.609875, 24.840153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.947746, 18.316786, 25.624647>,  <19.508707, 18.691191, 25.200214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.947746, 18.316786, 25.624647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193031, 18.480257, 25.354254>,  <20.340202, 18.578341, 25.192017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193031, 18.480257, 25.354254>,  <19.947746, 18.316786, 25.624647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193031, 18.480257, 25.354254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719504, 0.064217, 0.691513,
		0.326016, -0.910416, -0.254667,
		0.613211, 0.408678, -0.675984,
		20.376995, 18.602861, 25.151459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586590, 17.885214, 25.670748>,  <19.947746, 18.316786, 25.624647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586590, 17.885214, 25.670748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.663954, 18.247210, 25.519176>,  <20.710373, 18.464407, 25.428234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.663954, 18.247210, 25.519176>,  <20.586590, 17.885214, 25.670748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.663954, 18.247210, 25.519176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613400, 0.189892, 0.766604,
		0.765724, -0.380702, -0.518394,
		0.193409, 0.904990, -0.378927,
		20.721977, 18.518707, 25.405499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.242634, 18.032682, 25.926908>,  <20.586590, 17.885214, 25.670748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.242634, 18.032682, 25.926908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149612, 18.395119, 25.785532>,  <21.093800, 18.612579, 25.700706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149612, 18.395119, 25.785532>,  <21.242634, 18.032682, 25.926908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.149612, 18.395119, 25.785532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603225, 0.419439, 0.678374,
		0.762914, -0.055445, -0.644118,
		-0.232556, 0.906089, -0.353442,
		21.079845, 18.666945, 25.679499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.848690, 18.379293, 25.712273>,  <21.242634, 18.032682, 25.926908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.848690, 18.379293, 25.712273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595686, 18.682205, 25.777334>,  <21.443884, 18.863953, 25.816372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595686, 18.682205, 25.777334>,  <21.848690, 18.379293, 25.712273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595686, 18.682205, 25.777334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668398, 0.427544, 0.608646,
		0.391375, 0.493692, -0.776591,
		-0.632510, 0.757281, 0.162653,
		21.405933, 18.909389, 25.826130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.258968, 18.997431, 25.851355>,  <21.848690, 18.379293, 25.712273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.258968, 18.997431, 25.851355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.897558, 19.072504, 26.005455>,  <21.680712, 19.117548, 26.097916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.897558, 19.072504, 26.005455>,  <22.258968, 18.997431, 25.851355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.897558, 19.072504, 26.005455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415944, 0.600408, 0.683008,
		-0.103121, 0.777358, -0.620548,
		-0.903525, 0.187681, 0.385252,
		21.626501, 19.128809, 26.121031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131899, 19.759691, 25.735390>,  <22.258968, 18.997431, 25.851355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131899, 19.759691, 25.735390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.904455, 19.654671, 26.047224>,  <21.767990, 19.591658, 26.234324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.904455, 19.654671, 26.047224>,  <22.131899, 19.759691, 25.735390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.904455, 19.654671, 26.047224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532594, 0.604752, 0.592131,
		-0.626921, 0.751892, -0.204033,
		-0.568607, -0.262553, 0.779584,
		21.733873, 19.575905, 26.281099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.946531, 20.341173, 26.048681>,  <22.131899, 19.759691, 25.735390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.946531, 20.341173, 26.048681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867756, 20.075119, 26.336794>,  <21.820490, 19.915485, 26.509663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867756, 20.075119, 26.336794>,  <21.946531, 20.341173, 26.048681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.867756, 20.075119, 26.336794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261551, 0.672403, 0.692435,
		-0.944884, 0.324758, 0.041545,
		-0.196938, -0.665137, 0.720283,
		21.808674, 19.875578, 26.552879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.508350, 20.636824, 26.554705>,  <21.946531, 20.341173, 26.048681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.508350, 20.636824, 26.554705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686794, 20.352568, 26.772320>,  <21.793861, 20.182014, 26.902889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686794, 20.352568, 26.772320>,  <21.508350, 20.636824, 26.554705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686794, 20.352568, 26.772320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177351, 0.666018, 0.724546,
		-0.877230, -0.226740, 0.423150,
		0.446109, -0.710640, 0.544038,
		21.820627, 20.139376, 26.935532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.432007, 20.822138, 27.255091>,  <21.508350, 20.636824, 26.554705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.432007, 20.822138, 27.255091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.703707, 20.535511, 27.318529>,  <21.866726, 20.363535, 27.356592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.703707, 20.535511, 27.318529>,  <21.432007, 20.822138, 27.255091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.703707, 20.535511, 27.318529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596777, 0.665063, 0.448942,
		-0.427173, -0.210297, 0.879374,
		0.679250, -0.716566, 0.158596,
		21.907482, 20.320541, 27.366108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.633467, 20.761198, 28.022148>,  <21.432007, 20.822138, 27.255091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.633467, 20.761198, 28.022148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927357, 20.671494, 27.766060>,  <22.103691, 20.617672, 27.612406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927357, 20.671494, 27.766060>,  <21.633467, 20.761198, 28.022148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.927357, 20.671494, 27.766060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551704, 0.746690, 0.371586,
		0.394716, -0.626227, 0.672338,
		0.734726, -0.224260, -0.640223,
		22.147774, 20.604216, 27.573994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.179953, 20.524509, 28.426624>,  <21.633467, 20.761198, 28.022148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.179953, 20.524509, 28.426624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.329327, 20.675518, 28.087679>,  <22.418951, 20.766123, 27.884312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.329327, 20.675518, 28.087679>,  <22.179953, 20.524509, 28.426624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.329327, 20.675518, 28.087679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640028, 0.556360, 0.529932,
		0.671500, -0.740231, -0.033861,
		0.373433, 0.377522, -0.847364,
		22.441357, 20.788774, 27.833469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.957253, 20.471111, 28.529205>,  <22.179953, 20.524509, 28.426624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.957253, 20.471111, 28.529205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.847193, 20.768707, 28.285643>,  <22.781157, 20.947266, 28.139505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.847193, 20.768707, 28.285643>,  <22.957253, 20.471111, 28.529205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.847193, 20.768707, 28.285643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672509, 0.601555, 0.431118,
		0.687040, -0.290874, -0.665859,
		-0.275150, 0.743992, -0.608907,
		22.764648, 20.991905, 28.102970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.543747, 20.857189, 28.299942>,  <22.957253, 20.471111, 28.529205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.543747, 20.857189, 28.299942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.227739, 21.100655, 28.270548>,  <23.038136, 21.246733, 28.252913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.227739, 21.100655, 28.270548>,  <23.543747, 20.857189, 28.299942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.227739, 21.100655, 28.270548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521094, 0.729791, 0.442568,
		0.323003, 0.311345, -0.893719,
		-0.790019, 0.608662, -0.073484,
		22.990734, 21.283253, 28.248503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.712570, 21.581432, 28.087820>,  <23.543747, 20.857189, 28.299942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.712570, 21.581432, 28.087820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382210, 21.567152, 28.312895>,  <23.183994, 21.558584, 28.447939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382210, 21.567152, 28.312895>,  <23.712570, 21.581432, 28.087820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.382210, 21.567152, 28.312895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398008, 0.669957, 0.626695,
		-0.399350, 0.741541, -0.539108,
		-0.825899, -0.035702, 0.562686,
		23.134439, 21.556442, 28.481701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.388765, 22.261051, 28.295593>,  <23.712570, 21.581432, 28.087820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.388765, 22.261051, 28.295593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264292, 22.006901, 28.578283>,  <23.189608, 21.854410, 28.747898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264292, 22.006901, 28.578283>,  <23.388765, 22.261051, 28.295593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.264292, 22.006901, 28.578283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090508, 0.720453, 0.687572,
		-0.946030, 0.277926, -0.166688,
		-0.311185, -0.635377, 0.706724,
		23.170937, 21.816288, 28.790300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.763754, 22.501602, 28.696991>,  <23.388765, 22.261051, 28.295593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.763754, 22.501602, 28.696991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.990458, 22.259439, 28.920515>,  <23.126480, 22.114141, 29.054628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.990458, 22.259439, 28.920515>,  <22.763754, 22.501602, 28.696991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.990458, 22.259439, 28.920515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097132, 0.722632, 0.684375,
		-0.818137, -0.333598, 0.468363,
		0.566761, -0.605405, 0.558808,
		23.160486, 22.077818, 29.088158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.828150, 22.914015, 29.233231>,  <22.763754, 22.501602, 28.696991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.828150, 22.914015, 29.233231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.005919, 23.174606, 28.987284>,  <23.112579, 23.330961, 28.839716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.005919, 23.174606, 28.987284>,  <22.828150, 22.914015, 29.233231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.005919, 23.174606, 28.987284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688456, -0.190769, -0.699740,
		-0.573165, 0.734289, 0.363734,
		0.444422, 0.651481, -0.614867,
		23.139246, 23.370050, 28.802824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.352198, 23.371729, 28.830532>,  <22.828150, 22.914015, 29.233231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.352198, 23.371729, 28.830532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.694832, 23.394886, 28.625435>,  <22.900414, 23.408779, 28.502377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.694832, 23.394886, 28.625435>,  <22.352198, 23.371729, 28.830532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.694832, 23.394886, 28.625435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478109, -0.284724, -0.830869,
		-0.194091, 0.956860, -0.216213,
		0.856587, 0.057891, -0.512745,
		22.951807, 23.412252, 28.471611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.221359, 23.677595, 28.279114>,  <22.352198, 23.371729, 28.830532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.221359, 23.677595, 28.279114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545652, 23.478043, 28.156590>,  <22.740229, 23.358311, 28.083075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545652, 23.478043, 28.156590>,  <22.221359, 23.677595, 28.279114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545652, 23.478043, 28.156590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488289, -0.287639, -0.823916,
		0.322931, 0.817545, -0.476797,
		0.810734, -0.498883, -0.306311,
		22.788872, 23.328379, 28.064695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.323803, 23.918581, 27.645832>,  <22.221359, 23.677595, 28.279114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.323803, 23.918581, 27.645832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536705, 23.580015, 27.652634>,  <22.664446, 23.376875, 27.656713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536705, 23.580015, 27.652634>,  <22.323803, 23.918581, 27.645832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536705, 23.580015, 27.652634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267497, -0.187198, -0.945199,
		0.803213, 0.498538, -0.326050,
		0.532254, -0.846414, 0.017002,
		22.696381, 23.326092, 27.657734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.740675, 23.960823, 27.063196>,  <22.323803, 23.918581, 27.645832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.740675, 23.960823, 27.063196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.686123, 23.581493, 27.177797>,  <22.653391, 23.353895, 27.246557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.686123, 23.581493, 27.177797>,  <22.740675, 23.960823, 27.063196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686123, 23.581493, 27.177797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194568, -0.257929, -0.946370,
		0.971362, -0.184809, -0.149337,
		-0.136379, -0.948324, 0.286500,
		22.645208, 23.296997, 27.263748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.012545, 23.625040, 26.532328>,  <22.740675, 23.960823, 27.063196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.012545, 23.625040, 26.532328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.797390, 23.349319, 26.726460>,  <22.668297, 23.183887, 26.842937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.797390, 23.349319, 26.726460>,  <23.012545, 23.625040, 26.532328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.797390, 23.349319, 26.726460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278407, -0.398157, -0.874049,
		0.795719, -0.605257, 0.022257,
		-0.537886, -0.689301, 0.485328,
		22.636024, 23.142529, 26.872059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.126291, 22.953445, 26.189865>,  <23.012545, 23.625040, 26.532328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.126291, 22.953445, 26.189865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.779753, 22.959230, 26.389561>,  <22.571831, 22.962702, 26.509378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.779753, 22.959230, 26.389561>,  <23.126291, 22.953445, 26.189865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.779753, 22.959230, 26.389561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471337, -0.354283, -0.807666,
		0.165193, -0.935026, 0.313747,
		-0.866344, 0.014460, 0.499238,
		22.519850, 22.963568, 26.539331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.917141, 22.359690, 26.072096>,  <23.126291, 22.953445, 26.189865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.917141, 22.359690, 26.072096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580172, 22.552471, 26.168467>,  <22.377991, 22.668140, 26.226288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580172, 22.552471, 26.168467>,  <22.917141, 22.359690, 26.072096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.580172, 22.552471, 26.168467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457166, -0.402686, -0.792996,
		-0.285167, -0.778182, 0.559564,
		-0.842424, 0.481950, 0.240926,
		22.327444, 22.697056, 26.240744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.539469, 21.969162, 25.749392>,  <22.917141, 22.359690, 26.072096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.539469, 21.969162, 25.749392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.279903, 22.252172, 25.861338>,  <22.124165, 22.421978, 25.928505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.279903, 22.252172, 25.861338>,  <22.539469, 21.969162, 25.749392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.279903, 22.252172, 25.861338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675793, -0.366948, -0.639259,
		-0.349596, -0.603953, 0.716257,
		-0.648911, 0.707524, 0.279864,
		22.085230, 22.464430, 25.945297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.900698, 21.637486, 25.975344>,  <22.539469, 21.969162, 25.749392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.900698, 21.637486, 25.975344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.834118, 22.012039, 25.851744>,  <21.794170, 22.236771, 25.777584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.834118, 22.012039, 25.851744>,  <21.900698, 21.637486, 25.975344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.834118, 22.012039, 25.851744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637003, -0.341315, -0.691181,
		-0.752676, 0.081787, 0.653291,
		-0.166448, 0.936384, -0.308998,
		21.784184, 22.292953, 25.759045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.174265, 21.661076, 25.806786>,  <21.900698, 21.637486, 25.975344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.174265, 21.661076, 25.806786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.337860, 21.956802, 25.592819>,  <21.436018, 22.134239, 25.464439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.337860, 21.956802, 25.592819>,  <21.174265, 21.661076, 25.806786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.337860, 21.956802, 25.592819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441406, -0.352767, -0.825055,
		-0.798679, 0.573555, 0.182061,
		0.408990, 0.739317, -0.534918,
		21.460556, 22.178598, 25.432344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641001, 21.769508, 25.344820>,  <21.174265, 21.661076, 25.806786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641001, 21.769508, 25.344820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.926012, 21.983656, 25.163410>,  <21.097019, 22.112144, 25.054565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.926012, 21.983656, 25.163410>,  <20.641001, 21.769508, 25.344820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.926012, 21.983656, 25.163410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390053, -0.235055, -0.890285,
		-0.583233, 0.811253, 0.041338,
		0.712529, 0.535368, -0.453524,
		21.139771, 22.144266, 25.027353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.360058, 22.351454, 24.773758>,  <20.641001, 21.769508, 25.344820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.360058, 22.351454, 24.773758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741417, 22.258913, 24.696285>,  <20.970232, 22.203388, 24.649801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741417, 22.258913, 24.696285>,  <20.360058, 22.351454, 24.773758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.741417, 22.258913, 24.696285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245061, -0.219283, -0.944383,
		0.176016, 0.947834, -0.265759,
		0.953396, -0.231354, -0.193680,
		21.027435, 22.189507, 24.638182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.402161, 22.638737, 24.091742>,  <20.360058, 22.351454, 24.773758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.402161, 22.638737, 24.091742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677845, 22.353352, 24.142275>,  <20.843256, 22.182121, 24.172594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677845, 22.353352, 24.142275>,  <20.402161, 22.638737, 24.091742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677845, 22.353352, 24.142275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202664, -0.357220, -0.911768,
		0.695642, 0.602797, -0.390793,
		0.689210, -0.713463, 0.126332,
		20.884607, 22.139313, 24.180174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.672560, 22.515491, 23.469402>,  <20.402161, 22.638737, 24.091742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.672560, 22.515491, 23.469402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794674, 22.171658, 23.633314>,  <20.867943, 21.965357, 23.731661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794674, 22.171658, 23.633314>,  <20.672560, 22.515491, 23.469402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794674, 22.171658, 23.633314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116040, -0.460696, -0.879940,
		0.945164, 0.221082, -0.240390,
		0.305285, -0.859582, 0.409779,
		20.886259, 21.913782, 23.756248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051277, 22.249762, 23.079765>,  <20.672560, 22.515491, 23.469402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051277, 22.249762, 23.079765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022144, 21.907001, 23.283890>,  <21.004663, 21.701345, 23.406364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022144, 21.907001, 23.283890>,  <21.051277, 22.249762, 23.079765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.022144, 21.907001, 23.283890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128721, -0.499312, -0.856807,
		0.989003, -0.128091, -0.073934,
		-0.072833, -0.856902, 0.510309,
		21.000294, 21.649931, 23.436983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.426722, 21.646311, 22.758030>,  <21.051277, 22.249762, 23.079765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.426722, 21.646311, 22.758030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.163898, 21.464613, 22.998676>,  <21.006205, 21.355595, 23.143064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.163898, 21.464613, 22.998676>,  <21.426722, 21.646311, 22.758030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.163898, 21.464613, 22.998676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205531, -0.659884, -0.722710,
		0.725283, -0.598512, 0.340219,
		-0.657056, -0.454243, 0.601615,
		20.966782, 21.328341, 23.179161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471869, 21.023035, 22.553833>,  <21.426722, 21.646311, 22.758030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471869, 21.023035, 22.553833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.128830, 21.025570, 22.759546>,  <20.923006, 21.027090, 22.882975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.128830, 21.025570, 22.759546>,  <21.471869, 21.023035, 22.553833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.128830, 21.025570, 22.759546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441668, -0.521448, -0.730083,
		0.263547, -0.853260, 0.449990,
		-0.857597, 0.006335, 0.514283,
		20.871552, 21.027470, 22.913832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.329136, 20.302908, 22.702137>,  <21.471869, 21.023035, 22.553833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.329136, 20.302908, 22.702137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982121, 20.501789, 22.697044>,  <20.773911, 20.621119, 22.693989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982121, 20.501789, 22.697044>,  <21.329136, 20.302908, 22.702137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.982121, 20.501789, 22.697044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378051, -0.675842, -0.632705,
		-0.323189, -0.544083, 0.774289,
		-0.867541, 0.497204, -0.012734,
		20.721859, 20.650949, 22.693224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816916, 19.752687, 22.793737>,  <21.329136, 20.302908, 22.702137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816916, 19.752687, 22.793737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.608137, 20.052828, 22.631479>,  <20.482870, 20.232912, 22.534124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.608137, 20.052828, 22.631479>,  <20.816916, 19.752687, 22.793737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.608137, 20.052828, 22.631479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579225, -0.660892, -0.477201,
		-0.626154, -0.014116, 0.779572,
		-0.521949, 0.750349, -0.405644,
		20.451553, 20.277933, 22.509787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.033293, 19.518469, 22.821625>,  <20.816916, 19.752687, 22.793737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.033293, 19.518469, 22.821625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.038694, 19.822824, 22.562128>,  <20.041935, 20.005438, 22.406429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.038694, 19.822824, 22.562128>,  <20.033293, 19.518469, 22.821625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.038694, 19.822824, 22.562128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764219, -0.410541, -0.497418,
		-0.644815, 0.502498, 0.575942,
		0.013503, 0.760889, -0.648742,
		20.042746, 20.051090, 22.367506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.275238, 19.617790, 22.483250>,  <20.033293, 19.518469, 22.821625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.275238, 19.617790, 22.483250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.512684, 19.819691, 22.232538>,  <19.655151, 19.940830, 22.082111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.512684, 19.819691, 22.232538>,  <19.275238, 19.617790, 22.483250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.512684, 19.819691, 22.232538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495129, -0.384914, -0.778902,
		-0.634407, 0.772702, 0.021426,
		0.593612, 0.504749, -0.626779,
		19.690767, 19.971115, 22.044504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791653, 19.875286, 22.102634>,  <19.275238, 19.617790, 22.483250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791653, 19.875286, 22.102634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139135, 19.889738, 21.905031>,  <19.347626, 19.898409, 21.786469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139135, 19.889738, 21.905031>,  <18.791653, 19.875286, 22.102634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139135, 19.889738, 21.905031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445983, -0.376890, -0.811821,
		-0.215519, 0.925553, -0.311293,
		0.868707, 0.036131, -0.494008,
		19.399748, 19.900578, 21.756828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.687731, 20.243578, 21.536350>,  <18.791653, 19.875286, 22.102634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.687731, 20.243578, 21.536350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.001020, 20.009884, 21.451283>,  <19.188995, 19.869667, 21.400242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.001020, 20.009884, 21.451283>,  <18.687731, 20.243578, 21.536350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.001020, 20.009884, 21.451283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477038, -0.345321, -0.808200,
		0.398738, 0.734455, -0.549166,
		0.783225, -0.584234, -0.212671,
		19.235989, 19.834614, 21.387482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.778185, 20.173634, 20.761312>,  <18.687731, 20.243578, 21.536350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.778185, 20.173634, 20.761312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.996197, 19.858692, 20.876562>,  <19.127003, 19.669727, 20.945713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.996197, 19.858692, 20.876562>,  <18.778185, 20.173634, 20.761312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.996197, 19.858692, 20.876562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146609, -0.427860, -0.891875,
		0.825500, 0.443854, -0.348629,
		0.545027, -0.787356, 0.288126,
		19.159704, 19.622486, 20.962999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.361177, 20.122297, 20.361141>,  <18.778185, 20.173634, 20.761312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.361177, 20.122297, 20.361141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.299282, 19.741655, 20.467350>,  <19.262146, 19.513269, 20.531075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.299282, 19.741655, 20.467350>,  <19.361177, 20.122297, 20.361141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.299282, 19.741655, 20.467350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085639, -0.280666, -0.955977,
		0.984237, -0.125185, 0.124924,
		-0.154736, -0.951607, 0.265521,
		19.252861, 19.456173, 20.547007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.858801, 19.784672, 19.964735>,  <19.361177, 20.122297, 20.361141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.858801, 19.784672, 19.964735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598818, 19.505434, 20.084879>,  <19.442827, 19.337891, 20.156965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598818, 19.505434, 20.084879>,  <19.858801, 19.784672, 19.964735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598818, 19.505434, 20.084879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057166, -0.439016, -0.896659,
		0.757816, -0.565621, 0.325250,
		-0.649959, -0.698096, 0.300359,
		19.403830, 19.296005, 20.174986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134081, 19.206442, 19.782951>,  <19.858801, 19.784672, 19.964735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.134081, 19.206442, 19.782951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757759, 19.085262, 19.843760>,  <19.531967, 19.012554, 19.880243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757759, 19.085262, 19.843760>,  <20.134081, 19.206442, 19.782951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757759, 19.085262, 19.843760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110921, -0.698975, -0.706492,
		0.320289, -0.647808, 0.691202,
		-0.940804, -0.302950, 0.152018,
		19.475517, 18.994377, 19.889364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.110676, 18.483068, 19.765844>,  <20.134081, 19.206442, 19.782951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.110676, 18.483068, 19.765844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.725725, 18.570629, 19.701452>,  <19.494755, 18.623165, 19.662817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.725725, 18.570629, 19.701452>,  <20.110676, 18.483068, 19.765844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.725725, 18.570629, 19.701452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010826, -0.622863, -0.782256,
		-0.271505, -0.751082, 0.601798,
		-0.962376, 0.218902, -0.160980,
		19.437012, 18.636299, 19.653158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.881191, 17.844786, 19.742130>,  <20.110676, 18.483068, 19.765844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.881191, 17.844786, 19.742130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.636845, 18.099373, 19.553768>,  <19.490236, 18.252125, 19.440750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.636845, 18.099373, 19.553768>,  <19.881191, 17.844786, 19.742130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.636845, 18.099373, 19.553768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024152, -0.579521, -0.814600,
		-0.791366, -0.508984, 0.338637,
		-0.610865, 0.636468, -0.470906,
		19.453585, 18.290314, 19.412497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.414974, 17.428421, 19.357609>,  <19.881191, 17.844786, 19.742130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.414974, 17.428421, 19.357609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.395006, 17.780655, 19.169107>,  <19.383026, 17.991995, 19.056005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.395006, 17.780655, 19.169107>,  <19.414974, 17.428421, 19.357609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.395006, 17.780655, 19.169107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046445, -0.473380, -0.879633,
		-0.997673, -0.022024, 0.064530,
		-0.049920, 0.880583, -0.471256,
		19.380030, 18.044830, 19.027731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878778, 17.323725, 18.976757>,  <19.414974, 17.428421, 19.357609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.878778, 17.323725, 18.976757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.059431, 17.632620, 18.798016>,  <19.167824, 17.817957, 18.690771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.059431, 17.632620, 18.798016>,  <18.878778, 17.323725, 18.976757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059431, 17.632620, 18.798016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121482, -0.442950, -0.888278,
		-0.883894, 0.455460, -0.106238,
		0.451633, 0.772238, -0.446851,
		19.194921, 17.864290, 18.663960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540167, 17.342367, 18.327787>,  <18.878778, 17.323725, 18.976757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540167, 17.342367, 18.327787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854870, 17.581257, 18.265381>,  <19.043692, 17.724590, 18.227938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854870, 17.581257, 18.265381>,  <18.540167, 17.342367, 18.327787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854870, 17.581257, 18.265381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072789, -0.340754, -0.937330,
		-0.612958, 0.726093, -0.311561,
		0.786755, 0.597223, -0.156016,
		19.090897, 17.760424, 18.218576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347263, 17.579481, 17.755571>,  <18.540167, 17.342367, 18.327787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347263, 17.579481, 17.755571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738520, 17.662603, 17.758680>,  <18.973272, 17.712477, 17.760546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738520, 17.662603, 17.758680>,  <18.347263, 17.579481, 17.755571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738520, 17.662603, 17.758680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030319, -0.105542, -0.993953,
		-0.205729, 0.972460, -0.109535,
		0.978139, 0.207806, 0.007771,
		19.031961, 17.724945, 17.761011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441599, 18.253754, 17.407576>,  <18.347263, 17.579481, 17.755571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.441599, 18.253754, 17.407576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783110, 18.046009, 17.393009>,  <18.988016, 17.921362, 17.384270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783110, 18.046009, 17.393009>,  <18.441599, 18.253754, 17.407576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783110, 18.046009, 17.393009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000166, 0.070220, -0.997531,
		0.520636, 0.851665, 0.060038,
		0.853779, -0.519361, -0.036417,
		19.039244, 17.890202, 17.382084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.811817, 18.574984, 16.774839>,  <18.441599, 18.253754, 17.407576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.811817, 18.574984, 16.774839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.991394, 18.225605, 16.850246>,  <19.099140, 18.015978, 16.895491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.991394, 18.225605, 16.850246>,  <18.811817, 18.574984, 16.774839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.991394, 18.225605, 16.850246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076346, -0.172710, -0.982009,
		0.890293, 0.455259, -0.010853,
		0.448943, -0.873448, 0.188520,
		19.126078, 17.963572, 16.906803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.486916, 18.622120, 16.506233>,  <18.811817, 18.574984, 16.774839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.486916, 18.622120, 16.506233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361715, 18.243025, 16.530962>,  <19.286594, 18.015568, 16.545799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361715, 18.243025, 16.530962>,  <19.486916, 18.622120, 16.506233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.361715, 18.243025, 16.530962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079371, -0.038764, -0.996091,
		0.946431, -0.316684, -0.063090,
		-0.313000, -0.947739, 0.061822,
		19.267815, 17.958704, 16.549509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623079, 18.491140, 15.909603>,  <19.486916, 18.622120, 16.506233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623079, 18.491140, 15.909603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.410948, 18.169907, 16.018272>,  <19.283669, 17.977167, 16.083473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.410948, 18.169907, 16.018272>,  <19.623079, 18.491140, 15.909603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410948, 18.169907, 16.018272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189242, -0.200225, -0.961300,
		0.826400, -0.561219, -0.045792,
		-0.530331, -0.803084, 0.271672,
		19.251848, 17.928982, 16.099773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889530, 17.872002, 15.405079>,  <19.623079, 18.491140, 15.909603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889530, 17.872002, 15.405079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.520157, 17.804266, 15.542829>,  <19.298532, 17.763624, 15.625479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.520157, 17.804266, 15.542829>,  <19.889530, 17.872002, 15.405079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520157, 17.804266, 15.542829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301220, -0.236167, -0.923846,
		0.237775, -0.956843, 0.167076,
		-0.923434, -0.169340, 0.344375,
		19.243126, 17.753464, 15.646141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.707346, 17.150621, 15.284031>,  <19.889530, 17.872002, 15.405079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.707346, 17.150621, 15.284031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.375156, 17.371628, 15.312420>,  <19.175842, 17.504232, 15.329453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.375156, 17.371628, 15.312420>,  <19.707346, 17.150621, 15.284031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.375156, 17.371628, 15.312420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249770, -0.255449, -0.934002,
		-0.497922, -0.793393, 0.350146,
		-0.830475, 0.552516, 0.070972,
		19.126015, 17.537382, 15.333712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108040, 16.797356, 15.039972>,  <19.707346, 17.150621, 15.284031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108040, 16.797356, 15.039972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067558, 17.192343, 14.991534>,  <19.043270, 17.429335, 14.962471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067558, 17.192343, 14.991534>,  <19.108040, 16.797356, 15.039972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067558, 17.192343, 14.991534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456986, -0.154261, -0.875995,
		-0.883698, -0.033315, 0.466871,
		-0.101204, 0.987468, -0.121095,
		19.037197, 17.488583, 14.955206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.564661, 16.369070, 14.627706>,  <19.108040, 16.797356, 15.039972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.564661, 16.369070, 14.627706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.477243, 16.157095, 14.955462>,  <18.424793, 16.029909, 15.152117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.477243, 16.157095, 14.955462>,  <18.564661, 16.369070, 14.627706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.477243, 16.157095, 14.955462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249797, -0.842094, -0.477995,
		0.943313, 0.100219, 0.316412,
		-0.218544, -0.529938, 0.819393,
		18.411680, 15.998114, 15.201281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.008326, 16.711079, 14.288168>,  <18.564661, 16.369070, 14.627706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.008326, 16.711079, 14.288168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.630217, 16.693186, 14.158886>,  <17.403351, 16.682449, 14.081317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.630217, 16.693186, 14.158886>,  <18.008326, 16.711079, 14.288168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.630217, 16.693186, 14.158886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308530, -0.199760, 0.930003,
		-0.106166, 0.978823, 0.175026,
		-0.945271, -0.044734, -0.323204,
		17.346636, 16.679766, 14.061925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648956, 17.271280, 14.617241>,  <18.008326, 16.711079, 14.288168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648956, 17.271280, 14.617241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439484, 16.938631, 14.543316>,  <17.313799, 16.739040, 14.498961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439484, 16.938631, 14.543316>,  <17.648956, 17.271280, 14.617241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439484, 16.938631, 14.543316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233208, -0.068708, 0.969997,
		-0.819371, 0.551071, -0.157960,
		-0.523683, -0.831625, -0.184812,
		17.282379, 16.689144, 14.487872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.024492, 17.339300, 15.064782>,  <17.648956, 17.271280, 14.617241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.024492, 17.339300, 15.064782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.129993, 16.961111, 14.988341>,  <17.193295, 16.734198, 14.942476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.129993, 16.961111, 14.988341>,  <17.024492, 17.339300, 15.064782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129993, 16.961111, 14.988341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033431, -0.206959, 0.977778,
		-0.964011, -0.251503, -0.086194,
		0.263753, -0.945471, -0.191103,
		17.209120, 16.677469, 14.931010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.485704, 16.732239, 15.159451>,  <17.024492, 17.339300, 15.064782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.485704, 16.732239, 15.159451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.869804, 16.645237, 15.229439>,  <17.100264, 16.593037, 15.271431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.869804, 16.645237, 15.229439>,  <16.485704, 16.732239, 15.159451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.869804, 16.645237, 15.229439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232714, -0.277596, 0.932086,
		-0.154162, -0.935753, -0.317177,
		0.960249, -0.217503, 0.174968,
		17.157879, 16.579985, 15.281929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599634, 15.992845, 15.240357>,  <16.485704, 16.732239, 15.159451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599634, 15.992845, 15.240357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882401, 16.195526, 15.437750>,  <17.052059, 16.317135, 15.556186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882401, 16.195526, 15.437750>,  <16.599634, 15.992845, 15.240357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882401, 16.195526, 15.437750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281183, -0.438869, 0.853422,
		0.649006, -0.742055, -0.167766,
		0.706914, 0.506703, 0.493482,
		17.094475, 16.347538, 15.585794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.157593, 15.625823, 15.460079>,  <16.599634, 15.992845, 15.240357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.157593, 15.625823, 15.460079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.102549, 15.918435, 15.727190>,  <17.069521, 16.094002, 15.887456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.102549, 15.918435, 15.727190>,  <17.157593, 15.625823, 15.460079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102549, 15.918435, 15.727190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224761, -0.679666, 0.698238,
		0.964648, -0.054004, 0.257950,
		-0.137612, 0.731531, 0.667776,
		17.061264, 16.137894, 15.927523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962578, 15.154811, 14.862258>,  <17.157593, 15.625823, 15.460079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962578, 15.154811, 14.862258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.977892, 14.770068, 14.970603>,  <16.987080, 14.539223, 15.035610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.977892, 14.770068, 14.970603>,  <16.962578, 15.154811, 14.862258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.977892, 14.770068, 14.970603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385936, -0.235796, -0.891882,
		0.921731, 0.138680, 0.362188,
		0.038284, -0.961857, 0.270862,
		16.989378, 14.481511, 15.051862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664246, 14.818601, 14.607210>,  <16.962578, 15.154811, 14.862258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.664246, 14.818601, 14.607210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415861, 14.509405, 14.659207>,  <17.266830, 14.323888, 14.690406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.415861, 14.509405, 14.659207>,  <17.664246, 14.818601, 14.607210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415861, 14.509405, 14.659207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301876, -0.388883, -0.870426,
		0.723382, -0.501257, 0.474827,
		-0.620959, -0.772989, 0.129994,
		17.229574, 14.277509, 14.698205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056931, 14.237347, 14.391548>,  <17.664246, 14.818601, 14.607210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056931, 14.237347, 14.391548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.674561, 14.121167, 14.374358>,  <17.445139, 14.051459, 14.364044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.674561, 14.121167, 14.374358>,  <18.056931, 14.237347, 14.391548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.674561, 14.121167, 14.374358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098940, -0.180845, -0.978522,
		0.276439, -0.939646, 0.201611,
		-0.955925, -0.290449, -0.042976,
		17.387783, 14.034033, 14.361465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103287, 13.644945, 14.021894>,  <18.056931, 14.237347, 14.391548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103287, 13.644945, 14.021894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717737, 13.748363, 13.996280>,  <17.486408, 13.810414, 13.980911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717737, 13.748363, 13.996280>,  <18.103287, 13.644945, 14.021894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717737, 13.748363, 13.996280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023020, -0.158650, -0.987066,
		-0.265364, -0.952881, 0.146967,
		-0.963874, 0.258549, -0.064035,
		17.428576, 13.825928, 13.977069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752047, 13.117637, 13.591028>,  <18.103287, 13.644945, 14.021894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752047, 13.117637, 13.591028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497751, 13.425000, 13.561670>,  <17.345175, 13.609418, 13.544056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497751, 13.425000, 13.561670>,  <17.752047, 13.117637, 13.591028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497751, 13.425000, 13.561670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077443, -0.158095, -0.984382,
		-0.768011, -0.620124, 0.160014,
		-0.635737, 0.768409, -0.073395,
		17.307030, 13.655522, 13.539652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239534, 12.902132, 13.266885>,  <17.752047, 13.117637, 13.591028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239534, 12.902132, 13.266885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.222925, 13.298215, 13.213568>,  <17.212959, 13.535865, 13.181578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.222925, 13.298215, 13.213568>,  <17.239534, 12.902132, 13.266885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.222925, 13.298215, 13.213568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106273, -0.137027, -0.984850,
		-0.993470, -0.026726, 0.110922,
		-0.041521, 0.990207, -0.133292,
		17.210468, 13.595277, 13.173580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685394, 12.996270, 12.818384>,  <17.239534, 12.902132, 13.266885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685394, 12.996270, 12.818384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916658, 13.321177, 12.787526>,  <17.055416, 13.516122, 12.769011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916658, 13.321177, 12.787526>,  <16.685394, 12.996270, 12.818384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916658, 13.321177, 12.787526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086834, -0.155268, -0.984049,
		-0.811290, 0.562238, -0.160302,
		0.578160, 0.812268, -0.077146,
		17.090107, 13.564858, 12.764382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437635, 13.313360, 12.137102>,  <16.685394, 12.996270, 12.818384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437635, 13.313360, 12.137102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.758589, 13.546259, 12.189521>,  <16.951160, 13.685998, 12.220972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.758589, 13.546259, 12.189521>,  <16.437635, 13.313360, 12.137102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.758589, 13.546259, 12.189521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016812, 0.241542, -0.970245,
		-0.596574, 0.776304, 0.203597,
		0.802382, 0.582246, 0.131046,
		16.999304, 13.720933, 12.228835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.311914, 14.087203, 11.885345>,  <16.437635, 13.313360, 12.137102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.311914, 14.087203, 11.885345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705608, 14.016457, 11.886054>,  <16.941824, 13.974009, 11.886479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705608, 14.016457, 11.886054>,  <16.311914, 14.087203, 11.885345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705608, 14.016457, 11.886054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061735, 0.334110, -0.940510,
		0.165752, 0.925791, 0.339761,
		0.984233, -0.176867, 0.001774,
		17.000879, 13.963397, 11.886586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.621740, 14.678582, 11.620272>,  <16.311914, 14.087203, 11.885345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.621740, 14.678582, 11.620272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898197, 14.394590, 11.566229>,  <17.064072, 14.224195, 11.533803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898197, 14.394590, 11.566229>,  <16.621740, 14.678582, 11.620272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898197, 14.394590, 11.566229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251927, 0.411889, -0.875717,
		0.677390, 0.571207, 0.463536,
		0.691141, -0.709979, -0.135107,
		17.105539, 14.181597, 11.525697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.229622, 15.008876, 11.365462>,  <16.621740, 14.678582, 11.620272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.229622, 15.008876, 11.365462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.266087, 14.622245, 11.269613>,  <17.287966, 14.390266, 11.212104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.266087, 14.622245, 11.269613>,  <17.229622, 15.008876, 11.365462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.266087, 14.622245, 11.269613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326526, 0.256335, -0.909766,
		0.940782, 0.004691, 0.338979,
		0.091160, -0.966577, -0.239623,
		17.293434, 14.332272, 11.197726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898441, 14.955862, 11.061987>,  <17.229622, 15.008876, 11.365462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.898441, 14.955862, 11.061987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679853, 14.640512, 10.948968>,  <17.548700, 14.451302, 10.881156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679853, 14.640512, 10.948968>,  <17.898441, 14.955862, 11.061987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679853, 14.640512, 10.948968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224178, 0.187364, -0.956368,
		0.806917, -0.585967, 0.074348,
		-0.546470, -0.788376, -0.282548,
		17.515913, 14.403998, 10.864203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.351500, 14.556195, 10.667433>,  <17.898441, 14.955862, 11.061987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.351500, 14.556195, 10.667433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975994, 14.453312, 10.575727>,  <17.750690, 14.391582, 10.520702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975994, 14.453312, 10.575727>,  <18.351500, 14.556195, 10.667433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975994, 14.453312, 10.575727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190288, 0.167698, -0.967299,
		0.287247, -0.951693, -0.108485,
		-0.938765, -0.257210, -0.229266,
		17.694365, 14.376149, 10.506947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469866, 14.424074, 9.965350>,  <18.351500, 14.556195, 10.667433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469866, 14.424074, 9.965350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070932, 14.399845, 9.981608>,  <17.831572, 14.385307, 9.991364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070932, 14.399845, 9.981608>,  <18.469866, 14.424074, 9.965350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070932, 14.399845, 9.981608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057352, 0.306816, -0.950039,
		0.045075, -0.949840, -0.309472,
		-0.997336, -0.060572, 0.040646,
		17.771732, 14.381673, 9.993802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229334, 14.151087, 9.287384>,  <18.469866, 14.424074, 9.965350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229334, 14.151087, 9.287384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902918, 14.323387, 9.441542>,  <17.707067, 14.426767, 9.534037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902918, 14.323387, 9.441542>,  <18.229334, 14.151087, 9.287384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902918, 14.323387, 9.441542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201177, 0.413412, -0.888042,
		-0.541852, -0.802212, -0.250704,
		-0.816042, 0.430752, 0.385395,
		17.658106, 14.452613, 9.557160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.658579, 13.933339, 8.945463>,  <18.229334, 14.151087, 9.287384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.658579, 13.933339, 8.945463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.551107, 14.276866, 9.119931>,  <17.486624, 14.482982, 9.224612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.551107, 14.276866, 9.119931>,  <17.658579, 13.933339, 8.945463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.551107, 14.276866, 9.119931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327830, 0.344255, -0.879782,
		-0.905725, -0.379370, 0.189051,
		-0.268681, 0.858817, 0.436169,
		17.470503, 14.534512, 9.250782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083145, 14.065613, 8.577104>,  <17.658579, 13.933339, 8.945463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083145, 14.065613, 8.577104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153896, 14.420833, 8.746848>,  <17.196348, 14.633965, 8.848695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153896, 14.420833, 8.746848>,  <17.083145, 14.065613, 8.577104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153896, 14.420833, 8.746848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381256, 0.459318, -0.802291,
		-0.907391, -0.019880, 0.419818,
		0.176880, 0.888049, 0.424360,
		17.206961, 14.687247, 8.874156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.442579, 14.533501, 8.385615>,  <17.083145, 14.065613, 8.577104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.442579, 14.533501, 8.385615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764101, 14.744048, 8.496491>,  <16.957014, 14.870377, 8.563017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764101, 14.744048, 8.496491>,  <16.442579, 14.533501, 8.385615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764101, 14.744048, 8.496491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209175, 0.686272, -0.696618,
		-0.556906, 0.501964, 0.661731,
		0.803804, 0.526368, 0.277191,
		17.005241, 14.901958, 8.579649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210608, 15.121548, 8.216442>,  <16.442579, 14.533501, 8.385615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.210608, 15.121548, 8.216442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.603701, 15.189548, 8.245663>,  <16.839556, 15.230350, 8.263195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.603701, 15.189548, 8.245663>,  <16.210608, 15.121548, 8.216442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.603701, 15.189548, 8.245663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022184, 0.500208, -0.865621,
		-0.183700, 0.849053, 0.495342,
		0.982732, 0.170003, 0.073053,
		16.898520, 15.240549, 8.267578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356186, 15.836714, 8.010292>,  <16.210608, 15.121548, 8.216442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.356186, 15.836714, 8.010292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734398, 15.714240, 7.966067>,  <16.961325, 15.640756, 7.939532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.734398, 15.714240, 7.966067>,  <16.356186, 15.836714, 8.010292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734398, 15.714240, 7.966067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048485, 0.468306, -0.882235,
		0.321903, 0.828819, 0.457643,
		0.945530, -0.306183, -0.110564,
		17.018057, 15.622385, 7.932898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697187, 16.424381, 7.778461>,  <16.356186, 15.836714, 8.010292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.697187, 16.424381, 7.778461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.901894, 16.099894, 7.665312>,  <17.024717, 15.905201, 7.597423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.901894, 16.099894, 7.665312>,  <16.697187, 16.424381, 7.778461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.901894, 16.099894, 7.665312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043416, 0.353254, -0.934519,
		0.858027, 0.465975, 0.216003,
		0.511766, -0.811221, -0.282871,
		17.055424, 15.856527, 7.580451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529032, 16.078857, 8.031621>,  <16.697187, 16.424381, 7.778461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529032, 16.078857, 8.031621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.478828, 16.109797, 8.427250>,  <17.448706, 16.128359, 8.664627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.478828, 16.109797, 8.427250>,  <17.529032, 16.078857, 8.031621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478828, 16.109797, 8.427250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010456, 0.996798, -0.079278,
		-0.992037, -0.020292, -0.124299,
		-0.125510, 0.077347, 0.989073,
		17.441175, 16.133001, 8.723971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.048502, 16.471022, 8.509082>,  <17.529032, 16.078857, 8.031621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.048502, 16.471022, 8.509082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.429548, 16.363497, 8.566027>,  <18.658176, 16.298983, 8.600194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.429548, 16.363497, 8.566027>,  <18.048502, 16.471022, 8.509082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.429548, 16.363497, 8.566027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107733, -0.735839, -0.668531,
		0.284464, 0.621515, -0.729931,
		0.952614, -0.268810, 0.142362,
		18.715332, 16.282854, 8.608735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.539473, 16.585146, 7.869849>,  <18.048502, 16.471022, 8.509082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.539473, 16.585146, 7.869849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665541, 16.293840, 8.113257>,  <18.741180, 16.119057, 8.259302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665541, 16.293840, 8.113257>,  <18.539473, 16.585146, 7.869849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.665541, 16.293840, 8.113257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009475, -0.638753, -0.769353,
		0.948988, 0.248242, -0.194415,
		0.315169, -0.728265, 0.608521,
		18.760092, 16.075361, 8.295814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.246841, 16.719830, 7.821737>,  <18.539473, 16.585146, 7.869849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.246841, 16.719830, 7.821737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.207275, 16.613110, 8.205202>,  <19.183537, 16.549078, 8.435281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.207275, 16.613110, 8.205202>,  <19.246841, 16.719830, 7.821737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.207275, 16.613110, 8.205202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291306, -0.928946, -0.228473,
		0.951502, 0.256665, 0.169607,
		-0.098915, -0.266800, 0.958662,
		19.177601, 16.533070, 8.492801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819519, 16.207203, 7.933700>,  <19.246841, 16.719830, 7.821737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819519, 16.207203, 7.933700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530306, 16.154848, 8.205021>,  <19.356779, 16.123436, 8.367813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530306, 16.154848, 8.205021>,  <19.819519, 16.207203, 7.933700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.530306, 16.154848, 8.205021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079815, -0.991139, -0.106174,
		0.686189, -0.022628, 0.727071,
		-0.723031, -0.130886, 0.678303,
		19.313396, 16.115582, 8.408512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.991638, 15.761978, 8.481971>,  <19.819519, 16.207203, 7.933700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.991638, 15.761978, 8.481971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.613140, 15.739622, 8.354535>,  <19.386042, 15.726209, 8.278073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.613140, 15.739622, 8.354535>,  <19.991638, 15.761978, 8.481971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.613140, 15.739622, 8.354535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118437, -0.976422, -0.180480,
		-0.300991, -0.208511, 0.930552,
		-0.946244, -0.055889, -0.318590,
		19.329268, 15.722856, 8.258958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654095, 15.088215, 8.723969>,  <19.991638, 15.761978, 8.481971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654095, 15.088215, 8.723969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.477016, 15.212977, 8.387698>,  <19.370770, 15.287835, 8.185936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.477016, 15.212977, 8.387698>,  <19.654095, 15.088215, 8.723969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.477016, 15.212977, 8.387698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237729, -0.863172, -0.445443,
		-0.864576, -0.397054, 0.307989,
		-0.442712, 0.311901, -0.840668,
		19.344208, 15.306549, 8.135496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.168076, 14.574316, 8.478813>,  <19.654095, 15.088215, 8.723969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.168076, 14.574316, 8.478813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.293568, 14.761044, 8.148080>,  <19.368864, 14.873080, 7.949640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.293568, 14.761044, 8.148080>,  <19.168076, 14.574316, 8.478813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.293568, 14.761044, 8.148080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159117, -0.884331, -0.438908,
		-0.936085, 0.006137, -0.351721,
		0.313732, 0.466820, -0.826832,
		19.387688, 14.901090, 7.900030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.689642, 14.125840, 8.312752>,  <19.168076, 14.574316, 8.478813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.689642, 14.125840, 8.312752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.079338, 14.058114, 8.372338>,  <20.313156, 14.017479, 8.408091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.079338, 14.058114, 8.372338>,  <19.689642, 14.125840, 8.312752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079338, 14.058114, 8.372338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107779, 0.230665, 0.967046,
		-0.198097, -0.958189, 0.206475,
		0.974239, -0.169315, 0.148966,
		20.371611, 14.007319, 8.417028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898966, 13.607967, 8.905823>,  <19.689642, 14.125840, 8.312752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898966, 13.607967, 8.905823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195450, 13.869228, 8.843855>,  <20.373341, 14.025985, 8.806674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195450, 13.869228, 8.843855>,  <19.898966, 13.607967, 8.905823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195450, 13.869228, 8.843855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083935, 0.319151, 0.943979,
		0.666007, -0.686682, 0.291381,
		0.741208, 0.653153, -0.154920,
		20.417812, 14.065174, 8.797379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479525, 13.326694, 9.272643>,  <19.898966, 13.607967, 8.905823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479525, 13.326694, 9.272643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.530960, 13.721768, 9.237005>,  <20.561821, 13.958814, 9.215623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.530960, 13.721768, 9.237005>,  <20.479525, 13.326694, 9.272643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.530960, 13.721768, 9.237005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151737, 0.069187, 0.985997,
		0.980021, -0.140307, -0.140972,
		0.128589, 0.987688, -0.089094,
		20.569536, 14.018075, 9.210277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.041504, 13.376315, 9.723419>,  <20.479525, 13.326694, 9.272643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.041504, 13.376315, 9.723419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.887110, 13.740266, 9.662570>,  <20.794474, 13.958636, 9.626060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.887110, 13.740266, 9.662570>,  <21.041504, 13.376315, 9.723419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887110, 13.740266, 9.662570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073753, 0.194811, 0.978064,
		0.919553, 0.366297, -0.142300,
		-0.385984, 0.909876, -0.152124,
		20.771315, 14.013228, 9.616933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.332012, 13.719068, 10.134977>,  <21.041504, 13.376315, 9.723419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.332012, 13.719068, 10.134977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.002193, 13.942454, 10.098677>,  <20.804302, 14.076487, 10.076896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.002193, 13.942454, 10.098677>,  <21.332012, 13.719068, 10.134977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.002193, 13.942454, 10.098677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094246, 0.293727, 0.951232,
		0.557887, 0.775783, -0.294825,
		-0.824548, 0.558466, -0.090752,
		20.754829, 14.109994, 10.071451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.498434, 14.164789, 10.572126>,  <21.332012, 13.719068, 10.134977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.498434, 14.164789, 10.572126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105703, 14.227775, 10.529751>,  <20.870066, 14.265566, 10.504325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105703, 14.227775, 10.529751>,  <21.498434, 14.164789, 10.572126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105703, 14.227775, 10.529751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063203, 0.255057, 0.964858,
		0.178950, 0.954019, -0.240470,
		-0.981826, 0.157463, -0.105939,
		20.811155, 14.275014, 10.497969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.350782, 14.694716, 10.968133>,  <21.498434, 14.164789, 10.572126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.350782, 14.694716, 10.968133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.979134, 14.557655, 10.912536>,  <20.756144, 14.475418, 10.879177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.979134, 14.557655, 10.912536>,  <21.350782, 14.694716, 10.968133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979134, 14.557655, 10.912536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274488, 0.387267, 0.880159,
		-0.247762, 0.855928, -0.453873,
		-0.929123, -0.342653, -0.138992,
		20.700397, 14.454860, 10.870838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.883448, 15.173546, 11.263372>,  <21.350782, 14.694716, 10.968133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.883448, 15.173546, 11.263372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.664536, 14.841980, 11.217101>,  <20.533188, 14.643041, 11.189338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.664536, 14.841980, 11.217101>,  <20.883448, 15.173546, 11.263372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664536, 14.841980, 11.217101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361470, 0.109438, 0.925939,
		-0.754865, 0.548565, -0.359522,
		-0.547282, -0.828915, -0.115679,
		20.500351, 14.593306, 11.182397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152590, 15.270194, 11.466423>,  <20.883448, 15.173546, 11.263372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152590, 15.270194, 11.466423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.226587, 14.881042, 11.521966>,  <20.270987, 14.647552, 11.555292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.226587, 14.881042, 11.521966>,  <20.152590, 15.270194, 11.466423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.226587, 14.881042, 11.521966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292300, 0.080430, 0.952938,
		-0.938263, -0.216877, -0.269494,
		0.184995, -0.972880, 0.138857,
		20.282085, 14.589178, 11.563623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578299, 14.993582, 11.876232>,  <20.152590, 15.270194, 11.466423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578299, 14.993582, 11.876232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.875925, 14.730474, 11.923062>,  <20.054501, 14.572610, 11.951160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.875925, 14.730474, 11.923062>,  <19.578299, 14.993582, 11.876232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.875925, 14.730474, 11.923062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177201, -0.025335, 0.983849,
		-0.644178, -0.752794, -0.135409,
		0.744066, -0.657768, 0.117076,
		20.099146, 14.533144, 11.958185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249712, 14.423975, 12.266217>,  <19.578299, 14.993582, 11.876232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249712, 14.423975, 12.266217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.647495, 14.396396, 12.297959>,  <19.886166, 14.379848, 12.317005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.647495, 14.396396, 12.297959>,  <19.249712, 14.423975, 12.266217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.647495, 14.396396, 12.297959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086544, -0.108429, 0.990330,
		-0.059674, -0.991711, -0.113795,
		0.994459, -0.068945, 0.079356,
		19.945833, 14.375711, 12.321766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346838, 13.851748, 12.555834>,  <19.249712, 14.423975, 12.266217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346838, 13.851748, 12.555834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.682207, 14.058753, 12.624217>,  <19.883429, 14.182957, 12.665247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.682207, 14.058753, 12.624217>,  <19.346838, 13.851748, 12.555834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.682207, 14.058753, 12.624217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089287, -0.179016, 0.979786,
		0.537657, -0.836740, -0.103884,
		0.838423, 0.517514, 0.170959,
		19.933735, 14.214007, 12.675505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.796171, 13.382052, 12.979163>,  <19.346838, 13.851748, 12.555834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.796171, 13.382052, 12.979163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.912495, 13.762256, 13.022915>,  <19.982288, 13.990377, 13.049166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.912495, 13.762256, 13.022915>,  <19.796171, 13.382052, 12.979163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.912495, 13.762256, 13.022915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187454, -0.168706, 0.967677,
		0.938239, -0.260904, -0.227238,
		0.290808, 0.950509, 0.109379,
		19.999737, 14.047408, 13.055729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395397, 13.292868, 13.311608>,  <19.796171, 13.382052, 12.979163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395397, 13.292868, 13.311608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.315746, 13.675760, 13.395564>,  <20.267956, 13.905497, 13.445937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.315746, 13.675760, 13.395564>,  <20.395397, 13.292868, 13.311608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.315746, 13.675760, 13.395564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284835, -0.148398, 0.947020,
		0.937666, 0.248362, -0.243103,
		-0.199128, 0.957233, 0.209890,
		20.256008, 13.962930, 13.458531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034416, 13.674299, 13.618205>,  <20.395397, 13.292868, 13.311608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034416, 13.674299, 13.618205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.669460, 13.801422, 13.721390>,  <20.450487, 13.877695, 13.783300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.669460, 13.801422, 13.721390>,  <21.034416, 13.674299, 13.618205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.669460, 13.801422, 13.721390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196242, -0.213441, 0.957043,
		0.359214, 0.923819, 0.132375,
		-0.912390, 0.317806, 0.257963,
		20.395744, 13.896764, 13.798779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.729368, 13.318933, 13.353646>,  <21.034416, 13.674299, 13.618205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.729368, 13.318933, 13.353646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.657623, 13.688389, 13.489130>,  <21.614576, 13.910062, 13.570420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.657623, 13.688389, 13.489130>,  <21.729368, 13.318933, 13.353646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.657623, 13.688389, 13.489130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960724, 0.090342, 0.262390,
		0.211754, 0.372468, -0.903564,
		-0.179361, 0.923637, 0.338708,
		21.603815, 13.965480, 13.590742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.359037, 13.839498, 13.290977>,  <21.729368, 13.318933, 13.353646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.359037, 13.839498, 13.290977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.162329, 13.998857, 13.600671>,  <22.044304, 14.094472, 13.786487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.162329, 13.998857, 13.600671>,  <22.359037, 13.839498, 13.290977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.162329, 13.998857, 13.600671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850477, 0.029139, 0.525205,
		0.186680, 0.916749, -0.353158,
		-0.491772, 0.398398, 0.774234,
		22.014797, 14.118376, 13.832941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.585421, 14.624701, 13.127513>,  <22.359037, 13.839498, 13.290977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.585421, 14.624701, 13.127513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734535, 14.944549, 13.315828>,  <22.824003, 15.136456, 13.428818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734535, 14.944549, 13.315828>,  <22.585421, 14.624701, 13.127513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734535, 14.944549, 13.315828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790881, -0.539162, 0.289502,
		0.485322, 0.264416, -0.833394,
		0.372786, 0.799617, 0.470789,
		22.846371, 15.184434, 13.457065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.324163, 14.698037, 12.916515>,  <22.585421, 14.624701, 13.127513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.324163, 14.698037, 12.916515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.272436, 14.891011, 13.263048>,  <23.241400, 15.006796, 13.470968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.272436, 14.891011, 13.263048>,  <23.324163, 14.698037, 12.916515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.272436, 14.891011, 13.263048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745902, -0.528346, 0.405562,
		0.653381, 0.698646, -0.291525,
		-0.129318, 0.482435, 0.866333,
		23.233641, 15.035742, 13.522948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.901297, 15.222738, 13.208111>,  <23.324163, 14.698037, 12.916515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.901297, 15.222738, 13.208111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.685476, 15.023074, 13.479323>,  <23.555984, 14.903275, 13.642051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.685476, 15.023074, 13.479323>,  <23.901297, 15.222738, 13.208111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.685476, 15.023074, 13.479323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819831, -0.494863, 0.288076,
		0.191736, 0.711302, 0.676230,
		-0.539550, -0.499160, 0.678030,
		23.523611, 14.873326, 13.682733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.309570, 15.308526, 13.738733>,  <23.901297, 15.222738, 13.208111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.309570, 15.308526, 13.738733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122665, 14.955628, 13.761748>,  <24.010523, 14.743890, 13.775558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122665, 14.955628, 13.761748>,  <24.309570, 15.308526, 13.738733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.122665, 14.955628, 13.761748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884069, -0.466937, 0.019794,
		0.009404, 0.060116, 0.998147,
		-0.467262, -0.882245, 0.057538,
		23.982487, 14.690955, 13.779010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024727, 15.496846, 13.920748>,  <24.309570, 15.308526, 13.738733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024727, 15.496846, 13.920748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014376, 15.294984, 14.265921>,  <25.008165, 15.173866, 14.473024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014376, 15.294984, 14.265921>,  <25.024727, 15.496846, 13.920748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014376, 15.294984, 14.265921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895412, -0.395519, -0.204454,
		0.444485, 0.767390, 0.462110,
		-0.025877, -0.504656, 0.862933,
		25.006613, 15.143587, 14.524800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616587, 15.593328, 14.452412>,  <25.024727, 15.496846, 13.920748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616587, 15.593328, 14.452412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451893, 15.230043, 14.422407>,  <25.353077, 15.012073, 14.404405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451893, 15.230043, 14.422407>,  <25.616587, 15.593328, 14.452412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451893, 15.230043, 14.422407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832128, -0.341131, -0.437256,
		0.371532, -0.242452, 0.896203,
		-0.411737, -0.908210, -0.075010,
		25.328371, 14.957581, 14.399904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767662, 14.980001, 14.905579>,  <25.616587, 15.593328, 14.452412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767662, 14.980001, 14.905579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718815, 14.899143, 14.516893>,  <25.689507, 14.850629, 14.283683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718815, 14.899143, 14.516893>,  <25.767662, 14.980001, 14.905579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718815, 14.899143, 14.516893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923684, -0.381389, -0.036742,
		-0.363174, -0.902042, 0.233292,
		-0.122117, -0.202144, -0.971712,
		25.682180, 14.838500, 14.225380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191837, 14.374613, 14.717748>,  <25.767662, 14.980001, 14.905579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191837, 14.374613, 14.717748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406439, 14.049508, 14.626898>,  <26.535200, 13.854445, 14.572388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406439, 14.049508, 14.626898>,  <26.191837, 14.374613, 14.717748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406439, 14.049508, 14.626898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561175, 0.142590, 0.815322,
		-0.630276, -0.564879, 0.532601,
		0.536502, -0.812761, -0.227125,
		26.567389, 13.805680, 14.558761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442705, 14.976147, 15.226317>,  <26.191837, 14.374613, 14.717748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442705, 14.976147, 15.226317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619768, 15.299096, 15.070265>,  <26.726006, 15.492866, 14.976633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619768, 15.299096, 15.070265>,  <26.442705, 14.976147, 15.226317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619768, 15.299096, 15.070265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573413, 0.079618, 0.815388,
		0.689384, -0.584645, -0.427715,
		0.442659, 0.807373, -0.390130,
		26.752565, 15.541308, 14.953226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.863211, 24.878515, 22.090006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.506559, 24.931128, 22.263304>,  <18.292568, 24.962694, 22.367283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.506559, 24.931128, 22.263304>,  <18.863211, 24.878515, 22.090006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506559, 24.931128, 22.263304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448325, -0.390226, -0.804195,
		0.063288, -0.911276, 0.406904,
		-0.891627, 0.131529, 0.433244,
		18.239071, 24.970587, 22.393276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506018, 24.255886, 22.123310>,  <18.863211, 24.878515, 22.090006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506018, 24.255886, 22.123310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.223049, 24.538603, 22.123829>,  <18.053268, 24.708233, 22.124140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.223049, 24.538603, 22.123829>,  <18.506018, 24.255886, 22.123310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.223049, 24.538603, 22.123829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478031, -0.477105, -0.737467,
		-0.520615, -0.522321, 0.675382,
		-0.707422, 0.706790, 0.001298,
		18.010822, 24.750641, 22.124218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.797367, 23.929516, 22.118568>,  <18.506018, 24.255886, 22.123310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.797367, 23.929516, 22.118568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.750494, 24.302608, 21.982168>,  <17.722370, 24.526464, 21.900328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.750494, 24.302608, 21.982168>,  <17.797367, 23.929516, 22.118568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.750494, 24.302608, 21.982168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633275, -0.334678, -0.697820,
		-0.765004, 0.134175, 0.629894,
		-0.117182, 0.932731, -0.341000,
		17.715340, 24.582428, 21.879868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176468, 23.866512, 21.777388>,  <17.797367, 23.929516, 22.118568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176468, 23.866512, 21.777388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.277338, 24.229675, 21.643457>,  <17.337860, 24.447573, 21.563099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.277338, 24.229675, 21.643457>,  <17.176468, 23.866512, 21.777388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.277338, 24.229675, 21.643457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620624, -0.113732, -0.775816,
		-0.742450, 0.403444, 0.534790,
		0.252176, 0.907908, -0.334827,
		17.352991, 24.502048, 21.543009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520287, 24.185118, 21.575434>,  <17.176468, 23.866512, 21.777388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.520287, 24.185118, 21.575434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.828234, 24.337307, 21.370478>,  <17.013002, 24.428619, 21.247503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.828234, 24.337307, 21.370478>,  <16.520287, 24.185118, 21.575434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828234, 24.337307, 21.370478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533493, -0.056975, -0.843883,
		-0.350267, 0.923036, 0.159116,
		0.769869, 0.380472, -0.512389,
		17.059195, 24.451448, 21.216761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.191755, 24.564194, 21.151651>,  <16.520287, 24.185118, 21.575434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.191755, 24.564194, 21.151651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.544603, 24.555763, 20.963430>,  <16.756311, 24.550705, 20.850498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.544603, 24.555763, 20.963430>,  <16.191755, 24.564194, 21.151651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544603, 24.555763, 20.963430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464715, -0.201921, -0.862130,
		-0.076844, 0.979175, -0.187914,
		0.882120, -0.021077, -0.470553,
		16.809238, 24.549440, 20.822264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089188, 24.809666, 20.470369>,  <16.191755, 24.564194, 21.151651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.089188, 24.809666, 20.470369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.421082, 24.591034, 20.425131>,  <16.620218, 24.459856, 20.397987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.421082, 24.591034, 20.425131>,  <16.089188, 24.809666, 20.470369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421082, 24.591034, 20.425131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384872, -0.413516, -0.825153,
		0.404243, 0.728187, -0.553472,
		0.829736, -0.546578, -0.113098,
		16.670002, 24.427061, 20.391201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305111, 24.887878, 19.693195>,  <16.089188, 24.809666, 20.470369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305111, 24.887878, 19.693195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.503317, 24.555250, 19.793562>,  <16.622240, 24.355673, 19.853781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.503317, 24.555250, 19.793562>,  <16.305111, 24.887878, 19.693195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503317, 24.555250, 19.793562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354925, -0.457499, -0.815305,
		0.792777, 0.314938, -0.521842,
		0.495513, -0.831570, 0.250915,
		16.651970, 24.305779, 19.868837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.580835, 24.604139, 19.017038>,  <16.305111, 24.887878, 19.693195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.580835, 24.604139, 19.017038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.637587, 24.316139, 19.288765>,  <16.671638, 24.143339, 19.451801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.637587, 24.316139, 19.288765>,  <16.580835, 24.604139, 19.017038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637587, 24.316139, 19.288765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110411, -0.670468, -0.733678,
		0.983707, 0.179098, -0.015630,
		0.141880, -0.719998, 0.679318,
		16.680151, 24.100140, 19.492559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243198, 24.111984, 18.868624>,  <16.580835, 24.604139, 19.017038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243198, 24.111984, 18.868624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.968458, 23.916956, 19.084221>,  <16.803614, 23.799938, 19.213579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.968458, 23.916956, 19.084221>,  <17.243198, 24.111984, 18.868624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968458, 23.916956, 19.084221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029752, -0.722113, -0.691135,
		0.726191, -0.490741, 0.481476,
		-0.686849, -0.487572, 0.538992,
		16.762403, 23.770685, 19.245918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313070, 23.476250, 18.609497>,  <17.243198, 24.111984, 18.868624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.313070, 23.476250, 18.609497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.973000, 23.406631, 18.808258>,  <16.768957, 23.364861, 18.927515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.973000, 23.406631, 18.808258>,  <17.313070, 23.476250, 18.609497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.973000, 23.406631, 18.808258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185304, -0.784483, -0.591818,
		0.492813, -0.595226, 0.634697,
		-0.850175, -0.174044, 0.496901,
		16.717947, 23.354418, 18.957329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357677, 22.812637, 19.053816>,  <17.313070, 23.476250, 18.609497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.357677, 22.812637, 19.053816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.975527, 22.882927, 18.958841>,  <16.746237, 22.925100, 18.901855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.975527, 22.882927, 18.958841>,  <17.357677, 22.812637, 19.053816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975527, 22.882927, 18.958841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034111, -0.864061, -0.502230,
		-0.293416, -0.471720, 0.831497,
		-0.955376, 0.175725, -0.237438,
		16.688913, 22.935644, 18.887609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.126631, 22.154516, 19.054920>,  <17.357677, 22.812637, 19.053816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.126631, 22.154516, 19.054920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.838459, 22.349955, 18.858042>,  <16.665556, 22.467218, 18.739914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.838459, 22.349955, 18.858042>,  <17.126631, 22.154516, 19.054920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.838459, 22.349955, 18.858042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074955, -0.760395, -0.645121,
		-0.689467, -0.427870, 0.584433,
		-0.720428, 0.488596, -0.492196,
		16.622332, 22.496534, 18.710382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509903, 21.647085, 18.999886>,  <17.126631, 22.154516, 19.054920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509903, 21.647085, 18.999886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.478636, 21.933863, 18.722792>,  <16.459875, 22.105930, 18.556536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.478636, 21.933863, 18.722792>,  <16.509903, 21.647085, 18.999886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478636, 21.933863, 18.722792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107627, -0.696867, -0.709079,
		-0.991114, 0.019129, 0.131636,
		-0.078169, 0.716945, -0.692733,
		16.455185, 22.148947, 18.514971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816929, 21.599216, 18.628666>,  <16.509903, 21.647085, 18.999886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.816929, 21.599216, 18.628666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.083500, 21.783421, 18.394127>,  <16.243443, 21.893944, 18.253403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.083500, 21.783421, 18.394127>,  <15.816929, 21.599216, 18.628666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.083500, 21.783421, 18.394127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158014, -0.681339, -0.714709,
		-0.728634, 0.568953, -0.381296,
		0.666427, 0.460511, -0.586349,
		16.283428, 21.921574, 18.218222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613672, 21.395086, 18.050489>,  <15.816929, 21.599216, 18.628666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613672, 21.395086, 18.050489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.972167, 21.538120, 17.945501>,  <16.187263, 21.623940, 17.882507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.972167, 21.538120, 17.945501>,  <15.613672, 21.395086, 18.050489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.972167, 21.538120, 17.945501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088397, -0.723835, -0.684287,
		-0.434676, 0.590082, -0.680338,
		0.896238, 0.357583, -0.262472,
		16.241039, 21.645395, 17.866760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656260, 21.344555, 17.348845>,  <15.613672, 21.395086, 18.050489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.656260, 21.344555, 17.348845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.047085, 21.355768, 17.433281>,  <16.281580, 21.362497, 17.483944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.047085, 21.355768, 17.433281>,  <15.656260, 21.344555, 17.348845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047085, 21.355768, 17.433281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183513, -0.613717, -0.767903,
		0.108023, 0.789028, -0.604786,
		0.977064, 0.028035, 0.211093,
		16.340204, 21.364180, 17.496609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951194, 21.364254, 16.677908>,  <15.656260, 21.344555, 17.348845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951194, 21.364254, 16.677908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.238121, 21.234468, 16.924543>,  <16.410276, 21.156597, 17.072525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.238121, 21.234468, 16.924543>,  <15.951194, 21.364254, 16.677908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238121, 21.234468, 16.924543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215740, -0.738028, -0.639352,
		0.662504, 0.591641, -0.459400,
		0.717318, -0.324463, 0.616587,
		16.453316, 21.137129, 17.109520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497917, 21.438301, 16.310051>,  <15.951194, 21.364254, 16.677908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497917, 21.438301, 16.310051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.599436, 21.151415, 16.569649>,  <16.660347, 20.979284, 16.725407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.599436, 21.151415, 16.569649>,  <16.497917, 21.438301, 16.310051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.599436, 21.151415, 16.569649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354790, -0.555169, -0.752271,
		0.899840, 0.421180, 0.113560,
		0.253796, -0.717213, 0.648994,
		16.675575, 20.936251, 16.764347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274843, 21.201262, 16.123734>,  <16.497917, 21.438301, 16.310051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274843, 21.201262, 16.123734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.123087, 20.918797, 16.362865>,  <17.032034, 20.749317, 16.506344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.123087, 20.918797, 16.362865>,  <17.274843, 21.201262, 16.123734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123087, 20.918797, 16.362865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480475, -0.702550, -0.524945,
		0.790701, 0.088083, 0.605832,
		-0.379389, -0.706162, 0.597829,
		17.009270, 20.706947, 16.542213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817039, 20.855467, 16.248501>,  <17.274843, 21.201262, 16.123734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817039, 20.855467, 16.248501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.505728, 20.611282, 16.307318>,  <17.318941, 20.464771, 16.342607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.505728, 20.611282, 16.307318>,  <17.817039, 20.855467, 16.248501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505728, 20.611282, 16.307318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468713, -0.720623, -0.510892,
		0.417843, -0.328694, 0.846975,
		-0.778277, -0.610461, 0.147044,
		17.272245, 20.428144, 16.351431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.161175, 20.166550, 16.459511>,  <17.817039, 20.855467, 16.248501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.161175, 20.166550, 16.459511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.783539, 20.077875, 16.361902>,  <17.556957, 20.024672, 16.303337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.783539, 20.077875, 16.361902>,  <18.161175, 20.166550, 16.459511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.783539, 20.077875, 16.361902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297473, -0.891895, -0.340638,
		-0.142126, -0.394183, 0.907976,
		-0.944092, -0.221685, -0.244020,
		17.500311, 20.011370, 16.288696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.950157, 19.508057, 16.766552>,  <18.161175, 20.166550, 16.459511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.950157, 19.508057, 16.766552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.755116, 19.584406, 16.425774>,  <17.638090, 19.630215, 16.221308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.755116, 19.584406, 16.425774>,  <17.950157, 19.508057, 16.766552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755116, 19.584406, 16.425774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259192, -0.900168, -0.350025,
		-0.833703, -0.391491, 0.389454,
		-0.487605, 0.190873, -0.851944,
		17.608833, 19.641668, 16.170191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033396, 19.663208, 17.438311>,  <17.950157, 19.508057, 16.766552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.033396, 19.663208, 17.438311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.266176, 19.647196, 17.113415>,  <18.405846, 19.637589, 16.918478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.266176, 19.647196, 17.113415>,  <18.033396, 19.663208, 17.438311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.266176, 19.647196, 17.113415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795706, 0.234216, 0.558565,
		0.167880, -0.971360, 0.168154,
		0.581952, -0.040029, -0.812237,
		18.440762, 19.635187, 16.869743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592546, 19.077215, 17.506180>,  <18.033396, 19.663208, 17.438311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.592546, 19.077215, 17.506180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.718157, 19.382488, 17.280279>,  <18.793524, 19.565651, 17.144739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.718157, 19.382488, 17.280279>,  <18.592546, 19.077215, 17.506180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.718157, 19.382488, 17.280279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781645, 0.129821, 0.610064,
		0.538905, -0.633010, -0.555770,
		0.314026, 0.763181, -0.564750,
		18.812365, 19.611443, 17.110855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265593, 18.978195, 17.496679>,  <18.592546, 19.077215, 17.506180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265593, 18.978195, 17.496679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.228859, 19.362949, 17.393652>,  <19.206820, 19.593801, 17.331835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.228859, 19.362949, 17.393652>,  <19.265593, 18.978195, 17.496679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.228859, 19.362949, 17.393652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775350, 0.231376, 0.587621,
		0.624819, -0.145744, -0.767046,
		-0.091834, 0.961886, -0.257571,
		19.201309, 19.651516, 17.316381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959921, 19.270590, 17.554420>,  <19.265593, 18.978195, 17.496679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959921, 19.270590, 17.554420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.759451, 19.615292, 17.522917>,  <19.639170, 19.822113, 17.504015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.759451, 19.615292, 17.522917>,  <19.959921, 19.270590, 17.554420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759451, 19.615292, 17.522917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662876, 0.440824, 0.605202,
		0.556255, 0.251105, -0.792166,
		-0.501175, 0.861755, -0.078759,
		19.609098, 19.873817, 17.499289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.397499, 19.770327, 17.277184>,  <19.959921, 19.270590, 17.554420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.397499, 19.770327, 17.277184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.117081, 19.958780, 17.491314>,  <19.948830, 20.071852, 17.619791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.117081, 19.958780, 17.491314>,  <20.397499, 19.770327, 17.277184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.117081, 19.958780, 17.491314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711592, 0.511260, 0.481924,
		-0.046639, 0.718782, -0.693669,
		-0.701044, 0.471133, 0.535324,
		19.906767, 20.100121, 17.651911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.544683, 20.393545, 17.290682>,  <20.397499, 19.770327, 17.277184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.544683, 20.393545, 17.290682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.303236, 20.377439, 17.609184>,  <20.158367, 20.367775, 17.800285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.303236, 20.377439, 17.609184>,  <20.544683, 20.393545, 17.290682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.303236, 20.377439, 17.609184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638802, 0.573163, 0.513240,
		-0.477051, 0.818451, -0.320250,
		-0.603617, -0.040265, 0.796257,
		20.122150, 20.365360, 17.848061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450483, 21.060865, 17.565521>,  <20.544683, 20.393545, 17.290682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450483, 21.060865, 17.565521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.367033, 20.809069, 17.864910>,  <20.316963, 20.657990, 18.044544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.367033, 20.809069, 17.864910>,  <20.450483, 21.060865, 17.565521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.367033, 20.809069, 17.864910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514762, 0.580046, 0.631322,
		-0.831562, 0.516997, 0.203025,
		-0.208627, -0.629493, 0.748474,
		20.304445, 20.620220, 18.089453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.391241, 21.579615, 18.090509>,  <20.450483, 21.060865, 17.565521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.391241, 21.579615, 18.090509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.422840, 21.233471, 18.288465>,  <20.441799, 21.025785, 18.407238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.422840, 21.233471, 18.288465>,  <20.391241, 21.579615, 18.090509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.422840, 21.233471, 18.288465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435009, 0.476603, 0.763948,
		-0.896954, 0.154933, 0.414088,
		0.078995, -0.865359, 0.494888,
		20.446539, 20.973864, 18.436932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.197311, 21.808073, 18.799536>,  <20.391241, 21.579615, 18.090509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.197311, 21.808073, 18.799536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.363426, 21.447813, 18.850714>,  <20.463095, 21.231657, 18.881420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.363426, 21.447813, 18.850714>,  <20.197311, 21.808073, 18.799536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.363426, 21.447813, 18.850714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389776, 0.303251, 0.869548,
		-0.821956, -0.311243, 0.476987,
		0.415287, -0.900648, 0.127944,
		20.488012, 21.177618, 18.889097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.018938, 21.557053, 19.469648>,  <20.197311, 21.808073, 18.799536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.018938, 21.557053, 19.469648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.359198, 21.385180, 19.348473>,  <20.563353, 21.282055, 19.275768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.359198, 21.385180, 19.348473>,  <20.018938, 21.557053, 19.469648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359198, 21.385180, 19.348473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476568, 0.386903, 0.789423,
		-0.221993, -0.815891, 0.533891,
		0.850648, -0.429682, -0.302938,
		20.614391, 21.256275, 19.257591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.289845, 21.177641, 19.990110>,  <20.018938, 21.557053, 19.469648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.289845, 21.177641, 19.990110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.601954, 21.266695, 19.756321>,  <20.789219, 21.320127, 19.616047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.601954, 21.266695, 19.756321>,  <20.289845, 21.177641, 19.990110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.601954, 21.266695, 19.756321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444081, 0.460838, 0.768388,
		0.440411, -0.859107, 0.260716,
		0.780276, 0.222628, -0.584471,
		20.836035, 21.333487, 19.580978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864323, 21.044535, 20.394232>,  <20.289845, 21.177641, 19.990110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864323, 21.044535, 20.394232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.952261, 21.319145, 20.117002>,  <21.005024, 21.483912, 19.950665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.952261, 21.319145, 20.117002>,  <20.864323, 21.044535, 20.394232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952261, 21.319145, 20.117002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314897, 0.622482, 0.716489,
		0.923313, -0.375764, -0.079334,
		0.219847, 0.686526, -0.693073,
		21.018215, 21.525103, 19.909081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393932, 21.332323, 20.743689>,  <20.864323, 21.044535, 20.394232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393932, 21.332323, 20.743689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.304838, 21.588167, 20.449400>,  <21.251381, 21.741673, 20.272827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.304838, 21.588167, 20.449400>,  <21.393932, 21.332323, 20.743689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304838, 21.588167, 20.449400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273458, 0.765375, 0.582599,
		0.935740, -0.071424, -0.345383,
		-0.222736, 0.639609, -0.735724,
		21.238018, 21.780050, 20.228683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920092, 21.804773, 20.725737>,  <21.393932, 21.332323, 20.743689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920092, 21.804773, 20.725737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.597181, 21.977055, 20.564342>,  <21.403435, 22.080423, 20.467506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.597181, 21.977055, 20.564342>,  <21.920092, 21.804773, 20.725737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597181, 21.977055, 20.564342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091701, 0.766909, 0.635170,
		0.583004, 0.475758, -0.658605,
		-0.807277, 0.430702, -0.403484,
		21.354998, 22.106266, 20.443296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.134758, 22.531511, 20.699259>,  <21.920092, 21.804773, 20.725737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.134758, 22.531511, 20.699259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.735300, 22.514906, 20.686697>,  <21.495625, 22.504942, 20.679161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.735300, 22.514906, 20.686697>,  <22.134758, 22.531511, 20.699259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.735300, 22.514906, 20.686697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052046, 0.806224, 0.589317,
		0.000852, 0.590153, -0.807292,
		-0.998644, -0.041514, -0.031402,
		21.435707, 22.502451, 20.677277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.975695, 23.188801, 20.705273>,  <22.134758, 22.531511, 20.699259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.975695, 23.188801, 20.705273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.632700, 23.032169, 20.838770>,  <21.426903, 22.938190, 20.918869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.632700, 23.032169, 20.838770>,  <21.975695, 23.188801, 20.705273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.632700, 23.032169, 20.838770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077720, 0.739801, 0.668322,
		-0.508606, 0.547137, -0.664802,
		-0.857485, -0.391581, 0.333743,
		21.375454, 22.914696, 20.938892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.509138, 23.720133, 20.679787>,  <21.975695, 23.188801, 20.705273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.509138, 23.720133, 20.679787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.373400, 23.459312, 20.950983>,  <21.291956, 23.302820, 21.113701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.373400, 23.459312, 20.950983>,  <21.509138, 23.720133, 20.679787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373400, 23.459312, 20.950983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242711, 0.757050, 0.606602,
		-0.908810, 0.041291, -0.415162,
		-0.339345, -0.652050, 0.677993,
		21.271597, 23.263697, 21.154381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.662819, 23.868382, 20.803453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.776644, 23.662785, 21.127142>,  <20.844938, 23.539427, 21.321354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.776644, 23.662785, 21.127142>,  <20.662819, 23.868382, 20.803453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776644, 23.662785, 21.127142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234150, 0.781287, 0.578588,
		-0.929623, -0.354124, 0.101974,
		0.284563, -0.513992, 0.809220,
		20.862013, 23.508587, 21.369907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130249, 23.950514, 21.342876>,  <20.662819, 23.868382, 20.803453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130249, 23.950514, 21.342876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.446577, 23.841652, 21.562162>,  <20.636374, 23.776335, 21.693733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.446577, 23.841652, 21.562162>,  <20.130249, 23.950514, 21.342876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446577, 23.841652, 21.562162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251289, 0.672353, 0.696273,
		-0.558087, -0.688385, 0.463319,
		0.790818, -0.272154, 0.548215,
		20.683823, 23.760006, 21.726627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954805, 24.457920, 21.955051>,  <20.130249, 23.950514, 21.342876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954805, 24.457920, 21.955051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.288792, 24.250719, 22.029354>,  <20.489183, 24.126398, 22.073936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.288792, 24.250719, 22.029354>,  <19.954805, 24.457920, 21.955051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.288792, 24.250719, 22.029354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015293, 0.315585, 0.948774,
		-0.550088, -0.795036, 0.255581,
		0.834967, -0.518000, 0.185757,
		20.539282, 24.095320, 22.085081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.902554, 24.193949, 22.617329>,  <19.954805, 24.457920, 21.955051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.902554, 24.193949, 22.617329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.295622, 24.218410, 22.547333>,  <20.531462, 24.233088, 22.505335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.295622, 24.218410, 22.547333>,  <19.902554, 24.193949, 22.617329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295622, 24.218410, 22.547333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140920, 0.366855, 0.919543,
		0.120428, -0.928266, 0.351880,
		0.982669, 0.061152, -0.174991,
		20.590422, 24.236755, 22.494835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.236107, 23.852818, 23.281628>,  <19.902554, 24.193949, 22.617329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.236107, 23.852818, 23.281628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.505116, 24.072205, 23.082874>,  <20.666521, 24.203836, 22.963621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.505116, 24.072205, 23.082874>,  <20.236107, 23.852818, 23.281628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505116, 24.072205, 23.082874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336171, 0.371739, 0.865332,
		0.659319, -0.748994, 0.065624,
		0.672524, 0.548469, -0.496884,
		20.706873, 24.236746, 22.933809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.883526, 23.803442, 23.610439>,  <20.236107, 23.852818, 23.281628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.883526, 23.803442, 23.610439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.894726, 24.149658, 23.410416>,  <20.901445, 24.357388, 23.290401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.894726, 24.149658, 23.410416>,  <20.883526, 23.803442, 23.610439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.894726, 24.149658, 23.410416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297688, 0.470336, 0.830762,
		0.954252, -0.172124, -0.244491,
		0.028001, 0.865539, -0.500058,
		20.903126, 24.409321, 23.260399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.541538, 23.985291, 23.648293>,  <20.883526, 23.803442, 23.610439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.541538, 23.985291, 23.648293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.330679, 24.317425, 23.576010>,  <21.204163, 24.516706, 23.532640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.330679, 24.317425, 23.576010>,  <21.541538, 23.985291, 23.648293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330679, 24.317425, 23.576010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500468, 0.475220, 0.723670,
		0.686765, 0.291045, -0.666068,
		-0.527149, 0.830337, -0.180706,
		21.172535, 24.566526, 23.521797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.971336, 24.642967, 23.751749>,  <21.541538, 23.985291, 23.648293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.971336, 24.642967, 23.751749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.595976, 24.777687, 23.782648>,  <21.370760, 24.858519, 23.801188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.595976, 24.777687, 23.782648>,  <21.971336, 24.642967, 23.751749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595976, 24.777687, 23.782648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263470, 0.552765, 0.790591,
		0.223573, 0.762244, -0.607453,
		-0.938402, 0.336800, 0.077246,
		21.314455, 24.878727, 23.805822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.116379, 25.431257, 23.826710>,  <21.971336, 24.642967, 23.751749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.116379, 25.431257, 23.826710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.744076, 25.355621, 23.951889>,  <21.520695, 25.310240, 24.026997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.744076, 25.355621, 23.951889>,  <22.116379, 25.431257, 23.826710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.744076, 25.355621, 23.951889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164545, 0.547717, 0.820324,
		-0.326521, 0.815016, -0.478678,
		-0.930757, -0.189089, 0.312948,
		21.464849, 25.298895, 24.045773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.921982, 26.085325, 24.120636>,  <22.116379, 25.431257, 23.826710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.921982, 26.085325, 24.120636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.673304, 25.820126, 24.287453>,  <21.524096, 25.661005, 24.387543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.673304, 25.820126, 24.287453>,  <21.921982, 26.085325, 24.120636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.673304, 25.820126, 24.287453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188919, 0.389798, 0.901314,
		-0.760133, 0.639132, -0.117083,
		-0.621697, -0.662999, 0.417043,
		21.486794, 25.621225, 24.412565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.675404, 26.481304, 24.569466>,  <21.921982, 26.085325, 24.120636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.675404, 26.481304, 24.569466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.582531, 26.124067, 24.723597>,  <21.526808, 25.909725, 24.816076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.582531, 26.124067, 24.723597>,  <21.675404, 26.481304, 24.569466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.582531, 26.124067, 24.723597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280743, 0.317763, 0.905654,
		-0.931276, 0.318455, 0.176951,
		-0.232182, -0.893091, 0.385329,
		21.512877, 25.856140, 24.839195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.419827, 26.685215, 25.212540>,  <21.675404, 26.481304, 24.569466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.419827, 26.685215, 25.212540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.474726, 26.289961, 25.240099>,  <21.507666, 26.052807, 25.256634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.474726, 26.289961, 25.240099>,  <21.419827, 26.685215, 25.212540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.474726, 26.289961, 25.240099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087446, 0.081372, 0.992840,
		-0.986669, -0.130240, 0.097576,
		0.137247, -0.988138, 0.068899,
		21.515900, 25.993519, 25.260769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.041239, 26.520926, 25.784519>,  <21.419827, 26.685215, 25.212540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.041239, 26.520926, 25.784519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.334772, 26.253050, 25.738913>,  <21.510893, 26.092323, 25.711548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.334772, 26.253050, 25.738913>,  <21.041239, 26.520926, 25.784519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.334772, 26.253050, 25.738913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116853, -0.040898, 0.992307,
		-0.669202, -0.741513, 0.048243,
		0.733835, -0.669691, -0.114017,
		21.554922, 26.052143, 25.704708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.848967, 26.011366, 26.361740>,  <21.041239, 26.520926, 25.784519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.848967, 26.011366, 26.361740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.228802, 25.968372, 26.243938>,  <21.456703, 25.942577, 26.173258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.228802, 25.968372, 26.243938>,  <20.848967, 26.011366, 26.361740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.228802, 25.968372, 26.243938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285686, -0.090198, 0.954069,
		-0.129116, -0.990106, -0.054943,
		0.949586, -0.107489, -0.294505,
		21.513678, 25.936127, 26.155586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116344, 25.500517, 26.797237>,  <20.848967, 26.011366, 26.361740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116344, 25.500517, 26.797237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.462399, 25.645081, 26.658142>,  <21.670031, 25.731819, 26.574684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.462399, 25.645081, 26.658142>,  <21.116344, 25.500517, 26.797237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.462399, 25.645081, 26.658142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351361, 0.058016, 0.934441,
		0.357891, -0.930600, -0.076794,
		0.865136, 0.361410, -0.347740,
		21.721939, 25.753504, 26.553820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.583605, 25.100376, 27.012848>,  <21.116344, 25.500517, 26.797237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.583605, 25.100376, 27.012848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.767191, 25.447948, 26.938753>,  <21.877342, 25.656492, 26.894297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.767191, 25.447948, 26.938753>,  <21.583605, 25.100376, 27.012848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767191, 25.447948, 26.938753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316356, 0.034992, 0.947995,
		0.830222, -0.493698, -0.258831,
		0.458966, 0.868929, -0.185236,
		21.904881, 25.708628, 26.883183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.251385, 24.962420, 27.216196>,  <21.583605, 25.100376, 27.012848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.251385, 24.962420, 27.216196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.215197, 25.360523, 27.201927>,  <22.193483, 25.599386, 27.193365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.215197, 25.360523, 27.201927>,  <22.251385, 24.962420, 27.216196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.215197, 25.360523, 27.201927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646515, 0.085937, 0.758045,
		0.757518, 0.045517, -0.651226,
		-0.090469, 0.995260, -0.035671,
		22.188057, 25.659101, 27.191225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.942314, 25.240154, 27.277298>,  <22.251385, 24.962420, 27.216196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.942314, 25.240154, 27.277298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.718170, 25.564272, 27.345907>,  <22.583685, 25.758743, 27.387074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.718170, 25.564272, 27.345907>,  <22.942314, 25.240154, 27.277298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.718170, 25.564272, 27.345907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633444, 0.285847, 0.719054,
		0.533617, 0.511579, -0.673454,
		-0.560358, 0.810295, 0.171524,
		22.550062, 25.807360, 27.397364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.397919, 25.823687, 27.401344>,  <22.942314, 25.240154, 27.277298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.397919, 25.823687, 27.401344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.052139, 25.966679, 27.542732>,  <22.844671, 26.052473, 27.627565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.052139, 25.966679, 27.542732>,  <23.397919, 25.823687, 27.401344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.052139, 25.966679, 27.542732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488148, 0.428802, 0.760158,
		0.120172, 0.829661, -0.545179,
		-0.864448, 0.357478, 0.353468,
		22.792805, 26.073921, 27.648773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.435997, 26.643456, 27.470818>,  <23.397919, 25.823687, 27.401344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.435997, 26.643456, 27.470818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.202444, 26.458452, 27.737701>,  <23.062311, 26.347450, 27.897831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.202444, 26.458452, 27.737701>,  <23.435997, 26.643456, 27.470818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.202444, 26.458452, 27.737701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595992, 0.313843, 0.739118,
		-0.551246, 0.829210, 0.092403,
		-0.583884, -0.462508, 0.667208,
		23.027279, 26.319700, 27.937864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.365023, 27.183998, 27.957962>,  <23.435997, 26.643456, 27.470818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.365023, 27.183998, 27.957962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.230040, 26.867146, 28.161392>,  <23.149050, 26.677034, 28.283451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.230040, 26.867146, 28.161392>,  <23.365023, 27.183998, 27.957962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.230040, 26.867146, 28.161392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543316, 0.277297, 0.792411,
		-0.768721, 0.543721, 0.336803,
		-0.337456, -0.792133, 0.508576,
		23.128803, 26.629505, 28.313965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.048746, 27.468441, 28.552399>,  <23.365023, 27.183998, 27.957962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.048746, 27.468441, 28.552399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.132202, 27.085560, 28.632629>,  <23.182276, 26.855831, 28.680767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.132202, 27.085560, 28.632629>,  <23.048746, 27.468441, 28.552399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.132202, 27.085560, 28.632629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364365, 0.266402, 0.892338,
		-0.907584, -0.113093, 0.404354,
		0.208638, -0.957204, 0.200575,
		23.194794, 26.798399, 28.692802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.661964, 27.405066, 29.079422>,  <23.048746, 27.468441, 28.552399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.661964, 27.405066, 29.079422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.976725, 27.158705, 29.094650>,  <23.165581, 27.010887, 29.103786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.976725, 27.158705, 29.094650>,  <22.661964, 27.405066, 29.079422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.976725, 27.158705, 29.094650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188938, 0.299207, 0.935295,
		-0.587444, -0.728792, 0.351814,
		0.786901, -0.615904, 0.038071,
		23.212795, 26.973934, 29.106071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029575, 27.394999, 28.652864>,  <22.661964, 27.405066, 29.079422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029575, 27.394999, 28.652864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.143713, 27.027407, 28.761717>,  <22.212196, 26.806852, 28.827028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.143713, 27.027407, 28.761717>,  <22.029575, 27.394999, 28.652864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143713, 27.027407, 28.761717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086262, -0.307410, -0.947659,
		0.954535, 0.246934, -0.166991,
		0.285344, -0.918979, 0.272132,
		22.229317, 26.751713, 28.843357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.545395, 27.592623, 29.212204>,  <22.029575, 27.394999, 28.652864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.545395, 27.592623, 29.212204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.255587, 27.378195, 29.385502>,  <21.081701, 27.249538, 29.489481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.255587, 27.378195, 29.385502>,  <21.545395, 27.592623, 29.212204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.255587, 27.378195, 29.385502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384200, -0.207755, -0.899571,
		0.572243, -0.818208, -0.055436,
		-0.724519, -0.536072, 0.433242,
		21.038231, 27.217373, 29.515474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486691, 26.805073, 29.015518>,  <21.545395, 27.592623, 29.212204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486691, 26.805073, 29.015518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.136414, 26.962788, 29.127016>,  <20.926247, 27.057417, 29.193914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.136414, 26.962788, 29.127016>,  <21.486691, 26.805073, 29.015518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136414, 26.962788, 29.127016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397856, -0.262044, -0.879229,
		-0.273621, -0.880837, 0.386338,
		-0.875695, 0.394282, 0.278746,
		20.873705, 27.081074, 29.210640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.948803, 26.285704, 28.897831>,  <21.486691, 26.805073, 29.015518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.948803, 26.285704, 28.897831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.765965, 26.641415, 28.891493>,  <20.656261, 26.854841, 28.887690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.765965, 26.641415, 28.891493>,  <20.948803, 26.285704, 28.897831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765965, 26.641415, 28.891493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424890, -0.233980, -0.874484,
		-0.781365, -0.392990, 0.484796,
		-0.457096, 0.889276, -0.015847,
		20.628836, 26.908197, 28.886740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.278027, 26.179960, 28.944822>,  <20.948803, 26.285704, 28.897831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.278027, 26.179960, 28.944822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.302956, 26.543966, 28.780876>,  <20.317913, 26.762369, 28.682508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.302956, 26.543966, 28.780876>,  <20.278027, 26.179960, 28.944822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302956, 26.543966, 28.780876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716225, -0.245225, -0.653366,
		-0.695081, 0.334276, 0.636492,
		0.062321, 0.910014, -0.409867,
		20.321651, 26.816971, 28.657915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.593895, 26.434273, 28.739716>,  <20.278027, 26.179960, 28.944822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.593895, 26.434273, 28.739716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.835285, 26.631184, 28.488804>,  <19.980120, 26.749331, 28.338257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.835285, 26.631184, 28.488804>,  <19.593895, 26.434273, 28.739716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.835285, 26.631184, 28.488804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645933, -0.159449, -0.746556,
		-0.467532, 0.855709, 0.221755,
		0.603477, 0.492278, -0.627279,
		20.016329, 26.778868, 28.300621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121508, 26.715931, 28.304447>,  <19.593895, 26.434273, 28.739716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121508, 26.715931, 28.304447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.472298, 26.763100, 28.118109>,  <19.682772, 26.791401, 28.006306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.472298, 26.763100, 28.118109>,  <19.121508, 26.715931, 28.304447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.472298, 26.763100, 28.118109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453854, -0.115290, -0.883586,
		-0.157900, 0.986308, -0.047588,
		0.876974, 0.117920, -0.465844,
		19.735390, 26.798475, 27.978355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.046993, 27.309750, 27.811697>,  <19.121508, 26.715931, 28.304447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.046993, 27.309750, 27.811697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.331001, 27.049267, 27.704514>,  <19.501406, 26.892977, 27.640203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.331001, 27.049267, 27.704514>,  <19.046993, 27.309750, 27.811697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331001, 27.049267, 27.704514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416433, -0.081443, -0.905511,
		0.567850, 0.754519, -0.329010,
		0.710021, -0.651205, -0.267959,
		19.544008, 26.853905, 27.624126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171436, 27.317894, 27.085686>,  <19.046993, 27.309750, 27.811697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171436, 27.317894, 27.085686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.367964, 26.973511, 27.138380>,  <19.485880, 26.766880, 27.169996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.367964, 26.973511, 27.138380>,  <19.171436, 27.317894, 27.085686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367964, 26.973511, 27.138380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213609, -0.265744, -0.940081,
		0.844380, 0.433739, -0.314473,
		0.491319, -0.860959, 0.131738,
		19.515360, 26.715223, 27.177902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.624775, 27.216766, 26.425915>,  <19.171436, 27.317894, 27.085686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.624775, 27.216766, 26.425915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.598473, 26.853886, 26.592125>,  <19.582691, 26.636156, 26.691851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.598473, 26.853886, 26.592125>,  <19.624775, 27.216766, 26.425915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598473, 26.853886, 26.592125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059889, -0.412085, -0.909175,
		0.996037, -0.084668, -0.027234,
		-0.065755, -0.907202, 0.415523,
		19.578747, 26.581724, 26.716782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076151, 26.683100, 26.065868>,  <19.624775, 27.216766, 26.425915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076151, 26.683100, 26.065868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.773430, 26.473541, 26.222218>,  <19.591797, 26.347807, 26.316027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.773430, 26.473541, 26.222218>,  <20.076151, 26.683100, 26.065868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773430, 26.473541, 26.222218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171264, -0.418167, -0.892079,
		0.630808, -0.742070, 0.226745,
		-0.756803, -0.523897, 0.390873,
		19.546389, 26.316372, 26.339479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.189899, 26.038412, 25.871220>,  <20.076151, 26.683100, 26.065868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.189899, 26.038412, 25.871220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.798681, 26.052011, 25.953465>,  <19.563951, 26.060171, 26.002811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.798681, 26.052011, 25.953465>,  <20.189899, 26.038412, 25.871220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798681, 26.052011, 25.953465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191188, -0.539012, -0.820312,
		0.082939, -0.841611, 0.533677,
		-0.978043, 0.033997, 0.205611,
		19.505268, 26.062210, 26.015148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059130, 25.406786, 25.613264>,  <20.189899, 26.038412, 25.871220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059130, 25.406786, 25.613264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.713507, 25.603500, 25.656254>,  <19.506132, 25.721529, 25.682047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.713507, 25.603500, 25.656254>,  <20.059130, 25.406786, 25.613264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.713507, 25.603500, 25.656254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322890, -0.377662, -0.867821,
		-0.386222, -0.784533, 0.485118,
		-0.864046, 0.491812, 0.107456,
		19.454290, 25.751036, 25.688496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622364, 24.984617, 25.397181>,  <20.059130, 25.406786, 25.613264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622364, 24.984617, 25.397181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.438381, 25.339424, 25.380976>,  <19.327991, 25.552307, 25.371254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.438381, 25.339424, 25.380976>,  <19.622364, 24.984617, 25.397181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.438381, 25.339424, 25.380976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225258, -0.160694, -0.960956,
		-0.858893, -0.432875, 0.273720,
		-0.459959, 0.887016, -0.040510,
		19.300394, 25.605530, 25.368822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.951239, 24.887638, 25.140356>,  <19.622364, 24.984617, 25.397181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.951239, 24.887638, 25.140356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.016813, 25.277344, 25.078472>,  <19.056158, 25.511168, 25.041342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.016813, 25.277344, 25.078472>,  <18.951239, 24.887638, 25.140356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.016813, 25.277344, 25.078472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357246, -0.087551, -0.929898,
		-0.919511, 0.207713, 0.333700,
		0.163936, 0.974264, -0.154709,
		19.065994, 25.569622, 25.032059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370680, 25.201267, 24.948311>,  <18.951239, 24.887638, 25.140356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370680, 25.201267, 24.948311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.640106, 25.463188, 24.811172>,  <18.801762, 25.620340, 24.728889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.640106, 25.463188, 24.811172>,  <18.370680, 25.201267, 24.948311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.640106, 25.463188, 24.811172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344708, -0.132026, -0.929379,
		-0.653825, 0.744179, 0.136788,
		0.673564, 0.654803, -0.342846,
		18.842176, 25.659630, 24.708319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022955, 25.652189, 24.475954>,  <18.370680, 25.201267, 24.948311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022955, 25.652189, 24.475954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.408375, 25.691332, 24.376360>,  <18.639627, 25.714817, 24.316603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.408375, 25.691332, 24.376360>,  <18.022955, 25.652189, 24.475954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.408375, 25.691332, 24.376360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233833, -0.144098, -0.961539,
		-0.129972, 0.984713, -0.115963,
		0.963550, 0.097857, -0.248987,
		18.697439, 25.720690, 24.301664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.057125, 26.156334, 23.890705>,  <18.022955, 25.652189, 24.475954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.057125, 26.156334, 23.890705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.344173, 25.880247, 23.853573>,  <18.516403, 25.714594, 23.831293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.344173, 25.880247, 23.853573>,  <18.057125, 26.156334, 23.890705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.344173, 25.880247, 23.853573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304775, -0.191389, -0.932997,
		0.626205, 0.697831, -0.347706,
		0.717621, -0.690219, -0.092833,
		18.559460, 25.673182, 23.825724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524824, 26.324171, 23.344734>,  <18.057125, 26.156334, 23.890705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524824, 26.324171, 23.344734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.539965, 25.926620, 23.386269>,  <18.549049, 25.688091, 23.411188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.539965, 25.926620, 23.386269>,  <18.524824, 26.324171, 23.344734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.539965, 25.926620, 23.386269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113640, -0.107516, -0.987687,
		0.992801, 0.025585, -0.117013,
		0.037851, -0.993874, 0.103834,
		18.551319, 25.628458, 23.417419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809582, 26.136555, 22.714706>,  <18.524824, 26.324171, 23.344734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.809582, 26.136555, 22.714706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.694872, 25.790218, 22.878695>,  <18.626045, 25.582417, 22.977087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.694872, 25.790218, 22.878695>,  <18.809582, 26.136555, 22.714706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.694872, 25.790218, 22.878695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270631, -0.337295, -0.901660,
		0.918978, -0.369523, -0.137596,
		-0.286774, -0.865843, 0.409971,
		18.608839, 25.530466, 23.001686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045692, 25.590282, 22.305824>,  <18.809582, 26.136555, 22.714706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.045692, 25.590282, 22.305824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.731977, 25.424316, 22.490320>,  <18.543749, 25.324738, 22.601017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.731977, 25.424316, 22.490320>,  <19.045692, 25.590282, 22.305824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731977, 25.424316, 22.490320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425427, -0.181452, -0.886616,
		0.451562, -0.891584, -0.034205,
		-0.784286, -0.414914, 0.461241,
		18.496693, 25.299843, 22.628693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.008293, 17.324533, 4.492828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.113388, 17.633043, 4.724725>,  <16.176445, 17.818150, 4.863864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.113388, 17.633043, 4.724725>,  <16.008293, 17.324533, 4.492828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.113388, 17.633043, 4.724725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296789, -0.636324, 0.712045,
		0.918088, -0.015018, -0.396092,
		0.262737, 0.771276, 0.579744,
		16.192209, 17.864426, 4.898648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745131, 17.283119, 4.633397>,  <16.008293, 17.324533, 4.492828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745131, 17.283119, 4.633397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.505053, 17.433241, 4.915932>,  <16.361006, 17.523314, 5.085453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.505053, 17.433241, 4.915932>,  <16.745131, 17.283119, 4.633397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505053, 17.433241, 4.915932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289895, -0.720973, 0.629411,
		0.745470, 0.582534, 0.323927,
		-0.600196, 0.375302, 0.706338,
		16.324993, 17.545832, 5.127833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032068, 17.468550, 5.269869>,  <16.745131, 17.283119, 4.633397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032068, 17.468550, 5.269869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.650932, 17.382849, 5.355840>,  <16.422251, 17.331429, 5.407423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.650932, 17.382849, 5.355840>,  <17.032068, 17.468550, 5.269869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650932, 17.382849, 5.355840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303418, -0.658544, 0.688664,
		-0.006008, 0.721399, 0.692494,
		-0.952839, -0.214253, 0.214929,
		16.365080, 17.318573, 5.420319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044437, 17.605530, 5.965769>,  <17.032068, 17.468550, 5.269869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044437, 17.605530, 5.965769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.772470, 17.338713, 5.843939>,  <16.609289, 17.178623, 5.770841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.772470, 17.338713, 5.843939>,  <17.044437, 17.605530, 5.965769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772470, 17.338713, 5.843939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368270, -0.669794, 0.644789,
		-0.634104, 0.326238, 0.701057,
		-0.679919, -0.667041, -0.304575,
		16.568495, 17.138599, 5.752567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843390, 17.193335, 6.561710>,  <17.044437, 17.605530, 5.965769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843390, 17.193335, 6.561710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.720026, 16.959248, 6.261735>,  <16.646008, 16.818796, 6.081751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.720026, 16.959248, 6.261735>,  <16.843390, 17.193335, 6.561710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.720026, 16.959248, 6.261735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136186, -0.807408, 0.574060,
		-0.941455, 0.074915, 0.328711,
		-0.308410, -0.585218, -0.749936,
		16.627502, 16.783682, 6.036755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401083, 16.711580, 6.932689>,  <16.843390, 17.193335, 6.561710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401083, 16.711580, 6.932689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.529812, 16.542536, 6.593790>,  <16.607050, 16.441109, 6.390450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.529812, 16.542536, 6.593790>,  <16.401083, 16.711580, 6.932689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529812, 16.542536, 6.593790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221428, -0.836443, 0.501331,
		-0.920543, -0.348944, -0.175608,
		0.321823, -0.422613, -0.847248,
		16.626358, 16.415752, 6.339615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162491, 15.959172, 6.861836>,  <16.401083, 16.711580, 6.932689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162491, 15.959172, 6.861836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.514360, 16.070335, 6.707465>,  <16.725483, 16.137033, 6.614843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.514360, 16.070335, 6.707465>,  <16.162491, 15.959172, 6.861836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.514360, 16.070335, 6.707465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470226, -0.629647, 0.618411,
		-0.071135, -0.725473, -0.684565,
		0.879674, 0.277909, -0.385926,
		16.778263, 16.153708, 6.591687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518377, 15.314692, 6.897417>,  <16.162491, 15.959172, 6.861836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.518377, 15.314692, 6.897417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.827909, 15.561990, 6.842342>,  <17.013630, 15.710368, 6.809297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.827909, 15.561990, 6.842342>,  <16.518377, 15.314692, 6.897417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827909, 15.561990, 6.842342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466932, -0.409944, 0.783530,
		0.427969, -0.670612, -0.605906,
		0.773832, 0.618244, -0.137687,
		17.060059, 15.747463, 6.801036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128305, 14.924109, 6.882253>,  <16.518377, 15.314692, 6.897417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128305, 14.924109, 6.882253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.232012, 15.300455, 6.969482>,  <17.294235, 15.526262, 7.021819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.232012, 15.300455, 6.969482>,  <17.128305, 14.924109, 6.882253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232012, 15.300455, 6.969482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352187, -0.302346, 0.885749,
		0.899302, -0.152843, -0.409749,
		0.259266, 0.940864, 0.218071,
		17.309792, 15.582714, 7.034904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813951, 14.788200, 7.252108>,  <17.128305, 14.924109, 6.882253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813951, 14.788200, 7.252108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.618677, 15.125587, 7.341766>,  <17.501513, 15.328018, 7.395561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.618677, 15.125587, 7.341766>,  <17.813951, 14.788200, 7.252108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618677, 15.125587, 7.341766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046228, -0.231477, 0.971741,
		0.871516, 0.484750, 0.074011,
		-0.488184, 0.843466, 0.224145,
		17.472221, 15.378627, 7.409009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143347, 15.037872, 7.774105>,  <17.813951, 14.788200, 7.252108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143347, 15.037872, 7.774105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.792896, 15.225305, 7.819422>,  <17.582626, 15.337765, 7.846611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.792896, 15.225305, 7.819422>,  <18.143347, 15.037872, 7.774105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792896, 15.225305, 7.819422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004495, -0.227053, 0.973872,
		0.482062, 0.853744, 0.196820,
		-0.876126, 0.468582, 0.113291,
		17.530058, 15.365879, 7.853409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.149364, 15.355457, 8.319925>,  <18.143347, 15.037872, 7.774105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.149364, 15.355457, 8.319925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.749599, 15.342703, 8.324915>,  <17.509741, 15.335050, 8.327909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.749599, 15.342703, 8.324915>,  <18.149364, 15.355457, 8.319925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.749599, 15.342703, 8.324915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017321, -0.156583, 0.987513,
		-0.029536, 0.987150, 0.157044,
		-0.999414, -0.031887, 0.012474,
		17.449776, 15.333137, 8.328657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971031, 15.735494, 8.889696>,  <18.149364, 15.355457, 8.319925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.971031, 15.735494, 8.889696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.662550, 15.496437, 8.801997>,  <17.477461, 15.353003, 8.749377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.662550, 15.496437, 8.801997>,  <17.971031, 15.735494, 8.889696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662550, 15.496437, 8.801997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050446, -0.285952, 0.956915,
		-0.634587, 0.749036, 0.190379,
		-0.771203, -0.597642, -0.219248,
		17.431189, 15.317144, 8.736223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499697, 15.785714, 9.379753>,  <17.971031, 15.735494, 8.889696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499697, 15.785714, 9.379753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.437300, 15.424500, 9.219657>,  <17.399862, 15.207770, 9.123599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.437300, 15.424500, 9.219657>,  <17.499697, 15.785714, 9.379753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.437300, 15.424500, 9.219657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035387, -0.410049, 0.911377,
		-0.987124, 0.128005, 0.095921,
		-0.155993, -0.903036, -0.400239,
		17.390501, 15.153588, 9.099586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970837, 15.608500, 9.712820>,  <17.499697, 15.785714, 9.379753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.970837, 15.608500, 9.712820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.132742, 15.260668, 9.599686>,  <17.229885, 15.051969, 9.531805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.132742, 15.260668, 9.599686>,  <16.970837, 15.608500, 9.712820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.132742, 15.260668, 9.599686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010953, -0.313893, 0.949395,
		-0.914357, -0.381181, -0.136576,
		0.404761, -0.869582, -0.282836,
		17.254169, 14.999793, 9.514835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.717041, 15.113528, 10.166248>,  <16.970837, 15.608500, 9.712820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.717041, 15.113528, 10.166248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.980516, 14.894871, 9.959440>,  <17.138601, 14.763676, 9.835356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.980516, 14.894871, 9.959440>,  <16.717041, 15.113528, 10.166248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.980516, 14.894871, 9.959440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094295, -0.621756, 0.777514,
		-0.746486, -0.560891, -0.357996,
		0.658686, -0.546646, -0.517021,
		17.178123, 14.730877, 9.804334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464977, 14.490293, 10.006003>,  <16.717041, 15.113528, 10.166248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464977, 14.490293, 10.006003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.862444, 14.445404, 10.003549>,  <17.100924, 14.418471, 10.002076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.862444, 14.445404, 10.003549>,  <16.464977, 14.490293, 10.006003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.862444, 14.445404, 10.003549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049294, -0.484248, 0.873541,
		-0.101001, -0.867704, -0.486712,
		0.993664, -0.112221, -0.006137,
		17.160543, 14.411737, 10.001707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575241, 13.815326, 10.109678>,  <16.464977, 14.490293, 10.006003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.575241, 13.815326, 10.109678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.913675, 13.996488, 10.222115>,  <17.116735, 14.105185, 10.289577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.913675, 13.996488, 10.222115>,  <16.575241, 13.815326, 10.109678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913675, 13.996488, 10.222115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005725, -0.519581, 0.854402,
		0.533014, -0.724508, -0.437018,
		0.846087, 0.452906, 0.281092,
		17.167501, 14.132360, 10.306442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880947, 13.342818, 10.537480>,  <16.575241, 13.815326, 10.109678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880947, 13.342818, 10.537480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.096230, 13.669202, 10.621904>,  <17.225399, 13.865032, 10.672559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.096230, 13.669202, 10.621904>,  <16.880947, 13.342818, 10.537480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096230, 13.669202, 10.621904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208405, -0.371491, 0.904744,
		0.816641, -0.442952, -0.369989,
		0.538206, 0.815958, 0.211061,
		17.257690, 13.913989, 10.685223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540401, 13.109907, 10.843294>,  <16.880947, 13.342818, 10.537480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540401, 13.109907, 10.843294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.472773, 13.490665, 10.945515>,  <17.432196, 13.719121, 11.006847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.472773, 13.490665, 10.945515>,  <17.540401, 13.109907, 10.843294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.472773, 13.490665, 10.945515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010339, -0.257558, 0.966208,
		0.985549, 0.166002, 0.033704,
		-0.169073, 0.951897, 0.255552,
		17.422050, 13.776235, 11.022181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078808, 13.362226, 11.470919>,  <17.540401, 13.109907, 10.843294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078808, 13.362226, 11.470919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.772377, 13.619023, 11.483398>,  <17.588518, 13.773102, 11.490886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.772377, 13.619023, 11.483398>,  <18.078808, 13.362226, 11.470919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.772377, 13.619023, 11.483398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024779, -0.019005, 0.999512,
		0.642272, 0.766476, -0.001349,
		-0.766076, 0.641992, 0.031199,
		17.542555, 13.811621, 11.492758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260509, 13.732681, 12.052451>,  <18.078808, 13.362226, 11.470919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260509, 13.732681, 12.052451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.874559, 13.816383, 11.988918>,  <17.642990, 13.866605, 11.950798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.874559, 13.816383, 11.988918>,  <18.260509, 13.732681, 12.052451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.874559, 13.816383, 11.988918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180331, -0.087895, 0.979671,
		0.191040, 0.973903, 0.122543,
		-0.964875, 0.209254, -0.158833,
		17.585096, 13.879160, 11.941268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126125, 14.356376, 12.369748>,  <18.260509, 13.732681, 12.052451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126125, 14.356376, 12.369748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.780285, 14.158578, 12.334099>,  <17.572781, 14.039899, 12.312710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.780285, 14.158578, 12.334099>,  <18.126125, 14.356376, 12.369748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780285, 14.158578, 12.334099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176742, 0.133266, 0.975194,
		-0.470351, 0.858904, -0.202619,
		-0.864600, -0.494494, -0.089123,
		17.520905, 14.010230, 12.307362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633556, 14.771159, 12.671937>,  <18.126125, 14.356376, 12.369748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633556, 14.771159, 12.671937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.471569, 14.405975, 12.691957>,  <17.374376, 14.186865, 12.703970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.471569, 14.405975, 12.691957>,  <17.633556, 14.771159, 12.671937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.471569, 14.405975, 12.691957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389468, 0.221767, 0.893943,
		-0.827233, 0.342526, -0.445377,
		-0.404969, -0.912960, 0.050050,
		17.350079, 14.132088, 12.706972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037300, 14.867916, 13.109414>,  <17.633556, 14.771159, 12.671937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037300, 14.867916, 13.109414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.079197, 14.470120, 13.107666>,  <17.104334, 14.231442, 13.106617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.079197, 14.470120, 13.107666>,  <17.037300, 14.867916, 13.109414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079197, 14.470120, 13.107666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267956, -0.032452, 0.962885,
		-0.957721, -0.099682, -0.269878,
		0.104741, -0.994490, -0.004369,
		17.110619, 14.171774, 13.106356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412657, 14.630282, 13.458953>,  <17.037300, 14.867916, 13.109414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.412657, 14.630282, 13.458953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.682863, 14.336127, 13.480425>,  <16.844988, 14.159634, 13.493308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.682863, 14.336127, 13.480425>,  <16.412657, 14.630282, 13.458953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.682863, 14.336127, 13.480425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223587, -0.134920, 0.965301,
		-0.702629, -0.664078, -0.255565,
		0.675516, -0.735389, 0.053681,
		16.885517, 14.115511, 13.496529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.187134, 14.194400, 13.855401>,  <16.412657, 14.630282, 13.458953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.187134, 14.194400, 13.855401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.570398, 14.089682, 13.901686>,  <16.800358, 14.026851, 13.929457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.570398, 14.089682, 13.901686>,  <16.187134, 14.194400, 13.855401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.570398, 14.089682, 13.901686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157423, -0.144366, 0.976922,
		-0.239053, -0.954264, -0.179539,
		0.958160, -0.261800, 0.115712,
		16.857847, 14.011143, 13.936399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206156, 13.556043, 14.278962>,  <16.187134, 14.194400, 13.855401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.206156, 13.556043, 14.278962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.576065, 13.703200, 14.317851>,  <16.798010, 13.791495, 14.341185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.576065, 13.703200, 14.317851>,  <16.206156, 13.556043, 14.278962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.576065, 13.703200, 14.317851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171792, 0.175666, 0.969344,
		0.339539, -0.913123, 0.225653,
		0.924770, 0.367896, 0.097222,
		16.853497, 13.813569, 14.347017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350737, 13.333550, 14.933860>,  <16.206156, 13.556043, 14.278962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350737, 13.333550, 14.933860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.632832, 13.609398, 14.868052>,  <16.802088, 13.774906, 14.828568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.632832, 13.609398, 14.868052>,  <16.350737, 13.333550, 14.933860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.632832, 13.609398, 14.868052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109895, 0.335580, 0.935580,
		0.700403, -0.641725, 0.312449,
		0.705236, 0.689619, -0.164519,
		16.844402, 13.816283, 14.818697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855968, 13.200854, 15.436409>,  <16.350737, 13.333550, 14.933860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855968, 13.200854, 15.436409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.879499, 13.583688, 15.322897>,  <16.893618, 13.813388, 15.254790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.879499, 13.583688, 15.322897>,  <16.855968, 13.200854, 15.436409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.879499, 13.583688, 15.322897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286085, 0.288511, 0.913738,
		0.956397, 0.027432, 0.290780,
		0.058827, 0.957084, -0.283779,
		16.897148, 13.870812, 15.237763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353067, 13.535439, 15.844666>,  <16.855968, 13.200854, 15.436409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353067, 13.535439, 15.844666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.090437, 13.806444, 15.712072>,  <16.932859, 13.969048, 15.632516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.090437, 13.806444, 15.712072>,  <17.353067, 13.535439, 15.844666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090437, 13.806444, 15.712072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193225, 0.273731, 0.942197,
		0.729090, 0.682675, -0.048812,
		-0.656575, 0.677515, -0.331484,
		16.893465, 14.009699, 15.612627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648581, 14.183492, 15.919131>,  <17.353067, 13.535439, 15.844666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648581, 14.183492, 15.919131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.254620, 14.202347, 15.985757>,  <17.018242, 14.213660, 16.025732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.254620, 14.202347, 15.985757>,  <17.648581, 14.183492, 15.919131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254620, 14.202347, 15.985757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172940, 0.310085, 0.934847,
		-0.007583, 0.949540, -0.313555,
		-0.984903, 0.047137, 0.166564,
		16.959148, 14.216488, 16.035727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421436, 14.102699, 16.005674>,  <17.648581, 14.183492, 15.919131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421436, 14.102699, 16.005674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.431335, 14.281502, 15.648000>,  <18.437275, 14.388783, 15.433394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.431335, 14.281502, 15.648000>,  <18.421436, 14.102699, 16.005674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431335, 14.281502, 15.648000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707431, 0.624164, 0.331601,
		0.706348, -0.640783, -0.300780,
		0.024748, 0.447007, -0.894188,
		18.438761, 14.415604, 15.379744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177523, 14.224757, 15.894159>,  <18.421436, 14.102699, 16.005674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.177523, 14.224757, 15.894159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.118067, 13.930718, 15.629573>,  <19.082394, 13.754295, 15.470820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.118067, 13.930718, 15.629573>,  <19.177523, 14.224757, 15.894159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.118067, 13.930718, 15.629573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669157, 0.417732, -0.614597,
		0.728104, -0.533977, 0.429806,
		-0.148637, -0.735098, -0.661467,
		19.073475, 13.710189, 15.431133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815357, 13.902844, 15.636447>,  <19.177523, 14.224757, 15.894159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815357, 13.902844, 15.636447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.546520, 13.874524, 15.341617>,  <19.385218, 13.857533, 15.164719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.546520, 13.874524, 15.341617>,  <19.815357, 13.902844, 15.636447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.546520, 13.874524, 15.341617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544434, 0.627436, -0.556701,
		0.501882, -0.775443, -0.383148,
		-0.672091, -0.070799, -0.737076,
		19.344893, 13.853284, 15.120494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079481, 13.539200, 15.020857>,  <19.815357, 13.902844, 15.636447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079481, 13.539200, 15.020857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.785501, 13.792540, 14.923926>,  <19.609114, 13.944543, 14.865768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.785501, 13.792540, 14.923926>,  <20.079481, 13.539200, 15.020857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785501, 13.792540, 14.923926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559329, 0.364130, -0.744688,
		-0.383409, -0.682847, -0.621867,
		-0.734948, 0.633348, -0.242326,
		19.565018, 13.982544, 14.851229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.912985, 13.336800, 14.342825>,  <20.079481, 13.539200, 15.020857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.912985, 13.336800, 14.342825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.860752, 13.717950, 14.452354>,  <19.829412, 13.946640, 14.518072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.860752, 13.717950, 14.452354>,  <19.912985, 13.336800, 14.342825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860752, 13.717950, 14.452354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459929, 0.302892, -0.834699,
		-0.878302, 0.016944, -0.477806,
		-0.130580, 0.952874, 0.273823,
		19.821577, 14.003812, 14.534501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494469, 13.758951, 13.922813>,  <19.912985, 13.336800, 14.342825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.494469, 13.758951, 13.922813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.739813, 14.017948, 14.103720>,  <19.887018, 14.173347, 14.212263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.739813, 14.017948, 14.103720>,  <19.494469, 13.758951, 13.922813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739813, 14.017948, 14.103720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331879, 0.308325, -0.891511,
		-0.716692, 0.696913, -0.025776,
		0.613359, 0.647494, 0.452265,
		19.923820, 14.212196, 14.239399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344191, 14.586494, 13.718458>,  <19.494469, 13.758951, 13.922813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344191, 14.586494, 13.718458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.716223, 14.512496, 13.845409>,  <19.939442, 14.468097, 13.921580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.716223, 14.512496, 13.845409>,  <19.344191, 14.586494, 13.718458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.716223, 14.512496, 13.845409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327043, 0.023479, -0.944718,
		0.167317, 0.982459, 0.082339,
		0.930080, -0.184996, 0.317377,
		19.995247, 14.456997, 13.940622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872461, 15.188770, 13.614468>,  <19.344191, 14.586494, 13.718458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.872461, 15.188770, 13.614468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.018126, 14.817122, 13.588790>,  <20.105524, 14.594132, 13.573383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.018126, 14.817122, 13.588790>,  <19.872461, 15.188770, 13.614468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.018126, 14.817122, 13.588790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187095, 0.140502, -0.972242,
		0.912350, 0.342041, 0.224999,
		0.364160, -0.929122, -0.064193,
		20.127373, 14.538385, 13.569531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491388, 15.200791, 13.192802>,  <19.872461, 15.188770, 13.614468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491388, 15.200791, 13.192802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.340363, 14.832186, 13.156461>,  <20.249746, 14.611022, 13.134656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.340363, 14.832186, 13.156461>,  <20.491388, 15.200791, 13.192802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340363, 14.832186, 13.156461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133719, 0.042828, -0.990093,
		0.916277, -0.385975, 0.107054,
		-0.377566, -0.921514, -0.090855,
		20.227093, 14.555732, 13.129205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.049465, 14.826260, 12.829329>,  <20.491388, 15.200791, 13.192802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.049465, 14.826260, 12.829329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.699743, 14.635487, 12.793271>,  <20.489910, 14.521023, 12.771636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.699743, 14.635487, 12.793271>,  <21.049465, 14.826260, 12.829329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.699743, 14.635487, 12.793271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258281, -0.299901, -0.918341,
		0.410952, -0.826193, 0.385388,
		-0.874305, -0.476932, -0.090145,
		20.437452, 14.492407, 12.766228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259150, 14.223494, 12.486560>,  <21.049465, 14.826260, 12.829329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259150, 14.223494, 12.486560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.865286, 14.275633, 12.440156>,  <20.628967, 14.306916, 12.412313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.865286, 14.275633, 12.440156>,  <21.259150, 14.223494, 12.486560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865286, 14.275633, 12.440156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094728, -0.159033, -0.982718,
		-0.146527, -0.978633, 0.144248,
		-0.984661, 0.130331, -0.116006,
		20.569889, 14.314737, 12.405354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.994635, 13.603700, 12.042461>,  <21.259150, 14.223494, 12.486560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.994635, 13.603700, 12.042461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.710457, 13.884609, 12.024223>,  <20.539949, 14.053155, 12.013281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.710457, 13.884609, 12.024223>,  <20.994635, 13.603700, 12.042461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.710457, 13.884609, 12.024223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005469, -0.070296, -0.997511,
		-0.703732, -0.708427, 0.053782,
		-0.710444, 0.702275, -0.045595,
		20.497324, 14.095292, 12.010545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.543341, 13.321216, 11.627676>,  <20.994635, 13.603700, 12.042461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.543341, 13.321216, 11.627676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.429495, 13.704588, 11.619653>,  <20.361187, 13.934611, 11.614839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.429495, 13.704588, 11.619653>,  <20.543341, 13.321216, 11.627676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429495, 13.704588, 11.619653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085307, -0.046163, -0.995285,
		-0.954839, -0.281562, 0.094900,
		-0.284615, 0.958432, -0.020059,
		20.344110, 13.992118, 11.613635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.981388, 13.405535, 11.136656>,  <20.543341, 13.321216, 11.627676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.981388, 13.405535, 11.136656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.159143, 13.761413, 11.178533>,  <20.265797, 13.974939, 11.203659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.159143, 13.761413, 11.178533>,  <19.981388, 13.405535, 11.136656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.159143, 13.761413, 11.178533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055962, 0.144208, -0.987964,
		-0.894084, 0.433182, 0.113874,
		0.444389, 0.889695, 0.104692,
		20.292459, 14.028321, 11.209940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665955, 13.704927, 10.563429>,  <19.981388, 13.405535, 11.136656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665955, 13.704927, 10.563429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.964493, 13.946363, 10.675605>,  <20.143616, 14.091225, 10.742910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.964493, 13.946363, 10.675605>,  <19.665955, 13.704927, 10.563429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.964493, 13.946363, 10.675605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029730, 0.390706, -0.920035,
		-0.664893, 0.695003, 0.273658,
		0.746347, 0.603589, 0.280440,
		20.188396, 14.127440, 10.759737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.514580, 14.345025, 10.225624>,  <19.665955, 13.704927, 10.563429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.514580, 14.345025, 10.225624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.902843, 14.345013, 10.321807>,  <20.135801, 14.345005, 10.379517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.902843, 14.345013, 10.321807>,  <19.514580, 14.345025, 10.225624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.902843, 14.345013, 10.321807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237444, 0.157908, -0.958481,
		-0.037940, 0.987454, 0.153283,
		0.970660, -0.000031, 0.240456,
		20.194042, 14.345003, 10.393944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757956, 14.925457, 9.897141>,  <19.514580, 14.345025, 10.225624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757956, 14.925457, 9.897141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.079956, 14.694174, 9.950277>,  <20.273157, 14.555404, 9.982159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.079956, 14.694174, 9.950277>,  <19.757956, 14.925457, 9.897141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079956, 14.694174, 9.950277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223611, 0.088315, -0.970669,
		0.549516, 0.811096, 0.200387,
		0.805003, -0.578207, 0.132839,
		20.321457, 14.520712, 9.990129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409838, 15.230446, 9.508834>,  <19.757956, 14.925457, 9.897141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.409838, 15.230446, 9.508834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.529490, 14.850113, 9.540935>,  <20.601280, 14.621913, 9.560195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.529490, 14.850113, 9.540935>,  <20.409838, 15.230446, 9.508834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.529490, 14.850113, 9.540935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200865, -0.019472, -0.979425,
		0.932831, 0.309097, 0.185164,
		0.299132, -0.950831, 0.080251,
		20.619228, 14.564863, 9.565010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.955971, 15.233452, 9.103080>,  <20.409838, 15.230446, 9.508834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.955971, 15.233452, 9.103080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.830845, 14.853750, 9.116125>,  <20.755770, 14.625929, 9.123952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.830845, 14.853750, 9.116125>,  <20.955971, 15.233452, 9.103080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830845, 14.853750, 9.116125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139571, -0.079903, -0.986983,
		0.939504, -0.304189, 0.157483,
		-0.312813, -0.949255, 0.032613,
		20.737001, 14.568974, 9.125909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.435509, 14.870477, 8.673852>,  <20.955971, 15.233452, 9.103080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.435509, 14.870477, 8.673852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.124039, 14.620031, 8.690094>,  <20.937157, 14.469764, 8.699839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.124039, 14.620031, 8.690094>,  <21.435509, 14.870477, 8.673852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.124039, 14.620031, 8.690094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057491, -0.135643, -0.989088,
		0.624789, -0.767843, 0.141618,
		-0.778674, -0.626113, 0.040604,
		20.890436, 14.432198, 8.702275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<21.956606, 21.328056, 18.981833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.619349, 21.296160, 19.194529>,  <21.416994, 21.277021, 19.322145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.619349, 21.296160, 19.194529>,  <21.956606, 21.328056, 18.981833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.619349, 21.296160, 19.194529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430386, -0.492695, -0.756320,
		0.322296, -0.866541, 0.381094,
		-0.843145, -0.079741, 0.531740,
		21.366405, 21.272238, 19.354050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.732779, 20.714273, 18.903868>,  <21.956606, 21.328056, 18.981833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.732779, 20.714273, 18.903868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396154, 20.905207, 19.005005>,  <21.194180, 21.019766, 19.065687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396154, 20.905207, 19.005005>,  <21.732779, 20.714273, 18.903868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.396154, 20.905207, 19.005005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519632, -0.587583, -0.620265,
		-0.147506, -0.653376, 0.742524,
		-0.841561, 0.477332, 0.252843,
		21.143686, 21.048407, 19.080858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.213505, 20.136564, 18.975693>,  <21.732779, 20.714273, 18.903868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.213505, 20.136564, 18.975693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.997234, 20.468843, 18.922609>,  <20.867472, 20.668211, 18.890759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.997234, 20.468843, 18.922609>,  <21.213505, 20.136564, 18.975693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.997234, 20.468843, 18.922609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568952, -0.477302, -0.669684,
		-0.619646, -0.286577, 0.730693,
		-0.540678, 0.830696, -0.132710,
		20.835032, 20.718052, 18.882797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.552954, 19.889284, 19.112049>,  <21.213505, 20.136564, 18.975693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.552954, 19.889284, 19.112049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530924, 20.227274, 18.899263>,  <20.517706, 20.430067, 18.771591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530924, 20.227274, 18.899263>,  <20.552954, 19.889284, 19.112049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.530924, 20.227274, 18.899263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734651, -0.395106, -0.551525,
		-0.676206, 0.360434, 0.642521,
		-0.055076, 0.844973, -0.531966,
		20.514400, 20.480766, 18.739674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.831057, 19.984007, 19.115534>,  <20.552954, 19.889284, 19.112049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.831057, 19.984007, 19.115534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993290, 20.190691, 18.813934>,  <20.090630, 20.314701, 18.632975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993290, 20.190691, 18.813934>,  <19.831057, 19.984007, 19.115534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.993290, 20.190691, 18.813934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766579, -0.257011, -0.588474,
		-0.497855, 0.816675, 0.291859,
		0.405582, 0.516708, -0.754000,
		20.114964, 20.345703, 18.587734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324211, 20.337763, 18.922361>,  <19.831057, 19.984007, 19.115534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324211, 20.337763, 18.922361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565660, 20.329134, 18.603571>,  <19.710531, 20.323956, 18.412296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565660, 20.329134, 18.603571>,  <19.324211, 20.337763, 18.922361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.565660, 20.329134, 18.603571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772287, -0.264092, -0.577778,
		-0.198010, 0.964256, -0.176074,
		0.603626, -0.021574, -0.796976,
		19.746748, 20.322662, 18.364479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899805, 20.616159, 18.370129>,  <19.324211, 20.337763, 18.922361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899805, 20.616159, 18.370129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.209152, 20.488338, 18.151117>,  <19.394760, 20.411646, 18.019711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.209152, 20.488338, 18.151117>,  <18.899805, 20.616159, 18.370129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.209152, 20.488338, 18.151117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631885, -0.318813, -0.706455,
		0.051192, 0.892325, -0.448482,
		0.773369, -0.319554, -0.547526,
		19.441164, 20.392471, 17.986860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824404, 20.834818, 17.690479>,  <18.899805, 20.616159, 18.370129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824404, 20.834818, 17.690479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091246, 20.553873, 17.591154>,  <19.251350, 20.385307, 17.531559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091246, 20.553873, 17.591154>,  <18.824404, 20.834818, 17.690479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.091246, 20.553873, 17.591154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514862, -0.193785, -0.835083,
		0.538411, 0.684935, -0.490894,
		0.667106, -0.702361, -0.248311,
		19.291378, 20.343164, 17.516661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940445, 20.862101, 16.981730>,  <18.824404, 20.834818, 17.690479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940445, 20.862101, 16.981730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047274, 20.488188, 17.075415>,  <19.111372, 20.263840, 17.131626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047274, 20.488188, 17.075415>,  <18.940445, 20.862101, 16.981730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.047274, 20.488188, 17.075415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362221, -0.322597, -0.874487,
		0.893011, 0.148714, -0.424754,
		0.267073, -0.934781, 0.234215,
		19.127396, 20.207754, 17.145679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258310, 20.634403, 16.465420>,  <18.940445, 20.862101, 16.981730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.258310, 20.634403, 16.465420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122074, 20.307486, 16.651337>,  <19.040333, 20.111336, 16.762886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122074, 20.307486, 16.651337>,  <19.258310, 20.634403, 16.465420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.122074, 20.307486, 16.651337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507447, -0.256375, -0.822660,
		0.791515, -0.516046, -0.327415,
		-0.340589, -0.817294, 0.464791,
		19.019897, 20.062298, 16.790773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469559, 20.037676, 16.040611>,  <19.258310, 20.634403, 16.465420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.469559, 20.037676, 16.040611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.136412, 19.973324, 16.252439>,  <18.936523, 19.934711, 16.379536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.136412, 19.973324, 16.252439>,  <19.469559, 20.037676, 16.040611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.136412, 19.973324, 16.252439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498741, -0.196693, -0.844139,
		0.239970, -0.967176, 0.083581,
		-0.832870, -0.160883, 0.529570,
		18.886551, 19.925058, 16.411310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177397, 19.450071, 15.836929>,  <19.469559, 20.037676, 16.040611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.177397, 19.450071, 15.836929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837923, 19.623014, 15.958785>,  <18.634239, 19.726780, 16.031898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837923, 19.623014, 15.958785>,  <19.177397, 19.450071, 15.836929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837923, 19.623014, 15.958785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451524, -0.292313, -0.843018,
		-0.275437, -0.853005, 0.443302,
		-0.848682, 0.432360, 0.304639,
		18.583319, 19.752722, 16.050177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735653, 18.898193, 15.818777>,  <19.177397, 19.450071, 15.836929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735653, 18.898193, 15.818777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566944, 19.255320, 15.755549>,  <18.465719, 19.469595, 15.717613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566944, 19.255320, 15.755549>,  <18.735653, 18.898193, 15.818777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.566944, 19.255320, 15.755549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571986, -0.397266, -0.717644,
		-0.703520, -0.212270, 0.678234,
		-0.421773, 0.892817, -0.158069,
		18.440413, 19.523165, 15.708129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.066610, 18.796032, 15.471194>,  <18.735653, 18.898193, 15.818777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.066610, 18.796032, 15.471194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122330, 19.185766, 15.400464>,  <18.155762, 19.419607, 15.358026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122330, 19.185766, 15.400464>,  <18.066610, 18.796032, 15.471194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122330, 19.185766, 15.400464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510064, -0.082459, -0.856175,
		-0.848782, 0.209458, 0.485486,
		0.139300, 0.974335, -0.176826,
		18.164120, 19.478067, 15.347416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926441, 18.032898, 15.433359>,  <18.066610, 18.796032, 15.471194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.926441, 18.032898, 15.433359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.301531, 17.900349, 15.391665>,  <18.526585, 17.820820, 15.366649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.301531, 17.900349, 15.391665>,  <17.926441, 18.032898, 15.433359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301531, 17.900349, 15.391665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101436, -0.025782, 0.994508,
		-0.332242, -0.943147, 0.009437,
		0.937724, -0.331374, -0.104235,
		18.582848, 17.800936, 15.360394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082325, 17.458109, 16.003651>,  <17.926441, 18.032898, 15.433359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.082325, 17.458109, 16.003651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447220, 17.578810, 15.892821>,  <18.666157, 17.651230, 15.826324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447220, 17.578810, 15.892821>,  <18.082325, 17.458109, 16.003651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.447220, 17.578810, 15.892821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299357, -0.029311, 0.953691,
		0.279657, -0.952936, -0.117070,
		0.912238, 0.301752, -0.277071,
		18.720892, 17.669334, 15.809700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482153, 16.908783, 16.275038>,  <18.082325, 17.458109, 16.003651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482153, 16.908783, 16.275038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.683825, 17.250740, 16.226107>,  <18.804829, 17.455914, 16.196749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.683825, 17.250740, 16.226107>,  <18.482153, 16.908783, 16.275038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.683825, 17.250740, 16.226107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247421, -0.007282, 0.968881,
		0.827397, -0.518756, -0.215190,
		0.504180, 0.854891, -0.122326,
		18.835079, 17.507208, 16.189409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.048559, 16.706997, 16.685556>,  <18.482153, 16.908783, 16.275038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.048559, 16.706997, 16.685556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.116632, 17.099230, 16.646570>,  <19.157476, 17.334570, 16.623178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.116632, 17.099230, 16.646570>,  <19.048559, 16.706997, 16.685556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.116632, 17.099230, 16.646570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193198, 0.063788, 0.979084,
		0.966288, -0.185455, -0.178591,
		0.170184, 0.980580, -0.097467,
		19.167688, 17.393404, 16.617331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704603, 16.833261, 16.987135>,  <19.048559, 16.706997, 16.685556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704603, 16.833261, 16.987135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.519165, 17.186558, 16.958937>,  <19.407902, 17.398535, 16.942019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.519165, 17.186558, 16.958937>,  <19.704603, 16.833261, 16.987135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.519165, 17.186558, 16.958937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217256, 0.190444, 0.957356,
		0.859000, 0.428508, -0.280177,
		-0.463593, 0.883239, -0.070495,
		19.380087, 17.451530, 16.937788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.203625, 17.292253, 17.269400>,  <19.704603, 16.833261, 16.987135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.203625, 17.292253, 17.269400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.841728, 17.456036, 17.316380>,  <19.624590, 17.554304, 17.344568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.841728, 17.456036, 17.316380>,  <20.203625, 17.292253, 17.269400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.841728, 17.456036, 17.316380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213653, 0.197665, 0.956703,
		0.368510, 0.890660, -0.266316,
		-0.904739, 0.409454, 0.117451,
		19.570307, 17.578873, 17.351614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.311419, 17.698174, 17.819387>,  <20.203625, 17.292253, 17.269400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.311419, 17.698174, 17.819387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.917984, 17.759212, 17.780861>,  <19.681923, 17.795835, 17.757746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.917984, 17.759212, 17.780861>,  <20.311419, 17.698174, 17.819387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.917984, 17.759212, 17.780861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047156, 0.297851, 0.953447,
		0.174179, 0.942337, -0.285766,
		-0.983584, 0.152595, -0.096316,
		19.622910, 17.804991, 17.751966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204090, 18.388102, 18.035421>,  <20.311419, 17.698174, 17.819387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204090, 18.388102, 18.035421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849360, 18.208120, 18.077534>,  <19.636522, 18.100132, 18.102802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849360, 18.208120, 18.077534>,  <20.204090, 18.388102, 18.035421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849360, 18.208120, 18.077534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125644, 0.454032, 0.882082,
		-0.444695, 0.769025, -0.459181,
		-0.886826, -0.449951, 0.105282,
		19.583311, 18.073135, 18.109118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.764517, 18.948107, 18.156645>,  <20.204090, 18.388102, 18.035421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.764517, 18.948107, 18.156645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586069, 18.628710, 18.318331>,  <19.479000, 18.437071, 18.415342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586069, 18.628710, 18.318331>,  <19.764517, 18.948107, 18.156645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.586069, 18.628710, 18.318331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125693, 0.503072, 0.855055,
		-0.886103, 0.330650, -0.324795,
		-0.446119, -0.798492, 0.404213,
		19.452232, 18.389162, 18.439594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.247458, 19.219275, 18.548578>,  <19.764517, 18.948107, 18.156645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.247458, 19.219275, 18.548578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.305307, 18.849180, 18.688877>,  <19.340017, 18.627125, 18.773056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.305307, 18.849180, 18.688877>,  <19.247458, 19.219275, 18.548578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.305307, 18.849180, 18.688877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181694, 0.323615, 0.928580,
		-0.972662, -0.198026, -0.121306,
		0.144627, -0.925235, 0.350748,
		19.348696, 18.571609, 18.794102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608000, 19.103767, 18.807333>,  <19.247458, 19.219275, 18.548578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.608000, 19.103767, 18.807333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882408, 18.864605, 18.973169>,  <19.047052, 18.721107, 19.072670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882408, 18.864605, 18.973169>,  <18.608000, 19.103767, 18.807333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.882408, 18.864605, 18.973169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252249, 0.339027, 0.906329,
		-0.682458, -0.726338, 0.081757,
		0.686019, -0.597908, 0.414589,
		19.088213, 18.685232, 19.097546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229683, 18.894571, 19.356308>,  <18.608000, 19.103767, 18.807333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229683, 18.894571, 19.356308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612968, 18.835638, 19.454388>,  <18.842939, 18.800278, 19.513235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612968, 18.835638, 19.454388>,  <18.229683, 18.894571, 19.356308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.612968, 18.835638, 19.454388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174539, 0.377987, 0.909209,
		-0.226640, -0.914012, 0.336476,
		0.958212, -0.147335, 0.245197,
		18.900433, 18.791437, 19.527946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250151, 18.595982, 20.058998>,  <18.229683, 18.894571, 19.356308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250151, 18.595982, 20.058998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.622616, 18.729187, 19.999613>,  <18.846094, 18.809111, 19.963982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.622616, 18.729187, 19.999613>,  <18.250151, 18.595982, 20.058998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.622616, 18.729187, 19.999613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018228, 0.364154, 0.931161,
		0.364154, -0.869766, 0.333015,
		-0.931161, -0.333015, 0.148462,
		18.901964, 18.829092, 19.955074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.643284, 18.364357, 20.606386>,  <18.250151, 18.595982, 20.058998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.643284, 18.364357, 20.606386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848770, 18.678545, 20.468321>,  <18.972061, 18.867058, 20.385483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848770, 18.678545, 20.468321>,  <18.643284, 18.364357, 20.606386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848770, 18.678545, 20.468321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002478, 0.400944, 0.916099,
		0.857958, -0.471469, 0.204024,
		0.513715, 0.785469, -0.345161,
		19.002884, 18.914185, 20.364773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508162, 17.787069, 21.022755>,  <18.643284, 18.364357, 20.606386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.508162, 17.787069, 21.022755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236162, 17.690851, 21.299807>,  <18.072962, 17.633121, 21.466038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236162, 17.690851, 21.299807>,  <18.508162, 17.787069, 21.022755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.236162, 17.690851, 21.299807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663678, -0.199605, -0.720895,
		0.311659, -0.949893, -0.023912,
		-0.680000, -0.240543, 0.692632,
		18.032162, 17.618689, 21.507597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.304893, 17.120253, 20.719505>,  <18.508162, 17.787069, 21.022755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.304893, 17.120253, 20.719505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016180, 17.226665, 20.975084>,  <17.842951, 17.290514, 21.128431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016180, 17.226665, 20.975084>,  <18.304893, 17.120253, 20.719505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.016180, 17.226665, 20.975084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673378, -0.056557, -0.737132,
		-0.159967, -0.962302, 0.219965,
		-0.721784, 0.266037, 0.638946,
		17.799644, 17.306475, 21.166769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714663, 16.581944, 20.697786>,  <18.304893, 17.120253, 20.719505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.714663, 16.581944, 20.697786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.583103, 16.929388, 20.846024>,  <17.504168, 17.137856, 20.934965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.583103, 16.929388, 20.846024>,  <17.714663, 16.581944, 20.697786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.583103, 16.929388, 20.846024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703738, 0.036251, -0.709534,
		-0.629745, -0.494164, 0.599353,
		-0.328899, 0.868612, 0.370591,
		17.484434, 17.189972, 20.957201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029230, 16.466612, 20.897825>,  <17.714663, 16.581944, 20.697786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029230, 16.466612, 20.897825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059412, 16.863865, 20.862059>,  <17.077520, 17.102217, 20.840599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059412, 16.863865, 20.862059>,  <17.029230, 16.466612, 20.897825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059412, 16.863865, 20.862059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726892, -0.006604, -0.686720,
		-0.682594, 0.116813, 0.721402,
		0.075454, 0.993132, -0.089419,
		17.082048, 17.161804, 20.835234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407019, 16.735867, 21.141880>,  <17.029230, 16.466612, 20.897825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.407019, 16.735867, 21.141880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572601, 16.980280, 20.871984>,  <16.671951, 17.126928, 20.710047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572601, 16.980280, 20.871984>,  <16.407019, 16.735867, 21.141880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572601, 16.980280, 20.871984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735667, -0.211993, -0.643315,
		-0.536128, 0.762690, 0.361762,
		0.413959, 0.611034, -0.674740,
		16.696789, 17.163589, 20.669561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829201, 17.103884, 20.896101>,  <16.407019, 16.735867, 21.141880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.829201, 17.103884, 20.896101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105040, 17.187021, 20.618610>,  <16.270542, 17.236904, 20.452116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105040, 17.187021, 20.618610>,  <15.829201, 17.103884, 20.896101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105040, 17.187021, 20.618610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696508, -0.071988, -0.713929,
		-0.198324, 0.975510, 0.095121,
		0.689597, 0.207842, -0.693728,
		16.311918, 17.249374, 20.410492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.558138, 17.602545, 20.420498>,  <15.829201, 17.103884, 20.896101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.558138, 17.602545, 20.420498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857537, 17.443506, 20.208208>,  <16.037176, 17.348083, 20.080835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857537, 17.443506, 20.208208>,  <15.558138, 17.602545, 20.420498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857537, 17.443506, 20.208208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643558, -0.242490, -0.725969,
		0.159948, 0.884938, -0.437380,
		0.748498, -0.397596, -0.530723,
		16.082087, 17.324228, 20.048990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446396, 17.905987, 19.795414>,  <15.558138, 17.602545, 20.420498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.446396, 17.905987, 19.795414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648664, 17.562540, 19.761763>,  <15.770025, 17.356472, 19.741571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648664, 17.562540, 19.761763>,  <15.446396, 17.905987, 19.795414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648664, 17.562540, 19.761763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567078, -0.257311, -0.782441,
		0.650168, 0.443364, -0.617016,
		0.505671, -0.858615, -0.084127,
		15.800365, 17.304956, 19.736525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748730, 17.860464, 19.151402>,  <15.446396, 17.905987, 19.795414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748730, 17.860464, 19.151402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708325, 17.485056, 19.283447>,  <15.684083, 17.259811, 19.362675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708325, 17.485056, 19.283447>,  <15.748730, 17.860464, 19.151402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.708325, 17.485056, 19.283447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554144, -0.222499, -0.802133,
		0.826269, -0.263954, -0.497602,
		-0.101010, -0.938522, 0.330113,
		15.678022, 17.203499, 19.382481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.808942, 17.373991, 18.588480>,  <15.748730, 17.860464, 19.151402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.808942, 17.373991, 18.588480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.587698, 17.210691, 18.878969>,  <15.454951, 17.112711, 19.053263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.587698, 17.210691, 18.878969>,  <15.808942, 17.373991, 18.588480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587698, 17.210691, 18.878969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670279, -0.299623, -0.678935,
		0.494768, -0.862298, -0.107917,
		-0.553110, -0.408250, 0.726224,
		15.421765, 17.088217, 19.096836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146908, 17.608656, 18.589333>,  <15.808942, 17.373991, 18.588480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146908, 17.608656, 18.589333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103443, 17.461861, 18.958876>,  <15.077364, 17.373783, 19.180601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103443, 17.461861, 18.958876>,  <15.146908, 17.608656, 18.589333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103443, 17.461861, 18.958876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472187, -0.798769, -0.372836,
		0.874775, -0.476747, -0.086491,
		-0.108662, -0.366988, 0.923857,
		15.070845, 17.351765, 19.236032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858025, 18.284008, 18.423376>,  <15.146908, 17.608656, 18.589333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.858025, 18.284008, 18.423376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.583139, 18.475901, 18.641584>,  <14.418208, 18.591036, 18.772511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.583139, 18.475901, 18.641584>,  <14.858025, 18.284008, 18.423376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.583139, 18.475901, 18.641584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575605, -0.098546, 0.811768,
		0.443190, 0.871863, -0.208414,
		-0.687213, 0.479732, 0.545523,
		14.376975, 18.619820, 18.805241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.394453, 19.784773, 26.005043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.705725, 19.537798, 25.959070>,  <20.892487, 19.389612, 25.931486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.705725, 19.537798, 25.959070>,  <20.394453, 19.784773, 26.005043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705725, 19.537798, 25.959070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368601, -0.300837, -0.879562,
		0.508500, 0.726820, -0.461693,
		0.778178, -0.617438, -0.114931,
		20.939178, 19.352566, 25.924591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580187, 19.846815, 25.312698>,  <20.394453, 19.784773, 26.005043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580187, 19.846815, 25.312698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.714136, 19.489391, 25.432308>,  <20.794506, 19.274937, 25.504074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.714136, 19.489391, 25.432308>,  <20.580187, 19.846815, 25.312698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714136, 19.489391, 25.432308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354304, -0.413465, -0.838758,
		0.873115, 0.174930, -0.455049,
		0.334871, -0.893558, 0.299024,
		20.814598, 19.221323, 25.522015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.948181, 19.617430, 24.764240>,  <20.580187, 19.846815, 25.312698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.948181, 19.617430, 24.764240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.856583, 19.299395, 24.988882>,  <20.801624, 19.108574, 25.123667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.856583, 19.299395, 24.988882>,  <20.948181, 19.617430, 24.764240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.856583, 19.299395, 24.988882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332933, -0.478168, -0.812718,
		0.914722, -0.373086, -0.155212,
		-0.228997, -0.795086, 0.561604,
		20.787884, 19.060869, 25.157364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.374916, 19.003197, 24.507479>,  <20.948181, 19.617430, 24.764240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.374916, 19.003197, 24.507479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.031691, 18.894901, 24.682032>,  <20.825756, 18.829924, 24.786762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.031691, 18.894901, 24.682032>,  <21.374916, 19.003197, 24.507479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.031691, 18.894901, 24.682032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230441, -0.556399, -0.798322,
		0.458940, -0.785570, 0.415035,
		-0.858063, -0.270741, 0.436381,
		20.774271, 18.813679, 24.812946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.114655, 18.470028, 24.037117>,  <21.374916, 19.003197, 24.507479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.114655, 18.470028, 24.037117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.807674, 18.517660, 24.289097>,  <20.623486, 18.546240, 24.440285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.807674, 18.517660, 24.289097>,  <21.114655, 18.470028, 24.037117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.807674, 18.517660, 24.289097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565725, -0.588063, -0.578045,
		0.301619, -0.800001, 0.518675,
		-0.767451, 0.119078, 0.629952,
		20.577438, 18.553383, 24.478083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.749004, 17.844036, 23.939354>,  <21.114655, 18.470028, 24.037117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.749004, 17.844036, 23.939354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.492891, 18.110167, 24.092915>,  <20.339224, 18.269844, 24.185051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.492891, 18.110167, 24.092915>,  <20.749004, 17.844036, 23.939354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492891, 18.110167, 24.092915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751784, -0.440180, -0.490982,
		-0.157676, -0.602979, 0.782019,
		-0.640281, 0.665326, 0.383904,
		20.300808, 18.309765, 24.208086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.216177, 17.450888, 24.048443>,  <20.749004, 17.844036, 23.939354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.216177, 17.450888, 24.048443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.063055, 17.819738, 24.070885>,  <19.971182, 18.041048, 24.084351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.063055, 17.819738, 24.070885>,  <20.216177, 17.450888, 24.048443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.063055, 17.819738, 24.070885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852030, -0.328926, -0.407249,
		-0.357081, -0.203696, 0.911592,
		-0.382802, 0.922126, 0.056102,
		19.948214, 18.096376, 24.087715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.532761, 17.323885, 24.049982>,  <20.216177, 17.450888, 24.048443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.532761, 17.323885, 24.049982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.530909, 17.711489, 23.951191>,  <19.529797, 17.944052, 23.891916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.530909, 17.711489, 23.951191>,  <19.532761, 17.323885, 24.049982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.530909, 17.711489, 23.951191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859480, -0.130101, -0.494335,
		-0.511148, 0.209982, 0.833448,
		-0.004631, 0.969010, -0.246976,
		19.529520, 18.002192, 23.877098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817762, 17.526110, 24.109245>,  <19.532761, 17.323885, 24.049982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817762, 17.526110, 24.109245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.995417, 17.796988, 23.874588>,  <19.102009, 17.959515, 23.733793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.995417, 17.796988, 23.874588>,  <18.817762, 17.526110, 24.109245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.995417, 17.796988, 23.874588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733019, -0.101864, -0.672537,
		-0.515197, 0.728718, 0.451156,
		0.444134, 0.677196, -0.586645,
		19.128656, 18.000147, 23.698595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233515, 17.941910, 23.877224>,  <18.817762, 17.526110, 24.109245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233515, 17.941910, 23.877224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.538656, 18.009537, 23.627592>,  <18.721741, 18.050114, 23.477814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.538656, 18.009537, 23.627592>,  <18.233515, 17.941910, 23.877224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538656, 18.009537, 23.627592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582477, -0.239291, -0.776827,
		-0.280674, 0.956115, -0.084064,
		0.762852, 0.169069, -0.624078,
		18.767511, 18.060257, 23.440369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040257, 18.418598, 23.349562>,  <18.233515, 17.941910, 23.877224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040257, 18.418598, 23.349562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.344616, 18.212296, 23.192068>,  <18.527231, 18.088514, 23.097572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.344616, 18.212296, 23.192068>,  <18.040257, 18.418598, 23.349562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.344616, 18.212296, 23.192068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559999, -0.215447, -0.799989,
		0.327771, 0.829203, -0.452757,
		0.760899, -0.515757, -0.393736,
		18.572886, 18.057568, 23.073948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450718, 18.643461, 22.800283>,  <18.040257, 18.418598, 23.349562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.450718, 18.643461, 22.800283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.502745, 18.250122, 22.749521>,  <18.533960, 18.014118, 22.719065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.502745, 18.250122, 22.749521>,  <18.450718, 18.643461, 22.800283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502745, 18.250122, 22.749521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464975, 0.052551, -0.883762,
		0.875717, 0.173957, -0.450398,
		0.130068, -0.983350, -0.126906,
		18.541765, 17.955116, 22.711449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.376356, 18.610395, 22.194149>,  <18.450718, 18.643461, 22.800283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.376356, 18.610395, 22.194149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.371212, 18.213682, 22.245064>,  <18.368126, 17.975655, 22.275614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.371212, 18.213682, 22.245064>,  <18.376356, 18.610395, 22.194149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.371212, 18.213682, 22.245064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402454, -0.111400, -0.908637,
		0.915350, -0.062911, -0.397715,
		-0.012858, -0.991782, 0.127289,
		18.367355, 17.916147, 22.283251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548145, 18.322905, 21.519909>,  <18.376356, 18.610395, 22.194149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548145, 18.322905, 21.519909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.351744, 18.046974, 21.732721>,  <18.233902, 17.881416, 21.860409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.351744, 18.046974, 21.732721>,  <18.548145, 18.322905, 21.519909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.351744, 18.046974, 21.732721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650766, -0.115570, -0.750431,
		0.579154, -0.714691, -0.392171,
		-0.491003, -0.689826, 0.532029,
		18.204443, 17.840027, 21.892330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.202991, 18.283346, 21.039852>,  <18.548145, 18.322905, 21.519909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.202991, 18.283346, 21.039852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.200228, 18.650215, 20.880482>,  <19.198570, 18.870337, 20.784859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.200228, 18.650215, 20.880482>,  <19.202991, 18.283346, 21.039852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200228, 18.650215, 20.880482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287542, 0.383431, 0.877667,
		0.957743, -0.108500, -0.266376,
		-0.006910, 0.917174, -0.398427,
		19.198154, 18.925367, 20.760954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788942, 18.557766, 21.340944>,  <19.202991, 18.283346, 21.039852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788942, 18.557766, 21.340944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.569159, 18.869923, 21.221560>,  <19.437288, 19.057217, 21.149929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.569159, 18.869923, 21.221560>,  <19.788942, 18.557766, 21.340944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.569159, 18.869923, 21.221560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150227, 0.443671, 0.883509,
		0.821904, 0.440614, -0.361016,
		-0.549459, 0.780394, -0.298463,
		19.404322, 19.104040, 21.132021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.240005, 19.102900, 21.115179>,  <19.788942, 18.557766, 21.340944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.240005, 19.102900, 21.115179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.924711, 19.339956, 21.181469>,  <19.735535, 19.482189, 21.221243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.924711, 19.339956, 21.181469>,  <20.240005, 19.102900, 21.115179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.924711, 19.339956, 21.181469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581424, 0.629012, 0.516033,
		0.201579, 0.503111, -0.840384,
		-0.788233, 0.592641, 0.165725,
		19.688242, 19.517748, 21.231186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.522423, 19.800346, 20.993864>,  <20.240005, 19.102900, 21.115179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.522423, 19.800346, 20.993864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.215553, 19.792883, 21.250330>,  <20.031431, 19.788404, 21.404209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.215553, 19.792883, 21.250330>,  <20.522423, 19.800346, 20.993864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215553, 19.792883, 21.250330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552386, 0.488890, 0.675172,
		-0.326058, 0.872146, -0.364757,
		-0.767174, -0.018658, 0.641167,
		19.985401, 19.787285, 21.442680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.390331, 20.453419, 21.046593>,  <20.522423, 19.800346, 20.993864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.390331, 20.453419, 21.046593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.236874, 20.271502, 21.368084>,  <20.144800, 20.162352, 21.560980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.236874, 20.271502, 21.368084>,  <20.390331, 20.453419, 21.046593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.236874, 20.271502, 21.368084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544633, 0.591428, 0.594632,
		-0.745783, 0.665864, 0.020798,
		-0.383643, -0.454794, 0.803729,
		20.121780, 20.135063, 21.609203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.145182, 21.010466, 21.498470>,  <20.390331, 20.453419, 21.046593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.145182, 21.010466, 21.498470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.136211, 20.709631, 21.761944>,  <20.130829, 20.529131, 21.920029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.136211, 20.709631, 21.761944>,  <20.145182, 21.010466, 21.498470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.136211, 20.709631, 21.761944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321177, 0.618506, 0.717144,
		-0.946754, 0.227636, 0.227683,
		-0.022424, -0.752085, 0.658684,
		20.129484, 20.484005, 21.959549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.755928, 21.275982, 22.017012>,  <20.145182, 21.010466, 21.498470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.755928, 21.275982, 22.017012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.966093, 20.968042, 22.161940>,  <20.092192, 20.783279, 22.248898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.966093, 20.968042, 22.161940>,  <19.755928, 21.275982, 22.017012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.966093, 20.968042, 22.161940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132242, 0.494548, 0.859031,
		-0.840509, -0.403430, 0.361647,
		0.525411, -0.769848, 0.362322,
		20.123716, 20.737087, 22.270636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.600422, 21.224733, 22.718121>,  <19.755928, 21.275982, 22.017012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.600422, 21.224733, 22.718121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.958061, 21.047924, 22.689253>,  <20.172644, 20.941839, 22.671932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.958061, 21.047924, 22.689253>,  <19.600422, 21.224733, 22.718121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958061, 21.047924, 22.689253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278913, 0.423446, 0.861917,
		-0.350427, -0.790766, 0.501887,
		0.894097, -0.442022, -0.072168,
		20.226290, 20.915318, 22.667603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703094, 21.012030, 23.415422>,  <19.600422, 21.224733, 22.718121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.703094, 21.012030, 23.415422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.067732, 21.039751, 23.253340>,  <20.286514, 21.056383, 23.156090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.067732, 21.039751, 23.253340>,  <19.703094, 21.012030, 23.415422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067732, 21.039751, 23.253340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333295, 0.452399, 0.827194,
		0.240641, -0.889118, 0.389307,
		0.911596, 0.069303, -0.405204,
		20.341211, 21.060541, 23.131779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078049, 20.735844, 23.922752>,  <19.703094, 21.012030, 23.415422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.078049, 20.735844, 23.922752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.343506, 20.946787, 23.710537>,  <20.502781, 21.073353, 23.583208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.343506, 20.946787, 23.710537>,  <20.078049, 20.735844, 23.922752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.343506, 20.946787, 23.710537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446545, 0.289718, 0.846558,
		0.600145, -0.798723, -0.043219,
		0.663644, 0.527357, -0.530539,
		20.542599, 21.104994, 23.551374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.861368, 20.572496, 24.100845>,  <20.078049, 20.735844, 23.922752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.861368, 20.572496, 24.100845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.890215, 20.902990, 23.877369>,  <20.907522, 21.101286, 23.743282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.890215, 20.902990, 23.877369>,  <20.861368, 20.572496, 24.100845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.890215, 20.902990, 23.877369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484792, 0.460493, 0.743588,
		0.871651, -0.324474, -0.367343,
		0.072116, 0.826234, -0.558691,
		20.911850, 21.150860, 23.709761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.405638, 20.896584, 24.387293>,  <20.861368, 20.572496, 24.100845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.405638, 20.896584, 24.387293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.240318, 21.192812, 24.175354>,  <21.141127, 21.370550, 24.048191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.240318, 21.192812, 24.175354>,  <21.405638, 20.896584, 24.387293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.240318, 21.192812, 24.175354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469619, 0.671867, 0.572759,
		0.780155, -0.012105, -0.625469,
		-0.413298, 0.740573, -0.529846,
		21.116329, 21.414984, 24.016399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978418, 21.349485, 24.164728>,  <21.405638, 20.896584, 24.387293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978418, 21.349485, 24.164728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.640415, 21.561760, 24.191044>,  <21.437613, 21.689125, 24.206833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.640415, 21.561760, 24.191044>,  <21.978418, 21.349485, 24.164728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640415, 21.561760, 24.191044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425887, 0.593471, 0.682944,
		0.323387, 0.605113, -0.727502,
		-0.845010, 0.530689, 0.065789,
		21.386911, 21.720966, 24.210781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.232021, 21.964266, 24.294252>,  <21.978418, 21.349485, 24.164728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.232021, 21.964266, 24.294252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.858057, 22.048653, 24.408398>,  <21.633678, 22.099285, 24.476885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.858057, 22.048653, 24.408398>,  <22.232021, 21.964266, 24.294252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.858057, 22.048653, 24.408398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354557, 0.520894, 0.776504,
		0.015173, 0.827141, -0.561790,
		-0.934911, 0.210969, 0.285365,
		21.577583, 22.111942, 24.494007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.284544, 24.238379, 24.985798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.606380, 24.000996, 24.994192>,  <16.799482, 23.858566, 24.999229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.606380, 24.000996, 24.994192>,  <16.284544, 24.238379, 24.985798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606380, 24.000996, 24.994192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286463, -0.418851, -0.861686,
		0.520162, 0.687295, -0.507008,
		0.804593, -0.593455, 0.020986,
		16.847759, 23.822960, 25.000488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.582172, 24.397955, 24.386562>,  <16.284544, 24.238379, 24.985798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.582172, 24.397955, 24.386562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.744318, 24.044464, 24.480118>,  <16.841606, 23.832369, 24.536251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.744318, 24.044464, 24.480118>,  <16.582172, 24.397955, 24.386562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.744318, 24.044464, 24.480118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118508, -0.304494, -0.945113,
		0.906440, 0.355399, -0.228161,
		0.405366, -0.883728, 0.233888,
		16.865929, 23.779346, 24.550283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942116, 24.230522, 23.777575>,  <16.582172, 24.397955, 24.386562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942116, 24.230522, 23.777575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.904434, 23.890352, 23.984613>,  <16.881824, 23.686251, 24.108837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.904434, 23.890352, 23.984613>,  <16.942116, 24.230522, 23.777575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.904434, 23.890352, 23.984613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293427, -0.473096, -0.830711,
		0.951328, -0.230135, -0.204969,
		-0.094206, -0.850423, 0.517597,
		16.876173, 23.635225, 24.139893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279224, 23.757814, 23.388176>,  <16.942116, 24.230522, 23.777575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279224, 23.757814, 23.388176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.043224, 23.541409, 23.627909>,  <16.901625, 23.411564, 23.771748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.043224, 23.541409, 23.627909>,  <17.279224, 23.757814, 23.388176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043224, 23.541409, 23.627909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442989, -0.403685, -0.800499,
		0.675025, -0.737793, -0.001490,
		-0.590002, -0.541017, 0.599331,
		16.866224, 23.379103, 23.807709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293270, 23.071278, 23.076666>,  <17.279224, 23.757814, 23.388176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293270, 23.071278, 23.076666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.972002, 23.074854, 23.314938>,  <16.779242, 23.077000, 23.457901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.972002, 23.074854, 23.314938>,  <17.293270, 23.071278, 23.076666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.972002, 23.074854, 23.314938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533361, -0.456245, -0.712297,
		0.265407, -0.889809, 0.371212,
		-0.803172, 0.008942, 0.595680,
		16.731050, 23.077536, 23.493641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034613, 22.320883, 23.130362>,  <17.293270, 23.071278, 23.076666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.034613, 22.320883, 23.130362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.747471, 22.588673, 23.206768>,  <16.575186, 22.749348, 23.252611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.747471, 22.588673, 23.206768>,  <17.034613, 22.320883, 23.130362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.747471, 22.588673, 23.206768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533214, -0.352295, -0.769137,
		-0.447626, -0.653979, 0.609871,
		-0.717854, 0.669477, 0.191014,
		16.532114, 22.789516, 23.264072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.361412, 22.022264, 23.026636>,  <17.034613, 22.320883, 23.130362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.361412, 22.022264, 23.026636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.253153, 22.407322, 23.023281>,  <16.188196, 22.638355, 23.021267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.253153, 22.407322, 23.023281>,  <16.361412, 22.022264, 23.026636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253153, 22.407322, 23.023281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632563, -0.184402, -0.752237,
		-0.725681, -0.198285, 0.658840,
		-0.270649, 0.962641, -0.008389,
		16.171959, 22.696114, 23.020763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.683192, 21.968626, 22.961758>,  <16.361412, 22.022264, 23.026636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.683192, 21.968626, 22.961758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.721671, 22.355619, 22.868189>,  <15.744759, 22.587816, 22.812048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.721671, 22.355619, 22.868189>,  <15.683192, 21.968626, 22.961758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721671, 22.355619, 22.868189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561991, -0.141178, -0.815006,
		-0.821530, 0.209865, 0.530136,
		0.096198, 0.967484, -0.233924,
		15.750530, 22.645864, 22.798012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011307, 22.242105, 22.796774>,  <15.683192, 21.968626, 22.961758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.011307, 22.242105, 22.796774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.270505, 22.492346, 22.623005>,  <15.426024, 22.642490, 22.518744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.270505, 22.492346, 22.623005>,  <15.011307, 22.242105, 22.796774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.270505, 22.492346, 22.623005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525900, -0.045068, -0.849351,
		-0.550935, 0.778839, 0.299801,
		0.647997, 0.625602, -0.434422,
		15.464904, 22.680027, 22.492678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.681829, 22.911573, 22.517233>,  <15.011307, 22.242105, 22.796774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.681829, 22.911573, 22.517233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.017859, 22.859400, 22.306608>,  <15.219476, 22.828096, 22.180233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.017859, 22.859400, 22.306608>,  <14.681829, 22.911573, 22.517233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.017859, 22.859400, 22.306608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537966, -0.075428, -0.839585,
		0.069791, 0.988584, -0.133533,
		0.840072, -0.130432, -0.526561,
		15.269880, 22.820271, 22.148640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609498, 23.340414, 21.942400>,  <14.681829, 22.911573, 22.517233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609498, 23.340414, 21.942400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.901175, 23.077936, 21.864748>,  <15.076182, 22.920450, 21.818157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.901175, 23.077936, 21.864748>,  <14.609498, 23.340414, 21.942400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.901175, 23.077936, 21.864748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342249, -0.104059, -0.933829,
		0.592571, 0.747383, -0.300461,
		0.729194, -0.656193, -0.194129,
		15.119934, 22.881079, 21.806509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937366, 23.668978, 21.461060>,  <14.609498, 23.340414, 21.942400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937366, 23.668978, 21.461060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.001122, 23.274982, 21.434536>,  <15.039374, 23.038586, 21.418621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.001122, 23.274982, 21.434536>,  <14.937366, 23.668978, 21.461060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001122, 23.274982, 21.434536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477155, -0.018061, -0.878633,
		0.864245, 0.171683, -0.472870,
		0.159387, -0.984987, -0.066310,
		15.048938, 22.979486, 21.414642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.920975, 23.597395, 20.829178>,  <14.937366, 23.668978, 21.461060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.920975, 23.597395, 20.829178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.911687, 23.199644, 20.870510>,  <14.906114, 22.960995, 20.895309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.911687, 23.199644, 20.870510>,  <14.920975, 23.597395, 20.829178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911687, 23.199644, 20.870510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482630, -0.079365, -0.872221,
		0.875517, -0.070123, -0.478072,
		-0.023221, -0.994376, 0.103329,
		14.904720, 22.901331, 20.901508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241490, 23.211279, 20.141090>,  <14.920975, 23.597395, 20.829178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241490, 23.211279, 20.141090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.010572, 22.957008, 20.346085>,  <14.872022, 22.804445, 20.469082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.010572, 22.957008, 20.346085>,  <15.241490, 23.211279, 20.141090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.010572, 22.957008, 20.346085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392570, -0.334264, -0.856829,
		0.715974, -0.695830, -0.056580,
		-0.577295, -0.635679, 0.512487,
		14.837384, 22.766304, 20.499830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934571, 23.091095, 19.988005>,  <15.241490, 23.211279, 20.141090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934571, 23.091095, 19.988005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.181604, 23.289650, 19.743975>,  <16.329824, 23.408783, 19.597557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.181604, 23.289650, 19.743975>,  <15.934571, 23.091095, 19.988005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181604, 23.289650, 19.743975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517753, 0.327315, 0.790441,
		0.592052, -0.804030, -0.054862,
		0.617582, 0.496387, -0.610076,
		16.366879, 23.438566, 19.560951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.607801, 22.971670, 20.170347>,  <15.934571, 23.091095, 19.988005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.607801, 22.971670, 20.170347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.637648, 23.308226, 19.956245>,  <16.655556, 23.510159, 19.827784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.637648, 23.308226, 19.956245>,  <16.607801, 22.971670, 20.170347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637648, 23.308226, 19.956245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521748, 0.424483, 0.739996,
		0.849830, -0.334485, -0.407320,
		0.074617, 0.841389, -0.535255,
		16.660032, 23.560642, 19.795670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.264341, 23.257774, 20.231354>,  <16.607801, 22.971670, 20.170347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.264341, 23.257774, 20.231354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.083570, 23.591928, 20.106205>,  <16.975107, 23.792421, 20.031115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.083570, 23.591928, 20.106205>,  <17.264341, 23.257774, 20.231354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083570, 23.591928, 20.106205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380937, 0.497875, 0.779107,
		0.806628, 0.232915, -0.543234,
		-0.451928, 0.835387, -0.312874,
		16.947992, 23.842545, 20.012342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714767, 23.800055, 20.066151>,  <17.264341, 23.257774, 20.231354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.714767, 23.800055, 20.066151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.376598, 23.976805, 20.186152>,  <17.173697, 24.082855, 20.258152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.376598, 23.976805, 20.186152>,  <17.714767, 23.800055, 20.066151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.376598, 23.976805, 20.186152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511052, 0.506065, 0.694784,
		0.155186, 0.740705, -0.653661,
		-0.845425, 0.441876, 0.300004,
		17.122971, 24.109367, 20.276154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.955851, 24.437857, 20.237391>,  <17.714767, 23.800055, 20.066151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.955851, 24.437857, 20.237391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.599052, 24.462982, 20.416454>,  <17.384974, 24.478058, 20.523893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.599052, 24.462982, 20.416454>,  <17.955851, 24.437857, 20.237391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.599052, 24.462982, 20.416454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392776, 0.597908, 0.698737,
		-0.223769, 0.799100, -0.558003,
		-0.891995, 0.062814, 0.447661,
		17.331453, 24.481827, 20.550753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039040, 25.051231, 20.545933>,  <17.955851, 24.437857, 20.237391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039040, 25.051231, 20.545933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.741348, 24.867989, 20.740362>,  <17.562735, 24.758043, 20.857019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.741348, 24.867989, 20.740362>,  <18.039040, 25.051231, 20.545933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.741348, 24.867989, 20.740362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340056, 0.366481, 0.866056,
		-0.574882, 0.809834, -0.116963,
		-0.744226, -0.458106, 0.486072,
		17.518080, 24.730556, 20.886185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817404, 25.541811, 20.948341>,  <18.039040, 25.051231, 20.545933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817404, 25.541811, 20.948341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.666189, 25.226727, 21.142908>,  <17.575460, 25.037676, 21.259647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.666189, 25.226727, 21.142908>,  <17.817404, 25.541811, 20.948341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666189, 25.226727, 21.142908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208792, 0.439327, 0.873726,
		-0.901938, 0.431862, -0.001615,
		-0.378038, -0.787710, 0.486415,
		17.552778, 24.990414, 21.288834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.464575, 25.781380, 21.553547>,  <17.817404, 25.541811, 20.948341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.464575, 25.781380, 21.553547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.574493, 25.408693, 21.648537>,  <17.640446, 25.185081, 21.705530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.574493, 25.408693, 21.648537>,  <17.464575, 25.781380, 21.553547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.574493, 25.408693, 21.648537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097879, 0.272809, 0.957076,
		-0.956507, -0.239758, 0.166162,
		0.274797, -0.931714, 0.237476,
		17.656933, 25.129179, 21.719780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043930, 25.710030, 22.153399>,  <17.464575, 25.781380, 21.553547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043930, 25.710030, 22.153399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.355228, 25.459633, 22.133541>,  <17.542007, 25.309395, 22.121628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.355228, 25.459633, 22.133541>,  <17.043930, 25.710030, 22.153399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355228, 25.459633, 22.133541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184701, 0.152634, 0.970870,
		-0.600179, -0.764747, 0.234408,
		0.778248, -0.625992, -0.049642,
		17.588703, 25.271835, 22.118649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055534, 25.333933, 22.778200>,  <17.043930, 25.710030, 22.153399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055534, 25.333933, 22.778200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.430342, 25.231184, 22.683535>,  <17.655226, 25.169535, 22.626736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.430342, 25.231184, 22.683535>,  <17.055534, 25.333933, 22.778200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430342, 25.231184, 22.683535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298218, 0.235652, 0.924951,
		-0.181822, -0.937276, 0.297414,
		0.937020, -0.256870, -0.236666,
		17.711449, 25.154123, 22.612535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414064, 24.931404, 23.283175>,  <17.055534, 25.333933, 22.778200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414064, 24.931404, 23.283175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.739418, 25.028692, 23.071800>,  <17.934631, 25.087065, 22.944975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.739418, 25.028692, 23.071800>,  <17.414064, 24.931404, 23.283175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.739418, 25.028692, 23.071800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507591, 0.147011, 0.848963,
		0.284173, -0.958765, -0.003881,
		0.813386, 0.243222, -0.528438,
		17.983435, 25.101658, 22.913269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968670, 24.501225, 23.491367>,  <17.414064, 24.931404, 23.283175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968670, 24.501225, 23.491367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.179253, 24.794573, 23.319319>,  <18.305603, 24.970583, 23.216089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.179253, 24.794573, 23.319319>,  <17.968670, 24.501225, 23.491367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.179253, 24.794573, 23.319319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635923, -0.003877, 0.771743,
		0.564308, -0.679815, -0.468410,
		0.526458, 0.733373, -0.430122,
		18.337191, 25.014585, 23.190283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.811718, 24.382780, 23.516848>,  <17.968670, 24.501225, 23.491367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.811718, 24.382780, 23.516848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.732325, 24.774332, 23.497238>,  <18.684689, 25.009262, 23.485472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.732325, 24.774332, 23.497238>,  <18.811718, 24.382780, 23.516848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732325, 24.774332, 23.497238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434726, 0.132755, 0.890724,
		0.878418, 0.155481, -0.451893,
		-0.198482, 0.978878, -0.049023,
		18.672781, 25.067995, 23.482531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.454718, 24.720505, 23.721569>,  <18.811718, 24.382780, 23.516848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.454718, 24.720505, 23.721569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.174557, 25.003101, 23.762167>,  <19.006460, 25.172659, 23.786526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.174557, 25.003101, 23.762167>,  <19.454718, 24.720505, 23.721569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174557, 25.003101, 23.762167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491279, 0.374042, 0.786598,
		0.517763, 0.600799, -0.609066,
		-0.700404, 0.706493, 0.101495,
		18.964436, 25.215050, 23.792616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084459, 25.308496, 23.667278>,  <19.454718, 24.720505, 23.721569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084459, 25.308496, 23.667278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.466381, 25.205442, 23.726566>,  <20.695534, 25.143610, 23.762140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.466381, 25.205442, 23.726566>,  <20.084459, 25.308496, 23.667278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.466381, 25.205442, 23.726566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076945, -0.267431, -0.960500,
		0.287097, 0.928496, -0.235521,
		0.954806, -0.257634, 0.148222,
		20.752823, 25.128153, 23.771032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546606, 25.639507, 23.196512>,  <20.084459, 25.308496, 23.667278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546606, 25.639507, 23.196512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.744846, 25.308559, 23.302223>,  <20.863791, 25.109991, 23.365650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.744846, 25.308559, 23.302223>,  <20.546606, 25.639507, 23.196512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744846, 25.308559, 23.302223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044287, -0.327948, -0.943657,
		0.867422, 0.455972, -0.199173,
		0.495599, -0.827369, 0.264276,
		20.893526, 25.060349, 23.381506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.940802, 25.501087, 22.593639>,  <20.546606, 25.639507, 23.196512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.940802, 25.501087, 22.593639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.951645, 25.153137, 22.790649>,  <20.958151, 24.944366, 22.908855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.951645, 25.153137, 22.790649>,  <20.940802, 25.501087, 22.593639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.951645, 25.153137, 22.790649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179985, -0.488902, -0.853569,
		0.983296, -0.065508, -0.169818,
		0.027109, -0.869875, 0.492526,
		20.959778, 24.892174, 22.938408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.419230, 25.128294, 22.298307>,  <20.940802, 25.501087, 22.593639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.419230, 25.128294, 22.298307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.223227, 24.840437, 22.495083>,  <21.105625, 24.667723, 22.613148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.223227, 24.840437, 22.495083>,  <21.419230, 25.128294, 22.298307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.223227, 24.840437, 22.495083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094300, -0.517259, -0.850618,
		0.866601, -0.463201, 0.185600,
		-0.490010, -0.719645, 0.491937,
		21.076223, 24.624544, 22.642664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840347, 24.513826, 22.100080>,  <21.419230, 25.128294, 22.298307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.840347, 24.513826, 22.100080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.487190, 24.396423, 22.246698>,  <21.275295, 24.325981, 22.334669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.487190, 24.396423, 22.246698>,  <21.840347, 24.513826, 22.100080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.487190, 24.396423, 22.246698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033180, -0.817628, -0.574790,
		0.468400, -0.495317, 0.731616,
		-0.882893, -0.293507, 0.366542,
		21.222322, 24.308371, 22.356661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.831675, 23.827978, 22.010378>,  <21.840347, 24.513826, 22.100080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.831675, 23.827978, 22.010378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.444326, 23.866535, 22.102434>,  <21.211918, 23.889669, 22.157667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.444326, 23.866535, 22.102434>,  <21.831675, 23.827978, 22.010378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.444326, 23.866535, 22.102434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183485, -0.900154, -0.395040,
		0.169084, -0.424773, 0.889370,
		-0.968372, 0.096391, 0.230141,
		21.153814, 23.895452, 22.171476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.623859, 23.336826, 22.445276>,  <21.831675, 23.827978, 22.010378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.623859, 23.336826, 22.445276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.318352, 23.459448, 22.218056>,  <21.135048, 23.533020, 22.081724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.318352, 23.459448, 22.218056>,  <21.623859, 23.336826, 22.445276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.318352, 23.459448, 22.218056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033459, -0.860045, -0.509119,
		-0.644622, -0.407856, 0.646619,
		-0.763769, 0.306554, -0.568051,
		21.089222, 23.551414, 22.047640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191366, 22.798834, 22.376957>,  <21.623859, 23.336826, 22.445276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191366, 22.798834, 22.376957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.105061, 23.019855, 22.054932>,  <21.053278, 23.152468, 21.861715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.105061, 23.019855, 22.054932>,  <21.191366, 22.798834, 22.376957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105061, 23.019855, 22.054932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057177, -0.815921, -0.575328,
		-0.974770, -0.170166, 0.144452,
		-0.215763, 0.552554, -0.805065,
		21.040331, 23.185621, 21.813412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712898, 22.367887, 21.949673>,  <21.191366, 22.798834, 22.376957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712898, 22.367887, 21.949673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.887621, 22.625153, 21.698103>,  <20.992455, 22.779510, 21.547161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.887621, 22.625153, 21.698103>,  <20.712898, 22.367887, 21.949673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887621, 22.625153, 21.698103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071225, -0.672227, -0.736911,
		-0.896732, 0.366681, -0.247822,
		0.436804, 0.643161, -0.628924,
		21.018661, 22.818100, 21.509426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334473, 22.313065, 21.313599>,  <20.712898, 22.367887, 21.949673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334473, 22.313065, 21.313599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.665401, 22.507206, 21.200481>,  <20.863958, 22.623690, 21.132610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.665401, 22.507206, 21.200481>,  <20.334473, 22.313065, 21.313599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665401, 22.507206, 21.200481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011807, -0.518348, -0.855088,
		-0.561603, 0.704094, -0.434572,
		0.827322, 0.485351, -0.282793,
		20.913599, 22.652811, 21.115643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193090, 22.648758, 20.569420>,  <20.334473, 22.313065, 21.313599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193090, 22.648758, 20.569420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.582184, 22.570921, 20.619894>,  <20.815639, 22.524220, 20.650179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.582184, 22.570921, 20.619894>,  <20.193090, 22.648758, 20.569420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.582184, 22.570921, 20.619894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014548, -0.491814, -0.870579,
		0.231467, 0.848678, -0.475573,
		0.972734, -0.194591, 0.126185,
		20.874004, 22.512543, 20.657749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477308, 22.841621, 19.881508>,  <20.193090, 22.648758, 20.569420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477308, 22.841621, 19.881508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.724585, 22.592026, 20.072704>,  <20.872950, 22.442268, 20.187422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.724585, 22.592026, 20.072704>,  <20.477308, 22.841621, 19.881508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.724585, 22.592026, 20.072704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070069, -0.561940, -0.824205,
		0.782898, 0.543009, -0.303664,
		0.618192, -0.623991, 0.477990,
		20.910042, 22.404829, 20.216101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933001, 22.756826, 19.483774>,  <20.477308, 22.841621, 19.881508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933001, 22.756826, 19.483774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.027042, 22.433479, 19.699652>,  <21.083467, 22.239471, 19.829178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.027042, 22.433479, 19.699652>,  <20.933001, 22.756826, 19.483774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.027042, 22.433479, 19.699652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199617, -0.503266, -0.840759,
		0.951252, 0.305397, 0.043044,
		0.235103, -0.808366, 0.539695,
		21.097572, 22.190969, 19.861561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.543480, 22.439524, 19.068684>,  <20.933001, 22.756826, 19.483774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.543480, 22.439524, 19.068684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.353025, 22.185745, 19.312246>,  <21.238752, 22.033478, 19.458384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.353025, 22.185745, 19.312246>,  <21.543480, 22.439524, 19.068684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.353025, 22.185745, 19.312246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136059, -0.737249, -0.661780,
		0.868781, -0.232251, 0.437354,
		-0.476138, -0.634448, 0.608908,
		21.210184, 21.995411, 19.494919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.186126, 9.060596, 14.227345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.088231, 8.941794, 13.858152>,  <14.029494, 8.870514, 13.636637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.088231, 8.941794, 13.858152>,  <14.186126, 9.060596, 14.227345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.088231, 8.941794, 13.858152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906176, -0.408671, -0.108775,
		-0.344889, -0.863004, 0.369154,
		-0.244736, -0.297004, -0.922980,
		14.014811, 8.852694, 13.581258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036554, 8.932341, 14.167371>,  <14.186126, 9.060596, 14.227345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036554, 8.932341, 14.167371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.935710, 9.154880, 13.850658>,  <14.875203, 9.288403, 13.660631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.935710, 9.154880, 13.850658>,  <15.036554, 8.932341, 14.167371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.935710, 9.154880, 13.850658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169323, -0.780227, -0.602143,
		-0.952770, -0.285873, 0.102501,
		-0.252110, 0.556348, -0.791781,
		14.860077, 9.321784, 13.613124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423021, 8.249770, 14.129757>,  <15.036554, 8.932341, 14.167371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423021, 8.249770, 14.129757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.171080, 8.347473, 13.834834>,  <15.019915, 8.406095, 13.657880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.171080, 8.347473, 13.834834>,  <15.423021, 8.249770, 14.129757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.171080, 8.347473, 13.834834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676755, -0.293263, -0.675277,
		-0.381167, -0.924303, 0.019410,
		-0.629853, 0.244258, -0.737308,
		14.982123, 8.420751, 13.613642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.768274, 8.463238, 14.719595>,  <15.423021, 8.249770, 14.129757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.768274, 8.463238, 14.719595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.558064, 8.132922, 14.801470>,  <14.431939, 7.934733, 14.850595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.558064, 8.132922, 14.801470>,  <14.768274, 8.463238, 14.719595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.558064, 8.132922, 14.801470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827274, 0.439834, -0.349519,
		0.198600, -0.353014, -0.914297,
		-0.525524, -0.825789, 0.204688,
		14.400408, 7.885185, 14.862876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254927, 8.248145, 14.146972>,  <14.768274, 8.463238, 14.719595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254927, 8.248145, 14.146972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.140694, 8.120335, 14.508379>,  <14.072154, 8.043649, 14.725224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.140694, 8.120335, 14.508379>,  <14.254927, 8.248145, 14.146972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140694, 8.120335, 14.508379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940753, 0.273325, -0.200691,
		-0.182828, -0.907302, -0.378651,
		-0.285582, -0.319525, 0.903519,
		14.055019, 8.024477, 14.779434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793846, 7.618680, 14.155569>,  <14.254927, 8.248145, 14.146972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793846, 7.618680, 14.155569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.714775, 7.830172, 14.485749>,  <13.667333, 7.957067, 14.683857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.714775, 7.830172, 14.485749>,  <13.793846, 7.618680, 14.155569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714775, 7.830172, 14.485749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922205, 0.185194, -0.339472,
		-0.332357, -0.828341, 0.450988,
		-0.197678, 0.528729, 0.825450,
		13.655472, 7.988791, 14.733384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.141150, 7.614187, 14.204541>,  <13.793846, 7.618680, 14.155569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.141150, 7.614187, 14.204541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.183571, 7.880656, 14.499829>,  <13.209023, 8.040537, 14.677002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.183571, 7.880656, 14.499829>,  <13.141150, 7.614187, 14.204541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.183571, 7.880656, 14.499829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974921, 0.215741, -0.054631,
		-0.195658, -0.713913, 0.672344,
		0.106050, 0.666171, 0.738220,
		13.215386, 8.080507, 14.721295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.603300, 7.486935, 14.738737>,  <13.141150, 7.614187, 14.204541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.603300, 7.486935, 14.738737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.712687, 7.871189, 14.719157>,  <12.778318, 8.101742, 14.707410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.712687, 7.871189, 14.719157>,  <12.603300, 7.486935, 14.738737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.712687, 7.871189, 14.719157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939510, 0.277671, 0.200547,
		0.206244, -0.008856, 0.978460,
		0.273466, 0.960635, -0.048948,
		12.794726, 8.159380, 14.704473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.437101, 7.719301, 15.427949>,  <12.603300, 7.486935, 14.738737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.437101, 7.719301, 15.427949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.423553, 7.997624, 15.140978>,  <12.415423, 8.164618, 14.968795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.423553, 7.997624, 15.140978>,  <12.437101, 7.719301, 15.427949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.423553, 7.997624, 15.140978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817935, 0.393202, 0.419970,
		0.574313, 0.601035, 0.555807,
		-0.033873, 0.695808, -0.717429,
		12.413391, 8.206367, 14.925750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.148051, 8.257668, 15.685802>,  <12.437101, 7.719301, 15.427949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.148051, 8.257668, 15.685802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.166479, 8.422590, 15.321850>,  <12.177536, 8.521544, 15.103478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.166479, 8.422590, 15.321850>,  <12.148051, 8.257668, 15.685802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.166479, 8.422590, 15.321850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667552, 0.690311, 0.279008,
		0.743137, 0.594539, 0.307037,
		0.046070, 0.412304, -0.909881,
		12.180300, 8.546282, 15.048885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089703, 9.062571, 15.540177>,  <12.148051, 8.257668, 15.685802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089703, 9.062571, 15.540177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.931068, 8.847293, 15.242703>,  <11.835888, 8.718126, 15.064219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.931068, 8.847293, 15.242703>,  <12.089703, 9.062571, 15.540177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.931068, 8.847293, 15.242703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874504, 0.467895, 0.127738,
		0.279218, 0.701014, -0.656214,
		-0.396585, -0.538195, -0.743684,
		11.812093, 8.685834, 15.019598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.694140, 9.517083, 15.113269>,  <12.089703, 9.062571, 15.540177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.694140, 9.517083, 15.113269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.556161, 9.146398, 15.053655>,  <11.473373, 8.923986, 15.017886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.556161, 9.146398, 15.053655>,  <11.694140, 9.517083, 15.113269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.556161, 9.146398, 15.053655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917661, 0.299601, 0.261032,
		-0.197251, 0.226807, -0.953756,
		-0.344950, -0.926714, -0.149035,
		11.452676, 8.868383, 15.008945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.301497, 9.480532, 14.467834>,  <11.694140, 9.517083, 15.113269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.301497, 9.480532, 14.467834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.151402, 9.230409, 14.741530>,  <11.061345, 9.080335, 14.905748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.151402, 9.230409, 14.741530>,  <11.301497, 9.480532, 14.467834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.151402, 9.230409, 14.741530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892230, 0.443742, -0.083775,
		-0.251242, -0.641937, -0.724427,
		-0.375236, -0.625308, 0.684242,
		11.038831, 9.042816, 14.946803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.567122, 9.505274, 14.328554>,  <11.301497, 9.480532, 14.467834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.567122, 9.505274, 14.328554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.586840, 9.327988, 14.686578>,  <10.598670, 9.221616, 14.901392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.586840, 9.327988, 14.686578>,  <10.567122, 9.505274, 14.328554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.586840, 9.327988, 14.686578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887385, 0.391847, 0.242906,
		-0.458386, -0.806236, -0.373987,
		0.049294, -0.443215, 0.895059,
		10.601628, 9.195023, 14.955095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.878552, 9.279536, 14.473575>,  <10.567122, 9.505274, 14.328554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.878552, 9.279536, 14.473575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.066202, 9.263003, 14.826441>,  <10.178792, 9.253084, 15.038160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.066202, 9.263003, 14.826441>,  <9.878552, 9.279536, 14.473575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.066202, 9.263003, 14.826441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774265, 0.461215, 0.433353,
		-0.424779, -0.886325, 0.184365,
		0.469123, -0.041332, 0.882165,
		10.206940, 9.250604, 15.091090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.314667, 9.094378, 14.887778>,  <9.878552, 9.279536, 14.473575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.314667, 9.094378, 14.887778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.604261, 9.212445, 15.137168>,  <9.778018, 9.283285, 15.286801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.604261, 9.212445, 15.137168>,  <9.314667, 9.094378, 14.887778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.604261, 9.212445, 15.137168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663741, 0.544224, 0.513097,
		-0.187861, -0.785301, 0.589924,
		0.723987, 0.295166, 0.623475,
		9.821458, 9.300995, 15.324210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.065541, 8.946980, 15.626380>,  <9.314667, 9.094378, 14.887778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.065541, 8.946980, 15.626380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.355013, 9.223035, 15.626800>,  <9.528696, 9.388667, 15.627051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.355013, 9.223035, 15.626800>,  <9.065541, 8.946980, 15.626380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.355013, 9.223035, 15.626800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545529, 0.571111, 0.613376,
		0.422712, -0.444461, 0.789791,
		0.723680, 0.690135, 0.001050,
		9.572117, 9.430076, 15.627114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.145878, 9.156248, 16.347818>,  <9.065541, 8.946980, 15.626380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.145878, 9.156248, 16.347818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.307175, 9.450250, 16.129766>,  <9.403953, 9.626651, 15.998936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.307175, 9.450250, 16.129766>,  <9.145878, 9.156248, 16.347818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.307175, 9.450250, 16.129766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485615, 0.676785, 0.553300,
		0.775613, 0.041610, 0.629836,
		0.403241, 0.735004, -0.545130,
		9.428147, 9.670751, 15.966228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.224717, 9.660951, 16.911673>,  <9.145878, 9.156248, 16.347818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.224717, 9.660951, 16.911673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.223171, 9.839714, 16.553844>,  <9.222243, 9.946972, 16.339148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.223171, 9.839714, 16.553844>,  <9.224717, 9.660951, 16.911673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.223171, 9.839714, 16.553844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600606, 0.714215, 0.359401,
		0.799536, 0.538674, 0.265655,
		-0.003865, 0.446908, -0.894572,
		9.222012, 9.973786, 16.285473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.302195, 10.342341, 17.055290>,  <9.224717, 9.660951, 16.911673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.302195, 10.342341, 17.055290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.141722, 10.318053, 16.689697>,  <9.045438, 10.303480, 16.470341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.141722, 10.318053, 16.689697>,  <9.302195, 10.342341, 17.055290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.141722, 10.318053, 16.689697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682502, 0.685311, 0.254047,
		0.610937, 0.725715, -0.316376,
		-0.401182, -0.060720, -0.913984,
		9.021367, 10.299837, 16.415503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.212236, 11.073015, 16.807528>,  <9.302195, 10.342341, 17.055290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.212236, 11.073015, 16.807528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.944508, 10.851420, 16.609493>,  <8.783871, 10.718464, 16.490673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.944508, 10.851420, 16.609493>,  <9.212236, 11.073015, 16.807528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.944508, 10.851420, 16.609493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684686, 0.718637, 0.121514,
		0.288468, 0.420309, -0.860306,
		-0.669321, -0.553987, -0.495083,
		8.743711, 10.685225, 16.460968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.193569, 11.465822, 16.169594>,  <9.212236, 11.073015, 16.807528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.193569, 11.465822, 16.169594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.850282, 11.260519, 16.167620>,  <8.644309, 11.137337, 16.166435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.850282, 11.260519, 16.167620>,  <9.193569, 11.465822, 16.169594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.850282, 11.260519, 16.167620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511193, 0.853821, 0.098342,
		-0.046261, 0.086922, -0.995140,
		-0.858220, -0.513259, -0.004935,
		8.592815, 11.106542, 16.166140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.845248, 11.822244, 15.608082>,  <9.193569, 11.465822, 16.169594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.845248, 11.822244, 15.608082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.579144, 11.627606, 15.834587>,  <8.419481, 11.510824, 15.970490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.579144, 11.627606, 15.834587>,  <8.845248, 11.822244, 15.608082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.579144, 11.627606, 15.834587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553737, 0.830309, 0.062946,
		-0.500803, -0.271686, -0.821817,
		-0.665261, -0.486594, 0.566264,
		8.379565, 11.481628, 16.004467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.206940, 12.039131, 15.336586>,  <8.845248, 11.822244, 15.608082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.206940, 12.039131, 15.336586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.084194, 11.877324, 15.681190>,  <8.010547, 11.780240, 15.887953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.084194, 11.877324, 15.681190>,  <8.206940, 12.039131, 15.336586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.084194, 11.877324, 15.681190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677686, 0.728431, 0.100644,
		-0.668263, -0.552950, -0.497665,
		-0.306864, -0.404517, 0.861510,
		7.992135, 11.755969, 15.939644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.542559, 11.925304, 15.253562>,  <8.206940, 12.039131, 15.336586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.542559, 11.925304, 15.253562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.607891, 11.978090, 15.644645>,  <7.647089, 12.009762, 15.879294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.607891, 11.978090, 15.644645>,  <7.542559, 11.925304, 15.253562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.607891, 11.978090, 15.644645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570825, 0.820927, -0.015446,
		-0.804663, -0.555576, 0.209409,
		0.163328, 0.131965, 0.977706,
		7.656889, 12.017680, 15.937957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.910800, 12.121152, 15.558065>,  <7.542559, 11.925304, 15.253562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.910800, 12.121152, 15.558065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.173687, 12.216087, 15.844209>,  <7.331418, 12.273048, 16.015896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.173687, 12.216087, 15.844209>,  <6.910800, 12.121152, 15.558065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.173687, 12.216087, 15.844209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585868, 0.757972, 0.286772,
		-0.474160, -0.607577, 0.637199,
		0.657215, 0.237339, 0.715359,
		7.370851, 12.287289, 16.058817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.383224, 12.297979, 16.122599>,  <6.910800, 12.121152, 15.558065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.383224, 12.297979, 16.122599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.751643, 12.433135, 16.200062>,  <6.972694, 12.514229, 16.246540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.751643, 12.433135, 16.200062>,  <6.383224, 12.297979, 16.122599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.751643, 12.433135, 16.200062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359334, 0.929048, 0.088029,
		-0.150172, -0.150666, 0.977112,
		0.921047, 0.337890, 0.193657,
		7.027957, 12.534502, 16.258160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.271727, 12.729978, 16.700981>,  <6.383224, 12.297979, 16.122599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.271727, 12.729978, 16.700981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.633465, 12.853959, 16.583618>,  <6.850508, 12.928348, 16.513201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.633465, 12.853959, 16.583618>,  <6.271727, 12.729978, 16.700981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.633465, 12.853959, 16.583618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292575, 0.950727, 0.102562,
		0.310738, -0.006908, 0.950470,
		0.904346, 0.309953, -0.293406,
		6.904768, 12.946945, 16.495596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.622453, 13.187068, 17.206026>,  <6.271727, 12.729978, 16.700981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.622453, 13.187068, 17.206026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.744914, 13.279200, 16.836546>,  <6.818390, 13.334478, 16.614859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.744914, 13.279200, 16.836546>,  <6.622453, 13.187068, 17.206026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.744914, 13.279200, 16.836546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298517, 0.944579, 0.136596,
		0.903969, 0.233921, 0.357942,
		0.306151, 0.230330, -0.923699,
		6.836759, 13.348299, 16.559437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.845879, 13.808608, 17.292686>,  <6.622453, 13.187068, 17.206026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.845879, 13.808608, 17.292686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.840592, 13.821443, 16.892927>,  <6.837420, 13.829144, 16.653072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.840592, 13.821443, 16.892927>,  <6.845879, 13.808608, 17.292686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.840592, 13.821443, 16.892927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287579, 0.957134, 0.034533,
		0.957666, 0.287863, -0.003423,
		-0.013217, 0.032086, -0.999398,
		6.836627, 13.831069, 16.593107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.281495, 14.367498, 17.091913>,  <6.845879, 13.808608, 17.292686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.281495, 14.367498, 17.091913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.021053, 14.288381, 16.798809>,  <6.864788, 14.240910, 16.622946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.021053, 14.288381, 16.798809>,  <7.281495, 14.367498, 17.091913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.021053, 14.288381, 16.798809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215385, 0.973908, -0.071504,
		0.727786, 0.111269, -0.676718,
		-0.651105, -0.197795, -0.732762,
		6.825721, 14.229042, 16.578981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.837179, 14.777272, 16.653576>,  <7.281495, 14.367498, 17.091913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.837179, 14.777272, 16.653576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.178139, 14.984266, 16.623585>,  <8.382715, 15.108463, 16.605591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.178139, 14.984266, 16.623585>,  <7.837179, 14.777272, 16.653576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.178139, 14.984266, 16.623585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425600, -0.769935, -0.475463,
		-0.303773, 0.373375, -0.876535,
		0.852401, 0.517486, -0.074977,
		8.433859, 15.139512, 16.601091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.061067, 14.872283, 15.957235>,  <7.837179, 14.777272, 16.653576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.061067, 14.872283, 15.957235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.407756, 14.916066, 16.151888>,  <8.615769, 14.942336, 16.268679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.407756, 14.916066, 16.151888>,  <8.061067, 14.872283, 15.957235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.407756, 14.916066, 16.151888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418593, -0.690159, -0.590306,
		0.271239, 0.715332, -0.643995,
		0.866723, 0.109458, 0.486631,
		8.667773, 14.948903, 16.297876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.570743, 14.840324, 15.417794>,  <8.061067, 14.872283, 15.957235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.570743, 14.840324, 15.417794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.781083, 14.782498, 15.753075>,  <8.907288, 14.747803, 15.954243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.781083, 14.782498, 15.753075>,  <8.570743, 14.840324, 15.417794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.781083, 14.782498, 15.753075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489768, -0.754229, -0.437341,
		0.695419, 0.640500, -0.325810,
		0.525852, -0.144564, 0.838201,
		8.938839, 14.739129, 16.004536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.224052, 14.845342, 15.240094>,  <8.570743, 14.840324, 15.417794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.224052, 14.845342, 15.240094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.236525, 14.638400, 15.582175>,  <9.244008, 14.514235, 15.787424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.236525, 14.638400, 15.582175>,  <9.224052, 14.845342, 15.240094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.236525, 14.638400, 15.582175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491296, -0.737190, -0.463874,
		0.870434, 0.434622, 0.231188,
		0.031181, -0.517354, 0.855203,
		9.245879, 14.483194, 15.838737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.909985, 14.547102, 15.259345>,  <9.224052, 14.845342, 15.240094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.909985, 14.547102, 15.259345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.730317, 14.318424, 15.533983>,  <9.622517, 14.181217, 15.698767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.730317, 14.318424, 15.533983>,  <9.909985, 14.547102, 15.259345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.730317, 14.318424, 15.533983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557506, -0.779855, -0.284628,
		0.698166, 0.254936, 0.669008,
		-0.449167, -0.571694, 0.686596,
		9.595567, 14.146916, 15.739962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.461968, 14.210076, 15.626680>,  <9.909985, 14.547102, 15.259345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.461968, 14.210076, 15.626680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.131371, 13.989854, 15.673662>,  <9.933012, 13.857720, 15.701851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.131371, 13.989854, 15.673662>,  <10.461968, 14.210076, 15.626680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.131371, 13.989854, 15.673662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503324, -0.816146, -0.283850,
		0.252135, -0.175483, 0.951648,
		-0.826494, -0.550556, 0.117454,
		9.883422, 13.824687, 15.708899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.620451, 13.600589, 16.096973>,  <10.461968, 14.210076, 15.626680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.620451, 13.600589, 16.096973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.291079, 13.499638, 15.893695>,  <10.093455, 13.439067, 15.771728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.291079, 13.499638, 15.893695>,  <10.620451, 13.600589, 16.096973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.291079, 13.499638, 15.893695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473976, -0.798320, -0.371527,
		-0.311939, -0.546801, 0.776983,
		-0.823432, -0.252378, -0.508198,
		10.044049, 13.423924, 15.741236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.541164, 12.880063, 16.223543>,  <10.620451, 13.600589, 16.096973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.541164, 12.880063, 16.223543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.305026, 12.964253, 15.911853>,  <10.163343, 13.014768, 15.724839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.305026, 12.964253, 15.911853>,  <10.541164, 12.880063, 16.223543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.305026, 12.964253, 15.911853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291668, -0.844541, -0.449088,
		-0.752609, -0.492392, 0.437183,
		-0.590347, 0.210475, -0.779225,
		10.127922, 13.027396, 15.678085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.148609, 12.249798, 16.140841>,  <10.541164, 12.880063, 16.223543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.148609, 12.249798, 16.140841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.189836, 12.450295, 15.797182>,  <10.214571, 12.570594, 15.590987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.189836, 12.450295, 15.797182>,  <10.148609, 12.249798, 16.140841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.189836, 12.450295, 15.797182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309693, -0.836984, -0.451162,
		-0.945234, -0.219572, -0.241496,
		0.103066, 0.501244, -0.859146,
		10.220756, 12.600669, 15.539438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.826069, 11.895475, 15.672222>,  <10.148609, 12.249798, 16.140841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.826069, 11.895475, 15.672222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.046142, 12.121576, 15.426364>,  <10.178185, 12.257236, 15.278849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.046142, 12.121576, 15.426364>,  <9.826069, 11.895475, 15.672222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.046142, 12.121576, 15.426364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005236, -0.738385, -0.674359,
		-0.835028, 0.367803, -0.409206,
		0.550183, 0.565251, -0.614646,
		10.211197, 12.291152, 15.241970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.479527, 11.812084, 15.042831>,  <9.826069, 11.895475, 15.672222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.479527, 11.812084, 15.042831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.858688, 11.927235, 14.988269>,  <10.086185, 11.996325, 14.955531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.858688, 11.927235, 14.988269>,  <9.479527, 11.812084, 15.042831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.858688, 11.927235, 14.988269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162411, -0.805095, -0.570477,
		-0.274047, 0.518603, -0.809906,
		0.947903, 0.287876, -0.136407,
		10.143060, 12.013597, 14.947347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.590390, 11.774589, 14.378387>,  <9.479527, 11.812084, 15.042831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.590390, 11.774589, 14.378387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.975622, 11.781518, 14.485851>,  <10.206761, 11.785676, 14.550329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.975622, 11.781518, 14.485851>,  <9.590390, 11.774589, 14.378387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.975622, 11.781518, 14.485851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220007, -0.625789, -0.748321,
		0.155160, 0.779800, -0.606496,
		0.963080, 0.017324, 0.268659,
		10.264546, 11.786716, 14.566449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.944015, 11.860252, 13.677290>,  <9.590390, 11.774589, 14.378387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.944015, 11.860252, 13.677290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.192202, 11.719438, 13.957601>,  <10.341114, 11.634949, 14.125787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.192202, 11.719438, 13.957601>,  <9.944015, 11.860252, 13.677290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192202, 11.719438, 13.957601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358185, -0.667724, -0.652570,
		0.697655, 0.655907, -0.288208,
		0.620469, -0.352037, 0.700777,
		10.378343, 11.613827, 14.167833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.546652, 11.586549, 13.248226>,  <9.944015, 11.860252, 13.677290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.546652, 11.586549, 13.248226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.631703, 11.444355, 13.612296>,  <10.682734, 11.359039, 13.830738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.631703, 11.444355, 13.612296>,  <10.546652, 11.586549, 13.248226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.631703, 11.444355, 13.612296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453264, -0.789314, -0.414168,
		0.865645, 0.500614, -0.006704,
		0.212629, -0.355484, 0.910176,
		10.695492, 11.337710, 13.885349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.301689, 11.557397, 13.251342>,  <10.546652, 11.586549, 13.248226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.301689, 11.557397, 13.251342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.134281, 11.294516, 13.502076>,  <11.033836, 11.136786, 13.652517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.134281, 11.294516, 13.502076>,  <11.301689, 11.557397, 13.251342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.134281, 11.294516, 13.502076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483104, -0.745542, -0.459105,
		0.769059, 0.110682, 0.629522,
		-0.418521, -0.657203, 0.626837,
		11.008725, 11.097355, 13.690127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.852569, 11.220717, 13.357410>,  <11.301689, 11.557397, 13.251342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.852569, 11.220717, 13.357410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.526403, 11.011221, 13.456038>,  <11.330705, 10.885523, 13.515214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.526403, 11.011221, 13.456038>,  <11.852569, 11.220717, 13.357410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.526403, 11.011221, 13.456038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275929, -0.726092, -0.629804,
		0.508886, -0.445516, 0.736580,
		-0.815413, -0.523742, 0.246568,
		11.281779, 10.854098, 13.530007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.092222, 10.539366, 13.257455>,  <11.852569, 11.220717, 13.357410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.092222, 10.539366, 13.257455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.693278, 10.511060, 13.263996>,  <11.453912, 10.494076, 13.267920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.693278, 10.511060, 13.263996>,  <12.092222, 10.539366, 13.257455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.693278, 10.511060, 13.263996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047942, -0.810577, -0.583666,
		0.054559, -0.581341, 0.811829,
		-0.997359, -0.070765, 0.016353,
		11.394071, 10.489830, 13.268902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.803148, 9.824112, 13.511921>,  <12.092222, 10.539366, 13.257455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.803148, 9.824112, 13.511921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.555479, 9.998005, 13.250346>,  <11.406878, 10.102341, 13.093401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.555479, 9.998005, 13.250346>,  <11.803148, 9.824112, 13.511921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.555479, 9.998005, 13.250346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028894, -0.819594, -0.572216,
		-0.784721, -0.373197, 0.494911,
		-0.619175, 0.434730, -0.653935,
		11.369727, 10.128425, 13.054165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.237000, 9.320473, 13.375422>,  <11.803148, 9.824112, 13.511921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.237000, 9.320473, 13.375422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.195489, 9.580853, 13.074624>,  <11.170583, 9.737081, 12.894146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.195489, 9.580853, 13.074624>,  <11.237000, 9.320473, 13.375422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.195489, 9.580853, 13.074624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073369, -0.759027, -0.646913,
		-0.991891, -0.011962, 0.126529,
		-0.103777, 0.650950, -0.751994,
		11.164355, 9.776137, 12.849026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.783303, 8.968507, 12.925908>,  <11.237000, 9.320473, 13.375422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.783303, 8.968507, 12.925908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.967232, 9.240300, 12.697219>,  <11.077589, 9.403376, 12.560005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.967232, 9.240300, 12.697219>,  <10.783303, 8.968507, 12.925908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.967232, 9.240300, 12.697219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127775, -0.687751, -0.714613,
		-0.878770, 0.255543, -0.403064,
		0.459822, 0.679483, -0.571723,
		11.105178, 9.444145, 12.525702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.407263, 8.918204, 12.314443>,  <10.783303, 8.968507, 12.925908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.407263, 8.918204, 12.314443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.756194, 9.089832, 12.220685>,  <10.965553, 9.192809, 12.164431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.756194, 9.089832, 12.220685>,  <10.407263, 8.918204, 12.314443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.756194, 9.089832, 12.220685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163279, -0.707550, -0.687541,
		-0.460849, 0.561490, -0.687275,
		0.872329, 0.429070, -0.234395,
		11.017893, 9.218554, 12.150367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.252916, 22.703117, 24.506836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.913651, 22.562675, 24.665501>,  <21.710091, 22.478411, 24.760698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.913651, 22.562675, 24.665501>,  <22.252916, 22.703117, 24.506836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.913651, 22.562675, 24.665501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215553, 0.455253, 0.863876,
		-0.483891, 0.818212, -0.310449,
		-0.848167, -0.351103, 0.396661,
		21.659201, 22.457344, 24.784498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816004, 23.223572, 24.796806>,  <22.252916, 22.703117, 24.506836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816004, 23.223572, 24.796806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.718895, 22.892082, 24.998510>,  <21.660629, 22.693190, 25.119534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.718895, 22.892082, 24.998510>,  <21.816004, 23.223572, 24.796806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.718895, 22.892082, 24.998510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354487, 0.408078, 0.841315,
		-0.902995, 0.383003, 0.194700,
		-0.242774, -0.828722, 0.504262,
		21.646063, 22.643465, 25.149790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537981, 23.507996, 25.375223>,  <21.816004, 23.223572, 24.796806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537981, 23.507996, 25.375223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.623896, 23.128609, 25.468416>,  <21.675444, 22.900976, 25.524332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.623896, 23.128609, 25.468416>,  <21.537981, 23.507996, 25.375223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.623896, 23.128609, 25.468416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544368, 0.314319, 0.777732,
		-0.810883, -0.040219, 0.583825,
		0.214787, -0.948465, 0.232982,
		21.688332, 22.844069, 25.538311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434431, 23.630650, 25.996634>,  <21.537981, 23.507996, 25.375223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434431, 23.630650, 25.996634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.612894, 23.272696, 25.992231>,  <21.719973, 23.057922, 25.989590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.612894, 23.272696, 25.992231>,  <21.434431, 23.630650, 25.996634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.612894, 23.272696, 25.992231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370501, 0.173497, 0.912485,
		-0.814661, -0.411189, 0.408963,
		0.446157, -0.894887, -0.011005,
		21.746740, 23.004229, 25.988930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.174784, 23.205212, 26.540352>,  <21.434431, 23.630650, 25.996634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.174784, 23.205212, 26.540352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.534286, 23.051735, 26.455481>,  <21.749989, 22.959650, 26.404558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.534286, 23.051735, 26.455481>,  <21.174784, 23.205212, 26.540352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.534286, 23.051735, 26.455481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320048, 0.243346, 0.915616,
		-0.299680, -0.890823, 0.341507,
		0.898755, -0.383690, -0.212180,
		21.803913, 22.936628, 26.391827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.424463, 22.761881, 27.181196>,  <21.174784, 23.205212, 26.540352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.424463, 22.761881, 27.181196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.765675, 22.832796, 26.984867>,  <21.970402, 22.875345, 26.867069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.765675, 22.832796, 26.984867>,  <21.424463, 22.761881, 27.181196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765675, 22.832796, 26.984867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469666, 0.149188, 0.870147,
		0.227494, -0.972785, 0.043994,
		0.853030, 0.177291, -0.490824,
		22.021584, 22.885983, 26.837620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.903992, 22.218920, 27.402184>,  <21.424463, 22.761881, 27.181196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.903992, 22.218920, 27.402184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.118364, 22.516386, 27.242315>,  <22.246988, 22.694866, 27.146395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.118364, 22.516386, 27.242315>,  <21.903992, 22.218920, 27.402184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.118364, 22.516386, 27.242315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524542, 0.077640, 0.847837,
		0.661539, -0.664026, -0.348476,
		0.535930, 0.743668, -0.399672,
		22.279142, 22.739487, 27.122414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.680695, 21.996849, 27.406139>,  <21.903992, 22.218920, 27.402184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.680695, 21.996849, 27.406139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.638432, 22.394409, 27.393515>,  <22.613073, 22.632946, 27.385939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.638432, 22.394409, 27.393515>,  <22.680695, 21.996849, 27.406139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.638432, 22.394409, 27.393515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592227, 0.088393, 0.800908,
		0.798814, 0.065930, -0.597955,
		-0.105659, 0.993901, -0.031564,
		22.606733, 22.692579, 27.384045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.391266, 22.261683, 27.529322>,  <22.680695, 21.996849, 27.406139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.391266, 22.261683, 27.529322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.183903, 22.599918, 27.580276>,  <23.059484, 22.802860, 27.610849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.183903, 22.599918, 27.580276>,  <23.391266, 22.261683, 27.529322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.183903, 22.599918, 27.580276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539450, 0.207796, 0.815975,
		0.663510, 0.491728, -0.563877,
		-0.518409, 0.845591, 0.127388,
		23.028379, 22.853596, 27.618492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.935606, 22.848160, 27.695662>,  <23.391266, 22.261683, 27.529322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.935606, 22.848160, 27.695662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.585114, 23.016592, 27.789392>,  <23.374819, 23.117651, 27.845631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.585114, 23.016592, 27.789392>,  <23.935606, 22.848160, 27.695662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.585114, 23.016592, 27.789392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434253, 0.479154, 0.762781,
		0.208914, 0.770130, -0.602706,
		-0.876230, 0.421083, 0.234330,
		23.322245, 23.142918, 27.859692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.086220, 23.530077, 27.859303>,  <23.935606, 22.848160, 27.695662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.086220, 23.530077, 27.859303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.730928, 23.492680, 28.039219>,  <23.517754, 23.470242, 28.147169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.730928, 23.492680, 28.039219>,  <24.086220, 23.530077, 27.859303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.730928, 23.492680, 28.039219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336864, 0.533168, 0.776050,
		-0.312367, 0.840827, -0.442081,
		-0.888228, -0.093491, 0.449789,
		23.464460, 23.464632, 28.174156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.808916, 24.296909, 28.081154>,  <24.086220, 23.530077, 27.859303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.808916, 24.296909, 28.081154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.613340, 24.019884, 28.293303>,  <23.495995, 23.853668, 28.420591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.613340, 24.019884, 28.293303>,  <23.808916, 24.296909, 28.081154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.613340, 24.019884, 28.293303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278269, 0.452405, 0.847288,
		-0.826743, 0.561859, -0.028480,
		-0.488940, -0.692564, 0.530370,
		23.466658, 23.812115, 28.452414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.421766, 24.629112, 28.621525>,  <23.808916, 24.296909, 28.081154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.421766, 24.629112, 28.621525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.488501, 24.249783, 28.729485>,  <23.528542, 24.022184, 28.794260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.488501, 24.249783, 28.729485>,  <23.421766, 24.629112, 28.621525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.488501, 24.249783, 28.729485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463731, 0.317038, 0.827309,
		-0.870126, -0.012865, 0.492662,
		0.166836, -0.948326, 0.269897,
		23.538551, 23.965284, 28.810453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.781429, 25.238634, 28.478680>,  <23.421766, 24.629112, 28.621525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.781429, 25.238634, 28.478680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.139112, 25.109594, 28.354538>,  <24.353724, 25.032171, 28.280054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.139112, 25.109594, 28.354538>,  <23.781429, 25.238634, 28.478680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.139112, 25.109594, 28.354538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412125, -0.863939, -0.289418,
		-0.174760, 0.386705, -0.905493,
		0.894210, -0.322598, -0.310353,
		24.407375, 25.012815, 28.261433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.283909, 25.551477, 28.959913>,  <23.781429, 25.238634, 28.478680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.283909, 25.551477, 28.959913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.261993, 25.946480, 28.900812>,  <23.248844, 26.183481, 28.865353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.261993, 25.946480, 28.900812>,  <23.283909, 25.551477, 28.959913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.261993, 25.946480, 28.900812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558825, -0.152954, -0.815058,
		-0.827474, 0.037911, 0.560223,
		-0.054789, 0.987506, -0.147751,
		23.245556, 26.242731, 28.856487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.532108, 25.791328, 29.070721>,  <23.283909, 25.551477, 28.959913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.532108, 25.791328, 29.070721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.699066, 26.054710, 28.820213>,  <22.799242, 26.212740, 28.669909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.699066, 26.054710, 28.820213>,  <22.532108, 25.791328, 29.070721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.699066, 26.054710, 28.820213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774727, -0.102356, -0.623956,
		-0.474951, 0.745625, 0.467401,
		0.417397, 0.658457, -0.626270,
		22.824286, 26.252247, 28.632332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.950342, 25.998569, 28.686527>,  <22.532108, 25.791328, 29.070721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.950342, 25.998569, 28.686527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.261404, 26.124216, 28.468689>,  <22.448042, 26.199604, 28.337986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.261404, 26.124216, 28.468689>,  <21.950342, 25.998569, 28.686527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.261404, 26.124216, 28.468689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584791, 0.043398, -0.810022,
		-0.230806, 0.948393, 0.217440,
		0.777655, 0.314115, -0.544595,
		22.494701, 26.218451, 28.305311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.709824, 26.494566, 28.291971>,  <21.950342, 25.998569, 28.686527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.709824, 26.494566, 28.291971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.027000, 26.355291, 28.091969>,  <22.217306, 26.271727, 27.971966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.027000, 26.355291, 28.091969>,  <21.709824, 26.494566, 28.291971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.027000, 26.355291, 28.091969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549885, -0.055496, -0.833395,
		0.262430, 0.935781, -0.235468,
		0.792942, -0.348188, -0.500008,
		22.264883, 26.250835, 27.941967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.801826, 26.879787, 27.667006>,  <21.709824, 26.494566, 28.291971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.801826, 26.879787, 27.667006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.035864, 26.565109, 27.588243>,  <22.176287, 26.376303, 27.540985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.035864, 26.565109, 27.588243>,  <21.801826, 26.879787, 27.667006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.035864, 26.565109, 27.588243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310138, 0.007287, -0.950664,
		0.749319, 0.617297, -0.239720,
		0.585095, -0.786697, -0.196907,
		22.211391, 26.329100, 27.529171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.191200, 26.959087, 26.985178>,  <21.801826, 26.879787, 27.667006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.191200, 26.959087, 26.985178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.199289, 26.564524, 27.050406>,  <22.204144, 26.327785, 27.089542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.199289, 26.564524, 27.050406>,  <22.191200, 26.959087, 26.985178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.199289, 26.564524, 27.050406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227682, -0.163360, -0.959935,
		0.973525, -0.017714, -0.227891,
		0.020223, -0.986407, 0.163068,
		22.205357, 26.268600, 27.099325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630283, 26.756521, 26.488602>,  <22.191200, 26.959087, 26.985178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630283, 26.756521, 26.488602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.417408, 26.440063, 26.609180>,  <22.289682, 26.250189, 26.681528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.417408, 26.440063, 26.609180>,  <22.630283, 26.756521, 26.488602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.417408, 26.440063, 26.609180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291255, -0.163238, -0.942616,
		0.794950, -0.589447, -0.143551,
		-0.532189, -0.791143, 0.301445,
		22.257751, 26.202721, 26.699614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.879396, 26.164862, 26.130480>,  <22.630283, 26.756521, 26.488602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.879396, 26.164862, 26.130480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.522161, 26.033024, 26.252962>,  <22.307821, 25.953920, 26.326452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.522161, 26.033024, 26.252962>,  <22.879396, 26.164862, 26.130480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522161, 26.033024, 26.252962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174062, -0.374475, -0.910753,
		0.414847, -0.866680, 0.277069,
		-0.893087, -0.329596, 0.306205,
		22.254234, 25.934145, 26.344824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.758938, 25.496168, 25.952351>,  <22.879396, 26.164862, 26.130480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.758938, 25.496168, 25.952351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.383654, 25.628773, 25.992064>,  <22.158484, 25.708336, 26.015890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.383654, 25.628773, 25.992064>,  <22.758938, 25.496168, 25.952351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.383654, 25.628773, 25.992064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267641, -0.513241, -0.815446,
		-0.219374, -0.791634, 0.570255,
		-0.938213, 0.331511, 0.099281,
		22.102190, 25.728226, 26.021849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.349718, 25.045256, 25.627472>,  <22.758938, 25.496168, 25.952351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.349718, 25.045256, 25.627472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.075876, 25.335484, 25.655367>,  <21.911572, 25.509621, 25.672104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.075876, 25.335484, 25.655367>,  <22.349718, 25.045256, 25.627472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.075876, 25.335484, 25.655367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351502, -0.244808, -0.903612,
		-0.638563, -0.643129, 0.422636,
		-0.684604, 0.725571, 0.069736,
		21.870495, 25.553154, 25.676289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.737806, 24.766151, 25.531166>,  <22.349718, 25.045256, 25.627472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.737806, 24.766151, 25.531166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.658337, 25.143139, 25.423622>,  <21.610655, 25.369331, 25.359097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.658337, 25.143139, 25.423622>,  <21.737806, 24.766151, 25.531166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.658337, 25.143139, 25.423622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303279, -0.319984, -0.897570,
		-0.931961, -0.096783, 0.349403,
		-0.198673, 0.942467, -0.268860,
		21.598734, 25.425879, 25.342964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019033, 24.815910, 25.326694>,  <21.737806, 24.766151, 25.531166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019033, 24.815910, 25.326694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.217432, 25.111563, 25.144409>,  <21.336472, 25.288954, 25.035038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.217432, 25.111563, 25.144409>,  <21.019033, 24.815910, 25.326694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.217432, 25.111563, 25.144409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345374, -0.313588, -0.884522,
		-0.796682, 0.596113, 0.099737,
		0.495999, 0.739129, -0.455711,
		21.366232, 25.333302, 25.007696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.528265, 24.869362, 24.856506>,  <21.019033, 24.815910, 25.326694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.528265, 24.869362, 24.856506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.825157, 25.090595, 24.705141>,  <21.003292, 25.223335, 24.614323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.825157, 25.090595, 24.705141>,  <20.528265, 24.869362, 24.856506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.825157, 25.090595, 24.705141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357144, -0.151338, -0.921708,
		-0.567049, 0.819265, 0.085203,
		0.742229, 0.553083, -0.378412,
		21.047825, 25.256521, 24.591618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199812, 25.377836, 24.406212>,  <20.528265, 24.869362, 24.856506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199812, 25.377836, 24.406212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.575092, 25.329092, 24.276642>,  <20.800261, 25.299845, 24.198900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.575092, 25.329092, 24.276642>,  <20.199812, 25.377836, 24.406212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.575092, 25.329092, 24.276642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344908, -0.251968, -0.904185,
		0.028567, 0.960032, -0.278428,
		0.938202, -0.121861, -0.323925,
		20.856552, 25.292534, 24.179464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.940941, 25.994812, 23.946297>,  <20.199812, 25.377836, 24.406212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.940941, 25.994812, 23.946297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.566244, 25.903839, 24.052719>,  <19.341425, 25.849255, 24.116571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.566244, 25.903839, 24.052719>,  <19.940941, 25.994812, 23.946297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566244, 25.903839, 24.052719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146273, 0.436197, 0.887883,
		-0.317987, 0.870635, -0.375337,
		-0.936743, -0.227434, 0.266055,
		19.285221, 25.835609, 24.132536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.725258, 26.496614, 24.304241>,  <19.940941, 25.994812, 23.946297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.725258, 26.496614, 24.304241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.428877, 26.253412, 24.418310>,  <19.251049, 26.107491, 24.486752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.428877, 26.253412, 24.418310>,  <19.725258, 26.496614, 24.304241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.428877, 26.253412, 24.418310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106252, 0.313160, 0.943738,
		-0.663101, 0.729563, -0.167434,
		-0.740950, -0.608004, 0.285174,
		19.206593, 26.071011, 24.503862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135447, 26.890965, 24.744013>,  <19.725258, 26.496614, 24.304241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135447, 26.890965, 24.744013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.139931, 26.500498, 24.830702>,  <19.142622, 26.266218, 24.882715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.139931, 26.500498, 24.830702>,  <19.135447, 26.890965, 24.744013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139931, 26.500498, 24.830702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034863, 0.216986, 0.975552,
		-0.999329, -0.003381, 0.036464,
		0.011211, -0.976169, 0.216723,
		19.143293, 26.207647, 24.895720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.719770, 26.804680, 25.366796>,  <19.135447, 26.890965, 24.744013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.719770, 26.804680, 25.366796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.876293, 26.436600, 25.362612>,  <18.970207, 26.215752, 25.360102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.876293, 26.436600, 25.362612>,  <18.719770, 26.804680, 25.366796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876293, 26.436600, 25.362612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002079, -0.012253, 0.999923,
		-0.920257, -0.391257, -0.006708,
		0.391308, -0.920200, -0.010462,
		18.993687, 26.160540, 25.359472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.323400, 26.382942, 25.761139>,  <18.719770, 26.804680, 25.366796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.323400, 26.382942, 25.761139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.683504, 26.208803, 25.760050>,  <18.899567, 26.104319, 25.759396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.683504, 26.208803, 25.760050>,  <18.323400, 26.382942, 25.761139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.683504, 26.208803, 25.760050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072724, 0.144209, 0.986871,
		-0.429241, -0.888637, 0.161485,
		0.900257, -0.435349, -0.002725,
		18.953581, 26.078197, 25.759232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.291729, 25.940002, 26.431831>,  <18.323400, 26.382942, 25.761139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.291729, 25.940002, 26.431831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.672749, 25.956221, 26.311163>,  <18.901361, 25.965952, 26.238762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.672749, 25.956221, 26.311163>,  <18.291729, 25.940002, 26.431831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.672749, 25.956221, 26.311163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290591, 0.173805, 0.940930,
		0.090578, -0.983945, 0.153777,
		0.952551, 0.040542, -0.301669,
		18.958513, 25.968384, 26.220663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.698099, 25.490898, 26.810406>,  <18.291729, 25.940002, 26.431831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.698099, 25.490898, 26.810406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.954370, 25.768509, 26.679039>,  <19.108133, 25.935076, 26.600220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.954370, 25.768509, 26.679039>,  <18.698099, 25.490898, 26.810406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.954370, 25.768509, 26.679039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337851, 0.129278, 0.932279,
		0.689486, -0.708245, -0.151654,
		0.640676, 0.694029, -0.328417,
		19.146574, 25.976717, 26.580515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198997, 24.901596, 26.842432>,  <18.698099, 25.490898, 26.810406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198997, 24.901596, 26.842432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.894526, 24.777561, 27.070272>,  <18.711842, 24.703140, 27.206978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.894526, 24.777561, 27.070272>,  <19.198997, 24.901596, 26.842432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.894526, 24.777561, 27.070272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422764, -0.428784, -0.798383,
		0.491806, -0.848522, 0.195288,
		-0.761182, -0.310089, 0.569602,
		18.666170, 24.684534, 27.241154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.170370, 24.205111, 26.725876>,  <19.198997, 24.901596, 26.842432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.170370, 24.205111, 26.725876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.805815, 24.303272, 26.858027>,  <18.587082, 24.362169, 26.937317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.805815, 24.303272, 26.858027>,  <19.170370, 24.205111, 26.725876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805815, 24.303272, 26.858027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411548, -0.541816, -0.732846,
		-0.000838, -0.803874, 0.594799,
		-0.911387, 0.245402, 0.330379,
		18.532398, 24.376894, 26.957140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.769230, 23.630247, 26.633089>,  <19.170370, 24.205111, 26.725876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.769230, 23.630247, 26.633089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.506433, 23.930876, 26.656761>,  <18.348757, 24.111254, 26.670963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.506433, 23.930876, 26.656761>,  <18.769230, 23.630247, 26.633089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506433, 23.930876, 26.656761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524042, -0.398838, -0.752535,
		-0.541984, -0.525418, 0.655888,
		-0.656988, 0.751574, 0.059178,
		18.309338, 24.156347, 26.674515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.116255, 23.315792, 26.468534>,  <18.769230, 23.630247, 26.633089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.116255, 23.315792, 26.468534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.008707, 23.698603, 26.425064>,  <17.944180, 23.928289, 26.398981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.008707, 23.698603, 26.425064>,  <18.116255, 23.315792, 26.468534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008707, 23.698603, 26.425064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576869, -0.250361, -0.777523,
		-0.771319, -0.146358, 0.619392,
		-0.268868, 0.957026, -0.108678,
		17.928047, 23.985710, 26.392460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313705, 23.336985, 26.533491>,  <18.116255, 23.315792, 26.468534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.313705, 23.336985, 26.533491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.460857, 23.641928, 26.320522>,  <17.549149, 23.824894, 26.192741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.460857, 23.641928, 26.320522>,  <17.313705, 23.336985, 26.533491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460857, 23.641928, 26.320522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525591, -0.301859, -0.795384,
		-0.767085, 0.572441, 0.289641,
		0.367880, 0.762359, -0.532422,
		17.571220, 23.870636, 26.160795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726936, 23.605804, 26.217890>,  <17.313705, 23.336985, 26.533491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726936, 23.605804, 26.217890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.027267, 23.757889, 26.001854>,  <17.207466, 23.849140, 25.872232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.027267, 23.757889, 26.001854>,  <16.726936, 23.605804, 26.217890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027267, 23.757889, 26.001854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384045, -0.413960, -0.825316,
		-0.537371, 0.827089, -0.164793,
		0.750827, 0.380213, -0.540090,
		17.252516, 23.871952, 25.839827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.365473, 23.992592, 25.683691>,  <16.726936, 23.605804, 26.217890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.365473, 23.992592, 25.683691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.738190, 23.916208, 25.560209>,  <16.961821, 23.870378, 25.486120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.738190, 23.916208, 25.560209>,  <16.365473, 23.992592, 25.683691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738190, 23.916208, 25.560209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359560, -0.368858, -0.857123,
		0.049808, 0.909658, -0.412361,
		0.931791, -0.190960, -0.308705,
		17.017727, 23.858921, 25.467598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<24.868973, 17.416492, 28.998226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.792353, 17.766994, 29.175081>,  <24.746380, 17.977295, 29.281195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.792353, 17.766994, 29.175081>,  <24.868973, 17.416492, 28.998226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.792353, 17.766994, 29.175081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949933, -0.052217, -0.308059,
		-0.246852, -0.479010, 0.842386,
		-0.191550, 0.876255, 0.442138,
		24.734888, 18.029871, 29.307722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.296230, 17.466190, 29.558302>,  <24.868973, 17.416492, 28.998226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.296230, 17.466190, 29.558302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.358206, 17.779675, 29.317707>,  <24.395391, 17.967766, 29.173349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.358206, 17.779675, 29.317707>,  <24.296230, 17.466190, 29.558302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358206, 17.779675, 29.317707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964608, -0.011486, -0.263439,
		-0.213369, 0.621018, 0.754196,
		0.154937, 0.783713, -0.601489,
		24.404688, 18.014788, 29.137260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.927055, 18.107384, 29.776611>,  <24.296230, 17.466190, 29.558302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.927055, 18.107384, 29.776611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.000719, 18.049627, 29.387718>,  <24.044918, 18.014973, 29.154383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.000719, 18.049627, 29.387718>,  <23.927055, 18.107384, 29.776611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.000719, 18.049627, 29.387718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982195, 0.010329, -0.187582,
		0.037128, 0.989466, -0.139920,
		0.184161, -0.144393, -0.972232,
		24.055967, 18.006310, 29.096048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.577122, 18.641205, 29.372589>,  <23.927055, 18.107384, 29.776611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.577122, 18.641205, 29.372589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.619698, 18.308167, 29.155167>,  <23.645243, 18.108343, 29.024714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.619698, 18.308167, 29.155167>,  <23.577122, 18.641205, 29.372589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.619698, 18.308167, 29.155167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955400, 0.065806, -0.287890,
		0.275466, 0.549956, -0.788459,
		0.106442, -0.832597, -0.543555,
		23.651630, 18.058388, 28.992100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.173809, 18.598579, 28.825415>,  <23.577122, 18.641205, 29.372589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.173809, 18.598579, 28.825415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.291876, 18.235119, 28.707273>,  <23.362717, 18.017042, 28.636389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.291876, 18.235119, 28.707273>,  <23.173809, 18.598579, 28.825415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.291876, 18.235119, 28.707273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848424, -0.107109, -0.518367,
		0.439379, 0.403590, -0.802534,
		0.295166, -0.908649, -0.295354,
		23.380426, 17.962524, 28.618668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.882814, 18.585039, 28.094849>,  <23.173809, 18.598579, 28.825415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.882814, 18.585039, 28.094849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.953451, 18.209890, 28.214321>,  <22.995832, 17.984800, 28.286005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.953451, 18.209890, 28.214321>,  <22.882814, 18.585039, 28.094849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.953451, 18.209890, 28.214321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667608, -0.337110, -0.663819,
		0.723266, -0.082177, -0.685662,
		0.176593, -0.937872, 0.298683,
		23.006430, 17.928528, 28.303926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.380684, 18.756462, 27.563248>,  <22.882814, 18.585039, 28.094849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.380684, 18.756462, 27.563248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.762571, 18.672726, 27.478683>,  <23.991703, 18.622484, 27.427946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.762571, 18.672726, 27.478683>,  <23.380684, 18.756462, 27.563248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.762571, 18.672726, 27.478683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170771, -0.196286, 0.965562,
		-0.243630, -0.957939, -0.151647,
		0.954716, -0.209343, -0.211409,
		24.048986, 18.609924, 27.415260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.903336, 19.508007, 27.385588>,  <23.380684, 18.756462, 27.563248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.903336, 19.508007, 27.385588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.592134, 19.758354, 27.407499>,  <22.405415, 19.908562, 27.420647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.592134, 19.758354, 27.407499>,  <22.903336, 19.508007, 27.385588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.592134, 19.758354, 27.407499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576207, -0.676072, -0.459252,
		-0.250395, -0.388864, 0.886615,
		-0.778003, 0.625868, 0.054781,
		22.358734, 19.946115, 27.423933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309307, 19.144371, 27.662338>,  <22.903336, 19.508007, 27.385588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309307, 19.144371, 27.662338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.164333, 19.451675, 27.451277>,  <22.077349, 19.636057, 27.324640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.164333, 19.451675, 27.451277>,  <22.309307, 19.144371, 27.662338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.164333, 19.451675, 27.451277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651322, -0.613736, -0.446216,
		-0.666651, 0.181951, 0.722822,
		-0.362432, 0.768259, -0.527656,
		22.055603, 19.682154, 27.292980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.639545, 19.066830, 27.521706>,  <22.309307, 19.144371, 27.662338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.639545, 19.066830, 27.521706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.699335, 19.323053, 27.220417>,  <21.735209, 19.476788, 27.039644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.699335, 19.323053, 27.220417>,  <21.639545, 19.066830, 27.521706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.699335, 19.323053, 27.220417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683773, -0.483296, -0.546699,
		-0.714221, 0.596750, 0.365757,
		0.149474, 0.640558, -0.753222,
		21.744177, 19.515221, 26.994450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.987547, 19.225634, 27.244396>,  <21.639545, 19.066830, 27.521706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.987547, 19.225634, 27.244396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.246302, 19.302410, 26.949183>,  <21.401554, 19.348476, 26.772055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.246302, 19.302410, 26.949183>,  <20.987547, 19.225634, 27.244396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.246302, 19.302410, 26.949183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615855, -0.439266, -0.654039,
		-0.449732, 0.877612, -0.165947,
		0.646888, 0.191943, -0.738034,
		21.440369, 19.359993, 26.727772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.539383, 19.504128, 26.660452>,  <20.987547, 19.225634, 27.244396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.539383, 19.504128, 26.660452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.871862, 19.399645, 26.464134>,  <21.071350, 19.336956, 26.346344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.871862, 19.399645, 26.464134>,  <20.539383, 19.504128, 26.660452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.871862, 19.399645, 26.464134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549396, -0.250499, -0.797129,
		0.085270, 0.932214, -0.351720,
		0.831200, -0.261205, -0.490794,
		21.121222, 19.321283, 26.316896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.809238, 19.283863, 26.562424>,  <20.539383, 19.504128, 26.660452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.809238, 19.283863, 26.562424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.465731, 19.402822, 26.729313>,  <19.259626, 19.474197, 26.829447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.465731, 19.402822, 26.729313>,  <19.809238, 19.283863, 26.562424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.465731, 19.402822, 26.729313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499022, 0.670112, 0.549480,
		-0.116172, 0.680078, -0.723877,
		-0.858767, 0.297396, 0.417222,
		19.208101, 19.492041, 26.854479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856281, 20.015301, 26.538179>,  <19.809238, 19.283863, 26.562424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856281, 20.015301, 26.538179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.597099, 19.902447, 26.821178>,  <19.441591, 19.834734, 26.990978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.597099, 19.902447, 26.821178>,  <19.856281, 20.015301, 26.538179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.597099, 19.902447, 26.821178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390442, 0.674517, 0.626563,
		-0.653996, 0.682222, -0.326898,
		-0.647954, -0.282135, 0.707500,
		19.402714, 19.817806, 27.033428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489128, 20.521112, 26.722864>,  <19.856281, 20.015301, 26.538179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489128, 20.521112, 26.722864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.425875, 20.299402, 27.049732>,  <19.387922, 20.166376, 27.245853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.425875, 20.299402, 27.049732>,  <19.489128, 20.521112, 26.722864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.425875, 20.299402, 27.049732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333799, 0.748855, 0.572534,
		-0.929286, 0.363308, 0.066597,
		-0.158135, -0.554277, 0.817172,
		19.378435, 20.133120, 27.294884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.189245, 20.894033, 27.239241>,  <19.489128, 20.521112, 26.722864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.189245, 20.894033, 27.239241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.311676, 20.607468, 27.490021>,  <19.385134, 20.435528, 27.640488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.311676, 20.607468, 27.490021>,  <19.189245, 20.894033, 27.239241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311676, 20.607468, 27.490021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290475, 0.697430, 0.655145,
		-0.906610, -0.018411, 0.421568,
		0.306076, -0.716416, 0.626949,
		19.403500, 20.392542, 27.678106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.812233, 20.945274, 27.915781>,  <19.189245, 20.894033, 27.239241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.812233, 20.945274, 27.915781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.131084, 20.724550, 28.013830>,  <19.322395, 20.592115, 28.072660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.131084, 20.724550, 28.013830>,  <18.812233, 20.945274, 27.915781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.131084, 20.724550, 28.013830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106761, 0.528375, 0.842272,
		-0.594294, -0.645231, 0.480096,
		0.797130, -0.551812, 0.245125,
		19.370224, 20.559006, 28.087368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737461, 20.611805, 28.677515>,  <18.812233, 20.945274, 27.915781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737461, 20.611805, 28.677515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.122866, 20.623465, 28.571087>,  <19.354109, 20.630461, 28.507229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.122866, 20.623465, 28.571087>,  <18.737461, 20.611805, 28.677515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.122866, 20.623465, 28.571087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221840, 0.469252, 0.854746,
		0.149771, -0.882583, 0.445663,
		0.963512, 0.029151, -0.266072,
		19.411919, 20.632210, 28.491264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169970, 20.421888, 29.304773>,  <18.737461, 20.611805, 28.677515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169970, 20.421888, 29.304773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.428314, 20.623602, 29.075491>,  <19.583321, 20.744629, 28.937922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.428314, 20.623602, 29.075491>,  <19.169970, 20.421888, 29.304773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.428314, 20.623602, 29.075491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315920, 0.506974, 0.801980,
		0.695024, -0.699054, 0.168121,
		0.645861, 0.504283, -0.573204,
		19.622072, 20.774887, 28.903530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759033, 20.461161, 29.766008>,  <19.169970, 20.421888, 29.304773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759033, 20.461161, 29.766008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.832279, 20.721571, 29.471354>,  <19.876226, 20.877817, 29.294561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.832279, 20.721571, 29.471354>,  <19.759033, 20.461161, 29.766008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.832279, 20.721571, 29.471354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343722, 0.659616, 0.668403,
		0.921045, -0.375592, -0.102987,
		0.183114, 0.651028, -0.736635,
		19.887213, 20.916880, 29.250362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.338650, 20.803852, 29.854359>,  <19.759033, 20.461161, 29.766008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.338650, 20.803852, 29.854359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.180882, 21.082237, 29.614336>,  <20.086222, 21.249269, 29.470322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.180882, 21.082237, 29.614336>,  <20.338650, 20.803852, 29.854359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180882, 21.082237, 29.614336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349927, 0.717548, 0.602226,
		0.849697, 0.027553, -0.526551,
		-0.394419, 0.695964, -0.600057,
		20.062555, 21.291027, 29.434319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.887749, 21.233982, 29.849098>,  <20.338650, 20.803852, 29.854359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.887749, 21.233982, 29.849098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.583069, 21.462992, 29.727749>,  <20.400261, 21.600397, 29.654940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.583069, 21.462992, 29.727749>,  <20.887749, 21.233982, 29.849098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583069, 21.462992, 29.727749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354709, 0.760280, 0.544202,
		0.542216, 0.306908, -0.782182,
		-0.761698, 0.572522, -0.303373,
		20.354559, 21.634748, 29.636738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126953, 21.871977, 29.692047>,  <20.887749, 21.233982, 29.849098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126953, 21.871977, 29.692047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.742666, 21.926895, 29.788519>,  <20.512094, 21.959846, 29.846403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.742666, 21.926895, 29.788519>,  <21.126953, 21.871977, 29.692047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742666, 21.926895, 29.788519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257198, 0.766925, 0.587942,
		-0.104246, 0.626878, -0.772111,
		-0.960719, 0.137295, 0.241181,
		20.454451, 21.968084, 29.860872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.899199, 22.708319, 29.583111>,  <21.126953, 21.871977, 29.692047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.899199, 22.708319, 29.583111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.659901, 22.514997, 29.838772>,  <20.516321, 22.399004, 29.992168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.659901, 22.514997, 29.838772>,  <20.899199, 22.708319, 29.583111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659901, 22.514997, 29.838772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101538, 0.745483, 0.658745,
		-0.794853, 0.458990, -0.396909,
		-0.598246, -0.483304, 0.639155,
		20.480427, 22.370007, 30.030518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657253, 23.255714, 29.922762>,  <20.899199, 22.708319, 29.583111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.657253, 23.255714, 29.922762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.531176, 22.953367, 30.152306>,  <20.455530, 22.771959, 30.290031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.531176, 22.953367, 30.152306>,  <20.657253, 23.255714, 29.922762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.531176, 22.953367, 30.152306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221423, 0.646567, 0.730016,
		-0.922835, 0.103030, -0.371160,
		-0.315193, -0.755868, 0.573861,
		20.436617, 22.726606, 30.324465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.929092, 23.356241, 30.147985>,  <20.657253, 23.255714, 29.922762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.929092, 23.356241, 30.147985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.108982, 23.117937, 30.414164>,  <20.216915, 22.974955, 30.573872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.108982, 23.117937, 30.414164>,  <19.929092, 23.356241, 30.147985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.108982, 23.117937, 30.414164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326724, 0.583673, 0.743355,
		-0.831264, -0.551723, 0.067844,
		0.449724, -0.595758, 0.665448,
		20.243900, 22.939209, 30.613798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.732327, 23.958141, 30.016607>,  <19.929092, 23.356241, 30.147985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.732327, 23.958141, 30.016607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.566107, 24.310925, 30.105570>,  <19.466375, 24.522594, 30.158947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.566107, 24.310925, 30.105570>,  <19.732327, 23.958141, 30.016607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566107, 24.310925, 30.105570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781559, -0.221151, -0.583316,
		-0.465276, -0.416220, 0.781204,
		-0.415551, 0.881960, 0.222404,
		19.441441, 24.575512, 30.172291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045967, 23.847002, 29.966949>,  <19.732327, 23.958141, 30.016607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.045967, 23.847002, 29.966949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.139917, 24.233788, 29.927330>,  <19.196287, 24.465858, 29.903559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.139917, 24.233788, 29.927330>,  <19.045967, 23.847002, 29.966949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139917, 24.233788, 29.927330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710430, 0.101226, -0.696450,
		-0.663417, 0.233947, 0.710737,
		0.234877, 0.966965, -0.099048,
		19.210381, 24.523878, 29.897615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.337858, 24.232901, 29.912680>,  <19.045967, 23.847002, 29.966949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.337858, 24.232901, 29.912680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.636787, 24.438011, 29.743649>,  <18.816145, 24.561077, 29.642229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.636787, 24.438011, 29.743649>,  <18.337858, 24.232901, 29.912680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.636787, 24.438011, 29.743649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595869, 0.235766, -0.767695,
		-0.294026, 0.825515, 0.481740,
		0.747322, 0.512776, -0.422577,
		18.860985, 24.591845, 29.616875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999693, 24.852551, 29.620331>,  <18.337858, 24.232901, 29.912680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.999693, 24.852551, 29.620331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.349583, 24.817642, 29.429653>,  <18.559517, 24.796698, 29.315247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.349583, 24.817642, 29.429653>,  <17.999693, 24.852551, 29.620331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349583, 24.817642, 29.429653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446416, 0.237690, -0.862680,
		0.188591, 0.967413, 0.168956,
		0.874726, -0.087269, -0.476695,
		18.612001, 24.791462, 29.286644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928423, 25.322624, 29.029173>,  <17.999693, 24.852551, 29.620331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.928423, 25.322624, 29.029173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.239571, 25.094967, 28.922594>,  <18.426260, 24.958372, 28.858646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.239571, 25.094967, 28.922594>,  <17.928423, 25.322624, 29.029173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.239571, 25.094967, 28.922594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371008, -0.073698, -0.925701,
		0.507220, 0.818928, -0.268485,
		0.777869, -0.569144, -0.266448,
		18.472931, 24.924223, 28.842659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366478, 25.655796, 28.453714>,  <17.928423, 25.322624, 29.029173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366478, 25.655796, 28.453714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.452221, 25.266428, 28.421463>,  <18.503666, 25.032806, 28.402113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.452221, 25.266428, 28.421463>,  <18.366478, 25.655796, 28.453714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.452221, 25.266428, 28.421463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349193, 0.000721, -0.937051,
		0.912204, 0.229017, -0.339758,
		0.214355, -0.973422, -0.080629,
		18.516527, 24.974401, 28.397274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791492, 25.575253, 27.874746>,  <18.366478, 25.655796, 28.453714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791492, 25.575253, 27.874746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.600367, 25.234840, 27.961868>,  <18.485691, 25.030592, 28.014141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.600367, 25.234840, 27.961868>,  <18.791492, 25.575253, 27.874746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.600367, 25.234840, 27.961868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398448, -0.011012, -0.917125,
		0.782902, -0.524997, -0.333830,
		-0.477812, -0.851033, 0.217805,
		18.457024, 24.979530, 28.027210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.361031, 25.447023, 27.356907>,  <18.791492, 25.575253, 27.874746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.361031, 25.447023, 27.356907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.427671, 25.786287, 27.155762>,  <19.467655, 25.989845, 27.035074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.427671, 25.786287, 27.155762>,  <19.361031, 25.447023, 27.356907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427671, 25.786287, 27.155762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605202, 0.314666, 0.731242,
		0.778444, -0.426158, -0.460885,
		0.166600, 0.848160, -0.502861,
		19.477652, 26.040735, 27.004904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.111677, 25.597273, 27.424694>,  <19.361031, 25.447023, 27.356907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.111677, 25.597273, 27.424694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.960402, 25.949520, 27.310509>,  <19.869637, 26.160868, 27.241997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.960402, 25.949520, 27.310509>,  <20.111677, 25.597273, 27.424694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960402, 25.949520, 27.310509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644869, 0.471847, 0.601253,
		0.664168, 0.043300, -0.746329,
		-0.378187, 0.880617, -0.285462,
		19.846945, 26.213705, 27.224871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.572735, 26.077267, 27.430500>,  <20.111677, 25.597273, 27.424694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.572735, 26.077267, 27.430500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.261168, 26.327972, 27.421978>,  <20.074226, 26.478395, 27.416864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.261168, 26.327972, 27.421978>,  <20.572735, 26.077267, 27.430500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.261168, 26.327972, 27.421978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455772, 0.589101, 0.667257,
		0.430763, 0.510028, -0.744523,
		-0.778919, 0.626762, -0.021307,
		20.027493, 26.516001, 27.415586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844181, 26.778448, 27.369013>,  <20.572735, 26.077267, 27.430500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844181, 26.778448, 27.369013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.479507, 26.791672, 27.532839>,  <20.260704, 26.799606, 27.631134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.479507, 26.791672, 27.532839>,  <20.844181, 26.778448, 27.369013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479507, 26.791672, 27.532839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344103, 0.606183, 0.717033,
		-0.224566, 0.794638, -0.564022,
		-0.911682, 0.033060, 0.409565,
		20.206003, 26.801590, 27.655708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.774879, 27.474689, 27.488136>,  <20.844181, 26.778448, 27.369013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.774879, 27.474689, 27.488136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.538527, 27.272085, 27.739311>,  <20.396715, 27.150522, 27.890017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.538527, 27.272085, 27.739311>,  <20.774879, 27.474689, 27.488136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.538527, 27.272085, 27.739311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356026, 0.534744, 0.766352,
		-0.723951, 0.676386, -0.135640,
		-0.590882, -0.506510, 0.627938,
		20.361261, 27.120132, 27.927692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.428965, 27.988773, 28.075506>,  <20.774879, 27.474689, 27.488136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.428965, 27.988773, 28.075506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.413450, 27.623960, 28.238817>,  <20.404140, 27.405071, 28.336803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.413450, 27.623960, 28.238817>,  <20.428965, 27.988773, 28.075506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.413450, 27.623960, 28.238817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430476, 0.353473, 0.830510,
		-0.901768, 0.207967, 0.378898,
		-0.038788, -0.912034, 0.408275,
		20.401814, 27.350349, 28.361300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188410, 28.143879, 28.829702>,  <20.428965, 27.988773, 28.075506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188410, 28.143879, 28.829702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.308567, 27.763592, 28.860428>,  <20.380661, 27.535419, 28.878862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.308567, 27.763592, 28.860428>,  <20.188410, 28.143879, 28.829702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308567, 27.763592, 28.860428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128628, 0.120176, 0.984384,
		-0.945103, -0.285821, 0.158389,
		0.300393, -0.950718, 0.076814,
		20.398685, 27.478376, 28.883472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954218, 27.954735, 29.455805>,  <20.188410, 28.143879, 28.829702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954218, 27.954735, 29.455805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.245457, 27.691875, 29.377804>,  <20.420200, 27.534159, 29.331003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.245457, 27.691875, 29.377804>,  <19.954218, 27.954735, 29.455805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.245457, 27.691875, 29.377804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256114, -0.003077, 0.966642,
		-0.635829, -0.753753, 0.166065,
		0.728098, -0.657151, -0.195003,
		20.463886, 27.494730, 29.319304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.918081, 27.408325, 29.935070>,  <19.954218, 27.954735, 29.455805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.918081, 27.408325, 29.935070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.286057, 27.462439, 29.787876>,  <20.506842, 27.494907, 29.699560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.286057, 27.462439, 29.787876>,  <19.918081, 27.408325, 29.935070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286057, 27.462439, 29.787876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380257, -0.079271, 0.921477,
		0.095490, -0.987631, -0.124367,
		0.919938, 0.135283, -0.367984,
		20.562038, 27.503023, 29.677481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.280266, 19.716566, 15.875992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.644669, 19.765779, 16.033436>,  <16.863310, 19.795307, 16.127903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.644669, 19.765779, 16.033436>,  <16.280266, 19.716566, 15.875992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.644669, 19.765779, 16.033436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370141, 0.664773, 0.648901,
		-0.181825, -0.736845, 0.651152,
		0.911007, 0.123032, 0.393609,
		16.917971, 19.802689, 16.151518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200090, 19.712156, 16.479660>,  <16.280266, 19.716566, 15.875992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.200090, 19.712156, 16.479660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550802, 19.903912, 16.464464>,  <16.761229, 20.018965, 16.455347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.550802, 19.903912, 16.464464>,  <16.200090, 19.712156, 16.479660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550802, 19.903912, 16.464464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280344, 0.573725, 0.769576,
		0.390723, -0.664098, 0.637424,
		0.876780, 0.479389, -0.037991,
		16.813835, 20.047728, 16.453066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.461472, 19.684013, 17.241179>,  <16.200090, 19.712156, 16.479660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.461472, 19.684013, 17.241179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.632299, 19.977556, 17.029873>,  <16.734797, 20.153683, 16.903090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.632299, 19.977556, 17.029873>,  <16.461472, 19.684013, 17.241179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.632299, 19.977556, 17.029873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166915, 0.638165, 0.751588,
		0.888679, -0.232806, 0.395034,
		0.427071, 0.733857, -0.528265,
		16.760422, 20.197714, 16.871393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056852, 20.097055, 17.681778>,  <16.461472, 19.684013, 17.241179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.056852, 20.097055, 17.681778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950916, 20.353964, 17.394070>,  <16.887356, 20.508108, 17.221445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950916, 20.353964, 17.394070>,  <17.056852, 20.097055, 17.681778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950916, 20.353964, 17.394070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007665, 0.744478, 0.667603,
		0.964262, 0.182320, -0.192243,
		-0.264838, 0.642271, -0.719269,
		16.871466, 20.546646, 17.178289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.434948, 20.676117, 17.897331>,  <17.056852, 20.097055, 17.681778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.434948, 20.676117, 17.897331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153370, 20.819443, 17.652033>,  <16.984423, 20.905439, 17.504854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.153370, 20.819443, 17.652033>,  <17.434948, 20.676117, 17.897331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153370, 20.819443, 17.652033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177893, 0.746948, 0.640642,
		0.687615, 0.560070, -0.462069,
		-0.703946, 0.358316, -0.613245,
		16.942186, 20.926937, 17.468060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.606728, 21.387991, 17.829281>,  <17.434948, 20.676117, 17.897331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.606728, 21.387991, 17.829281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.219219, 21.361826, 17.733614>,  <16.986713, 21.346127, 17.676214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.219219, 21.361826, 17.733614>,  <17.606728, 21.387991, 17.829281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.219219, 21.361826, 17.733614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199404, 0.778839, 0.594682,
		0.147373, 0.623803, -0.767562,
		-0.968772, -0.065415, -0.239168,
		16.928587, 21.342201, 17.661863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477938, 22.065176, 17.633484>,  <17.606728, 21.387991, 17.829281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477938, 22.065176, 17.633484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.103756, 21.947308, 17.711554>,  <16.879248, 21.876587, 17.758396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.103756, 21.947308, 17.711554>,  <17.477938, 22.065176, 17.633484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103756, 21.947308, 17.711554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160050, 0.845504, 0.509417,
		-0.315133, 0.445299, -0.838093,
		-0.935454, -0.294671, 0.195176,
		16.823120, 21.858906, 17.770107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040516, 22.669041, 17.497456>,  <17.477938, 22.065176, 17.633484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.040516, 22.669041, 17.497456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807371, 22.431948, 17.719786>,  <16.667484, 22.289692, 17.853184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807371, 22.431948, 17.719786>,  <17.040516, 22.669041, 17.497456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807371, 22.431948, 17.719786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196021, 0.766396, 0.611730,
		-0.788573, 0.247601, -0.562891,
		-0.582862, -0.592732, 0.555824,
		16.632513, 22.254128, 17.886534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398787, 23.029249, 17.599003>,  <17.040516, 22.669041, 17.497456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398787, 23.029249, 17.599003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.421900, 22.754272, 17.888577>,  <16.435768, 22.589287, 18.062321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.421900, 22.754272, 17.888577>,  <16.398787, 23.029249, 17.599003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421900, 22.754272, 17.888577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132995, 0.713384, 0.688038,
		-0.989431, -0.136036, -0.050206,
		0.057782, -0.687443, 0.723936,
		16.439234, 22.548040, 18.105757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.749091, 23.091778, 18.022882>,  <16.398787, 23.029249, 17.599003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.749091, 23.091778, 18.022882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994164, 22.892570, 18.268353>,  <16.141207, 22.773046, 18.415634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994164, 22.892570, 18.268353>,  <15.749091, 23.091778, 18.022882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994164, 22.892570, 18.268353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068501, 0.740095, 0.669005,
		-0.787356, -0.451924, 0.419327,
		0.612681, -0.498021, 0.613675,
		16.177967, 22.743164, 18.452456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445092, 23.200840, 18.700300>,  <15.749091, 23.091778, 18.022882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445092, 23.200840, 18.700300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830676, 23.103504, 18.743319>,  <16.062027, 23.045103, 18.769131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830676, 23.103504, 18.743319>,  <15.445092, 23.200840, 18.700300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830676, 23.103504, 18.743319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066818, 0.612721, 0.787469,
		-0.257519, -0.751903, 0.606898,
		0.963960, -0.243340, 0.107547,
		16.119864, 23.030502, 18.775583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.538064, 23.266346, 19.419533>,  <15.445092, 23.200840, 18.700300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.538064, 23.266346, 19.419533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.911067, 23.280760, 19.275793>,  <16.134869, 23.289408, 19.189548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.911067, 23.280760, 19.275793>,  <15.538064, 23.266346, 19.419533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.911067, 23.280760, 19.275793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247004, 0.662265, 0.707385,
		0.263474, -0.748403, 0.608667,
		0.932507, 0.036035, -0.359348,
		16.190819, 23.291571, 19.167988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339767, 22.544384, 19.672663>,  <15.538064, 23.266346, 19.419533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.339767, 22.544384, 19.672663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.029255, 22.503952, 19.921556>,  <14.842948, 22.479692, 20.070892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.029255, 22.503952, 19.921556>,  <15.339767, 22.544384, 19.672663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.029255, 22.503952, 19.921556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480610, -0.543835, -0.687937,
		0.407928, -0.833083, 0.373588,
		-0.776279, -0.101079, 0.622233,
		14.796371, 22.473629, 20.108227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277648, 21.829237, 19.788969>,  <15.339767, 22.544384, 19.672663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277648, 21.829237, 19.788969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927053, 22.011782, 19.850296>,  <14.716697, 22.121307, 19.887093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927053, 22.011782, 19.850296>,  <15.277648, 21.829237, 19.788969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927053, 22.011782, 19.850296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464882, -0.719526, -0.515914,
		-0.125127, -0.523466, 0.842809,
		-0.876486, 0.456361, 0.153318,
		14.664107, 22.148689, 19.896292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.818343, 21.287306, 20.004818>,  <15.277648, 21.829237, 19.788969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.818343, 21.287306, 20.004818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582981, 21.580053, 19.867329>,  <14.441764, 21.755703, 19.784836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.582981, 21.580053, 19.867329>,  <14.818343, 21.287306, 20.004818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582981, 21.580053, 19.867329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436643, -0.645399, -0.626740,
		-0.680532, -0.218691, 0.699321,
		-0.588404, 0.731870, -0.343725,
		14.406460, 21.799614, 19.764212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278461, 20.895685, 19.979382>,  <14.818343, 21.287306, 20.004818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278461, 20.895685, 19.979382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.179208, 21.211790, 19.755270>,  <14.119656, 21.401453, 19.620804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.179208, 21.211790, 19.755270>,  <14.278461, 20.895685, 19.979382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.179208, 21.211790, 19.755270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541224, -0.592774, -0.596402,
		-0.803434, 0.155250, 0.574797,
		-0.248134, 0.790263, -0.560280,
		14.104768, 21.448870, 19.587187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550327, 20.771828, 19.911907>,  <14.278461, 20.895685, 19.979382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550327, 20.771828, 19.911907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.662594, 21.012411, 19.612715>,  <13.729954, 21.156761, 19.433199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.662594, 21.012411, 19.612715>,  <13.550327, 20.771828, 19.911907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.662594, 21.012411, 19.612715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552794, -0.535777, -0.638249,
		-0.784631, 0.592614, 0.182108,
		0.280665, 0.601458, -0.747981,
		13.746794, 21.192848, 19.388321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982184, 20.941957, 19.576605>,  <13.550327, 20.771828, 19.911907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982184, 20.941957, 19.576605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262273, 21.029806, 19.304882>,  <13.430326, 21.082516, 19.141848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262273, 21.029806, 19.304882>,  <12.982184, 20.941957, 19.576605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.262273, 21.029806, 19.304882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449015, -0.604279, -0.658203,
		-0.555046, 0.765907, -0.324516,
		0.700221, 0.219620, -0.679307,
		13.472339, 21.095692, 19.101089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.524130, 21.143728, 19.031298>,  <12.982184, 20.941957, 19.576605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.524130, 21.143728, 19.031298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884372, 21.043310, 18.889376>,  <13.100517, 20.983059, 18.804222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884372, 21.043310, 18.889376>,  <12.524130, 21.143728, 19.031298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.884372, 21.043310, 18.889376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431314, -0.616988, -0.658251,
		-0.053659, 0.745856, -0.663942,
		0.900605, -0.251046, -0.354805,
		13.154553, 20.967997, 18.782934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.437621, 21.225252, 18.400059>,  <12.524130, 21.143728, 19.031298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.437621, 21.225252, 18.400059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.758359, 20.987379, 18.423370>,  <12.950802, 20.844654, 18.437357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.758359, 20.987379, 18.423370>,  <12.437621, 21.225252, 18.400059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.758359, 20.987379, 18.423370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360337, -0.559041, -0.746746,
		0.476657, 0.577775, -0.662551,
		0.801845, -0.594683, 0.058277,
		12.998913, 20.808973, 18.440853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.523517, 20.856760, 17.782337>,  <12.437621, 21.225252, 18.400059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.523517, 20.856760, 17.782337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794389, 20.622219, 17.960155>,  <12.956912, 20.481495, 18.066847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794389, 20.622219, 17.960155>,  <12.523517, 20.856760, 17.782337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794389, 20.622219, 17.960155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237788, -0.746119, -0.621903,
		0.696337, 0.315432, -0.644684,
		0.677179, -0.586352, 0.444544,
		12.997542, 20.446314, 18.093519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.975840, 20.464554, 17.246929>,  <12.523517, 20.856760, 17.782337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.975840, 20.464554, 17.246929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.980451, 20.257786, 17.589312>,  <12.983217, 20.133724, 17.794741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.980451, 20.257786, 17.589312>,  <12.975840, 20.464554, 17.246929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.980451, 20.257786, 17.589312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357420, -0.801590, -0.479274,
		0.933873, -0.300410, -0.193999,
		0.011529, -0.516920, 0.855956,
		12.983910, 20.102711, 17.846098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.089078, 19.781687, 17.100100>,  <12.975840, 20.464554, 17.246929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.089078, 19.781687, 17.100100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.952154, 19.727488, 17.472006>,  <12.870000, 19.694967, 17.695150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.952154, 19.727488, 17.472006>,  <13.089078, 19.781687, 17.100100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.952154, 19.727488, 17.472006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247168, -0.941709, -0.228239,
		0.906495, -0.307937, 0.288863,
		-0.342308, -0.135500, 0.929766,
		12.849462, 19.686838, 17.750937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.400953, 19.176199, 17.442987>,  <13.089078, 19.781687, 17.100100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.400953, 19.176199, 17.442987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049796, 19.250948, 17.619341>,  <12.839102, 19.295797, 17.725153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049796, 19.250948, 17.619341>,  <13.400953, 19.176199, 17.442987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049796, 19.250948, 17.619341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330550, -0.902654, -0.275595,
		0.346466, -0.387678, 0.854205,
		-0.877894, 0.186874, 0.440886,
		12.786427, 19.307011, 17.751606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.172634, 18.407621, 17.622477>,  <13.400953, 19.176199, 17.442987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.172634, 18.407621, 17.622477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847057, 18.637297, 17.657818>,  <12.651711, 18.775103, 17.679022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847057, 18.637297, 17.657818>,  <13.172634, 18.407621, 17.622477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847057, 18.637297, 17.657818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572477, -0.766867, -0.290145,
		-0.098843, -0.286741, 0.952895,
		-0.813941, 0.574190, 0.088353,
		12.602875, 18.809553, 17.684324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.555030, 18.043247, 17.929989>,  <13.172634, 18.407621, 17.622477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.555030, 18.043247, 17.929989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.427860, 18.344833, 17.700047>,  <12.351559, 18.525785, 17.562080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.427860, 18.344833, 17.700047>,  <12.555030, 18.043247, 17.929989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.427860, 18.344833, 17.700047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302641, -0.655297, -0.692094,
		-0.898517, -0.046058, 0.436515,
		-0.317924, 0.753966, -0.574856,
		12.332483, 18.571024, 17.527590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.166856, 18.098911, 18.556765>,  <12.555030, 18.043247, 17.929989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.166856, 18.098911, 18.556765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.101805, 17.707108, 18.604284>,  <12.062774, 17.472025, 18.632797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.101805, 17.707108, 18.604284>,  <12.166856, 18.098911, 18.556765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.101805, 17.707108, 18.604284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580495, 0.002380, 0.814260,
		-0.797858, 0.201385, 0.568213,
		-0.162627, -0.979509, 0.118801,
		12.053017, 17.413254, 18.639925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.943436, 17.830349, 19.265501>,  <12.166856, 18.098911, 18.556765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.943436, 17.830349, 19.265501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147582, 17.527552, 19.102287>,  <12.270070, 17.345873, 19.004360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147582, 17.527552, 19.102287>,  <11.943436, 17.830349, 19.265501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.147582, 17.527552, 19.102287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373281, -0.232441, 0.898127,
		-0.774718, -0.610684, 0.163941,
		0.510365, -0.756992, -0.408033,
		12.300692, 17.300453, 18.979877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.865385, 17.323414, 19.592253>,  <11.943436, 17.830349, 19.265501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.865385, 17.323414, 19.592253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223640, 17.231133, 19.440144>,  <12.438594, 17.175764, 19.348879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223640, 17.231133, 19.440144>,  <11.865385, 17.323414, 19.592253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.223640, 17.231133, 19.440144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383305, -0.033354, 0.923019,
		-0.225630, -0.972452, 0.058557,
		0.895639, -0.230706, -0.380271,
		12.492332, 17.161921, 19.326063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.117456, 16.801535, 20.024029>,  <11.865385, 17.323414, 19.592253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.117456, 16.801535, 20.024029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.448360, 16.952719, 19.857759>,  <12.646903, 17.043430, 19.757998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.448360, 16.952719, 19.857759>,  <12.117456, 16.801535, 20.024029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.448360, 16.952719, 19.857759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487334, -0.114616, 0.865661,
		0.279545, -0.918699, -0.279011,
		0.827261, 0.377963, -0.415673,
		12.696539, 17.066107, 19.733057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.744024, 16.394014, 20.294689>,  <12.117456, 16.801535, 20.024029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.744024, 16.394014, 20.294689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884788, 16.742723, 20.158354>,  <12.969245, 16.951950, 20.076553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884788, 16.742723, 20.158354>,  <12.744024, 16.394014, 20.294689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.884788, 16.742723, 20.158354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691621, 0.003194, 0.722254,
		0.630731, -0.489897, -0.601814,
		0.351908, 0.871775, -0.340837,
		12.990360, 17.004255, 20.056103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.535391, 16.295517, 20.255650>,  <12.744024, 16.394014, 20.294689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.535391, 16.295517, 20.255650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412121, 16.674801, 20.286436>,  <13.338159, 16.902372, 20.304909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412121, 16.674801, 20.286436>,  <13.535391, 16.295517, 20.255650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.412121, 16.674801, 20.286436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601018, 0.131343, 0.788370,
		0.737432, 0.289213, -0.610369,
		-0.308175, 0.948211, 0.076966,
		13.319669, 16.959265, 20.309526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.169817, 16.628897, 20.407749>,  <13.535391, 16.295517, 20.255650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.169817, 16.628897, 20.407749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909817, 16.921833, 20.488918>,  <13.753817, 17.097595, 20.537619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909817, 16.921833, 20.488918>,  <14.169817, 16.628897, 20.407749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909817, 16.921833, 20.488918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605292, 0.337481, 0.720922,
		0.459478, 0.591427, -0.662642,
		-0.650002, 0.732340, 0.202920,
		13.714816, 17.141535, 20.549795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.562105, 17.315435, 20.351013>,  <14.169817, 16.628897, 20.407749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.562105, 17.315435, 20.351013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.238715, 17.377287, 20.578156>,  <14.044682, 17.414398, 20.714441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.238715, 17.377287, 20.578156>,  <14.562105, 17.315435, 20.351013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.238715, 17.377287, 20.578156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575347, 0.410741, 0.707296,
		-0.123872, 0.898544, -0.421039,
		-0.808475, 0.154629, 0.567854,
		13.996173, 17.423676, 20.748512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780151, 17.815126, 20.693787>,  <14.562105, 17.315435, 20.351013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780151, 17.815126, 20.693787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.465229, 17.720028, 20.921339>,  <14.276276, 17.662970, 21.057871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.465229, 17.720028, 20.921339>,  <14.780151, 17.815126, 20.693787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.465229, 17.720028, 20.921339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377368, 0.543851, 0.749546,
		-0.487587, 0.804800, -0.338461,
		-0.787307, -0.237745, 0.568881,
		14.229037, 17.648705, 21.092003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.460482, 18.448511, 20.961195>,  <14.780151, 17.815126, 20.693787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.460482, 18.448511, 20.961195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.429434, 18.136419, 21.209457>,  <14.410805, 17.949163, 21.358416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.429434, 18.136419, 21.209457>,  <14.460482, 18.448511, 20.961195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429434, 18.136419, 21.209457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475236, 0.518302, 0.710995,
		-0.876428, 0.350145, 0.330564,
		-0.077620, -0.780232, 0.620656,
		14.406148, 17.902349, 21.395655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536444, 18.686306, 21.625042>,  <14.460482, 18.448511, 20.961195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536444, 18.686306, 21.625042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505760, 18.303288, 21.736200>,  <14.487350, 18.073477, 21.802895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505760, 18.303288, 21.736200>,  <14.536444, 18.686306, 21.625042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.505760, 18.303288, 21.736200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369912, 0.231493, 0.899764,
		-0.925895, 0.171816, 0.336450,
		-0.076708, -0.957544, 0.277895,
		14.482748, 18.016024, 21.819569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192726, 18.778200, 22.152592>,  <14.536444, 18.686306, 21.625042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.192726, 18.778200, 22.152592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371160, 18.423746, 22.202826>,  <14.478220, 18.211073, 22.232965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371160, 18.423746, 22.202826>,  <14.192726, 18.778200, 22.152592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371160, 18.423746, 22.202826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335852, 0.295804, 0.894261,
		-0.829586, -0.356738, 0.429564,
		0.446083, -0.886137, 0.125584,
		14.504985, 18.157906, 22.240501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109328, 18.738241, 22.841846>,  <14.192726, 18.778200, 22.152592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109328, 18.738241, 22.841846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.387088, 18.469879, 22.737774>,  <14.553743, 18.308861, 22.675331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.387088, 18.469879, 22.737774>,  <14.109328, 18.738241, 22.841846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.387088, 18.469879, 22.737774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405123, 0.065671, 0.911901,
		-0.594715, -0.738628, 0.317401,
		0.694399, -0.670907, -0.260179,
		14.595407, 18.268606, 22.659719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.146053, 18.337952, 23.424934>,  <14.109328, 18.738241, 22.841846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.146053, 18.337952, 23.424934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490533, 18.285385, 23.228540>,  <14.697221, 18.253845, 23.110704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490533, 18.285385, 23.228540>,  <14.146053, 18.337952, 23.424934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490533, 18.285385, 23.228540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493275, -0.016814, 0.869711,
		-0.122551, -0.991184, 0.050346,
		0.861198, -0.131419, -0.490987,
		14.748892, 18.245960, 23.081244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488830, 17.766125, 23.893896>,  <14.146053, 18.337952, 23.424934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488830, 17.766125, 23.893896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772867, 17.934637, 23.668228>,  <14.943290, 18.035744, 23.532827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.772867, 17.934637, 23.668228>,  <14.488830, 17.766125, 23.893896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.772867, 17.934637, 23.668228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612612, 0.025332, 0.789978,
		0.347094, -0.906577, -0.240093,
		0.710094, 0.421281, -0.564172,
		14.985895, 18.061022, 23.498976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.088315, 17.410559, 23.950058>,  <14.488830, 17.766125, 23.893896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.088315, 17.410559, 23.950058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.218355, 17.774359, 23.846428>,  <15.296379, 17.992640, 23.784250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.218355, 17.774359, 23.846428>,  <15.088315, 17.410559, 23.950058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.218355, 17.774359, 23.846428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632227, -0.005292, 0.774765,
		0.703277, -0.415671, -0.576731,
		0.325100, 0.909500, -0.259077,
		15.315886, 18.047209, 23.768705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786054, 17.405306, 24.120111>,  <15.088315, 17.410559, 23.950058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786054, 17.405306, 24.120111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.737807, 17.797697, 24.059275>,  <15.708859, 18.033133, 24.022772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.737807, 17.797697, 24.059275>,  <15.786054, 17.405306, 24.120111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737807, 17.797697, 24.059275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615870, 0.194109, 0.763561,
		0.778560, -0.001571, -0.627569,
		-0.120617, 0.980979, -0.152093,
		15.701622, 18.091991, 24.013647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492004, 17.714798, 23.943390>,  <15.786054, 17.405306, 24.120111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492004, 17.714798, 23.943390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275276, 18.018663, 24.087244>,  <16.145239, 18.200983, 24.173557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275276, 18.018663, 24.087244>,  <16.492004, 17.714798, 23.943390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.275276, 18.018663, 24.087244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772500, 0.281504, 0.569209,
		0.331168, 0.586230, -0.739366,
		-0.541822, 0.759664, 0.359637,
		16.112730, 18.246563, 24.195135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.937988, 18.280682, 23.938705>,  <16.492004, 17.714798, 23.943390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.937988, 18.280682, 23.938705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.639086, 18.402876, 24.174770>,  <16.459745, 18.476192, 24.316408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.639086, 18.402876, 24.174770>,  <16.937988, 18.280682, 23.938705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.639086, 18.402876, 24.174770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660798, 0.435666, 0.611180,
		-0.070407, 0.846684, -0.527417,
		-0.747255, 0.305485, 0.590161,
		16.414909, 18.494522, 24.351818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165039, 18.859367, 24.159582>,  <16.937988, 18.280682, 23.938705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165039, 18.859367, 24.159582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.878735, 18.738810, 24.411564>,  <16.706951, 18.666475, 24.562754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.878735, 18.738810, 24.411564>,  <17.165039, 18.859367, 24.159582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.878735, 18.738810, 24.411564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589136, 0.223753, 0.776436,
		-0.374969, 0.926874, 0.017410,
		-0.715763, -0.301396, 0.629955,
		16.664005, 18.648390, 24.600550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084253, 19.340246, 24.609198>,  <17.165039, 18.859367, 24.159582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.084253, 19.340246, 24.609198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.959639, 19.006893, 24.791809>,  <16.884871, 18.806881, 24.901377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.959639, 19.006893, 24.791809>,  <17.084253, 19.340246, 24.609198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959639, 19.006893, 24.791809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666029, 0.151165, 0.730448,
		-0.677754, 0.531624, 0.507963,
		-0.311537, -0.833382, 0.456529,
		16.866177, 18.756878, 24.928768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983688, 19.566313, 25.280485>,  <17.084253, 19.340246, 24.609198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983688, 19.566313, 25.280485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.011921, 19.169315, 25.320427>,  <17.028860, 18.931116, 25.344393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.011921, 19.169315, 25.320427>,  <16.983688, 19.566313, 25.280485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011921, 19.169315, 25.320427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567608, 0.122280, 0.814167,
		-0.820268, -0.000786, 0.571979,
		0.070582, -0.992495, 0.099856,
		17.033096, 18.871567, 25.350384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986986, 19.479084, 25.976171>,  <16.983688, 19.566313, 25.280485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986986, 19.479084, 25.976171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.102554, 19.113401, 25.862505>,  <17.171896, 18.893991, 25.794306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.102554, 19.113401, 25.862505>,  <16.986986, 19.479084, 25.976171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102554, 19.113401, 25.862505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742808, 0.026816, 0.668967,
		-0.603954, -0.404360, 0.686828,
		0.288921, -0.914207, -0.284166,
		17.189230, 18.839140, 25.777254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028099, 19.143108, 26.653580>,  <16.986986, 19.479084, 25.976171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028099, 19.143108, 26.653580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.260315, 18.974491, 26.374933>,  <17.399645, 18.873320, 26.207747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.260315, 18.974491, 26.374933>,  <17.028099, 19.143108, 26.653580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.260315, 18.974491, 26.374933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797702, 0.122944, 0.590387,
		-0.163229, -0.898435, 0.407641,
		0.580541, -0.421544, -0.696615,
		17.434477, 18.848028, 26.165949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408323, 18.596626, 27.007191>,  <17.028099, 19.143108, 26.653580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408323, 18.596626, 27.007191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.586901, 18.700935, 26.664803>,  <17.694048, 18.763521, 26.459370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.586901, 18.700935, 26.664803>,  <17.408323, 18.596626, 27.007191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.586901, 18.700935, 26.664803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863861, 0.123810, 0.488278,
		0.233308, -0.957428, -0.169998,
		0.446444, 0.260774, -0.855970,
		17.720835, 18.779167, 26.408012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087215, 18.242340, 27.108490>,  <17.408323, 18.596626, 27.007191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.087215, 18.242340, 27.108490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.116659, 18.516428, 26.818645>,  <18.134325, 18.680880, 26.644739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.116659, 18.516428, 26.818645>,  <18.087215, 18.242340, 27.108490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.116659, 18.516428, 26.818645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834195, 0.355877, 0.421273,
		0.546535, -0.635475, -0.545409,
		0.073610, 0.685218, -0.724609,
		18.138742, 18.721992, 26.601263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.774384, 18.327282, 27.056479>,  <18.087215, 18.242340, 27.108490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.774384, 18.327282, 27.056479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621078, 18.656538, 26.888884>,  <18.529095, 18.854092, 26.788326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621078, 18.656538, 26.888884>,  <18.774384, 18.327282, 27.056479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621078, 18.656538, 26.888884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842394, 0.497552, 0.206918,
		0.378790, -0.273646, -0.884102,
		-0.383264, 0.823140, -0.418985,
		18.506100, 18.903481, 26.763187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.328978, 18.587294, 26.667969>,  <18.774384, 18.327282, 27.056479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.328978, 18.587294, 26.667969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.080601, 18.898142, 26.708982>,  <18.931576, 19.084652, 26.733591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.080601, 18.898142, 26.708982>,  <19.328978, 18.587294, 26.667969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.080601, 18.898142, 26.708982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761661, 0.567265, 0.313182,
		0.185217, 0.272563, -0.944142,
		-0.620941, 0.777123, 0.102533,
		18.894318, 19.131279, 26.739742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
