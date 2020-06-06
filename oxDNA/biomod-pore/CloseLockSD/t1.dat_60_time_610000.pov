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
	<4.358629, 14.690510, 14.913846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.378362, 15.017813, 15.142939>,  <4.390202, 15.214194, 15.280395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.378362, 15.017813, 15.142939>,  <4.358629, 14.690510, 14.913846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.378362, 15.017813, 15.142939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135709, 0.562620, -0.815501,
		-0.989520, 0.117955, -0.083290,
		0.049332, 0.818257, 0.572732,
		4.393161, 15.263289, 15.314758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.156645, 15.275975, 14.490026>,  <4.358629, 14.690510, 14.913846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.156645, 15.275975, 14.490026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.352418, 15.459209, 14.786839>,  <4.469882, 15.569150, 14.964927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.352418, 15.459209, 14.786839>,  <4.156645, 15.275975, 14.490026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.352418, 15.459209, 14.786839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432917, 0.611019, -0.662750,
		-0.756993, 0.645611, 0.100739,
		0.489432, 0.458086, 0.742033,
		4.499248, 15.596635, 15.009449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.253183, 16.034800, 14.277458>,  <4.156645, 15.275975, 14.490026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.253183, 16.034800, 14.277458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.540693, 15.906975, 14.524438>,  <4.713199, 15.830279, 14.672626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.540693, 15.906975, 14.524438>,  <4.253183, 16.034800, 14.277458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.540693, 15.906975, 14.524438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671118, 0.550837, -0.496164,
		-0.181558, 0.771011, 0.610392,
		0.718775, -0.319562, 0.617449,
		4.756326, 15.811106, 14.709673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.507025, 16.454775, 14.670914>,  <4.253183, 16.034800, 14.277458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.507025, 16.454775, 14.670914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.801460, 16.196482, 14.589720>,  <4.978122, 16.041506, 14.541003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.801460, 16.196482, 14.589720>,  <4.507025, 16.454775, 14.670914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.801460, 16.196482, 14.589720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506673, 0.724481, -0.467343,
		0.448837, 0.241158, 0.860458,
		0.736089, -0.645732, -0.202986,
		5.022287, 16.002762, 14.528824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.115483, 16.625252, 14.996526>,  <4.507025, 16.454775, 14.670914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.115483, 16.625252, 14.996526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.239650, 16.434019, 14.667873>,  <5.314151, 16.319279, 14.470682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.239650, 16.434019, 14.667873>,  <5.115483, 16.625252, 14.996526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.239650, 16.434019, 14.667873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540776, 0.799655, -0.260984,
		0.781793, -0.363304, 0.506763,
		0.310419, -0.478081, -0.821631,
		5.332776, 16.290594, 14.421384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.812222, 16.856838, 14.952979>,  <5.115483, 16.625252, 14.996526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.812222, 16.856838, 14.952979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.721655, 16.702307, 14.595324>,  <5.667315, 16.609587, 14.380731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.721655, 16.702307, 14.595324>,  <5.812222, 16.856838, 14.952979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.721655, 16.702307, 14.595324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613929, 0.656073, -0.438930,
		0.756193, -0.648318, 0.088634,
		-0.226416, -0.386331, -0.894139,
		5.653730, 16.586407, 14.327082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.431345, 16.964720, 14.675015>,  <5.812222, 16.856838, 14.952979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.431345, 16.964720, 14.675015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.223112, 16.863289, 14.348901>,  <6.098171, 16.802431, 14.153233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.223112, 16.863289, 14.348901>,  <6.431345, 16.964720, 14.675015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.223112, 16.863289, 14.348901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615349, 0.550529, -0.564148,
		0.591892, -0.795372, -0.130561,
		-0.520586, -0.253574, -0.815286,
		6.066936, 16.787216, 14.104315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.992337, 16.783754, 14.245840>,  <6.431345, 16.964720, 14.675015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.992337, 16.783754, 14.245840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.664228, 16.877951, 14.037341>,  <6.467363, 16.934469, 13.912242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.664228, 16.877951, 14.037341>,  <6.992337, 16.783754, 14.245840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.664228, 16.877951, 14.037341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548311, 0.583161, -0.599399,
		0.162818, -0.777475, -0.607472,
		-0.820271, 0.235490, -0.521247,
		6.418147, 16.948597, 13.880967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.182550, 16.730377, 13.647051>,  <6.992337, 16.783754, 14.245840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.182550, 16.730377, 13.647051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.863536, 16.961601, 13.578019>,  <6.672127, 17.100336, 13.536600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.863536, 16.961601, 13.578019>,  <7.182550, 16.730377, 13.647051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.863536, 16.961601, 13.578019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533928, 0.543201, -0.647961,
		-0.280815, -0.608917, -0.741864,
		-0.797536, 0.578060, -0.172579,
		6.624275, 17.135019, 13.526245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.155027, 16.731888, 12.976961>,  <7.182550, 16.730377, 13.647051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.155027, 16.731888, 12.976961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.944186, 17.050735, 13.094787>,  <6.817682, 17.242044, 13.165483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.944186, 17.050735, 13.094787>,  <7.155027, 16.731888, 12.976961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.944186, 17.050735, 13.094787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413003, 0.543227, -0.730981,
		-0.742693, -0.263645, -0.615548,
		-0.527102, 0.797117, 0.294565,
		6.786056, 17.289871, 13.183156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.779302, 16.992926, 12.427303>,  <7.155027, 16.731888, 12.976961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.779302, 16.992926, 12.427303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.798000, 17.304855, 12.677004>,  <6.809218, 17.492014, 12.826824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.798000, 17.304855, 12.677004>,  <6.779302, 16.992926, 12.427303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.798000, 17.304855, 12.677004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376055, 0.565220, -0.734240,
		-0.925418, 0.269075, -0.266835,
		0.046745, 0.779823, 0.624252,
		6.812023, 17.538803, 12.864280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.691542, 17.604445, 12.006546>,  <6.779302, 16.992926, 12.427303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.691542, 17.604445, 12.006546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.832106, 17.749346, 12.351865>,  <6.916445, 17.836287, 12.559056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.832106, 17.749346, 12.351865>,  <6.691542, 17.604445, 12.006546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.832106, 17.749346, 12.351865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483750, 0.719217, -0.498710,
		-0.801558, 0.592873, 0.077501,
		0.351412, 0.362254, 0.863297,
		6.937530, 17.858023, 12.610854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.705324, 18.352655, 11.903380>,  <6.691542, 17.604445, 12.006546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.705324, 18.352655, 11.903380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.969253, 18.260805, 12.189570>,  <7.127611, 18.205694, 12.361284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.969253, 18.260805, 12.189570>,  <6.705324, 18.352655, 11.903380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.969253, 18.260805, 12.189570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615717, 0.711016, -0.339630,
		-0.430727, 0.664626, 0.610529,
		0.659823, -0.229625, 0.715476,
		7.167200, 18.191917, 12.404213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.814793, 18.955713, 12.333171>,  <6.705324, 18.352655, 11.903380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.814793, 18.955713, 12.333171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.148935, 18.739250, 12.371807>,  <7.349421, 18.609373, 12.394989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.148935, 18.739250, 12.371807>,  <6.814793, 18.955713, 12.333171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.148935, 18.739250, 12.371807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537709, 0.767891, -0.348155,
		0.114236, 0.342771, 0.932448,
		0.835355, -0.541158, 0.096590,
		7.399542, 18.576902, 12.400784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.165635, 19.452341, 12.641719>,  <6.814793, 18.955713, 12.333171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.165635, 19.452341, 12.641719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.410847, 19.170498, 12.498768>,  <7.557974, 19.001392, 12.412997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.410847, 19.170498, 12.498768>,  <7.165635, 19.452341, 12.641719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.410847, 19.170498, 12.498768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638851, 0.708223, -0.300483,
		0.464827, -0.044106, 0.884302,
		0.613030, -0.704610, -0.357378,
		7.594756, 18.959114, 12.391554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.925586, 19.661312, 12.929148>,  <7.165635, 19.452341, 12.641719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.925586, 19.661312, 12.929148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.976874, 19.443977, 12.597281>,  <8.007648, 19.313576, 12.398162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.976874, 19.443977, 12.597281>,  <7.925586, 19.661312, 12.929148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.976874, 19.443977, 12.597281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810345, 0.539690, -0.228201,
		0.571752, -0.643055, 0.509490,
		0.128221, -0.543337, -0.829665,
		8.015341, 19.280975, 12.348382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.634282, 19.802717, 12.762959>,  <7.925586, 19.661312, 12.929148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.634282, 19.802717, 12.762959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.512291, 19.620420, 12.428466>,  <8.439096, 19.511042, 12.227770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.512291, 19.620420, 12.428466>,  <8.634282, 19.802717, 12.762959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.512291, 19.620420, 12.428466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812350, 0.333803, -0.478187,
		0.497068, -0.825150, 0.268421,
		-0.304977, -0.455743, -0.836234,
		8.420797, 19.483698, 12.177596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.168408, 19.237066, 12.618650>,  <8.634282, 19.802717, 12.762959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.168408, 19.237066, 12.618650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.973866, 19.354710, 12.289540>,  <8.857141, 19.425297, 12.092074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.973866, 19.354710, 12.289540>,  <9.168408, 19.237066, 12.618650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.973866, 19.354710, 12.289540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873691, 0.175635, -0.453670,
		0.011079, -0.939496, -0.342382,
		-0.486355, 0.294110, -0.822775,
		8.827960, 19.442942, 12.042707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.576386, 19.029385, 12.117372>,  <9.168408, 19.237066, 12.618650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.576386, 19.029385, 12.117372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.354180, 19.310152, 11.939063>,  <9.220857, 19.478613, 11.832078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.354180, 19.310152, 11.939063>,  <9.576386, 19.029385, 12.117372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.354180, 19.310152, 11.939063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789899, 0.278012, -0.546598,
		-0.259739, -0.655757, -0.708885,
		-0.555514, 0.701920, -0.445771,
		9.187526, 19.520729, 11.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.622251, 18.980818, 11.332435>,  <9.576386, 19.029385, 12.117372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.622251, 18.980818, 11.332435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481444, 19.353863, 11.364242>,  <9.396960, 19.577690, 11.383326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.481444, 19.353863, 11.364242>,  <9.622251, 18.980818, 11.332435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.481444, 19.353863, 11.364242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648492, 0.304269, -0.697766,
		-0.674939, -0.194058, -0.711898,
		-0.352016, 0.932610, 0.079518,
		9.375839, 19.633646, 11.388097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.478086, 19.154648, 10.630120>,  <9.622251, 18.980818, 11.332435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.478086, 19.154648, 10.630120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.519807, 19.500597, 10.826533>,  <9.544840, 19.708166, 10.944382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.519807, 19.500597, 10.826533>,  <9.478086, 19.154648, 10.630120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.519807, 19.500597, 10.826533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532130, 0.368580, -0.762225,
		-0.840214, 0.340795, -0.421782,
		0.104302, 0.864874, 0.491033,
		9.551098, 19.760059, 10.973844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.500513, 19.617798, 10.151187>,  <9.478086, 19.154648, 10.630120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.500513, 19.617798, 10.151187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.649218, 19.831367, 10.454955>,  <9.738441, 19.959509, 10.637217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.649218, 19.831367, 10.454955>,  <9.500513, 19.617798, 10.151187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.649218, 19.831367, 10.454955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582852, 0.502472, -0.638596,
		-0.722549, 0.680035, -0.124399,
		0.371761, 0.533923, 0.759421,
		9.760746, 19.991545, 10.682781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.471117, 20.347549, 9.973729>,  <9.500513, 19.617798, 10.151187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.471117, 20.347549, 9.973729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.760659, 20.318043, 10.248128>,  <9.934384, 20.300339, 10.412767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.760659, 20.318043, 10.248128>,  <9.471117, 20.347549, 9.973729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.760659, 20.318043, 10.248128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583406, 0.596237, -0.551488,
		-0.368336, 0.799413, 0.474624,
		0.723854, -0.073765, 0.685998,
		9.977816, 20.295914, 10.453927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.823463, 20.925447, 9.867692>,  <9.471117, 20.347549, 9.973729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.823463, 20.925447, 9.867692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.082854, 20.710625, 10.083488>,  <10.238489, 20.581732, 10.212966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.082854, 20.710625, 10.083488>,  <9.823463, 20.925447, 9.867692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.082854, 20.710625, 10.083488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751821, 0.340738, -0.564502,
		0.119344, 0.771667, 0.624730,
		0.648477, -0.537055, 0.539490,
		10.277397, 20.549509, 10.245336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.410735, 21.291275, 9.856664>,  <9.823463, 20.925447, 9.867692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.410735, 21.291275, 9.856664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.531346, 20.917025, 9.930075>,  <10.603713, 20.692474, 9.974121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.531346, 20.917025, 9.930075>,  <10.410735, 21.291275, 9.856664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.531346, 20.917025, 9.930075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721460, 0.098048, -0.685480,
		0.623359, 0.339100, 0.704581,
		0.301529, -0.935627, 0.183528,
		10.621805, 20.636337, 9.985133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.044989, 21.428129, 9.874516>,  <10.410735, 21.291275, 9.856664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.044989, 21.428129, 9.874516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034518, 21.033186, 9.811987>,  <11.028236, 20.796219, 9.774469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034518, 21.033186, 9.811987>,  <11.044989, 21.428129, 9.874516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.034518, 21.033186, 9.811987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839489, 0.063190, -0.539690,
		0.542745, -0.145357, 0.827223,
		-0.026175, -0.987359, -0.156321,
		11.026666, 20.736979, 9.765091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.665726, 21.077358, 10.101839>,  <11.044989, 21.428129, 9.874516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.665726, 21.077358, 10.101839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.500799, 20.906731, 9.779836>,  <11.401843, 20.804354, 9.586634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.500799, 20.906731, 9.779836>,  <11.665726, 21.077358, 10.101839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.500799, 20.906731, 9.779836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906806, -0.107056, -0.407728,
		0.087743, -0.898098, 0.430954,
		-0.412315, -0.426567, -0.805007,
		11.377105, 20.778761, 9.538334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.857704, 20.384052, 9.841350>,  <11.665726, 21.077358, 10.101839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.857704, 20.384052, 9.841350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787481, 20.615801, 9.522977>,  <11.745348, 20.754850, 9.331953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.787481, 20.615801, 9.522977>,  <11.857704, 20.384052, 9.841350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.787481, 20.615801, 9.522977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874970, -0.278742, -0.395891,
		-0.451228, -0.765917, -0.458000,
		-0.175556, 0.579373, -0.795931,
		11.734815, 20.789612, 9.284198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.390930, 20.108858, 10.340324>,  <11.857704, 20.384052, 9.841350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.390930, 20.108858, 10.340324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.477680, 20.348457, 10.648653>,  <12.529731, 20.492216, 10.833651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.477680, 20.348457, 10.648653>,  <12.390930, 20.108858, 10.340324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.477680, 20.348457, 10.648653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631219, -0.688384, 0.357338,
		0.744666, 0.409060, -0.527392,
		0.216876, 0.598997, 0.770823,
		12.542743, 20.528156, 10.879900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.172016, 19.963808, 10.533828>,  <12.390930, 20.108858, 10.340324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.172016, 19.963808, 10.533828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.949310, 20.105324, 10.834453>,  <12.815687, 20.190233, 11.014828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.949310, 20.105324, 10.834453>,  <13.172016, 19.963808, 10.533828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.949310, 20.105324, 10.834453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382145, -0.694247, 0.609907,
		0.737550, 0.626780, 0.251332,
		-0.556764, 0.353792, 0.751562,
		12.782281, 20.211462, 11.059921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526168, 20.042669, 11.197236>,  <13.172016, 19.963808, 10.533828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526168, 20.042669, 11.197236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.135357, 20.004375, 11.273398>,  <12.900870, 19.981400, 11.319096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.135357, 20.004375, 11.273398>,  <13.526168, 20.042669, 11.197236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.135357, 20.004375, 11.273398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205285, -0.662742, 0.720160,
		0.057246, 0.742703, 0.667169,
		-0.977027, -0.095733, 0.190405,
		12.842249, 19.975655, 11.330520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893862, 19.666168, 11.631618>,  <13.526168, 20.042669, 11.197236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893862, 19.666168, 11.631618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121246, 19.337353, 11.618346>,  <14.257677, 19.140062, 11.610383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121246, 19.337353, 11.618346>,  <13.893862, 19.666168, 11.631618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.121246, 19.337353, 11.618346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721462, -0.517480, 0.460117,
		-0.395404, -0.237621, -0.887238,
		0.568462, -0.822040, -0.033179,
		14.291785, 19.090740, 11.608393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.574633, 19.060320, 11.356183>,  <13.893862, 19.666168, 11.631618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.574633, 19.060320, 11.356183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.861332, 18.992765, 11.626812>,  <14.033352, 18.952232, 11.789189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.861332, 18.992765, 11.626812>,  <13.574633, 19.060320, 11.356183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861332, 18.992765, 11.626812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689620, -0.315569, 0.651798,
		0.103425, -0.933752, -0.342651,
		0.716749, -0.168887, 0.676572,
		14.076357, 18.942099, 11.829783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.446557, 18.454639, 11.775111>,  <13.574633, 19.060320, 11.356183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.446557, 18.454639, 11.775111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.700093, 18.647816, 12.016777>,  <13.852215, 18.763721, 12.161777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.700093, 18.647816, 12.016777>,  <13.446557, 18.454639, 11.775111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.700093, 18.647816, 12.016777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547275, -0.271947, 0.791540,
		0.546568, -0.832353, 0.091931,
		0.633840, 0.482942, 0.604164,
		13.890245, 18.792698, 12.198027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.712597, 17.913364, 12.186878>,  <13.446557, 18.454639, 11.775111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.712597, 17.913364, 12.186878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.740623, 18.271976, 12.361840>,  <13.757440, 18.487144, 12.466817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.740623, 18.271976, 12.361840>,  <13.712597, 17.913364, 12.186878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.740623, 18.271976, 12.361840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432933, -0.367704, 0.823020,
		0.898699, -0.247033, 0.362374,
		0.070066, 0.896531, 0.437404,
		13.761643, 18.540936, 12.493061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.007176, 17.818623, 12.831999>,  <13.712597, 17.913364, 12.186878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.007176, 17.818623, 12.831999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.777890, 18.142130, 12.884641>,  <13.640319, 18.336233, 12.916226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.777890, 18.142130, 12.884641>,  <14.007176, 17.818623, 12.831999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.777890, 18.142130, 12.884641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370652, -0.399164, 0.838621,
		0.730781, 0.431930, 0.528578,
		-0.573215, 0.808767, 0.131605,
		13.605926, 18.384760, 12.924122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819947, 17.834854, 13.531525>,  <14.007176, 17.818623, 12.831999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819947, 17.834854, 13.531525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.550205, 18.052664, 13.332030>,  <13.388360, 18.183350, 13.212334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.550205, 18.052664, 13.332030>,  <13.819947, 17.834854, 13.531525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.550205, 18.052664, 13.332030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707132, -0.281742, 0.648526,
		0.212625, 0.790008, 0.575046,
		-0.674355, 0.544526, -0.498735,
		13.347898, 18.216022, 13.182410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.440404, 18.217714, 14.040217>,  <13.819947, 17.834854, 13.531525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.440404, 18.217714, 14.040217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215079, 18.195423, 13.710472>,  <13.079885, 18.182049, 13.512625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215079, 18.195423, 13.710472>,  <13.440404, 18.217714, 14.040217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.215079, 18.195423, 13.710472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755850, -0.368229, 0.541386,
		-0.333725, 0.928063, 0.165305,
		-0.563311, -0.055728, -0.824364,
		13.046086, 18.178705, 13.463163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.750419, 18.558933, 14.241959>,  <13.440404, 18.217714, 14.040217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.750419, 18.558933, 14.241959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.697142, 18.332157, 13.916791>,  <12.665175, 18.196091, 13.721690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.697142, 18.332157, 13.916791>,  <12.750419, 18.558933, 14.241959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.697142, 18.332157, 13.916791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744993, -0.483680, 0.459390,
		-0.653640, 0.666806, -0.357945,
		-0.133193, -0.566942, -0.812918,
		12.657184, 18.162075, 13.672915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.070046, 18.564413, 14.068809>,  <12.750419, 18.558933, 14.241959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.070046, 18.564413, 14.068809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165730, 18.246140, 13.846219>,  <12.223141, 18.055176, 13.712666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165730, 18.246140, 13.846219>,  <12.070046, 18.564413, 14.068809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.165730, 18.246140, 13.846219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788969, -0.493339, 0.366257,
		-0.565956, 0.351430, -0.745782,
		0.239209, -0.795684, -0.556476,
		12.237494, 18.007435, 13.679276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.506948, 18.471809, 13.499516>,  <12.070046, 18.564413, 14.068809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.506948, 18.471809, 13.499516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699327, 18.144911, 13.626511>,  <11.814754, 17.948772, 13.702708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699327, 18.144911, 13.626511>,  <11.506948, 18.471809, 13.499516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.699327, 18.144911, 13.626511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875741, -0.465150, 0.129277,
		0.042030, -0.340214, -0.939408,
		0.480947, -0.817245, 0.317489,
		11.843612, 17.899736, 13.721757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.070961, 17.951488, 13.331297>,  <11.506948, 18.471809, 13.499516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.070961, 17.951488, 13.331297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.333299, 17.711851, 13.515018>,  <11.490702, 17.568069, 13.625250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.333299, 17.711851, 13.515018>,  <11.070961, 17.951488, 13.331297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.333299, 17.711851, 13.515018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720636, -0.678075, 0.144560,
		0.224835, -0.425797, -0.876439,
		0.655845, -0.599092, 0.459300,
		11.530052, 17.532124, 13.652807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.944203, 17.331650, 13.070868>,  <11.070961, 17.951488, 13.331297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.944203, 17.331650, 13.070868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.098952, 17.249382, 13.430430>,  <11.191802, 17.200022, 13.646168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.098952, 17.249382, 13.430430>,  <10.944203, 17.331650, 13.070868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.098952, 17.249382, 13.430430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709306, -0.689282, 0.147565,
		0.589250, -0.694687, -0.412547,
		0.386873, -0.205670, 0.898904,
		11.215014, 17.187681, 13.700102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.862014, 16.693672, 13.089167>,  <10.944203, 17.331650, 13.070868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.862014, 16.693672, 13.089167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.920416, 16.810400, 13.467273>,  <10.955458, 16.880436, 13.694137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.920416, 16.810400, 13.467273>,  <10.862014, 16.693672, 13.089167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.920416, 16.810400, 13.467273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769421, -0.567101, 0.293918,
		0.621831, -0.770220, 0.141731,
		0.146006, 0.291818, 0.945265,
		10.964217, 16.897945, 13.750852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.559131, 16.172474, 13.481939>,  <10.862014, 16.693672, 13.089167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.559131, 16.172474, 13.481939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.636363, 16.434196, 13.774405>,  <10.682702, 16.591230, 13.949885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.636363, 16.434196, 13.774405>,  <10.559131, 16.172474, 13.481939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.636363, 16.434196, 13.774405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790346, -0.337878, 0.511070,
		0.581441, -0.676550, 0.451892,
		0.193080, 0.654308, 0.731164,
		10.694287, 16.630489, 13.993755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.548915, 15.793781, 14.186650>,  <10.559131, 16.172474, 13.481939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.548915, 15.793781, 14.186650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.471128, 16.177114, 14.270347>,  <10.424455, 16.407114, 14.320564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.471128, 16.177114, 14.270347>,  <10.548915, 15.793781, 14.186650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.471128, 16.177114, 14.270347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857620, -0.269648, 0.437925,
		0.476099, -0.094287, 0.874322,
		-0.194469, 0.958332, 0.209242,
		10.412786, 16.464615, 14.333119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.308302, 15.901433, 14.951755>,  <10.548915, 15.793781, 14.186650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.308302, 15.901433, 14.951755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192080, 16.223993, 14.745727>,  <10.122346, 16.417530, 14.622110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192080, 16.223993, 14.745727>,  <10.308302, 15.901433, 14.951755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192080, 16.223993, 14.745727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920669, -0.088969, 0.380070,
		0.260663, 0.584640, 0.768278,
		-0.290557, 0.806400, -0.515069,
		10.104913, 16.465914, 14.591206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.736071, 16.016027, 15.261583>,  <10.308302, 15.901433, 14.951755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.736071, 16.016027, 15.261583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694744, 16.248423, 14.938652>,  <9.669949, 16.387859, 14.744893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694744, 16.248423, 14.938652>,  <9.736071, 16.016027, 15.261583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.694744, 16.248423, 14.938652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993691, -0.024688, 0.109400,
		0.043629, 0.813537, 0.579874,
		-0.103317, 0.580989, -0.807328,
		9.663749, 16.422720, 14.696454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.124727, 16.485041, 15.392638>,  <9.736071, 16.016027, 15.261583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.124727, 16.485041, 15.392638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.177955, 16.451391, 14.997626>,  <9.209891, 16.431202, 14.760619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.177955, 16.451391, 14.997626>,  <9.124727, 16.485041, 15.392638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.177955, 16.451391, 14.997626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979404, -0.163828, -0.118018,
		-0.151857, 0.982896, -0.104192,
		0.133069, -0.084124, -0.987530,
		9.217875, 16.426153, 14.701367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.529457, 16.852077, 15.169715>,  <9.124727, 16.485041, 15.392638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.529457, 16.852077, 15.169715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680051, 16.632164, 14.871454>,  <8.770408, 16.500216, 14.692498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.680051, 16.632164, 14.871454>,  <8.529457, 16.852077, 15.169715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.680051, 16.632164, 14.871454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926195, -0.241230, -0.289778,
		-0.020559, 0.799716, -0.600027,
		0.376485, -0.549784, -0.745652,
		8.792996, 16.467228, 14.647758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.187185, 17.032804, 14.538997>,  <8.529457, 16.852077, 15.169715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.187185, 17.032804, 14.538997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.365419, 16.696987, 14.414662>,  <8.472360, 16.495497, 14.340062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.365419, 16.696987, 14.414662>,  <8.187185, 17.032804, 14.538997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.365419, 16.696987, 14.414662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830102, -0.257441, -0.494626,
		0.335239, 0.478423, -0.811619,
		0.445585, -0.839545, -0.310836,
		8.499095, 16.445124, 14.321411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.012631, 16.969410, 13.871340>,  <8.187185, 17.032804, 14.538997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.012631, 16.969410, 13.871340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.108035, 16.599997, 13.991474>,  <8.165277, 16.378349, 14.063555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.108035, 16.599997, 13.991474>,  <8.012631, 16.969410, 13.871340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.108035, 16.599997, 13.991474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708635, -0.376972, -0.596430,
		0.664040, -0.070574, -0.744358,
		0.238510, -0.923532, 0.300336,
		8.179588, 16.322937, 14.081575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.945890, 16.547766, 13.365529>,  <8.012631, 16.969410, 13.871340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.945890, 16.547766, 13.365529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.966931, 16.260323, 13.642899>,  <7.979555, 16.087856, 13.809320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.966931, 16.260323, 13.642899>,  <7.945890, 16.547766, 13.365529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.966931, 16.260323, 13.642899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752147, -0.485279, -0.445846,
		0.656892, -0.498105, -0.566025,
		0.052601, -0.718607, 0.693424,
		7.982711, 16.044741, 13.850925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.910237, 15.849876, 13.040092>,  <7.945890, 16.547766, 13.365529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.910237, 15.849876, 13.040092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.742420, 15.843537, 13.403131>,  <7.641730, 15.839734, 13.620955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.742420, 15.843537, 13.403131>,  <7.910237, 15.849876, 13.040092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.742420, 15.843537, 13.403131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727120, -0.592672, -0.346463,
		0.543398, -0.805288, 0.237127,
		-0.419541, -0.015848, 0.907598,
		7.616558, 15.838783, 13.675410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.777642, 15.112297, 13.090352>,  <7.910237, 15.849876, 13.040092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.777642, 15.112297, 13.090352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.542048, 15.276950, 13.368533>,  <7.400692, 15.375742, 13.535441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.542048, 15.276950, 13.368533>,  <7.777642, 15.112297, 13.090352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.542048, 15.276950, 13.368533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723754, -0.651545, -0.227310,
		0.359550, -0.637219, 0.681671,
		-0.588985, 0.411633, 0.695453,
		7.365352, 15.400439, 13.577169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.537546, 14.538938, 13.562406>,  <7.777642, 15.112297, 13.090352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.537546, 14.538938, 13.562406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.291006, 14.848941, 13.506583>,  <7.143082, 15.034943, 13.473089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.291006, 14.848941, 13.506583>,  <7.537546, 14.538938, 13.562406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.291006, 14.848941, 13.506583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703677, -0.621597, -0.344173,
		-0.353485, -0.113928, 0.928476,
		-0.616349, 0.775008, -0.139557,
		7.106101, 15.081443, 13.464716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.828133, 14.517616, 14.163842>,  <7.537546, 14.538938, 13.562406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.828133, 14.517616, 14.163842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.772848, 14.271606, 14.474362>,  <7.739676, 14.124001, 14.660675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.772848, 14.271606, 14.474362>,  <7.828133, 14.517616, 14.163842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.772848, 14.271606, 14.474362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460131, -0.654222, -0.600228,
		0.877028, -0.440159, -0.192569,
		-0.138213, -0.615024, 0.776301,
		7.731384, 14.087099, 14.707253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.106034, 13.742450, 14.175239>,  <7.828133, 14.517616, 14.163842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.106034, 13.742450, 14.175239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.792994, 13.762046, 14.423476>,  <7.605170, 13.773804, 14.572419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.792994, 13.762046, 14.423476>,  <8.106034, 13.742450, 14.175239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.792994, 13.762046, 14.423476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402083, -0.800841, -0.443828,
		0.475254, -0.596870, 0.646436,
		-0.782600, 0.048990, 0.620594,
		7.558214, 13.776743, 14.609654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.458741, 13.415744, 13.635770>,  <8.106034, 13.742450, 14.175239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.458741, 13.415744, 13.635770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.355137, 13.784209, 13.519582>,  <8.292974, 14.005288, 13.449869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.355137, 13.784209, 13.519582>,  <8.458741, 13.415744, 13.635770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.355137, 13.784209, 13.519582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478720, 0.138763, 0.866933,
		0.838893, 0.363597, 0.405038,
		-0.259010, 0.921163, -0.290469,
		8.277434, 14.060558, 13.432441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.154576, 13.509921, 13.926058>,  <8.458741, 13.415744, 13.635770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.154576, 13.509921, 13.926058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.149149, 13.137054, 14.070767>,  <9.145893, 12.913334, 14.157593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.149149, 13.137054, 14.070767>,  <9.154576, 13.509921, 13.926058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.149149, 13.137054, 14.070767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931726, 0.119529, 0.342928,
		-0.362909, 0.341726, 0.866903,
		-0.013568, -0.932167, 0.361774,
		9.145079, 12.857405, 14.179299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.392892, 13.543365, 14.579154>,  <9.154576, 13.509921, 13.926058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.392892, 13.543365, 14.579154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.540113, 13.203158, 14.428869>,  <9.628447, 12.999035, 14.338698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.540113, 13.203158, 14.428869>,  <9.392892, 13.543365, 14.579154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.540113, 13.203158, 14.428869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892980, 0.210743, 0.397712,
		-0.259081, -0.481883, 0.837058,
		0.368055, -0.850515, -0.375712,
		9.650530, 12.948004, 14.316155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.910651, 13.149973, 15.017868>,  <9.392892, 13.543365, 14.579154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.910651, 13.149973, 15.017868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.009362, 13.059366, 14.640978>,  <10.068589, 13.005002, 14.414844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.009362, 13.059366, 14.640978>,  <9.910651, 13.149973, 15.017868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.009362, 13.059366, 14.640978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965859, 0.136602, 0.220127,
		0.078848, -0.964381, 0.252495,
		0.246778, -0.226518, -0.942226,
		10.083396, 12.991411, 14.358310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.453115, 12.635882, 15.002529>,  <9.910651, 13.149973, 15.017868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.453115, 12.635882, 15.002529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.457949, 12.878213, 14.684327>,  <10.460849, 13.023611, 14.493405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.457949, 12.878213, 14.684327>,  <10.453115, 12.635882, 15.002529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.457949, 12.878213, 14.684327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990466, 0.101927, 0.092670,
		0.137225, -0.789042, -0.598818,
		0.012085, 0.605825, -0.795506,
		10.461575, 13.059960, 14.445675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.860389, 12.385280, 14.430223>,  <10.453115, 12.635882, 15.002529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.860389, 12.385280, 14.430223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.851864, 12.780416, 14.491824>,  <10.846749, 13.017497, 14.528785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.851864, 12.780416, 14.491824>,  <10.860389, 12.385280, 14.430223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.851864, 12.780416, 14.491824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961791, -0.021797, 0.272917,
		0.272956, 0.153935, -0.949631,
		-0.021312, 0.987841, 0.154002,
		10.845470, 13.076768, 14.538025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.134302, 11.977150, 15.001241>,  <10.860389, 12.385280, 14.430223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.134302, 11.977150, 15.001241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.504231, 11.863090, 15.101950>,  <11.726190, 11.794653, 15.162375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.504231, 11.863090, 15.101950>,  <11.134302, 11.977150, 15.001241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.504231, 11.863090, 15.101950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151755, 0.330348, 0.931580,
		-0.348814, -0.899755, 0.262240,
		0.924824, -0.285152, 0.251772,
		11.781678, 11.777544, 15.177482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.084618, 11.548080, 15.654091>,  <11.134302, 11.977150, 15.001241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.084618, 11.548080, 15.654091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.428645, 11.744564, 15.598963>,  <11.635062, 11.862454, 15.565886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.428645, 11.744564, 15.598963>,  <11.084618, 11.548080, 15.654091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.428645, 11.744564, 15.598963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074395, 0.388011, 0.918647,
		0.504725, -0.779846, 0.370260,
		0.860069, 0.491209, -0.137822,
		11.686666, 11.891927, 15.557616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.493032, 11.321513, 16.117413>,  <11.084618, 11.548080, 15.654091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.493032, 11.321513, 16.117413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.646441, 11.680182, 16.028969>,  <11.738487, 11.895383, 15.975903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.646441, 11.680182, 16.028969>,  <11.493032, 11.321513, 16.117413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.646441, 11.680182, 16.028969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025395, 0.229087, 0.973075,
		0.923181, -0.378813, 0.065090,
		0.383525, 0.896671, -0.221108,
		11.761498, 11.949183, 15.962636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.878117, 11.434196, 16.676882>,  <11.493032, 11.321513, 16.117413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.878117, 11.434196, 16.676882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815295, 11.792543, 16.510628>,  <11.777602, 12.007552, 16.410875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815295, 11.792543, 16.510628>,  <11.878117, 11.434196, 16.676882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.815295, 11.792543, 16.510628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086422, 0.406777, 0.909430,
		0.983802, 0.178748, 0.013537,
		-0.157052, 0.895869, -0.415635,
		11.768180, 12.061304, 16.385937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317110, 11.896648, 17.083069>,  <11.878117, 11.434196, 16.676882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.317110, 11.896648, 17.083069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.016525, 12.096727, 16.910973>,  <11.836174, 12.216775, 16.807714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.016525, 12.096727, 16.910973>,  <12.317110, 11.896648, 17.083069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.016525, 12.096727, 16.910973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289635, 0.335810, 0.896294,
		0.592803, 0.798145, -0.107474,
		-0.751463, 0.500197, -0.430239,
		11.791086, 12.246786, 16.781900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.334384, 12.549203, 17.420565>,  <12.317110, 11.896648, 17.083069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.334384, 12.549203, 17.420565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.970188, 12.517854, 17.258150>,  <11.751671, 12.499044, 17.160702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.970188, 12.517854, 17.258150>,  <12.334384, 12.549203, 17.420565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.970188, 12.517854, 17.258150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409361, 0.309900, 0.858129,
		0.058576, 0.947534, -0.314244,
		-0.910491, -0.078374, -0.406035,
		11.697041, 12.494342, 17.136339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.027585, 13.093682, 17.690050>,  <12.334384, 12.549203, 17.420565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.027585, 13.093682, 17.690050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.733862, 12.861915, 17.548592>,  <11.557629, 12.722854, 17.463717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.733862, 12.861915, 17.548592>,  <12.027585, 13.093682, 17.690050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.733862, 12.861915, 17.548592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616721, 0.351765, 0.704213,
		-0.283634, 0.735210, -0.615644,
		-0.734307, -0.579420, -0.353647,
		11.513570, 12.688088, 17.442497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647232, 13.278191, 18.182423>,  <12.027585, 13.093682, 17.690050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647232, 13.278191, 18.182423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.385515, 13.134080, 17.916460>,  <11.228485, 13.047613, 17.756882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.385515, 13.134080, 17.916460>,  <11.647232, 13.278191, 18.182423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.385515, 13.134080, 17.916460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756151, 0.325246, 0.567847,
		0.011675, 0.874308, -0.485231,
		-0.654293, -0.360278, -0.664906,
		11.189227, 13.025996, 17.716988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.207258, 13.812288, 17.904406>,  <11.647232, 13.278191, 18.182423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.207258, 13.812288, 17.904406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.048503, 13.446962, 17.940922>,  <10.953250, 13.227767, 17.962831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.048503, 13.446962, 17.940922>,  <11.207258, 13.812288, 17.904406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.048503, 13.446962, 17.940922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754870, 0.381372, 0.533598,
		-0.522159, 0.142866, -0.840797,
		-0.396889, -0.913315, 0.091292,
		10.929436, 13.172968, 17.968309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.562975, 13.932116, 17.758911>,  <11.207258, 13.812288, 17.904406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.562975, 13.932116, 17.758911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.605444, 13.605663, 17.986122>,  <10.630925, 13.409792, 18.122450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.605444, 13.605663, 17.986122>,  <10.562975, 13.932116, 17.758911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.605444, 13.605663, 17.986122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544456, 0.430298, 0.720008,
		-0.832043, -0.385712, -0.398662,
		0.106172, -0.816131, 0.568029,
		10.637296, 13.360824, 18.156530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.876095, 13.787145, 18.032972>,  <10.562975, 13.932116, 17.758911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.876095, 13.787145, 18.032972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.128876, 13.588102, 18.270636>,  <10.280544, 13.468678, 18.413235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.128876, 13.588102, 18.270636>,  <9.876095, 13.787145, 18.032972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.128876, 13.588102, 18.270636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417030, 0.427861, 0.801886,
		-0.653241, -0.754535, 0.062871,
		0.631951, -0.497605, 0.594160,
		10.318461, 13.438821, 18.448883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.461257, 13.507504, 18.568794>,  <9.876095, 13.787145, 18.032972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.461257, 13.507504, 18.568794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.822230, 13.459311, 18.734249>,  <10.038815, 13.430394, 18.833523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.822230, 13.459311, 18.734249>,  <9.461257, 13.507504, 18.568794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.822230, 13.459311, 18.734249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344939, 0.373178, 0.861252,
		-0.258128, -0.919903, 0.295209,
		0.902434, -0.120484, 0.413638,
		10.092960, 13.423165, 18.858341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.400315, 13.040785, 19.148928>,  <9.461257, 13.507504, 18.568794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.400315, 13.040785, 19.148928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.715547, 13.276619, 19.219719>,  <9.904686, 13.418119, 19.262194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.715547, 13.276619, 19.219719>,  <9.400315, 13.040785, 19.148928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.715547, 13.276619, 19.219719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396957, 0.267002, 0.878143,
		0.470487, -0.762298, 0.444459,
		0.788078, 0.589586, 0.176979,
		9.951970, 13.453494, 19.272812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.852143, 12.744562, 19.623411>,  <9.400315, 13.040785, 19.148928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.852143, 12.744562, 19.623411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.944841, 13.130202, 19.675264>,  <10.000461, 13.361587, 19.706377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.944841, 13.130202, 19.675264>,  <9.852143, 12.744562, 19.623411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.944841, 13.130202, 19.675264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291973, -0.058180, 0.954655,
		0.927925, -0.259087, 0.268008,
		0.231746, 0.964100, 0.129634,
		10.014365, 13.419433, 19.714155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.015151, 12.720253, 20.266117>,  <9.852143, 12.744562, 19.623411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.015151, 12.720253, 20.266117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.975629, 13.112261, 20.197065>,  <9.951916, 13.347466, 20.155634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.975629, 13.112261, 20.197065>,  <10.015151, 12.720253, 20.266117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.975629, 13.112261, 20.197065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353217, 0.127640, 0.926793,
		0.930309, 0.152547, 0.333548,
		-0.098805, 0.980019, -0.172627,
		9.945988, 13.406266, 20.145277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.348695, 13.040530, 20.834305>,  <10.015151, 12.720253, 20.266117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.348695, 13.040530, 20.834305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.105611, 13.314006, 20.672684>,  <9.959761, 13.478091, 20.575712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.105611, 13.314006, 20.672684>,  <10.348695, 13.040530, 20.834305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.105611, 13.314006, 20.672684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264553, 0.305437, 0.914724,
		0.748798, 0.662781, -0.004746,
		-0.607711, 0.683688, -0.404052,
		9.923298, 13.519113, 20.551468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.556747, 13.610970, 21.071947>,  <10.348695, 13.040530, 20.834305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.556747, 13.610970, 21.071947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.175058, 13.643179, 20.956726>,  <9.946045, 13.662504, 20.887594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.175058, 13.643179, 20.956726>,  <10.556747, 13.610970, 21.071947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.175058, 13.643179, 20.956726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254955, 0.284566, 0.924132,
		0.156384, 0.955269, -0.251010,
		-0.954223, 0.080524, -0.288052,
		9.888791, 13.667336, 20.870310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.319135, 14.162522, 21.437870>,  <10.556747, 13.610970, 21.071947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.319135, 14.162522, 21.437870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.975368, 14.015753, 21.295452>,  <9.769107, 13.927691, 21.210001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.975368, 14.015753, 21.295452>,  <10.319135, 14.162522, 21.437870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.975368, 14.015753, 21.295452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463963, 0.267136, 0.844616,
		-0.214798, 0.891070, -0.399821,
		-0.859419, -0.366924, -0.356043,
		9.717542, 13.905676, 21.188639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.898479, 14.659409, 21.633858>,  <10.319135, 14.162522, 21.437870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.898479, 14.659409, 21.633858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.720604, 14.303373, 21.593868>,  <9.613878, 14.089752, 21.569874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.720604, 14.303373, 21.593868>,  <9.898479, 14.659409, 21.633858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.720604, 14.303373, 21.593868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401371, 0.098244, 0.910631,
		-0.800720, 0.445076, -0.400943,
		-0.444690, -0.890088, -0.099975,
		9.587197, 14.036347, 21.563875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.301404, 14.758658, 22.051462>,  <9.898479, 14.659409, 21.633858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.301404, 14.758658, 22.051462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.325062, 14.360277, 22.024387>,  <9.339256, 14.121248, 22.008142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.325062, 14.360277, 22.024387>,  <9.301404, 14.758658, 22.051462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.325062, 14.360277, 22.024387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283146, -0.081758, 0.955586,
		-0.957252, -0.037352, -0.286835,
		0.059144, -0.995952, -0.067686,
		9.342805, 14.061492, 22.004082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.781014, 14.635195, 22.463428>,  <9.301404, 14.758658, 22.051462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.781014, 14.635195, 22.463428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.011456, 14.311386, 22.418213>,  <9.149722, 14.117101, 22.391083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.011456, 14.311386, 22.418213>,  <8.781014, 14.635195, 22.463428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.011456, 14.311386, 22.418213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159413, -0.246918, 0.955834,
		-0.801679, -0.532642, -0.271299,
		0.576106, -0.809521, -0.113039,
		9.184288, 14.068530, 22.384300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.445010, 14.136995, 22.815790>,  <8.781014, 14.635195, 22.463428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.445010, 14.136995, 22.815790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.817507, 13.993603, 22.789618>,  <9.041004, 13.907567, 22.773914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.817507, 13.993603, 22.789618>,  <8.445010, 14.136995, 22.815790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.817507, 13.993603, 22.789618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079380, -0.374807, 0.923698,
		-0.355645, -0.854995, -0.377492,
		0.931244, -0.358475, -0.065429,
		9.096879, 13.886059, 22.769987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.366773, 13.664926, 23.321157>,  <8.445010, 14.136995, 22.815790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.366773, 13.664926, 23.321157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.760601, 13.655331, 23.251823>,  <8.996898, 13.649573, 23.210222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.760601, 13.655331, 23.251823>,  <8.366773, 13.664926, 23.321157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.760601, 13.655331, 23.251823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139315, -0.491949, 0.859405,
		-0.105886, -0.870293, -0.481017,
		0.984571, -0.023986, -0.173336,
		9.055972, 13.648134, 23.199823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.719124, 12.907820, 23.328373>,  <8.366773, 13.664926, 23.321157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.719124, 12.907820, 23.328373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.985135, 13.194607, 23.411985>,  <9.144742, 13.366679, 23.462152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.985135, 13.194607, 23.411985>,  <8.719124, 12.907820, 23.328373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.985135, 13.194607, 23.411985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139380, -0.394132, 0.908424,
		0.733697, -0.574992, -0.362040,
		0.665028, 0.716969, 0.209030,
		9.184644, 13.409698, 23.474695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.324019, 12.549519, 23.860901>,  <8.719124, 12.907820, 23.328373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.324019, 12.549519, 23.860901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.307240, 12.948254, 23.887894>,  <9.297174, 13.187495, 23.904089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.307240, 12.948254, 23.887894>,  <9.324019, 12.549519, 23.860901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.307240, 12.948254, 23.887894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070741, -0.064409, 0.995413,
		0.996612, 0.046529, -0.067815,
		-0.041947, 0.996838, 0.067482,
		9.294656, 13.247305, 23.908138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.850378, 12.620187, 24.420938>,  <9.324019, 12.549519, 23.860901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.850378, 12.620187, 24.420938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.642215, 12.957473, 24.367031>,  <9.517317, 13.159844, 24.334686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.642215, 12.957473, 24.367031>,  <9.850378, 12.620187, 24.420938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.642215, 12.957473, 24.367031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071800, 0.200473, 0.977065,
		0.850893, 0.498797, -0.164871,
		-0.520409, 0.843216, -0.134768,
		9.486093, 13.210438, 24.326601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.176914, 13.137264, 24.787579>,  <9.850378, 12.620187, 24.420938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.176914, 13.137264, 24.787579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.798364, 13.261474, 24.751926>,  <9.571233, 13.335999, 24.730536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.798364, 13.261474, 24.751926>,  <10.176914, 13.137264, 24.787579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.798364, 13.261474, 24.751926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005444, 0.291185, 0.956651,
		0.323017, 0.904868, -0.277262,
		-0.946377, 0.310524, -0.089132,
		9.514450, 13.354630, 24.725187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.054295, 13.818243, 25.139196>,  <10.176914, 13.137264, 24.787579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.054295, 13.818243, 25.139196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.679115, 13.679902, 25.129065>,  <9.454008, 13.596898, 25.122986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.679115, 13.679902, 25.129065>,  <10.054295, 13.818243, 25.139196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.679115, 13.679902, 25.129065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084917, 0.158252, 0.983741,
		-0.336220, 0.924848, -0.177800,
		-0.937947, -0.345851, -0.025328,
		9.397731, 13.576147, 25.121466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725549, 14.354903, 25.476450>,  <10.054295, 13.818243, 25.139196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725549, 14.354903, 25.476450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523656, 14.012117, 25.518133>,  <9.402520, 13.806446, 25.543144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523656, 14.012117, 25.518133>,  <9.725549, 14.354903, 25.476450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.523656, 14.012117, 25.518133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081165, 0.167287, 0.982562,
		-0.859452, 0.487472, -0.153991,
		-0.504732, -0.856964, 0.104209,
		9.372236, 13.755029, 25.549397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.068568, 14.583573, 25.693897>,  <9.725549, 14.354903, 25.476450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.068568, 14.583573, 25.693897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.117105, 14.198732, 25.791576>,  <9.146228, 13.967828, 25.850183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.117105, 14.198732, 25.791576>,  <9.068568, 14.583573, 25.693897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.117105, 14.198732, 25.791576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432119, 0.170280, 0.885595,
		-0.893616, -0.212984, -0.395080,
		0.121343, -0.962103, 0.244200,
		9.153508, 13.910101, 25.864836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.398985, 14.282922, 25.993855>,  <9.068568, 14.583573, 25.693897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.398985, 14.282922, 25.993855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692708, 14.038060, 26.111197>,  <8.868942, 13.891143, 26.181602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692708, 14.038060, 26.111197>,  <8.398985, 14.282922, 25.993855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.692708, 14.038060, 26.111197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283569, 0.116017, 0.951908,
		-0.616749, -0.782180, -0.088396,
		0.734308, -0.612155, 0.293355,
		8.913000, 13.854414, 26.199203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.059584, 13.767584, 26.575306>,  <8.398985, 14.282922, 25.993855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.059584, 13.767584, 26.575306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.455057, 13.759341, 26.634743>,  <8.692341, 13.754395, 26.670404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.455057, 13.759341, 26.634743>,  <8.059584, 13.767584, 26.575306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.455057, 13.759341, 26.634743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149363, -0.042886, 0.987852,
		-0.013974, -0.998868, -0.045477,
		0.988683, -0.020596, 0.148595,
		8.751662, 13.753160, 26.679321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.071181, 13.471377, 27.250338>,  <8.059584, 13.767584, 26.575306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.071181, 13.471377, 27.250338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.436221, 13.626879, 27.199692>,  <8.655245, 13.720180, 27.169304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.436221, 13.626879, 27.199692>,  <8.071181, 13.471377, 27.250338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.436221, 13.626879, 27.199692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129824, 0.018126, 0.991371,
		0.387695, -0.921163, -0.033928,
		0.912601, 0.388754, -0.126616,
		8.710001, 13.743505, 27.161707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.625117, 13.101634, 27.679470>,  <8.071181, 13.471377, 27.250338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.625117, 13.101634, 27.679470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.806510, 13.448697, 27.597960>,  <8.915345, 13.656935, 27.549053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.806510, 13.448697, 27.597960>,  <8.625117, 13.101634, 27.679470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.806510, 13.448697, 27.597960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186400, 0.131251, 0.973668,
		0.871556, -0.479523, -0.102211,
		0.453481, 0.867658, -0.203776,
		8.942554, 13.708995, 27.536827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.277404, 13.049014, 28.057283>,  <8.625117, 13.101634, 27.679470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.277404, 13.049014, 28.057283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.221469, 13.439240, 27.989496>,  <9.187908, 13.673375, 27.948824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.221469, 13.439240, 27.989496>,  <9.277404, 13.049014, 28.057283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.221469, 13.439240, 27.989496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156133, 0.190732, 0.969146,
		0.977787, 0.109064, -0.178990,
		-0.139838, 0.975565, -0.169467,
		9.179518, 13.731909, 27.938656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.819833, 13.429423, 28.352367>,  <9.277404, 13.049014, 28.057283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.819833, 13.429423, 28.352367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.537154, 13.711944, 28.335783>,  <9.367547, 13.881455, 28.325832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.537154, 13.711944, 28.335783>,  <9.819833, 13.429423, 28.352367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.537154, 13.711944, 28.335783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193994, 0.249792, 0.948668,
		0.680402, 0.662377, -0.313545,
		-0.706697, 0.706301, -0.041462,
		9.325146, 13.923834, 28.323345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.044951, 13.818011, 28.844313>,  <9.819833, 13.429423, 28.352367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.044951, 13.818011, 28.844313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.674785, 13.965182, 28.808016>,  <9.452684, 14.053485, 28.786238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.674785, 13.965182, 28.808016>,  <10.044951, 13.818011, 28.844313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.674785, 13.965182, 28.808016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038811, 0.330217, 0.943107,
		0.376960, 0.869245, -0.319868,
		-0.925416, 0.367927, -0.090743,
		9.397160, 14.075561, 28.780792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.184401, 14.508554, 29.085873>,  <10.044951, 13.818011, 28.844313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.184401, 14.508554, 29.085873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.795993, 14.416253, 29.110779>,  <9.562948, 14.360872, 29.125723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.795993, 14.416253, 29.110779>,  <10.184401, 14.508554, 29.085873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.795993, 14.416253, 29.110779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006292, 0.235750, 0.971793,
		-0.238923, 0.944021, -0.227466,
		-0.971018, -0.230752, 0.062266,
		9.504687, 14.347028, 29.129459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.882656, 15.124723, 29.313047>,  <10.184401, 14.508554, 29.085873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.882656, 15.124723, 29.313047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.625367, 14.832947, 29.406155>,  <9.470994, 14.657881, 29.462019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.625367, 14.832947, 29.406155>,  <9.882656, 15.124723, 29.313047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.625367, 14.832947, 29.406155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103947, 0.217997, 0.970398,
		-0.758590, 0.648378, -0.064398,
		-0.643223, -0.729441, 0.232767,
		9.432401, 14.614115, 29.475985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.459566, 15.410666, 29.866058>,  <9.882656, 15.124723, 29.313047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.459566, 15.410666, 29.866058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.395462, 15.017718, 29.904570>,  <9.356999, 14.781950, 29.927677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.395462, 15.017718, 29.904570>,  <9.459566, 15.410666, 29.866058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.395462, 15.017718, 29.904570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002279, 0.097908, 0.995193,
		-0.987072, 0.159271, -0.017929,
		-0.160261, -0.982368, 0.096279,
		9.347383, 14.723008, 29.933453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.476967, 15.425184, 30.602238>,  <9.459566, 15.410666, 29.866058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.476967, 15.425184, 30.602238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425968, 15.047825, 30.479767>,  <9.395369, 14.821409, 30.406284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425968, 15.047825, 30.479767>,  <9.476967, 15.425184, 30.602238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.425968, 15.047825, 30.479767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105300, -0.294077, 0.949963,
		-0.986233, 0.153359, -0.061846,
		-0.127498, -0.943398, -0.306177,
		9.387719, 14.764806, 30.387913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.815096, 15.684459, 31.204008>,  <9.476967, 15.425184, 30.602238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.815096, 15.684459, 31.204008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.588702, 15.623752, 31.528139>,  <9.452866, 15.587328, 31.722618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.588702, 15.623752, 31.528139>,  <9.815096, 15.684459, 31.204008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.588702, 15.623752, 31.528139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796680, 0.152119, 0.584945,
		-0.212041, 0.976641, 0.034812,
		-0.565985, -0.151767, 0.810326,
		9.418906, 15.578221, 31.771236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.150892, 16.175499, 31.679512>,  <9.815096, 15.684459, 31.204008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.150892, 16.175499, 31.679512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.932783, 15.897805, 31.867434>,  <9.801918, 15.731189, 31.980186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.932783, 15.897805, 31.867434>,  <10.150892, 16.175499, 31.679512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.932783, 15.897805, 31.867434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759063, -0.171129, 0.628122,
		-0.355668, 0.699108, 0.620281,
		-0.545273, -0.694236, 0.469802,
		9.769201, 15.689534, 32.008373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.151527, 16.171185, 32.461002>,  <10.150892, 16.175499, 31.679512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.151527, 16.171185, 32.461002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.051715, 15.803261, 32.339882>,  <9.991827, 15.582507, 32.267208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.051715, 15.803261, 32.339882>,  <10.151527, 16.171185, 32.461002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.051715, 15.803261, 32.339882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758154, -0.380100, 0.529836,
		-0.602441, -0.097360, 0.792203,
		-0.249532, -0.919807, -0.302801,
		9.976855, 15.527319, 32.249043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.154552, 15.686808, 33.012562>,  <10.151527, 16.171185, 32.461002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.154552, 15.686808, 33.012562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.207728, 15.471159, 32.679893>,  <10.239635, 15.341770, 32.480293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.207728, 15.471159, 32.679893>,  <10.154552, 15.686808, 33.012562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.207728, 15.471159, 32.679893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621053, -0.608636, 0.493818,
		-0.772412, -0.582160, 0.253910,
		0.132942, -0.539122, -0.831669,
		10.247611, 15.309422, 32.430393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.947021, 14.953938, 33.081944>,  <10.154552, 15.686808, 33.012562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.947021, 14.953938, 33.081944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.216256, 14.999395, 32.789631>,  <10.377797, 15.026670, 32.614243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.216256, 14.999395, 32.789631>,  <9.947021, 14.953938, 33.081944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.216256, 14.999395, 32.789631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680868, -0.481008, 0.552314,
		-0.288745, -0.869320, -0.401137,
		0.673087, 0.113643, -0.730780,
		10.418182, 15.033488, 32.570396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.218843, 14.381188, 32.954842>,  <9.947021, 14.953938, 33.081944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.218843, 14.381188, 32.954842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.503248, 14.631596, 32.826740>,  <10.673891, 14.781840, 32.749878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.503248, 14.631596, 32.826740>,  <10.218843, 14.381188, 32.954842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.503248, 14.631596, 32.826740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690641, -0.536079, 0.485421,
		0.132201, -0.566321, -0.813513,
		0.711012, 0.626018, -0.320255,
		10.716552, 14.819401, 32.730663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.073925, 13.799844, 32.620968>,  <10.218843, 14.381188, 32.954842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.073925, 13.799844, 32.620968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.832636, 13.798671, 32.301941>,  <9.687862, 13.797967, 32.110523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.832636, 13.798671, 32.301941>,  <10.073925, 13.799844, 32.620968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.832636, 13.798671, 32.301941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357626, 0.892835, -0.273767,
		0.712899, -0.450373, -0.537530,
		-0.603223, -0.002934, -0.797567,
		9.651669, 13.797791, 32.062672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.298044, 13.037354, 32.371788>,  <10.073925, 13.799844, 32.620968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.298044, 13.037354, 32.371788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.317042, 12.637943, 32.382278>,  <10.328442, 12.398296, 32.388573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.317042, 12.637943, 32.382278>,  <10.298044, 13.037354, 32.371788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.317042, 12.637943, 32.382278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076781, -0.022530, -0.996793,
		0.995916, 0.049357, 0.075598,
		0.047496, -0.998527, 0.026228,
		10.331291, 12.338386, 32.390148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.967381, 12.722402, 32.115406>,  <10.298044, 13.037354, 32.371788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.967381, 12.722402, 32.115406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.668396, 12.466297, 32.044563>,  <10.489005, 12.312634, 32.002056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.668396, 12.466297, 32.044563>,  <10.967381, 12.722402, 32.115406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.668396, 12.466297, 32.044563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204556, 0.031819, -0.978338,
		0.632027, -0.767498, 0.107186,
		-0.747462, -0.640261, -0.177107,
		10.444158, 12.274219, 31.991432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.168296, 12.059319, 31.705051>,  <10.967381, 12.722402, 32.115406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.168296, 12.059319, 31.705051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.785484, 12.143427, 31.625168>,  <10.555798, 12.193892, 31.577238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.785484, 12.143427, 31.625168>,  <11.168296, 12.059319, 31.705051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.785484, 12.143427, 31.625168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194531, -0.045239, -0.979853,
		-0.215070, -0.976596, 0.002390,
		-0.957028, 0.210271, -0.199708,
		10.498376, 12.206509, 31.565256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.928027, 11.519726, 31.370075>,  <11.168296, 12.059319, 31.705051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.928027, 11.519726, 31.370075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.716646, 11.838658, 31.253456>,  <10.589817, 12.030018, 31.183485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.716646, 11.838658, 31.253456>,  <10.928027, 11.519726, 31.370075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.716646, 11.838658, 31.253456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071790, -0.300216, -0.951166,
		-0.845922, -0.523576, 0.101410,
		-0.528453, 0.797332, -0.291547,
		10.558110, 12.077858, 31.165993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.588635, 11.268806, 30.850632>,  <10.928027, 11.519726, 31.370075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.588635, 11.268806, 30.850632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564648, 11.660029, 30.770826>,  <10.550255, 11.894763, 30.722942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564648, 11.660029, 30.770826>,  <10.588635, 11.268806, 30.850632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.564648, 11.660029, 30.770826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208600, -0.183182, -0.960693,
		-0.976161, -0.099231, -0.193037,
		-0.059970, 0.978058, -0.199514,
		10.546657, 11.953446, 30.710972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.087567, 11.325189, 30.352957>,  <10.588635, 11.268806, 30.850632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.087567, 11.325189, 30.352957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.333616, 11.640347, 30.341320>,  <10.481246, 11.829441, 30.334337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.333616, 11.640347, 30.341320>,  <10.087567, 11.325189, 30.352957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.333616, 11.640347, 30.341320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200789, -0.192227, -0.960590,
		-0.762436, 0.585039, -0.276443,
		0.615122, 0.787895, -0.029091,
		10.518153, 11.876715, 30.332592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.154783, 11.458075, 29.642479>,  <10.087567, 11.325189, 30.352957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.154783, 11.458075, 29.642479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.417736, 11.732052, 29.768147>,  <10.575508, 11.896439, 29.843548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.417736, 11.732052, 29.768147>,  <10.154783, 11.458075, 29.642479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.417736, 11.732052, 29.768147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267642, 0.177508, -0.947026,
		-0.704427, 0.706642, -0.066629,
		0.657382, 0.684943, 0.314168,
		10.614950, 11.937535, 29.862396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.085255, 12.100687, 29.196001>,  <10.154783, 11.458075, 29.642479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.085255, 12.100687, 29.196001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.457018, 12.079398, 29.342079>,  <10.680076, 12.066625, 29.429726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.457018, 12.079398, 29.342079>,  <10.085255, 12.100687, 29.196001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.457018, 12.079398, 29.342079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368920, 0.107385, -0.923237,
		0.009921, 0.992792, 0.119439,
		0.929408, -0.053223, 0.365196,
		10.735841, 12.063432, 29.451637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.406503, 12.577538, 28.833973>,  <10.085255, 12.100687, 29.196001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.406503, 12.577538, 28.833973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.706548, 12.360054, 28.984552>,  <10.886575, 12.229564, 29.074900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.706548, 12.360054, 28.984552>,  <10.406503, 12.577538, 28.833973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.706548, 12.360054, 28.984552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488129, 0.071167, -0.869865,
		0.446162, 0.836252, 0.318783,
		0.750113, -0.543708, 0.376447,
		10.931581, 12.196941, 29.097486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.060379, 12.873760, 28.634129>,  <10.406503, 12.577538, 28.833973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.060379, 12.873760, 28.634129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.137066, 12.490401, 28.718718>,  <11.183078, 12.260386, 28.769472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.137066, 12.490401, 28.718718>,  <11.060379, 12.873760, 28.634129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.137066, 12.490401, 28.718718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675110, -0.027617, -0.737200,
		0.712370, 0.284102, 0.641728,
		0.191717, -0.958396, 0.211474,
		11.194581, 12.202883, 28.782160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.732432, 12.886117, 28.703459>,  <11.060379, 12.873760, 28.634129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.732432, 12.886117, 28.703459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.647777, 12.500398, 28.639786>,  <11.596983, 12.268966, 28.601582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.647777, 12.500398, 28.639786>,  <11.732432, 12.886117, 28.703459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.647777, 12.500398, 28.639786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692525, -0.033033, -0.720637,
		0.689651, -0.262751, 0.674791,
		-0.211639, -0.964298, -0.159180,
		11.584285, 12.211108, 28.592031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351084, 12.580898, 28.543396>,  <11.732432, 12.886117, 28.703459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351084, 12.580898, 28.543396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.088827, 12.330656, 28.374279>,  <11.931473, 12.180511, 28.272810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.088827, 12.330656, 28.374279>,  <12.351084, 12.580898, 28.543396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.088827, 12.330656, 28.374279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641722, -0.166605, -0.748623,
		0.397903, -0.762143, 0.510697,
		-0.655642, -0.625605, -0.422791,
		11.892135, 12.142975, 28.247442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.736071, 12.041640, 28.162733>,  <12.351084, 12.580898, 28.543396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.736071, 12.041640, 28.162733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.365752, 12.024672, 28.012480>,  <12.143561, 12.014490, 27.922327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.365752, 12.024672, 28.012480>,  <12.736071, 12.041640, 28.162733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.365752, 12.024672, 28.012480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376374, -0.010761, -0.926405,
		0.035264, -0.999041, 0.025932,
		-0.925796, -0.042429, -0.375634,
		12.088014, 12.011945, 27.899790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.609167, 11.418213, 27.788914>,  <12.736071, 12.041640, 28.162733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.609167, 11.418213, 27.788914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341568, 11.673226, 27.636078>,  <12.181008, 11.826235, 27.544376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341568, 11.673226, 27.636078>,  <12.609167, 11.418213, 27.788914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.341568, 11.673226, 27.636078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121056, -0.413747, -0.902307,
		-0.733341, -0.649895, 0.199618,
		-0.668997, 0.637534, -0.382091,
		12.140869, 11.864487, 27.521450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171012, 11.061014, 27.395550>,  <12.609167, 11.418213, 27.788914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171012, 11.061014, 27.395550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110647, 11.428925, 27.250643>,  <12.074429, 11.649671, 27.163698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110647, 11.428925, 27.250643>,  <12.171012, 11.061014, 27.395550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.110647, 11.428925, 27.250643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076028, -0.376178, -0.923423,
		-0.985619, -0.111813, 0.126698,
		-0.150911, 0.919776, -0.362267,
		12.065373, 11.704858, 27.141962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.875166, 10.962742, 26.796803>,  <12.171012, 11.061014, 27.395550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.875166, 10.962742, 26.796803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.926509, 11.355820, 26.743383>,  <11.957314, 11.591666, 26.711332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.926509, 11.355820, 26.743383>,  <11.875166, 10.962742, 26.796803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.926509, 11.355820, 26.743383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209203, -0.104801, -0.972240,
		-0.969411, 0.152734, 0.192130,
		0.128358, 0.982695, -0.133548,
		11.965016, 11.650628, 26.703320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.237451, 11.177458, 26.445673>,  <11.875166, 10.962742, 26.796803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.237451, 11.177458, 26.445673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.547673, 11.423705, 26.389776>,  <11.733807, 11.571453, 26.356237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.547673, 11.423705, 26.389776>,  <11.237451, 11.177458, 26.445673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.547673, 11.423705, 26.389776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208207, 0.040467, -0.977248,
		-0.595955, 0.787006, 0.159561,
		0.775556, 0.615617, -0.139743,
		11.780340, 11.608390, 26.347853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.977266, 11.640903, 25.827801>,  <11.237451, 11.177458, 26.445673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.977266, 11.640903, 25.827801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372952, 11.695266, 25.849665>,  <11.610363, 11.727883, 25.862783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372952, 11.695266, 25.849665>,  <10.977266, 11.640903, 25.827801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.372952, 11.695266, 25.849665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058466, -0.024172, -0.997997,
		-0.134312, 0.990427, -0.031857,
		0.989213, 0.135906, 0.054659,
		11.669715, 11.736037, 25.866062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.095504, 12.170718, 25.328522>,  <10.977266, 11.640903, 25.827801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.095504, 12.170718, 25.328522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.432265, 11.967394, 25.400984>,  <11.634322, 11.845399, 25.444462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.432265, 11.967394, 25.400984>,  <11.095504, 12.170718, 25.328522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.432265, 11.967394, 25.400984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172517, -0.064554, -0.982889,
		0.511308, 0.858751, 0.033344,
		0.841904, -0.508311, 0.181156,
		11.684836, 11.814900, 25.455330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.637262, 12.480005, 24.974726>,  <11.095504, 12.170718, 25.328522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.637262, 12.480005, 24.974726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.729511, 12.094469, 25.028131>,  <11.784861, 11.863148, 25.060175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.729511, 12.094469, 25.028131>,  <11.637262, 12.480005, 24.974726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.729511, 12.094469, 25.028131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133278, -0.104629, -0.985540,
		0.963873, 0.245082, 0.104329,
		0.230622, -0.963840, 0.133513,
		11.798697, 11.805317, 25.068186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.126950, 12.460670, 24.557920>,  <11.637262, 12.480005, 24.974726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.126950, 12.460670, 24.557920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022351, 12.082011, 24.633263>,  <11.959592, 11.854815, 24.678467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022351, 12.082011, 24.633263>,  <12.126950, 12.460670, 24.557920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.022351, 12.082011, 24.633263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198068, -0.243622, -0.949430,
		0.944663, -0.210967, 0.251207,
		-0.261498, -0.946648, 0.188354,
		11.943902, 11.798017, 24.689770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617194, 11.996653, 24.244190>,  <12.126950, 12.460670, 24.557920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617194, 11.996653, 24.244190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301400, 11.759472, 24.307589>,  <12.111924, 11.617163, 24.345627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301400, 11.759472, 24.307589>,  <12.617194, 11.996653, 24.244190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301400, 11.759472, 24.307589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084568, -0.360860, -0.928778,
		0.607917, -0.719852, 0.335038,
		-0.789485, -0.592953, 0.158496,
		12.064555, 11.581586, 24.355137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.897137, 11.336984, 24.095625>,  <12.617194, 11.996653, 24.244190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.897137, 11.336984, 24.095625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.497833, 11.319734, 24.079525>,  <12.258251, 11.309383, 24.069866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.497833, 11.319734, 24.079525>,  <12.897137, 11.336984, 24.095625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.497833, 11.319734, 24.079525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055617, -0.460689, -0.885817,
		0.019659, -0.886513, 0.462286,
		-0.998259, -0.043126, -0.040248,
		12.198356, 11.306796, 24.067450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.763327, 10.635349, 23.993952>,  <12.897137, 11.336984, 24.095625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.763327, 10.635349, 23.993952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.437444, 10.824445, 23.859627>,  <12.241914, 10.937902, 23.779032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.437444, 10.824445, 23.859627>,  <12.763327, 10.635349, 23.993952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.437444, 10.824445, 23.859627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048810, -0.521150, -0.852068,
		-0.577817, -0.710576, 0.401509,
		-0.814705, 0.472742, -0.335813,
		12.193031, 10.966267, 23.758883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.323270, 10.159032, 23.705856>,  <12.763327, 10.635349, 23.993952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.323270, 10.159032, 23.705856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.186102, 10.492878, 23.533428>,  <12.103802, 10.693186, 23.429972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.186102, 10.492878, 23.533428>,  <12.323270, 10.159032, 23.705856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.186102, 10.492878, 23.533428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087071, -0.485162, -0.870078,
		-0.935321, -0.260833, 0.239042,
		-0.342919, 0.834616, -0.431072,
		12.083226, 10.743263, 23.404106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.803651, 9.932037, 23.234337>,  <12.323270, 10.159032, 23.705856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.803651, 9.932037, 23.234337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908521, 10.289483, 23.088615>,  <11.971443, 10.503950, 23.001183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908521, 10.289483, 23.088615>,  <11.803651, 9.932037, 23.234337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908521, 10.289483, 23.088615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033112, -0.385618, -0.922064,
		-0.964452, 0.229680, -0.130689,
		0.262176, 0.893614, -0.364305,
		11.987173, 10.557568, 22.979324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.408829, 10.060345, 22.552538>,  <11.803651, 9.932037, 23.234337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.408829, 10.060345, 22.552538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703022, 10.331050, 22.539539>,  <11.879538, 10.493473, 22.531740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703022, 10.331050, 22.539539>,  <11.408829, 10.060345, 22.552538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703022, 10.331050, 22.539539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147261, -0.206484, -0.967305,
		-0.661346, 0.706651, -0.251526,
		0.735483, 0.676763, -0.032495,
		11.923667, 10.534079, 22.529791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.317271, 10.505843, 21.935671>,  <11.408829, 10.060345, 22.552538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.317271, 10.505843, 21.935671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.706926, 10.552933, 22.012817>,  <11.940720, 10.581186, 22.059105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.706926, 10.552933, 22.012817>,  <11.317271, 10.505843, 21.935671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.706926, 10.552933, 22.012817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203286, -0.083965, -0.975513,
		-0.098648, 0.989490, -0.105725,
		0.974137, 0.117725, 0.192866,
		11.999167, 10.588250, 22.070677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.689058, 11.098431, 21.504532>,  <11.317271, 10.505843, 21.935671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.689058, 11.098431, 21.504532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.986308, 10.857545, 21.621223>,  <12.164658, 10.713014, 21.691238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.986308, 10.857545, 21.621223>,  <11.689058, 11.098431, 21.504532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.986308, 10.857545, 21.621223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440092, 0.111439, -0.891011,
		0.504069, 0.790519, 0.347843,
		0.743124, -0.602214, 0.291728,
		12.209246, 10.676881, 21.708742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.312957, 11.449362, 21.300436>,  <11.689058, 11.098431, 21.504532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.312957, 11.449362, 21.300436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.415686, 11.064358, 21.335348>,  <12.477324, 10.833356, 21.356295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.415686, 11.064358, 21.335348>,  <12.312957, 11.449362, 21.300436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.415686, 11.064358, 21.335348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468949, 0.045143, -0.882071,
		0.845061, 0.267466, 0.462961,
		0.256823, -0.962509, 0.087279,
		12.492733, 10.775605, 21.361532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.952882, 11.442787, 21.291912>,  <12.312957, 11.449362, 21.300436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.952882, 11.442787, 21.291912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.886518, 11.057956, 21.205305>,  <12.846699, 10.827057, 21.153341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.886518, 11.057956, 21.205305>,  <12.952882, 11.442787, 21.291912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.886518, 11.057956, 21.205305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505209, 0.105636, -0.856507,
		0.846899, -0.251490, 0.468524,
		-0.165910, -0.962078, -0.216518,
		12.836744, 10.769333, 21.140350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548829, 11.138313, 20.976627>,  <12.952882, 11.442787, 21.291912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548829, 11.138313, 20.976627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309049, 10.835418, 20.872898>,  <13.165180, 10.653681, 20.810661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309049, 10.835418, 20.872898>,  <13.548829, 11.138313, 20.976627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309049, 10.835418, 20.872898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292118, 0.094663, -0.951686,
		0.745202, -0.646242, 0.164457,
		-0.599451, -0.757239, -0.259322,
		13.129213, 10.608246, 20.795101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.935591, 10.683186, 20.524433>,  <13.548829, 11.138313, 20.976627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.935591, 10.683186, 20.524433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.541026, 10.693809, 20.459583>,  <13.304287, 10.700182, 20.420673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.541026, 10.693809, 20.459583>,  <13.935591, 10.683186, 20.524433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.541026, 10.693809, 20.459583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164286, 0.159694, -0.973400,
		0.000039, -0.986809, -0.161888,
		-0.986413, 0.026558, -0.162125,
		13.245102, 10.701776, 20.410946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.840134, 10.066661, 20.069853>,  <13.935591, 10.683186, 20.524433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.840134, 10.066661, 20.069853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.552373, 10.342222, 20.034367>,  <13.379716, 10.507559, 20.013075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.552373, 10.342222, 20.034367>,  <13.840134, 10.066661, 20.069853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.552373, 10.342222, 20.034367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292646, 0.184781, -0.938197,
		-0.629935, -0.700904, -0.334537,
		-0.719402, 0.688905, -0.088717,
		13.336553, 10.548894, 20.007751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.778197, 10.005635, 19.350718>,  <13.840134, 10.066661, 20.069853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.778197, 10.005635, 19.350718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554400, 10.319389, 19.457830>,  <13.420122, 10.507642, 19.522099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554400, 10.319389, 19.457830>,  <13.778197, 10.005635, 19.350718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.554400, 10.319389, 19.457830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059104, 0.360019, -0.931071,
		-0.826726, -0.505099, -0.247788,
		-0.559491, 0.784386, 0.267784,
		13.386553, 10.554705, 19.538166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.243105, 9.914071, 18.802879>,  <13.778197, 10.005635, 19.350718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.243105, 9.914071, 18.802879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250213, 10.294028, 18.927706>,  <13.254478, 10.522003, 19.002602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250213, 10.294028, 18.927706>,  <13.243105, 9.914071, 18.802879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250213, 10.294028, 18.927706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059382, 0.310564, -0.948696,
		-0.998077, 0.035388, -0.050888,
		0.017769, 0.949894, 0.312068,
		13.255544, 10.578997, 19.021326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740232, 10.246303, 18.424133>,  <13.243105, 9.914071, 18.802879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740232, 10.246303, 18.424133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.019683, 10.507182, 18.541813>,  <13.187354, 10.663710, 18.612421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.019683, 10.507182, 18.541813>,  <12.740232, 10.246303, 18.424133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.019683, 10.507182, 18.541813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180661, 0.237060, -0.954549,
		-0.692299, 0.720026, 0.047790,
		0.698629, 0.652200, 0.294197,
		13.229272, 10.702842, 18.630072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.670362, 10.778108, 17.891201>,  <12.740232, 10.246303, 18.424133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.670362, 10.778108, 17.891201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.019742, 10.805634, 18.084011>,  <13.229370, 10.822149, 18.199697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.019742, 10.805634, 18.084011>,  <12.670362, 10.778108, 17.891201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.019742, 10.805634, 18.084011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478543, 0.061461, -0.875910,
		-0.089901, 0.995735, 0.020752,
		0.873450, 0.068814, 0.482027,
		13.281777, 10.826278, 18.228619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985003, 11.315989, 17.547405>,  <12.670362, 10.778108, 17.891201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985003, 11.315989, 17.547405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274392, 11.114725, 17.736473>,  <13.448026, 10.993966, 17.849915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274392, 11.114725, 17.736473>,  <12.985003, 11.315989, 17.547405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274392, 11.114725, 17.736473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596333, 0.110529, -0.795092,
		0.347816, 0.857095, 0.380016,
		0.723472, -0.503162, 0.472670,
		13.491434, 10.963777, 17.878275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.579563, 11.736050, 17.524872>,  <12.985003, 11.315989, 17.547405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.579563, 11.736050, 17.524872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683893, 11.352190, 17.566910>,  <13.746491, 11.121875, 17.592133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683893, 11.352190, 17.566910>,  <13.579563, 11.736050, 17.524872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683893, 11.352190, 17.566910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617649, 0.082218, -0.782144,
		0.741943, 0.268915, 0.614170,
		0.260826, -0.959648, 0.105093,
		13.762141, 11.064296, 17.598438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.320735, 11.679006, 17.283556>,  <13.579563, 11.736050, 17.524872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.320735, 11.679006, 17.283556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244258, 11.286539, 17.294556>,  <14.198372, 11.051059, 17.301155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244258, 11.286539, 17.294556>,  <14.320735, 11.679006, 17.283556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244258, 11.286539, 17.294556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653410, -0.148132, -0.742369,
		0.732462, -0.123966, 0.669426,
		-0.191192, -0.981167, 0.027501,
		14.186900, 10.992188, 17.302807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054791, 11.443963, 17.374313>,  <14.320735, 11.679006, 17.283556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.054791, 11.443963, 17.374313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.798309, 11.168464, 17.238974>,  <14.644420, 11.003164, 17.157770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.798309, 11.168464, 17.238974>,  <15.054791, 11.443963, 17.374313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.798309, 11.168464, 17.238974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617989, -0.202092, -0.759768,
		0.454911, -0.696265, 0.555221,
		-0.641206, -0.688748, -0.338350,
		14.605947, 10.961840, 17.137468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319092, 10.914775, 16.921822>,  <15.054791, 11.443963, 17.374313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319092, 10.914775, 16.921822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939824, 10.932052, 16.795897>,  <14.712263, 10.942417, 16.720341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939824, 10.932052, 16.795897>,  <15.319092, 10.914775, 16.921822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939824, 10.932052, 16.795897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314705, -0.009487, -0.949142,
		-0.043988, -0.999022, -0.004599,
		-0.948170, 0.043198, -0.314814,
		14.655373, 10.945009, 16.701452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791553, 10.455206, 17.184814>,  <15.319092, 10.914775, 16.921822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791553, 10.455206, 17.184814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045126, 10.759789, 17.130688>,  <16.197269, 10.942539, 17.098211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045126, 10.759789, 17.130688>,  <15.791553, 10.455206, 17.184814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045126, 10.759789, 17.130688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298332, -0.079344, 0.951158,
		0.713531, -0.643340, -0.277466,
		0.633933, 0.761458, -0.135315,
		16.235306, 10.988227, 17.090094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530146, 10.239585, 17.324730>,  <15.791553, 10.455206, 17.184814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530146, 10.239585, 17.324730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495970, 10.636453, 17.361174>,  <16.475464, 10.874573, 17.383039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495970, 10.636453, 17.361174>,  <16.530146, 10.239585, 17.324730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495970, 10.636453, 17.361174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349576, -0.055778, 0.935246,
		0.933004, 0.111757, -0.342073,
		-0.085440, 0.992169, 0.091109,
		16.470337, 10.934103, 17.388506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049601, 10.445822, 17.864866>,  <16.530146, 10.239585, 17.324730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049601, 10.445822, 17.864866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813976, 10.768984, 17.871712>,  <16.672602, 10.962881, 17.875818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.813976, 10.768984, 17.871712>,  <17.049601, 10.445822, 17.864866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.813976, 10.768984, 17.871712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210721, 0.133129, 0.968439,
		0.780129, 0.574077, -0.248664,
		-0.589063, 0.807906, 0.017112,
		16.637257, 11.011355, 17.876846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.505110, 10.917395, 18.215664>,  <17.049601, 10.445822, 17.864866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.505110, 10.917395, 18.215664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.132072, 11.060320, 18.236034>,  <16.908249, 11.146075, 18.248257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.132072, 11.060320, 18.236034>,  <17.505110, 10.917395, 18.215664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.132072, 11.060320, 18.236034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131258, 0.204325, 0.970063,
		0.336211, 0.911361, -0.237453,
		-0.932595, 0.357314, 0.050927,
		16.852293, 11.167514, 18.251312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567938, 11.492659, 18.602905>,  <17.505110, 10.917395, 18.215664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567938, 11.492659, 18.602905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187346, 11.375281, 18.639954>,  <16.958990, 11.304855, 18.662182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187346, 11.375281, 18.639954>,  <17.567938, 11.492659, 18.602905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187346, 11.375281, 18.639954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037126, 0.408268, 0.912107,
		-0.305464, 0.864413, -0.399352,
		-0.951480, -0.293442, 0.092619,
		16.901901, 11.287249, 18.667740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232580, 12.111520, 18.700109>,  <17.567938, 11.492659, 18.602905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.232580, 12.111520, 18.700109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.991478, 11.842077, 18.871195>,  <16.846817, 11.680412, 18.973846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.991478, 11.842077, 18.871195>,  <17.232580, 12.111520, 18.700109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991478, 11.842077, 18.871195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106530, 0.463298, 0.879776,
		-0.790781, 0.575856, -0.207497,
		-0.602757, -0.673606, 0.427713,
		16.810650, 11.639996, 18.999508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802547, 12.571789, 19.093805>,  <17.232580, 12.111520, 18.700109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.802547, 12.571789, 19.093805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746677, 12.204512, 19.242083>,  <16.713156, 11.984145, 19.331049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746677, 12.204512, 19.242083>,  <16.802547, 12.571789, 19.093805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746677, 12.204512, 19.242083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119909, 0.387293, 0.914126,
		-0.982910, 0.083230, -0.164195,
		-0.139675, -0.918192, 0.370694,
		16.704775, 11.929054, 19.353291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290794, 12.700398, 19.561527>,  <16.802547, 12.571789, 19.093805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290794, 12.700398, 19.561527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427008, 12.349527, 19.696936>,  <16.508736, 12.139005, 19.778181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427008, 12.349527, 19.696936>,  <16.290794, 12.700398, 19.561527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427008, 12.349527, 19.696936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045851, 0.344120, 0.937806,
		-0.939114, -0.334876, 0.076965,
		0.340534, -0.877177, 0.338522,
		16.529167, 12.086374, 19.798492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969297, 12.577522, 20.258377>,  <16.290794, 12.700398, 19.561527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.969297, 12.577522, 20.258377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266449, 12.311646, 20.290161>,  <16.444740, 12.152120, 20.309231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266449, 12.311646, 20.290161>,  <15.969297, 12.577522, 20.258377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266449, 12.311646, 20.290161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132315, -0.029440, 0.990770,
		-0.656219, -0.746536, -0.109819,
		0.742879, -0.664693, 0.079459,
		16.489313, 12.112238, 20.313999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.654321, 11.990872, 20.545719>,  <15.969297, 12.577522, 20.258377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.654321, 11.990872, 20.545719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.044981, 12.003311, 20.630747>,  <16.279377, 12.010775, 20.681765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.044981, 12.003311, 20.630747>,  <15.654321, 11.990872, 20.545719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.044981, 12.003311, 20.630747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211194, -0.042366, 0.976526,
		0.039377, -0.998618, -0.034808,
		0.976651, 0.031102, 0.212571,
		16.337976, 12.012640, 20.694517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.731200, 11.481264, 21.016037>,  <15.654321, 11.990872, 20.545719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.731200, 11.481264, 21.016037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033550, 11.741573, 21.044743>,  <16.214960, 11.897758, 21.061966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033550, 11.741573, 21.044743>,  <15.731200, 11.481264, 21.016037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033550, 11.741573, 21.044743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087572, -0.008130, 0.996125,
		0.648834, -0.759229, 0.050845,
		0.755874, 0.650773, 0.071762,
		16.260313, 11.936805, 21.066271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888019, 11.397453, 21.637896>,  <15.731200, 11.481264, 21.016037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888019, 11.397453, 21.637896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090326, 11.736675, 21.574650>,  <16.211712, 11.940208, 21.536703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090326, 11.736675, 21.574650>,  <15.888019, 11.397453, 21.637896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.090326, 11.736675, 21.574650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072215, 0.141021, 0.987369,
		0.859641, -0.510799, 0.010082,
		0.505769, 0.848055, -0.158115,
		16.242058, 11.991092, 21.527216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376499, 11.431937, 22.183802>,  <15.888019, 11.397453, 21.637896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.376499, 11.431937, 22.183802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.374693, 11.812864, 22.061771>,  <16.373610, 12.041420, 21.988554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.374693, 11.812864, 22.061771>,  <16.376499, 11.431937, 22.183802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.374693, 11.812864, 22.061771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162746, 0.300312, 0.939854,
		0.986658, 0.053895, 0.153629,
		-0.004516, 0.952317, -0.305076,
		16.373339, 12.098559, 21.970249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.780617, 11.879169, 22.707262>,  <16.376499, 11.431937, 22.183802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.780617, 11.879169, 22.707262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533367, 12.119681, 22.504725>,  <16.385017, 12.263988, 22.383202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533367, 12.119681, 22.504725>,  <16.780617, 11.879169, 22.707262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.533367, 12.119681, 22.504725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325553, 0.390489, 0.861123,
		0.715499, 0.697122, -0.045622,
		-0.618123, 0.601280, -0.506345,
		16.347931, 12.300066, 22.352821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890415, 12.453244, 22.987774>,  <16.780617, 11.879169, 22.707262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.890415, 12.453244, 22.987774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531967, 12.506531, 22.818438>,  <16.316898, 12.538503, 22.716835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531967, 12.506531, 22.818438>,  <16.890415, 12.453244, 22.987774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531967, 12.506531, 22.818438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370563, 0.300335, 0.878910,
		0.244230, 0.944485, -0.219771,
		-0.896122, 0.133217, -0.423342,
		16.263130, 12.546495, 22.691435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.754835, 13.071197, 23.117434>,  <16.890415, 12.453244, 22.987774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.754835, 13.071197, 23.117434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.395327, 12.909637, 23.049227>,  <16.179621, 12.812702, 23.008303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.395327, 12.909637, 23.049227>,  <16.754835, 13.071197, 23.117434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.395327, 12.909637, 23.049227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349016, 0.423786, 0.835819,
		-0.265324, 0.810723, -0.521853,
		-0.898772, -0.403898, -0.170515,
		16.125694, 12.788468, 22.998072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196585, 13.637010, 23.193918>,  <16.754835, 13.071197, 23.117434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196585, 13.637010, 23.193918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037247, 13.272223, 23.233187>,  <15.941644, 13.053350, 23.256748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037247, 13.272223, 23.233187>,  <16.196585, 13.637010, 23.193918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037247, 13.272223, 23.233187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469057, 0.294512, 0.832615,
		-0.788229, 0.285622, -0.545082,
		-0.398346, -0.911967, 0.098170,
		15.917743, 12.998632, 23.262638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481465, 13.743538, 23.223637>,  <16.196585, 13.637010, 23.193918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.481465, 13.743538, 23.223637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.569226, 13.390936, 23.390877>,  <15.621883, 13.179375, 23.491220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.569226, 13.390936, 23.390877>,  <15.481465, 13.743538, 23.223637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569226, 13.390936, 23.390877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660369, 0.181277, 0.728732,
		-0.718174, -0.435988, -0.542347,
		0.219403, -0.881506, 0.418102,
		15.635047, 13.126484, 23.516308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.871761, 13.365394, 23.281736>,  <15.481465, 13.743538, 23.223637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.871761, 13.365394, 23.281736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.122207, 13.191767, 23.540833>,  <15.272474, 13.087590, 23.696289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.122207, 13.191767, 23.540833>,  <14.871761, 13.365394, 23.281736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.122207, 13.191767, 23.540833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687216, 0.085292, 0.721429,
		-0.368396, -0.896833, -0.244896,
		0.626114, -0.434068, 0.647739,
		15.310041, 13.061546, 23.735155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.546685, 12.855838, 23.739185>,  <14.871761, 13.365394, 23.281736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.546685, 12.855838, 23.739185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871354, 12.905127, 23.967573>,  <15.066155, 12.934700, 24.104605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871354, 12.905127, 23.967573>,  <14.546685, 12.855838, 23.739185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.871354, 12.905127, 23.967573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583581, 0.129351, 0.801686,
		0.024929, -0.983913, 0.176900,
		0.811672, 0.123221, 0.570969,
		15.114856, 12.942094, 24.138865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.425904, 12.430116, 24.308859>,  <14.546685, 12.855838, 23.739185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.425904, 12.430116, 24.308859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694984, 12.706391, 24.415009>,  <14.856433, 12.872156, 24.478699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694984, 12.706391, 24.415009>,  <14.425904, 12.430116, 24.308859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.694984, 12.706391, 24.415009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548425, 0.224676, 0.805451,
		0.496693, -0.687364, 0.529931,
		0.672701, 0.690689, 0.265373,
		14.896795, 12.913598, 24.494621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.530860, 12.313872, 25.037634>,  <14.425904, 12.430116, 24.308859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.530860, 12.313872, 25.037634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659798, 12.686085, 24.968117>,  <14.737160, 12.909412, 24.926407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659798, 12.686085, 24.968117>,  <14.530860, 12.313872, 25.037634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659798, 12.686085, 24.968117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461988, 0.314887, 0.829104,
		0.826234, -0.186965, 0.531396,
		0.322343, 0.930532, -0.173795,
		14.756501, 12.965244, 24.915977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801924, 12.607185, 25.681915>,  <14.530860, 12.313872, 25.037634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.801924, 12.607185, 25.681915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.752933, 12.945842, 25.474764>,  <14.723538, 13.149035, 25.350473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.752933, 12.945842, 25.474764>,  <14.801924, 12.607185, 25.681915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752933, 12.945842, 25.474764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474395, 0.408396, 0.779847,
		0.871751, 0.341193, 0.351622,
		-0.122477, 0.846640, -0.517880,
		14.716189, 13.199834, 25.319401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.849432, 13.132187, 26.156282>,  <14.801924, 12.607185, 25.681915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.849432, 13.132187, 26.156282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642961, 13.299948, 25.857574>,  <14.519077, 13.400604, 25.678350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642961, 13.299948, 25.857574>,  <14.849432, 13.132187, 26.156282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642961, 13.299948, 25.857574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586965, 0.461731, 0.665038,
		0.623724, 0.781605, 0.007838,
		-0.516179, 0.419401, -0.746768,
		14.488107, 13.425768, 25.633545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.761008, 13.783081, 26.382042>,  <14.849432, 13.132187, 26.156282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.761008, 13.783081, 26.382042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477910, 13.731228, 26.104252>,  <14.308051, 13.700116, 25.937578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477910, 13.731228, 26.104252>,  <14.761008, 13.783081, 26.382042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477910, 13.731228, 26.104252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650125, 0.504203, 0.568433,
		0.276468, 0.853800, -0.441125,
		-0.707745, -0.129632, -0.694473,
		14.265587, 13.692338, 25.895910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497007, 14.393641, 26.361084>,  <14.761008, 13.783081, 26.382042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497007, 14.393641, 26.361084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.231105, 14.150540, 26.187309>,  <14.071563, 14.004680, 26.083044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.231105, 14.150540, 26.187309>,  <14.497007, 14.393641, 26.361084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.231105, 14.150540, 26.187309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745307, 0.499722, 0.441356,
		-0.051139, 0.617182, -0.785157,
		-0.664757, -0.607753, -0.434435,
		14.031677, 13.968214, 26.056978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.994953, 14.852198, 25.955162>,  <14.497007, 14.393641, 26.361084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.994953, 14.852198, 25.955162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807181, 14.506246, 26.026287>,  <13.694518, 14.298675, 26.068962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807181, 14.506246, 26.026287>,  <13.994953, 14.852198, 25.955162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.807181, 14.506246, 26.026287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765026, 0.498944, 0.407174,
		-0.440876, 0.055107, -0.895875,
		-0.469430, -0.864881, 0.177813,
		13.666352, 14.246781, 26.079632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.415218, 15.001363, 25.824423>,  <13.994953, 14.852198, 25.955162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.415218, 15.001363, 25.824423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.323352, 14.664078, 26.018843>,  <13.268232, 14.461707, 26.135494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.323352, 14.664078, 26.018843>,  <13.415218, 15.001363, 25.824423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.323352, 14.664078, 26.018843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834313, 0.427729, 0.347808,
		-0.501174, -0.325639, -0.801738,
		-0.229667, -0.843212, 0.486052,
		13.254452, 14.411114, 26.164658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747383, 14.878398, 25.721476>,  <13.415218, 15.001363, 25.824423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.747383, 14.878398, 25.721476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.832797, 14.692117, 26.064993>,  <12.884046, 14.580348, 26.271103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.832797, 14.692117, 26.064993>,  <12.747383, 14.878398, 25.721476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.832797, 14.692117, 26.064993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831466, 0.374885, 0.410031,
		-0.512901, -0.801612, -0.307165,
		0.213534, -0.465703, 0.858793,
		12.896857, 14.552406, 26.322630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.164202, 14.590930, 25.912725>,  <12.747383, 14.878398, 25.721476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.164202, 14.590930, 25.912725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371877, 14.619900, 26.253361>,  <12.496482, 14.637281, 26.457741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371877, 14.619900, 26.253361>,  <12.164202, 14.590930, 25.912725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.371877, 14.619900, 26.253361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798420, 0.396578, 0.453047,
		-0.304909, -0.915140, 0.263723,
		0.519188, 0.072423, 0.851586,
		12.527633, 14.641626, 26.508837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.770654, 14.306237, 26.420763>,  <12.164202, 14.590930, 25.912725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.770654, 14.306237, 26.420763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.025709, 14.535298, 26.626863>,  <12.178742, 14.672735, 26.750525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.025709, 14.535298, 26.626863>,  <11.770654, 14.306237, 26.420763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.025709, 14.535298, 26.626863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765052, 0.392552, 0.510489,
		0.090069, -0.719703, 0.688415,
		0.637639, 0.572652, 0.515253,
		12.217001, 14.707094, 26.781439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.528277, 14.213271, 27.064991>,  <11.770654, 14.306237, 26.420763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.528277, 14.213271, 27.064991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.758353, 14.539285, 27.092928>,  <11.896399, 14.734893, 27.109690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.758353, 14.539285, 27.092928>,  <11.528277, 14.213271, 27.064991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.758353, 14.539285, 27.092928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648643, 0.402404, 0.646014,
		0.498420, -0.416879, 0.760124,
		0.575187, 0.815036, 0.069839,
		11.930910, 14.783795, 27.113880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849622, 14.341241, 27.790409>,  <11.528277, 14.213271, 27.064991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.849622, 14.341241, 27.790409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.801596, 14.686587, 27.594376>,  <11.772780, 14.893795, 27.476755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.801596, 14.686587, 27.594376>,  <11.849622, 14.341241, 27.790409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.801596, 14.686587, 27.594376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564512, 0.346706, 0.749080,
		0.816645, 0.366598, 0.445753,
		-0.120066, 0.863366, -0.490085,
		11.765576, 14.945597, 27.447350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.257568, 14.864282, 28.212250>,  <11.849622, 14.341241, 27.790409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.257568, 14.864282, 28.212250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.934205, 14.981770, 28.008209>,  <11.740187, 15.052262, 27.885784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.934205, 14.981770, 28.008209>,  <12.257568, 14.864282, 28.212250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.934205, 14.981770, 28.008209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394730, 0.372347, 0.839968,
		0.436649, 0.880390, -0.185069,
		-0.808409, 0.293719, -0.510101,
		11.691682, 15.069885, 27.855179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.021816, 15.540465, 28.444492>,  <12.257568, 14.864282, 28.212250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.021816, 15.540465, 28.444492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703853, 15.326423, 28.330101>,  <11.513075, 15.197997, 28.261467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703853, 15.326423, 28.330101>,  <12.021816, 15.540465, 28.444492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703853, 15.326423, 28.330101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457749, 0.219558, 0.861545,
		-0.398229, 0.815755, -0.419473,
		-0.794908, -0.535106, -0.285977,
		11.465380, 15.165891, 28.244308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.985878, 16.235203, 28.521513>,  <12.021816, 15.540465, 28.444492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.985878, 16.235203, 28.521513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.000465, 16.169912, 28.915878>,  <12.009218, 16.130737, 29.152498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.000465, 16.169912, 28.915878>,  <11.985878, 16.235203, 28.521513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.000465, 16.169912, 28.915878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599296, 0.793055, 0.109129,
		-0.799697, 0.586874, 0.126743,
		0.036469, -0.163227, 0.985914,
		12.011406, 16.120945, 29.211653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.085928, 16.916107, 28.660097>,  <11.985878, 16.235203, 28.521513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.085928, 16.916107, 28.660097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.212584, 16.714361, 28.981432>,  <12.288579, 16.593313, 29.174232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.212584, 16.714361, 28.981432>,  <12.085928, 16.916107, 28.660097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.212584, 16.714361, 28.981432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774429, 0.626498, 0.088091,
		-0.547720, 0.594236, 0.588970,
		0.316642, -0.504365, 0.803339,
		12.307577, 16.563051, 29.222433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.234020, 17.401482, 29.067682>,  <12.085928, 16.916107, 28.660097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.234020, 17.401482, 29.067682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.501778, 17.120052, 29.163094>,  <12.662432, 16.951195, 29.220341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.501778, 17.120052, 29.163094>,  <12.234020, 17.401482, 29.067682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.501778, 17.120052, 29.163094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719940, 0.693572, 0.025391,
		-0.183302, 0.154731, 0.970803,
		0.669393, -0.703574, 0.238530,
		12.702596, 16.908979, 29.234652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.555980, 17.592344, 28.818745>,  <12.234020, 17.401482, 29.067682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.555980, 17.592344, 28.818745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558570, 17.976446, 28.707125>,  <11.560124, 18.206907, 28.640154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558570, 17.976446, 28.707125>,  <11.555980, 17.592344, 28.818745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.558570, 17.976446, 28.707125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216637, -0.273773, -0.937078,
		-0.976231, -0.054384, -0.209800,
		0.006476, 0.960255, -0.279048,
		11.560513, 18.264523, 28.623411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.128490, 17.634687, 28.181225>,  <11.555980, 17.592344, 28.818745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.128490, 17.634687, 28.181225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.354133, 17.964270, 28.202713>,  <11.489518, 18.162018, 28.215605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.354133, 17.964270, 28.202713>,  <11.128490, 17.634687, 28.181225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.354133, 17.964270, 28.202713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276896, -0.127478, -0.952406,
		-0.777890, 0.552132, -0.300061,
		0.564106, 0.823953, 0.053719,
		11.523364, 18.211456, 28.218828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.016064, 17.926107, 27.517128>,  <11.128490, 17.634687, 28.181225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.016064, 17.926107, 27.517128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340048, 18.112505, 27.659573>,  <11.534438, 18.224342, 27.745039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340048, 18.112505, 27.659573>,  <11.016064, 17.926107, 27.517128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.340048, 18.112505, 27.659573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431649, -0.062586, -0.899868,
		-0.397043, 0.882573, -0.251838,
		0.809960, 0.465992, 0.356113,
		11.583035, 18.252302, 27.766407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.393948, 18.308966, 26.969318>,  <11.016064, 17.926107, 27.517128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.393948, 18.308966, 26.969318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.690656, 18.239916, 27.228542>,  <11.868680, 18.198486, 27.384077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.690656, 18.239916, 27.228542>,  <11.393948, 18.308966, 26.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.690656, 18.239916, 27.228542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600500, -0.259316, -0.756409,
		0.298626, 0.950240, -0.088692,
		0.741769, -0.172624, 0.648058,
		11.913186, 18.188129, 27.422960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.958702, 18.677492, 26.626369>,  <11.393948, 18.308966, 26.969318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.958702, 18.677492, 26.626369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105624, 18.400347, 26.874571>,  <12.193777, 18.234058, 27.023491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.105624, 18.400347, 26.874571>,  <11.958702, 18.677492, 26.626369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.105624, 18.400347, 26.874571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774170, -0.142012, -0.616842,
		0.515507, 0.706944, 0.484234,
		0.367305, -0.692866, 0.620503,
		12.215816, 18.192488, 27.060722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.558867, 18.841553, 26.439468>,  <11.958702, 18.677492, 26.626369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.558867, 18.841553, 26.439468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.651884, 18.521822, 26.661100>,  <12.707694, 18.329985, 26.794079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.651884, 18.521822, 26.661100>,  <12.558867, 18.841553, 26.439468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.651884, 18.521822, 26.661100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818392, -0.147002, -0.555541,
		0.525508, 0.582641, 0.619977,
		0.232543, -0.799325, 0.554079,
		12.721647, 18.282024, 26.827324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.247351, 18.874504, 26.745573>,  <12.558867, 18.841553, 26.439468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.247351, 18.874504, 26.745573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.151471, 18.487232, 26.716816>,  <13.093944, 18.254869, 26.699562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.151471, 18.487232, 26.716816>,  <13.247351, 18.874504, 26.745573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.151471, 18.487232, 26.716816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762829, -0.142018, -0.630812,
		0.600531, -0.206047, 0.772598,
		-0.239700, -0.968182, -0.071892,
		13.079561, 18.196777, 26.695248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.916642, 18.464933, 26.897215>,  <13.247351, 18.874504, 26.745573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.916642, 18.464933, 26.897215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.677856, 18.192011, 26.728413>,  <13.534585, 18.028257, 26.627131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.677856, 18.192011, 26.728413>,  <13.916642, 18.464933, 26.897215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.677856, 18.192011, 26.728413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753445, -0.296106, -0.587062,
		0.275599, -0.668413, 0.690846,
		-0.596964, -0.682308, -0.422006,
		13.498767, 17.987318, 26.601810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.380930, 17.929106, 26.803881>,  <13.916642, 18.464933, 26.897215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.380930, 17.929106, 26.803881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078962, 17.848583, 26.554218>,  <13.897781, 17.800270, 26.404421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078962, 17.848583, 26.554218>,  <14.380930, 17.929106, 26.803881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078962, 17.848583, 26.554218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643496, -0.410986, -0.645757,
		-0.126525, -0.889138, 0.439802,
		-0.754920, -0.201307, -0.624157,
		13.852487, 17.788191, 26.366972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445050, 17.186672, 26.563906>,  <14.380930, 17.929106, 26.803881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.445050, 17.186672, 26.563906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203928, 17.360241, 26.296074>,  <14.059255, 17.464382, 26.135374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203928, 17.360241, 26.296074>,  <14.445050, 17.186672, 26.563906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203928, 17.360241, 26.296074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428498, -0.531850, -0.730428,
		-0.673065, -0.727220, 0.134667,
		-0.602804, 0.433921, -0.669582,
		14.023087, 17.490417, 26.095200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.155643, 16.634521, 26.105103>,  <14.445050, 17.186672, 26.563906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.155643, 16.634521, 26.105103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.148264, 16.980400, 25.904322>,  <14.143837, 17.187927, 25.783854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.148264, 16.980400, 25.904322>,  <14.155643, 16.634521, 26.105103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.148264, 16.980400, 25.904322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559784, -0.407045, -0.721774,
		-0.828434, -0.294298, -0.476536,
		-0.018445, 0.864699, -0.501953,
		14.142731, 17.239809, 25.753736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.112274, 16.445488, 25.389435>,  <14.155643, 16.634521, 26.105103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.112274, 16.445488, 25.389435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230945, 16.826815, 25.366920>,  <14.302147, 17.055611, 25.353413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230945, 16.826815, 25.366920>,  <14.112274, 16.445488, 25.389435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230945, 16.826815, 25.366920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569975, -0.224050, -0.790525,
		-0.766233, 0.202449, -0.609837,
		0.296675, 0.953318, -0.056284,
		14.319947, 17.112810, 25.350035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054863, 16.611027, 24.761580>,  <14.112274, 16.445488, 25.389435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054863, 16.611027, 24.761580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.336884, 16.847958, 24.917553>,  <14.506097, 16.990116, 25.011137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.336884, 16.847958, 24.917553>,  <14.054863, 16.611027, 24.761580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.336884, 16.847958, 24.917553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630979, -0.273011, -0.726176,
		-0.323676, 0.758033, -0.566232,
		0.705053, 0.592326, 0.389936,
		14.548400, 17.025656, 25.034534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.209983, 17.129919, 24.242565>,  <14.054863, 16.611027, 24.761580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.209983, 17.129919, 24.242565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526752, 17.064854, 24.477987>,  <14.716814, 17.025814, 24.619240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526752, 17.064854, 24.477987>,  <14.209983, 17.129919, 24.242565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.526752, 17.064854, 24.477987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578693, -0.107660, -0.808408,
		0.194864, 0.980790, 0.008874,
		0.791923, -0.162665, 0.588556,
		14.764330, 17.016054, 24.654554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.808131, 17.580093, 23.961010>,  <14.209983, 17.129919, 24.242565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.808131, 17.580093, 23.961010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.009752, 17.342300, 24.211615>,  <15.130725, 17.199625, 24.361979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.009752, 17.342300, 24.211615>,  <14.808131, 17.580093, 23.961010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.009752, 17.342300, 24.211615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713662, -0.121871, -0.689808,
		0.486433, 0.794818, 0.362831,
		0.504053, -0.594484, 0.626513,
		15.160968, 17.163956, 24.399569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675179, 17.708109, 23.910421>,  <14.808131, 17.580093, 23.961010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675179, 17.708109, 23.910421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.584899, 17.347288, 24.057587>,  <15.530731, 17.130795, 24.145885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.584899, 17.347288, 24.057587>,  <15.675179, 17.708109, 23.910421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584899, 17.347288, 24.057587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567582, -0.428697, -0.702901,
		0.791777, 0.050176, 0.608746,
		-0.225698, -0.902054, 0.367911,
		15.517189, 17.076672, 24.167959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269775, 17.250748, 23.791159>,  <15.675179, 17.708109, 23.910421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269775, 17.250748, 23.791159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994281, 16.972315, 23.872261>,  <15.828984, 16.805254, 23.920923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994281, 16.972315, 23.872261>,  <16.269775, 17.250748, 23.791159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994281, 16.972315, 23.872261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457513, -0.634226, -0.623249,
		0.562428, -0.336489, 0.755281,
		-0.688736, -0.696084, 0.202758,
		15.787660, 16.763491, 23.933088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648607, 16.594507, 23.938818>,  <16.269775, 17.250748, 23.791159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.648607, 16.594507, 23.938818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268936, 16.520674, 23.836845>,  <16.041134, 16.476374, 23.775661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268936, 16.520674, 23.836845>,  <16.648607, 16.594507, 23.938818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268936, 16.520674, 23.836845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309765, -0.691279, -0.652824,
		-0.055727, -0.698615, 0.713325,
		-0.949179, -0.184583, -0.254929,
		15.984182, 16.465300, 23.760366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592134, 15.884760, 23.968916>,  <16.648607, 16.594507, 23.938818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.592134, 15.884760, 23.968916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288925, 15.998834, 23.734285>,  <16.107000, 16.067278, 23.593506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288925, 15.998834, 23.734285>,  <16.592134, 15.884760, 23.968916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288925, 15.998834, 23.734285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332094, -0.605274, -0.723434,
		-0.561349, -0.743179, 0.364105,
		-0.758024, 0.285181, -0.586576,
		16.061518, 16.084389, 23.558311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.324709, 15.187539, 23.730021>,  <16.592134, 15.884760, 23.968916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.324709, 15.187539, 23.730021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202408, 15.447947, 23.452116>,  <16.129026, 15.604191, 23.285374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202408, 15.447947, 23.452116>,  <16.324709, 15.187539, 23.730021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202408, 15.447947, 23.452116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240734, -0.653134, -0.717957,
		-0.921175, -0.386769, 0.042975,
		-0.305753, 0.651018, -0.694759,
		16.110682, 15.643252, 23.243689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951525, 14.762237, 23.190857>,  <16.324709, 15.187539, 23.730021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951525, 14.762237, 23.190857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060484, 15.108132, 23.022085>,  <16.125860, 15.315670, 22.920822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060484, 15.108132, 23.022085>,  <15.951525, 14.762237, 23.190857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060484, 15.108132, 23.022085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203988, -0.480444, -0.852973,
		-0.940313, 0.146281, -0.307269,
		0.272399, 0.864740, -0.421928,
		16.142204, 15.367555, 22.895508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621795, 14.736001, 22.519299>,  <15.951525, 14.762237, 23.190857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621795, 14.736001, 22.519299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930910, 14.989858, 22.517208>,  <16.116379, 15.142172, 22.515953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930910, 14.989858, 22.517208>,  <15.621795, 14.736001, 22.519299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.930910, 14.989858, 22.517208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399660, -0.493020, -0.772789,
		-0.493020, 0.595115, -0.634641,
		0.772789, 0.634641, -0.005226,
		16.162746, 15.180250, 22.515640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480056, 14.976452, 21.881413>,  <15.621795, 14.736001, 22.519299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480056, 14.976452, 21.881413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854755, 15.064084, 21.990595>,  <16.079575, 15.116663, 22.056105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854755, 15.064084, 21.990595>,  <15.480056, 14.976452, 21.881413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854755, 15.064084, 21.990595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346135, -0.464293, -0.815244,
		-0.051872, 0.858159, -0.510757,
		0.936750, 0.219079, 0.272955,
		16.135780, 15.129807, 22.072481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.713380, 15.519842, 21.544577>,  <15.480056, 14.976452, 21.881413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.713380, 15.519842, 21.544577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037773, 15.305223, 21.637894>,  <16.232409, 15.176452, 21.693884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037773, 15.305223, 21.637894>,  <15.713380, 15.519842, 21.544577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037773, 15.305223, 21.637894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208647, -0.107299, -0.972087,
		0.546603, 0.837021, 0.024932,
		0.810982, -0.536547, 0.233292,
		16.281067, 15.144259, 21.707882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.120951, 15.692368, 20.997709>,  <15.713380, 15.519842, 21.544577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.120951, 15.692368, 20.997709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322340, 15.389000, 21.163271>,  <16.443174, 15.206980, 21.262608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322340, 15.389000, 21.163271>,  <16.120951, 15.692368, 20.997709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322340, 15.389000, 21.163271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344760, -0.262916, -0.901119,
		0.792247, 0.596387, 0.129101,
		0.503473, -0.758418, 0.413904,
		16.473381, 15.161474, 21.287443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693758, 15.669847, 20.625813>,  <16.120951, 15.692368, 20.997709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693758, 15.669847, 20.625813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685194, 15.303362, 20.785860>,  <16.680056, 15.083470, 20.881889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685194, 15.303362, 20.785860>,  <16.693758, 15.669847, 20.625813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.685194, 15.303362, 20.785860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435951, -0.368713, -0.820973,
		0.899716, 0.156856, 0.407318,
		-0.021409, -0.916213, 0.400119,
		16.678772, 15.028498, 20.905895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370230, 15.499426, 20.632275>,  <16.693758, 15.669847, 20.625813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370230, 15.499426, 20.632275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.182936, 15.148191, 20.671713>,  <17.070559, 14.937450, 20.695375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.182936, 15.148191, 20.671713>,  <17.370230, 15.499426, 20.632275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.182936, 15.148191, 20.671713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397751, -0.309097, -0.863859,
		0.789018, -0.365272, 0.493990,
		-0.468235, -0.878086, 0.098596,
		17.042465, 14.884766, 20.701292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846310, 15.036553, 20.948460>,  <17.370230, 15.499426, 20.632275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846310, 15.036553, 20.948460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605883, 14.812886, 20.720058>,  <17.461626, 14.678686, 20.583017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605883, 14.812886, 20.720058>,  <17.846310, 15.036553, 20.948460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605883, 14.812886, 20.720058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737614, -0.113115, -0.665680,
		0.307637, -0.821302, 0.480440,
		-0.601069, -0.559167, -0.571005,
		17.425562, 14.645136, 20.548758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.182747, 14.370127, 20.863729>,  <17.846310, 15.036553, 20.948460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.182747, 14.370127, 20.863729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.914003, 14.432388, 20.574074>,  <17.752758, 14.469746, 20.400280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.914003, 14.432388, 20.574074>,  <18.182747, 14.370127, 20.863729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914003, 14.432388, 20.574074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681314, -0.253634, -0.686645,
		-0.290546, -0.954694, 0.064357,
		-0.671859, 0.155655, -0.724139,
		17.712446, 14.479085, 20.356833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.470905, 14.018405, 20.315720>,  <18.182747, 14.370127, 20.863729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.470905, 14.018405, 20.315720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.168167, 14.198971, 20.126654>,  <17.986525, 14.307310, 20.013214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.168167, 14.198971, 20.126654>,  <18.470905, 14.018405, 20.315720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.168167, 14.198971, 20.126654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509057, -0.046450, -0.859479,
		-0.409937, -0.891104, -0.194641,
		-0.756844, 0.451415, -0.472664,
		17.941114, 14.334395, 19.984854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.401331, 13.694021, 19.640211>,  <18.470905, 14.018405, 20.315720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.401331, 13.694021, 19.640211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.226006, 14.050505, 19.593519>,  <18.120810, 14.264395, 19.565504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.226006, 14.050505, 19.593519>,  <18.401331, 13.694021, 19.640211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.226006, 14.050505, 19.593519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379244, 0.065632, -0.922966,
		-0.814895, -0.448818, -0.366754,
		-0.438315, 0.891210, -0.116728,
		18.094511, 14.317867, 19.558500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188951, 13.737721, 18.862574>,  <18.401331, 13.694021, 19.640211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188951, 13.737721, 18.862574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180742, 14.108506, 19.012409>,  <18.175816, 14.330977, 19.102310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180742, 14.108506, 19.012409>,  <18.188951, 13.737721, 18.862574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180742, 14.108506, 19.012409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216326, 0.369912, -0.903531,
		-0.976106, 0.062490, -0.208118,
		-0.020524, 0.926963, 0.374591,
		18.174585, 14.386595, 19.124786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834961, 14.098722, 18.270267>,  <18.188951, 13.737721, 18.862574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.834961, 14.098722, 18.270267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.977705, 14.405956, 18.482943>,  <18.063351, 14.590298, 18.610548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.977705, 14.405956, 18.482943>,  <17.834961, 14.098722, 18.270267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.977705, 14.405956, 18.482943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068282, 0.546193, -0.834872,
		-0.931659, 0.334237, 0.142468,
		0.356860, 0.768088, 0.531688,
		18.084763, 14.636383, 18.642448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392765, 14.632019, 18.209488>,  <17.834961, 14.098722, 18.270267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392765, 14.632019, 18.209488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.751078, 14.778079, 18.310869>,  <17.966066, 14.865715, 18.371698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.751078, 14.778079, 18.310869>,  <17.392765, 14.632019, 18.209488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751078, 14.778079, 18.310869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032410, 0.622345, -0.782072,
		-0.443308, 0.692352, 0.569321,
		0.895783, 0.365150, 0.253451,
		18.019814, 14.887624, 18.386904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288519, 15.327222, 18.119789>,  <17.392765, 14.632019, 18.209488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.288519, 15.327222, 18.119789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.678814, 15.244417, 18.091259>,  <17.912991, 15.194735, 18.074141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.678814, 15.244417, 18.091259>,  <17.288519, 15.327222, 18.119789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.678814, 15.244417, 18.091259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060568, 0.568225, -0.820641,
		0.210410, 0.796408, 0.566976,
		0.975735, -0.207011, -0.071323,
		17.971535, 15.182314, 18.069862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.659994, 15.982614, 18.035921>,  <17.288519, 15.327222, 18.119789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.659994, 15.982614, 18.035921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.917282, 15.705043, 17.906469>,  <18.071655, 15.538500, 17.828798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.917282, 15.705043, 17.906469>,  <17.659994, 15.982614, 18.035921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917282, 15.705043, 17.906469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216939, 0.570509, -0.792122,
		0.734308, 0.439300, 0.517502,
		0.643218, -0.693927, -0.323628,
		18.110247, 15.496864, 17.809381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316006, 16.363121, 17.878166>,  <17.659994, 15.982614, 18.035921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316006, 16.363121, 17.878166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.347094, 16.012493, 17.688185>,  <18.365746, 15.802115, 17.574196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.347094, 16.012493, 17.688185>,  <18.316006, 16.363121, 17.878166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.347094, 16.012493, 17.688185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444851, 0.456831, -0.770333,
		0.892226, -0.151415, 0.425448,
		0.077718, -0.876572, -0.474954,
		18.370409, 15.749521, 17.545698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033642, 16.419527, 17.651512>,  <18.316006, 16.363121, 17.878166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.033642, 16.419527, 17.651512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.835594, 16.137798, 17.448027>,  <18.716766, 15.968761, 17.325935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.835594, 16.137798, 17.448027>,  <19.033642, 16.419527, 17.651512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.835594, 16.137798, 17.448027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526547, 0.222489, -0.820516,
		0.691090, -0.674115, 0.260699,
		-0.495120, -0.704321, -0.508713,
		18.687057, 15.926502, 17.295412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485134, 15.972256, 17.349031>,  <19.033642, 16.419527, 17.651512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485134, 15.972256, 17.349031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.162161, 15.943592, 17.114796>,  <18.968376, 15.926394, 16.974255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.162161, 15.943592, 17.114796>,  <19.485134, 15.972256, 17.349031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.162161, 15.943592, 17.114796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506436, 0.424951, -0.750293,
		0.302611, -0.902376, -0.306829,
		-0.807433, -0.071657, -0.585591,
		18.919931, 15.922094, 16.939117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.562353, 15.542662, 16.634256>,  <19.485134, 15.972256, 17.349031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.562353, 15.542662, 16.634256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.253876, 15.779782, 16.541435>,  <19.068790, 15.922054, 16.485743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.253876, 15.779782, 16.541435>,  <19.562353, 15.542662, 16.634256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.253876, 15.779782, 16.541435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472055, 0.287942, -0.833219,
		-0.427115, -0.752114, -0.501894,
		-0.771192, 0.592802, -0.232055,
		19.022518, 15.957623, 16.471819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.207598, 15.384621, 15.990452>,  <19.562353, 15.542662, 16.634256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.207598, 15.384621, 15.990452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.220287, 15.766493, 16.108826>,  <19.227901, 15.995616, 16.179850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.220287, 15.766493, 16.108826>,  <19.207598, 15.384621, 15.990452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220287, 15.766493, 16.108826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488512, 0.243499, -0.837893,
		-0.871980, 0.171150, -0.458648,
		0.031725, 0.954681, 0.295935,
		19.229805, 16.052896, 16.197607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.820906, 15.933737, 15.495227>,  <19.207598, 15.384621, 15.990452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.820906, 15.933737, 15.495227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139273, 16.058798, 15.702599>,  <19.330292, 16.133835, 15.827022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139273, 16.058798, 15.702599>,  <18.820906, 15.933737, 15.495227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139273, 16.058798, 15.702599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450546, 0.266096, -0.852175,
		-0.404385, 0.911834, 0.070926,
		0.795915, 0.312651, 0.518428,
		19.378048, 16.152594, 15.858127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135452, 15.931257, 14.861749>,  <18.820906, 15.933737, 15.495227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135452, 15.931257, 14.861749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.337872, 16.122683, 15.148773>,  <19.459322, 16.237537, 15.320988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.337872, 16.122683, 15.148773>,  <19.135452, 15.931257, 14.861749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.337872, 16.122683, 15.148773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595707, 0.407713, -0.692029,
		-0.623738, 0.777655, -0.078762,
		0.506047, 0.478564, 0.717560,
		19.489685, 16.266253, 15.364041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.270779, 16.511534, 14.534313>,  <19.135452, 15.931257, 14.861749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.270779, 16.511534, 14.534313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559998, 16.456133, 14.805021>,  <19.733530, 16.422892, 14.967446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559998, 16.456133, 14.805021>,  <19.270779, 16.511534, 14.534313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.559998, 16.456133, 14.805021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621154, 0.559038, -0.549221,
		-0.302271, 0.817492, 0.490244,
		0.723049, -0.138504, 0.676769,
		19.776913, 16.414581, 15.008052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535625, 17.050941, 14.727316>,  <19.270779, 16.511534, 14.534313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535625, 17.050941, 14.727316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.843765, 16.800188, 14.773930>,  <20.028648, 16.649736, 14.801898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.843765, 16.800188, 14.773930>,  <19.535625, 17.050941, 14.727316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.843765, 16.800188, 14.773930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573784, 0.601834, -0.555488,
		0.278092, 0.494786, 0.823318,
		0.770348, -0.626884, 0.116535,
		20.074869, 16.612123, 14.808890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.160614, 17.404434, 15.029655>,  <19.535625, 17.050941, 14.727316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.160614, 17.404434, 15.029655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.245203, 17.096478, 14.788807>,  <20.295956, 16.911703, 14.644298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.245203, 17.096478, 14.788807>,  <20.160614, 17.404434, 15.029655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.245203, 17.096478, 14.788807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513450, 0.611706, -0.601818,
		0.831654, -0.181892, 0.524659,
		0.211471, -0.769890, -0.602120,
		20.308645, 16.865511, 14.608171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.892929, 17.360794, 14.927405>,  <20.160614, 17.404434, 15.029655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.892929, 17.360794, 14.927405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766590, 17.139589, 14.619012>,  <20.690786, 17.006866, 14.433976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.766590, 17.139589, 14.619012>,  <20.892929, 17.360794, 14.927405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766590, 17.139589, 14.619012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559230, 0.547930, -0.622121,
		0.766486, -0.627653, 0.136198,
		-0.315849, -0.553013, -0.770983,
		20.671835, 16.973686, 14.387717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.407928, 16.987244, 14.588432>,  <20.892929, 17.360794, 14.927405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.407928, 16.987244, 14.588432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103294, 17.057407, 14.338882>,  <20.920513, 17.099504, 14.189153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103294, 17.057407, 14.338882>,  <21.407928, 16.987244, 14.588432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103294, 17.057407, 14.338882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592990, 0.576974, -0.561662,
		0.261439, -0.797705, -0.543430,
		-0.761586, 0.175408, -0.623874,
		20.874819, 17.110029, 14.151720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.782366, 17.018227, 13.927785>,  <21.407928, 16.987244, 14.588432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.782366, 17.018227, 13.927785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435316, 17.209541, 13.873428>,  <21.227087, 17.324331, 13.840815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435316, 17.209541, 13.873428>,  <21.782366, 17.018227, 13.927785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.435316, 17.209541, 13.873428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469949, 0.699550, -0.538310,
		-0.162404, -0.530914, -0.831718,
		-0.867625, 0.478289, -0.135892,
		21.175028, 17.353027, 13.832661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708860, 17.049133, 13.219152>,  <21.782366, 17.018227, 13.927785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708860, 17.049133, 13.219152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479788, 17.352123, 13.344543>,  <21.342344, 17.533916, 13.419778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479788, 17.352123, 13.344543>,  <21.708860, 17.049133, 13.219152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479788, 17.352123, 13.344543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462945, 0.614409, -0.638892,
		-0.676549, -0.220758, -0.702530,
		-0.572681, 0.757474, 0.313478,
		21.307983, 17.579365, 13.438587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367981, 17.244198, 12.594814>,  <21.708860, 17.049133, 13.219152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367981, 17.244198, 12.594814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.352503, 17.549974, 12.852227>,  <21.343216, 17.733440, 13.006675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.352503, 17.549974, 12.852227>,  <21.367981, 17.244198, 12.594814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.352503, 17.549974, 12.852227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493556, 0.574595, -0.652873,
		-0.868853, 0.292358, -0.399527,
		-0.038693, 0.764439, 0.643533,
		21.340895, 17.779306, 13.045287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.327816, 17.773344, 12.192373>,  <21.367981, 17.244198, 12.594814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.327816, 17.773344, 12.192373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.444553, 17.950994, 12.531214>,  <21.514595, 18.057585, 12.734518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.444553, 17.950994, 12.531214>,  <21.327816, 17.773344, 12.192373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.444553, 17.950994, 12.531214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474710, 0.701618, -0.531397,
		-0.830348, 0.557211, -0.006070,
		0.291841, 0.444126, 0.847101,
		21.532106, 18.084232, 12.785344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117847, 18.555393, 12.166398>,  <21.327816, 17.773344, 12.192373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117847, 18.555393, 12.166398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.428671, 18.488934, 12.409239>,  <21.615166, 18.449057, 12.554943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.428671, 18.488934, 12.409239>,  <21.117847, 18.555393, 12.166398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.428671, 18.488934, 12.409239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497249, 0.753405, -0.430261,
		-0.385906, 0.636220, 0.668058,
		0.777059, -0.166151, 0.607103,
		21.661789, 18.439089, 12.591370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.439373, 19.273632, 12.256769>,  <21.117847, 18.555393, 12.166398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.439373, 19.273632, 12.256769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.718801, 19.026316, 12.400835>,  <21.886457, 18.877926, 12.487275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.718801, 19.026316, 12.400835>,  <21.439373, 19.273632, 12.256769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.718801, 19.026316, 12.400835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715526, 0.600248, -0.357385,
		0.004779, 0.507366, 0.861717,
		0.698570, -0.618289, 0.360165,
		21.928373, 18.840830, 12.508884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.949644, 19.682076, 12.537791>,  <21.439373, 19.273632, 12.256769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.949644, 19.682076, 12.537791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.140278, 19.337959, 12.465388>,  <22.254658, 19.131489, 12.421947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.140278, 19.337959, 12.465388>,  <21.949644, 19.682076, 12.537791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.140278, 19.337959, 12.465388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818545, 0.509345, -0.265615,
		0.320702, -0.021575, 0.946934,
		0.476586, -0.860292, -0.181008,
		22.283253, 19.079872, 12.411086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.632927, 19.880653, 12.680525>,  <21.949644, 19.682076, 12.537791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.632927, 19.880653, 12.680525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.679098, 19.549330, 12.461224>,  <22.706800, 19.350536, 12.329643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.679098, 19.549330, 12.461224>,  <22.632927, 19.880653, 12.680525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.679098, 19.549330, 12.461224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900505, 0.320215, -0.294198,
		0.419246, -0.459746, 0.782858,
		0.115427, -0.828309, -0.548253,
		22.713726, 19.300837, 12.296748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.302547, 19.560778, 12.842940>,  <22.632927, 19.880653, 12.680525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.302547, 19.560778, 12.842940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.203289, 19.459560, 12.468904>,  <23.143734, 19.398830, 12.244483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.203289, 19.459560, 12.468904>,  <23.302547, 19.560778, 12.842940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.203289, 19.459560, 12.468904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889582, 0.322609, -0.323370,
		0.383495, -0.912081, 0.145050,
		-0.248145, -0.253045, -0.935089,
		23.128845, 19.383648, 12.188377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.846943, 19.381290, 12.659790>,  <23.302547, 19.560778, 12.842940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.846943, 19.381290, 12.659790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.648806, 19.404203, 12.313067>,  <23.529922, 19.417952, 12.105034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.648806, 19.404203, 12.313067>,  <23.846943, 19.381290, 12.659790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.648806, 19.404203, 12.313067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866634, 0.101312, -0.488550,
		0.059831, -0.993204, -0.099830,
		-0.495344, 0.057286, -0.866806,
		23.500202, 19.421389, 12.053025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.121273, 18.854361, 12.149013>,  <23.846943, 19.381290, 12.659790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.121273, 18.854361, 12.149013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.948435, 19.133171, 11.920120>,  <23.844732, 19.300457, 11.782784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.948435, 19.133171, 11.920120>,  <24.121273, 18.854361, 12.149013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.948435, 19.133171, 11.920120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795083, -0.005013, -0.606479,
		-0.425601, -0.717028, -0.552028,
		-0.432095, 0.697026, -0.572231,
		23.818806, 19.342279, 11.748451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.210659, 18.577477, 11.517879>,  <24.121273, 18.854361, 12.149013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.210659, 18.577477, 11.517879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.117380, 18.959148, 11.442876>,  <24.061413, 19.188152, 11.397874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.117380, 18.959148, 11.442876>,  <24.210659, 18.577477, 11.517879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.117380, 18.959148, 11.442876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871493, 0.119524, -0.475620,
		-0.431415, -0.274325, -0.859434,
		-0.233197, 0.954180, -0.187508,
		24.047421, 19.245403, 11.386623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.375864, 18.686049, 10.832600>,  <24.210659, 18.577477, 11.517879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.375864, 18.686049, 10.832600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397896, 19.037329, 11.022643>,  <24.411116, 19.248096, 11.136669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397896, 19.037329, 11.022643>,  <24.375864, 18.686049, 10.832600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397896, 19.037329, 11.022643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863394, 0.197109, -0.464434,
		-0.501515, 0.435788, -0.747377,
		0.055080, 0.878201, 0.475110,
		24.414419, 19.300789, 11.165176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.461382, 19.098812, 10.401116>,  <24.375864, 18.686049, 10.832600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.461382, 19.098812, 10.401116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621010, 19.306141, 10.703661>,  <24.716787, 19.430538, 10.885188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621010, 19.306141, 10.703661>,  <24.461382, 19.098812, 10.401116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.621010, 19.306141, 10.703661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780487, 0.240909, -0.576891,
		-0.481231, 0.820551, -0.308405,
		0.399071, 0.518324, 0.756362,
		24.740730, 19.461637, 10.930570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683844, 19.615442, 10.150090>,  <24.461382, 19.098812, 10.401116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683844, 19.615442, 10.150090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906239, 19.632235, 10.482142>,  <25.039675, 19.642309, 10.681374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906239, 19.632235, 10.482142>,  <24.683844, 19.615442, 10.150090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906239, 19.632235, 10.482142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789972, 0.283918, -0.543447,
		-0.258502, 0.957929, 0.124692,
		0.555986, 0.041979, 0.830131,
		25.073034, 19.644829, 10.731182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300484, 19.904625, 9.962151>,  <24.683844, 19.615442, 10.150090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300484, 19.904625, 9.962151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402689, 19.800205, 10.334509>,  <25.464012, 19.737553, 10.557923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402689, 19.800205, 10.334509>,  <25.300484, 19.904625, 9.962151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402689, 19.800205, 10.334509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966805, 0.069819, -0.245792,
		-0.000830, 0.962797, 0.270224,
		0.255514, -0.261049, 0.930895,
		25.479343, 19.721889, 10.613777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881124, 20.313581, 10.016137>,  <25.300484, 19.904625, 9.962151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881124, 20.313581, 10.016137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897318, 20.015665, 10.282564>,  <25.907034, 19.836914, 10.442420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897318, 20.015665, 10.282564>,  <25.881124, 20.313581, 10.016137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897318, 20.015665, 10.282564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981902, -0.093778, -0.164543,
		0.185013, 0.660674, 0.727517,
		0.040485, -0.744793, 0.666067,
		25.909464, 19.792227, 10.482385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359035, 20.356293, 10.587962>,  <25.881124, 20.313581, 10.016137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359035, 20.356293, 10.587962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322624, 19.960451, 10.543420>,  <26.300777, 19.722946, 10.516694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322624, 19.960451, 10.543420>,  <26.359035, 20.356293, 10.587962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322624, 19.960451, 10.543420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989928, -0.077746, -0.118316,
		0.108428, -0.121005, 0.986712,
		-0.091029, -0.989603, -0.111357,
		26.295315, 19.663570, 10.510013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887440, 19.991549, 11.038985>,  <26.359035, 20.356293, 10.587962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887440, 19.991549, 11.038985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785072, 19.728216, 10.755831>,  <26.723652, 19.570217, 10.585938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785072, 19.728216, 10.755831>,  <26.887440, 19.991549, 11.038985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785072, 19.728216, 10.755831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965292, -0.134556, -0.223843,
		0.052113, -0.740603, 0.669919,
		-0.255921, -0.658333, -0.707886,
		26.708296, 19.530716, 10.543465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356478, 19.375475, 11.114836>,  <26.887440, 19.991549, 11.038985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356478, 19.375475, 11.114836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215221, 19.349535, 10.741508>,  <27.130468, 19.333971, 10.517510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215221, 19.349535, 10.741508>,  <27.356478, 19.375475, 11.114836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215221, 19.349535, 10.741508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905445, -0.274804, -0.323500,
		-0.235501, -0.959311, 0.155762,
		-0.353141, -0.064849, -0.933320,
		27.109280, 19.330080, 10.461512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677816, 18.830730, 10.792562>,  <27.356478, 19.375475, 11.114836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677816, 18.830730, 10.792562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550900, 19.034245, 10.472446>,  <27.474749, 19.156353, 10.280376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550900, 19.034245, 10.472446>,  <27.677816, 18.830730, 10.792562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550900, 19.034245, 10.472446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908314, -0.079502, -0.410664,
		-0.272564, -0.857216, -0.436910,
		-0.317292, 0.508783, -0.800291,
		27.455711, 19.186880, 10.232359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050325, 18.534798, 10.247784>,  <27.677816, 18.830730, 10.792562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050325, 18.534798, 10.247784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927574, 18.898964, 10.136812>,  <27.853924, 19.117464, 10.070230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927574, 18.898964, 10.136812>,  <28.050325, 18.534798, 10.247784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927574, 18.898964, 10.136812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849643, 0.130708, -0.510903,
		-0.428872, -0.392501, -0.813641,
		-0.306879, 0.910417, -0.277429,
		27.835510, 19.172089, 10.053583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859362, 18.510414, 10.245906>,  <28.050325, 18.534798, 10.247784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859362, 18.510414, 10.245906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083921, 18.839598, 10.211106>,  <29.218657, 19.037107, 10.190227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083921, 18.839598, 10.211106>,  <28.859362, 18.510414, 10.245906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083921, 18.839598, 10.211106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467976, 0.402417, 0.786803,
		0.682517, -0.400997, 0.611041,
		0.561399, 0.822960, -0.086999,
		29.252340, 19.086485, 10.185006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086338, 17.885595, 10.669119>,  <28.859362, 18.510414, 10.245906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086338, 17.885595, 10.669119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700293, 17.786140, 10.636296>,  <28.468664, 17.726467, 10.616603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700293, 17.786140, 10.636296>,  <29.086338, 17.885595, 10.669119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700293, 17.786140, 10.636296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018446, -0.248053, 0.968571,
		-0.261177, 0.936296, 0.234813,
		-0.965115, -0.248637, -0.082057,
		28.410759, 17.711550, 10.611679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759411, 18.415192, 10.974119>,  <29.086338, 17.885595, 10.669119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759411, 18.415192, 10.974119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591942, 18.051937, 10.974866>,  <28.491461, 17.833984, 10.975314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591942, 18.051937, 10.974866>,  <28.759411, 18.415192, 10.974119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591942, 18.051937, 10.974866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199616, -0.090021, 0.975730,
		-0.885928, 0.408882, 0.218968,
		-0.418671, -0.908136, 0.001868,
		28.466341, 17.779495, 10.975427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631695, 18.205833, 11.638774>,  <28.759411, 18.415192, 10.974119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631695, 18.205833, 11.638774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575359, 17.835766, 11.497792>,  <28.541559, 17.613726, 11.413203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575359, 17.835766, 11.497792>,  <28.631695, 18.205833, 11.638774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575359, 17.835766, 11.497792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008092, -0.357067, 0.934044,
		-0.990000, 0.128696, 0.057775,
		-0.140837, -0.925171, -0.352455,
		28.533108, 17.558214, 11.392056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095928, 17.966805, 11.923450>,  <28.631695, 18.205833, 11.638774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095928, 17.966805, 11.923450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315399, 17.640631, 11.849674>,  <28.447083, 17.444927, 11.805409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315399, 17.640631, 11.849674>,  <28.095928, 17.966805, 11.923450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315399, 17.640631, 11.849674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054422, -0.254980, 0.965414,
		-0.834260, -0.519665, -0.184280,
		0.548679, -0.815435, -0.184438,
		28.480003, 17.396000, 11.794343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729712, 17.223684, 12.031462>,  <28.095928, 17.966805, 11.923450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729712, 17.223684, 12.031462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126244, 17.254286, 12.074199>,  <28.364162, 17.272646, 12.099841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126244, 17.254286, 12.074199>,  <27.729712, 17.223684, 12.031462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126244, 17.254286, 12.074199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068254, -0.395025, 0.916131,
		0.112293, -0.915479, -0.386378,
		0.991328, 0.076503, 0.106843,
		28.423641, 17.277237, 12.106252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431414, 17.743935, 11.489830>,  <27.729712, 17.223684, 12.031462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431414, 17.743935, 11.489830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411438, 17.438307, 11.232552>,  <27.399452, 17.254930, 11.078184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411438, 17.438307, 11.232552>,  <27.431414, 17.743935, 11.489830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411438, 17.438307, 11.232552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870357, -0.282584, 0.403268,
		-0.489882, 0.579950, -0.650902,
		-0.049941, -0.764071, -0.643196,
		27.396456, 17.209085, 11.039593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734606, 17.839533, 11.174511>,  <27.431414, 17.743935, 11.489830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734606, 17.839533, 11.174511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857346, 17.459013, 11.162688>,  <26.930990, 17.230701, 11.155595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857346, 17.459013, 11.162688>,  <26.734606, 17.839533, 11.174511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857346, 17.459013, 11.162688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902975, -0.300797, 0.306850,
		-0.300797, -0.067468, -0.951299,
		-0.306850, 0.951299, 0.029557,
		26.949400, 17.173624, 11.153821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246389, 17.366201, 10.863057>,  <26.734606, 17.839533, 11.174511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246389, 17.366201, 10.863057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453867, 17.089212, 11.063631>,  <26.578354, 16.923019, 11.183975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453867, 17.089212, 11.063631>,  <26.246389, 17.366201, 10.863057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453867, 17.089212, 11.063631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850832, -0.475656, 0.223241,
		0.083922, -0.542430, -0.835899,
		0.518693, -0.692475, 0.501435,
		26.609474, 16.881470, 11.214062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962421, 16.694281, 10.632435>,  <26.246389, 17.366201, 10.863057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962421, 16.694281, 10.632435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147200, 16.618288, 10.978963>,  <26.258066, 16.572693, 11.186880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147200, 16.618288, 10.978963>,  <25.962421, 16.694281, 10.632435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147200, 16.618288, 10.978963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841934, -0.401035, 0.360997,
		0.278842, -0.896146, -0.345210,
		0.461947, -0.189982, 0.866321,
		26.285784, 16.561293, 11.238859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060461, 15.943195, 10.735013>,  <25.962421, 16.694281, 10.632435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060461, 15.943195, 10.735013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060110, 16.101858, 11.102200>,  <26.059898, 16.197056, 11.322512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060110, 16.101858, 11.102200>,  <26.060461, 15.943195, 10.735013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060110, 16.101858, 11.102200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785920, -0.567878, 0.244629,
		0.618327, -0.721233, 0.312240,
		-0.000879, 0.396657, 0.917966,
		26.059847, 16.220856, 11.377589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791523, 15.404306, 11.115625>,  <26.060461, 15.943195, 10.735013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791523, 15.404306, 11.115625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788164, 15.716150, 11.366109>,  <25.786148, 15.903256, 11.516399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788164, 15.716150, 11.366109>,  <25.791523, 15.404306, 11.115625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788164, 15.716150, 11.366109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718987, -0.439936, 0.538064,
		0.694972, -0.445718, 0.564224,
		-0.008398, 0.779610, 0.626210,
		25.785645, 15.950033, 11.553972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849241, 15.163373, 11.810372>,  <25.791523, 15.404306, 11.115625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849241, 15.163373, 11.810372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680229, 15.524295, 11.844587>,  <25.578823, 15.740848, 11.865116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680229, 15.524295, 11.844587>,  <25.849241, 15.163373, 11.810372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680229, 15.524295, 11.844587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523048, -0.319824, 0.790021,
		0.740196, 0.289066, 0.607083,
		-0.422528, 0.902305, 0.085537,
		25.553471, 15.794986, 11.870249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814205, 15.251274, 12.578485>,  <25.849241, 15.163373, 11.810372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814205, 15.251274, 12.578485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571445, 15.537041, 12.439182>,  <25.425789, 15.708501, 12.355601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571445, 15.537041, 12.439182>,  <25.814205, 15.251274, 12.578485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571445, 15.537041, 12.439182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599957, -0.124421, 0.790298,
		0.521273, 0.688569, 0.504131,
		-0.606899, 0.714418, -0.348255,
		25.389376, 15.751366, 12.334706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620197, 15.684446, 13.180810>,  <25.814205, 15.251274, 12.578485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620197, 15.684446, 13.180810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329712, 15.764981, 12.917881>,  <25.155420, 15.813302, 12.760123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329712, 15.764981, 12.917881>,  <25.620197, 15.684446, 13.180810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329712, 15.764981, 12.917881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668166, 0.018262, 0.743788,
		0.161756, 0.979352, 0.121264,
		-0.726216, 0.201337, -0.657324,
		25.111847, 15.825382, 12.720684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227211, 16.179758, 13.482404>,  <25.620197, 15.684446, 13.180810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227211, 16.179758, 13.482404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975685, 16.040138, 13.204481>,  <24.824770, 15.956367, 13.037727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975685, 16.040138, 13.204481>,  <25.227211, 16.179758, 13.482404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975685, 16.040138, 13.204481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744922, 0.014281, 0.666998,
		-0.222893, 0.936996, -0.268994,
		-0.628816, -0.349048, -0.694806,
		24.787041, 15.935424, 12.996039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619202, 16.570147, 13.526679>,  <25.227211, 16.179758, 13.482404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619202, 16.570147, 13.526679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452906, 16.255478, 13.344115>,  <24.353128, 16.066677, 13.234577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452906, 16.255478, 13.344115>,  <24.619202, 16.570147, 13.526679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452906, 16.255478, 13.344115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674153, -0.070292, 0.735239,
		-0.610472, 0.613360, -0.501112,
		-0.415742, -0.786670, -0.456410,
		24.328182, 16.019478, 13.207192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.956219, 16.710447, 13.419950>,  <24.619202, 16.570147, 13.526679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.956219, 16.710447, 13.419950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.981251, 16.311237, 13.417912>,  <23.996269, 16.071711, 13.416688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.981251, 16.311237, 13.417912>,  <23.956219, 16.710447, 13.419950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.981251, 16.311237, 13.417912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816431, -0.054130, 0.574900,
		-0.574042, -0.031816, -0.818208,
		0.062581, -0.998027, -0.005098,
		24.000025, 16.011829, 13.416382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.247414, 16.461393, 13.474417>,  <23.956219, 16.710447, 13.419950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.247414, 16.461393, 13.474417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465315, 16.139336, 13.568212>,  <23.596056, 15.946101, 13.624489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465315, 16.139336, 13.568212>,  <23.247414, 16.461393, 13.474417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465315, 16.139336, 13.568212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692514, -0.274222, 0.667253,
		-0.472934, -0.525874, -0.706958,
		0.544754, -0.805145, 0.234486,
		23.628742, 15.897793, 13.638557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770418, 15.795035, 13.435217>,  <23.247414, 16.461393, 13.474417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770418, 15.795035, 13.435217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.076202, 15.717878, 13.681273>,  <23.259672, 15.671584, 13.828906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.076202, 15.717878, 13.681273>,  <22.770418, 15.795035, 13.435217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.076202, 15.717878, 13.681273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610342, -0.523782, 0.594253,
		0.207572, -0.829726, -0.518139,
		0.764459, -0.192892, 0.615139,
		23.305540, 15.660010, 13.865814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.602219, 15.149637, 13.687082>,  <22.770418, 15.795035, 13.435217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.602219, 15.149637, 13.687082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.856724, 15.315820, 13.947104>,  <23.009426, 15.415529, 14.103116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.856724, 15.315820, 13.947104>,  <22.602219, 15.149637, 13.687082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.856724, 15.315820, 13.947104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458073, -0.474550, 0.751645,
		0.620758, -0.776015, -0.111629,
		0.636261, 0.415455, 0.650052,
		23.047602, 15.440456, 14.142119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.546225, 14.690914, 14.269969>,  <22.602219, 15.149637, 13.687082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.546225, 14.690914, 14.269969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.748777, 15.002691, 14.417505>,  <22.870310, 15.189757, 14.506027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.748777, 15.002691, 14.417505>,  <22.546225, 14.690914, 14.269969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.748777, 15.002691, 14.417505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423884, -0.147488, 0.893627,
		0.750931, -0.608865, 0.255708,
		0.506384, 0.779443, 0.368841,
		22.900692, 15.236525, 14.528157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.807127, 14.467633, 14.913618>,  <22.546225, 14.690914, 14.269969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.807127, 14.467633, 14.913618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.810423, 14.867412, 14.900704>,  <22.812401, 15.107279, 14.892956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.810423, 14.867412, 14.900704>,  <22.807127, 14.467633, 14.913618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.810423, 14.867412, 14.900704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377587, 0.033004, 0.925386,
		0.925938, 0.004567, 0.377649,
		0.008238, 0.999445, -0.032284,
		22.812895, 15.167245, 14.891019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.225729, 14.709762, 15.483463>,  <22.807127, 14.467633, 14.913618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.225729, 14.709762, 15.483463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.983505, 15.016203, 15.397318>,  <22.838171, 15.200068, 15.345631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.983505, 15.016203, 15.397318>,  <23.225729, 14.709762, 15.483463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.983505, 15.016203, 15.397318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320024, 0.013346, 0.947316,
		0.728615, 0.642580, 0.237090,
		-0.605561, 0.766103, -0.215365,
		22.801836, 15.246034, 15.332708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.308096, 15.173256, 15.974751>,  <23.225729, 14.709762, 15.483463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.308096, 15.173256, 15.974751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.949423, 15.252698, 15.816503>,  <22.734219, 15.300363, 15.721554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.949423, 15.252698, 15.816503>,  <23.308096, 15.173256, 15.974751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.949423, 15.252698, 15.816503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382607, 0.101790, 0.918287,
		0.222646, 0.974779, -0.015287,
		-0.896683, 0.198604, -0.395620,
		22.680418, 15.312279, 15.697817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.994827, 14.815506, 16.205042>,  <23.308096, 15.173256, 15.974751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.994827, 14.815506, 16.205042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335459, 14.640961, 16.321247>,  <24.539839, 14.536234, 16.390970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335459, 14.640961, 16.321247>,  <23.994827, 14.815506, 16.205042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335459, 14.640961, 16.321247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445393, 0.894527, 0.038035,
		-0.276471, 0.097004, 0.956114,
		0.851580, -0.436362, 0.290515,
		24.590933, 14.510052, 16.408401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.235054, 15.265174, 16.632017>,  <23.994827, 14.815506, 16.205042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.235054, 15.265174, 16.632017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542152, 15.058931, 16.479851>,  <24.726412, 14.935186, 16.388550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542152, 15.058931, 16.479851>,  <24.235054, 15.265174, 16.632017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542152, 15.058931, 16.479851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537431, 0.841456, -0.055857,
		0.348904, -0.161564, 0.923127,
		0.767746, -0.515606, -0.380417,
		24.772476, 14.904249, 16.365726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874668, 15.585838, 16.938587>,  <24.235054, 15.265174, 16.632017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874668, 15.585838, 16.938587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918896, 15.409890, 16.582096>,  <24.945433, 15.304321, 16.368200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918896, 15.409890, 16.582096>,  <24.874668, 15.585838, 16.938587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918896, 15.409890, 16.582096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573162, 0.760810, -0.304391,
		0.811948, -0.477162, 0.336239,
		0.110570, -0.439869, -0.891229,
		24.952066, 15.277929, 16.314728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515093, 15.559418, 16.672552>,  <24.874668, 15.585838, 16.938587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515093, 15.559418, 16.672552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354239, 15.552754, 16.306381>,  <25.257727, 15.548757, 16.086678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354239, 15.552754, 16.306381>,  <25.515093, 15.559418, 16.672552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354239, 15.552754, 16.306381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642508, 0.707172, -0.295112,
		0.652282, -0.706846, -0.273675,
		-0.402134, -0.016658, -0.915429,
		25.233599, 15.547757, 16.031752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053865, 15.445859, 16.172779>,  <25.515093, 15.559418, 16.672552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053865, 15.445859, 16.172779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742249, 15.600090, 15.975022>,  <25.555279, 15.692629, 15.856368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742249, 15.600090, 15.975022>,  <26.053865, 15.445859, 16.172779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742249, 15.600090, 15.975022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603090, 0.676411, -0.422789,
		0.171393, -0.627533, -0.759491,
		-0.779042, 0.385578, -0.494391,
		25.508535, 15.715763, 15.826705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202795, 15.776086, 15.528078>,  <26.053865, 15.445859, 16.172779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202795, 15.776086, 15.528078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835621, 15.933623, 15.508979>,  <25.615316, 16.028147, 15.497519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835621, 15.933623, 15.508979>,  <26.202795, 15.776086, 15.528078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835621, 15.933623, 15.508979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316960, 0.655656, -0.685311,
		-0.238600, -0.644206, -0.726683,
		-0.917936, 0.393844, -0.047748,
		25.560240, 16.051777, 15.494655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909605, 15.821138, 14.815911>,  <26.202795, 15.776086, 15.528078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909605, 15.821138, 14.815911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810436, 16.101536, 15.083386>,  <25.750935, 16.269773, 15.243872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810436, 16.101536, 15.083386>,  <25.909605, 15.821138, 14.815911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810436, 16.101536, 15.083386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609867, 0.649233, -0.454487,
		-0.752727, 0.295134, -0.588471,
		-0.247920, 0.700994, 0.668688,
		25.736061, 16.311834, 15.283993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353487, 15.171828, 14.996045>,  <25.909605, 15.821138, 14.815911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353487, 15.171828, 14.996045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618006, 14.897116, 14.875367>,  <26.776716, 14.732288, 14.802960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618006, 14.897116, 14.875367>,  <26.353487, 15.171828, 14.996045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618006, 14.897116, 14.875367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747716, -0.635714, -0.191800,
		-0.060067, 0.352418, -0.933913,
		0.661296, -0.686781, -0.301695,
		26.816395, 14.691081, 14.784859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<9.718616, 17.451809, 22.604319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.599699, 17.070272, 22.587322>,  <9.528349, 16.841351, 22.577124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.599699, 17.070272, 22.587322>,  <9.718616, 17.451809, 22.604319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.599699, 17.070272, 22.587322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423361, -0.091801, -0.901298,
		0.855794, -0.285937, 0.431111,
		-0.297291, -0.953841, -0.042492,
		9.510511, 16.784121, 22.574575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.166526, 17.029240, 22.340977>,  <9.718616, 17.451809, 22.604319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.166526, 17.029240, 22.340977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.868423, 16.773268, 22.266058>,  <9.689560, 16.619684, 22.221107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.868423, 16.773268, 22.266058>,  <10.166526, 17.029240, 22.340977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.868423, 16.773268, 22.266058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442923, -0.265157, -0.856453,
		0.498406, -0.721237, 0.481050,
		-0.745259, -0.639929, -0.187297,
		9.644845, 16.581289, 22.209869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.522320, 16.523973, 22.114697>,  <10.166526, 17.029240, 22.340977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.522320, 16.523973, 22.114697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.145187, 16.440115, 22.011068>,  <9.918908, 16.389801, 21.948893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.145187, 16.440115, 22.011068>,  <10.522320, 16.523973, 22.114697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.145187, 16.440115, 22.011068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328617, -0.455405, -0.827416,
		0.055483, -0.865249, 0.498263,
		-0.942832, -0.209645, -0.259069,
		9.862338, 16.377222, 21.933348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.516212, 15.790045, 21.891138>,  <10.522320, 16.523973, 22.114697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.516212, 15.790045, 21.891138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.201285, 15.982660, 21.737122>,  <10.012330, 16.098228, 21.644712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.201285, 15.982660, 21.737122>,  <10.516212, 15.790045, 21.891138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.201285, 15.982660, 21.737122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299718, -0.246833, -0.921544,
		-0.538799, -0.840949, 0.050010,
		-0.787315, 0.481538, -0.385040,
		9.965091, 16.127121, 21.621609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.185728, 15.286720, 21.481277>,  <10.516212, 15.790045, 21.891138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.185728, 15.286720, 21.481277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.082306, 15.651422, 21.353621>,  <10.020252, 15.870242, 21.277025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.082306, 15.651422, 21.353621>,  <10.185728, 15.286720, 21.481277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.082306, 15.651422, 21.353621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134699, -0.293122, -0.946539,
		-0.956559, -0.287722, -0.047024,
		-0.258556, 0.911754, -0.319144,
		10.004739, 15.924948, 21.257877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.955444, 15.144378, 20.760014>,  <10.185728, 15.286720, 21.481277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.955444, 15.144378, 20.760014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.975538, 15.543006, 20.733719>,  <9.987595, 15.782183, 20.717941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.975538, 15.543006, 20.733719>,  <9.955444, 15.144378, 20.760014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.975538, 15.543006, 20.733719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113021, -0.071072, -0.991047,
		-0.992322, 0.042356, -0.116204,
		0.050236, 0.996571, -0.065739,
		9.990609, 15.841977, 20.713997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.488796, 15.420365, 20.214596>,  <9.955444, 15.144378, 20.760014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.488796, 15.420365, 20.214596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.789686, 15.681449, 20.250656>,  <9.970221, 15.838099, 20.272291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.789686, 15.681449, 20.250656>,  <9.488796, 15.420365, 20.214596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.789686, 15.681449, 20.250656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262237, -0.171049, -0.949723,
		-0.604473, 0.738047, -0.299832,
		0.752226, 0.652709, 0.090149,
		10.015354, 15.877262, 20.277700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.554014, 15.617597, 19.548050>,  <9.488796, 15.420365, 20.214596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.554014, 15.617597, 19.548050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.882975, 15.774310, 19.713051>,  <10.080351, 15.868339, 19.812052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.882975, 15.774310, 19.713051>,  <9.554014, 15.617597, 19.548050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.882975, 15.774310, 19.713051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447911, 0.001143, -0.894077,
		-0.350756, 0.920057, -0.174545,
		0.822402, 0.391784, 0.412505,
		10.129695, 15.891846, 19.836802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.753487, 16.083488, 19.152910>,  <9.554014, 15.617597, 19.548050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.753487, 16.083488, 19.152910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.085613, 15.993765, 19.356972>,  <10.284889, 15.939930, 19.479408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.085613, 15.993765, 19.356972>,  <9.753487, 16.083488, 19.152910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.085613, 15.993765, 19.356972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515875, -0.036940, -0.855867,
		0.210826, 0.973817, 0.085044,
		0.830317, -0.224311, 0.510156,
		10.334708, 15.926472, 19.510019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.393422, 16.424721, 18.823378>,  <9.753487, 16.083488, 19.152910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.393422, 16.424721, 18.823378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.569608, 16.142200, 19.045055>,  <10.675319, 15.972688, 19.178062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.569608, 16.142200, 19.045055>,  <10.393422, 16.424721, 18.823378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.569608, 16.142200, 19.045055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707790, -0.106554, -0.698340,
		0.552290, 0.699846, 0.452980,
		0.440464, -0.706301, 0.554193,
		10.701747, 15.930310, 19.211313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.086473, 16.612406, 18.895998>,  <10.393422, 16.424721, 18.823378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.086473, 16.612406, 18.895998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.079488, 16.215601, 18.945969>,  <11.075297, 15.977518, 18.975950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.079488, 16.215601, 18.945969>,  <11.086473, 16.612406, 18.895998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.079488, 16.215601, 18.945969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767782, -0.093340, -0.633876,
		0.640474, 0.084847, 0.763279,
		-0.017462, -0.992012, 0.124926,
		11.074249, 15.917997, 18.983446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.802220, 16.434992, 19.080536>,  <11.086473, 16.612406, 18.895998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.802220, 16.434992, 19.080536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.625866, 16.098036, 18.956604>,  <11.520053, 15.895862, 18.882244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.625866, 16.098036, 18.956604>,  <11.802220, 16.434992, 19.080536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.625866, 16.098036, 18.956604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814516, -0.230486, -0.532389,
		0.377069, -0.487085, 0.787761,
		-0.440887, -0.842392, -0.309829,
		11.493600, 15.845318, 18.863655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.388035, 15.971032, 19.116638>,  <11.802220, 16.434992, 19.080536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.388035, 15.971032, 19.116638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.108311, 15.772799, 18.910585>,  <11.940476, 15.653858, 18.786953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.108311, 15.772799, 18.910585>,  <12.388035, 15.971032, 19.116638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.108311, 15.772799, 18.910585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714645, -0.468833, -0.519112,
		0.015752, -0.731158, 0.682027,
		-0.699310, -0.495584, -0.515133,
		11.898518, 15.624124, 18.756046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.385745, 15.258054, 19.231386>,  <12.388035, 15.971032, 19.116638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.385745, 15.258054, 19.231386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.226572, 15.315187, 18.868895>,  <12.131068, 15.349466, 18.651400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.226572, 15.315187, 18.868895>,  <12.385745, 15.258054, 19.231386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.226572, 15.315187, 18.868895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795654, -0.438022, -0.418416,
		-0.456711, -0.887545, 0.060657,
		-0.397932, 0.142833, -0.906228,
		12.107192, 15.358036, 18.597027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.497456, 14.573430, 18.737061>,  <12.385745, 15.258054, 19.231386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.497456, 14.573430, 18.737061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.401416, 14.880144, 18.498938>,  <12.343792, 15.064173, 18.356064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.401416, 14.880144, 18.498938>,  <12.497456, 14.573430, 18.737061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.401416, 14.880144, 18.498938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721771, -0.269077, -0.637686,
		-0.649153, -0.582785, -0.488838,
		-0.240099, 0.766785, -0.595309,
		12.329386, 15.110180, 18.320345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.691525, 14.320850, 18.034796>,  <12.497456, 14.573430, 18.737061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.691525, 14.320850, 18.034796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.664268, 14.713918, 17.965836>,  <12.647915, 14.949758, 17.924459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.664268, 14.713918, 17.965836>,  <12.691525, 14.320850, 18.034796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.664268, 14.713918, 17.965836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769720, -0.058159, -0.635727,
		-0.634735, -0.176019, -0.752416,
		-0.068140, 0.982667, -0.172401,
		12.643826, 15.008718, 17.914116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.610728, 14.388181, 17.363235>,  <12.691525, 14.320850, 18.034796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.610728, 14.388181, 17.363235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.760438, 14.738777, 17.484352>,  <12.850264, 14.949135, 17.557022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.760438, 14.738777, 17.484352>,  <12.610728, 14.388181, 17.363235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.760438, 14.738777, 17.484352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686275, -0.042206, -0.726117,
		-0.623655, 0.479566, -0.617310,
		0.374275, 0.876490, 0.302792,
		12.872721, 15.001724, 17.575190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.958514, 14.534106, 16.823706>,  <12.610728, 14.388181, 17.363235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.958514, 14.534106, 16.823706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.101005, 14.788313, 17.097706>,  <13.186499, 14.940837, 17.262106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.101005, 14.788313, 17.097706>,  <12.958514, 14.534106, 16.823706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.101005, 14.788313, 17.097706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884917, 0.005950, -0.465711,
		-0.300042, 0.772065, -0.560260,
		0.356226, 0.635516, 0.684998,
		13.207872, 14.978968, 17.303205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.379308, 14.959062, 16.377975>,  <12.958514, 14.534106, 16.823706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.379308, 14.959062, 16.377975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.501108, 15.000336, 16.756739>,  <13.574188, 15.025101, 16.983995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.501108, 15.000336, 16.756739>,  <13.379308, 14.959062, 16.377975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.501108, 15.000336, 16.756739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945286, -0.154952, -0.287095,
		0.117101, 0.982518, -0.144724,
		0.304501, 0.103186, 0.946906,
		13.592459, 15.031292, 17.040810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.933267, 15.407149, 16.373415>,  <13.379308, 14.959062, 16.377975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.933267, 15.407149, 16.373415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.985144, 15.221422, 16.723864>,  <14.016270, 15.109986, 16.934134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.985144, 15.221422, 16.723864>,  <13.933267, 15.407149, 16.373415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985144, 15.221422, 16.723864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978466, -0.083162, -0.188914,
		0.160576, 0.881756, 0.443533,
		0.129691, -0.464317, 0.876122,
		14.024051, 15.082128, 16.986700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.549417, 15.719667, 16.738173>,  <13.933267, 15.407149, 16.373415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.549417, 15.719667, 16.738173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.496087, 15.345026, 16.867785>,  <14.464088, 15.120241, 16.945553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.496087, 15.345026, 16.867785>,  <14.549417, 15.719667, 16.738173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.496087, 15.345026, 16.867785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984861, -0.161755, -0.062317,
		0.110780, 0.310818, 0.943991,
		-0.133326, -0.936604, 0.324031,
		14.456089, 15.064045, 16.964994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.255479, 16.007685, 16.542694>,  <14.549417, 15.719667, 16.738173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.255479, 16.007685, 16.542694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.412922, 16.175501, 16.215509>,  <15.507387, 16.276190, 16.019199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.412922, 16.175501, 16.215509>,  <15.255479, 16.007685, 16.542694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.412922, 16.175501, 16.215509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073473, 0.901297, 0.426926,
		0.916337, -0.107943, 0.385583,
		0.393608, 0.419538, -0.817961,
		15.531004, 16.301363, 15.970120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561113, 15.627832, 15.903912>,  <15.255479, 16.007685, 16.542694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561113, 15.627832, 15.903912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.816839, 15.914265, 16.015985>,  <15.970275, 16.086124, 16.083229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.816839, 15.914265, 16.015985>,  <15.561113, 15.627832, 15.903912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816839, 15.914265, 16.015985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352277, -0.051132, 0.934498,
		0.683503, -0.696142, 0.219570,
		0.639316, 0.716081, 0.280184,
		16.008635, 16.129089, 16.100040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716766, 15.352012, 16.542915>,  <15.561113, 15.627832, 15.903912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716766, 15.352012, 16.542915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.819836, 15.738373, 16.532843>,  <15.881678, 15.970190, 16.526798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.819836, 15.738373, 16.532843>,  <15.716766, 15.352012, 16.542915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819836, 15.738373, 16.532843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520552, 0.160731, 0.838565,
		0.814021, -0.202967, 0.544219,
		0.257673, 0.965904, -0.025184,
		15.897138, 16.028145, 16.525288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.905192, 15.500583, 17.283983>,  <15.716766, 15.352012, 16.542915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.905192, 15.500583, 17.283983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.828165, 15.859030, 17.124037>,  <15.781949, 16.074099, 17.028069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.828165, 15.859030, 17.124037>,  <15.905192, 15.500583, 17.283983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828165, 15.859030, 17.124037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427901, 0.290025, 0.856029,
		0.883073, 0.335946, 0.327600,
		-0.192568, 0.896117, -0.399865,
		15.770394, 16.127865, 17.004078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158422, 16.009422, 17.743870>,  <15.905192, 15.500583, 17.283983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158422, 16.009422, 17.743870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.899372, 16.227943, 17.531404>,  <15.743942, 16.359056, 17.403925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.899372, 16.227943, 17.531404>,  <16.158422, 16.009422, 17.743870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.899372, 16.227943, 17.531404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303964, 0.454000, 0.837550,
		0.698704, 0.703874, -0.127966,
		-0.647626, 0.546302, -0.531164,
		15.705085, 16.391834, 17.372055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240459, 16.728384, 18.113256>,  <16.158422, 16.009422, 17.743870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240459, 16.728384, 18.113256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.894698, 16.719351, 17.912340>,  <15.687242, 16.713930, 17.791790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.894698, 16.719351, 17.912340>,  <16.240459, 16.728384, 18.113256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.894698, 16.719351, 17.912340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370125, 0.704736, 0.605272,
		0.340314, 0.709110, -0.617535,
		-0.864403, -0.022583, -0.502291,
		15.635377, 16.712576, 17.761652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097052, 17.406305, 18.098972>,  <16.240459, 16.728384, 18.113256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097052, 17.406305, 18.098972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.758228, 17.209183, 18.019333>,  <15.554935, 17.090910, 17.971550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.758228, 17.209183, 18.019333>,  <16.097052, 17.406305, 18.098972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758228, 17.209183, 18.019333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469297, 0.517611, 0.715429,
		-0.249512, 0.699444, -0.669717,
		-0.847056, -0.492805, -0.199097,
		15.504111, 17.061342, 17.959604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729838, 17.960032, 18.042847>,  <16.097052, 17.406305, 18.098972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729838, 17.960032, 18.042847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.484941, 17.649837, 18.104530>,  <15.338002, 17.463720, 18.141541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.484941, 17.649837, 18.104530>,  <15.729838, 17.960032, 18.042847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.484941, 17.649837, 18.104530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478732, 0.518801, 0.708280,
		-0.629264, 0.359816, -0.688883,
		-0.612244, -0.775485, 0.154207,
		15.301268, 17.417192, 18.150793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981778, 18.202143, 18.259066>,  <15.729838, 17.960032, 18.042847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981778, 18.202143, 18.259066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.989738, 17.820454, 18.378443>,  <14.994514, 17.591440, 18.450069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.989738, 17.820454, 18.378443>,  <14.981778, 18.202143, 18.259066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.989738, 17.820454, 18.378443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371590, 0.270059, 0.888250,
		-0.928183, -0.128572, -0.349206,
		0.019898, -0.954221, 0.298441,
		14.995708, 17.534187, 18.467976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.356030, 18.131584, 18.461060>,  <14.981778, 18.202143, 18.259066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.356030, 18.131584, 18.461060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.572248, 17.849966, 18.645290>,  <14.701980, 17.680996, 18.755829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.572248, 17.849966, 18.645290>,  <14.356030, 18.131584, 18.461060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.572248, 17.849966, 18.645290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451567, 0.219114, 0.864914,
		-0.709857, -0.675507, -0.199483,
		0.540546, -0.704045, 0.460576,
		14.734412, 17.638752, 18.783463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912899, 17.905415, 18.886295>,  <14.356030, 18.131584, 18.461060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912899, 17.905415, 18.886295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.263588, 17.793140, 19.042538>,  <14.474002, 17.725775, 19.136282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.263588, 17.793140, 19.042538>,  <13.912899, 17.905415, 18.886295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263588, 17.793140, 19.042538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317344, 0.272707, 0.908253,
		-0.361456, -0.920242, 0.150014,
		0.876723, -0.280687, 0.390605,
		14.526605, 17.708935, 19.159719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741815, 17.553278, 19.507158>,  <13.912899, 17.905415, 18.886295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741815, 17.553278, 19.507158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.122891, 17.670382, 19.539833>,  <14.351538, 17.740643, 19.559437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.122891, 17.670382, 19.539833>,  <13.741815, 17.553278, 19.507158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.122891, 17.670382, 19.539833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168198, 0.283965, 0.943967,
		0.253150, -0.913050, 0.319772,
		0.952693, 0.292751, 0.081687,
		14.408699, 17.758209, 19.564339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.933945, 17.225718, 20.190180>,  <13.741815, 17.553278, 19.507158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.933945, 17.225718, 20.190180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.162609, 17.535343, 20.081348>,  <14.299808, 17.721119, 20.016050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.162609, 17.535343, 20.081348>,  <13.933945, 17.225718, 20.190180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.162609, 17.535343, 20.081348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174475, 0.438705, 0.881531,
		0.801724, -0.456467, 0.385846,
		0.571662, 0.774065, -0.272078,
		14.334107, 17.767563, 19.999725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.375143, 17.341328, 20.699879>,  <13.933945, 17.225718, 20.190180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.375143, 17.341328, 20.699879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.329865, 17.688204, 20.505901>,  <14.302699, 17.896330, 20.389515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.329865, 17.688204, 20.505901>,  <14.375143, 17.341328, 20.699879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.329865, 17.688204, 20.505901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208631, 0.456456, 0.864940,
		0.971422, 0.199080, 0.129254,
		-0.113193, 0.867188, -0.484945,
		14.295908, 17.948360, 20.360418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.694442, 17.850187, 21.158098>,  <14.375143, 17.341328, 20.699879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.694442, 17.850187, 21.158098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.438244, 18.033745, 20.911787>,  <14.284525, 18.143879, 20.764000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.438244, 18.033745, 20.911787>,  <14.694442, 17.850187, 21.158098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.438244, 18.033745, 20.911787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551827, 0.282637, 0.784604,
		0.534091, 0.842338, 0.072203,
		-0.640494, 0.458894, -0.615779,
		14.246096, 18.171413, 20.727053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601874, 18.641338, 21.371773>,  <14.694442, 17.850187, 21.158098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601874, 18.641338, 21.371773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.287800, 18.535456, 21.147839>,  <14.099356, 18.471926, 21.013479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.287800, 18.535456, 21.147839>,  <14.601874, 18.641338, 21.371773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287800, 18.535456, 21.147839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611029, 0.184258, 0.769865,
		-0.100634, 0.946562, -0.306419,
		-0.785186, -0.264705, -0.559834,
		14.052244, 18.456043, 20.979889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.140569, 19.108822, 21.484140>,  <14.601874, 18.641338, 21.371773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.140569, 19.108822, 21.484140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.895621, 18.839415, 21.318548>,  <13.748652, 18.677771, 21.219193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.895621, 18.839415, 21.318548>,  <14.140569, 19.108822, 21.484140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.895621, 18.839415, 21.318548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653336, 0.136287, 0.744700,
		-0.445148, 0.726499, -0.523491,
		-0.612369, -0.673517, -0.413980,
		13.711910, 18.637360, 21.194355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503104, 19.410326, 21.585447>,  <14.140569, 19.108822, 21.484140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.503104, 19.410326, 21.585447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.407431, 19.030571, 21.504011>,  <13.350026, 18.802717, 21.455149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.407431, 19.030571, 21.504011>,  <13.503104, 19.410326, 21.585447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.407431, 19.030571, 21.504011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688873, 0.018153, 0.724655,
		-0.684284, 0.313576, -0.658351,
		-0.239185, -0.949389, -0.203592,
		13.335675, 18.745754, 21.442934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.782446, 19.360067, 21.501081>,  <13.503104, 19.410326, 21.585447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.782446, 19.360067, 21.501081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.896461, 18.987188, 21.590313>,  <12.964869, 18.763462, 21.643852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.896461, 18.987188, 21.590313>,  <12.782446, 19.360067, 21.501081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.896461, 18.987188, 21.590313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690825, -0.038456, 0.721999,
		-0.664466, -0.359904, -0.654946,
		0.285037, -0.932196, 0.223078,
		12.981972, 18.707529, 21.657236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.063970, 18.965544, 21.641426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.340940, 18.721857, 21.796036>,  <12.507123, 18.575645, 21.888802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.340940, 18.721857, 21.796036>,  <12.063970, 18.965544, 21.641426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.340940, 18.721857, 21.796036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560706, -0.117245, 0.819672,
		-0.454041, -0.784288, -0.422775,
		0.692427, -0.609217, 0.386521,
		12.548669, 18.539093, 21.911993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.730822, 18.368675, 21.825377>,  <12.063970, 18.965544, 21.641426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.730822, 18.368675, 21.825377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.062417, 18.406067, 22.045935>,  <12.261374, 18.428501, 22.178270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.062417, 18.406067, 22.045935>,  <11.730822, 18.368675, 21.825377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.062417, 18.406067, 22.045935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535890, -0.149285, 0.830985,
		0.159994, -0.984366, -0.073662,
		0.828990, 0.093478, 0.551397,
		12.311114, 18.434111, 22.211353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.609025, 17.900578, 22.308180>,  <11.730822, 18.368675, 21.825377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.609025, 17.900578, 22.308180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.899413, 18.116486, 22.478645>,  <12.073647, 18.246031, 22.580925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.899413, 18.116486, 22.478645>,  <11.609025, 17.900578, 22.308180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.899413, 18.116486, 22.478645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434956, -0.119632, 0.892469,
		0.532710, -0.833269, 0.147926,
		0.725971, 0.539769, 0.426165,
		12.117205, 18.278416, 22.606495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.808015, 17.511854, 22.969215>,  <11.609025, 17.900578, 22.308180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.808015, 17.511854, 22.969215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.919930, 17.895878, 22.969759>,  <11.987080, 18.126293, 22.970085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.919930, 17.895878, 22.969759>,  <11.808015, 17.511854, 22.969215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.919930, 17.895878, 22.969759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352497, 0.101412, 0.930302,
		0.893008, -0.260767, 0.366792,
		0.279789, 0.960061, 0.001357,
		12.003867, 18.183895, 22.970167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.163567, 17.574837, 23.577997>,  <11.808015, 17.511854, 22.969215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.163567, 17.574837, 23.577997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.017392, 17.934044, 23.480001>,  <11.929688, 18.149569, 23.421204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.017392, 17.934044, 23.480001>,  <12.163567, 17.574837, 23.577997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.017392, 17.934044, 23.480001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396091, 0.088160, 0.913969,
		0.842359, 0.431036, 0.323480,
		-0.365436, 0.898018, -0.244992,
		11.907762, 18.203449, 23.406504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.338011, 18.001173, 24.246023>,  <12.163567, 17.574837, 23.577997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.338011, 18.001173, 24.246023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.060962, 18.192469, 24.030037>,  <11.894732, 18.307245, 23.900446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.060962, 18.192469, 24.030037>,  <12.338011, 18.001173, 24.246023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.060962, 18.192469, 24.030037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529511, 0.171204, 0.830847,
		0.489787, 0.861381, 0.134653,
		-0.692623, 0.478239, -0.539964,
		11.853175, 18.335939, 23.868048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.223356, 18.575525, 24.645121>,  <12.338011, 18.001173, 24.246023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.223356, 18.575525, 24.645121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.897870, 18.566311, 24.412798>,  <11.702579, 18.560783, 24.273403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.897870, 18.566311, 24.412798>,  <12.223356, 18.575525, 24.645121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.897870, 18.566311, 24.412798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560918, 0.293179, 0.774221,
		0.152447, 0.955780, -0.251484,
		-0.813714, -0.023035, -0.580808,
		11.653756, 18.559401, 24.238556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849669, 19.271013, 24.691006>,  <12.223356, 18.575525, 24.645121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.849669, 19.271013, 24.691006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.579033, 19.002388, 24.570189>,  <11.416652, 18.841213, 24.497698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.579033, 19.002388, 24.570189>,  <11.849669, 19.271013, 24.691006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.579033, 19.002388, 24.570189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618066, 0.294955, 0.728695,
		-0.400276, 0.679709, -0.614634,
		-0.676590, -0.671563, -0.302041,
		11.376056, 18.800919, 24.479576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.215794, 19.543985, 24.593355>,  <11.849669, 19.271013, 24.691006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.215794, 19.543985, 24.593355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.117366, 19.158012, 24.629927>,  <11.058309, 18.926430, 24.651869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.117366, 19.158012, 24.629927>,  <11.215794, 19.543985, 24.593355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.117366, 19.158012, 24.629927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662255, 0.236257, 0.711056,
		-0.707720, 0.114421, -0.697166,
		-0.246070, -0.964930, 0.091428,
		11.043545, 18.868534, 24.657354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.493967, 19.642155, 24.620094>,  <11.215794, 19.543985, 24.593355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.493967, 19.642155, 24.620094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.558224, 19.265533, 24.738531>,  <10.596778, 19.039560, 24.809593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.558224, 19.265533, 24.738531>,  <10.493967, 19.642155, 24.620094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.558224, 19.265533, 24.738531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725986, 0.090520, 0.681726,
		-0.668684, -0.324472, -0.669014,
		0.160642, -0.941554, 0.296091,
		10.606417, 18.983067, 24.827358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.841594, 19.386141, 24.552942>,  <10.493967, 19.642155, 24.620094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.841594, 19.386141, 24.552942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.052565, 19.164711, 24.810740>,  <10.179147, 19.031853, 24.965418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.052565, 19.164711, 24.810740>,  <9.841594, 19.386141, 24.552942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.052565, 19.164711, 24.810740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700895, 0.145228, 0.698323,
		-0.480174, -0.820037, -0.311403,
		0.527426, -0.553578, 0.644495,
		10.210793, 18.998638, 25.004087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.341582, 18.940571, 24.857281>,  <9.841594, 19.386141, 24.552942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.341582, 18.940571, 24.857281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.658002, 18.983900, 25.098116>,  <9.847854, 19.009897, 25.242617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.658002, 18.983900, 25.098116>,  <9.341582, 18.940571, 24.857281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.658002, 18.983900, 25.098116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611278, 0.178776, 0.770959,
		-0.024125, -0.977908, 0.207637,
		0.791048, 0.108324, 0.602087,
		9.895316, 19.016397, 25.278742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.015269, 18.942696, 25.515329>,  <9.341582, 18.940571, 24.857281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.015269, 18.942696, 25.515329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.397614, 18.971371, 25.629305>,  <9.627020, 18.988575, 25.697691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.397614, 18.971371, 25.629305>,  <9.015269, 18.942696, 25.515329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.397614, 18.971371, 25.629305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286812, 0.017122, 0.957834,
		0.063789, -0.997280, 0.036928,
		0.955861, 0.071691, 0.284940,
		9.684372, 18.992876, 25.714787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.158146, 18.370867, 25.965767>,  <9.015269, 18.942696, 25.515329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.158146, 18.370867, 25.965767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.429025, 18.653360, 26.048361>,  <9.591552, 18.822857, 26.097918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.429025, 18.653360, 26.048361>,  <9.158146, 18.370867, 25.965767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.429025, 18.653360, 26.048361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196882, -0.096471, 0.975670,
		0.708973, -0.701373, 0.073715,
		0.677197, 0.706236, 0.206483,
		9.632184, 18.865231, 26.110306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.647298, 18.249887, 26.507547>,  <9.158146, 18.370867, 25.965767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.647298, 18.249887, 26.507547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.648555, 18.649656, 26.521097>,  <9.649309, 18.889517, 26.529226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.648555, 18.649656, 26.521097>,  <9.647298, 18.249887, 26.507547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.648555, 18.649656, 26.521097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069203, -0.033574, 0.997037,
		0.997598, -0.005477, 0.069057,
		0.003142, 0.999421, 0.033872,
		9.649498, 18.949482, 26.531260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.983241, 18.443615, 27.039518>,  <9.647298, 18.249887, 26.507547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.983241, 18.443615, 27.039518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.779635, 18.781784, 26.974819>,  <9.657472, 18.984686, 26.935999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.779635, 18.781784, 26.974819>,  <9.983241, 18.443615, 27.039518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.779635, 18.781784, 26.974819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137506, 0.105633, 0.984852,
		0.849704, 0.523544, 0.062482,
		-0.509014, 0.845425, -0.161747,
		9.626931, 19.035412, 26.926294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.272385, 18.985037, 27.530575>,  <9.983241, 18.443615, 27.039518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.272385, 18.985037, 27.530575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.926049, 19.156889, 27.428013>,  <9.718248, 19.260000, 27.366476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.926049, 19.156889, 27.428013>,  <10.272385, 18.985037, 27.530575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.926049, 19.156889, 27.428013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173714, 0.222448, 0.959344,
		0.469200, 0.875177, -0.117971,
		-0.865838, 0.429630, -0.256403,
		9.666298, 19.285778, 27.351091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.272805, 19.623711, 27.909391>,  <10.272385, 18.985037, 27.530575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.272805, 19.623711, 27.909391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.889807, 19.561876, 27.811981>,  <9.660007, 19.524776, 27.753534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.889807, 19.561876, 27.811981>,  <10.272805, 19.623711, 27.909391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.889807, 19.561876, 27.811981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279055, 0.282733, 0.917709,
		-0.073010, 0.946660, -0.313854,
		-0.957496, -0.154584, -0.243528,
		9.602558, 19.515501, 27.738922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.805378, 20.211842, 28.185640>,  <10.272805, 19.623711, 27.909391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.805378, 20.211842, 28.185640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.556345, 19.906401, 28.117170>,  <9.406925, 19.723135, 28.076088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.556345, 19.906401, 28.117170>,  <9.805378, 20.211842, 28.185640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.556345, 19.906401, 28.117170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525617, 0.245992, 0.814380,
		-0.579756, 0.596990, -0.554514,
		-0.622583, -0.763604, -0.171173,
		9.369570, 19.677320, 28.065819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.038882, 20.437428, 28.326113>,  <9.805378, 20.211842, 28.185640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.038882, 20.437428, 28.326113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.075521, 20.042524, 28.378162>,  <9.097505, 19.805582, 28.409391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.075521, 20.042524, 28.378162>,  <9.038882, 20.437428, 28.326113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.075521, 20.042524, 28.378162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403763, 0.082629, 0.911125,
		-0.910267, -0.135996, -0.391049,
		0.091597, -0.987258, 0.130124,
		9.103001, 19.746347, 28.417200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.414409, 20.190697, 28.601967>,  <9.038882, 20.437428, 28.326113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.414409, 20.190697, 28.601967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.660728, 19.889328, 28.694185>,  <8.808519, 19.708508, 28.749516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.660728, 19.889328, 28.694185>,  <8.414409, 20.190697, 28.601967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.660728, 19.889328, 28.694185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250003, 0.090645, 0.963993,
		-0.747189, -0.651262, -0.132538,
		0.615798, -0.753420, 0.230547,
		8.845467, 19.663301, 28.763350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.052197, 19.728834, 29.163630>,  <8.414409, 20.190697, 28.601967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.052197, 19.728834, 29.163630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.447146, 19.667156, 29.178135>,  <8.684116, 19.630150, 29.186838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.447146, 19.667156, 29.178135>,  <8.052197, 19.728834, 29.163630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.447146, 19.667156, 29.178135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019553, 0.108535, 0.993900,
		-0.157191, -0.982061, 0.104149,
		0.987374, -0.154196, 0.036263,
		8.743359, 19.620897, 29.189014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.331120, 19.146252, 29.608622>,  <8.052197, 19.728834, 29.163630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.331120, 19.146252, 29.608622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.605989, 19.436846, 29.610243>,  <8.770911, 19.611202, 29.611216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.605989, 19.436846, 29.610243>,  <8.331120, 19.146252, 29.608622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.605989, 19.436846, 29.610243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104362, 0.093193, 0.990164,
		0.718960, -0.680835, 0.139857,
		0.687172, 0.726484, 0.004052,
		8.812141, 19.654791, 29.611458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.980849, 18.537815, 29.761801>,  <8.331120, 19.146252, 29.608622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.980849, 18.537815, 29.761801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.041596, 18.211746, 29.985382>,  <8.078045, 18.016104, 30.119532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.041596, 18.211746, 29.985382>,  <7.980849, 18.537815, 29.761801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.041596, 18.211746, 29.985382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103532, -0.549281, -0.829199,
		0.982963, 0.183799, 0.000978,
		0.151869, -0.815174, 0.558953,
		8.087157, 17.967194, 30.153069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.645637, 18.198723, 29.745159>,  <7.980849, 18.537815, 29.761801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.645637, 18.198723, 29.745159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.344247, 17.948353, 29.825649>,  <8.163413, 17.798130, 29.873943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.344247, 17.948353, 29.825649>,  <8.645637, 18.198723, 29.745159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.344247, 17.948353, 29.825649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228818, -0.536570, -0.812240,
		0.616374, -0.565958, 0.547516,
		-0.753475, -0.625926, 0.201227,
		8.118204, 17.760574, 29.886017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.016077, 17.565729, 29.692417>,  <8.645637, 18.198723, 29.745159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.016077, 17.565729, 29.692417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.623407, 17.508514, 29.642050>,  <8.387805, 17.474186, 29.611830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.623407, 17.508514, 29.642050>,  <9.016077, 17.565729, 29.692417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.623407, 17.508514, 29.642050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185807, -0.571725, -0.799129,
		0.042315, -0.807881, 0.587825,
		-0.981675, -0.143037, -0.125917,
		8.328905, 17.465603, 29.604275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.966184, 16.981005, 29.391918>,  <9.016077, 17.565729, 29.692417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.966184, 16.981005, 29.391918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.576721, 17.059948, 29.346231>,  <8.343044, 17.107313, 29.318819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.576721, 17.059948, 29.346231>,  <8.966184, 16.981005, 29.391918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.576721, 17.059948, 29.346231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075717, -0.752300, -0.654456,
		-0.215085, -0.628567, 0.747424,
		-0.973655, 0.197357, -0.114215,
		8.284624, 17.119156, 29.311966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.548588, 16.294411, 29.449696>,  <8.966184, 16.981005, 29.391918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.548588, 16.294411, 29.449696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.349505, 16.576473, 29.247688>,  <8.230056, 16.745710, 29.126484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.349505, 16.576473, 29.247688>,  <8.548588, 16.294411, 29.449696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.349505, 16.576473, 29.247688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023565, -0.593036, -0.804831,
		-0.867026, -0.388668, 0.311774,
		-0.497705, 0.705156, -0.505019,
		8.200193, 16.788019, 29.096182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.142781, 15.866238, 28.937603>,  <8.548588, 16.294411, 29.449696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.142781, 15.866238, 28.937603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.113007, 16.234325, 28.783899>,  <8.095142, 16.455177, 28.691677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.113007, 16.234325, 28.783899>,  <8.142781, 15.866238, 28.937603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.113007, 16.234325, 28.783899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029399, -0.387186, -0.921533,
		-0.996792, -0.057298, 0.055874,
		-0.074436, 0.920220, -0.384259,
		8.090676, 16.510391, 28.668621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.753322, 15.774145, 28.294355>,  <8.142781, 15.866238, 28.937603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.753322, 15.774145, 28.294355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.948787, 16.121704, 28.262794>,  <8.066066, 16.330240, 28.243858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.948787, 16.121704, 28.262794>,  <7.753322, 15.774145, 28.294355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.948787, 16.121704, 28.262794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248298, -0.225192, -0.942145,
		-0.836396, 0.440800, -0.325788,
		0.488662, 0.868898, -0.078900,
		8.095386, 16.382374, 28.239124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.622205, 16.132072, 27.553782>,  <7.753322, 15.774145, 28.294355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.622205, 16.132072, 27.553782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.964280, 16.282639, 27.696312>,  <8.169524, 16.372978, 27.781830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.964280, 16.282639, 27.696312>,  <7.622205, 16.132072, 27.553782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.964280, 16.282639, 27.696312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372488, 0.031728, -0.927495,
		-0.360429, 0.925907, -0.113077,
		0.855186, 0.376416, 0.356325,
		8.220836, 16.395563, 27.803209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.644046, 16.588842, 27.111219>,  <7.622205, 16.132072, 27.553782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.644046, 16.588842, 27.111219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.000865, 16.528231, 27.281532>,  <8.214956, 16.491863, 27.383720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.000865, 16.528231, 27.281532>,  <7.644046, 16.588842, 27.111219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.000865, 16.528231, 27.281532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443804, 0.115738, -0.888619,
		0.085374, 0.981653, 0.170494,
		0.892048, -0.151531, 0.425780,
		8.268479, 16.482771, 27.409266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.047548, 17.165392, 26.890385>,  <7.644046, 16.588842, 27.111219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.047548, 17.165392, 26.890385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.320783, 16.888918, 26.984751>,  <8.484723, 16.723034, 27.041370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.320783, 16.888918, 26.984751>,  <8.047548, 17.165392, 26.890385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.320783, 16.888918, 26.984751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448079, 0.141539, -0.882719,
		0.576732, 0.708680, 0.406389,
		0.683086, -0.691186, 0.235914,
		8.525708, 16.681562, 27.055525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.649309, 17.445816, 26.660345>,  <8.047548, 17.165392, 26.890385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.649309, 17.445816, 26.660345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.725985, 17.055759, 26.704802>,  <8.771990, 16.821726, 26.731476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.725985, 17.055759, 26.704802>,  <8.649309, 17.445816, 26.660345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.725985, 17.055759, 26.704802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527987, 0.007001, -0.849223,
		0.827336, 0.221468, 0.516205,
		0.191690, -0.975142, 0.111141,
		8.783491, 16.763216, 26.738144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.407338, 17.327093, 26.699690>,  <8.649309, 17.445816, 26.660345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.407338, 17.327093, 26.699690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.256473, 16.977837, 26.576162>,  <9.165953, 16.768282, 26.502045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.256473, 16.977837, 26.576162>,  <9.407338, 17.327093, 26.699690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.256473, 16.977837, 26.576162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398661, 0.147913, -0.905092,
		0.835952, -0.464483, 0.292300,
		-0.377164, -0.873142, -0.308820,
		9.143323, 16.715895, 26.483517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.950607, 17.016970, 26.388416>,  <9.407338, 17.327093, 26.699690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.950607, 17.016970, 26.388416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.621047, 16.845419, 26.240227>,  <9.423311, 16.742489, 26.151314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.621047, 16.845419, 26.240227>,  <9.950607, 17.016970, 26.388416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.621047, 16.845419, 26.240227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377991, 0.071220, -0.923066,
		0.422269, -0.900550, 0.103434,
		-0.823900, -0.428880, -0.370473,
		9.373877, 16.716755, 26.129086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.159271, 16.505123, 25.896879>,  <9.950607, 17.016970, 26.388416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.159271, 16.505123, 25.896879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.779131, 16.562124, 25.786226>,  <9.551046, 16.596325, 25.719833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.779131, 16.562124, 25.786226>,  <10.159271, 16.505123, 25.896879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.779131, 16.562124, 25.786226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264709, -0.097137, -0.959423,
		-0.163592, -0.985016, 0.054592,
		-0.950351, 0.142503, -0.276634,
		9.494025, 16.604874, 25.703236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.061984, 15.963900, 25.402519>,  <10.159271, 16.505123, 25.896879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.061984, 15.963900, 25.402519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.768617, 16.228552, 25.340109>,  <9.592596, 16.387342, 25.302664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.768617, 16.228552, 25.340109>,  <10.061984, 15.963900, 25.402519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.768617, 16.228552, 25.340109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086093, -0.137267, -0.986786,
		-0.674304, -0.737159, 0.043712,
		-0.733418, 0.661630, -0.156024,
		9.548591, 16.427040, 25.293303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.536153, 15.673073, 24.991989>,  <10.061984, 15.963900, 25.402519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.536153, 15.673073, 24.991989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.481054, 16.066446, 24.944853>,  <9.447995, 16.302469, 24.916571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.481054, 16.066446, 24.944853>,  <9.536153, 15.673073, 24.991989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.481054, 16.066446, 24.944853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025724, -0.115381, -0.992988,
		-0.990133, -0.139812, -0.009404,
		-0.137747, 0.983433, -0.117839,
		9.439731, 16.361477, 24.909502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.126822, 15.731807, 24.397188>,  <9.536153, 15.673073, 24.991989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.126822, 15.731807, 24.397188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.239922, 16.114672, 24.422152>,  <9.307781, 16.344391, 24.437130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.239922, 16.114672, 24.422152>,  <9.126822, 15.731807, 24.397188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.239922, 16.114672, 24.422152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247382, 0.135632, -0.959378,
		-0.926745, 0.255823, 0.275134,
		0.282748, 0.957162, 0.062410,
		9.324746, 16.401821, 24.440874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.595676, 16.075241, 24.078249>,  <9.126822, 15.731807, 24.397188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.595676, 16.075241, 24.078249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.927074, 16.298710, 24.062847>,  <9.125913, 16.432791, 24.053606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.927074, 16.298710, 24.062847>,  <8.595676, 16.075241, 24.078249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.927074, 16.298710, 24.062847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073293, 0.040009, -0.996508,
		-0.555181, 0.828423, 0.074094,
		0.828494, 0.558673, -0.038505,
		9.175623, 16.466312, 24.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.358024, 16.662388, 23.834631>,  <8.595676, 16.075241, 24.078249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.358024, 16.662388, 23.834631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.753584, 16.692869, 23.783611>,  <8.990920, 16.711159, 23.753000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.753584, 16.692869, 23.783611>,  <8.358024, 16.662388, 23.834631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.753584, 16.692869, 23.783611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142488, 0.243089, -0.959482,
		-0.042111, 0.967006, 0.251249,
		0.988900, 0.076205, -0.127550,
		9.050254, 16.715731, 23.745346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.575027, 17.312878, 23.359022>,  <8.358024, 16.662388, 23.834631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.575027, 17.312878, 23.359022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.866886, 17.040337, 23.335779>,  <9.042002, 16.876812, 23.321833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.866886, 17.040337, 23.335779>,  <8.575027, 17.312878, 23.359022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.866886, 17.040337, 23.335779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019452, 0.105620, -0.994216,
		0.683547, 0.724296, 0.090319,
		0.729647, -0.681351, -0.058107,
		9.085780, 16.835932, 23.318348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.971358, 17.472805, 22.797371>,  <8.575027, 17.312878, 23.359022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.971358, 17.472805, 22.797371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.092216, 17.095949, 22.855450>,  <9.164731, 16.869835, 22.890297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.092216, 17.095949, 22.855450>,  <8.971358, 17.472805, 22.797371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.092216, 17.095949, 22.855450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353625, -0.030669, -0.934884,
		0.885244, 0.333815, 0.323898,
		0.302145, -0.942140, 0.145195,
		9.182860, 16.813307, 22.899008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<29.446774, 18.314333, 7.888948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.769291, 18.126051, 7.745656>,  <29.962801, 18.013081, 7.659682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.769291, 18.126051, 7.745656>,  <29.446774, 18.314333, 7.888948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769291, 18.126051, 7.745656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584589, 0.726519, 0.361145,
		0.090266, -0.500605, 0.860957,
		0.806292, -0.470707, -0.358228,
		30.011179, 17.984838, 7.638188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917286, 18.354956, 8.504015>,  <29.446774, 18.314333, 7.888948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917286, 18.354956, 8.504015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.883141, 18.245901, 8.887344>,  <29.862654, 18.180468, 9.117342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.883141, 18.245901, 8.887344>,  <29.917286, 18.354956, 8.504015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883141, 18.245901, 8.887344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492401, 0.847709, 0.197308,
		-0.866172, -0.455037, -0.206609,
		-0.085362, -0.272637, 0.958323,
		29.857533, 18.164110, 9.174841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288282, 18.540888, 8.550451>,  <29.917286, 18.354956, 8.504015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288282, 18.540888, 8.550451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.469870, 18.531067, 8.906723>,  <29.578823, 18.525175, 9.120486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.469870, 18.531067, 8.906723>,  <29.288282, 18.540888, 8.550451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469870, 18.531067, 8.906723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542351, 0.785495, 0.298082,
		-0.706942, -0.618381, 0.343277,
		0.453970, -0.024551, 0.890679,
		29.606060, 18.523703, 9.173926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833786, 18.657944, 9.034372>,  <29.288282, 18.540888, 8.550451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833786, 18.657944, 9.034372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.175295, 18.766504, 9.212097>,  <29.380199, 18.831640, 9.318732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.175295, 18.766504, 9.212097>,  <28.833786, 18.657944, 9.034372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175295, 18.766504, 9.212097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502582, 0.652454, 0.567199,
		-0.135955, -0.707562, 0.693449,
		0.853772, 0.271401, 0.444313,
		29.431427, 18.847925, 9.345391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365076, 19.208872, 8.915765>,  <28.833786, 18.657944, 9.034372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365076, 19.208872, 8.915765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.117054, 19.514591, 8.844902>,  <28.968241, 19.698023, 8.802384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.117054, 19.514591, 8.844902>,  <29.365076, 19.208872, 8.915765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117054, 19.514591, 8.844902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661189, -0.387503, 0.642395,
		0.422331, 0.515453, 0.745617,
		-0.620053, 0.764297, -0.177157,
		28.931038, 19.743879, 8.791755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333519, 19.622984, 9.495792>,  <29.365076, 19.208872, 8.915765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333519, 19.622984, 9.495792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.005413, 19.636524, 9.267401>,  <28.808550, 19.644650, 9.130365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.005413, 19.636524, 9.267401>,  <29.333519, 19.622984, 9.495792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005413, 19.636524, 9.267401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567131, -0.177871, 0.804192,
		-0.074337, 0.983471, 0.165100,
		-0.820266, 0.033852, -0.570979,
		28.759333, 19.646681, 9.096107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698996, 19.516989, 9.913565>,  <29.333519, 19.622984, 9.495792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698996, 19.516989, 9.913565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.510885, 19.527966, 9.560728>,  <28.398018, 19.534552, 9.349026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.510885, 19.527966, 9.560728>,  <28.698996, 19.516989, 9.913565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510885, 19.527966, 9.560728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878268, -0.112544, 0.464736,
		-0.086522, 0.993268, 0.077027,
		-0.470277, 0.027440, -0.882092,
		28.369802, 19.536198, 9.296101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129711, 20.105230, 9.871184>,  <28.698996, 19.516989, 9.913565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129711, 20.105230, 9.871184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.068405, 19.759052, 9.680391>,  <28.031622, 19.551346, 9.565915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.068405, 19.759052, 9.680391>,  <28.129711, 20.105230, 9.871184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068405, 19.759052, 9.680391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908442, -0.066565, 0.412676,
		-0.388900, 0.496559, -0.776006,
		-0.153263, -0.865447, -0.476983,
		28.022427, 19.499418, 9.537296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512669, 20.172501, 9.429903>,  <28.129711, 20.105230, 9.871184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512669, 20.172501, 9.429903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.600698, 19.802654, 9.554256>,  <27.653517, 19.580746, 9.628868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.600698, 19.802654, 9.554256>,  <27.512669, 20.172501, 9.429903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600698, 19.802654, 9.554256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936297, -0.110797, 0.333275,
		-0.273707, -0.364424, -0.890101,
		0.220074, -0.924618, 0.310883,
		27.666721, 19.525269, 9.647522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059191, 19.701797, 9.109080>,  <27.512669, 20.172501, 9.429903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059191, 19.701797, 9.109080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.182652, 19.557175, 9.460992>,  <27.256727, 19.470400, 9.672139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.182652, 19.557175, 9.460992>,  <27.059191, 19.701797, 9.109080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182652, 19.557175, 9.460992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951175, -0.118751, 0.284895,
		0.001469, -0.924757, -0.380555,
		0.308650, -0.361556, 0.879780,
		27.275246, 19.448708, 9.724925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484270, 19.249868, 9.276582>,  <27.059191, 19.701797, 9.109080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484270, 19.249868, 9.276582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.664742, 19.234367, 9.633219>,  <26.773024, 19.225067, 9.847201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.664742, 19.234367, 9.633219>,  <26.484270, 19.249868, 9.276582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664742, 19.234367, 9.633219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885007, 0.109196, 0.452590,
		-0.114897, -0.993265, 0.014972,
		0.451177, -0.038751, 0.891593,
		26.800095, 19.222742, 9.900697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192019, 18.708965, 9.712973>,  <26.484270, 19.249868, 9.276582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192019, 18.708965, 9.712973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.380442, 18.949842, 9.970798>,  <26.493496, 19.094370, 10.125494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.380442, 18.949842, 9.970798>,  <26.192019, 18.708965, 9.712973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380442, 18.949842, 9.970798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832666, 0.062376, 0.550251,
		0.291153, -0.795909, 0.530810,
		0.471059, 0.602194, 0.644565,
		26.521759, 19.130501, 10.164168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021761, 18.447746, 10.363846>,  <26.192019, 18.708965, 9.712973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021761, 18.447746, 10.363846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.120995, 18.830639, 10.423389>,  <26.180534, 19.060375, 10.459116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.120995, 18.830639, 10.423389>,  <26.021761, 18.447746, 10.363846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120995, 18.830639, 10.423389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865485, 0.149980, 0.477956,
		0.435189, -0.247409, 0.865678,
		0.248084, 0.957233, 0.148859,
		26.195419, 19.117809, 10.468047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901834, 18.649391, 11.127564>,  <26.021761, 18.447746, 10.363846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901834, 18.649391, 11.127564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.905056, 19.003103, 10.940809>,  <25.906988, 19.215330, 10.828756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.905056, 19.003103, 10.940809>,  <25.901834, 18.649391, 11.127564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905056, 19.003103, 10.940809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797686, 0.287241, 0.530274,
		0.603019, 0.368160, 0.707691,
		0.008052, 0.884280, -0.466888,
		25.907471, 19.268387, 10.800743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918364, 19.163977, 11.665020>,  <25.901834, 18.649391, 11.127564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918364, 19.163977, 11.665020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.767395, 19.326326, 11.332077>,  <25.676813, 19.423737, 11.132311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.767395, 19.326326, 11.332077>,  <25.918364, 19.163977, 11.665020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767395, 19.326326, 11.332077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844817, 0.217205, 0.488985,
		0.379259, 0.887743, 0.260912,
		-0.377422, 0.405875, -0.832357,
		25.654169, 19.448090, 11.082370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646906, 19.761732, 11.925954>,  <25.918364, 19.163977, 11.665020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646906, 19.761732, 11.925954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.470400, 19.700142, 11.572327>,  <25.364496, 19.663189, 11.360150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.470400, 19.700142, 11.572327>,  <25.646906, 19.761732, 11.925954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470400, 19.700142, 11.572327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896701, 0.037420, 0.441053,
		-0.034829, 0.987366, -0.154581,
		-0.441265, -0.153974, -0.884068,
		25.338020, 19.653950, 11.307106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985315, 20.291824, 11.811961>,  <25.646906, 19.761732, 11.925954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985315, 20.291824, 11.811961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.931499, 20.005634, 11.537737>,  <24.899210, 19.833920, 11.373202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.931499, 20.005634, 11.537737>,  <24.985315, 20.291824, 11.811961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931499, 20.005634, 11.537737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990003, 0.067488, 0.123850,
		-0.042345, 0.695369, -0.717405,
		-0.134537, -0.715477, -0.685560,
		24.891138, 19.790991, 11.332069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337030, 20.574810, 11.462865>,  <24.985315, 20.291824, 11.811961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337030, 20.574810, 11.462865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.368887, 20.179966, 11.407334>,  <24.388000, 19.943060, 11.374016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.368887, 20.179966, 11.407334>,  <24.337030, 20.574810, 11.462865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.368887, 20.179966, 11.407334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974566, -0.106372, 0.197249,
		-0.209473, 0.119586, -0.970474,
		0.079644, -0.987109, -0.138826,
		24.392780, 19.883833, 11.365686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.739431, 20.484928, 11.249365>,  <24.337030, 20.574810, 11.462865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.739431, 20.484928, 11.249365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.850538, 20.102318, 11.284936>,  <23.917202, 19.872751, 11.306279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.850538, 20.102318, 11.284936>,  <23.739431, 20.484928, 11.249365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.850538, 20.102318, 11.284936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944582, -0.255088, 0.206626,
		-0.174958, -0.141394, -0.974370,
		0.277766, -0.956524, 0.088929,
		23.933868, 19.815361, 11.311614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.190084, 20.141907, 10.933557>,  <23.739431, 20.484928, 11.249365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.190084, 20.141907, 10.933557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.387123, 19.888271, 11.171978>,  <23.505346, 19.736090, 11.315031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.387123, 19.888271, 11.171978>,  <23.190084, 20.141907, 10.933557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.387123, 19.888271, 11.171978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870256, -0.359806, 0.336443,
		0.001128, -0.684450, -0.729059,
		0.492598, -0.634088, 0.596053,
		23.534903, 19.698046, 11.350794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.825588, 19.520452, 10.959601>,  <23.190084, 20.141907, 10.933557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.825588, 19.520452, 10.959601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.052692, 19.509304, 11.288691>,  <23.188953, 19.502615, 11.486144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.052692, 19.509304, 11.288691>,  <22.825588, 19.520452, 10.959601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.052692, 19.509304, 11.288691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727481, -0.484719, 0.485611,
		0.385255, -0.874226, -0.295478,
		0.567758, -0.027871, 0.822724,
		23.223021, 19.500942, 11.535507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.803909, 18.764812, 11.121810>,  <22.825588, 19.520452, 10.959601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.803909, 18.764812, 11.121810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.923506, 18.959711, 11.450004>,  <22.995264, 19.076651, 11.646920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.923506, 18.959711, 11.450004>,  <22.803909, 18.764812, 11.121810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.923506, 18.959711, 11.450004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570767, -0.597743, 0.562964,
		0.764741, -0.636627, 0.099383,
		0.298992, 0.487246, 0.820485,
		23.013203, 19.105885, 11.696149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.862144, 18.259848, 11.519438>,  <22.803909, 18.764812, 11.121810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.862144, 18.259848, 11.519438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.821074, 18.576694, 11.760106>,  <22.796431, 18.766802, 11.904507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.821074, 18.576694, 11.760106>,  <22.862144, 18.259848, 11.519438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.821074, 18.576694, 11.760106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645127, -0.513434, 0.565860,
		0.757146, -0.330054, 0.563733,
		-0.102675, 0.792118, 0.601671,
		22.790272, 18.814329, 11.940607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789957, 17.921633, 12.148279>,  <22.862144, 18.259848, 11.519438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789957, 17.921633, 12.148279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.661169, 18.289364, 12.238760>,  <22.583897, 18.510002, 12.293048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.661169, 18.289364, 12.238760>,  <22.789957, 17.921633, 12.148279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.661169, 18.289364, 12.238760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598706, -0.382796, 0.703575,
		0.733407, 0.091103, 0.673658,
		-0.321971, 0.919330, 0.226201,
		22.564577, 18.565163, 12.306621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.931597, 18.132338, 12.902145>,  <22.789957, 17.921633, 12.148279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.931597, 18.132338, 12.902145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.595695, 18.313215, 12.781922>,  <22.394156, 18.421741, 12.709788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.595695, 18.313215, 12.781922>,  <22.931597, 18.132338, 12.902145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.595695, 18.313215, 12.781922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513964, -0.483506, 0.708564,
		0.175087, 0.749495, 0.638437,
		-0.839753, 0.452194, -0.300558,
		22.343769, 18.448874, 12.691755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.573685, 18.281593, 13.542900>,  <22.931597, 18.132338, 12.902145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.573685, 18.281593, 13.542900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.293613, 18.359413, 13.268120>,  <22.125570, 18.406105, 13.103251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.293613, 18.359413, 13.268120>,  <22.573685, 18.281593, 13.542900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.293613, 18.359413, 13.268120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689851, -0.432315, 0.580697,
		-0.184005, 0.880485, 0.436907,
		-0.700177, 0.194550, -0.686952,
		22.083561, 18.417778, 13.062035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.929071, 18.537374, 13.895564>,  <22.573685, 18.281593, 13.542900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.929071, 18.537374, 13.895564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.784653, 18.424910, 13.539903>,  <21.698002, 18.357431, 13.326506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.784653, 18.424910, 13.539903>,  <21.929071, 18.537374, 13.895564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.784653, 18.424910, 13.539903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812122, -0.373856, 0.447984,
		-0.458372, 0.883843, -0.093360,
		-0.361045, -0.281163, -0.889154,
		21.676340, 18.340561, 13.273156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.213041, 18.774940, 13.820848>,  <21.929071, 18.537374, 13.895564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.213041, 18.774940, 13.820848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281643, 18.465166, 13.577262>,  <21.322803, 18.279303, 13.431110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281643, 18.465166, 13.577262>,  <21.213041, 18.774940, 13.820848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281643, 18.465166, 13.577262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797559, -0.472007, 0.375644,
		-0.578348, 0.421263, -0.698607,
		0.171503, -0.774433, -0.608966,
		21.333094, 18.232836, 13.394572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.482161, 18.497662, 13.753560>,  <21.213041, 18.774940, 13.820848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.482161, 18.497662, 13.753560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.741611, 18.208544, 13.658185>,  <20.897282, 18.035072, 13.600960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.741611, 18.208544, 13.658185>,  <20.482161, 18.497662, 13.753560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.741611, 18.208544, 13.658185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599027, -0.678059, 0.425915,
		-0.469523, -0.133429, -0.872780,
		0.648625, -0.722795, -0.238436,
		20.936199, 17.991705, 13.586654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.050785, 17.895912, 13.447693>,  <20.482161, 18.497662, 13.753560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.050785, 17.895912, 13.447693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.395575, 17.735655, 13.571942>,  <20.602448, 17.639502, 13.646492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.395575, 17.735655, 13.571942>,  <20.050785, 17.895912, 13.447693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.395575, 17.735655, 13.571942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506940, -0.685314, 0.522835,
		0.003406, -0.608138, -0.793824,
		0.861974, -0.400641, 0.310624,
		20.654167, 17.615463, 13.665130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.786739, 17.221970, 13.409832>,  <20.050785, 17.895912, 13.447693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.786739, 17.221970, 13.409832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.135595, 17.189425, 13.602810>,  <20.344910, 17.169897, 13.718596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.135595, 17.189425, 13.602810>,  <19.786739, 17.221970, 13.409832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.135595, 17.189425, 13.602810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396421, -0.695439, 0.599345,
		0.286745, -0.713963, -0.638775,
		0.872140, -0.081365, 0.482444,
		20.397238, 17.165014, 13.747543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.986794, 16.527605, 13.346371>,  <19.786739, 17.221970, 13.409832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.986794, 16.527605, 13.346371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.148890, 16.682627, 13.677570>,  <20.246147, 16.775639, 13.876290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.148890, 16.682627, 13.677570>,  <19.986794, 16.527605, 13.346371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.148890, 16.682627, 13.677570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403666, -0.736775, 0.542417,
		0.820265, -0.554044, -0.142127,
		0.405238, 0.387554, 0.828000,
		20.270462, 16.798893, 13.925970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.294065, 15.889512, 13.571497>,  <19.986794, 16.527605, 13.346371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.294065, 15.889512, 13.571497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.272011, 16.158171, 13.867024>,  <20.258778, 16.319366, 14.044341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.272011, 16.158171, 13.867024>,  <20.294065, 15.889512, 13.571497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.272011, 16.158171, 13.867024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057311, -0.740852, 0.669219,
		0.996833, -0.005445, 0.079339,
		-0.055135, 0.671646, 0.738818,
		20.255470, 16.359665, 14.088670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.773676, 15.843612, 14.062871>,  <20.294065, 15.889512, 13.571497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.773676, 15.843612, 14.062871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423063, 15.980328, 14.198442>,  <20.212696, 16.062357, 14.279785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423063, 15.980328, 14.198442>,  <20.773676, 15.843612, 14.062871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423063, 15.980328, 14.198442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091278, -0.809380, 0.580149,
		0.472610, 0.477582, 0.740645,
		-0.876532, 0.341789, 0.338929,
		20.160103, 16.082865, 14.300121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.851702, 15.835583, 14.836384>,  <20.773676, 15.843612, 14.062871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.851702, 15.835583, 14.836384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.476210, 15.801400, 14.702828>,  <20.250914, 15.780890, 14.622695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.476210, 15.801400, 14.702828>,  <20.851702, 15.835583, 14.836384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.476210, 15.801400, 14.702828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104720, -0.852250, 0.512547,
		-0.328357, 0.516108, 0.791084,
		-0.938731, -0.085456, -0.333889,
		20.194590, 15.775764, 14.602662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.501638, 15.665586, 15.212044>,  <20.851702, 15.835583, 14.836384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.501638, 15.665586, 15.212044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.864267, 15.593060, 15.364491>,  <22.081844, 15.549545, 15.455958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.864267, 15.593060, 15.364491>,  <21.501638, 15.665586, 15.212044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.864267, 15.593060, 15.364491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412915, 0.194203, -0.889824,
		0.087322, 0.964060, 0.250926,
		0.906574, -0.181313, 0.381117,
		22.136240, 15.538667, 15.478826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.991976, 16.207249, 14.930633>,  <21.501638, 15.665586, 15.212044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.991976, 16.207249, 14.930633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.230444, 15.913271, 15.059902>,  <22.373526, 15.736885, 15.137464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.230444, 15.913271, 15.059902>,  <21.991976, 16.207249, 14.930633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.230444, 15.913271, 15.059902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529681, 0.057550, -0.846242,
		0.603341, 0.675683, 0.423594,
		0.596170, -0.734942, 0.323174,
		22.409294, 15.692788, 15.156855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623974, 16.448467, 14.840410>,  <21.991976, 16.207249, 14.930633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623974, 16.448467, 14.840410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.675570, 16.051891, 14.848522>,  <22.706526, 15.813946, 14.853389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.675570, 16.051891, 14.848522>,  <22.623974, 16.448467, 14.840410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.675570, 16.051891, 14.848522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693242, 0.075532, -0.716736,
		0.709068, 0.106509, 0.697049,
		0.128988, -0.991439, 0.020280,
		22.714266, 15.754459, 14.854606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.349955, 16.337074, 15.006776>,  <22.623974, 16.448467, 14.840410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.349955, 16.337074, 15.006776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250307, 15.974322, 14.870830>,  <23.190519, 15.756671, 14.789262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250307, 15.974322, 14.870830>,  <23.349955, 16.337074, 15.006776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.250307, 15.974322, 14.870830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667957, 0.093216, -0.738339,
		0.701266, -0.410948, 0.582535,
		-0.249117, -0.906880, -0.339865,
		23.175571, 15.702258, 14.768870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.996510, 16.016394, 14.925334>,  <23.349955, 16.337074, 15.006776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.996510, 16.016394, 14.925334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.739698, 15.813127, 14.695703>,  <23.585611, 15.691167, 14.557923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.739698, 15.813127, 14.695703>,  <23.996510, 16.016394, 14.925334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.739698, 15.813127, 14.695703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664873, 0.003815, -0.746947,
		0.381763, -0.861251, 0.335417,
		-0.642029, -0.508166, -0.574079,
		23.547091, 15.660677, 14.523479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.324675, 15.424419, 14.622733>,  <23.996510, 16.016394, 14.925334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.324675, 15.424419, 14.622733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.004549, 15.494930, 14.393500>,  <23.812473, 15.537237, 14.255960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.004549, 15.494930, 14.393500>,  <24.324675, 15.424419, 14.622733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.004549, 15.494930, 14.393500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587579, 0.040307, -0.808162,
		-0.119363, -0.983514, -0.135836,
		-0.800315, 0.176280, -0.573081,
		23.764454, 15.547813, 14.221576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.291916, 14.951099, 14.078721>,  <24.324675, 15.424419, 14.622733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.291916, 14.951099, 14.078721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.095734, 15.271963, 13.942489>,  <23.978024, 15.464481, 13.860749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.095734, 15.271963, 13.942489>,  <24.291916, 14.951099, 14.078721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.095734, 15.271963, 13.942489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520891, -0.043478, -0.852515,
		-0.698660, -0.595526, -0.396513,
		-0.490455, 0.802159, -0.340580,
		23.948597, 15.512610, 13.840315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.068560, 14.722612, 13.396545>,  <24.291916, 14.951099, 14.078721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.068560, 14.722612, 13.396545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.038660, 15.121249, 13.410506>,  <24.020720, 15.360431, 13.418882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.038660, 15.121249, 13.410506>,  <24.068560, 14.722612, 13.396545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.038660, 15.121249, 13.410506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329563, 0.057721, -0.942367,
		-0.941170, -0.058940, -0.332754,
		-0.074750, 0.996591, 0.034901,
		24.016235, 15.420227, 13.420977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.950653, 14.933675, 12.601859>,  <24.068560, 14.722612, 13.396545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.950653, 14.933675, 12.601859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.061657, 15.274117, 12.780120>,  <24.128260, 15.478383, 12.887076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.061657, 15.274117, 12.780120>,  <23.950653, 14.933675, 12.601859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.061657, 15.274117, 12.780120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394419, 0.322045, -0.860651,
		-0.876026, 0.414614, -0.246321,
		0.277512, 0.851107, 0.445651,
		24.144911, 15.529449, 12.913815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.064915, 15.369136, 12.056900>,  <23.950653, 14.933675, 12.601859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.064915, 15.369136, 12.056900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.260925, 15.582642, 12.332572>,  <24.378532, 15.710745, 12.497975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.260925, 15.582642, 12.332572>,  <24.064915, 15.369136, 12.056900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.260925, 15.582642, 12.332572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635878, 0.321916, -0.701448,
		-0.596266, 0.781962, -0.181662,
		0.490026, 0.533765, 0.689180,
		24.407932, 15.742771, 12.539326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.324347, 15.998398, 11.716941>,  <24.064915, 15.369136, 12.056900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.324347, 15.998398, 11.716941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.548571, 15.969447, 12.046919>,  <24.683105, 15.952077, 12.244905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.548571, 15.969447, 12.046919>,  <24.324347, 15.998398, 11.716941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548571, 15.969447, 12.046919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793809, 0.330718, -0.510385,
		-0.235884, 0.940950, 0.242841,
		0.560558, -0.072378, 0.824946,
		24.716738, 15.947734, 12.294403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.568306, 16.627527, 11.891195>,  <24.324347, 15.998398, 11.716941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.568306, 16.627527, 11.891195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.827059, 16.364237, 12.045224>,  <24.982311, 16.206263, 12.137642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.827059, 16.364237, 12.045224>,  <24.568306, 16.627527, 11.891195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827059, 16.364237, 12.045224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678070, 0.265412, -0.685403,
		0.348947, 0.704482, 0.618014,
		0.646882, -0.658226, 0.385073,
		25.021124, 16.166769, 12.160747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.144318, 17.021740, 12.091146>,  <24.568306, 16.627527, 11.891195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.144318, 17.021740, 12.091146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.253735, 16.645746, 12.009554>,  <25.319384, 16.420151, 11.960599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.253735, 16.645746, 12.009554>,  <25.144318, 17.021740, 12.091146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253735, 16.645746, 12.009554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783797, 0.340755, -0.519181,
		0.557528, -0.017862, 0.829966,
		0.273542, -0.939982, -0.203980,
		25.335796, 16.363752, 11.948359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823212, 17.016403, 12.313692>,  <25.144318, 17.021740, 12.091146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823212, 17.016403, 12.313692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.797337, 16.678209, 12.101665>,  <25.781811, 16.475292, 11.974448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.797337, 16.678209, 12.101665>,  <25.823212, 17.016403, 12.313692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797337, 16.678209, 12.101665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866939, 0.215444, -0.449445,
		0.494198, -0.488611, 0.719046,
		-0.064689, -0.845484, -0.530068,
		25.777929, 16.424564, 11.942644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397972, 16.624113, 12.496969>,  <25.823212, 17.016403, 12.313692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397972, 16.624113, 12.496969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.273108, 16.500917, 12.137481>,  <26.198189, 16.427000, 11.921788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.273108, 16.500917, 12.137481>,  <26.397972, 16.624113, 12.496969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273108, 16.500917, 12.137481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928534, 0.101181, -0.357192,
		0.200945, -0.945994, 0.254394,
		-0.312161, -0.307989, -0.898720,
		26.179459, 16.408520, 11.867865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966673, 16.057774, 12.211704>,  <26.397972, 16.624113, 12.496969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966673, 16.057774, 12.211704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.750286, 16.214624, 11.914089>,  <26.620455, 16.308735, 11.735520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.750286, 16.214624, 11.914089>,  <26.966673, 16.057774, 12.211704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750286, 16.214624, 11.914089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839227, 0.193532, -0.508177,
		-0.055276, -0.899322, -0.433778,
		-0.540965, 0.392129, -0.744038,
		26.587997, 16.332262, 11.690878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383532, 15.939647, 11.640118>,  <26.966673, 16.057774, 12.211704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383532, 15.939647, 11.640118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.131994, 16.225454, 11.517468>,  <26.981071, 16.396938, 11.443879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.131994, 16.225454, 11.517468>,  <27.383532, 15.939647, 11.640118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131994, 16.225454, 11.517468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745879, 0.442985, -0.497421,
		-0.219587, -0.541505, -0.811513,
		-0.628844, 0.714518, -0.306624,
		26.943340, 16.439810, 11.425481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.242149, 18.673950, 19.757927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975153, 18.386011, 19.834108>,  <14.814955, 18.213247, 19.879816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975153, 18.386011, 19.834108>,  <15.242149, 18.673950, 19.757927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.975153, 18.386011, 19.834108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404160, -0.565063, -0.719276,
		0.625389, -0.403137, 0.668109,
		-0.667491, -0.719850, 0.190452,
		14.774906, 18.170055, 19.891245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.604077, 18.145403, 19.654839>,  <15.242149, 18.673950, 19.757927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.604077, 18.145403, 19.654839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233647, 17.996572, 19.629721>,  <15.011389, 17.907274, 19.614651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233647, 17.996572, 19.629721>,  <15.604077, 18.145403, 19.654839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.233647, 17.996572, 19.629721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272895, -0.545483, -0.792450,
		0.260598, -0.751005, 0.606696,
		-0.926076, -0.372076, -0.062794,
		14.955825, 17.884951, 19.610882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.676518, 17.369701, 19.631618>,  <15.604077, 18.145403, 19.654839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.676518, 17.369701, 19.631618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315261, 17.451694, 19.480721>,  <15.098506, 17.500891, 19.390182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315261, 17.451694, 19.480721>,  <15.676518, 17.369701, 19.631618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.315261, 17.451694, 19.480721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223704, -0.525297, -0.820987,
		-0.366453, -0.825861, 0.428563,
		-0.903144, 0.204982, -0.377245,
		15.044318, 17.513189, 19.367546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390526, 16.712303, 19.336115>,  <15.676518, 17.369701, 19.631618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390526, 16.712303, 19.336115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189073, 17.019667, 19.178177>,  <15.068201, 17.204084, 19.083414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189073, 17.019667, 19.178177>,  <15.390526, 16.712303, 19.336115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189073, 17.019667, 19.178177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012469, -0.450525, -0.892677,
		-0.863829, -0.454504, 0.217317,
		-0.503632, 0.768410, -0.394844,
		15.037983, 17.250189, 19.059723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.974360, 16.311092, 18.873175>,  <15.390526, 16.712303, 19.336115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.974360, 16.311092, 18.873175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.977864, 16.693115, 18.754662>,  <14.979967, 16.922329, 18.683554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.977864, 16.693115, 18.754662>,  <14.974360, 16.311092, 18.873175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.977864, 16.693115, 18.754662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045139, -0.296372, -0.954005,
		-0.998942, -0.005016, -0.045707,
		0.008761, 0.955059, -0.296285,
		14.980493, 16.979633, 18.665775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432126, 16.341385, 18.431767>,  <14.974360, 16.311092, 18.873175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432126, 16.341385, 18.431767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667470, 16.650257, 18.335789>,  <14.808677, 16.835581, 18.278202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667470, 16.650257, 18.335789>,  <14.432126, 16.341385, 18.431767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667470, 16.650257, 18.335789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079954, -0.350841, -0.933016,
		-0.804636, 0.529765, -0.268160,
		0.588360, 0.772179, -0.239943,
		14.843978, 16.881910, 18.263805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228321, 16.591501, 17.751135>,  <14.432126, 16.341385, 18.431767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228321, 16.591501, 17.751135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600920, 16.720755, 17.817947>,  <14.824479, 16.798307, 17.858034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600920, 16.720755, 17.817947>,  <14.228321, 16.591501, 17.751135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600920, 16.720755, 17.817947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270405, -0.307993, -0.912152,
		-0.243304, 0.894832, -0.374272,
		0.931496, 0.323135, 0.167031,
		14.880368, 16.817696, 17.868057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492615, 16.701271, 17.067247>,  <14.228321, 16.591501, 17.751135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492615, 16.701271, 17.067247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831004, 16.704275, 17.280516>,  <15.034038, 16.706078, 17.408478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831004, 16.704275, 17.280516>,  <14.492615, 16.701271, 17.067247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.831004, 16.704275, 17.280516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519802, -0.234564, -0.821454,
		0.118894, 0.972072, -0.202339,
		0.845973, 0.007510, 0.533173,
		15.084796, 16.706528, 17.440468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872812, 17.163372, 16.690479>,  <14.492615, 16.701271, 17.067247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.872812, 17.163372, 16.690479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.118476, 16.932058, 16.905289>,  <15.265874, 16.793270, 17.034174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.118476, 16.932058, 16.905289>,  <14.872812, 17.163372, 16.690479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118476, 16.932058, 16.905289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582943, -0.126269, -0.802642,
		0.531964, 0.806005, 0.259557,
		0.614159, -0.578284, 0.537026,
		15.302724, 16.758574, 17.066397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.529687, 17.326092, 16.480370>,  <14.872812, 17.163372, 16.690479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.529687, 17.326092, 16.480370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630902, 16.980425, 16.654354>,  <15.691631, 16.773026, 16.758745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630902, 16.980425, 16.654354>,  <15.529687, 17.326092, 16.480370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630902, 16.980425, 16.654354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656724, -0.176712, -0.733135,
		0.710412, 0.471159, 0.522803,
		0.253038, -0.864165, 0.434960,
		15.706814, 16.721176, 16.784842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.257923, 17.279047, 16.434978>,  <15.529687, 17.326092, 16.480370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.257923, 17.279047, 16.434978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132292, 16.907267, 16.512417>,  <16.056913, 16.684198, 16.558880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132292, 16.907267, 16.512417>,  <16.257923, 17.279047, 16.434978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.132292, 16.907267, 16.512417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646565, -0.358718, -0.673257,
		0.695205, -0.086283, 0.713615,
		-0.314077, -0.929450, 0.193595,
		16.038069, 16.628431, 16.570496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848066, 16.919598, 16.603483>,  <16.257923, 17.279047, 16.434978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.848066, 16.919598, 16.603483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568304, 16.689663, 16.433594>,  <16.400446, 16.551702, 16.331659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568304, 16.689663, 16.433594>,  <16.848066, 16.919598, 16.603483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568304, 16.689663, 16.433594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669212, -0.318029, -0.671575,
		0.250972, -0.753935, 0.607120,
		-0.699406, -0.574839, -0.424726,
		16.358482, 16.517212, 16.306175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413639, 16.971468, 17.092260>,  <16.848066, 16.919598, 16.603483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413639, 16.971468, 17.092260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.586884, 16.933249, 16.733757>,  <17.690830, 16.910316, 16.518654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.586884, 16.933249, 16.733757>,  <17.413639, 16.971468, 17.092260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.586884, 16.933249, 16.733757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892178, -0.095967, 0.441371,
		-0.128185, -0.990788, 0.043685,
		0.433113, -0.095552, -0.896261,
		17.716818, 16.904583, 16.464878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.859457, 16.252401, 16.881357>,  <17.413639, 16.971468, 17.092260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.859457, 16.252401, 16.881357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999693, 16.595432, 16.730812>,  <18.083834, 16.801250, 16.640486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999693, 16.595432, 16.730812>,  <17.859457, 16.252401, 16.881357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999693, 16.595432, 16.730812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915301, -0.228677, 0.331558,
		0.198272, -0.460725, -0.865113,
		0.350589, 0.857578, -0.376362,
		18.104870, 16.852705, 16.617903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878967, 16.421171, 16.096121>,  <17.859457, 16.252401, 16.881357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878967, 16.421171, 16.096121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.242821, 16.307220, 16.217060>,  <18.461132, 16.238850, 16.289623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.242821, 16.307220, 16.217060>,  <17.878967, 16.421171, 16.096121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242821, 16.307220, 16.217060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413137, -0.544280, 0.730121,
		-0.043432, -0.789053, -0.612787,
		0.909633, -0.284876, 0.302348,
		18.515711, 16.221758, 16.307764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.879854, 15.690916, 16.192089>,  <17.878967, 16.421171, 16.096121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.879854, 15.690916, 16.192089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192320, 15.791633, 16.420609>,  <18.379799, 15.852063, 16.557720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192320, 15.791633, 16.420609>,  <17.879854, 15.690916, 16.192089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.192320, 15.791633, 16.420609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236139, -0.727928, 0.643708,
		0.577945, -0.637748, -0.509173,
		0.781165, 0.251792, 0.571299,
		18.426670, 15.867170, 16.591999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081629, 15.102575, 16.424980>,  <17.879854, 15.690916, 16.192089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081629, 15.102575, 16.424980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253725, 15.353957, 16.684191>,  <18.356983, 15.504786, 16.839718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253725, 15.353957, 16.684191>,  <18.081629, 15.102575, 16.424980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.253725, 15.353957, 16.684191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157290, -0.654693, 0.739349,
		0.888906, -0.420026, -0.182826,
		0.430240, 0.628455, 0.648027,
		18.382797, 15.542494, 16.878599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492138, 14.680429, 16.822636>,  <18.081629, 15.102575, 16.424980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.492138, 14.680429, 16.822636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445040, 15.003997, 17.053038>,  <18.416780, 15.198138, 17.191278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445040, 15.003997, 17.053038>,  <18.492138, 14.680429, 16.822636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.445040, 15.003997, 17.053038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056618, -0.584565, 0.809369,
		0.991428, 0.062689, 0.114631,
		-0.117748, 0.808921, 0.576005,
		18.409716, 15.246674, 17.225840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998602, 14.661804, 17.370588>,  <18.492138, 14.680429, 16.822636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.998602, 14.661804, 17.370588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.741737, 14.940230, 17.499039>,  <18.587618, 15.107285, 17.576109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.741737, 14.940230, 17.499039>,  <18.998602, 14.661804, 17.370588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.741737, 14.940230, 17.499039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015046, -0.407390, 0.913130,
		0.766422, 0.591208, 0.251137,
		-0.642161, 0.696064, 0.321128,
		18.549089, 15.149050, 17.595377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.295197, 14.993176, 18.014177>,  <18.998602, 14.661804, 17.370588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.295197, 14.993176, 18.014177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901342, 15.062873, 18.018702>,  <18.665030, 15.104692, 18.021416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901342, 15.062873, 18.018702>,  <19.295197, 14.993176, 18.014177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.901342, 15.062873, 18.018702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037776, -0.275822, 0.960466,
		0.170475, 0.945284, 0.278167,
		-0.984638, 0.174244, 0.011312,
		18.605951, 15.115146, 18.022095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.098150, 15.247023, 18.747694>,  <19.295197, 14.993176, 18.014177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.098150, 15.247023, 18.747694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.723919, 15.195648, 18.616121>,  <18.499380, 15.164824, 18.537178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.723919, 15.195648, 18.616121>,  <19.098150, 15.247023, 18.747694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.723919, 15.195648, 18.616121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296924, -0.218046, 0.929673,
		-0.191127, 0.967450, 0.165863,
		-0.935578, -0.128437, -0.328934,
		18.443245, 15.157117, 18.517441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725773, 15.518190, 19.431025>,  <19.098150, 15.247023, 18.747694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.725773, 15.518190, 19.431025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513334, 15.282183, 19.187775>,  <18.385872, 15.140578, 19.041824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513334, 15.282183, 19.187775>,  <18.725773, 15.518190, 19.431025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.513334, 15.282183, 19.187775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414422, -0.445124, 0.793800,
		-0.739047, 0.673604, -0.008113,
		-0.531096, -0.590018, -0.608125,
		18.354006, 15.105177, 19.005337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988811, 15.638754, 19.608213>,  <18.725773, 15.518190, 19.431025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.988811, 15.638754, 19.608213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022911, 15.286602, 19.421597>,  <18.043371, 15.075311, 19.309626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022911, 15.286602, 19.421597>,  <17.988811, 15.638754, 19.608213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.022911, 15.286602, 19.421597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506345, -0.441555, 0.740705,
		-0.858107, 0.173089, -0.483418,
		0.085248, -0.880380, -0.466544,
		18.048485, 15.022488, 19.281633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.412201, 15.492967, 19.349928>,  <17.988811, 15.638754, 19.608213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.412201, 15.492967, 19.349928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.596119, 15.141964, 19.404438>,  <17.706469, 14.931362, 19.437145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.596119, 15.141964, 19.404438>,  <17.412201, 15.492967, 19.349928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596119, 15.141964, 19.404438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678905, -0.248430, 0.690920,
		-0.572432, -0.410200, -0.709970,
		0.459794, -0.877507, 0.136277,
		17.734056, 14.878712, 19.445320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.920202, 14.873304, 19.396763>,  <17.412201, 15.492967, 19.349928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.920202, 14.873304, 19.396763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246803, 14.731278, 19.578861>,  <17.442764, 14.646063, 19.688120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246803, 14.731278, 19.578861>,  <16.920202, 14.873304, 19.396763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246803, 14.731278, 19.578861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559460, -0.291881, 0.775764,
		-0.142567, -0.888107, -0.436966,
		0.816504, -0.355064, 0.455248,
		17.491755, 14.624759, 19.715435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.686535, 14.286788, 19.551989>,  <16.920202, 14.873304, 19.396763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.686535, 14.286788, 19.551989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002827, 14.337627, 19.791519>,  <17.192602, 14.368132, 19.935238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002827, 14.337627, 19.791519>,  <16.686535, 14.286788, 19.551989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.002827, 14.337627, 19.791519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575572, -0.178780, 0.797969,
		0.208480, -0.975645, -0.068212,
		0.790730, 0.127099, 0.598826,
		17.240046, 14.375757, 19.971167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.633696, 13.803130, 19.977709>,  <16.686535, 14.286788, 19.551989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.633696, 13.803130, 19.977709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871767, 14.070170, 20.156628>,  <17.014610, 14.230394, 20.263979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871767, 14.070170, 20.156628>,  <16.633696, 13.803130, 19.977709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.871767, 14.070170, 20.156628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506172, -0.120873, 0.853920,
		0.624144, -0.734642, 0.265980,
		0.595176, 0.667600, 0.447298,
		17.050320, 14.270451, 20.290817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456425, 13.716608, 20.712725>,  <16.633696, 13.803130, 19.977709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456425, 13.716608, 20.712725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646828, 14.067777, 20.733395>,  <16.761068, 14.278479, 20.745796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646828, 14.067777, 20.733395>,  <16.456425, 13.716608, 20.712725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646828, 14.067777, 20.733395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554274, 0.253868, 0.792673,
		0.682787, -0.405959, 0.607453,
		0.476005, 0.877923, 0.051675,
		16.789629, 14.331154, 20.748898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782934, 13.139992, 21.213612>,  <16.456425, 13.716608, 20.712725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782934, 13.139992, 21.213612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649504, 12.780888, 21.328680>,  <16.569445, 12.565425, 21.397720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649504, 12.780888, 21.328680>,  <16.782934, 13.139992, 21.213612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.649504, 12.780888, 21.328680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307577, -0.392094, -0.866983,
		0.891136, -0.200724, 0.406923,
		-0.333576, -0.897760, 0.287671,
		16.549431, 12.511559, 21.414982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353441, 12.677141, 21.162745>,  <16.782934, 13.139992, 21.213612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353441, 12.677141, 21.162745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005007, 12.481977, 21.140282>,  <16.795946, 12.364880, 21.126804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005007, 12.481977, 21.140282>,  <17.353441, 12.677141, 21.162745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.005007, 12.481977, 21.140282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263475, -0.367752, -0.891818,
		0.414475, -0.791646, 0.448896,
		-0.871086, -0.487909, -0.056155,
		16.743681, 12.335605, 21.123436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.599834, 12.110186, 20.763948>,  <17.353441, 12.677141, 21.162745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.599834, 12.110186, 20.763948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.200438, 12.102139, 20.743513>,  <16.960800, 12.097310, 20.731253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.200438, 12.102139, 20.743513>,  <17.599834, 12.110186, 20.763948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200438, 12.102139, 20.743513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054814, -0.419298, -0.906192,
		-0.003189, -0.907626, 0.419768,
		-0.998492, -0.020119, -0.051088,
		16.900890, 12.096103, 20.728188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544500, 11.381733, 20.440962>,  <17.599834, 12.110186, 20.763948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544500, 11.381733, 20.440962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227251, 11.618294, 20.382725>,  <17.036901, 11.760230, 20.347782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227251, 11.618294, 20.382725>,  <17.544500, 11.381733, 20.440962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227251, 11.618294, 20.382725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054556, -0.307066, -0.950123,
		-0.606612, -0.745623, 0.275806,
		-0.793124, 0.591403, -0.145591,
		16.989313, 11.795714, 20.339046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028198, 10.939312, 20.132650>,  <17.544500, 11.381733, 20.440962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028198, 10.939312, 20.132650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872473, 11.294788, 20.035769>,  <16.779037, 11.508074, 19.977638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872473, 11.294788, 20.035769>,  <17.028198, 10.939312, 20.132650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872473, 11.294788, 20.035769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333951, -0.381242, -0.862051,
		-0.858435, -0.254724, 0.445202,
		-0.389315, 0.888690, -0.242206,
		16.755678, 11.561396, 19.963106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422680, 10.743423, 19.912796>,  <17.028198, 10.939312, 20.132650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.422680, 10.743423, 19.912796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493124, 11.096229, 19.737965>,  <16.535391, 11.307912, 19.633066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493124, 11.096229, 19.737965>,  <16.422680, 10.743423, 19.912796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.493124, 11.096229, 19.737965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269135, -0.383957, -0.883257,
		-0.946864, 0.273186, 0.169760,
		0.176113, 0.882013, -0.437079,
		16.545958, 11.360832, 19.606840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866639, 10.851432, 19.366329>,  <16.422680, 10.743423, 19.912796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.866639, 10.851432, 19.366329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155075, 11.099834, 19.243444>,  <16.328136, 11.248877, 19.169714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155075, 11.099834, 19.243444>,  <15.866639, 10.851432, 19.366329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.155075, 11.099834, 19.243444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155261, -0.287296, -0.945175,
		-0.675221, 0.729254, -0.110748,
		0.721090, 0.621007, -0.307213,
		16.371403, 11.286137, 19.151281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629889, 11.225362, 18.830917>,  <15.866639, 10.851432, 19.366329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629889, 11.225362, 18.830917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024616, 11.227028, 18.766211>,  <16.261454, 11.228027, 18.727386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024616, 11.227028, 18.766211>,  <15.629889, 11.225362, 18.830917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024616, 11.227028, 18.766211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159866, -0.129754, -0.978574,
		-0.025066, 0.991537, -0.127378,
		0.986820, 0.004165, -0.161765,
		16.320662, 11.228277, 18.717680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696350, 11.720383, 18.387480>,  <15.629889, 11.225362, 18.830917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696350, 11.720383, 18.387480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039364, 11.520115, 18.340210>,  <16.245173, 11.399954, 18.311848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039364, 11.520115, 18.340210>,  <15.696350, 11.720383, 18.387480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.039364, 11.520115, 18.340210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016643, 0.202602, -0.979120,
		0.514158, 0.841595, 0.165406,
		0.857534, -0.500669, -0.118177,
		16.296623, 11.369914, 18.304756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855467, 12.056320, 17.812267>,  <15.696350, 11.720383, 18.387480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855467, 12.056320, 17.812267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099545, 11.740193, 17.834404>,  <16.245991, 11.550517, 17.847685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099545, 11.740193, 17.834404>,  <15.855467, 12.056320, 17.812267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.099545, 11.740193, 17.834404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117622, 0.021294, -0.992830,
		0.783472, 0.612328, 0.105952,
		0.610194, -0.790317, 0.055340,
		16.282602, 11.503098, 17.851006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482725, 12.246317, 17.551464>,  <15.855467, 12.056320, 17.812267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482725, 12.246317, 17.551464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453606, 11.850192, 17.504162>,  <16.436134, 11.612517, 17.475780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453606, 11.850192, 17.504162>,  <16.482725, 12.246317, 17.551464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453606, 11.850192, 17.504162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004195, 0.118263, -0.992973,
		0.997338, -0.072782, -0.004455,
		-0.072798, -0.990312, -0.118254,
		16.431767, 11.553099, 17.468685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875643, 12.204443, 16.994913>,  <16.482725, 12.246317, 17.551464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875643, 12.204443, 16.994913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.668304, 11.863958, 17.027794>,  <16.543901, 11.659667, 17.047522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.668304, 11.863958, 17.027794>,  <16.875643, 12.204443, 16.994913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668304, 11.863958, 17.027794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148378, -0.005144, -0.988917,
		0.842201, -0.524797, -0.123635,
		-0.518344, -0.851212, 0.082201,
		16.512800, 11.608595, 17.052454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.131452, 13.215632, 25.414141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.386724, 13.456821, 25.605619>,  <13.539886, 13.601535, 25.720507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.386724, 13.456821, 25.605619>,  <13.131452, 13.215632, 25.414141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.386724, 13.456821, 25.605619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733665, -0.287832, -0.615540,
		-0.233370, 0.744027, -0.626069,
		0.638181, 0.602973, 0.478695,
		13.578177, 13.637713, 25.749228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.483098, 13.694861, 24.864323>,  <13.131452, 13.215632, 25.414141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.483098, 13.694861, 24.864323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.710155, 13.682328, 25.193394>,  <13.846389, 13.674809, 25.390837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.710155, 13.682328, 25.193394>,  <13.483098, 13.694861, 24.864323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.710155, 13.682328, 25.193394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799127, -0.219282, -0.559742,
		0.197938, 0.975158, -0.099434,
		0.567641, -0.031334, 0.822680,
		13.880447, 13.672928, 25.440197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.901239, 14.056909, 24.666374>,  <13.483098, 13.694861, 24.864323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.901239, 14.056909, 24.666374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.076138, 13.847883, 24.959152>,  <14.181078, 13.722468, 25.134819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.076138, 13.847883, 24.959152>,  <13.901239, 14.056909, 24.666374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.076138, 13.847883, 24.959152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765514, -0.210903, -0.607872,
		0.472021, 0.826104, 0.307813,
		0.437247, -0.522563, 0.731944,
		14.207313, 13.691114, 25.178736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.535701, 14.249689, 24.611130>,  <13.901239, 14.056909, 24.666374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.535701, 14.249689, 24.611130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.577909, 13.918915, 24.832052>,  <14.603233, 13.720450, 24.964605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.577909, 13.918915, 24.832052>,  <14.535701, 14.249689, 24.611130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.577909, 13.918915, 24.832052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789304, -0.268184, -0.552338,
		0.604868, 0.494219, 0.624405,
		0.105520, -0.826937, 0.552305,
		14.609565, 13.670834, 24.997744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.324153, 14.153605, 24.829607>,  <14.535701, 14.249689, 24.611130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.324153, 14.153605, 24.829607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.161368, 13.788734, 24.848873>,  <15.063698, 13.569813, 24.860434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.161368, 13.788734, 24.848873>,  <15.324153, 14.153605, 24.829607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161368, 13.788734, 24.848873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729890, -0.356437, -0.583278,
		0.549220, -0.202216, 0.810843,
		-0.406962, -0.912174, 0.048167,
		15.039280, 13.515082, 24.863323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853396, 13.666672, 24.988682>,  <15.324153, 14.153605, 24.829607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853396, 13.666672, 24.988682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.561329, 13.435375, 24.843086>,  <15.386088, 13.296597, 24.755730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.561329, 13.435375, 24.843086>,  <15.853396, 13.666672, 24.988682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561329, 13.435375, 24.843086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633660, -0.373795, -0.677312,
		0.255593, -0.725198, 0.639343,
		-0.730169, -0.578242, -0.363989,
		15.342278, 13.261903, 24.733889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.152822, 12.937678, 24.891848>,  <15.853396, 13.666672, 24.988682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.152822, 12.937678, 24.891848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.832695, 12.957513, 24.652840>,  <15.640618, 12.969414, 24.509436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.832695, 12.957513, 24.652840>,  <16.152822, 12.937678, 24.891848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.832695, 12.957513, 24.652840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519241, -0.440977, -0.732071,
		-0.299793, -0.896148, 0.327175,
		-0.800320, 0.049587, -0.597519,
		15.592599, 12.972389, 24.473583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.082468, 12.308820, 24.477802>,  <16.152822, 12.937678, 24.891848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.082468, 12.308820, 24.477802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.878555, 12.590522, 24.280157>,  <15.756208, 12.759543, 24.161570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.878555, 12.590522, 24.280157>,  <16.082468, 12.308820, 24.477802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.878555, 12.590522, 24.280157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274244, -0.411355, -0.869240,
		-0.815423, -0.578629, 0.016563,
		-0.509780, 0.704255, -0.494114,
		15.725621, 12.801799, 24.131924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635198, 11.952119, 23.927662>,  <16.082468, 12.308820, 24.477802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635198, 11.952119, 23.927662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.640088, 12.335126, 23.812416>,  <15.643023, 12.564930, 23.743269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.640088, 12.335126, 23.812416>,  <15.635198, 11.952119, 23.927662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640088, 12.335126, 23.812416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175924, -0.285703, -0.942032,
		-0.984328, -0.039170, -0.171943,
		0.012225, 0.957517, -0.288116,
		15.643756, 12.622381, 23.725981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179961, 11.931623, 23.299601>,  <15.635198, 11.952119, 23.927662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179961, 11.931623, 23.299601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.398148, 12.266813, 23.293137>,  <15.529059, 12.467928, 23.289259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.398148, 12.266813, 23.293137>,  <15.179961, 11.931623, 23.299601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398148, 12.266813, 23.293137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137910, -0.108755, -0.984456,
		-0.826708, 0.534760, -0.174888,
		0.545467, 0.837976, -0.016160,
		15.561788, 12.518207, 23.288288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021019, 12.240021, 22.677954>,  <15.179961, 11.931623, 23.299601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021019, 12.240021, 22.677954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.359825, 12.424722, 22.783291>,  <15.563108, 12.535542, 22.846493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.359825, 12.424722, 22.783291>,  <15.021019, 12.240021, 22.677954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.359825, 12.424722, 22.783291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394070, -0.212961, -0.894068,
		-0.356756, 0.861065, -0.362343,
		0.847015, 0.461752, 0.263345,
		15.613930, 12.563248, 22.862295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.063631, 12.881502, 22.255888>,  <15.021019, 12.240021, 22.677954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.063631, 12.881502, 22.255888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.425173, 12.757929, 22.374283>,  <15.642097, 12.683785, 22.445320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.425173, 12.757929, 22.374283>,  <15.063631, 12.881502, 22.255888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425173, 12.757929, 22.374283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208081, -0.287067, -0.935037,
		0.373831, 0.906727, -0.195184,
		0.903854, -0.308932, 0.295987,
		15.696329, 12.665249, 22.463079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509754, 13.060087, 21.693062>,  <15.063631, 12.881502, 22.255888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509754, 13.060087, 21.693062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.766150, 12.829061, 21.895269>,  <15.919989, 12.690445, 22.016594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.766150, 12.829061, 21.895269>,  <15.509754, 13.060087, 21.693062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766150, 12.829061, 21.895269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406762, -0.302912, -0.861852,
		0.650904, 0.758064, 0.040768,
		0.640990, -0.577567, 0.505518,
		15.958447, 12.655790, 22.046925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158827, 13.298648, 21.554708>,  <15.509754, 13.060087, 21.693062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158827, 13.298648, 21.554708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.247185, 12.933668, 21.692488>,  <16.300200, 12.714681, 21.775154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.247185, 12.933668, 21.692488>,  <16.158827, 13.298648, 21.554708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.247185, 12.933668, 21.692488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529348, -0.184460, -0.828110,
		0.819144, 0.365257, 0.442256,
		0.220894, -0.912448, 0.344447,
		16.313454, 12.659934, 21.795822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.695652, 13.844207, 21.391087>,  <16.158827, 13.298648, 21.554708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.695652, 13.844207, 21.391087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.706558, 14.215884, 21.243652>,  <16.713102, 14.438890, 21.155191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.706558, 14.215884, 21.243652>,  <16.695652, 13.844207, 21.391087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706558, 14.215884, 21.243652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068450, 0.369595, 0.926669,
		0.997282, -0.000037, 0.073681,
		0.027267, 0.929193, -0.368588,
		16.714739, 14.494642, 21.133076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.192944, 14.207932, 21.701445>,  <16.695652, 13.844207, 21.391087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.192944, 14.207932, 21.701445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.941416, 14.490670, 21.571857>,  <16.790499, 14.660314, 21.494106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.941416, 14.490670, 21.571857>,  <17.192944, 14.207932, 21.701445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.941416, 14.490670, 21.571857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043790, 0.448182, 0.892869,
		0.776318, 0.547266, -0.312778,
		-0.628819, 0.706847, -0.323966,
		16.752769, 14.702724, 21.474667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449329, 14.818588, 21.954571>,  <17.192944, 14.207932, 21.701445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449329, 14.818588, 21.954571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.067139, 14.918939, 21.892439>,  <16.837824, 14.979149, 21.855160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.067139, 14.918939, 21.892439>,  <17.449329, 14.818588, 21.954571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.067139, 14.918939, 21.892439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020405, 0.581329, 0.813412,
		0.294362, 0.774027, -0.560565,
		-0.955476, 0.250876, -0.155328,
		16.780497, 14.994202, 21.845840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402210, 15.469890, 22.257118>,  <17.449329, 14.818588, 21.954571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402210, 15.469890, 22.257118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.022434, 15.349687, 22.220776>,  <16.794567, 15.277565, 22.198971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.022434, 15.349687, 22.220776>,  <17.402210, 15.469890, 22.257118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022434, 15.349687, 22.220776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300470, 0.785947, 0.540375,
		-0.090978, 0.540355, -0.836504,
		-0.949442, -0.300507, -0.090856,
		16.737602, 15.259535, 22.193520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021093, 16.090206, 22.154371>,  <17.402210, 15.469890, 22.257118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021093, 16.090206, 22.154371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.765915, 15.815598, 22.293922>,  <16.612808, 15.650833, 22.377653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.765915, 15.815598, 22.293922>,  <17.021093, 16.090206, 22.154371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765915, 15.815598, 22.293922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435693, 0.695327, 0.571570,
		-0.634977, 0.212628, -0.742693,
		-0.637946, -0.686520, 0.348876,
		16.574532, 15.609641, 22.398584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331203, 16.391579, 22.090630>,  <17.021093, 16.090206, 22.154371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331203, 16.391579, 22.090630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.287022, 16.087479, 22.346697>,  <16.260511, 15.905019, 22.500338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.287022, 16.087479, 22.346697>,  <16.331203, 16.391579, 22.090630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.287022, 16.087479, 22.346697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422170, 0.619004, 0.662273,
		-0.899762, -0.197108, -0.389328,
		-0.110456, -0.760251, 0.640170,
		16.253885, 15.859404, 22.538748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563066, 16.363853, 22.300676>,  <16.331203, 16.391579, 22.090630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563066, 16.363853, 22.300676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.739310, 16.160707, 22.596767>,  <15.845057, 16.038820, 22.774422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.739310, 16.160707, 22.596767>,  <15.563066, 16.363853, 22.300676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739310, 16.160707, 22.596767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475717, 0.567184, 0.672306,
		-0.761287, -0.648362, 0.008305,
		0.440608, -0.507867, 0.740226,
		15.871492, 16.008347, 22.818836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051371, 16.404873, 22.884850>,  <15.563066, 16.363853, 22.300676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051371, 16.404873, 22.884850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.364271, 16.279293, 23.100077>,  <15.552011, 16.203945, 23.229214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.364271, 16.279293, 23.100077>,  <15.051371, 16.404873, 22.884850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364271, 16.279293, 23.100077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373185, 0.455435, 0.808277,
		-0.498813, -0.833076, 0.239104,
		0.782252, -0.313949, 0.538069,
		15.598947, 16.185108, 23.261497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869580, 15.991295, 23.487236>,  <15.051371, 16.404873, 22.884850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869580, 15.991295, 23.487236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.229433, 16.138565, 23.581137>,  <15.445345, 16.226927, 23.637478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.229433, 16.138565, 23.581137>,  <14.869580, 15.991295, 23.487236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.229433, 16.138565, 23.581137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350585, 0.288557, 0.890969,
		0.260283, -0.883849, 0.388669,
		0.899635, 0.368165, 0.234757,
		15.499323, 16.249018, 23.651562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943545, 15.836861, 24.211395>,  <14.869580, 15.991295, 23.487236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943545, 15.836861, 24.211395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.206068, 16.122623, 24.114332>,  <15.363582, 16.294081, 24.056095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.206068, 16.122623, 24.114332>,  <14.943545, 15.836861, 24.211395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.206068, 16.122623, 24.114332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251400, 0.510303, 0.822429,
		0.711378, -0.478762, 0.514517,
		0.656307, 0.714408, -0.242658,
		15.402961, 16.336946, 24.041534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420042, 15.919239, 24.840824>,  <14.943545, 15.836861, 24.211395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420042, 15.919239, 24.840824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.433019, 16.259214, 24.630470>,  <15.440804, 16.463200, 24.504257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.433019, 16.259214, 24.630470>,  <15.420042, 15.919239, 24.840824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433019, 16.259214, 24.630470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439247, 0.484750, 0.756359,
		0.897780, 0.206455, 0.389059,
		0.032442, 0.849937, -0.525884,
		15.442752, 16.514196, 24.472706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732693, 16.371201, 25.301958>,  <15.420042, 15.919239, 24.840824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732693, 16.371201, 25.301958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.560367, 16.591961, 25.016357>,  <15.456971, 16.724417, 24.844997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.560367, 16.591961, 25.016357>,  <15.732693, 16.371201, 25.301958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.560367, 16.591961, 25.016357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319785, 0.646489, 0.692668,
		0.843881, 0.526740, -0.102028,
		-0.430816, 0.551902, -0.714004,
		15.431122, 16.757532, 24.802156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.844604, 17.068476, 25.442724>,  <15.732693, 16.371201, 25.301958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.844604, 17.068476, 25.442724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.513411, 17.013369, 25.225298>,  <15.314694, 16.980305, 25.094841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.513411, 17.013369, 25.225298>,  <15.844604, 17.068476, 25.442724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.513411, 17.013369, 25.225298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534668, 0.486173, 0.691206,
		0.169041, 0.862934, -0.476203,
		-0.827982, -0.137768, -0.543567,
		15.265016, 16.972038, 25.062227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459386, 17.802204, 25.449480>,  <15.844604, 17.068476, 25.442724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459386, 17.802204, 25.449480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.170074, 17.555344, 25.325552>,  <14.996486, 17.407228, 25.251194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.170074, 17.555344, 25.325552>,  <15.459386, 17.802204, 25.449480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170074, 17.555344, 25.325552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652595, 0.464168, 0.598889,
		-0.225794, 0.635354, -0.738473,
		-0.723282, -0.617149, -0.309822,
		14.953089, 17.370199, 25.232605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.302570, 13.767289, 24.552839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.680506, 13.650980, 24.613148>,  <8.907267, 13.581194, 24.649332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.680506, 13.650980, 24.613148>,  <8.302570, 13.767289, 24.552839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.680506, 13.650980, 24.613148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199107, 0.144389, -0.969282,
		0.260072, 0.945834, 0.194319,
		0.944838, -0.290774, 0.150771,
		8.963957, 13.563747, 24.658379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.725769, 14.292919, 24.317230>,  <8.302570, 13.767289, 24.552839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.725769, 14.292919, 24.317230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.965614, 13.972810, 24.319254>,  <9.109522, 13.780745, 24.320469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.965614, 13.972810, 24.319254>,  <8.725769, 14.292919, 24.317230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.965614, 13.972810, 24.319254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323948, 0.236930, -0.915927,
		0.731793, 0.550842, 0.401314,
		0.599614, -0.800273, 0.005060,
		9.145498, 13.732728, 24.320772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.423606, 14.496850, 24.090080>,  <8.725769, 14.292919, 24.317230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.423606, 14.496850, 24.090080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.398783, 14.101581, 24.033991>,  <9.383888, 13.864419, 24.000338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.398783, 14.101581, 24.033991>,  <9.423606, 14.496850, 24.090080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.398783, 14.101581, 24.033991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253923, 0.120238, -0.959722,
		0.965231, -0.095165, 0.243459,
		-0.062059, -0.988173, -0.140222,
		9.380165, 13.805129, 23.991924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.062192, 14.287211, 23.778406>,  <9.423606, 14.496850, 24.090080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.062192, 14.287211, 23.778406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.783143, 14.016802, 23.683481>,  <9.615714, 13.854556, 23.626526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.783143, 14.016802, 23.683481>,  <10.062192, 14.287211, 23.778406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.783143, 14.016802, 23.683481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239958, 0.091636, -0.966448,
		0.675089, -0.731160, 0.098290,
		-0.697621, -0.676024, -0.237310,
		9.573856, 13.813994, 23.612288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.309370, 13.989723, 23.096329>,  <10.062192, 14.287211, 23.778406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.309370, 13.989723, 23.096329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.934013, 13.858345, 23.139309>,  <9.708799, 13.779518, 23.165098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.934013, 13.858345, 23.139309>,  <10.309370, 13.989723, 23.096329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.934013, 13.858345, 23.139309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136573, 0.066848, -0.988372,
		0.317442, -0.942155, -0.107586,
		-0.938392, -0.328444, 0.107452,
		9.652496, 13.759811, 23.171545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.290976, 13.428410, 22.612991>,  <10.309370, 13.989723, 23.096329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.290976, 13.428410, 22.612991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.913869, 13.553747, 22.658609>,  <9.687605, 13.628949, 22.685980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.913869, 13.553747, 22.658609>,  <10.290976, 13.428410, 22.612991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.913869, 13.553747, 22.658609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123871, -0.011555, -0.992231,
		-0.309592, -0.949569, 0.049708,
		-0.942766, 0.313345, 0.114046,
		9.631039, 13.647750, 22.692823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.831525, 12.926493, 22.354425>,  <10.290976, 13.428410, 22.612991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.831525, 12.926493, 22.354425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.656824, 13.286265, 22.347858>,  <9.552004, 13.502130, 22.343918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.656824, 13.286265, 22.347858>,  <9.831525, 12.926493, 22.354425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.656824, 13.286265, 22.347858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130184, -0.081254, -0.988155,
		-0.890113, -0.429440, 0.152579,
		-0.436751, 0.899432, -0.016419,
		9.525799, 13.556095, 22.342934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.482569, 12.795579, 21.747416>,  <9.831525, 12.926493, 22.354425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.482569, 12.795579, 21.747416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.411925, 13.180582, 21.829767>,  <9.369539, 13.411584, 21.879179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.411925, 13.180582, 21.829767>,  <9.482569, 12.795579, 21.747416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.411925, 13.180582, 21.829767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232529, 0.162449, -0.958927,
		-0.956420, -0.217228, 0.195121,
		-0.176608, 0.962509, 0.205881,
		9.358943, 13.469335, 21.891531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.847113, 12.917850, 21.363474>,  <9.482569, 12.795579, 21.747416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.847113, 12.917850, 21.363474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.047009, 13.260633, 21.413895>,  <9.166946, 13.466302, 21.444147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.047009, 13.260633, 21.413895>,  <8.847113, 12.917850, 21.363474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.047009, 13.260633, 21.413895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233818, 0.006658, -0.972257,
		-0.834020, 0.515348, -0.197045,
		0.499739, 0.856955, 0.126051,
		9.196930, 13.517719, 21.451710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.621771, 13.379702, 20.832537>,  <8.847113, 12.917850, 21.363474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.621771, 13.379702, 20.832537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.964609, 13.548203, 20.951149>,  <9.170312, 13.649304, 21.022316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.964609, 13.548203, 20.951149>,  <8.621771, 13.379702, 20.832537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.964609, 13.548203, 20.951149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285870, 0.089933, -0.954039,
		-0.428561, 0.902473, -0.043342,
		0.857096, 0.421254, 0.296532,
		9.221738, 13.674580, 21.040108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.686749, 13.860682, 20.315615>,  <8.621771, 13.379702, 20.832537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.686749, 13.860682, 20.315615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.039603, 13.813236, 20.497942>,  <9.251315, 13.784769, 20.607338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.039603, 13.813236, 20.497942>,  <8.686749, 13.860682, 20.315615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.039603, 13.813236, 20.497942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458145, -0.008453, -0.888837,
		0.109280, 0.992905, 0.046885,
		0.882134, -0.118612, 0.455818,
		9.304243, 13.777653, 20.634687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.058736, 14.368649, 20.011856>,  <8.686749, 13.860682, 20.315615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.058736, 14.368649, 20.011856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.313577, 14.111845, 20.182467>,  <9.466481, 13.957763, 20.284834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.313577, 14.111845, 20.182467>,  <9.058736, 14.368649, 20.011856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.313577, 14.111845, 20.182467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471414, -0.113248, -0.874610,
		0.609812, 0.758286, 0.230502,
		0.637101, -0.642010, 0.426527,
		9.504707, 13.919242, 20.310425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.735455, 14.671498, 19.924250>,  <9.058736, 14.368649, 20.011856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.735455, 14.671498, 19.924250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.800344, 14.280065, 19.974934>,  <9.839277, 14.045204, 20.005344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.800344, 14.280065, 19.974934>,  <9.735455, 14.671498, 19.924250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.800344, 14.280065, 19.974934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482510, -0.033346, -0.875256,
		0.860737, 0.203126, 0.466767,
		0.162222, -0.978585, 0.126712,
		9.849010, 13.986489, 20.012947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.499078, 14.566947, 19.831108>,  <9.735455, 14.671498, 19.924250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.499078, 14.566947, 19.831108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.343266, 14.204268, 19.766409>,  <10.249778, 13.986660, 19.727591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.343266, 14.204268, 19.766409>,  <10.499078, 14.566947, 19.831108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.343266, 14.204268, 19.766409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538357, -0.081661, -0.838751,
		0.747286, -0.413797, 0.519938,
		-0.389531, -0.906699, -0.161747,
		10.226406, 13.932258, 19.717884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.146990, 14.964976, 19.907925>,  <10.499078, 14.566947, 19.831108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.146990, 14.964976, 19.907925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.996947, 15.240624, 19.659922>,  <10.906921, 15.406013, 19.511120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.996947, 15.240624, 19.659922>,  <11.146990, 14.964976, 19.907925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.996947, 15.240624, 19.659922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540332, 0.380927, 0.750290,
		0.753217, 0.616449, 0.229465,
		-0.375106, 0.689119, -0.620008,
		10.884416, 15.447360, 19.473919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.288947, 15.606818, 20.330042>,  <11.146990, 14.964976, 19.907925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.288947, 15.606818, 20.330042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.003789, 15.690015, 20.062155>,  <10.832694, 15.739933, 19.901423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.003789, 15.690015, 20.062155>,  <11.288947, 15.606818, 20.330042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.003789, 15.690015, 20.062155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489548, 0.536193, 0.687634,
		0.502120, 0.818069, -0.280427,
		-0.712894, 0.207992, -0.669717,
		10.789921, 15.752413, 19.861240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.272100, 16.269836, 20.386898>,  <11.288947, 15.606818, 20.330042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.272100, 16.269836, 20.386898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.925946, 16.178278, 20.208588>,  <10.718254, 16.123343, 20.101603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.925946, 16.178278, 20.208588>,  <11.272100, 16.269836, 20.386898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.925946, 16.178278, 20.208588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497445, 0.285044, 0.819328,
		-0.060475, 0.930783, -0.360536,
		-0.865385, -0.228896, -0.445775,
		10.666330, 16.109610, 20.074856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.894994, 16.807209, 20.530718>,  <11.272100, 16.269836, 20.386898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.894994, 16.807209, 20.530718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.634272, 16.516537, 20.443918>,  <10.477839, 16.342134, 20.391838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.634272, 16.516537, 20.443918>,  <10.894994, 16.807209, 20.530718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.634272, 16.516537, 20.443918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514656, 0.213675, 0.830345,
		-0.557027, 0.652902, -0.513264,
		-0.651806, -0.726678, -0.216997,
		10.438730, 16.298532, 20.378819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.281600, 17.083054, 20.717098>,  <10.894994, 16.807209, 20.530718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.281600, 17.083054, 20.717098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.172525, 16.698532, 20.701431>,  <10.107080, 16.467819, 20.692032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.172525, 16.698532, 20.701431>,  <10.281600, 17.083054, 20.717098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.172525, 16.698532, 20.701431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618628, 0.144014, 0.772373,
		-0.736846, 0.234845, -0.633961,
		-0.272686, -0.961306, -0.039166,
		10.090719, 16.410141, 20.689682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.552120, 17.164799, 20.984398>,  <10.281600, 17.083054, 20.717098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.552120, 17.164799, 20.984398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.674060, 16.786953, 21.033018>,  <9.747224, 16.560246, 21.062189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.674060, 16.786953, 21.033018>,  <9.552120, 17.164799, 20.984398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.674060, 16.786953, 21.033018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559472, -0.074332, 0.825509,
		-0.770751, -0.319659, -0.551145,
		0.304850, -0.944613, 0.121549,
		9.765514, 16.503569, 21.069483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.957148, 16.776655, 21.139730>,  <9.552120, 17.164799, 20.984398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.957148, 16.776655, 21.139730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.258469, 16.555685, 21.282480>,  <9.439261, 16.423103, 21.368130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.258469, 16.555685, 21.282480>,  <8.957148, 16.776655, 21.139730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.258469, 16.555685, 21.282480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463328, -0.060660, 0.884108,
		-0.466757, -0.831351, -0.301650,
		0.753302, -0.552427, 0.356875,
		9.484460, 16.389957, 21.389544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.654860, 16.343231, 21.542303>,  <8.957148, 16.776655, 21.139730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.654860, 16.343231, 21.542303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.037002, 16.325720, 21.659185>,  <9.266287, 16.315212, 21.729315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.037002, 16.325720, 21.659185>,  <8.654860, 16.343231, 21.542303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.037002, 16.325720, 21.659185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294988, -0.085095, 0.951704,
		-0.016797, -0.995411, -0.094209,
		0.955354, -0.043776, 0.292205,
		9.323607, 16.312586, 21.746847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.689320, 15.762280, 21.995960>,  <8.654860, 16.343231, 21.542303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.689320, 15.762280, 21.995960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.990006, 16.015398, 22.070250>,  <9.170419, 16.167269, 22.114824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.990006, 16.015398, 22.070250>,  <8.689320, 15.762280, 21.995960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.990006, 16.015398, 22.070250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205013, -0.043441, 0.977795,
		0.626812, -0.773100, 0.097076,
		0.751716, 0.632795, 0.185725,
		9.215521, 16.205236, 22.125967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.956468, 15.606199, 22.614819>,  <8.689320, 15.762280, 21.995960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.956468, 15.606199, 22.614819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.124682, 15.968726, 22.598150>,  <9.225611, 16.186243, 22.588148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.124682, 15.968726, 22.598150>,  <8.956468, 15.606199, 22.614819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.124682, 15.968726, 22.598150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063504, 0.075222, 0.995143,
		0.905051, -0.415847, 0.089189,
		0.420536, 0.906318, -0.041672,
		9.250843, 16.240622, 22.585649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.521794, 15.580407, 23.046009>,  <8.956468, 15.606199, 22.614819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.521794, 15.580407, 23.046009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.410316, 15.960967, 22.993603>,  <9.343428, 16.189302, 22.962158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.410316, 15.960967, 22.993603>,  <9.521794, 15.580407, 23.046009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.410316, 15.960967, 22.993603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027312, 0.144217, 0.989169,
		0.959991, 0.272101, -0.066177,
		-0.278697, 0.951400, -0.131016,
		9.326706, 16.246387, 22.954298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.083860, 15.968712, 23.389351>,  <9.521794, 15.580407, 23.046009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.083860, 15.968712, 23.389351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.762273, 16.204685, 23.359390>,  <9.569320, 16.346270, 23.341413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.762273, 16.204685, 23.359390>,  <10.083860, 15.968712, 23.389351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.762273, 16.204685, 23.359390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064835, 0.212162, 0.975081,
		0.591125, 0.779080, -0.208820,
		-0.803970, 0.589934, -0.074902,
		9.521082, 16.381666, 23.336920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.346231, 16.636175, 23.566174>,  <10.083860, 15.968712, 23.389351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.346231, 16.636175, 23.566174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.949924, 16.659037, 23.615356>,  <9.712141, 16.672754, 23.644867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.949924, 16.659037, 23.615356>,  <10.346231, 16.636175, 23.566174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.949924, 16.659037, 23.615356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131192, 0.174925, 0.975802,
		0.034263, 0.982922, -0.180808,
		-0.990765, 0.057155, 0.122958,
		9.652695, 16.676184, 23.652245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.234025, 17.246752, 24.007906>,  <10.346231, 16.636175, 23.566174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.234025, 17.246752, 24.007906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.926498, 16.991678, 24.027018>,  <9.741982, 16.838634, 24.038485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.926498, 16.991678, 24.027018>,  <10.234025, 17.246752, 24.007906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.926498, 16.991678, 24.027018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101561, -0.047992, 0.993671,
		-0.631353, 0.768803, 0.101661,
		-0.768816, -0.637682, 0.047781,
		9.695853, 16.800373, 24.041351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.571681, 17.993753, 23.863539>,  <10.234025, 17.246752, 24.007906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.571681, 17.993753, 23.863539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.807759, 18.244179, 24.067389>,  <10.949406, 18.394434, 24.189697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.807759, 18.244179, 24.067389>,  <10.571681, 17.993753, 23.863539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.807759, 18.244179, 24.067389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602711, 0.078239, -0.794115,
		-0.537038, 0.775838, -0.331158,
		0.590195, 0.626062, 0.509623,
		10.984818, 18.431997, 24.220276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.675457, 18.589703, 23.427473>,  <10.571681, 17.993753, 23.863539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.675457, 18.589703, 23.427473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.984298, 18.611935, 23.680698>,  <11.169602, 18.625273, 23.832634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.984298, 18.611935, 23.680698>,  <10.675457, 18.589703, 23.427473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.984298, 18.611935, 23.680698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633953, 0.002052, -0.773369,
		-0.044282, 0.998452, -0.033650,
		0.772103, 0.055579, 0.633063,
		11.215929, 18.628609, 23.870617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.969074, 19.136238, 23.249548>,  <10.675457, 18.589703, 23.427473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.969074, 19.136238, 23.249548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.223803, 18.878948, 23.419594>,  <11.376639, 18.724573, 23.521622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.223803, 18.878948, 23.419594>,  <10.969074, 19.136238, 23.249548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.223803, 18.878948, 23.419594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551411, -0.005420, -0.834216,
		0.538893, 0.765657, 0.351231,
		0.636820, -0.643226, 0.425113,
		11.414848, 18.685980, 23.547127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.579364, 19.432600, 23.114323>,  <10.969074, 19.136238, 23.249548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.579364, 19.432600, 23.114323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.655890, 19.047689, 23.191702>,  <11.701805, 18.816742, 23.238129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.655890, 19.047689, 23.191702>,  <11.579364, 19.432600, 23.114323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.655890, 19.047689, 23.191702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663679, -0.018381, -0.747791,
		0.723138, 0.271449, 0.635127,
		0.191313, -0.962277, 0.193447,
		11.713284, 18.759007, 23.249737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.248971, 19.432917, 23.052586>,  <11.579364, 19.432600, 23.114323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.248971, 19.432917, 23.052586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.178193, 19.039236, 23.050142>,  <12.135726, 18.803028, 23.048676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.178193, 19.039236, 23.050142>,  <12.248971, 19.432917, 23.052586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.178193, 19.039236, 23.050142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714438, -0.124173, -0.688593,
		0.676956, -0.126207, 0.725123,
		-0.176946, -0.984202, -0.006108,
		12.125110, 18.743975, 23.048309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.910249, 19.150145, 23.134184>,  <12.248971, 19.432917, 23.052586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.910249, 19.150145, 23.134184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.660096, 18.886997, 22.966324>,  <12.510005, 18.729109, 22.865608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.660096, 18.886997, 22.966324>,  <12.910249, 19.150145, 23.134184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.660096, 18.886997, 22.966324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668865, -0.174954, -0.722503,
		0.401894, -0.732529, 0.549439,
		-0.625381, -0.657870, -0.419650,
		12.472482, 18.689636, 22.840429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.359068, 18.565737, 22.968554>,  <12.910249, 19.150145, 23.134184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.359068, 18.565737, 22.968554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.029874, 18.556997, 22.741497>,  <12.832357, 18.551754, 22.605263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.029874, 18.556997, 22.741497>,  <13.359068, 18.565737, 22.968554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.029874, 18.556997, 22.741497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539259, -0.344200, -0.768587,
		-0.178590, -0.938642, 0.295053,
		-0.822985, -0.021848, -0.567642,
		12.782978, 18.550444, 22.571205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.510042, 17.991203, 22.554565>,  <13.359068, 18.565737, 22.968554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.510042, 17.991203, 22.554565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.216352, 18.172699, 22.352562>,  <13.040137, 18.281597, 22.231359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.216352, 18.172699, 22.352562>,  <13.510042, 17.991203, 22.554565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.216352, 18.172699, 22.352562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445854, -0.238701, -0.862691,
		-0.511984, -0.858569, -0.027041,
		-0.734225, 0.453741, -0.505008,
		12.996084, 18.308821, 22.201059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385681, 17.532639, 21.982285>,  <13.510042, 17.991203, 22.554565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385681, 17.532639, 21.982285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.243404, 17.893410, 21.884296>,  <13.158038, 18.109873, 21.825504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.243404, 17.893410, 21.884296>,  <13.385681, 17.532639, 21.982285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.243404, 17.893410, 21.884296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514351, -0.029937, -0.857057,
		-0.780337, -0.430849, -0.453259,
		-0.355693, 0.901927, -0.244969,
		13.136697, 18.163988, 21.810806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.123965, 17.504969, 21.230917>,  <13.385681, 17.532639, 21.982285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.123965, 17.504969, 21.230917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.208459, 17.889685, 21.300591>,  <13.259155, 18.120514, 21.342394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.208459, 17.889685, 21.300591>,  <13.123965, 17.504969, 21.230917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.208459, 17.889685, 21.300591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411357, 0.074180, -0.908450,
		-0.886660, 0.263547, -0.379970,
		0.211233, 0.961790, 0.174185,
		13.271829, 18.178223, 21.352846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.988966, 17.756063, 20.620623>,  <13.123965, 17.504969, 21.230917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.988966, 17.756063, 20.620623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.240071, 17.996029, 20.819023>,  <13.390735, 18.140007, 20.938065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.240071, 17.996029, 20.819023>,  <12.988966, 17.756063, 20.620623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.240071, 17.996029, 20.819023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525594, 0.143333, -0.838574,
		-0.574165, 0.787122, -0.225331,
		0.627762, 0.599913, 0.496003,
		13.428400, 18.176003, 20.967825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.971135, 18.377333, 20.242662>,  <12.988966, 17.756063, 20.620623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.971135, 18.377333, 20.242662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.303872, 18.335787, 20.460745>,  <13.503514, 18.310860, 20.591595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.303872, 18.335787, 20.460745>,  <12.971135, 18.377333, 20.242662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.303872, 18.335787, 20.460745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554628, 0.192125, -0.809614,
		-0.020657, 0.975859, 0.217424,
		0.831842, -0.103865, 0.545208,
		13.553425, 18.304626, 20.624308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.418063, 18.798410, 19.940296>,  <12.971135, 18.377333, 20.242662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.418063, 18.798410, 19.940296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.677849, 18.596193, 20.167496>,  <13.833720, 18.474863, 20.303816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.677849, 18.596193, 20.167496>,  <13.418063, 18.798410, 19.940296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.677849, 18.596193, 20.167496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630092, -0.060346, -0.774172,
		0.425654, 0.860688, 0.279347,
		0.649463, -0.505544, 0.567999,
		13.872688, 18.444530, 20.337896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.189933, 19.103678, 19.870464>,  <13.418063, 18.798410, 19.940296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.189933, 19.103678, 19.870464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.189226, 18.721443, 19.988344>,  <14.188803, 18.492102, 20.059072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.189226, 18.721443, 19.988344>,  <14.189933, 19.103678, 19.870464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.189226, 18.721443, 19.988344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622888, -0.231599, -0.747243,
		0.782309, 0.182247, 0.595633,
		-0.001766, -0.955588, 0.294701,
		14.188697, 18.434767, 20.076756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<12.683619, 20.600500, 6.299489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.502625, 20.789913, 6.601754>,  <12.394029, 20.903561, 6.783113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.502625, 20.789913, 6.601754>,  <12.683619, 20.600500, 6.299489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.502625, 20.789913, 6.601754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251338, -0.745303, 0.617538,
		0.855620, 0.469353, 0.218223,
		-0.452485, 0.473530, 0.755663,
		12.366879, 20.931973, 6.828453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.103020, 20.714090, 6.983603>,  <12.683619, 20.600500, 6.299489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.103020, 20.714090, 6.983603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.713322, 20.649048, 7.046094>,  <12.479503, 20.610023, 7.083589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.713322, 20.649048, 7.046094>,  <13.103020, 20.714090, 6.983603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.713322, 20.649048, 7.046094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224317, -0.769562, 0.597876,
		0.023008, 0.617522, 0.786217,
		-0.974245, -0.162605, 0.156227,
		12.421048, 20.600266, 7.092962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.992326, 20.804201, 7.681601>,  <13.103020, 20.714090, 6.983603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.992326, 20.804201, 7.681601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.761322, 20.513386, 7.533064>,  <12.622720, 20.338896, 7.443942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.761322, 20.513386, 7.533064>,  <12.992326, 20.804201, 7.681601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.761322, 20.513386, 7.533064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505489, -0.675629, 0.536662,
		-0.641064, 0.122218, 0.757694,
		-0.577510, -0.727041, -0.371341,
		12.588069, 20.295273, 7.421661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.149154, 20.260029, 8.038309>,  <12.992326, 20.804201, 7.681601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.149154, 20.260029, 8.038309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.911603, 20.064037, 7.783051>,  <12.769073, 19.946442, 7.629897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.911603, 20.064037, 7.783051>,  <13.149154, 20.260029, 8.038309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911603, 20.064037, 7.783051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349289, -0.871536, 0.344125,
		-0.724781, -0.018530, 0.688730,
		-0.593876, -0.489981, -0.638145,
		12.733440, 19.917044, 7.591608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.661772, 19.705248, 8.251641>,  <13.149154, 20.260029, 8.038309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.661772, 19.705248, 8.251641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.881905, 19.607740, 7.932214>,  <13.013985, 19.549236, 7.740557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.881905, 19.607740, 7.932214>,  <12.661772, 19.705248, 8.251641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.881905, 19.607740, 7.932214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448490, -0.720434, 0.528991,
		-0.704268, -0.649270, -0.287149,
		0.550330, -0.243769, -0.798570,
		13.047004, 19.534611, 7.692643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541553, 20.280252, 8.774217>,  <12.661772, 19.705248, 8.251641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.541553, 20.280252, 8.774217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.257601, 20.031281, 8.642369>,  <12.087229, 19.881897, 8.563261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.257601, 20.031281, 8.642369>,  <12.541553, 20.280252, 8.774217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.257601, 20.031281, 8.642369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553037, 0.202797, 0.808099,
		-0.436139, 0.755946, -0.488189,
		-0.709882, -0.622430, -0.329618,
		12.044636, 19.844551, 8.543484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927366, 20.708282, 8.601571>,  <12.541553, 20.280252, 8.774217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927366, 20.708282, 8.601571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.853226, 20.335133, 8.725111>,  <11.808742, 20.111242, 8.799234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.853226, 20.335133, 8.725111>,  <11.927366, 20.708282, 8.601571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.853226, 20.335133, 8.725111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570740, 0.358048, 0.738957,
		-0.799937, -0.039305, -0.598795,
		-0.185353, -0.932875, 0.308848,
		11.797620, 20.055269, 8.817765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.237170, 20.430656, 8.652012>,  <11.927366, 20.708282, 8.601571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.237170, 20.430656, 8.652012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.433078, 20.236025, 8.941389>,  <11.550622, 20.119246, 9.115015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.433078, 20.236025, 8.941389>,  <11.237170, 20.430656, 8.652012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.433078, 20.236025, 8.941389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694756, 0.283491, 0.661019,
		-0.526727, -0.826362, -0.199209,
		0.489768, -0.486578, 0.723443,
		11.580009, 20.090052, 9.158422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.795493, 19.848501, 8.992867>,  <11.237170, 20.430656, 8.652012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.795493, 19.848501, 8.992867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.070610, 19.945223, 9.266646>,  <11.235681, 20.003256, 9.430914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.070610, 19.945223, 9.266646>,  <10.795493, 19.848501, 8.992867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.070610, 19.945223, 9.266646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723153, 0.146190, 0.675039,
		0.063167, -0.959250, 0.275409,
		0.687793, 0.241803, 0.684450,
		11.276948, 20.017765, 9.471981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.667861, 19.410494, 9.573968>,  <10.795493, 19.848501, 8.992867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.667861, 19.410494, 9.573968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.836301, 19.760612, 9.669076>,  <10.937365, 19.970684, 9.726141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.836301, 19.760612, 9.669076>,  <10.667861, 19.410494, 9.573968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.836301, 19.760612, 9.669076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564121, 0.047472, 0.824326,
		0.710241, -0.481254, 0.513763,
		0.421100, 0.875294, 0.237769,
		10.962631, 20.023201, 9.740407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.997238, 19.427101, 10.252648>,  <10.667861, 19.410494, 9.573968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.997238, 19.427101, 10.252648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.892218, 19.803568, 10.167538>,  <10.829206, 20.029448, 10.116471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.892218, 19.803568, 10.167538>,  <10.997238, 19.427101, 10.252648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.892218, 19.803568, 10.167538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667851, -0.018087, 0.744075,
		0.696450, 0.337461, 0.633307,
		-0.262551, 0.941165, -0.212777,
		10.813453, 20.085918, 10.103704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.135314, 19.831791, 10.819373>,  <10.997238, 19.427101, 10.252648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.135314, 19.831791, 10.819373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.850048, 20.036974, 10.628263>,  <10.678888, 20.160084, 10.513597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.850048, 20.036974, 10.628263>,  <11.135314, 19.831791, 10.819373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.850048, 20.036974, 10.628263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602506, -0.100170, 0.791803,
		0.358304, 0.852549, 0.380499,
		-0.713165, 0.512959, -0.477775,
		10.636099, 20.190861, 10.484931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873158, 20.134190, 11.395103>,  <11.135314, 19.831791, 10.819373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873158, 20.134190, 11.395103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.611708, 20.166842, 11.094141>,  <10.454838, 20.186432, 10.913564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.611708, 20.166842, 11.094141>,  <10.873158, 20.134190, 11.395103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.611708, 20.166842, 11.094141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749858, -0.204386, 0.629237,
		-0.102416, 0.975481, 0.194802,
		-0.653624, 0.081629, -0.752405,
		10.415621, 20.191330, 10.868420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.352660, 20.539782, 11.724508>,  <10.873158, 20.134190, 11.395103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.352660, 20.539782, 11.724508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.167706, 20.396790, 11.399940>,  <10.056733, 20.310993, 11.205198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.167706, 20.396790, 11.399940>,  <10.352660, 20.539782, 11.724508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.167706, 20.396790, 11.399940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804128, -0.216523, 0.553621,
		-0.373601, 0.908474, -0.187344,
		-0.462386, -0.357481, -0.811422,
		10.028990, 20.289545, 11.156513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.662434, 20.873413, 11.689819>,  <10.352660, 20.539782, 11.724508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.662434, 20.873413, 11.689819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.631908, 20.531767, 11.484037>,  <9.613593, 20.326780, 11.360568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.631908, 20.531767, 11.484037>,  <9.662434, 20.873413, 11.689819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.631908, 20.531767, 11.484037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824347, -0.236211, 0.514448,
		-0.560918, 0.463350, -0.686060,
		-0.076314, -0.854114, -0.514456,
		9.609015, 20.275532, 11.329700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.915570, 20.811163, 11.627407>,  <9.662434, 20.873413, 11.689819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.915570, 20.811163, 11.627407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.048537, 20.441429, 11.552465>,  <9.128317, 20.219589, 11.507501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.048537, 20.441429, 11.552465>,  <8.915570, 20.811163, 11.627407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.048537, 20.441429, 11.552465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821851, -0.381347, 0.423243,
		-0.462666, 0.013285, -0.886433,
		0.332416, -0.924337, -0.187355,
		9.148262, 20.164127, 11.496260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.368706, 20.421528, 11.374744>,  <8.915570, 20.811163, 11.627407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.368706, 20.421528, 11.374744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.618600, 20.126545, 11.477403>,  <8.768537, 19.949556, 11.538998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.618600, 20.126545, 11.477403>,  <8.368706, 20.421528, 11.374744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.618600, 20.126545, 11.477403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779831, -0.572582, 0.253010,
		-0.039633, -0.358203, -0.932802,
		0.624734, -0.737455, 0.256645,
		8.806021, 19.905308, 11.554396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.215521, 19.802288, 10.976233>,  <8.368706, 20.421528, 11.374744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.215521, 19.802288, 10.976233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.392847, 19.680285, 11.313384>,  <8.499243, 19.607082, 11.515675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.392847, 19.680285, 11.313384>,  <8.215521, 19.802288, 10.976233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.392847, 19.680285, 11.313384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819504, -0.518882, 0.243256,
		0.363159, -0.798581, -0.479983,
		0.443314, -0.305007, 0.842877,
		8.525842, 19.588781, 11.566247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.061854, 19.129810, 11.032969>,  <8.215521, 19.802288, 10.976233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.061854, 19.129810, 11.032969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.170948, 19.226139, 11.405553>,  <8.236404, 19.283936, 11.629104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.170948, 19.226139, 11.405553>,  <8.061854, 19.129810, 11.032969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.170948, 19.226139, 11.405553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700267, -0.614205, 0.363837,
		0.659728, -0.751503, 0.001124,
		0.272734, 0.240821, 0.931462,
		8.252769, 19.298386, 11.684992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.193050, 18.486984, 11.339525>,  <8.061854, 19.129810, 11.032969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.193050, 18.486984, 11.339525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.141281, 18.716413, 11.663072>,  <8.110220, 18.854071, 11.857200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.141281, 18.716413, 11.663072>,  <8.193050, 18.486984, 11.339525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.141281, 18.716413, 11.663072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700821, -0.629995, 0.334598,
		0.701498, -0.523566, 0.483507,
		-0.129422, 0.573572, 0.808867,
		8.102454, 18.888485, 11.905731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.393929, 18.027199, 11.944063>,  <8.193050, 18.486984, 11.339525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.393929, 18.027199, 11.944063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.151189, 18.309370, 12.090544>,  <8.005545, 18.478672, 12.178432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.151189, 18.309370, 12.090544>,  <8.393929, 18.027199, 11.944063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.151189, 18.309370, 12.090544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564046, -0.706836, 0.426891,
		0.559985, 0.052505, 0.826837,
		-0.606852, 0.705426, 0.366202,
		7.969133, 18.520998, 12.200404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.457435, 17.894114, 12.634335>,  <8.393929, 18.027199, 11.944063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.457435, 17.894114, 12.634335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.118955, 18.093275, 12.558400>,  <7.915866, 18.212772, 12.512839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.118955, 18.093275, 12.558400>,  <8.457435, 17.894114, 12.634335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.118955, 18.093275, 12.558400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514546, -0.670892, 0.533990,
		0.138516, 0.549542, 0.823904,
		-0.846200, 0.497903, -0.189835,
		7.865095, 18.242645, 12.501450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.039067, 17.934187, 13.320580>,  <8.457435, 17.894114, 12.634335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.039067, 17.934187, 13.320580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.775576, 18.040951, 13.039202>,  <7.617481, 18.105009, 12.870375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.775576, 18.040951, 13.039202>,  <8.039067, 17.934187, 13.320580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.775576, 18.040951, 13.039202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749356, -0.316493, 0.581634,
		-0.067393, 0.910270, 0.408492,
		-0.658729, 0.266908, -0.703446,
		7.577958, 18.121023, 12.828168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.529373, 18.174210, 13.691391>,  <8.039067, 17.934187, 13.320580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.529373, 18.174210, 13.691391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.320026, 18.126127, 13.353956>,  <7.194418, 18.097279, 13.151496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.320026, 18.126127, 13.353956>,  <7.529373, 18.174210, 13.691391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.320026, 18.126127, 13.353956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745791, -0.414248, 0.521722,
		-0.412168, 0.902191, 0.127156,
		-0.523367, -0.120205, -0.843586,
		7.163016, 18.090065, 13.100881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.827581, 18.547812, 13.686047>,  <7.529373, 18.174210, 13.691391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.827581, 18.547812, 13.686047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.822516, 18.236639, 13.434757>,  <6.819478, 18.049936, 13.283984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.822516, 18.236639, 13.434757>,  <6.827581, 18.547812, 13.686047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.822516, 18.236639, 13.434757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727640, -0.423762, 0.539413,
		-0.685843, 0.463950, -0.560687,
		-0.012663, -0.777930, -0.628223,
		6.818717, 18.003260, 13.246290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.110603, 18.317860, 13.646689>,  <6.827581, 18.547812, 13.686047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.110603, 18.317860, 13.646689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.284432, 17.998089, 13.480768>,  <6.388730, 17.806227, 13.381216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.284432, 17.998089, 13.480768>,  <6.110603, 18.317860, 13.646689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.284432, 17.998089, 13.480768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646330, -0.597566, 0.474523,
		-0.627221, 0.061887, -0.776379,
		0.434570, -0.799428, -0.414805,
		6.414804, 17.758261, 13.356327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.602803, 17.905247, 13.425793>,  <6.110603, 18.317860, 13.646689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.602803, 17.905247, 13.425793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.918914, 17.661480, 13.451318>,  <6.108580, 17.515219, 13.466633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.918914, 17.661480, 13.451318>,  <5.602803, 17.905247, 13.425793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.918914, 17.661480, 13.451318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588813, -0.726452, 0.354355,
		-0.169594, -0.317612, -0.932931,
		0.790277, -0.609419, 0.063812,
		6.155997, 17.478655, 13.470461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.334448, 17.305223, 13.199916>,  <5.602803, 17.905247, 13.425793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.334448, 17.305223, 13.199916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.657732, 17.207840, 13.414400>,  <5.851703, 17.149410, 13.543091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.657732, 17.207840, 13.414400>,  <5.334448, 17.305223, 13.199916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.657732, 17.207840, 13.414400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497195, -0.770052, 0.399771,
		0.315582, -0.589701, -0.743411,
		0.808211, -0.243459, 0.536211,
		5.900196, 17.134802, 13.575263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.160968, 16.679111, 13.211148>,  <5.334448, 17.305223, 13.199916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.160968, 16.679111, 13.211148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.449615, 16.712915, 13.485993>,  <5.622804, 16.733198, 13.650901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.449615, 16.712915, 13.485993>,  <5.160968, 16.679111, 13.211148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.449615, 16.712915, 13.485993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303536, -0.853409, 0.423743,
		0.622199, -0.514345, -0.590184,
		0.721619, 0.084510, 0.687113,
		5.666101, 16.738268, 13.692127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.556098, 16.113140, 13.114792>,  <5.160968, 16.679111, 13.211148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.556098, 16.113140, 13.114792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.557290, 16.247219, 13.491649>,  <5.558005, 16.327667, 13.717763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.557290, 16.247219, 13.491649>,  <5.556098, 16.113140, 13.114792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.557290, 16.247219, 13.491649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309166, -0.895681, 0.319645,
		0.951003, -0.292231, 0.100963,
		0.002979, 0.335198, 0.942143,
		5.558184, 16.347778, 13.774292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.769466, 15.574577, 13.484724>,  <5.556098, 16.113140, 13.114792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.769466, 15.574577, 13.484724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.598348, 15.817161, 13.752813>,  <5.495677, 15.962710, 13.913668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.598348, 15.817161, 13.752813>,  <5.769466, 15.574577, 13.484724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.598348, 15.817161, 13.752813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574299, -0.754961, 0.316565,
		0.697977, -0.249484, 0.671257,
		-0.427795, 0.606457, 0.670224,
		5.470010, 15.999098, 13.953880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.324915, 16.017574, 13.674135>,  <5.769466, 15.574577, 13.484724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.324915, 16.017574, 13.674135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.545226, 15.692468, 13.750089>,  <6.677413, 15.497404, 13.795661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.545226, 15.692468, 13.750089>,  <6.324915, 16.017574, 13.674135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.545226, 15.692468, 13.750089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801808, 0.578421, 0.150111,
		-0.231838, 0.069574, 0.970263,
		0.550777, -0.812766, 0.189885,
		6.710459, 15.448638, 13.807055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.587557, 15.993282, 14.394378>,  <6.324915, 16.017574, 13.674135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.587557, 15.993282, 14.394378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.833838, 15.789266, 14.154123>,  <6.981607, 15.666855, 14.009971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.833838, 15.789266, 14.154123>,  <6.587557, 15.993282, 14.394378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.833838, 15.789266, 14.154123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753168, 0.604982, 0.258331,
		0.231614, -0.611435, 0.756639,
		0.615705, -0.510043, -0.600636,
		7.018550, 15.636252, 13.973932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.170807, 15.707377, 14.880450>,  <6.587557, 15.993282, 14.394378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.170807, 15.707377, 14.880450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.296886, 15.730251, 14.501530>,  <7.372533, 15.743976, 14.274178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.296886, 15.730251, 14.501530>,  <7.170807, 15.707377, 14.880450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.296886, 15.730251, 14.501530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857581, 0.410345, 0.310116,
		0.406452, -0.910136, 0.080308,
		0.315202, 0.057177, -0.947301,
		7.391445, 15.747407, 14.217340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.819211, 15.278193, 14.851909>,  <7.170807, 15.707377, 14.880450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.819211, 15.278193, 14.851909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.858147, 15.517761, 14.533959>,  <7.881508, 15.661502, 14.343190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.858147, 15.517761, 14.533959>,  <7.819211, 15.278193, 14.851909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.858147, 15.517761, 14.533959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964037, 0.141714, 0.224834,
		0.247301, -0.788171, -0.563585,
		0.097340, 0.598918, -0.794872,
		7.887349, 15.697436, 14.295498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.468799, 15.106807, 14.509113>,  <7.819211, 15.278193, 14.851909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.468799, 15.106807, 14.509113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.380980, 15.480673, 14.397254>,  <8.328290, 15.704992, 14.330138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.380980, 15.480673, 14.397254>,  <8.468799, 15.106807, 14.509113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.380980, 15.480673, 14.397254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924193, 0.291069, 0.247276,
		0.312517, -0.204160, -0.927713,
		-0.219545, 0.934664, -0.279647,
		8.315117, 15.761072, 14.313360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.103547, 15.285106, 14.130090>,  <8.468799, 15.106807, 14.509113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.103547, 15.285106, 14.130090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.918610, 15.631829, 14.204797>,  <8.807648, 15.839863, 14.249621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.918610, 15.631829, 14.204797>,  <9.103547, 15.285106, 14.130090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.918610, 15.631829, 14.204797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878245, 0.476681, -0.038232,
		-0.122169, 0.146351, -0.981660,
		-0.462343, 0.866808, 0.186767,
		8.779906, 15.891871, 14.260827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.402732, 15.784852, 13.748880>,  <9.103547, 15.285106, 14.130090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.402732, 15.784852, 13.748880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.208676, 16.003326, 14.022032>,  <9.092243, 16.134411, 14.185923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.208676, 16.003326, 14.022032>,  <9.402732, 15.784852, 13.748880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.208676, 16.003326, 14.022032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786560, 0.613771, 0.067886,
		-0.382052, 0.570059, -0.727371,
		-0.485138, 0.546186, 0.682878,
		9.063135, 16.167183, 14.226895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.382435, 16.449631, 13.424947>,  <9.402732, 15.784852, 13.748880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.382435, 16.449631, 13.424947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.349866, 16.457064, 13.823549>,  <9.330325, 16.461523, 14.062711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.349866, 16.457064, 13.823549>,  <9.382435, 16.449631, 13.424947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.349866, 16.457064, 13.823549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922668, 0.379496, 0.068311,
		-0.376901, 0.925007, -0.048046,
		-0.081422, 0.018584, 0.996506,
		9.325439, 16.462639, 14.122501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.489897, 17.164576, 13.616825>,  <9.382435, 16.449631, 13.424947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.489897, 17.164576, 13.616825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.554523, 16.930616, 13.934767>,  <9.593298, 16.790241, 14.125532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.554523, 16.930616, 13.934767>,  <9.489897, 17.164576, 13.616825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.554523, 16.930616, 13.934767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900006, 0.417733, 0.124454,
		-0.404829, 0.695266, 0.593901,
		0.161564, -0.584897, 0.794854,
		9.602992, 16.755148, 14.173223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.590070, 17.544222, 14.151194>,  <9.489897, 17.164576, 13.616825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.590070, 17.544222, 14.151194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.780699, 17.205183, 14.244540>,  <9.895076, 17.001760, 14.300549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.780699, 17.205183, 14.244540>,  <9.590070, 17.544222, 14.151194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.780699, 17.205183, 14.244540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868136, 0.495586, 0.027109,
		-0.138631, 0.189675, 0.972011,
		0.476573, -0.847596, 0.233367,
		9.923671, 16.950905, 14.314550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.209859, 17.785200, 14.411116>,  <9.590070, 17.544222, 14.151194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.209859, 17.785200, 14.411116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.276071, 17.391029, 14.395473>,  <10.315798, 17.154526, 14.386088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.276071, 17.391029, 14.395473>,  <10.209859, 17.785200, 14.411116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.276071, 17.391029, 14.395473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982144, 0.168313, -0.084045,
		0.089403, -0.024495, 0.995694,
		0.165530, -0.985429, -0.039105,
		10.325729, 17.095400, 14.383741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.645927, 17.578569, 14.855722>,  <10.209859, 17.785200, 14.411116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.645927, 17.578569, 14.855722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.672326, 17.301229, 14.568692>,  <10.688165, 17.134827, 14.396474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.672326, 17.301229, 14.568692>,  <10.645927, 17.578569, 14.855722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.672326, 17.301229, 14.568692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956752, 0.248164, -0.151792,
		0.283321, -0.676523, 0.679740,
		0.065996, -0.693348, -0.717575,
		10.692125, 17.093225, 14.353419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.225293, 17.233704, 15.001242>,  <10.645927, 17.578569, 14.855722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.225293, 17.233704, 15.001242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.146208, 17.117397, 14.626784>,  <11.098757, 17.047613, 14.402110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.146208, 17.117397, 14.626784>,  <11.225293, 17.233704, 15.001242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.146208, 17.117397, 14.626784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948025, 0.186173, -0.258047,
		0.249316, -0.938507, 0.238842,
		-0.197713, -0.290763, -0.936144,
		11.086894, 17.030169, 14.345941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.813551, 16.898722, 14.775170>,  <11.225293, 17.233704, 15.001242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.813551, 16.898722, 14.775170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.609173, 16.973017, 14.439447>,  <11.486547, 17.017593, 14.238013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.609173, 16.973017, 14.439447>,  <11.813551, 16.898722, 14.775170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.609173, 16.973017, 14.439447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834588, 0.341066, -0.432594,
		0.205910, -0.921507, -0.329280,
		-0.510944, 0.185738, -0.839307,
		11.455890, 17.028738, 14.187655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.252453, 16.635515, 14.279860>,  <11.813551, 16.898722, 14.775170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.252453, 16.635515, 14.279860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.038127, 16.920652, 14.098859>,  <11.909532, 17.091736, 13.990258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.038127, 16.920652, 14.098859>,  <12.252453, 16.635515, 14.279860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.038127, 16.920652, 14.098859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840305, 0.397907, -0.368181,
		-0.082402, -0.577515, -0.812211,
		-0.535814, 0.712844, -0.452501,
		11.877382, 17.134506, 13.963108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.592034, 16.833323, 13.664346>,  <12.252453, 16.635515, 14.279860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.592034, 16.833323, 13.664346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.333605, 17.138607, 13.668300>,  <12.178547, 17.321777, 13.670672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.333605, 17.138607, 13.668300>,  <12.592034, 16.833323, 13.664346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.333605, 17.138607, 13.668300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670388, 0.573592, -0.470714,
		-0.364925, -0.297489, -0.882230,
		-0.646073, 0.763212, 0.009885,
		12.139783, 17.367571, 13.671266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.589831, 17.017275, 12.946106>,  <12.592034, 16.833323, 13.664346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.589831, 17.017275, 12.946106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.483817, 17.317865, 13.187781>,  <12.420209, 17.498219, 13.332787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.483817, 17.317865, 13.187781>,  <12.589831, 17.017275, 12.946106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.483817, 17.317865, 13.187781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642283, 0.604939, -0.470661,
		-0.719186, 0.263318, -0.642989,
		-0.265036, 0.751474, 0.604188,
		12.404306, 17.543308, 13.369038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.379162, 17.700417, 12.493944>,  <12.589831, 17.017275, 12.946106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.379162, 17.700417, 12.493944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.490645, 17.815065, 12.860587>,  <12.557535, 17.883856, 13.080573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.490645, 17.815065, 12.860587>,  <12.379162, 17.700417, 12.493944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.490645, 17.815065, 12.860587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646622, 0.649667, -0.399767,
		-0.710072, 0.704116, -0.004270,
		0.278708, 0.286624, 0.916607,
		12.574258, 17.901052, 13.135570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.328499, 18.371195, 12.409361>,  <12.379162, 17.700417, 12.493944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.328499, 18.371195, 12.409361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.554637, 18.300257, 12.731586>,  <12.690320, 18.257694, 12.924922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.554637, 18.300257, 12.731586>,  <12.328499, 18.371195, 12.409361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.554637, 18.300257, 12.731586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685312, 0.644502, -0.339065,
		-0.459055, 0.743751, 0.485904,
		0.565346, -0.177346, 0.805563,
		12.724241, 18.247053, 12.973255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.589240, 19.104799, 12.656272>,  <12.328499, 18.371195, 12.409361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.589240, 19.104799, 12.656272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.822141, 18.821112, 12.815266>,  <12.961881, 18.650900, 12.910662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.822141, 18.821112, 12.815266>,  <12.589240, 19.104799, 12.656272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.822141, 18.821112, 12.815266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807251, 0.562409, -0.179005,
		-0.096595, 0.425095, 0.899980,
		0.582251, -0.709218, 0.397484,
		12.996816, 18.608347, 12.934511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.121997, 19.478418, 13.136526>,  <12.589240, 19.104799, 12.656272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.121997, 19.478418, 13.136526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.253908, 19.133459, 12.982898>,  <13.333055, 18.926483, 12.890720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.253908, 19.133459, 12.982898>,  <13.121997, 19.478418, 13.136526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.253908, 19.133459, 12.982898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901067, 0.408907, -0.144474,
		0.281644, -0.298430, 0.911930,
		0.329779, -0.862400, -0.384071,
		13.352842, 18.874739, 12.867677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.745720, 18.306656, 25.395153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.634213, 17.922604, 25.386738>,  <14.567309, 17.692173, 25.381689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.634213, 17.922604, 25.386738>,  <14.745720, 18.306656, 25.395153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.634213, 17.922604, 25.386738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818002, 0.225909, 0.528997,
		-0.503152, 0.164676, -0.848363,
		-0.278766, -0.960129, -0.021039,
		14.550584, 17.634565, 25.380426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985811, 18.397133, 25.108660>,  <14.745720, 18.306656, 25.395153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985811, 18.397133, 25.108660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.049194, 18.053434, 25.303223>,  <14.087224, 17.847216, 25.419960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.049194, 18.053434, 25.303223>,  <13.985811, 18.397133, 25.108660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.049194, 18.053434, 25.303223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787498, 0.187182, 0.587205,
		-0.595599, -0.476091, -0.646992,
		0.158458, -0.859244, 0.486406,
		14.096732, 17.795662, 25.449144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.401249, 18.122036, 25.211227>,  <13.985811, 18.397133, 25.108660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.401249, 18.122036, 25.211227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.597234, 17.902586, 25.482210>,  <13.714825, 17.770916, 25.644800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.597234, 17.902586, 25.482210>,  <13.401249, 18.122036, 25.211227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.597234, 17.902586, 25.482210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786991, 0.055877, 0.614429,
		-0.374945, -0.834200, -0.404385,
		0.489961, -0.548624, 0.677458,
		13.744222, 17.737999, 25.685448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969892, 17.507883, 25.443863>,  <13.401249, 18.122036, 25.211227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969892, 17.507883, 25.443863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.225220, 17.601368, 25.737236>,  <13.378417, 17.657459, 25.913260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.225220, 17.601368, 25.737236>,  <12.969892, 17.507883, 25.443863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225220, 17.601368, 25.737236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764945, 0.086063, 0.638320,
		0.086063, -0.968489, 0.233713,
		-0.638320, -0.233713, -0.733434,
		13.416716, 17.671482, 25.957266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.628868, 17.156191, 26.085876>,  <12.969892, 17.507883, 25.443863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.628868, 17.156191, 26.085876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.904119, 17.408995, 26.228451>,  <13.069269, 17.560677, 26.313995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.904119, 17.408995, 26.228451>,  <12.628868, 17.156191, 26.085876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.904119, 17.408995, 26.228451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536620, 0.112637, 0.836272,
		0.488385, -0.766731, 0.416658,
		0.688127, 0.632010, 0.356433,
		13.110557, 17.598597, 26.335381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.834357, 16.888361, 26.733231>,  <12.628868, 17.156191, 26.085876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.834357, 16.888361, 26.733231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.880135, 17.284283, 26.699324>,  <12.907600, 17.521835, 26.678980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.880135, 17.284283, 26.699324>,  <12.834357, 16.888361, 26.733231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.880135, 17.284283, 26.699324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621910, 0.137924, 0.770847,
		0.774681, -0.035499, 0.631355,
		0.114443, 0.989807, -0.084770,
		12.914468, 17.581224, 26.673893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995742, 17.196728, 27.379372>,  <12.834357, 16.888361, 26.733231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995742, 17.196728, 27.379372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.845492, 17.511341, 27.183300>,  <12.755342, 17.700109, 27.065657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.845492, 17.511341, 27.183300>,  <12.995742, 17.196728, 27.379372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.845492, 17.511341, 27.183300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664035, 0.140549, 0.734373,
		0.646501, 0.601344, 0.469491,
		-0.375624, 0.786532, -0.490178,
		12.732805, 17.747301, 27.036247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.705427, 17.349201, 27.903955>,  <12.995742, 17.196728, 27.379372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.705427, 17.349201, 27.903955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.588662, 17.630747, 27.644924>,  <12.518603, 17.799675, 27.489506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.588662, 17.630747, 27.644924>,  <12.705427, 17.349201, 27.903955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588662, 17.630747, 27.644924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561585, 0.421933, 0.711755,
		0.774216, 0.571441, 0.272113,
		-0.291912, 0.703866, -0.647580,
		12.501088, 17.841908, 27.450651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.793661, 17.931177, 28.330477>,  <12.705427, 17.349201, 27.903955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.793661, 17.931177, 28.330477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.524515, 18.016098, 28.047018>,  <12.363028, 18.067051, 27.876944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.524515, 18.016098, 28.047018>,  <12.793661, 17.931177, 28.330477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.524515, 18.016098, 28.047018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575908, 0.450908, 0.681918,
		0.464308, 0.866954, -0.181133,
		-0.672866, 0.212304, -0.708646,
		12.322656, 18.079790, 27.834425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.544346, 18.570118, 28.522415>,  <12.793661, 17.931177, 28.330477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.544346, 18.570118, 28.522415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.281544, 18.502882, 28.228453>,  <12.123862, 18.462542, 28.052074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.281544, 18.502882, 28.228453>,  <12.544346, 18.570118, 28.522415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.281544, 18.502882, 28.228453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577842, 0.738375, 0.347708,
		0.484192, 0.653107, -0.582245,
		-0.657006, -0.168088, -0.734908,
		12.084442, 18.452456, 28.007980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.363682, 19.220285, 28.026266>,  <12.544346, 18.570118, 28.522415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.363682, 19.220285, 28.026266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.098840, 18.933521, 28.113586>,  <11.939935, 18.761463, 28.165977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.098840, 18.933521, 28.113586>,  <12.363682, 19.220285, 28.026266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098840, 18.933521, 28.113586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422247, 0.597532, 0.681662,
		-0.619132, 0.359156, -0.698343,
		-0.662105, -0.716912, 0.218299,
		11.900208, 18.718447, 28.179075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.653640, 19.491940, 28.203878>,  <12.363682, 19.220285, 28.026266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.653640, 19.491940, 28.203878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.648134, 19.129093, 28.372139>,  <11.644831, 18.911385, 28.473095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.648134, 19.129093, 28.372139>,  <11.653640, 19.491940, 28.203878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.648134, 19.129093, 28.372139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423591, 0.386367, 0.819324,
		-0.905749, -0.166907, -0.389565,
		-0.013764, -0.907118, 0.420652,
		11.644005, 18.856958, 28.498335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.950012, 19.321806, 28.383905>,  <11.653640, 19.491940, 28.203878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.950012, 19.321806, 28.383905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.219653, 19.134071, 28.612049>,  <11.381437, 19.021431, 28.748936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.219653, 19.134071, 28.612049>,  <10.950012, 19.321806, 28.383905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.219653, 19.134071, 28.612049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500987, 0.276898, 0.819963,
		-0.542769, -0.838482, -0.048473,
		0.674102, -0.469335, 0.570360,
		11.421884, 18.993271, 28.783157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.555352, 18.804955, 28.903486>,  <10.950012, 19.321806, 28.383905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.555352, 18.804955, 28.903486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.906151, 18.902016, 29.069378>,  <11.116630, 18.960253, 29.168913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.906151, 18.902016, 29.069378>,  <10.555352, 18.804955, 28.903486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.906151, 18.902016, 29.069378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462382, 0.191412, 0.865774,
		0.130693, -0.951044, 0.280063,
		0.876996, 0.242647, 0.414729,
		11.169250, 18.974812, 29.193796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.012977, 19.294529, 29.178633>,  <10.555352, 18.804955, 28.903486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.012977, 19.294529, 29.178633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.616780, 19.346272, 29.197369>,  <9.379063, 19.377317, 29.208611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.616780, 19.346272, 29.197369>,  <10.012977, 19.294529, 29.178633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.616780, 19.346272, 29.197369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084892, -0.306745, -0.947998,
		-0.108259, -0.942961, 0.314810,
		-0.990492, 0.129354, 0.046842,
		9.319633, 19.385078, 29.211422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.667796, 18.642767, 29.002636>,  <10.012977, 19.294529, 29.178633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.667796, 18.642767, 29.002636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.440477, 18.963093, 28.927019>,  <9.304086, 19.155289, 28.881649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.440477, 18.963093, 28.927019>,  <9.667796, 18.642767, 29.002636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.440477, 18.963093, 28.927019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013919, -0.220362, -0.975319,
		-0.822706, -0.556901, 0.114084,
		-0.568296, 0.800813, -0.189044,
		9.269988, 19.203337, 28.870306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.968398, 18.479633, 28.643888>,  <9.667796, 18.642767, 29.002636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.968398, 18.479633, 28.643888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.035838, 18.867067, 28.570772>,  <9.076303, 19.099529, 28.526903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.035838, 18.867067, 28.570772>,  <8.968398, 18.479633, 28.643888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.035838, 18.867067, 28.570772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056691, -0.194667, -0.979230,
		-0.984053, 0.154736, -0.087731,
		0.168601, 0.968587, -0.182790,
		9.086418, 19.157644, 28.515936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.540934, 18.710720, 27.978594>,  <8.968398, 18.479633, 28.643888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.540934, 18.710720, 27.978594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.832599, 18.979212, 28.031918>,  <9.007598, 19.140306, 28.063911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.832599, 18.979212, 28.031918>,  <8.540934, 18.710720, 27.978594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.832599, 18.979212, 28.031918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259256, -0.090663, -0.961544,
		-0.633331, 0.735683, -0.240129,
		0.729162, 0.671231, 0.133311,
		9.051348, 19.180580, 28.071911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.384491, 19.208643, 27.597979>,  <8.540934, 18.710720, 27.978594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.384491, 19.208643, 27.597979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.771830, 19.304590, 27.625607>,  <9.004232, 19.362158, 27.642183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.771830, 19.304590, 27.625607>,  <8.384491, 19.208643, 27.597979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.771830, 19.304590, 27.625607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086127, -0.061359, -0.994393,
		-0.234285, 0.968865, -0.080076,
		0.968345, 0.239868, 0.069069,
		9.062333, 19.376551, 27.646328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.510067, 19.685242, 26.982849>,  <8.384491, 19.208643, 27.597979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.510067, 19.685242, 26.982849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.871429, 19.559580, 27.099583>,  <9.088246, 19.484182, 27.169622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.871429, 19.559580, 27.099583>,  <8.510067, 19.685242, 26.982849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.871429, 19.559580, 27.099583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319578, 0.039537, -0.946735,
		0.285881, 0.948549, 0.136114,
		0.903406, -0.314153, 0.291833,
		9.142451, 19.465334, 27.187132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.917675, 20.066349, 26.560547>,  <8.510067, 19.685242, 26.982849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.917675, 20.066349, 26.560547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.157527, 19.782042, 26.707653>,  <9.301438, 19.611458, 26.795916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.157527, 19.782042, 26.707653>,  <8.917675, 20.066349, 26.560547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.157527, 19.782042, 26.707653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479084, -0.049283, -0.876384,
		0.641031, 0.701697, 0.310966,
		0.599631, -0.710769, 0.367764,
		9.337417, 19.568811, 26.817982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.637290, 20.233175, 26.399939>,  <8.917675, 20.066349, 26.560547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.637290, 20.233175, 26.399939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.657803, 19.835775, 26.440596>,  <9.670111, 19.597336, 26.464991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.657803, 19.835775, 26.440596>,  <9.637290, 20.233175, 26.399939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.657803, 19.835775, 26.440596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601152, -0.050563, -0.797533,
		0.797487, 0.102002, 0.594651,
		0.051283, -0.993498, 0.101642,
		9.673187, 19.537725, 26.471088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.362665, 20.042273, 26.339609>,  <9.637290, 20.233175, 26.399939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.362665, 20.042273, 26.339609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.163712, 19.701120, 26.276104>,  <10.044339, 19.496429, 26.238001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.163712, 19.701120, 26.276104>,  <10.362665, 20.042273, 26.339609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.163712, 19.701120, 26.276104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608834, -0.212800, -0.764224,
		0.618005, -0.476775, 0.625105,
		-0.497385, -0.852879, -0.158765,
		10.014496, 19.445257, 26.228474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.765961, 19.611319, 26.077152>,  <10.362665, 20.042273, 26.339609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.765961, 19.611319, 26.077152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.443125, 19.392303, 25.988779>,  <10.249423, 19.260895, 25.935755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.443125, 19.392303, 25.988779>,  <10.765961, 19.611319, 26.077152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.443125, 19.392303, 25.988779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523688, -0.491037, -0.696156,
		0.272685, -0.677559, 0.683049,
		-0.807089, -0.547536, -0.220931,
		10.200998, 19.228043, 25.922501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.938557, 18.918497, 26.081856>,  <10.765961, 19.611319, 26.077152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.938557, 18.918497, 26.081856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.616058, 18.926504, 25.845360>,  <10.422559, 18.931309, 25.703463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.616058, 18.926504, 25.845360>,  <10.938557, 18.918497, 26.081856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616058, 18.926504, 25.845360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495970, -0.521898, -0.694000,
		-0.322460, -0.852773, 0.410850,
		-0.806246, 0.020018, -0.591241,
		10.374185, 18.932510, 25.667988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.869097, 18.243828, 25.803249>,  <10.938557, 18.918497, 26.081856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.869097, 18.243828, 25.803249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.628567, 18.444118, 25.554193>,  <10.484249, 18.564293, 25.404760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.628567, 18.444118, 25.554193>,  <10.869097, 18.243828, 25.803249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.628567, 18.444118, 25.554193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405345, -0.480369, -0.777780,
		-0.688552, -0.720083, 0.085891,
		-0.601324, 0.500726, -0.622641,
		10.448169, 18.594336, 25.367401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.610848, 17.756756, 25.223265>,  <10.869097, 18.243828, 25.803249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.610848, 17.756756, 25.223265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.626554, 18.133720, 25.090408>,  <10.635977, 18.359900, 25.010695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.626554, 18.133720, 25.090408>,  <10.610848, 17.756756, 25.223265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.626554, 18.133720, 25.090408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558357, -0.296352, -0.774863,
		-0.828671, -0.155030, -0.537838,
		0.039262, 0.942412, -0.332141,
		10.638332, 18.416445, 24.990767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.672394, 17.685226, 24.588938>,  <10.610848, 17.756756, 25.223265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.672394, 17.685226, 24.588938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.748240, 18.077923, 24.582853>,  <10.793748, 18.313541, 24.579203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.748240, 18.077923, 24.582853>,  <10.672394, 17.685226, 24.588938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.748240, 18.077923, 24.582853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584748, -0.125359, -0.801470,
		-0.788743, 0.143076, -0.597841,
		0.189616, 0.981741, -0.015213,
		10.805125, 18.372444, 24.578289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.838036, 17.569103, 24.507330>,  <10.672394, 17.685226, 24.588938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.838036, 17.569103, 24.507330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.680876, 17.201717, 24.489204>,  <9.586579, 16.981285, 24.478329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.680876, 17.201717, 24.489204>,  <9.838036, 17.569103, 24.507330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.680876, 17.201717, 24.489204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233576, 0.052018, 0.970946,
		-0.889422, 0.392069, -0.234969,
		-0.392901, -0.918464, -0.045312,
		9.563005, 16.926178, 24.475611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.090323, 17.601913, 24.722294>,  <9.838036, 17.569103, 24.507330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.090323, 17.601913, 24.722294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.199949, 17.221819, 24.781542>,  <9.265725, 16.993763, 24.817091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.199949, 17.221819, 24.781542>,  <9.090323, 17.601913, 24.722294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.199949, 17.221819, 24.781542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430818, 0.016393, 0.902290,
		-0.859817, -0.311100, -0.404886,
		0.274065, -0.950236, 0.148122,
		9.282168, 16.936749, 24.825979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.661085, 17.366673, 25.252869>,  <9.090323, 17.601913, 24.722294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.661085, 17.366673, 25.252869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.901919, 17.047626, 25.238445>,  <9.046420, 16.856199, 25.229792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.901919, 17.047626, 25.238445>,  <8.661085, 17.366673, 25.252869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.901919, 17.047626, 25.238445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180380, -0.179878, 0.967009,
		-0.777789, -0.575718, -0.252176,
		0.602086, -0.797617, -0.036059,
		9.082545, 16.808342, 25.227627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.270697, 16.680079, 25.415264>,  <8.661085, 17.366673, 25.252869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.270697, 16.680079, 25.415264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.659502, 16.637611, 25.499092>,  <8.892785, 16.612131, 25.549389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.659502, 16.637611, 25.499092>,  <8.270697, 16.680079, 25.415264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.659502, 16.637611, 25.499092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221280, -0.114134, 0.968508,
		-0.078900, -0.987777, -0.134431,
		0.972013, -0.106162, 0.209570,
		8.951106, 16.605761, 25.561962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.291806, 16.105820, 25.708065>,  <8.270697, 16.680079, 25.415264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.291806, 16.105820, 25.708065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.616886, 16.304152, 25.830490>,  <8.811934, 16.423151, 25.903946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.616886, 16.304152, 25.830490>,  <8.291806, 16.105820, 25.708065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.616886, 16.304152, 25.830490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229016, -0.211185, 0.950238,
		0.535791, -0.842351, -0.058077,
		0.812699, 0.495829, 0.306063,
		8.860696, 16.452900, 25.922310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.714422, 15.571565, 26.199310>,  <8.291806, 16.105820, 25.708065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.714422, 15.571565, 26.199310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.854983, 15.934817, 26.290359>,  <8.939320, 16.152769, 26.344990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.854983, 15.934817, 26.290359>,  <8.714422, 15.571565, 26.199310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.854983, 15.934817, 26.290359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238678, -0.148198, 0.959724,
		0.905290, -0.391578, 0.164674,
		0.351402, 0.908132, 0.227623,
		8.960404, 16.207256, 26.358646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.069470, 15.474236, 26.803282>,  <8.714422, 15.571565, 26.199310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.069470, 15.474236, 26.803282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.973783, 15.862613, 26.800556>,  <8.916370, 16.095638, 26.798920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.973783, 15.862613, 26.800556>,  <9.069470, 15.474236, 26.803282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.973783, 15.862613, 26.800556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264431, -0.058393, 0.962635,
		0.934265, 0.232082, 0.270716,
		-0.239219, 0.970942, -0.006816,
		8.902017, 16.153894, 26.798512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.380486, 14.821810, 27.133297>,  <9.069470, 15.474236, 26.803282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.380486, 14.821810, 27.133297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.230157, 14.481161, 27.279446>,  <9.139959, 14.276772, 27.367134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.230157, 14.481161, 27.279446>,  <9.380486, 14.821810, 27.133297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.230157, 14.481161, 27.279446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008313, -0.397355, -0.917627,
		0.926654, -0.341829, 0.156415,
		-0.375824, -0.851623, 0.365369,
		9.117410, 14.225675, 27.389057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.940763, 14.297379, 27.089016>,  <9.380486, 14.821810, 27.133297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.940763, 14.297379, 27.089016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.591916, 14.104923, 27.124603>,  <9.382607, 13.989450, 27.145956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.591916, 14.104923, 27.124603>,  <9.940763, 14.297379, 27.089016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.591916, 14.104923, 27.124603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119812, -0.386286, -0.914564,
		0.474400, -0.786948, 0.394533,
		-0.872118, -0.481139, 0.088969,
		9.330280, 13.960582, 27.151295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.068105, 13.635622, 26.817171>,  <9.940763, 14.297379, 27.089016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.068105, 13.635622, 26.817171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.671674, 13.662627, 26.771200>,  <9.433815, 13.678830, 26.743618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.671674, 13.662627, 26.771200>,  <10.068105, 13.635622, 26.817171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.671674, 13.662627, 26.771200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083359, -0.358872, -0.929657,
		-0.104007, -0.930942, 0.350042,
		-0.991078, 0.067511, -0.114927,
		9.374351, 13.682880, 26.736721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.907333, 13.078453, 26.515259>,  <10.068105, 13.635622, 26.817171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.907333, 13.078453, 26.515259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.596206, 13.314447, 26.428623>,  <9.409529, 13.456044, 26.376642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.596206, 13.314447, 26.428623>,  <9.907333, 13.078453, 26.515259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.596206, 13.314447, 26.428623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004696, -0.339155, -0.940719,
		-0.628469, -0.732727, 0.261031,
		-0.777820, 0.589987, -0.216589,
		9.362860, 13.491444, 26.363647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.261765, 12.644961, 26.149307>,  <9.907333, 13.078453, 26.515259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.261765, 12.644961, 26.149307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.216887, 13.034711, 26.071325>,  <9.189960, 13.268560, 26.024536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.216887, 13.034711, 26.071325>,  <9.261765, 12.644961, 26.149307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.216887, 13.034711, 26.071325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094838, -0.205797, -0.973989,
		-0.989150, -0.090788, 0.115497,
		-0.112195, 0.974374, -0.194954,
		9.183229, 13.327024, 26.012838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.620152, 12.685800, 25.662102>,  <9.261765, 12.644961, 26.149307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.620152, 12.685800, 25.662102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.878448, 12.987633, 25.615412>,  <9.033425, 13.168733, 25.587397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.878448, 12.987633, 25.615412>,  <8.620152, 12.685800, 25.662102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.878448, 12.987633, 25.615412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036057, -0.122566, -0.991805,
		-0.762705, 0.644658, -0.051938,
		0.645741, 0.754582, -0.116726,
		9.072169, 13.214007, 25.580395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.255196, 13.077668, 25.139030>,  <8.620152, 12.685800, 25.662102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.255196, 13.077668, 25.139030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.630718, 13.215319, 25.133121>,  <8.856032, 13.297909, 25.129576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.630718, 13.215319, 25.133121>,  <8.255196, 13.077668, 25.139030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.630718, 13.215319, 25.133121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026597, 0.029666, -0.999206,
		-0.343415, 0.938455, 0.037003,
		0.938807, 0.344126, -0.014772,
		8.912360, 13.318557, 25.128691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<10.791422, 16.548716, 25.038000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.398983, 16.544123, 24.960730>,  <10.163520, 16.541367, 24.914368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.398983, 16.544123, 24.960730>,  <10.791422, 16.548716, 25.038000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.398983, 16.544123, 24.960730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045991, -0.955799, 0.290401,
		-0.187971, 0.293796, 0.937204,
		-0.981097, -0.011484, -0.193174,
		10.104654, 16.540678, 24.902777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.107306, 16.872528, 25.639681>,  <10.791422, 16.548716, 25.038000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.107306, 16.872528, 25.639681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.150131, 17.264400, 25.571840>,  <11.175826, 17.499523, 25.531136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.150131, 17.264400, 25.571840>,  <11.107306, 16.872528, 25.639681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.150131, 17.264400, 25.571840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843914, 0.000650, 0.536478,
		0.525687, -0.200566, -0.826696,
		0.107062, 0.979680, -0.169602,
		11.182250, 17.558304, 25.520960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.900690, 16.402313, 26.132755>,  <11.107306, 16.872528, 25.639681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.900690, 16.402313, 26.132755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.928863, 16.769075, 26.289890>,  <10.945765, 16.989134, 26.384172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.928863, 16.769075, 26.289890>,  <10.900690, 16.402313, 26.132755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.928863, 16.769075, 26.289890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103228, -0.398402, 0.911384,
		0.992161, -0.023637, -0.122710,
		0.070430, 0.916906, 0.392839,
		10.949991, 17.044147, 26.407742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.315927, 16.235435, 26.633484>,  <10.900690, 16.402313, 26.132755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.315927, 16.235435, 26.633484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.147412, 16.592079, 26.699875>,  <11.046304, 16.806067, 26.739710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.147412, 16.592079, 26.699875>,  <11.315927, 16.235435, 26.633484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147412, 16.592079, 26.699875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241206, -0.066267, 0.968209,
		0.874264, 0.447927, -0.187145,
		-0.421285, 0.891611, 0.165977,
		11.021027, 16.859562, 26.749668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.787296, 16.628895, 26.939312>,  <11.315927, 16.235435, 26.633484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.787296, 16.628895, 26.939312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.438286, 16.770882, 27.073593>,  <11.228880, 16.856073, 27.154161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.438286, 16.770882, 27.073593>,  <11.787296, 16.628895, 26.939312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.438286, 16.770882, 27.073593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403887, 0.137423, 0.904428,
		0.274908, 0.924724, -0.263272,
		-0.872526, 0.354966, 0.335705,
		11.176528, 16.877371, 27.174305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.068306, 16.059713, 26.862488>,  <11.787296, 16.628895, 26.939312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.068306, 16.059713, 26.862488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.990124, 15.737462, 27.086189>,  <11.943214, 15.544111, 27.220409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.990124, 15.737462, 27.086189>,  <12.068306, 16.059713, 26.862488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.990124, 15.737462, 27.086189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731411, -0.499633, -0.464117,
		0.653326, 0.318328, 0.686901,
		-0.195457, -0.805627, 0.559252,
		11.931487, 15.495774, 27.253965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.800690, 15.799618, 27.148079>,  <12.068306, 16.059713, 26.862488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.800690, 15.799618, 27.148079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.551125, 15.487116, 27.155819>,  <12.401385, 15.299615, 27.160463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.551125, 15.487116, 27.155819>,  <12.800690, 15.799618, 27.148079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.551125, 15.487116, 27.155819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693519, -0.564921, -0.447097,
		0.360228, -0.265530, 0.894276,
		-0.623913, -0.781254, 0.019350,
		12.363951, 15.252740, 27.161625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.098038, 15.273792, 27.553610>,  <12.800690, 15.799618, 27.148079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.098038, 15.273792, 27.553610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.828851, 15.104761, 27.310780>,  <12.667338, 15.003343, 27.165081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.828851, 15.104761, 27.310780>,  <13.098038, 15.273792, 27.553610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.828851, 15.104761, 27.310780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708139, -0.605164, -0.363751,
		-0.213668, -0.674688, 0.706500,
		-0.672967, -0.422579, -0.607077,
		12.626961, 14.977987, 27.128656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.129020, 14.582532, 27.651028>,  <13.098038, 15.273792, 27.553610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.129020, 14.582532, 27.651028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.960719, 14.616512, 27.289751>,  <12.859739, 14.636901, 27.072985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.960719, 14.616512, 27.289751>,  <13.129020, 14.582532, 27.651028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960719, 14.616512, 27.289751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653513, -0.662147, -0.366718,
		-0.629197, -0.744544, 0.223083,
		-0.420751, 0.084951, -0.903189,
		12.834494, 14.641997, 27.018795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.146762, 13.870348, 27.359293>,  <13.129020, 14.582532, 27.651028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.146762, 13.870348, 27.359293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.077002, 14.097616, 27.037605>,  <13.035145, 14.233977, 26.844593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.077002, 14.097616, 27.037605>,  <13.146762, 13.870348, 27.359293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.077002, 14.097616, 27.037605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562334, -0.612980, -0.555011,
		-0.808310, -0.549034, -0.212597,
		-0.174402, 0.568171, -0.804217,
		13.024681, 14.268067, 26.796341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.163672, 13.347013, 26.856165>,  <13.146762, 13.870348, 27.359293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.163672, 13.347013, 26.856165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.182638, 13.688121, 26.648113>,  <13.194017, 13.892785, 26.523281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.182638, 13.688121, 26.648113>,  <13.163672, 13.347013, 26.856165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.182638, 13.688121, 26.648113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514595, -0.467153, -0.719000,
		-0.856121, -0.233566, -0.460981,
		0.047415, 0.852769, -0.520131,
		13.196862, 13.943952, 26.492073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.077386, 13.079812, 26.238794>,  <13.163672, 13.347013, 26.856165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.077386, 13.079812, 26.238794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.242675, 13.440274, 26.186386>,  <13.341848, 13.656551, 26.154942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.242675, 13.440274, 26.186386>,  <13.077386, 13.079812, 26.238794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.242675, 13.440274, 26.186386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577584, -0.370602, -0.727359,
		-0.704019, 0.224886, -0.673634,
		0.413223, 0.901155, -0.131020,
		13.366642, 13.710621, 26.147079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.787861, 12.376345, 26.197851>,  <13.077386, 13.079812, 26.238794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.787861, 12.376345, 26.197851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.459063, 12.154479, 26.249493>,  <12.261784, 12.021359, 26.280478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.459063, 12.154479, 26.249493>,  <12.787861, 12.376345, 26.197851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.459063, 12.154479, 26.249493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197927, 0.490816, 0.848484,
		-0.533991, 0.671898, -0.513232,
		-0.821997, -0.554665, 0.129104,
		12.212463, 11.988079, 26.288223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.394346, 12.837325, 26.541945>,  <12.787861, 12.376345, 26.197851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.394346, 12.837325, 26.541945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.229726, 12.477571, 26.600912>,  <12.130954, 12.261718, 26.636293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.229726, 12.477571, 26.600912>,  <12.394346, 12.837325, 26.541945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229726, 12.477571, 26.600912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350607, 0.305541, 0.885279,
		-0.841250, 0.312651, -0.441076,
		-0.411550, -0.899386, 0.147419,
		12.106261, 12.207755, 26.645138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.739801, 12.951061, 26.820084>,  <12.394346, 12.837325, 26.541945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.739801, 12.951061, 26.820084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.812304, 12.563227, 26.885872>,  <11.855804, 12.330526, 26.925344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.812304, 12.563227, 26.885872>,  <11.739801, 12.951061, 26.820084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.812304, 12.563227, 26.885872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341164, 0.094862, 0.935205,
		-0.922364, -0.225622, -0.313593,
		0.181255, -0.969586, 0.164471,
		11.866680, 12.272351, 26.935213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.145286, 12.574645, 27.107697>,  <11.739801, 12.951061, 26.820084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.145286, 12.574645, 27.107697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.467834, 12.379045, 27.240747>,  <11.661364, 12.261684, 27.320578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.467834, 12.379045, 27.240747>,  <11.145286, 12.574645, 27.107697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.467834, 12.379045, 27.240747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417603, -0.072545, 0.905729,
		-0.418773, -0.869261, -0.262707,
		0.806373, -0.489002, 0.332626,
		11.709746, 12.232344, 27.340536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.839079, 11.921879, 27.479607>,  <11.145286, 12.574645, 27.107697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.839079, 11.921879, 27.479607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.218285, 11.931090, 27.606565>,  <11.445807, 11.936617, 27.682741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.218285, 11.931090, 27.606565>,  <10.839079, 11.921879, 27.479607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.218285, 11.931090, 27.606565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297717, -0.288112, 0.910141,
		0.112404, -0.957320, -0.266278,
		0.948014, 0.023028, 0.317396,
		11.502688, 11.937999, 27.701784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.039190, 11.223568, 27.828278>,  <10.839079, 11.921879, 27.479607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.039190, 11.223568, 27.828278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.275172, 11.525184, 27.943779>,  <11.416761, 11.706153, 28.013079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.275172, 11.525184, 27.943779>,  <11.039190, 11.223568, 27.828278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.275172, 11.525184, 27.943779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253775, -0.166335, 0.952854,
		0.766519, -0.635419, 0.093226,
		0.589955, 0.754039, 0.288752,
		11.452159, 11.751395, 28.030405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.355405, 10.961084, 28.430775>,  <11.039190, 11.223568, 27.828278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.355405, 10.961084, 28.430775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.440167, 11.348464, 28.483238>,  <11.491025, 11.580892, 28.514717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.440167, 11.348464, 28.483238>,  <11.355405, 10.961084, 28.430775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.440167, 11.348464, 28.483238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254924, -0.074785, 0.964065,
		0.943456, -0.237728, 0.231033,
		0.211907, 0.968449, 0.131159,
		11.503739, 11.638999, 28.522587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.704432, 11.026503, 29.097889>,  <11.355405, 10.961084, 28.430775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.704432, 11.026503, 29.097889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.537951, 11.381531, 29.018900>,  <11.438062, 11.594547, 28.971506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.537951, 11.381531, 29.018900>,  <11.704432, 11.026503, 29.097889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.537951, 11.381531, 29.018900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185970, 0.129491, 0.973985,
		0.890050, 0.442100, 0.111167,
		-0.416204, 0.887569, -0.197471,
		11.413090, 11.647801, 28.959660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.985417, 11.551220, 29.500837>,  <11.704432, 11.026503, 29.097889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.985417, 11.551220, 29.500837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.653378, 11.746030, 29.392216>,  <11.454153, 11.862916, 29.327044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.653378, 11.746030, 29.392216>,  <11.985417, 11.551220, 29.500837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.653378, 11.746030, 29.392216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171322, 0.240680, 0.955365,
		0.530644, 0.839571, -0.116351,
		-0.830100, 0.487025, -0.271552,
		11.404347, 11.892138, 29.310751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.932652, 12.158937, 29.906824>,  <11.985417, 11.551220, 29.500837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.932652, 12.158937, 29.906824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.557936, 12.131931, 29.769501>,  <11.333105, 12.115728, 29.687107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.557936, 12.131931, 29.769501>,  <11.932652, 12.158937, 29.906824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.557936, 12.131931, 29.769501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349863, 0.191674, 0.916982,
		0.003896, 0.979134, -0.203179,
		-0.936793, -0.067513, -0.343309,
		11.276897, 12.111677, 29.666508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.579412, 12.669428, 30.316109>,  <11.932652, 12.158937, 29.906824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.579412, 12.669428, 30.316109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.280815, 12.453780, 30.160110>,  <11.101657, 12.324391, 30.066511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.280815, 12.453780, 30.160110>,  <11.579412, 12.669428, 30.316109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.280815, 12.453780, 30.160110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554112, 0.179184, 0.812928,
		-0.368384, 0.822948, -0.432492,
		-0.746493, -0.539119, -0.389997,
		11.056867, 12.292045, 30.043112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.089405, 13.035364, 30.212122>,  <11.579412, 12.669428, 30.316109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.089405, 13.035364, 30.212122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.925430, 12.673631, 30.259676>,  <10.827045, 12.456591, 30.288208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.925430, 12.673631, 30.259676>,  <11.089405, 13.035364, 30.212122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.925430, 12.673631, 30.259676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522281, 0.339586, 0.782243,
		-0.747780, 0.258579, -0.611525,
		-0.409936, -0.904333, 0.118884,
		10.802449, 12.402330, 30.295341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.457579, 13.175326, 30.345934>,  <11.089405, 13.035364, 30.212122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.457579, 13.175326, 30.345934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.527293, 12.805228, 30.480719>,  <10.569121, 12.583169, 30.561590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.527293, 12.805228, 30.480719>,  <10.457579, 13.175326, 30.345934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.527293, 12.805228, 30.480719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449398, 0.229744, 0.863284,
		-0.876165, -0.301888, -0.375763,
		0.174286, -0.925246, 0.336962,
		10.579579, 12.527655, 30.581808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.877644, 13.126442, 30.744446>,  <10.457579, 13.175326, 30.345934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.877644, 13.126442, 30.744446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.146811, 12.862857, 30.878878>,  <10.308311, 12.704705, 30.959538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.146811, 12.862857, 30.878878>,  <9.877644, 13.126442, 30.744446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.146811, 12.862857, 30.878878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279145, 0.194528, 0.940339,
		-0.685026, -0.726585, -0.053045,
		0.672917, -0.658964, 0.336079,
		10.348686, 12.665168, 30.979702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.814033, 13.822678, 30.477873>,  <9.877644, 13.126442, 30.744446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.814033, 13.822678, 30.477873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.501890, 14.065620, 30.418325>,  <9.314605, 14.211386, 30.382597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.501890, 14.065620, 30.418325>,  <9.814033, 13.822678, 30.477873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.501890, 14.065620, 30.418325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055525, -0.304422, -0.950918,
		-0.622865, -0.733788, 0.271281,
		-0.780356, 0.607357, -0.148870,
		9.267783, 14.247828, 30.373665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.282825, 13.481248, 30.070890>,  <9.814033, 13.822678, 30.477873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.282825, 13.481248, 30.070890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.242253, 13.874829, 30.012173>,  <9.217910, 14.110978, 29.976942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.242253, 13.874829, 30.012173>,  <9.282825, 13.481248, 30.070890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.242253, 13.874829, 30.012173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260639, -0.168684, -0.950586,
		-0.960093, -0.058157, 0.273566,
		-0.101429, 0.983953, -0.146794,
		9.211824, 14.170015, 29.968134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.602748, 13.639688, 29.867363>,  <9.282825, 13.481248, 30.070890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.602748, 13.639688, 29.867363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.855770, 13.921709, 29.739128>,  <9.007584, 14.090921, 29.662188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.855770, 13.921709, 29.739128>,  <8.602748, 13.639688, 29.867363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.855770, 13.921709, 29.739128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295321, -0.163089, -0.941375,
		-0.716001, 0.690149, 0.105053,
		0.632556, 0.705050, -0.320588,
		9.045537, 14.133224, 29.642952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.225165, 14.016554, 29.238251>,  <8.602748, 13.639688, 29.867363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.225165, 14.016554, 29.238251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.608881, 14.120541, 29.194099>,  <8.839110, 14.182933, 29.167608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.608881, 14.120541, 29.194099>,  <8.225165, 14.016554, 29.238251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.608881, 14.120541, 29.194099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118062, 0.014087, -0.992906,
		-0.256568, 0.965515, 0.044206,
		0.959288, 0.259967, -0.110376,
		8.896667, 14.198531, 29.160986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.248402, 14.564437, 28.693661>,  <8.225165, 14.016554, 29.238251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.248402, 14.564437, 28.693661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.620079, 14.417086, 28.705627>,  <8.843086, 14.328675, 28.712807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.620079, 14.417086, 28.705627>,  <8.248402, 14.564437, 28.693661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.620079, 14.417086, 28.705627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014689, -0.044075, -0.998920,
		0.369299, 0.928631, -0.035543,
		0.929195, -0.368378, 0.029917,
		8.898837, 14.306572, 28.714603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.440342, 14.865234, 28.107559>,  <8.248402, 14.564437, 28.693661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.440342, 14.865234, 28.107559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.693281, 14.569695, 28.200716>,  <8.845045, 14.392372, 28.256611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.693281, 14.569695, 28.200716>,  <8.440342, 14.865234, 28.107559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.693281, 14.569695, 28.200716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138279, -0.188151, -0.972357,
		0.762243, 0.647073, -0.016809,
		0.632348, -0.738848, 0.232893,
		8.882986, 14.348042, 28.270584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.059096, 15.020017, 27.793985>,  <8.440342, 14.865234, 28.107559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.059096, 15.020017, 27.793985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.045424, 14.622408, 27.835466>,  <9.037221, 14.383842, 27.860355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.045424, 14.622408, 27.835466>,  <9.059096, 15.020017, 27.793985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.045424, 14.622408, 27.835466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096190, -0.106553, -0.989643,
		0.994776, -0.023851, 0.099257,
		-0.034180, -0.994021, 0.103702,
		9.035171, 14.324202, 27.866577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.307741, 15.700095, 27.485464>,  <9.059096, 15.020017, 27.793985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.307741, 15.700095, 27.485464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.094305, 16.012487, 27.355633>,  <8.966244, 16.199923, 27.277735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.094305, 16.012487, 27.355633>,  <9.307741, 15.700095, 27.485464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.094305, 16.012487, 27.355633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208614, 0.250383, 0.945404,
		0.819611, 0.572170, 0.029321,
		-0.533590, 0.780980, -0.324579,
		8.934228, 16.246782, 27.258259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.550069, 16.288881, 27.885351>,  <9.307741, 15.700095, 27.485464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.550069, 16.288881, 27.885351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.176270, 16.324593, 27.747513>,  <8.951991, 16.346020, 27.664810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.176270, 16.324593, 27.747513>,  <9.550069, 16.288881, 27.885351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.176270, 16.324593, 27.747513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319830, 0.214423, 0.922893,
		0.156284, 0.972652, -0.171824,
		-0.934497, 0.089279, -0.344594,
		8.895922, 16.351376, 27.644135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.316153, 16.962940, 28.027853>,  <9.550069, 16.288881, 27.885351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.316153, 16.962940, 28.027853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.956430, 16.797766, 27.970255>,  <8.740597, 16.698662, 27.935696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.956430, 16.797766, 27.970255>,  <9.316153, 16.962940, 28.027853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.956430, 16.797766, 27.970255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314575, 0.382087, 0.868937,
		-0.303796, 0.826737, -0.473512,
		-0.899305, -0.412935, -0.143995,
		8.686639, 16.673885, 27.927057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.819676, 17.448454, 28.130623>,  <9.316153, 16.962940, 28.027853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.819676, 17.448454, 28.130623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.609908, 17.110073, 28.169296>,  <8.484047, 16.907045, 28.192501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.609908, 17.110073, 28.169296>,  <8.819676, 17.448454, 28.130623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.609908, 17.110073, 28.169296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434003, 0.363271, 0.824424,
		-0.732547, 0.390383, -0.557652,
		-0.524420, -0.845952, 0.096685,
		8.452582, 16.856287, 28.198301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.227910, 17.734728, 28.274506>,  <8.819676, 17.448454, 28.130623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.227910, 17.734728, 28.274506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.159598, 17.351990, 28.368553>,  <8.118611, 17.122347, 28.424982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.159598, 17.351990, 28.368553>,  <8.227910, 17.734728, 28.274506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.159598, 17.351990, 28.368553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531569, 0.290391, 0.795681,
		-0.829620, 0.010904, -0.558223,
		-0.170779, -0.956846, 0.235117,
		8.108365, 17.064936, 28.439089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.530475, 17.679432, 28.464298>,  <8.227910, 17.734728, 28.274506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.530475, 17.679432, 28.464298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.739539, 17.395937, 28.653831>,  <7.864978, 17.225840, 28.767551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.739539, 17.395937, 28.653831>,  <7.530475, 17.679432, 28.464298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.739539, 17.395937, 28.653831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436853, 0.254636, 0.862740,
		-0.732110, -0.657916, -0.176525,
		0.522661, -0.708736, 0.473834,
		7.896338, 17.183315, 28.795982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.041386, 17.365114, 28.995117>,  <7.530475, 17.679432, 28.464298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.041386, 17.365114, 28.995117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.420963, 17.309853, 29.108551>,  <7.648709, 17.276695, 29.176611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.420963, 17.309853, 29.108551>,  <7.041386, 17.365114, 28.995117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.420963, 17.309853, 29.108551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243275, 0.251775, 0.936711,
		-0.200809, -0.957874, 0.205310,
		0.948943, -0.138153, 0.283586,
		7.705646, 17.268408, 29.193626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.025526, 17.137894, 29.676001>,  <7.041386, 17.365114, 28.995117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.025526, 17.137894, 29.676001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.417800, 17.212477, 29.652363>,  <7.653164, 17.257227, 29.638180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.417800, 17.212477, 29.652363>,  <7.025526, 17.137894, 29.676001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.417800, 17.212477, 29.652363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004692, 0.324455, 0.945889,
		0.195539, -0.927342, 0.319063,
		0.980685, 0.186455, -0.059093,
		7.712005, 17.268414, 29.634634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.266859, 16.878571, 30.273514>,  <7.025526, 17.137894, 29.676001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.266859, 16.878571, 30.273514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.528059, 17.146908, 30.132912>,  <7.684780, 17.307911, 30.048550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.528059, 17.146908, 30.132912>,  <7.266859, 16.878571, 30.273514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.528059, 17.146908, 30.132912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096007, 0.387056, 0.917044,
		0.751247, -0.632578, 0.188342,
		0.653002, 0.670845, -0.351507,
		7.723960, 17.348162, 30.027460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.506881, 13.777313, 17.015245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.643679, 14.146783, 17.084373>,  <14.725758, 14.368464, 17.125851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.643679, 14.146783, 17.084373>,  <14.506881, 13.777313, 17.015245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643679, 14.146783, 17.084373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915758, 0.286347, 0.281767,
		0.210774, -0.254624, 0.943791,
		0.341996, 0.923673, 0.172819,
		14.746278, 14.423885, 17.136219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230109, 13.969499, 17.674883>,  <14.506881, 13.777313, 17.015245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230109, 13.969499, 17.674883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.318730, 14.299870, 17.467516>,  <14.371902, 14.498093, 17.343096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.318730, 14.299870, 17.467516>,  <14.230109, 13.969499, 17.674883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.318730, 14.299870, 17.467516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793970, 0.461438, 0.395836,
		0.566150, 0.323909, 0.757995,
		0.221553, 0.825928, -0.518418,
		14.385196, 14.547648, 17.311991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186393, 14.494775, 18.131128>,  <14.230109, 13.969499, 17.674883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.186393, 14.494775, 18.131128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.155371, 14.672111, 17.773932>,  <14.136758, 14.778512, 17.559614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.155371, 14.672111, 17.773932>,  <14.186393, 14.494775, 18.131128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.155371, 14.672111, 17.773932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855541, 0.430289, 0.287925,
		0.511894, 0.786321, 0.345924,
		-0.077554, 0.443339, -0.892992,
		14.132105, 14.805113, 17.506033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874386, 15.163668, 18.326679>,  <14.186393, 14.494775, 18.131128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874386, 15.163668, 18.326679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.809882, 15.138998, 17.932686>,  <13.771180, 15.124196, 17.696289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.809882, 15.138998, 17.932686>,  <13.874386, 15.163668, 18.326679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.809882, 15.138998, 17.932686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913911, 0.386041, 0.125453,
		0.372507, 0.920418, -0.118617,
		-0.161260, -0.061673, -0.984983,
		13.761504, 15.120496, 17.637192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741577, 15.775333, 18.134136>,  <13.874386, 15.163668, 18.326679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741577, 15.775333, 18.134136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584144, 15.516674, 17.872774>,  <13.489683, 15.361479, 17.715958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584144, 15.516674, 17.872774>,  <13.741577, 15.775333, 18.134136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584144, 15.516674, 17.872774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919288, 0.275651, 0.280940,
		-0.001558, 0.711241, -0.702947,
		-0.393584, -0.646648, -0.653405,
		13.466068, 15.322680, 17.676752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.171094, 16.173326, 17.942350>,  <13.741577, 15.775333, 18.134136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.171094, 16.173326, 17.942350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080564, 15.798039, 17.837641>,  <13.026247, 15.572867, 17.774815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080564, 15.798039, 17.837641>,  <13.171094, 16.173326, 17.942350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080564, 15.798039, 17.837641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955517, 0.161671, 0.246676,
		-0.189114, 0.305961, -0.933072,
		-0.226324, -0.938217, -0.261776,
		13.012668, 15.516575, 17.759108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.561123, 16.300400, 17.812895>,  <13.171094, 16.173326, 17.942350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.561123, 16.300400, 17.812895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.575392, 15.901694, 17.841709>,  <12.583953, 15.662471, 17.858997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.575392, 15.901694, 17.841709>,  <12.561123, 16.300400, 17.812895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.575392, 15.901694, 17.841709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954547, -0.012640, 0.297793,
		-0.295919, -0.079384, -0.951909,
		0.035672, -0.996763, 0.072035,
		12.586093, 15.602665, 17.863319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.966099, 16.076538, 17.531342>,  <12.561123, 16.300400, 17.812895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.966099, 16.076538, 17.531342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.095339, 15.784829, 17.772594>,  <12.172883, 15.609803, 17.917345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.095339, 15.784829, 17.772594>,  <11.966099, 16.076538, 17.531342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.095339, 15.784829, 17.772594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904496, -0.050501, 0.423482,
		-0.278376, -0.682356, -0.675942,
		0.323101, -0.729274, 0.603130,
		12.192269, 15.566047, 17.953533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.416843, 15.647643, 17.546278>,  <11.966099, 16.076538, 17.531342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.416843, 15.647643, 17.546278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.634748, 15.536717, 17.862843>,  <11.765490, 15.470161, 18.052782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.634748, 15.536717, 17.862843>,  <11.416843, 15.647643, 17.546278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.634748, 15.536717, 17.862843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795994, 0.125962, 0.592053,
		-0.263873, -0.952486, -0.152123,
		0.544760, -0.277316, 0.791411,
		11.798176, 15.453523, 18.100266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.056798, 15.012719, 17.894600>,  <11.416843, 15.647643, 17.546278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.056798, 15.012719, 17.894600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.283738, 15.209637, 18.158649>,  <11.419902, 15.327787, 18.317080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.283738, 15.209637, 18.158649>,  <11.056798, 15.012719, 17.894600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.283738, 15.209637, 18.158649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713504, -0.106340, 0.692534,
		0.411128, -0.863909, 0.290922,
		0.567350, 0.492294, 0.660122,
		11.453943, 15.357325, 18.356686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.792781, 14.739351, 18.528194>,  <11.056798, 15.012719, 17.894600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.792781, 14.739351, 18.528194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.025723, 15.048121, 18.630169>,  <11.165487, 15.233383, 18.691355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.025723, 15.048121, 18.630169>,  <10.792781, 14.739351, 18.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.025723, 15.048121, 18.630169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595668, 0.191778, 0.780001,
		0.553211, -0.606095, 0.571495,
		0.582355, 0.771926, 0.254938,
		11.200429, 15.279699, 18.706650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.007762, 14.617909, 19.293905>,  <10.792781, 14.739351, 18.528194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.007762, 14.617909, 19.293905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.042749, 15.002633, 19.190159>,  <11.063742, 15.233467, 19.127911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.042749, 15.002633, 19.190159>,  <11.007762, 14.617909, 19.293905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.042749, 15.002633, 19.190159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579790, 0.260875, 0.771873,
		0.810057, 0.082863, 0.580466,
		0.087469, 0.961810, -0.259367,
		11.068990, 15.291176, 19.112349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.108639, 13.994617, 19.416571>,  <11.007762, 14.617909, 19.293905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.108639, 13.994617, 19.416571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.750544, 13.820761, 19.377296>,  <10.535686, 13.716448, 19.353731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.750544, 13.820761, 19.377296>,  <11.108639, 13.994617, 19.416571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.750544, 13.820761, 19.377296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296137, -0.415699, -0.859941,
		0.332948, -0.798927, 0.500861,
		-0.895237, -0.434639, -0.098186,
		10.481973, 13.690370, 19.347841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.262127, 13.341906, 19.460142>,  <11.108639, 13.994617, 19.416571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.262127, 13.341906, 19.460142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.919216, 13.375884, 19.257023>,  <10.713470, 13.396271, 19.135151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.919216, 13.375884, 19.257023>,  <11.262127, 13.341906, 19.460142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.919216, 13.375884, 19.257023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310319, -0.701758, -0.641278,
		-0.410826, -0.707332, 0.575241,
		-0.857277, 0.084946, -0.507799,
		10.662033, 13.401368, 19.104683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.206406, 12.735432, 19.129740>,  <11.262127, 13.341906, 19.460142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.206406, 12.735432, 19.129740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.934958, 12.942108, 18.920931>,  <10.772089, 13.066113, 18.795647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.934958, 12.942108, 18.920931>,  <11.206406, 12.735432, 19.129740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.934958, 12.942108, 18.920931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203449, -0.550682, -0.809541,
		-0.705751, -0.655575, 0.268583,
		-0.678619, 0.516692, -0.522021,
		10.731371, 13.097116, 18.764324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.835958, 12.304150, 18.870060>,  <11.206406, 12.735432, 19.129740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.835958, 12.304150, 18.870060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.766905, 12.614460, 18.627287>,  <10.725472, 12.800646, 18.481623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.766905, 12.614460, 18.627287>,  <10.835958, 12.304150, 18.870060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.766905, 12.614460, 18.627287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159737, -0.585979, -0.794426,
		-0.971947, -0.234095, -0.022760,
		-0.172634, 0.775776, -0.606934,
		10.715115, 12.847193, 18.445208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.509506, 11.961744, 18.314827>,  <10.835958, 12.304150, 18.870060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.509506, 11.961744, 18.314827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.640089, 12.323645, 18.205389>,  <10.718438, 12.540785, 18.139727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.640089, 12.323645, 18.205389>,  <10.509506, 11.961744, 18.314827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.640089, 12.323645, 18.205389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413101, -0.396912, -0.819639,
		-0.850161, 0.154554, -0.503328,
		0.326456, 0.904751, -0.273593,
		10.738026, 12.595070, 18.123312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.241739, 12.088209, 17.603216>,  <10.509506, 11.961744, 18.314827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.241739, 12.088209, 17.603216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584575, 12.293108, 17.625134>,  <10.790276, 12.416047, 17.638283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584575, 12.293108, 17.625134>,  <10.241739, 12.088209, 17.603216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.584575, 12.293108, 17.625134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241550, -0.305648, -0.920996,
		-0.455031, 0.802609, -0.385701,
		0.857088, 0.512248, 0.054791,
		10.841702, 12.446782, 17.641571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.510269, 11.979081, 16.995470>,  <10.241739, 12.088209, 17.603216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.510269, 11.979081, 16.995470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.797067, 12.222364, 17.131706>,  <10.969145, 12.368335, 17.213448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.797067, 12.222364, 17.131706>,  <10.510269, 11.979081, 16.995470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.797067, 12.222364, 17.131706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504847, -0.116152, -0.855359,
		-0.480676, 0.785233, -0.390332,
		0.716994, 0.608209, 0.340591,
		11.012165, 12.404827, 17.233883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.613812, 12.467957, 16.498535>,  <10.510269, 11.979081, 16.995470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.613812, 12.467957, 16.498535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.953108, 12.496114, 16.708502>,  <11.156685, 12.513008, 16.834482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.953108, 12.496114, 16.708502>,  <10.613812, 12.467957, 16.498535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.953108, 12.496114, 16.708502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524446, 0.026485, -0.851032,
		-0.073809, 0.997168, -0.014451,
		0.848239, 0.070392, 0.524915,
		11.207580, 12.517232, 16.865976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.975999, 13.001799, 16.242443>,  <10.613812, 12.467957, 16.498535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.975999, 13.001799, 16.242443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239969, 12.749204, 16.405279>,  <11.398352, 12.597647, 16.502981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239969, 12.749204, 16.405279>,  <10.975999, 13.001799, 16.242443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.239969, 12.749204, 16.405279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497562, -0.038663, -0.866567,
		0.562965, 0.774422, 0.288689,
		0.659926, -0.631487, 0.407088,
		11.437947, 12.559757, 16.527405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.615302, 13.204240, 15.877361>,  <10.975999, 13.001799, 16.242443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.615302, 13.204240, 15.877361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.672712, 12.849221, 16.052477>,  <11.707159, 12.636209, 16.157547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.672712, 12.849221, 16.052477>,  <11.615302, 13.204240, 15.877361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.672712, 12.849221, 16.052477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449558, -0.335622, -0.827802,
		0.881645, 0.315623, 0.350833,
		0.143526, -0.887547, 0.437790,
		11.715771, 12.582957, 16.183813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.323256, 13.079181, 15.630041>,  <11.615302, 13.204240, 15.877361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.323256, 13.079181, 15.630041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.138436, 12.738917, 15.730353>,  <12.027544, 12.534760, 15.790541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.138436, 12.738917, 15.730353>,  <12.323256, 13.079181, 15.630041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.138436, 12.738917, 15.730353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467909, -0.474046, -0.745883,
		0.753373, -0.227293, 0.617063,
		-0.462050, -0.850658, 0.250781,
		11.999822, 12.483720, 15.805588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823442, 12.577306, 15.550783>,  <12.323256, 13.079181, 15.630041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823442, 12.577306, 15.550783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.470970, 12.389414, 15.529322>,  <12.259487, 12.276679, 15.516445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.470970, 12.389414, 15.529322>,  <12.823442, 12.577306, 15.550783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.470970, 12.389414, 15.529322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309289, -0.486901, -0.816864,
		0.357582, -0.736397, 0.574329,
		-0.881178, -0.469730, -0.053653,
		12.206616, 12.248495, 15.513226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.952715, 11.832658, 15.504709>,  <12.823442, 12.577306, 15.550783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.952715, 11.832658, 15.504709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604493, 11.956907, 15.352055>,  <12.395559, 12.031457, 15.260462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604493, 11.956907, 15.352055>,  <12.952715, 11.832658, 15.504709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604493, 11.956907, 15.352055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272210, -0.342088, -0.899376,
		-0.409923, -0.886841, 0.213251,
		-0.870555, 0.310626, -0.381636,
		12.343327, 12.050095, 15.237564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.600643, 11.233479, 15.112659>,  <12.952715, 11.832658, 15.504709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.600643, 11.233479, 15.112659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.473674, 11.583228, 14.965848>,  <12.397492, 11.793078, 14.877761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.473674, 11.583228, 14.965848>,  <12.600643, 11.233479, 15.112659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.473674, 11.583228, 14.965848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258077, -0.292783, -0.920692,
		-0.912490, -0.386971, -0.132720,
		-0.317424, 0.874375, -0.367030,
		12.378447, 11.845541, 14.855739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.842038, 10.754580, 15.681092>,  <12.600643, 11.233479, 15.112659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.842038, 10.754580, 15.681092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.813107, 10.442091, 15.433074>,  <12.795749, 10.254597, 15.284263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.813107, 10.442091, 15.433074>,  <12.842038, 10.754580, 15.681092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.813107, 10.442091, 15.433074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919912, -0.292472, 0.261195,
		-0.385398, -0.551496, 0.739811,
		-0.072326, -0.781225, -0.620046,
		12.791409, 10.207724, 15.247060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.124642, 10.314936, 16.117682>,  <12.842038, 10.754580, 15.681092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.124642, 10.314936, 16.117682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966698, 10.129646, 16.435047>,  <12.871931, 10.018473, 16.625467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966698, 10.129646, 16.435047>,  <13.124642, 10.314936, 16.117682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.966698, 10.129646, 16.435047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575152, 0.798065, 0.179702,
		-0.716439, -0.385377, -0.581549,
		-0.394861, -0.463225, 0.793415,
		12.848239, 9.990679, 16.673071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.707031, 10.583232, 16.226555>,  <13.124642, 10.314936, 16.117682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.707031, 10.583232, 16.226555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.070826, 10.594790, 16.392447>,  <14.289103, 10.601724, 16.491982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.070826, 10.594790, 16.392447>,  <13.707031, 10.583232, 16.226555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.070826, 10.594790, 16.392447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401096, -0.201393, 0.893623,
		0.109345, -0.979084, -0.171574,
		0.909487, 0.028895, 0.414728,
		14.343672, 10.603457, 16.516865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.729248, 10.032225, 16.788132>,  <13.707031, 10.583232, 16.226555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.729248, 10.032225, 16.788132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.032205, 10.283332, 16.859982>,  <14.213979, 10.433996, 16.903091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.032205, 10.283332, 16.859982>,  <13.729248, 10.032225, 16.788132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.032205, 10.283332, 16.859982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242670, 0.015228, 0.969989,
		0.606193, -0.778251, 0.163874,
		0.757391, 0.627769, 0.179627,
		14.259422, 10.471663, 16.913870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.957939, 9.740547, 17.394279>,  <13.729248, 10.032225, 16.788132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.957939, 9.740547, 17.394279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.048550, 10.129888, 17.380001>,  <14.102916, 10.363492, 17.371433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.048550, 10.129888, 17.380001>,  <13.957939, 9.740547, 17.394279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.048550, 10.129888, 17.380001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392718, 0.124812, 0.911150,
		0.891324, -0.192381, 0.410526,
		0.226527, 0.973350, -0.035696,
		14.116508, 10.421893, 17.369291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.330675, 9.917092, 17.961727>,  <13.957939, 9.740547, 17.394279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.330675, 9.917092, 17.961727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.173601, 10.265204, 17.842793>,  <14.079356, 10.474072, 17.771431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.173601, 10.265204, 17.842793>,  <14.330675, 9.917092, 17.961727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.173601, 10.265204, 17.842793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384949, 0.138082, 0.912550,
		0.835232, 0.472805, 0.280791,
		-0.392686, 0.870281, -0.297336,
		14.055796, 10.526289, 17.753592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478655, 10.367421, 18.535830>,  <14.330675, 9.917092, 17.961727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478655, 10.367421, 18.535830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.185582, 10.538985, 18.324467>,  <14.009739, 10.641924, 18.197649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.185582, 10.538985, 18.324467>,  <14.478655, 10.367421, 18.535830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.185582, 10.538985, 18.324467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521584, 0.144869, 0.840811,
		0.437183, 0.891655, 0.117570,
		-0.732681, 0.428911, -0.528407,
		13.965778, 10.667659, 18.165945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328365, 10.963354, 18.966461>,  <14.478655, 10.367421, 18.535830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.328365, 10.963354, 18.966461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.002001, 10.903654, 18.743029>,  <13.806182, 10.867834, 18.608969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.002001, 10.903654, 18.743029>,  <14.328365, 10.963354, 18.966461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.002001, 10.903654, 18.743029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532929, -0.180532, 0.826677,
		-0.224223, 0.972180, 0.067759,
		-0.815911, -0.149249, -0.558582,
		13.757227, 10.858879, 18.575455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.038100, 11.684839, 19.029387>,  <14.328365, 10.963354, 18.966461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.038100, 11.684839, 19.029387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801054, 11.391520, 18.896072>,  <13.658826, 11.215528, 18.816084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801054, 11.391520, 18.896072>,  <14.038100, 11.684839, 19.029387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801054, 11.391520, 18.896072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266843, -0.211674, 0.940207,
		-0.760001, 0.646116, -0.070235,
		-0.592616, -0.733300, -0.333284,
		13.623269, 11.171530, 18.796087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.642755, 11.712480, 19.588125>,  <14.038100, 11.684839, 19.029387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.642755, 11.712480, 19.588125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500775, 11.392509, 19.394577>,  <13.415588, 11.200527, 19.278448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500775, 11.392509, 19.394577>,  <13.642755, 11.712480, 19.588125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.500775, 11.392509, 19.394577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457163, -0.302955, 0.836194,
		-0.815484, 0.518013, -0.258163,
		-0.354947, -0.799926, -0.483871,
		13.394291, 11.152532, 19.249416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957122, 11.728353, 19.785622>,  <13.642755, 11.712480, 19.588125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.957122, 11.728353, 19.785622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052927, 11.347846, 19.707930>,  <13.110410, 11.119542, 19.661314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052927, 11.347846, 19.707930>,  <12.957122, 11.728353, 19.785622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.052927, 11.347846, 19.707930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394008, -0.278074, 0.876032,
		-0.887351, -0.133293, -0.441409,
		0.239513, -0.951267, -0.194231,
		13.124781, 11.062466, 19.649660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293446, 11.280107, 19.815424>,  <12.957122, 11.728353, 19.785622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293446, 11.280107, 19.815424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.612126, 11.044611, 19.870049>,  <12.803335, 10.903314, 19.902824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.612126, 11.044611, 19.870049>,  <12.293446, 11.280107, 19.815424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.612126, 11.044611, 19.870049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436130, -0.403624, 0.804287,
		-0.418396, -0.700337, -0.578336,
		0.796703, -0.588741, 0.136564,
		12.851137, 10.867989, 19.911016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.989979, 10.591681, 20.105846>,  <12.293446, 11.280107, 19.815424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.989979, 10.591681, 20.105846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.377703, 10.592802, 20.204178>,  <12.610337, 10.593475, 20.263176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.377703, 10.592802, 20.204178>,  <11.989979, 10.591681, 20.105846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.377703, 10.592802, 20.204178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223371, -0.407627, 0.885407,
		0.102690, -0.913144, -0.394490,
		0.969309, 0.002805, 0.245829,
		12.668495, 10.593643, 20.277927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.058647, 9.944782, 20.456469>,  <11.989979, 10.591681, 20.105846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.058647, 9.944782, 20.456469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371916, 10.168055, 20.566067>,  <12.559877, 10.302018, 20.631826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371916, 10.168055, 20.566067>,  <12.058647, 9.944782, 20.456469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.371916, 10.168055, 20.566067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078820, -0.347975, 0.934184,
		0.616789, -0.753224, -0.228529,
		0.783172, 0.558182, 0.273997,
		12.606868, 10.335509, 20.648266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358299, 9.578987, 20.929142>,  <12.058647, 9.944782, 20.456469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.358299, 9.578987, 20.929142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509851, 9.943931, 20.991179>,  <12.600782, 10.162896, 21.028400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509851, 9.943931, 20.991179>,  <12.358299, 9.578987, 20.929142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.509851, 9.943931, 20.991179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221131, -0.073482, 0.972472,
		0.898639, -0.402746, 0.173909,
		0.378879, 0.912358, 0.155094,
		12.623515, 10.217638, 21.037706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.779459, 9.544382, 21.562365>,  <12.358299, 9.578987, 20.929142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.779459, 9.544382, 21.562365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.695913, 9.930974, 21.502644>,  <12.645785, 10.162930, 21.466810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.695913, 9.930974, 21.502644>,  <12.779459, 9.544382, 21.562365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.695913, 9.930974, 21.502644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252728, 0.094140, 0.962947,
		0.944724, 0.238859, 0.224594,
		-0.208865, 0.966480, -0.149303,
		12.633254, 10.220918, 21.457853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.178291, 9.918080, 22.066280>,  <12.779459, 9.544382, 21.562365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.178291, 9.918080, 22.066280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.870739, 10.148849, 21.956020>,  <12.686208, 10.287310, 21.889864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.870739, 10.148849, 21.956020>,  <13.178291, 9.918080, 22.066280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.870739, 10.148849, 21.956020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275736, 0.089786, 0.957031,
		0.576881, 0.811850, 0.090044,
		-0.768881, 0.576922, -0.275652,
		12.640075, 10.321925, 21.873325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.230643, 10.545002, 22.555403>,  <13.178291, 9.918080, 22.066280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.230643, 10.545002, 22.555403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.868738, 10.539034, 22.385139>,  <12.651595, 10.535453, 22.282982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.868738, 10.539034, 22.385139>,  <13.230643, 10.545002, 22.555403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.868738, 10.539034, 22.385139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370595, 0.520135, 0.769493,
		0.209917, 0.853954, -0.476128,
		-0.904762, -0.014921, -0.425657,
		12.597310, 10.534557, 22.257442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999103, 11.249742, 22.550812>,  <13.230643, 10.545002, 22.555403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999103, 11.249742, 22.550812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656635, 11.044042, 22.530712>,  <12.451155, 10.920622, 22.518652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656635, 11.044042, 22.530712>,  <12.999103, 11.249742, 22.550812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.656635, 11.044042, 22.530712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329288, 0.468100, 0.820032,
		-0.398179, 0.718631, -0.570108,
		-0.856168, -0.514249, -0.050249,
		12.399785, 10.889767, 22.515638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.297152, 11.699872, 22.495153>,  <12.999103, 11.249742, 22.550812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.297152, 11.699872, 22.495153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.242166, 11.339886, 22.660641>,  <12.209174, 11.123894, 22.759933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.242166, 11.339886, 22.660641>,  <12.297152, 11.699872, 22.495153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.242166, 11.339886, 22.660641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304911, 0.435851, 0.846796,
		-0.942408, -0.009743, -0.334324,
		-0.137465, -0.899966, 0.413720,
		12.200926, 11.069896, 22.784758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600496, 11.722469, 22.724339>,  <12.297152, 11.699872, 22.495153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600496, 11.722469, 22.724339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775619, 11.425369, 22.926979>,  <11.880692, 11.247109, 23.048563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.775619, 11.425369, 22.926979>,  <11.600496, 11.722469, 22.724339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.775619, 11.425369, 22.926979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257300, 0.436398, 0.862179,
		-0.861465, -0.507816, -0.000052,
		0.437806, -0.742751, 0.506603,
		11.906960, 11.202544, 23.078960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.155489, 11.634584, 23.362919>,  <11.600496, 11.722469, 22.724339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.155489, 11.634584, 23.362919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462862, 11.408038, 23.482075>,  <11.647286, 11.272110, 23.553568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.462862, 11.408038, 23.482075>,  <11.155489, 11.634584, 23.362919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.462862, 11.408038, 23.482075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180003, 0.255410, 0.949929,
		-0.614092, -0.783578, 0.094318,
		0.768433, -0.566366, 0.297892,
		11.693392, 11.238129, 23.571442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.937006, 11.246201, 23.996807>,  <11.155489, 11.634584, 23.362919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.937006, 11.246201, 23.996807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336083, 11.230619, 24.019039>,  <11.575530, 11.221271, 24.032379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336083, 11.230619, 24.019039>,  <10.937006, 11.246201, 23.996807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.336083, 11.230619, 24.019039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044995, 0.233475, 0.971321,
		-0.050814, -0.971582, 0.231184,
		0.997694, -0.038954, 0.055581,
		11.635391, 11.218933, 24.035713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.034184, 10.883405, 24.517685>,  <10.937006, 11.246201, 23.996807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.034184, 10.883405, 24.517685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372417, 11.088664, 24.458803>,  <11.575357, 11.211820, 24.423473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372417, 11.088664, 24.458803>,  <11.034184, 10.883405, 24.517685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.372417, 11.088664, 24.458803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044730, 0.206671, 0.977387,
		0.531966, -0.833047, 0.151805,
		0.845583, 0.513147, -0.147204,
		11.626092, 11.242608, 24.414642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.731157, 10.511792, 24.911316>,  <11.034184, 10.883405, 24.517685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.731157, 10.511792, 24.911316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.784739, 10.905828, 24.868134>,  <11.816887, 11.142250, 24.842224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.784739, 10.905828, 24.868134>,  <11.731157, 10.511792, 24.911316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.784739, 10.905828, 24.868134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232197, 0.074707, 0.969796,
		0.963401, -0.154974, -0.218728,
		0.133952, 0.985090, -0.107957,
		11.824924, 11.201355, 24.835747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.242021, 10.604864, 25.381641>,  <11.731157, 10.511792, 24.911316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.242021, 10.604864, 25.381641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.137727, 10.979925, 25.289707>,  <12.075150, 11.204962, 25.234547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.137727, 10.979925, 25.289707>,  <12.242021, 10.604864, 25.381641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.137727, 10.979925, 25.289707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255731, 0.296648, 0.920110,
		0.930924, 0.181129, -0.317133,
		-0.260735, 0.937653, -0.229836,
		12.059506, 11.261221, 25.220757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.734596, 11.055490, 25.735760>,  <12.242021, 10.604864, 25.381641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.734596, 11.055490, 25.735760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.425397, 11.292415, 25.644861>,  <12.239878, 11.434569, 25.590322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.425397, 11.292415, 25.644861>,  <12.734596, 11.055490, 25.735760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.425397, 11.292415, 25.644861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052821, 0.417050, 0.907348,
		0.632206, 0.689374, -0.353665,
		-0.772998, 0.592312, -0.227248,
		12.193498, 11.470108, 25.576687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.911961, 11.711950, 25.892391>,  <12.734596, 11.055490, 25.735760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.911961, 11.711950, 25.892391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.511961, 11.712031, 25.892408>,  <12.271961, 11.712080, 25.892418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.511961, 11.712031, 25.892408>,  <12.911961, 11.711950, 25.892391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.511961, 11.712031, 25.892408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000140, 0.507302, 0.861768,
		0.000153, 0.861768, -0.507302,
		-1.000000, 0.000203, 0.000043,
		12.211961, 11.712092, 25.892422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
