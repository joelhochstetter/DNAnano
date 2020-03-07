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
	<4.973684, -0.814181, 0.503756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.003887, -0.516882, 0.237859>,  <5.022009, -0.338503, 0.078321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.003887, -0.516882, 0.237859>,  <4.973684, -0.814181, 0.503756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.003887, -0.516882, 0.237859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105446, 0.668860, 0.735872,
		0.991554, 0.014531, 0.128877,
		0.075508, 0.743247, -0.664743,
		5.026540, -0.293908, 0.038436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.422791, -0.382300, 0.735989>,  <4.973684, -0.814181, 0.503756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.422791, -0.382300, 0.735989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.124218, -0.201695, 0.540450>,  <4.945074, -0.093332, 0.423126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.124218, -0.201695, 0.540450>,  <5.422791, -0.382300, 0.735989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.124218, -0.201695, 0.540450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277014, 0.457108, 0.845172,
		0.605063, 0.766283, -0.216125,
		-0.746433, 0.451512, -0.488850,
		4.900288, -0.066241, 0.393795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.482172, 0.215768, 0.950610>,  <5.422791, -0.382300, 0.735989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.482172, 0.215768, 0.950610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.104881, 0.118120, 0.860517>,  <4.878507, 0.059532, 0.806461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.104881, 0.118120, 0.860517>,  <5.482172, 0.215768, 0.950610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.104881, 0.118120, 0.860517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270698, 0.172029, 0.947169,
		-0.192475, 0.954365, -0.228345,
		-0.943226, -0.244119, -0.225234,
		4.821913, 0.044885, 0.792947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.031005, 0.694154, 1.263633>,  <5.482172, 0.215768, 0.950610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.031005, 0.694154, 1.263633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.824577, 0.359608, 1.189699>,  <4.700720, 0.158880, 1.145338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.824577, 0.359608, 1.189699>,  <5.031005, 0.694154, 1.263633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.824577, 0.359608, 1.189699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301657, -0.024500, 0.953102,
		-0.801670, 0.547625, -0.239652,
		-0.516070, -0.836365, -0.184835,
		4.669756, 0.108698, 1.134248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.328110, 0.814007, 1.418524>,  <5.031005, 0.694154, 1.263633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.328110, 0.814007, 1.418524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.372536, 0.418431, 1.457840>,  <4.399191, 0.181085, 1.481429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.372536, 0.418431, 1.457840>,  <4.328110, 0.814007, 1.418524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.372536, 0.418431, 1.457840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435232, 0.040510, 0.899407,
		-0.893442, -0.142671, -0.425919,
		0.111065, -0.988941, 0.098288,
		4.405855, 0.121748, 1.487326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.680814, 0.549358, 1.609581>,  <4.328110, 0.814007, 1.418524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.680814, 0.549358, 1.609581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.955959, 0.284599, 1.728737>,  <4.121047, 0.125744, 1.800231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.955959, 0.284599, 1.728737>,  <3.680814, 0.549358, 1.609581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.955959, 0.284599, 1.728737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435869, -0.048501, 0.898703,
		-0.580400, -0.748025, -0.321862,
		0.687863, -0.661896, 0.297891,
		4.162318, 0.086030, 1.818105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.266411, 0.095463, 1.939170>,  <3.680814, 0.549358, 1.609581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.266411, 0.095463, 1.939170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.631191, -0.000742, 2.072137>,  <3.850059, -0.058465, 2.151918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.631191, -0.000742, 2.072137>,  <3.266411, 0.095463, 1.939170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.631191, -0.000742, 2.072137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369797, -0.130797, 0.919860,
		-0.177757, -0.961793, -0.208221,
		0.911950, -0.240511, 0.332418,
		3.904776, -0.072895, 2.171863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.215050, -0.474812, 2.437006>,  <3.266411, 0.095463, 1.939170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.215050, -0.474812, 2.437006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.554707, -0.279687, 2.517996>,  <3.758501, -0.162612, 2.566590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.554707, -0.279687, 2.517996>,  <3.215050, -0.474812, 2.437006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.554707, -0.279687, 2.517996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324538, 0.179459, 0.928692,
		0.416693, -0.854303, 0.310700,
		0.849142, 0.487813, 0.202474,
		3.809449, -0.133343, 2.578739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.481136, 5.979898, 3.515972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.678474, 5.650482, 3.627965>,  <3.796877, 5.452832, 3.695162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.678474, 5.650482, 3.627965>,  <3.481136, 5.979898, 3.515972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.678474, 5.650482, 3.627965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308637, -0.135205, -0.941522,
		0.813237, 0.550909, 0.187472,
		0.493345, -0.823541, 0.279984,
		3.826478, 5.403420, 3.711961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.116961, 6.081327, 3.391587>,  <3.481136, 5.979898, 3.515972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.116961, 6.081327, 3.391587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099068, 5.682135, 3.409609>,  <4.088332, 5.442619, 3.420423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099068, 5.682135, 3.409609>,  <4.116961, 6.081327, 3.391587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.099068, 5.682135, 3.409609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447419, -0.060338, -0.892287,
		0.893205, -0.019755, 0.449215,
		-0.044732, -0.997983, 0.045056,
		4.085648, 5.382740, 3.423126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.540905, 5.831923, 2.940248>,  <4.116961, 6.081327, 3.391587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.540905, 5.831923, 2.940248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352798, 5.484219, 3.001220>,  <4.239935, 5.275596, 3.037803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352798, 5.484219, 3.001220>,  <4.540905, 5.831923, 2.940248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.352798, 5.484219, 3.001220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461735, -0.389537, -0.796907,
		0.752098, -0.304376, 0.584555,
		-0.470265, -0.869262, 0.152429,
		4.211719, 5.223440, 3.046948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.998749, 5.287395, 2.826729>,  <4.540905, 5.831923, 2.940248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.998749, 5.287395, 2.826729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.630775, 5.147091, 2.756658>,  <4.409991, 5.062909, 2.714615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.630775, 5.147091, 2.756658>,  <4.998749, 5.287395, 2.826729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.630775, 5.147091, 2.756658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307083, -0.366810, -0.878152,
		0.243763, -0.861637, 0.445153,
		-0.919935, -0.350759, -0.175179,
		4.354795, 5.041863, 2.704104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.073808, 4.605373, 2.604047>,  <4.998749, 5.287395, 2.826729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.073808, 4.605373, 2.604047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.715050, 4.721317, 2.470444>,  <4.499795, 4.790884, 2.390283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.715050, 4.721317, 2.470444>,  <5.073808, 4.605373, 2.604047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.715050, 4.721317, 2.470444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272951, -0.231421, -0.933779,
		-0.347962, -0.928668, 0.128442,
		-0.896895, 0.289861, -0.334006,
		4.445981, 4.808275, 2.370242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.859544, 4.014045, 2.177376>,  <5.073808, 4.605373, 2.604047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.859544, 4.014045, 2.177376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.654167, 4.341120, 2.073249>,  <4.530941, 4.537364, 2.010773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.654167, 4.341120, 2.073249>,  <4.859544, 4.014045, 2.177376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.654167, 4.341120, 2.073249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231922, -0.159840, -0.959512,
		-0.826190, -0.553027, -0.107571,
		-0.513442, 0.817687, -0.260318,
		4.500134, 4.586426, 1.995154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.571854, 3.791830, 1.581329>,  <4.859544, 4.014045, 2.177376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.571854, 3.791830, 1.581329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.502075, 4.181589, 1.524595>,  <4.460208, 4.415444, 1.490554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.502075, 4.181589, 1.524595>,  <4.571854, 3.791830, 1.581329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.502075, 4.181589, 1.524595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227229, -0.100320, -0.968660,
		-0.958089, -0.201210, -0.203911,
		-0.174448, 0.974398, -0.141836,
		4.449741, 4.473908, 1.482044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.140831, 3.888237, 0.981929>,  <4.571854, 3.791830, 1.581329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.140831, 3.888237, 0.981929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.321587, 4.240561, 1.038458>,  <4.430040, 4.451955, 1.072375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.321587, 4.240561, 1.038458>,  <4.140831, 3.888237, 0.981929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.321587, 4.240561, 1.038458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091403, 0.111871, -0.989510,
		-0.887379, 0.460066, -0.029955,
		0.451889, 0.880809, 0.141323,
		4.457153, 4.504803, 1.080855>
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
