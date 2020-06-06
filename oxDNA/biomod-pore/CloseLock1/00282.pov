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
	<24.588722, 35.049168, 34.661114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255238, 35.130108, 34.866631>,  <24.055147, 35.178673, 34.989941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255238, 35.130108, 34.866631>,  <24.588722, 35.049168, 34.661114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255238, 35.130108, 34.866631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109838, -0.851076, 0.513425,
		0.541168, 0.484481, 0.687325,
		-0.833710, 0.202355, 0.513790,
		24.005125, 35.190815, 35.020767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601540, 35.815098, 34.947197>,  <24.588722, 35.049168, 34.661114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601540, 35.815098, 34.947197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397038, 36.127777, 35.090061>,  <24.274336, 36.315384, 35.175777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397038, 36.127777, 35.090061>,  <24.601540, 35.815098, 34.947197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397038, 36.127777, 35.090061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404967, -0.585666, 0.702138,
		0.758036, 0.214336, 0.615988,
		-0.511257, 0.781700, 0.357157,
		24.243660, 36.362286, 35.197208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746031, 35.999660, 35.661671>,  <24.601540, 35.815098, 34.947197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746031, 35.999660, 35.661671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373196, 36.104637, 35.561798>,  <24.149494, 36.167622, 35.501877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373196, 36.104637, 35.561798>,  <24.746031, 35.999660, 35.661671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373196, 36.104637, 35.561798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356058, -0.537044, 0.764727,
		0.066607, 0.801692, 0.594015,
		-0.932087, 0.262440, -0.249678,
		24.093569, 36.183369, 35.486897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513531, 36.023067, 35.988014>,  <24.746031, 35.999660, 35.661671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513531, 36.023067, 35.988014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463043, 36.171318, 36.356079>,  <25.432751, 36.260269, 36.576920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463043, 36.171318, 36.356079>,  <25.513531, 36.023067, 35.988014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463043, 36.171318, 36.356079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417588, 0.821544, -0.388183,
		-0.899827, -0.433246, 0.051075,
		-0.126218, 0.370626, 0.920166,
		25.425179, 36.282505, 36.632130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248190, 35.726871, 36.321724>,  <25.513531, 36.023067, 35.988014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248190, 35.726871, 36.321724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595451, 35.838161, 36.157333>,  <26.803808, 35.904938, 36.058701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595451, 35.838161, 36.157333>,  <26.248190, 35.726871, 36.321724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595451, 35.838161, 36.157333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020915, -0.847858, -0.529811,
		-0.495859, 0.451360, -0.741888,
		0.868151, 0.278228, -0.410977,
		26.855896, 35.921631, 36.034039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233240, 35.596539, 35.608742>,  <26.248190, 35.726871, 36.321724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233240, 35.596539, 35.608742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621134, 35.605587, 35.705986>,  <26.853870, 35.611015, 35.764332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621134, 35.605587, 35.705986>,  <26.233240, 35.596539, 35.608742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621134, 35.605587, 35.705986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122234, -0.906913, -0.403196,
		0.211362, 0.420710, -0.882230,
		0.969735, 0.022618, 0.243112,
		26.912054, 35.612373, 35.778919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574139, 35.404102, 35.091042>,  <26.233240, 35.596539, 35.608742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574139, 35.404102, 35.091042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814157, 35.296120, 35.392258>,  <26.958168, 35.231331, 35.572987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814157, 35.296120, 35.392258>,  <26.574139, 35.404102, 35.091042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814157, 35.296120, 35.392258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095063, -0.910607, -0.402191,
		0.794298, 0.312920, -0.520742,
		0.600045, -0.269956, 0.753040,
		26.994171, 35.215134, 35.618168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080521, 35.034985, 34.754478>,  <26.574139, 35.404102, 35.091042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080521, 35.034985, 34.754478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101749, 34.927650, 35.139225>,  <27.114487, 34.863251, 35.370071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101749, 34.927650, 35.139225>,  <27.080521, 35.034985, 34.754478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101749, 34.927650, 35.139225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268324, -0.923965, -0.272564,
		0.961866, 0.272557, 0.022962,
		0.053073, -0.268331, 0.961864,
		27.117672, 34.847153, 35.427784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749083, 34.740353, 34.886219>,  <27.080521, 35.034985, 34.754478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749083, 34.740353, 34.886219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528353, 34.592163, 35.185081>,  <27.395914, 34.503250, 35.364399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528353, 34.592163, 35.185081>,  <27.749083, 34.740353, 34.886219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528353, 34.592163, 35.185081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335431, -0.918846, -0.207867,
		0.763527, 0.135911, 0.631312,
		-0.551827, -0.370473, 0.747153,
		27.362804, 34.481022, 35.409225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246101, 34.243134, 35.325176>,  <27.749083, 34.740353, 34.886219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246101, 34.243134, 35.325176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875750, 34.112259, 35.400749>,  <27.653538, 34.033733, 35.446095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875750, 34.112259, 35.400749>,  <28.246101, 34.243134, 35.325176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875750, 34.112259, 35.400749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282251, -0.931410, -0.229805,
		0.251163, -0.159446, 0.954722,
		-0.925879, -0.327190, 0.188931,
		27.597986, 34.014103, 35.457428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426701, 33.586742, 35.509529>,  <28.246101, 34.243134, 35.325176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426701, 33.586742, 35.509529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027044, 33.596157, 35.495869>,  <27.787251, 33.601807, 35.487671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027044, 33.596157, 35.495869>,  <28.426701, 33.586742, 35.509529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027044, 33.596157, 35.495869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012196, -0.953725, -0.300435,
		-0.039641, -0.299760, 0.953191,
		-0.999140, 0.023535, -0.034151,
		27.727303, 33.603218, 35.485622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196016, 33.090042, 35.964001>,  <28.426701, 33.586742, 35.509529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196016, 33.090042, 35.964001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950268, 33.160240, 35.656300>,  <27.802818, 33.202358, 35.471680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950268, 33.160240, 35.656300>,  <28.196016, 33.090042, 35.964001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950268, 33.160240, 35.656300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051547, -0.963940, -0.261078,
		-0.787330, -0.200051, 0.583173,
		-0.614373, 0.175494, -0.769251,
		27.765955, 33.212887, 35.425526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850372, 32.484192, 35.896809>,  <28.196016, 33.090042, 35.964001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850372, 32.484192, 35.896809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803738, 32.659557, 35.540337>,  <27.775757, 32.764774, 35.326454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803738, 32.659557, 35.540337>,  <27.850372, 32.484192, 35.896809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803738, 32.659557, 35.540337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110738, -0.885967, -0.450332,
		-0.986988, -0.151189, 0.054742,
		-0.116584, 0.438410, -0.891182,
		27.768763, 32.791080, 35.272984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341053, 32.060909, 35.568459>,  <27.850372, 32.484192, 35.896809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341053, 32.060909, 35.568459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542252, 32.261395, 35.286812>,  <27.662970, 32.381687, 35.117825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542252, 32.261395, 35.286812>,  <27.341053, 32.060909, 35.568459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542252, 32.261395, 35.286812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160497, -0.854676, -0.493731,
		-0.849257, 0.135335, -0.510341,
		0.502995, 0.501213, -0.704118,
		27.693150, 32.411758, 35.075577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142620, 31.762602, 34.961838>,  <27.341053, 32.060909, 35.568459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142620, 31.762602, 34.961838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466028, 31.980438, 34.872650>,  <27.660072, 32.111141, 34.819138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466028, 31.980438, 34.872650>,  <27.142620, 31.762602, 34.961838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466028, 31.980438, 34.872650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406833, -0.791052, -0.456863,
		-0.425184, 0.278671, -0.861139,
		0.808520, 0.544590, -0.222970,
		27.708584, 32.143814, 34.805759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073853, 31.842323, 34.226017>,  <27.142620, 31.762602, 34.961838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073853, 31.842323, 34.226017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447701, 31.842697, 34.368275>,  <27.672009, 31.842922, 34.453629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447701, 31.842697, 34.368275>,  <27.073853, 31.842323, 34.226017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447701, 31.842697, 34.368275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199484, -0.829258, -0.522051,
		0.294437, 0.558865, -0.775227,
		0.934619, 0.000934, 0.355648,
		27.728086, 31.842978, 34.474968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404865, 31.614794, 33.722412>,  <27.073853, 31.842323, 34.226017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404865, 31.614794, 33.722412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671591, 31.576265, 34.018002>,  <27.831625, 31.553148, 34.195354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671591, 31.576265, 34.018002>,  <27.404865, 31.614794, 33.722412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671591, 31.576265, 34.018002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377321, -0.811477, -0.446245,
		0.642643, 0.576393, -0.504759,
		0.666812, -0.096320, 0.738975,
		27.871635, 31.547369, 34.239693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941298, 31.360523, 33.467762>,  <27.404865, 31.614794, 33.722412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941298, 31.360523, 33.467762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029272, 31.295135, 33.852451>,  <28.082056, 31.255903, 34.083263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029272, 31.295135, 33.852451>,  <27.941298, 31.360523, 33.467762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029272, 31.295135, 33.852451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430088, -0.868624, -0.245999,
		0.875587, 0.467729, -0.120735,
		0.219934, -0.163467, 0.961721,
		28.095253, 31.246096, 34.140968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542253, 31.184660, 33.365059>,  <27.941298, 31.360523, 33.467762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542253, 31.184660, 33.365059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407324, 31.048069, 33.715969>,  <28.326366, 30.966114, 33.926514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407324, 31.048069, 33.715969>,  <28.542253, 31.184660, 33.365059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407324, 31.048069, 33.715969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393678, -0.897662, -0.198042,
		0.855121, 0.278559, 0.437234,
		-0.337322, -0.341480, 0.877272,
		28.306128, 30.945625, 33.979149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177521, 30.875397, 33.707916>,  <28.542253, 31.184660, 33.365059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177521, 30.875397, 33.707916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852825, 30.708643, 33.871521>,  <28.658009, 30.608591, 33.969685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852825, 30.708643, 33.871521>,  <29.177521, 30.875397, 33.707916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852825, 30.708643, 33.871521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436909, -0.898203, -0.048386,
		0.387546, 0.139424, 0.911246,
		-0.811738, -0.416883, 0.409011,
		28.609304, 30.583578, 33.994225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489464, 30.297274, 34.144356>,  <29.177521, 30.875397, 33.707916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489464, 30.297274, 34.144356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101084, 30.217894, 34.090874>,  <28.868055, 30.170265, 34.058784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101084, 30.217894, 34.090874>,  <29.489464, 30.297274, 34.144356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101084, 30.217894, 34.090874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221578, -0.956598, -0.189269,
		-0.090339, -0.213396, 0.972780,
		-0.970949, -0.198449, -0.133702,
		28.809799, 30.158360, 34.050762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400633, 29.805729, 34.594555>,  <29.489464, 30.297274, 34.144356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400633, 29.805729, 34.594555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092421, 29.756004, 34.344490>,  <28.907494, 29.726170, 34.194450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092421, 29.756004, 34.344490>,  <29.400633, 29.805729, 34.594555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092421, 29.756004, 34.344490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156596, -0.987657, 0.003387,
		-0.617869, -0.095288, 0.780485,
		-0.770529, -0.124314, -0.625165,
		28.861261, 29.718710, 34.156940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030249, 29.162733, 34.782372>,  <29.400633, 29.805729, 34.594555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030249, 29.162733, 34.782372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927805, 29.225700, 34.400875>,  <28.866339, 29.263481, 34.171978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927805, 29.225700, 34.400875>,  <29.030249, 29.162733, 34.782372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927805, 29.225700, 34.400875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072483, -0.987001, -0.143442,
		-0.963927, 0.032394, 0.264188,
		-0.256107, 0.157417, -0.953745,
		28.850973, 29.272926, 34.114750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664793, 28.643414, 34.623943>,  <29.030249, 29.162733, 34.782372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664793, 28.643414, 34.623943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757088, 28.797712, 34.266628>,  <28.812466, 28.890291, 34.052238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757088, 28.797712, 34.266628>,  <28.664793, 28.643414, 34.623943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757088, 28.797712, 34.266628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196256, -0.917641, -0.345569,
		-0.953018, -0.095577, -0.287439,
		0.230738, 0.385745, -0.893286,
		28.826309, 28.913435, 33.998642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325645, 28.292305, 34.129620>,  <28.664793, 28.643414, 34.623943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325645, 28.292305, 34.129620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615383, 28.445858, 33.900547>,  <28.789225, 28.537989, 33.763103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615383, 28.445858, 33.900547>,  <28.325645, 28.292305, 34.129620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615383, 28.445858, 33.900547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267143, -0.922030, -0.280170,
		-0.635580, 0.049951, -0.770417,
		0.724343, 0.383882, -0.572680,
		28.832685, 28.561022, 33.728745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180534, 28.046997, 33.441658>,  <28.325645, 28.292305, 34.129620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180534, 28.046997, 33.441658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565275, 28.128021, 33.515205>,  <28.796120, 28.176636, 33.559334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565275, 28.128021, 33.515205>,  <28.180534, 28.046997, 33.441658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565275, 28.128021, 33.515205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240074, -0.947249, -0.212330,
		0.131159, 0.248372, -0.959744,
		0.961853, 0.202561, 0.183868,
		28.853830, 28.188789, 33.570366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718199, 28.059544, 32.823975>,  <28.180534, 28.046997, 33.441658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718199, 28.059544, 32.823975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815119, 27.939459, 33.193008>,  <28.873272, 27.867409, 33.414429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815119, 27.939459, 33.193008>,  <28.718199, 28.059544, 32.823975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815119, 27.939459, 33.193008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007025, -0.950353, -0.311093,
		0.970176, 0.081860, -0.228163,
		0.242302, -0.300212, 0.922585,
		28.887810, 27.849396, 33.469784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436003, 27.672251, 32.913116>,  <28.718199, 28.059544, 32.823975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436003, 27.672251, 32.913116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130121, 27.546406, 33.138058>,  <28.946592, 27.470898, 33.273022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130121, 27.546406, 33.138058>,  <29.436003, 27.672251, 32.913116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130121, 27.546406, 33.138058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223277, -0.948013, -0.226756,
		0.604462, -0.047840, 0.795196,
		-0.764705, -0.314614, 0.562356,
		28.900709, 27.452021, 33.306763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766283, 26.982294, 32.625839>,  <29.436003, 27.672251, 32.913116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766283, 26.982294, 32.625839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099768, 26.857233, 32.443775>,  <30.299858, 26.782196, 32.334538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099768, 26.857233, 32.443775>,  <29.766283, 26.982294, 32.625839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099768, 26.857233, 32.443775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486944, -0.027548, -0.872999,
		0.260408, 0.949467, -0.175213,
		0.833710, -0.312655, -0.455164,
		30.349880, 26.763437, 32.307224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786884, 27.078663, 33.385376>,  <29.766283, 26.982294, 32.625839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786884, 27.078663, 33.385376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570086, 26.754948, 33.294788>,  <29.440006, 26.560719, 33.240437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570086, 26.754948, 33.294788>,  <29.786884, 27.078663, 33.385376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570086, 26.754948, 33.294788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831957, -0.478660, -0.280594,
		0.118681, -0.340493, 0.932727,
		-0.541999, -0.809289, -0.226468,
		29.407486, 26.512161, 33.226849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186880, 26.471182, 33.486763>,  <29.786884, 27.078663, 33.385376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186880, 26.471182, 33.486763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928406, 26.290121, 33.240982>,  <29.773321, 26.181484, 33.093513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928406, 26.290121, 33.240982>,  <30.186880, 26.471182, 33.486763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928406, 26.290121, 33.240982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650674, -0.747513, -0.133600,
		-0.398836, -0.486137, 0.777561,
		-0.646184, -0.452654, -0.614451,
		29.734550, 26.154325, 33.056648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566034, 26.234285, 34.133408>,  <30.186880, 26.471182, 33.486763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566034, 26.234285, 34.133408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945711, 26.128187, 34.065670>,  <31.173517, 26.064529, 34.025028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945711, 26.128187, 34.065670>,  <30.566034, 26.234285, 34.133408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945711, 26.128187, 34.065670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308527, 0.678349, 0.666824,
		-0.061996, -0.685192, 0.725719,
		0.949193, -0.265244, -0.169345,
		31.230469, 26.048615, 34.014866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856066, 25.923107, 34.768318>,  <30.566034, 26.234285, 34.133408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856066, 25.923107, 34.768318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103798, 26.097168, 34.506916>,  <31.252438, 26.201605, 34.350075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103798, 26.097168, 34.506916>,  <30.856066, 25.923107, 34.768318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103798, 26.097168, 34.506916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270961, 0.662750, 0.698099,
		0.736893, -0.609429, 0.292550,
		0.619329, 0.435155, -0.653507,
		31.289597, 26.227715, 34.310863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098625, 26.401051, 35.339409>,  <30.856066, 25.923107, 34.768318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098625, 26.401051, 35.339409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141560, 26.496309, 34.953297>,  <31.167320, 26.553465, 34.721630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141560, 26.496309, 34.953297>,  <31.098625, 26.401051, 35.339409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141560, 26.496309, 34.953297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229713, 0.938679, 0.257125,
		0.967322, -0.249336, 0.046048,
		0.107335, 0.238145, -0.965280,
		31.173759, 26.567753, 34.663712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667957, 26.826756, 35.295387>,  <31.098625, 26.401051, 35.339409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667957, 26.826756, 35.295387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435879, 26.955994, 34.996326>,  <31.296631, 27.033537, 34.816891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435879, 26.955994, 34.996326>,  <31.667957, 26.826756, 35.295387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435879, 26.955994, 34.996326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184850, 0.946234, 0.265465,
		0.793222, 0.015819, -0.608728,
		-0.580199, 0.323096, -0.747649,
		31.261820, 27.052923, 34.772030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009048, 27.259716, 34.864075>,  <31.667957, 26.826756, 35.295387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009048, 27.259716, 34.864075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616491, 27.317732, 34.914398>,  <31.380957, 27.352541, 34.944592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616491, 27.317732, 34.914398>,  <32.009048, 27.259716, 34.864075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616491, 27.317732, 34.914398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177564, 0.934888, 0.307336,
		-0.073037, 0.323956, -0.943248,
		-0.981395, 0.145040, 0.125804,
		31.322073, 27.361244, 34.952141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855713, 27.947865, 34.591782>,  <32.009048, 27.259716, 34.864075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855713, 27.947865, 34.591782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553402, 27.850334, 34.834877>,  <31.372015, 27.791817, 34.980736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553402, 27.850334, 34.834877>,  <31.855713, 27.947865, 34.591782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553402, 27.850334, 34.834877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055240, 0.901045, 0.430194,
		-0.652496, 0.358702, -0.667520,
		-0.755777, -0.243826, 0.607742,
		31.326670, 27.777187, 35.017200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310823, 28.460300, 34.540264>,  <31.855713, 27.947865, 34.591782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310823, 28.460300, 34.540264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273127, 28.284407, 34.897533>,  <31.250509, 28.178869, 35.111893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273127, 28.284407, 34.897533>,  <31.310823, 28.460300, 34.540264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273127, 28.284407, 34.897533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185005, 0.889270, 0.418297,
		-0.978208, -0.125821, -0.165159,
		-0.094240, -0.439737, 0.893169,
		31.244854, 28.152485, 35.165485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806194, 28.795105, 34.806564>,  <31.310823, 28.460300, 34.540264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806194, 28.795105, 34.806564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966862, 28.626608, 35.131824>,  <31.063261, 28.525511, 35.326981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966862, 28.626608, 35.131824>,  <30.806194, 28.795105, 34.806564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966862, 28.626608, 35.131824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250344, 0.803604, 0.539953,
		-0.880904, -0.420449, 0.217326,
		0.401666, -0.421241, 0.813155,
		31.087362, 28.500237, 35.375771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277527, 28.842197, 35.306625>,  <30.806194, 28.795105, 34.806564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277527, 28.842197, 35.306625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621553, 28.797848, 35.505821>,  <30.827969, 28.771238, 35.625340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621553, 28.797848, 35.505821>,  <30.277527, 28.842197, 35.306625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621553, 28.797848, 35.505821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265834, 0.735734, 0.622919,
		-0.435454, -0.668133, 0.603305,
		0.860065, -0.110874, 0.497991,
		30.879574, 28.764585, 35.655220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080669, 28.906487, 35.982395>,  <30.277527, 28.842197, 35.306625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080669, 28.906487, 35.982395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472658, 28.985664, 35.991066>,  <30.707851, 29.033171, 35.996269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472658, 28.985664, 35.991066>,  <30.080669, 28.906487, 35.982395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472658, 28.985664, 35.991066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175457, 0.806869, 0.564071,
		0.094164, -0.556579, 0.825441,
		0.979974, 0.197945, 0.021678,
		30.766649, 29.045048, 35.997570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024736, 29.225307, 36.621258>,  <30.080669, 28.906487, 35.982395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024736, 29.225307, 36.621258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369198, 29.333906, 36.449348>,  <30.575874, 29.399065, 36.346203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369198, 29.333906, 36.449348>,  <30.024736, 29.225307, 36.621258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369198, 29.333906, 36.449348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160619, 0.947444, 0.276679,
		0.482304, -0.169233, 0.859502,
		0.861153, 0.271495, -0.429774,
		30.627544, 29.415356, 36.320415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336658, 29.682039, 37.191910>,  <30.024736, 29.225307, 36.621258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336658, 29.682039, 37.191910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524820, 29.776396, 36.851776>,  <30.637716, 29.833010, 36.647694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524820, 29.776396, 36.851776>,  <30.336658, 29.682039, 37.191910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524820, 29.776396, 36.851776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164280, 0.970174, 0.178255,
		0.867025, 0.055842, 0.495126,
		0.470404, 0.235891, -0.850339,
		30.665941, 29.847162, 36.596676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767340, 30.148149, 37.343155>,  <30.336658, 29.682039, 37.191910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767340, 30.148149, 37.343155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742123, 30.212559, 36.949181>,  <30.726994, 30.251204, 36.712795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742123, 30.212559, 36.949181>,  <30.767340, 30.148149, 37.343155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742123, 30.212559, 36.949181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034459, 0.985959, 0.163396,
		0.997416, 0.044241, -0.056608,
		-0.063042, 0.161023, -0.984935,
		30.723209, 30.260866, 36.653702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265484, 30.727718, 37.231667>,  <30.767340, 30.148149, 37.343155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265484, 30.727718, 37.231667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973244, 30.696741, 36.960308>,  <30.797899, 30.678154, 36.797493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973244, 30.696741, 36.960308>,  <31.265484, 30.727718, 37.231667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973244, 30.696741, 36.960308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142796, 0.988907, 0.040894,
		0.667706, 0.126750, -0.733555,
		-0.730601, -0.077444, -0.678399,
		30.754063, 30.673508, 36.756790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418358, 31.200697, 36.714901>,  <31.265484, 30.727718, 37.231667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418358, 31.200697, 36.714901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025454, 31.140802, 36.669754>,  <30.789711, 31.104866, 36.642666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025454, 31.140802, 36.669754>,  <31.418358, 31.200697, 36.714901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025454, 31.140802, 36.669754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157403, 0.985566, 0.062324,
		0.101903, 0.078984, -0.991654,
		-0.982263, -0.149739, -0.112865,
		30.730774, 31.095881, 36.635895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258944, 31.738256, 36.463280>,  <31.418358, 31.200697, 36.714901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258944, 31.738256, 36.463280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880363, 31.611883, 36.489864>,  <30.653215, 31.536058, 36.505814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880363, 31.611883, 36.489864>,  <31.258944, 31.738256, 36.463280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880363, 31.611883, 36.489864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321491, 0.903417, -0.283691,
		0.029586, -0.289866, -0.956610,
		-0.946450, -0.315935, 0.066461,
		30.596428, 31.517103, 36.509804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974676, 31.871639, 35.818230>,  <31.258944, 31.738256, 36.463280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974676, 31.871639, 35.818230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687651, 31.872684, 36.096825>,  <30.515436, 31.873312, 36.263981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687651, 31.872684, 36.096825>,  <30.974676, 31.871639, 35.818230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687651, 31.872684, 36.096825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315113, 0.890579, -0.327984,
		-0.621136, -0.454822, -0.638222,
		-0.717561, 0.002611, 0.696490,
		30.472382, 31.873468, 36.305771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337004, 31.994667, 35.516644>,  <30.974676, 31.871639, 35.818230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337004, 31.994667, 35.516644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293884, 32.080105, 35.905025>,  <30.268013, 32.131367, 36.138054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293884, 32.080105, 35.905025>,  <30.337004, 31.994667, 35.516644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293884, 32.080105, 35.905025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185724, 0.955127, -0.230735,
		-0.976671, -0.205204, -0.063293,
		-0.107801, 0.213597, 0.970956,
		30.261543, 32.144184, 36.196312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627386, 32.399948, 35.575573>,  <30.337004, 31.994667, 35.516644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627386, 32.399948, 35.575573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815506, 32.485329, 35.918095>,  <29.928377, 32.536556, 36.123608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815506, 32.485329, 35.918095>,  <29.627386, 32.399948, 35.575573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815506, 32.485329, 35.918095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277162, 0.956938, -0.086315,
		-0.837855, -0.196741, 0.509208,
		0.470299, 0.213453, 0.856304,
		29.956596, 32.549366, 36.174988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133215, 32.798233, 35.943069>,  <29.627386, 32.399948, 35.575573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133215, 32.798233, 35.943069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489948, 32.885151, 36.101772>,  <29.703987, 32.937302, 36.196995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489948, 32.885151, 36.101772>,  <29.133215, 32.798233, 35.943069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489948, 32.885151, 36.101772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287265, 0.949575, 0.125643,
		-0.349449, -0.226026, 0.909284,
		0.891832, 0.217299, 0.396757,
		29.757498, 32.950340, 36.220798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976774, 33.290825, 36.525887>,  <29.133215, 32.798233, 35.943069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976774, 33.290825, 36.525887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364370, 33.331211, 36.435677>,  <29.596928, 33.355442, 36.381550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364370, 33.331211, 36.435677>,  <28.976774, 33.290825, 36.525887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364370, 33.331211, 36.435677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103907, 0.994586, -0.001172,
		0.224187, 0.024569, 0.974236,
		0.968991, 0.100968, -0.225526,
		29.655067, 33.361500, 36.368019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311588, 33.934269, 36.930054>,  <28.976774, 33.290825, 36.525887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311588, 33.934269, 36.930054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541307, 33.842941, 36.615589>,  <29.679140, 33.788143, 36.426910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541307, 33.842941, 36.615589>,  <29.311588, 33.934269, 36.930054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541307, 33.842941, 36.615589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281944, 0.956733, -0.071896,
		0.768562, -0.180364, 0.613825,
		0.574299, -0.228320, -0.786162,
		29.713596, 33.774445, 36.379742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922701, 34.288456, 37.034607>,  <29.311588, 33.934269, 36.930054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922701, 34.288456, 37.034607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918919, 34.202656, 36.643936>,  <29.916649, 34.151176, 36.409534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918919, 34.202656, 36.643936>,  <29.922701, 34.288456, 37.034607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918919, 34.202656, 36.643936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273536, 0.938913, -0.208856,
		0.961815, -0.269131, 0.049797,
		-0.009455, -0.214502, -0.976678,
		29.916082, 34.138306, 36.350933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586273, 34.652538, 36.729538>,  <29.922701, 34.288456, 37.034607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586273, 34.652538, 36.729538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315712, 34.578114, 36.444481>,  <30.153376, 34.533459, 36.273445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315712, 34.578114, 36.444481>,  <30.586273, 34.652538, 36.729538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315712, 34.578114, 36.444481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184572, 0.893875, -0.408560,
		0.713031, -0.407885, -0.570277,
		-0.676402, -0.186059, -0.712645,
		30.112791, 34.522297, 36.230686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719002, 35.076408, 36.129261>,  <30.586273, 34.652538, 36.729538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719002, 35.076408, 36.129261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353935, 34.964359, 36.010220>,  <30.134895, 34.897129, 35.938793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353935, 34.964359, 36.010220>,  <30.719002, 35.076408, 36.129261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353935, 34.964359, 36.010220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035947, 0.780372, -0.624281,
		0.407118, -0.559063, -0.722290,
		-0.912668, -0.280120, -0.297607,
		30.080135, 34.880322, 35.920937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698717, 35.000549, 35.332970>,  <30.719002, 35.076408, 36.129261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698717, 35.000549, 35.332970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317270, 35.033764, 35.448708>,  <30.088402, 35.053692, 35.518150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317270, 35.033764, 35.448708>,  <30.698717, 35.000549, 35.332970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317270, 35.033764, 35.448708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124878, 0.765468, -0.631240,
		-0.273900, -0.638094, -0.719594,
		-0.953616, 0.083036, 0.289345,
		30.031185, 35.058674, 35.535511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867268, 34.316322, 35.701328>,  <30.698717, 35.000549, 35.332970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867268, 34.316322, 35.701328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201483, 34.336597, 35.920166>,  <31.402012, 34.348763, 36.051468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201483, 34.336597, 35.920166>,  <30.867268, 34.316322, 35.701328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201483, 34.336597, 35.920166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134140, -0.946784, 0.292587,
		0.532808, -0.317854, -0.784273,
		0.835537, 0.050690, 0.547091,
		31.452145, 34.351803, 36.084293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386877, 33.840267, 35.586567>,  <30.867268, 34.316322, 35.701328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386877, 33.840267, 35.586567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402208, 33.933395, 35.975273>,  <31.411407, 33.989273, 36.208496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402208, 33.933395, 35.975273>,  <31.386877, 33.840267, 35.586567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402208, 33.933395, 35.975273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098911, -0.968586, 0.228162,
		0.994358, 0.087372, -0.060154,
		0.038329, 0.232825, 0.971763,
		31.413708, 34.003242, 36.266804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140800, 33.576538, 35.964703>,  <31.386877, 33.840267, 35.586567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140800, 33.576538, 35.964703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796738, 33.603195, 36.166965>,  <31.590300, 33.619190, 36.288322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796738, 33.603195, 36.166965>,  <32.140800, 33.576538, 35.964703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796738, 33.603195, 36.166965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093240, -0.954170, 0.284370,
		0.501432, 0.291750, 0.814523,
		-0.860159, 0.066646, 0.505654,
		31.538691, 33.623188, 36.318661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290581, 33.527321, 36.679440>,  <32.140800, 33.576538, 35.964703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290581, 33.527321, 36.679440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926188, 33.384071, 36.597607>,  <31.707552, 33.298122, 36.548508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926188, 33.384071, 36.597607>,  <32.290581, 33.527321, 36.679440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926188, 33.384071, 36.597607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236388, -0.859835, 0.452554,
		-0.337981, 0.363907, 0.867952,
		-0.910983, -0.358127, -0.204584,
		31.652893, 33.276634, 36.536232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951937, 33.254341, 37.342560>,  <32.290581, 33.527321, 36.679440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951937, 33.254341, 37.342560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794357, 33.051598, 37.035862>,  <31.699810, 32.929951, 36.851845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794357, 33.051598, 37.035862>,  <31.951937, 33.254341, 37.342560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794357, 33.051598, 37.035862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068973, -0.848153, 0.525242,
		-0.916541, 0.154034, 0.369090,
		-0.393950, -0.506863, -0.766742,
		31.676172, 32.899540, 36.805840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336071, 32.794815, 37.422165>,  <31.951937, 33.254341, 37.342560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336071, 32.794815, 37.422165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567114, 32.644669, 37.132210>,  <31.705740, 32.554581, 36.958237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567114, 32.644669, 37.132210>,  <31.336071, 32.794815, 37.422165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567114, 32.644669, 37.132210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220887, -0.783008, 0.581470,
		-0.785872, -0.495974, -0.369344,
		0.577594, -0.375378, -0.724898,
		31.740396, 32.532059, 36.914742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070288, 32.128983, 37.248322>,  <31.336071, 32.794815, 37.422165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070288, 32.128983, 37.248322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465172, 32.168468, 37.198242>,  <31.702103, 32.192162, 37.168194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465172, 32.168468, 37.198242>,  <31.070288, 32.128983, 37.248322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465172, 32.168468, 37.198242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157438, -0.479684, 0.863201,
		0.025158, -0.871870, -0.489090,
		0.987208, 0.098718, -0.125198,
		31.761333, 32.198082, 37.160683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333544, 31.798603, 37.852646>,  <31.070288, 32.128983, 37.248322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333544, 31.798603, 37.852646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676580, 31.924511, 37.689938>,  <31.882402, 32.000057, 37.592312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676580, 31.924511, 37.689938>,  <31.333544, 31.798603, 37.852646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676580, 31.924511, 37.689938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513895, -0.491704, 0.702950,
		0.021260, -0.811878, -0.583440,
		0.857589, 0.314772, -0.406767,
		31.933857, 32.018944, 37.567909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832285, 31.180933, 37.868965>,  <31.333544, 31.798603, 37.852646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832285, 31.180933, 37.868965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069328, 31.500265, 37.826107>,  <32.211555, 31.691864, 37.800392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069328, 31.500265, 37.826107>,  <31.832285, 31.180933, 37.868965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069328, 31.500265, 37.826107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651640, -0.396974, 0.646357,
		0.473475, -0.452856, -0.755476,
		0.592610, 0.798332, -0.107142,
		32.247112, 31.739765, 37.793964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483135, 30.941742, 37.875118>,  <31.832285, 31.180933, 37.868965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483135, 30.941742, 37.875118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547504, 31.316654, 37.998802>,  <32.586128, 31.541601, 38.073013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547504, 31.316654, 37.998802>,  <32.483135, 30.941742, 37.875118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547504, 31.316654, 37.998802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398437, -0.348324, 0.848480,
		0.902968, -0.013343, -0.429501,
		0.160927, 0.937279, 0.309209,
		32.595783, 31.597837, 38.091564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240574, 30.991917, 38.083630>,  <32.483135, 30.941742, 37.875118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240574, 30.991917, 38.083630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007885, 31.259155, 38.269207>,  <32.868271, 31.419498, 38.380554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007885, 31.259155, 38.269207>,  <33.240574, 30.991917, 38.083630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007885, 31.259155, 38.269207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429306, -0.232277, 0.872779,
		0.690863, 0.706893, -0.151695,
		-0.581726, 0.668094, 0.463945,
		32.833366, 31.459583, 38.408390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689484, 31.168823, 38.609371>,  <33.240574, 30.991917, 38.083630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689484, 31.168823, 38.609371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331314, 31.309963, 38.717972>,  <33.116413, 31.394648, 38.783131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331314, 31.309963, 38.717972>,  <33.689484, 31.168823, 38.609371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331314, 31.309963, 38.717972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304440, 0.040306, 0.951678,
		0.324857, 0.934811, -0.143512,
		-0.895424, 0.352850, 0.271500,
		33.062687, 31.415819, 38.799423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932217, 31.589449, 39.052834>,  <33.689484, 31.168823, 38.609371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932217, 31.589449, 39.052834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556389, 31.505079, 39.160698>,  <33.330891, 31.454458, 39.225414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556389, 31.505079, 39.160698>,  <33.932217, 31.589449, 39.052834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556389, 31.505079, 39.160698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247084, 0.127409, 0.960581,
		-0.236965, 0.969164, -0.067594,
		-0.939573, -0.210923, 0.269657,
		33.274517, 31.441803, 39.241596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856197, 32.000694, 39.700680>,  <33.932217, 31.589449, 39.052834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856197, 32.000694, 39.700680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542534, 31.752750, 39.712502>,  <33.354336, 31.603985, 39.719593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542534, 31.752750, 39.712502>,  <33.856197, 32.000694, 39.700680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542534, 31.752750, 39.712502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124504, -0.110492, 0.986048,
		-0.607943, 0.776897, 0.163818,
		-0.784158, -0.619857, 0.029554,
		33.307285, 31.566793, 39.721367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421970, 32.322758, 40.151543>,  <33.856197, 32.000694, 39.700680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421970, 32.322758, 40.151543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338535, 31.932402, 40.125858>,  <33.288475, 31.698187, 40.110447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338535, 31.932402, 40.125858>,  <33.421970, 32.322758, 40.151543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338535, 31.932402, 40.125858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002009, -0.065227, 0.997868,
		-0.978002, 0.208270, 0.011645,
		-0.208586, -0.975894, -0.064211,
		33.275959, 31.639633, 40.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886768, 32.108284, 40.561241>,  <33.421970, 32.322758, 40.151543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886768, 32.108284, 40.561241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077152, 31.762838, 40.494759>,  <33.191383, 31.555571, 40.454868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077152, 31.762838, 40.494759>,  <32.886768, 32.108284, 40.561241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077152, 31.762838, 40.494759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080632, -0.231043, 0.969597,
		-0.875763, -0.448087, -0.179602,
		0.475959, -0.863618, -0.166209,
		33.219940, 31.503754, 40.444897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589577, 31.604986, 41.006004>,  <32.886768, 32.108284, 40.561241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589577, 31.604986, 41.006004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940662, 31.433264, 40.920856>,  <33.151314, 31.330231, 40.869770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940662, 31.433264, 40.920856>,  <32.589577, 31.604986, 41.006004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940662, 31.433264, 40.920856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045037, -0.368354, 0.928594,
		-0.477062, -0.824628, -0.303975,
		0.877715, -0.429307, -0.212867,
		33.203976, 31.304472, 40.856998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549587, 30.843014, 41.288170>,  <32.589577, 31.604986, 41.006004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549587, 30.843014, 41.288170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933849, 30.946684, 41.248230>,  <33.164406, 31.008886, 41.224266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933849, 30.946684, 41.248230>,  <32.549587, 30.843014, 41.288170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933849, 30.946684, 41.248230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215943, -0.470889, 0.855355,
		0.174673, -0.843262, -0.508329,
		0.960655, 0.259177, -0.099845,
		33.222046, 31.024437, 41.218277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891312, 30.312986, 41.626389>,  <32.549587, 30.843014, 41.288170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891312, 30.312986, 41.626389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193447, 30.574875, 41.615070>,  <33.374729, 30.732008, 41.608280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193447, 30.574875, 41.615070>,  <32.891312, 30.312986, 41.626389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193447, 30.574875, 41.615070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403522, -0.430646, 0.807288,
		0.516363, -0.621196, -0.589478,
		0.755341, 0.654721, -0.028297,
		33.420048, 30.771292, 41.606583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430641, 29.901676, 41.743126>,  <32.891312, 30.312986, 41.626389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430641, 29.901676, 41.743126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582825, 30.266722, 41.802979>,  <33.674133, 30.485748, 41.838890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582825, 30.266722, 41.802979>,  <33.430641, 29.901676, 41.743126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582825, 30.266722, 41.802979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414311, -0.312852, 0.854675,
		0.826801, -0.263172, -0.497132,
		0.380455, 0.912614, 0.149632,
		33.696960, 30.540506, 41.847870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063461, 29.760925, 41.900299>,  <33.430641, 29.901676, 41.743126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063461, 29.760925, 41.900299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954605, 30.113688, 42.054276>,  <33.889290, 30.325344, 42.146664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954605, 30.113688, 42.054276>,  <34.063461, 29.760925, 41.900299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954605, 30.113688, 42.054276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393904, -0.262888, 0.880755,
		0.877940, 0.391322, -0.275843,
		-0.272143, 0.881905, 0.384943,
		33.872963, 30.378260, 42.169758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583393, 29.700630, 42.446369>,  <34.063461, 29.760925, 41.900299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583393, 29.700630, 42.446369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324669, 29.999765, 42.506199>,  <34.169434, 30.179247, 42.542095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324669, 29.999765, 42.506199>,  <34.583393, 29.700630, 42.446369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324669, 29.999765, 42.506199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003083, -0.193560, 0.981084,
		0.762643, 0.635038, 0.122891,
		-0.646812, 0.747837, 0.149575,
		34.130627, 30.224117, 42.551071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906887, 30.225420, 42.894974>,  <34.583393, 29.700630, 42.446369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906887, 30.225420, 42.894974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509571, 30.230932, 42.940918>,  <34.271183, 30.234240, 42.968487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509571, 30.230932, 42.940918>,  <34.906887, 30.225420, 42.894974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509571, 30.230932, 42.940918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106768, -0.273089, 0.956046,
		0.044541, 0.961890, 0.269784,
		-0.993286, 0.013779, 0.114863,
		34.211586, 30.235065, 42.975376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812534, 30.504408, 43.530121>,  <34.906887, 30.225420, 42.894974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812534, 30.504408, 43.530121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450405, 30.342741, 43.477905>,  <34.233128, 30.245741, 43.446575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450405, 30.342741, 43.477905>,  <34.812534, 30.504408, 43.530121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450405, 30.342741, 43.477905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009250, -0.288515, 0.957431,
		-0.424625, 0.867991, 0.257460,
		-0.905322, -0.404168, -0.130539,
		34.178810, 30.221491, 43.438744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552635, 30.461081, 44.129078>,  <34.812534, 30.504408, 43.530121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552635, 30.461081, 44.129078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255955, 30.249907, 43.963589>,  <34.077946, 30.123201, 43.864296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255955, 30.249907, 43.963589>,  <34.552635, 30.461081, 44.129078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255955, 30.249907, 43.963589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236355, -0.371538, 0.897828,
		-0.627710, 0.763704, 0.150789,
		-0.741699, -0.527936, -0.413723,
		34.033443, 30.091526, 43.839470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055729, 30.684229, 44.660194>,  <34.552635, 30.461081, 44.129078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055729, 30.684229, 44.660194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937222, 30.348669, 44.477562>,  <33.866116, 30.147333, 44.367981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937222, 30.348669, 44.477562>,  <34.055729, 30.684229, 44.660194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937222, 30.348669, 44.477562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340537, -0.353847, 0.871106,
		-0.892333, 0.413568, -0.180842,
		-0.296271, -0.838900, -0.456585,
		33.848339, 30.096998, 44.340588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342762, 30.600599, 44.887260>,  <34.055729, 30.684229, 44.660194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342762, 30.600599, 44.887260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490044, 30.247284, 44.771172>,  <33.578411, 30.035295, 44.701519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490044, 30.247284, 44.771172>,  <33.342762, 30.600599, 44.887260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490044, 30.247284, 44.771172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383973, -0.428755, 0.817761,
		-0.846753, -0.189664, -0.497028,
		0.368203, -0.883288, -0.290224,
		33.600506, 29.982298, 44.684105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833790, 29.977409, 45.048607>,  <33.342762, 30.600599, 44.887260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833790, 29.977409, 45.048607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200489, 29.818380, 45.033081>,  <33.420509, 29.722963, 45.023766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200489, 29.818380, 45.033081>,  <32.833790, 29.977409, 45.048607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200489, 29.818380, 45.033081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174395, -0.485762, 0.856517,
		-0.359382, -0.778442, -0.514657,
		0.916750, -0.397571, -0.038818,
		33.475513, 29.699108, 45.021435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693459, 29.317799, 45.287991>,  <32.833790, 29.977409, 45.048607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693459, 29.317799, 45.287991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085548, 29.381447, 45.335049>,  <33.320801, 29.419636, 45.363281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085548, 29.381447, 45.335049>,  <32.693459, 29.317799, 45.287991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085548, 29.381447, 45.335049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043039, -0.408844, 0.911589,
		0.193149, -0.898626, -0.393910,
		0.980225, 0.159119, 0.117644,
		33.379616, 29.429182, 45.370342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873650, 28.748322, 45.639084>,  <32.693459, 29.317799, 45.287991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873650, 28.748322, 45.639084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195328, 28.979385, 45.695061>,  <33.388332, 29.118023, 45.728645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195328, 28.979385, 45.695061>,  <32.873650, 28.748322, 45.639084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195328, 28.979385, 45.695061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067360, -0.322504, 0.944168,
		0.590540, -0.749866, -0.298267,
		0.804192, 0.577660, 0.139940,
		33.436584, 29.152683, 45.737041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421497, 28.317606, 46.067299>,  <32.873650, 28.748322, 45.639084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421497, 28.317606, 46.067299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530361, 28.698858, 46.120171>,  <33.595680, 28.927610, 46.151894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530361, 28.698858, 46.120171>,  <33.421497, 28.317606, 46.067299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530361, 28.698858, 46.120171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186223, -0.186939, 0.964560,
		0.944061, -0.237897, -0.228371,
		0.272157, 0.953131, 0.132180,
		33.612007, 28.984798, 46.159824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086426, 28.346487, 46.490868>,  <33.421497, 28.317606, 46.067299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086426, 28.346487, 46.490868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892410, 28.694613, 46.525040>,  <33.776001, 28.903488, 46.545544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892410, 28.694613, 46.525040>,  <34.086426, 28.346487, 46.490868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892410, 28.694613, 46.525040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027047, -0.082719, 0.996206,
		0.874077, 0.485505, 0.016582,
		-0.485035, 0.870312, 0.085434,
		33.746899, 28.955706, 46.550671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543610, 28.673134, 46.981586>,  <34.086426, 28.346487, 46.490868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543610, 28.673134, 46.981586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191532, 28.862896, 46.975895>,  <33.980286, 28.976753, 46.972481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191532, 28.862896, 46.975895>,  <34.543610, 28.673134, 46.981586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191532, 28.862896, 46.975895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036905, -0.038514, 0.998576,
		0.473182, 0.879464, 0.051407,
		-0.880191, 0.474405, -0.014232,
		33.927475, 29.005219, 46.971626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617722, 29.299383, 47.321842>,  <34.543610, 28.673134, 46.981586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617722, 29.299383, 47.321842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231976, 29.195396, 47.341492>,  <34.000526, 29.133005, 47.353283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231976, 29.195396, 47.341492>,  <34.617722, 29.299383, 47.321842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231976, 29.195396, 47.341492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036686, 0.052488, 0.997947,
		-0.262012, 0.964190, -0.041081,
		-0.964367, -0.259967, 0.049125,
		33.942665, 29.117407, 47.356228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453239, 29.637152, 47.892044>,  <34.617722, 29.299383, 47.321842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453239, 29.637152, 47.892044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126080, 29.413132, 47.839298>,  <33.929783, 29.278719, 47.807652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126080, 29.413132, 47.839298>,  <34.453239, 29.637152, 47.892044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126080, 29.413132, 47.839298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060905, -0.143624, 0.987756,
		-0.572132, 0.815914, 0.083360,
		-0.817897, -0.560050, -0.131865,
		33.880711, 29.245117, 47.799740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916897, 29.964155, 48.273182>,  <34.453239, 29.637152, 47.892044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916897, 29.964155, 48.273182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893879, 29.568140, 48.221783>,  <33.880070, 29.330530, 48.190941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893879, 29.568140, 48.221783>,  <33.916897, 29.964155, 48.273182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893879, 29.568140, 48.221783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086466, -0.133174, 0.987314,
		-0.994591, 0.045705, 0.093268,
		-0.057546, -0.990038, -0.128502,
		33.876614, 29.271128, 48.183231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552494, 29.837542, 48.973969>,  <33.916897, 29.964155, 48.273182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552494, 29.837542, 48.973969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676453, 29.498257, 48.802155>,  <33.750828, 29.294685, 48.699066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676453, 29.498257, 48.802155>,  <33.552494, 29.837542, 48.973969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676453, 29.498257, 48.802155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402503, -0.292258, 0.867512,
		-0.861369, -0.441729, 0.250838,
		0.309896, -0.848210, -0.429539,
		33.769421, 29.243793, 48.673294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266613, 29.255661, 49.409161>,  <33.552494, 29.837542, 48.973969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266613, 29.255661, 49.409161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568851, 29.125387, 49.181828>,  <33.750195, 29.047222, 49.045429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568851, 29.125387, 49.181828>,  <33.266613, 29.255661, 49.409161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568851, 29.125387, 49.181828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535435, -0.192717, 0.822295,
		-0.377338, -0.925629, 0.028768,
		0.755596, -0.325686, -0.568334,
		33.795528, 29.027681, 49.011326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403797, 28.511467, 49.591404>,  <33.266613, 29.255661, 49.409161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403797, 28.511467, 49.591404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741005, 28.645172, 49.422840>,  <33.943329, 28.725395, 49.321701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741005, 28.645172, 49.422840>,  <33.403797, 28.511467, 49.591404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741005, 28.645172, 49.422840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536462, -0.465637, 0.703840,
		0.039045, -0.819421, -0.571861,
		0.843021, 0.334263, -0.421407,
		33.993912, 28.745451, 49.296417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852013, 27.886032, 49.577950>,  <33.403797, 28.511467, 49.591404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852013, 27.886032, 49.577950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086926, 28.209431, 49.562813>,  <34.227875, 28.403469, 49.553730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086926, 28.209431, 49.562813>,  <33.852013, 27.886032, 49.577950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086926, 28.209431, 49.562813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667862, -0.457654, 0.586953,
		0.457232, -0.369979, -0.808737,
		0.587282, 0.808497, -0.037841,
		34.263111, 28.451981, 49.551460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563473, 27.695024, 49.709602>,  <33.852013, 27.886032, 49.577950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563473, 27.695024, 49.709602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602524, 28.083885, 49.794823>,  <34.625954, 28.317202, 49.845955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602524, 28.083885, 49.794823>,  <34.563473, 27.695024, 49.709602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602524, 28.083885, 49.794823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700909, -0.219139, 0.678752,
		0.706537, 0.083066, -0.702784,
		0.097626, 0.972151, 0.213052,
		34.631813, 28.375530, 49.858738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248535, 28.021603, 49.599648>,  <34.563473, 27.695024, 49.709602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248535, 28.021603, 49.599648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075333, 28.251989, 49.876999>,  <34.971413, 28.390221, 50.043411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075333, 28.251989, 49.876999>,  <35.248535, 28.021603, 49.599648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075333, 28.251989, 49.876999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835262, -0.032820, 0.548872,
		0.338887, 0.816815, -0.466870,
		-0.433005, 0.575965, 0.693377,
		34.945431, 28.424778, 50.085011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752342, 28.427923, 49.764050>,  <35.248535, 28.021603, 49.599648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752342, 28.427923, 49.764050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505844, 28.459406, 50.077496>,  <35.357944, 28.478294, 50.265564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505844, 28.459406, 50.077496>,  <35.752342, 28.427923, 49.764050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505844, 28.459406, 50.077496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775168, -0.115154, 0.621172,
		0.139125, 0.990225, 0.009953,
		-0.616246, 0.078705, 0.783611,
		35.320969, 28.483017, 50.312580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062691, 28.904417, 50.173248>,  <35.752342, 28.427923, 49.764050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062691, 28.904417, 50.173248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824436, 28.705433, 50.425518>,  <35.681484, 28.586042, 50.576881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824436, 28.705433, 50.425518>,  <36.062691, 28.904417, 50.173248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824436, 28.705433, 50.425518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732292, -0.013635, 0.680855,
		-0.330098, 0.867380, 0.372406,
		-0.595638, -0.497459, 0.630675,
		35.645744, 28.556196, 50.614719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346550, 29.023220, 50.799137>,  <36.062691, 28.904417, 50.173248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346550, 29.023220, 50.799137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102654, 28.726948, 50.911995>,  <35.956314, 28.549185, 50.979710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102654, 28.726948, 50.911995>,  <36.346550, 29.023220, 50.799137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102654, 28.726948, 50.911995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590292, -0.186803, 0.785277,
		-0.528934, 0.645364, 0.551120,
		-0.609740, -0.740682, 0.282147,
		35.919731, 28.504744, 50.996639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153244, 29.142887, 51.426041>,  <36.346550, 29.023220, 50.799137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153244, 29.142887, 51.426041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076019, 28.750425, 51.429176>,  <36.029686, 28.514948, 51.431057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076019, 28.750425, 51.429176>,  <36.153244, 29.142887, 51.426041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076019, 28.750425, 51.429176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446848, -0.080808, 0.890953,
		-0.873530, 0.175512, 0.454028,
		-0.193062, -0.981155, 0.007839,
		36.018101, 28.456079, 51.431526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917885, 29.102682, 52.008774>,  <36.153244, 29.142887, 51.426041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917885, 29.102682, 52.008774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067978, 28.743292, 51.917614>,  <36.158031, 28.527657, 51.862919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067978, 28.743292, 51.917614>,  <35.917885, 29.102682, 52.008774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067978, 28.743292, 51.917614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432254, -0.047889, 0.900479,
		-0.819975, -0.436399, 0.370401,
		0.375230, -0.898478, -0.227903,
		36.180546, 28.473749, 51.849243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911278, 28.618982, 52.621277>,  <35.917885, 29.102682, 52.008774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911278, 28.618982, 52.621277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244751, 28.534451, 52.417194>,  <36.444836, 28.483732, 52.294746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244751, 28.534451, 52.417194>,  <35.911278, 28.618982, 52.621277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244751, 28.534451, 52.417194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539398, 0.113509, 0.834366,
		-0.118415, -0.970801, 0.208622,
		0.833683, -0.211332, -0.510207,
		36.494858, 28.471052, 52.264133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268604, 28.049740, 52.826561>,  <35.911278, 28.618982, 52.621277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268604, 28.049740, 52.826561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561958, 28.252859, 52.645767>,  <36.737972, 28.374731, 52.537292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561958, 28.252859, 52.645767>,  <36.268604, 28.049740, 52.826561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561958, 28.252859, 52.645767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546838, -0.045664, 0.835992,
		0.403875, -0.860266, -0.311172,
		0.733385, 0.507797, -0.451983,
		36.781975, 28.405197, 52.510174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998135, 27.749966, 52.719292>,  <36.268604, 28.049740, 52.826561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998135, 27.749966, 52.719292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039482, 28.147772, 52.712902>,  <37.064289, 28.386456, 52.709068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039482, 28.147772, 52.712902>,  <36.998135, 27.749966, 52.719292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039482, 28.147772, 52.712902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489843, -0.036923, 0.871028,
		0.865660, -0.097862, -0.490973,
		0.103369, 0.994515, -0.015974,
		37.070492, 28.446127, 52.708111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768333, 27.883860, 52.882679>,  <36.998135, 27.749966, 52.719292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768333, 27.883860, 52.882679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506763, 28.172461, 52.973732>,  <37.349819, 28.345621, 53.028362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506763, 28.172461, 52.973732>,  <37.768333, 27.883860, 52.882679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506763, 28.172461, 52.973732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436752, 0.114338, 0.892286,
		0.617758, 0.682908, -0.389886,
		-0.653928, 0.721501, 0.227628,
		37.310585, 28.388910, 53.042019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122005, 28.511692, 53.080181>,  <37.768333, 27.883860, 52.882679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122005, 28.511692, 53.080181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769947, 28.498806, 53.269623>,  <37.558712, 28.491074, 53.383289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769947, 28.498806, 53.269623>,  <38.122005, 28.511692, 53.080181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769947, 28.498806, 53.269623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460523, 0.184074, 0.868352,
		-0.115152, 0.982384, -0.147177,
		-0.880147, -0.032215, 0.473607,
		37.505901, 28.489141, 53.411705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849300, 28.244072, 53.360592>,  <38.122005, 28.511692, 53.080181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849300, 28.244072, 53.360592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073250, 28.197536, 53.032444>,  <39.207619, 28.169615, 52.835556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073250, 28.197536, 53.032444>,  <38.849300, 28.244072, 53.360592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073250, 28.197536, 53.032444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460517, -0.779393, 0.424817,
		-0.688814, -0.615638, -0.382785,
		0.559874, -0.116341, -0.820369,
		39.241211, 28.162634, 52.786335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751343, 27.571997, 52.978809>,  <38.849300, 28.244072, 53.360592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751343, 27.571997, 52.978809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120800, 27.713791, 52.920551>,  <39.342476, 27.798868, 52.885597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120800, 27.713791, 52.920551>,  <38.751343, 27.571997, 52.978809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120800, 27.713791, 52.920551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368863, -0.719161, 0.588853,
		0.103996, -0.597617, -0.795008,
		0.923648, 0.354488, -0.145649,
		39.397896, 27.820137, 52.876858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223083, 26.982988, 52.785892>,  <38.751343, 27.571997, 52.978809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223083, 26.982988, 52.785892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435219, 27.285826, 52.938496>,  <39.562500, 27.467529, 53.030056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435219, 27.285826, 52.938496>,  <39.223083, 26.982988, 52.785892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435219, 27.285826, 52.938496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425434, -0.626906, 0.652683,
		0.733309, -0.183841, -0.654569,
		0.530343, 0.757094, 0.381503,
		39.594322, 27.512955, 53.052948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463036, 26.879259, 52.771481>,  <39.223083, 26.982988, 52.785892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463036, 26.879259, 52.771481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267616, 27.089792, 53.049847>,  <38.150364, 27.216112, 53.216866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267616, 27.089792, 53.049847>,  <38.463036, 26.879259, 52.771481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267616, 27.089792, 53.049847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697525, -0.243566, 0.673894,
		0.524195, 0.814646, -0.248138,
		-0.488547, 0.526334, 0.695912,
		38.121052, 27.247692, 53.258621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505508, 26.146029, 52.694450>,  <38.463036, 26.879259, 52.771481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505508, 26.146029, 52.694450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124905, 26.070227, 52.597519>,  <37.896542, 26.024746, 52.539360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124905, 26.070227, 52.597519>,  <38.505508, 26.146029, 52.694450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124905, 26.070227, 52.597519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264112, -0.099328, -0.959364,
		0.157732, -0.976843, 0.144561,
		-0.951507, -0.189503, -0.242329,
		37.839451, 26.013376, 52.524818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500759, 25.726915, 52.095325>,  <38.505508, 26.146029, 52.694450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500759, 25.726915, 52.095325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123268, 25.858627, 52.107635>,  <37.896774, 25.937654, 52.115021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123268, 25.858627, 52.107635>,  <38.500759, 25.726915, 52.095325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123268, 25.858627, 52.107635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071925, -0.113524, -0.990928,
		-0.322801, -0.937382, 0.130820,
		-0.943730, 0.329282, 0.030776,
		37.840149, 25.957413, 52.116867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016670, 25.256720, 51.789036>,  <38.500759, 25.726915, 52.095325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016670, 25.256720, 51.789036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906399, 25.640491, 51.765396>,  <37.840237, 25.870754, 51.751213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906399, 25.640491, 51.765396>,  <38.016670, 25.256720, 51.789036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906399, 25.640491, 51.765396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138413, -0.100462, -0.985266,
		-0.951231, -0.263441, 0.160494,
		-0.275683, 0.959430, -0.059099,
		37.823692, 25.928320, 51.747665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647350, 25.294746, 51.271389>,  <38.016670, 25.256720, 51.789036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647350, 25.294746, 51.271389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708870, 25.688091, 51.310055>,  <37.745781, 25.924099, 51.333256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708870, 25.688091, 51.310055>,  <37.647350, 25.294746, 51.271389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708870, 25.688091, 51.310055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129930, 0.117107, -0.984583,
		-0.979523, 0.138867, 0.145779,
		0.153798, 0.983363, 0.096666,
		37.755009, 25.983101, 51.339054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099339, 25.694262, 50.904812>,  <37.647350, 25.294746, 51.271389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099339, 25.694262, 50.904812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433102, 25.913588, 50.927113>,  <37.633362, 26.045183, 50.940495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433102, 25.913588, 50.927113>,  <37.099339, 25.694262, 50.904812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433102, 25.913588, 50.927113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082349, 0.224056, -0.971091,
		-0.544956, 0.805698, 0.232108,
		0.834411, 0.548315, 0.055752,
		37.683426, 26.078083, 50.943840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950985, 26.158678, 50.402050>,  <37.099339, 25.694262, 50.904812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950985, 26.158678, 50.402050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341866, 26.219769, 50.461056>,  <37.576393, 26.256422, 50.496460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341866, 26.219769, 50.461056>,  <36.950985, 26.158678, 50.402050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341866, 26.219769, 50.461056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077271, 0.391315, -0.917007,
		-0.197777, 0.907495, 0.370590,
		0.977197, 0.152727, 0.147516,
		37.635025, 26.265587, 50.505310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004379, 26.736572, 50.016003>,  <36.950985, 26.158678, 50.402050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004379, 26.736572, 50.016003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364128, 26.563477, 50.040859>,  <37.579979, 26.459620, 50.055775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364128, 26.563477, 50.040859>,  <37.004379, 26.736572, 50.016003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364128, 26.563477, 50.040859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160443, 0.194484, -0.967695,
		0.406673, 0.880291, 0.244344,
		0.899375, -0.432739, 0.062145,
		37.633942, 26.433655, 50.059502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450680, 27.282927, 49.782143>,  <37.004379, 26.736572, 50.016003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450680, 27.282927, 49.782143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658531, 26.944508, 49.734505>,  <37.783241, 26.741455, 49.705921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658531, 26.944508, 49.734505>,  <37.450680, 27.282927, 49.782143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658531, 26.944508, 49.734505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166529, 0.237010, -0.957128,
		0.838004, 0.477522, 0.264050,
		0.519632, -0.846049, -0.119094,
		37.814423, 26.690693, 49.698776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094505, 27.488823, 49.363388>,  <37.450680, 27.282927, 49.782143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094505, 27.488823, 49.363388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049706, 27.093115, 49.325871>,  <38.022827, 26.855690, 49.303360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049706, 27.093115, 49.325871>,  <38.094505, 27.488823, 49.363388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049706, 27.093115, 49.325871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314154, 0.054300, -0.947818,
		0.942743, -0.135617, 0.304703,
		-0.111995, -0.989272, -0.093795,
		38.016106, 26.796333, 49.297733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547398, 27.367250, 48.853580>,  <38.094505, 27.488823, 49.363388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547398, 27.367250, 48.853580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336037, 27.028151, 48.871979>,  <38.209221, 26.824692, 48.883018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336037, 27.028151, 48.871979>,  <38.547398, 27.367250, 48.853580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336037, 27.028151, 48.871979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036514, -0.076814, -0.996377,
		0.848210, -0.524806, 0.071543,
		-0.528400, -0.847749, 0.045992,
		38.177517, 26.773827, 48.885777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867569, 26.923872, 48.392185>,  <38.547398, 27.367250, 48.853580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867569, 26.923872, 48.392185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491505, 26.801579, 48.452347>,  <38.265865, 26.728203, 48.488445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491505, 26.801579, 48.452347>,  <38.867569, 26.923872, 48.392185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491505, 26.801579, 48.452347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139335, -0.057841, -0.988555,
		0.310937, -0.950358, 0.011780,
		-0.940162, -0.305737, 0.150403,
		38.209457, 26.709858, 48.497467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692528, 26.320415, 47.849483>,  <38.867569, 26.923872, 48.392185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692528, 26.320415, 47.849483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331123, 26.463102, 47.944492>,  <38.114281, 26.548716, 48.001495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331123, 26.463102, 47.944492>,  <38.692528, 26.320415, 47.849483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331123, 26.463102, 47.944492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315191, -0.177584, -0.932265,
		-0.290377, -0.917178, 0.272884,
		-0.903513, 0.356719, 0.237520,
		38.060070, 26.570118, 48.015747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218189, 25.988705, 47.348438>,  <38.692528, 26.320415, 47.849483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218189, 25.988705, 47.348438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022724, 26.301023, 47.504166>,  <37.905445, 26.488415, 47.597603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022724, 26.301023, 47.504166>,  <38.218189, 25.988705, 47.348438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022724, 26.301023, 47.504166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471550, 0.139073, -0.870804,
		-0.734064, -0.609110, 0.300225,
		-0.488663, 0.780796, 0.389314,
		37.876125, 26.535263, 47.620960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562531, 25.842890, 47.208542>,  <38.218189, 25.988705, 47.348438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562531, 25.842890, 47.208542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561058, 26.234621, 47.289440>,  <37.560173, 26.469660, 47.337978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561058, 26.234621, 47.289440>,  <37.562531, 25.842890, 47.208542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561058, 26.234621, 47.289440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538415, 0.168488, -0.825664,
		-0.842672, -0.111933, 0.526664,
		-0.003683, 0.979328, 0.202246,
		37.559952, 26.528419, 47.350113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895451, 26.126921, 46.957680>,  <37.562531, 25.842890, 47.208542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895451, 26.126921, 46.957680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165905, 26.419426, 46.993660>,  <37.328178, 26.594929, 47.015247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165905, 26.419426, 46.993660>,  <36.895451, 26.126921, 46.957680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165905, 26.419426, 46.993660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361849, 0.435931, -0.824032,
		-0.641798, 0.524610, 0.559357,
		0.676137, 0.731265, 0.089950,
		37.368748, 26.638805, 47.020645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647152, 26.797611, 46.621563>,  <36.895451, 26.126921, 46.957680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647152, 26.797611, 46.621563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034836, 26.896107, 46.620819>,  <37.267445, 26.955204, 46.620373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034836, 26.896107, 46.620819>,  <36.647152, 26.797611, 46.621563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034836, 26.896107, 46.620819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130914, 0.508866, -0.850833,
		-0.208565, 0.824876, 0.525433,
		0.969207, 0.246241, -0.001856,
		37.325600, 26.969978, 46.620262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695427, 27.467653, 46.390015>,  <36.647152, 26.797611, 46.621563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695427, 27.467653, 46.390015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068409, 27.334801, 46.333145>,  <37.292198, 27.255089, 46.299023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068409, 27.334801, 46.333145>,  <36.695427, 27.467653, 46.390015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068409, 27.334801, 46.333145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013457, 0.425185, -0.905006,
		0.361031, 0.841966, 0.400936,
		0.932457, -0.332131, -0.142175,
		37.348145, 27.235161, 46.290493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954220, 28.012667, 46.147846>,  <36.695427, 27.467653, 46.390015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954220, 28.012667, 46.147846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189159, 27.705034, 46.047024>,  <37.330124, 27.520454, 45.986530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189159, 27.705034, 46.047024>,  <36.954220, 28.012667, 46.147846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189159, 27.705034, 46.047024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273145, 0.481539, -0.832774,
		0.761845, 0.420284, 0.492903,
		0.587353, -0.769079, -0.252060,
		37.365364, 27.474310, 45.971405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500099, 28.393900, 45.765568>,  <36.954220, 28.012667, 46.147846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500099, 28.393900, 45.765568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522980, 28.017292, 45.632740>,  <37.536709, 27.791327, 45.553043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522980, 28.017292, 45.632740>,  <37.500099, 28.393900, 45.765568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522980, 28.017292, 45.632740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149072, 0.320830, -0.935332,
		0.987171, 0.103001, -0.122004,
		0.057198, -0.941519, -0.332069,
		37.540138, 27.734837, 45.533119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032146, 28.364977, 45.214725>,  <37.500099, 28.393900, 45.765568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032146, 28.364977, 45.214725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783306, 28.055040, 45.169792>,  <37.634003, 27.869080, 45.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783306, 28.055040, 45.169792>,  <38.032146, 28.364977, 45.214725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783306, 28.055040, 45.169792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201545, 0.297126, -0.933325,
		0.756555, -0.557978, -0.341006,
		-0.622097, -0.774840, -0.112334,
		37.596676, 27.822588, 45.136093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168026, 28.114752, 44.583588>,  <38.032146, 28.364977, 45.214725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168026, 28.114752, 44.583588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793224, 27.992622, 44.651478>,  <37.568344, 27.919344, 44.692211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793224, 27.992622, 44.651478>,  <38.168026, 28.114752, 44.583588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793224, 27.992622, 44.651478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253414, 0.259705, -0.931845,
		0.240423, -0.916154, -0.320714,
		-0.937005, -0.305311, 0.169727,
		37.512123, 27.901026, 44.702393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948524, 27.645676, 44.003410>,  <38.168026, 28.114752, 44.583588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948524, 27.645676, 44.003410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609264, 27.785276, 44.162827>,  <37.405708, 27.869038, 44.258476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609264, 27.785276, 44.162827>,  <37.948524, 27.645676, 44.003410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609264, 27.785276, 44.162827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354469, 0.185212, -0.916542,
		-0.393691, -0.918637, -0.033377,
		-0.848151, 0.349003, 0.398544,
		37.354820, 27.889977, 44.282391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447502, 27.482517, 43.501282>,  <37.948524, 27.645676, 44.003410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447502, 27.482517, 43.501282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244263, 27.722248, 43.748714>,  <37.122318, 27.866087, 43.897175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244263, 27.722248, 43.748714>,  <37.447502, 27.482517, 43.501282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244263, 27.722248, 43.748714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564684, 0.310501, -0.764670,
		-0.650357, -0.737833, 0.180664,
		-0.508102, 0.599326, 0.618579,
		37.091831, 27.902046, 43.934288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670586, 27.430464, 43.317978>,  <37.447502, 27.482517, 43.501282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670586, 27.430464, 43.317978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742111, 27.776506, 43.505428>,  <36.785027, 27.984133, 43.617897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742111, 27.776506, 43.505428>,  <36.670586, 27.430464, 43.317978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742111, 27.776506, 43.505428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504620, 0.489528, -0.711140,
		-0.844620, -0.109314, 0.524088,
		0.178818, 0.865108, 0.468627,
		36.795757, 28.036039, 43.646015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030899, 27.771421, 43.333591>,  <36.670586, 27.430464, 43.317978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030899, 27.771421, 43.333591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319378, 28.047024, 43.362259>,  <36.492466, 28.212385, 43.379459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319378, 28.047024, 43.362259>,  <36.030899, 27.771421, 43.333591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319378, 28.047024, 43.362259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360956, 0.462082, -0.810056,
		-0.591252, 0.558344, 0.581956,
		0.721201, 0.689008, 0.071669,
		36.535740, 28.253727, 43.383759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653236, 28.292517, 43.109783>,  <36.030899, 27.771421, 43.333591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653236, 28.292517, 43.109783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024498, 28.439852, 43.088417>,  <36.247257, 28.528252, 43.075600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024498, 28.439852, 43.088417>,  <35.653236, 28.292517, 43.109783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024498, 28.439852, 43.088417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289577, 0.624514, -0.725346,
		-0.233815, 0.688702, 0.686309,
		0.928157, 0.368337, -0.053412,
		36.302944, 28.550352, 43.072395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630821, 29.063269, 43.111870>,  <35.653236, 28.292517, 43.109783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630821, 29.063269, 43.111870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995079, 28.969154, 42.976009>,  <36.213634, 28.912685, 42.894493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995079, 28.969154, 42.976009>,  <35.630821, 29.063269, 43.111870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995079, 28.969154, 42.976009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127700, 0.621510, -0.772928,
		0.392954, 0.747239, 0.535931,
		0.910648, -0.235286, -0.339647,
		36.268272, 28.898569, 42.874115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981697, 29.725435, 42.899296>,  <35.630821, 29.063269, 43.111870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981697, 29.725435, 42.899296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126610, 29.415884, 42.691502>,  <36.213558, 29.230152, 42.566826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126610, 29.415884, 42.691502>,  <35.981697, 29.725435, 42.899296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126610, 29.415884, 42.691502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219446, 0.470858, -0.854480,
		0.905868, 0.423559, 0.000757,
		0.362279, -0.773880, -0.519484,
		36.235294, 29.183720, 42.535656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520100, 29.998659, 42.447102>,  <35.981697, 29.725435, 42.899296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520100, 29.998659, 42.447102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472614, 29.643362, 42.269596>,  <36.444122, 29.430183, 42.163094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472614, 29.643362, 42.269596>,  <36.520100, 29.998659, 42.447102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472614, 29.643362, 42.269596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075279, 0.453691, -0.887974,
		0.990071, -0.072009, -0.120726,
		-0.118714, -0.888245, -0.443766,
		36.437000, 29.376888, 42.136467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929832, 30.032064, 41.847027>,  <36.520100, 29.998659, 42.447102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929832, 30.032064, 41.847027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671913, 29.731396, 41.791576>,  <36.517162, 29.550995, 41.758305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671913, 29.731396, 41.791576>,  <36.929832, 30.032064, 41.847027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671913, 29.731396, 41.791576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199441, 0.340545, -0.918832,
		0.737871, -0.564816, -0.369498,
		-0.644802, -0.751673, -0.138631,
		36.478474, 29.505894, 41.749989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960144, 29.871304, 41.124027>,  <36.929832, 30.032064, 41.847027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960144, 29.871304, 41.124027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612625, 29.715868, 41.246788>,  <36.404114, 29.622606, 41.320446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612625, 29.715868, 41.246788>,  <36.960144, 29.871304, 41.124027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612625, 29.715868, 41.246788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419882, 0.249599, -0.872582,
		0.262491, -0.886953, -0.380019,
		-0.868791, -0.388607, 0.306898,
		36.351986, 29.599291, 41.338860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822948, 29.239182, 40.634838>,  <36.960144, 29.871304, 41.124027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822948, 29.239182, 40.634838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476456, 29.371307, 40.784790>,  <36.268559, 29.450583, 40.874760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476456, 29.371307, 40.784790>,  <36.822948, 29.239182, 40.634838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476456, 29.371307, 40.784790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363416, 0.098366, -0.926420,
		-0.342886, -0.938731, 0.034833,
		-0.866233, 0.330315, 0.374878,
		36.216587, 29.470402, 40.897255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285290, 29.081310, 40.170063>,  <36.822948, 29.239182, 40.634838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285290, 29.081310, 40.170063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125420, 29.368269, 40.398308>,  <36.029499, 29.540443, 40.535255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125420, 29.368269, 40.398308>,  <36.285290, 29.081310, 40.170063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125420, 29.368269, 40.398308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630911, 0.236303, -0.738994,
		-0.664989, -0.655367, 0.358168,
		-0.399676, 0.717395, 0.570617,
		36.005516, 29.583487, 40.569492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635262, 29.034391, 39.937546>,  <36.285290, 29.081310, 40.170063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635262, 29.034391, 39.937546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648010, 29.397598, 40.104633>,  <35.655659, 29.615522, 40.204884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648010, 29.397598, 40.104633>,  <35.635262, 29.034391, 39.937546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648010, 29.397598, 40.104633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629110, 0.342979, -0.697557,
		-0.776663, -0.240557, 0.582175,
		0.031872, 0.908019, 0.417715,
		35.657570, 29.670004, 40.229946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918278, 29.270845, 39.968544>,  <35.635262, 29.034391, 39.937546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918278, 29.270845, 39.968544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140495, 29.602518, 39.993282>,  <35.273827, 29.801521, 40.008125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140495, 29.602518, 39.993282>,  <34.918278, 29.270845, 39.968544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140495, 29.602518, 39.993282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538531, 0.415490, -0.733043,
		-0.633525, 0.373930, 0.677364,
		0.555545, 0.829182, 0.061850,
		35.307159, 29.851273, 40.011837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534576, 29.852989, 39.919308>,  <34.918278, 29.270845, 39.968544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534576, 29.852989, 39.919308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892010, 29.993160, 39.807091>,  <35.106472, 30.077263, 39.739761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892010, 29.993160, 39.807091>,  <34.534576, 29.852989, 39.919308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892010, 29.993160, 39.807091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428617, 0.480360, -0.765207,
		-0.133386, 0.804025, 0.579442,
		0.893586, 0.350426, -0.280546,
		35.160084, 30.098288, 39.722927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365093, 30.509289, 39.733067>,  <34.534576, 29.852989, 39.919308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365093, 30.509289, 39.733067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731113, 30.474323, 39.575569>,  <34.950726, 30.453344, 39.481071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731113, 30.474323, 39.575569>,  <34.365093, 30.509289, 39.733067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731113, 30.474323, 39.575569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303749, 0.492907, -0.815340,
		0.265352, 0.865680, 0.424485,
		0.915055, -0.087415, -0.393743,
		35.005630, 30.448099, 39.457447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451786, 31.131681, 39.355801>,  <34.365093, 30.509289, 39.733067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451786, 31.131681, 39.355801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750336, 30.921379, 39.192577>,  <34.929466, 30.795198, 39.094643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750336, 30.921379, 39.192577>,  <34.451786, 31.131681, 39.355801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750336, 30.921379, 39.192577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285147, 0.301383, -0.909868,
		0.601350, 0.795456, 0.075027,
		0.746371, -0.525755, -0.408058,
		34.974247, 30.763653, 39.070160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829266, 31.643408, 39.064880>,  <34.451786, 31.131681, 39.355801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829266, 31.643408, 39.064880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965168, 31.308878, 38.892776>,  <35.046711, 31.108160, 38.789513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965168, 31.308878, 38.892776>,  <34.829266, 31.643408, 39.064880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965168, 31.308878, 38.892776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090989, 0.484561, -0.870013,
		0.936101, 0.256446, 0.240730,
		0.339760, -0.836323, -0.430264,
		35.067097, 31.057981, 38.763699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488720, 31.799507, 38.636742>,  <34.829266, 31.643408, 39.064880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488720, 31.799507, 38.636742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326904, 31.473391, 38.471020>,  <35.229816, 31.277721, 38.371586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326904, 31.473391, 38.471020>,  <35.488720, 31.799507, 38.636742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326904, 31.473391, 38.471020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279664, 0.321044, -0.904831,
		0.870711, -0.481904, 0.098134,
		-0.404537, -0.815291, -0.414308,
		35.205544, 31.228804, 38.346725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952888, 31.458876, 38.170818>,  <35.488720, 31.799507, 38.636742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952888, 31.458876, 38.170818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582268, 31.369799, 38.049549>,  <35.359898, 31.316353, 37.976788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582268, 31.369799, 38.049549>,  <35.952888, 31.458876, 38.170818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582268, 31.369799, 38.049549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253853, 0.224607, -0.940803,
		0.277609, -0.948661, -0.151578,
		-0.926548, -0.222697, -0.303173,
		35.304302, 31.302990, 37.958599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957432, 31.028158, 37.478939>,  <35.952888, 31.458876, 38.170818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957432, 31.028158, 37.478939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644886, 31.000816, 37.230812>,  <35.457359, 30.984411, 37.081936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644886, 31.000816, 37.230812>,  <35.957432, 31.028158, 37.478939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644886, 31.000816, 37.230812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454853, -0.742935, -0.491077,
		-0.427286, -0.665864, 0.611598,
		-0.781368, -0.068356, -0.620316,
		35.410477, 30.980309, 37.044716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642857, 31.037861, 37.163586>,  <35.957432, 31.028158, 37.478939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642857, 31.037861, 37.163586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969696, 31.260191, 37.224781>,  <37.165802, 31.393589, 37.261497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969696, 31.260191, 37.224781>,  <36.642857, 31.037861, 37.163586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969696, 31.260191, 37.224781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271183, -0.604767, 0.748810,
		0.508730, -0.570365, -0.644885,
		0.817100, 0.555825, 0.152990,
		37.214825, 31.426939, 37.270679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178082, 30.497456, 37.235394>,  <36.642857, 31.037861, 37.163586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178082, 30.497456, 37.235394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306667, 30.838419, 37.400349>,  <37.383820, 31.042997, 37.499321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306667, 30.838419, 37.400349>,  <37.178082, 30.497456, 37.235394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306667, 30.838419, 37.400349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420949, -0.518745, 0.744114,
		0.848212, -0.065612, -0.525578,
		0.321463, 0.852408, 0.412386,
		37.403107, 31.094141, 37.524063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935890, 30.365837, 37.358650>,  <37.178082, 30.497456, 37.235394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935890, 30.365837, 37.358650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823921, 30.669476, 37.593739>,  <37.756741, 30.851658, 37.734791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823921, 30.669476, 37.593739>,  <37.935890, 30.365837, 37.358650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823921, 30.669476, 37.593739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440313, -0.442491, 0.781234,
		0.853093, 0.477466, -0.210377,
		-0.279923, 0.759097, 0.587720,
		37.739944, 30.897205, 37.770054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519024, 30.391628, 37.732998>,  <37.935890, 30.365837, 37.358650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519024, 30.391628, 37.732998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240505, 30.618832, 37.908512>,  <38.073395, 30.755154, 38.013821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240505, 30.618832, 37.908512>,  <38.519024, 30.391628, 37.732998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240505, 30.618832, 37.908512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370336, -0.239361, 0.897529,
		0.614831, 0.787448, -0.043686,
		-0.696300, 0.568007, 0.438787,
		38.031616, 30.789234, 38.040150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908726, 30.790279, 38.196289>,  <38.519024, 30.391628, 37.732998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908726, 30.790279, 38.196289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524971, 30.795647, 38.309006>,  <38.294720, 30.798866, 38.376637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524971, 30.795647, 38.309006>,  <38.908726, 30.790279, 38.196289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524971, 30.795647, 38.309006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274148, -0.191271, 0.942474,
		0.066544, 0.981445, 0.179824,
		-0.959382, 0.013417, 0.281790,
		38.237156, 30.799671, 38.393543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880409, 31.191900, 38.779716>,  <38.908726, 30.790279, 38.196289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880409, 31.191900, 38.779716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549160, 30.967728, 38.784374>,  <38.350410, 30.833225, 38.787167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549160, 30.967728, 38.784374>,  <38.880409, 31.191900, 38.779716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549160, 30.967728, 38.784374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098600, -0.125192, 0.987221,
		-0.551810, 0.818686, 0.158932,
		-0.828120, -0.560429, 0.011640,
		38.300724, 30.799599, 38.787865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466518, 31.379875, 39.378525>,  <38.880409, 31.191900, 38.779716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466518, 31.379875, 39.378525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299717, 31.026186, 39.294376>,  <38.199635, 30.813972, 39.243885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299717, 31.026186, 39.294376>,  <38.466518, 31.379875, 39.378525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299717, 31.026186, 39.294376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105468, -0.276969, 0.955073,
		-0.902765, 0.376082, 0.208754,
		-0.417004, -0.884223, -0.210374,
		38.174614, 30.760920, 39.231266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987183, 31.228479, 39.821213>,  <38.466518, 31.379875, 39.378525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987183, 31.228479, 39.821213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055447, 30.855606, 39.693520>,  <38.096405, 30.631882, 39.616905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055447, 30.855606, 39.693520>,  <37.987183, 31.228479, 39.821213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055447, 30.855606, 39.693520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080540, -0.309701, 0.947417,
		-0.982034, -0.187392, 0.022226,
		0.170655, -0.932185, -0.319229,
		38.106644, 30.575951, 39.597752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526871, 30.829126, 40.213661>,  <37.987183, 31.228479, 39.821213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526871, 30.829126, 40.213661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803360, 30.578259, 40.070065>,  <37.969254, 30.427738, 39.983906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803360, 30.578259, 40.070065>,  <37.526871, 30.829126, 40.213661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803360, 30.578259, 40.070065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032187, -0.469563, 0.882312,
		-0.721927, -0.621427, -0.304385,
		0.691220, -0.627168, -0.358992,
		38.010727, 30.390108, 39.962368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326412, 30.137104, 40.459560>,  <37.526871, 30.829126, 40.213661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326412, 30.137104, 40.459560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713043, 30.109821, 40.360714>,  <37.945023, 30.093452, 40.301407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713043, 30.109821, 40.360714>,  <37.326412, 30.137104, 40.459560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713043, 30.109821, 40.360714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196389, -0.422588, 0.884788,
		-0.164778, -0.903752, -0.395071,
		0.966581, -0.068206, -0.247120,
		38.003017, 30.089359, 40.286579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565689, 29.460743, 40.524651>,  <37.326412, 30.137104, 40.459560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565689, 29.460743, 40.524651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907841, 29.667162, 40.542641>,  <38.113132, 29.791014, 40.553436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907841, 29.667162, 40.542641>,  <37.565689, 29.460743, 40.524651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907841, 29.667162, 40.542641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305878, -0.573260, 0.760139,
		0.418052, -0.636449, -0.648202,
		0.855378, 0.516048, 0.044977,
		38.164455, 29.821976, 40.556133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078716, 28.900751, 40.747322>,  <37.565689, 29.460743, 40.524651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078716, 28.900751, 40.747322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238243, 29.250616, 40.857533>,  <38.333958, 29.460535, 40.923656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238243, 29.250616, 40.857533>,  <38.078716, 28.900751, 40.747322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238243, 29.250616, 40.857533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484108, -0.455986, 0.746804,
		0.778835, -0.164455, -0.605285,
		0.398817, 0.874661, 0.275523,
		38.357887, 29.513014, 40.940189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813370, 28.874416, 40.685272>,  <38.078716, 28.900751, 40.747322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813370, 28.874416, 40.685272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754246, 29.171965, 40.945980>,  <38.718773, 29.350494, 41.102406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754246, 29.171965, 40.945980>,  <38.813370, 28.874416, 40.685272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754246, 29.171965, 40.945980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606830, -0.452171, 0.653681,
		0.780968, 0.492133, -0.384570,
		-0.147806, 0.743872, 0.651772,
		38.709904, 29.395126, 41.141510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487656, 29.074703, 41.002865>,  <38.813370, 28.874416, 40.685272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487656, 29.074703, 41.002865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223454, 29.231583, 41.258965>,  <39.064934, 29.325710, 41.412624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223454, 29.231583, 41.258965>,  <39.487656, 29.074703, 41.002865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223454, 29.231583, 41.258965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566651, -0.299060, 0.767769,
		0.492590, 0.869911, -0.024709,
		-0.660501, 0.392197, 0.640250,
		39.025303, 29.349241, 41.451038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923283, 29.481211, 41.565659>,  <39.487656, 29.074703, 41.002865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923283, 29.481211, 41.565659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563213, 29.404711, 41.722179>,  <39.347172, 29.358810, 41.816093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563213, 29.404711, 41.722179>,  <39.923283, 29.481211, 41.565659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563213, 29.404711, 41.722179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414107, -0.097448, 0.904997,
		-0.134948, 0.976692, 0.166917,
		-0.900169, -0.191249, 0.391305,
		39.293163, 29.347336, 41.839569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859818, 29.864130, 42.270874>,  <39.923283, 29.481211, 41.565659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859818, 29.864130, 42.270874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567852, 29.590717, 42.269192>,  <39.392673, 29.426670, 42.268181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567852, 29.590717, 42.269192>,  <39.859818, 29.864130, 42.270874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567852, 29.590717, 42.269192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146219, -0.162147, 0.975873,
		-0.667722, 0.711684, 0.218298,
		-0.729910, -0.683531, -0.004207,
		39.348881, 29.385658, 42.267929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343742, 30.005501, 42.851849>,  <39.859818, 29.864130, 42.270874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343742, 30.005501, 42.851849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283802, 29.618830, 42.768826>,  <39.247837, 29.386827, 42.719013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283802, 29.618830, 42.768826>,  <39.343742, 30.005501, 42.851849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283802, 29.618830, 42.768826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154304, -0.230217, 0.960828,
		-0.976594, 0.111952, 0.183660,
		-0.149848, -0.966678, -0.207554,
		39.238846, 29.328827, 42.706558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916206, 29.657639, 43.458992>,  <39.343742, 30.005501, 42.851849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916206, 29.657639, 43.458992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085308, 29.351400, 43.265026>,  <39.186771, 29.167658, 43.148647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085308, 29.351400, 43.265026>,  <38.916206, 29.657639, 43.458992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085308, 29.351400, 43.265026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132956, -0.476892, 0.868848,
		-0.896437, -0.431784, -0.099819,
		0.422757, -0.765596, -0.484911,
		39.212135, 29.121721, 43.119553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598995, 29.104239, 43.757957>,  <38.916206, 29.657639, 43.458992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598995, 29.104239, 43.757957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923851, 28.933992, 43.598316>,  <39.118763, 28.831844, 43.502533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923851, 28.933992, 43.598316>,  <38.598995, 29.104239, 43.757957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923851, 28.933992, 43.598316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071209, -0.606607, 0.791806,
		-0.579103, -0.671476, -0.462342,
		0.812139, -0.425614, -0.399103,
		39.167492, 28.806307, 43.478584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485535, 28.388741, 43.836269>,  <38.598995, 29.104239, 43.757957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485535, 28.388741, 43.836269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879467, 28.439240, 43.788639>,  <39.115826, 28.469540, 43.760063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879467, 28.439240, 43.788639>,  <38.485535, 28.388741, 43.836269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879467, 28.439240, 43.788639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164761, -0.464693, 0.870008,
		0.054506, -0.876425, -0.478443,
		0.984826, 0.126249, -0.119073,
		39.174915, 28.477114, 43.752918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723568, 27.825850, 44.081284>,  <38.485535, 28.388741, 43.836269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723568, 27.825850, 44.081284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050644, 28.055891, 44.071220>,  <39.246891, 28.193916, 44.065182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050644, 28.055891, 44.071220>,  <38.723568, 27.825850, 44.081284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050644, 28.055891, 44.071220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370398, -0.492174, 0.787762,
		0.440662, -0.653468, -0.615465,
		0.817693, 0.575104, -0.025161,
		39.295952, 28.228422, 44.063671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252964, 27.324167, 44.200188>,  <38.723568, 27.825850, 44.081284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252964, 27.324167, 44.200188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388798, 27.692904, 44.274902>,  <39.470299, 27.914145, 44.319733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388798, 27.692904, 44.274902>,  <39.252964, 27.324167, 44.200188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388798, 27.692904, 44.274902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291981, -0.292098, 0.910728,
		0.894107, -0.254734, -0.368353,
		0.339589, 0.921840, 0.186789,
		39.490673, 27.969456, 44.330940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964451, 27.198587, 44.499977>,  <39.252964, 27.324167, 44.200188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964451, 27.198587, 44.499977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833832, 27.557457, 44.618938>,  <39.755459, 27.772778, 44.690315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833832, 27.557457, 44.618938>,  <39.964451, 27.198587, 44.499977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833832, 27.557457, 44.618938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329437, -0.186882, 0.925498,
		0.885909, 0.400197, -0.234535,
		-0.326551, 0.897172, 0.297400,
		39.735867, 27.826609, 44.708160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509918, 27.494164, 44.905121>,  <39.964451, 27.198587, 44.499977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509918, 27.494164, 44.905121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176544, 27.688658, 45.010162>,  <39.976521, 27.805353, 45.073185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176544, 27.688658, 45.010162>,  <40.509918, 27.494164, 44.905121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176544, 27.688658, 45.010162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259358, -0.075437, 0.962831,
		0.487971, 0.870566, -0.063237,
		-0.833437, 0.486234, 0.262599,
		39.926514, 27.834528, 45.088943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725983, 27.851170, 45.507969>,  <40.509918, 27.494164, 44.905121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725983, 27.851170, 45.507969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329750, 27.858192, 45.562298>,  <40.092010, 27.862406, 45.594894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329750, 27.858192, 45.562298>,  <40.725983, 27.851170, 45.507969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329750, 27.858192, 45.562298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135518, 0.268948, 0.953573,
		-0.019790, 0.962995, -0.268793,
		-0.990577, 0.017555, 0.135826,
		40.032578, 27.863459, 45.603046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683506, 28.349298, 45.952660>,  <40.725983, 27.851170, 45.507969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683506, 28.349298, 45.952660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331779, 28.159683, 45.970985>,  <40.120743, 28.045914, 45.981979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331779, 28.159683, 45.970985>,  <40.683506, 28.349298, 45.952660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331779, 28.159683, 45.970985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030531, 0.039893, 0.998738,
		-0.475266, 0.879601, -0.020606,
		-0.879313, -0.474036, 0.045815,
		40.067986, 28.017473, 45.984730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309158, 28.815649, 46.361885>,  <40.683506, 28.349298, 45.952660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309158, 28.815649, 46.361885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164864, 28.443258, 46.384346>,  <40.078289, 28.219824, 46.397823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164864, 28.443258, 46.384346>,  <40.309158, 28.815649, 46.361885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164864, 28.443258, 46.384346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116259, 0.014854, 0.993108,
		-0.925395, 0.364775, 0.102876,
		-0.360732, -0.930977, 0.056154,
		40.056644, 28.163965, 46.401192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730343, 28.897875, 46.845650>,  <40.309158, 28.815649, 46.361885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730343, 28.897875, 46.845650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818481, 28.507887, 46.833801>,  <39.871365, 28.273893, 46.826694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818481, 28.507887, 46.833801>,  <39.730343, 28.897875, 46.845650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818481, 28.507887, 46.833801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090519, -0.009794, 0.995847,
		-0.971212, -0.222114, 0.086096,
		0.220348, -0.974972, -0.029618,
		39.884586, 28.215395, 46.824917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331619, 28.556120, 47.349262>,  <39.730343, 28.897875, 46.845650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331619, 28.556120, 47.349262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606380, 28.271790, 47.288738>,  <39.771236, 28.101191, 47.252426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606380, 28.271790, 47.288738>,  <39.331619, 28.556120, 47.349262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606380, 28.271790, 47.288738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081634, -0.282345, 0.955833,
		-0.722152, -0.644211, -0.251971,
		0.686901, -0.710826, -0.151306,
		39.812450, 28.058542, 47.243347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365498, 28.143827, 48.004787>,  <39.331619, 28.556120, 47.349262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365498, 28.143827, 48.004787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691887, 28.011242, 47.815342>,  <39.887722, 27.931690, 47.701675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691887, 28.011242, 47.815342>,  <39.365498, 28.143827, 48.004787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691887, 28.011242, 47.815342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366377, -0.337203, 0.867216,
		-0.447156, -0.881150, -0.153709,
		0.815978, -0.331465, -0.473615,
		39.936680, 27.911802, 47.673256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507267, 27.400763, 48.103436>,  <39.365498, 28.143827, 48.004787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507267, 27.400763, 48.103436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863716, 27.566534, 48.029522>,  <40.077587, 27.665997, 47.985176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863716, 27.566534, 48.029522>,  <39.507267, 27.400763, 48.103436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863716, 27.566534, 48.029522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337098, -0.332047, 0.880971,
		0.303745, -0.847345, -0.435599,
		0.891125, 0.414430, -0.184780,
		40.131054, 27.690863, 47.974087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080593, 26.919231, 48.259396>,  <39.507267, 27.400763, 48.103436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080593, 26.919231, 48.259396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273590, 27.269497, 48.267517>,  <40.389389, 27.479656, 48.272388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273590, 27.269497, 48.267517>,  <40.080593, 26.919231, 48.259396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273590, 27.269497, 48.267517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557326, -0.324805, 0.764127,
		0.675712, -0.357372, -0.644747,
		0.482495, 0.875664, 0.020302,
		40.418339, 27.532196, 48.273609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684788, 26.805862, 48.460541>,  <40.080593, 26.919231, 48.259396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684788, 26.805862, 48.460541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742371, 27.199234, 48.504620>,  <40.776920, 27.435257, 48.531067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742371, 27.199234, 48.504620>,  <40.684788, 26.805862, 48.460541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742371, 27.199234, 48.504620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666515, -0.178668, 0.723765,
		0.731461, -0.030739, -0.681190,
		0.143955, 0.983429, 0.110200,
		40.785557, 27.494263, 48.537682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376122, 27.032885, 48.296959>,  <40.684788, 26.805862, 48.460541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376122, 27.032885, 48.296959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224762, 27.296852, 48.556595>,  <41.133945, 27.455233, 48.712376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224762, 27.296852, 48.556595>,  <41.376122, 27.032885, 48.296959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224762, 27.296852, 48.556595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696292, -0.259122, 0.669353,
		0.609914, 0.705238, -0.361446,
		-0.378395, 0.659920, 0.649094,
		41.111244, 27.494827, 48.751324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895397, 27.407101, 48.590935>,  <41.376122, 27.032885, 48.296959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895397, 27.407101, 48.590935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594688, 27.431843, 48.853542>,  <41.414265, 27.446688, 49.011108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594688, 27.431843, 48.853542>,  <41.895397, 27.407101, 48.590935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594688, 27.431843, 48.853542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621851, -0.264778, 0.737017,
		0.219421, 0.962323, 0.160586,
		-0.751769, 0.061856, 0.656519,
		41.369156, 27.450399, 49.050499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236233, 27.692381, 49.220863>,  <41.895397, 27.407101, 48.590935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236233, 27.692381, 49.220863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898590, 27.554209, 49.384895>,  <41.696007, 27.471306, 49.483315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898590, 27.554209, 49.384895>,  <42.236233, 27.692381, 49.220863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898590, 27.554209, 49.384895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432711, 0.012765, 0.901442,
		-0.316622, 0.938357, 0.138697,
		-0.844104, -0.345432, 0.410079,
		41.645359, 27.450579, 49.507919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178993, 28.088383, 49.806747>,  <42.236233, 27.692381, 49.220863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178993, 28.088383, 49.806747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949993, 27.765062, 49.861736>,  <41.812595, 27.571070, 49.894730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949993, 27.765062, 49.861736>,  <42.178993, 28.088383, 49.806747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949993, 27.765062, 49.861736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457117, -0.175472, 0.871925,
		-0.680656, 0.562013, 0.469945,
		-0.572496, -0.808301, 0.137470,
		41.778244, 27.522572, 49.902977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137245, 28.029116, 50.510098>,  <42.178993, 28.088383, 49.806747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137245, 28.029116, 50.510098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033924, 27.666142, 50.377529>,  <41.971931, 27.448357, 50.297989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033924, 27.666142, 50.377529>,  <42.137245, 28.029116, 50.510098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033924, 27.666142, 50.377529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546537, -0.420148, 0.724412,
		-0.796602, 0.005987, 0.604474,
		-0.258305, -0.907436, -0.331419,
		41.956432, 27.393911, 50.278103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696617, 28.711189, 50.656776>,  <42.137245, 28.029116, 50.510098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696617, 28.711189, 50.656776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664124, 29.076611, 50.816185>,  <41.644627, 29.295864, 50.911831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664124, 29.076611, 50.816185>,  <41.696617, 28.711189, 50.656776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664124, 29.076611, 50.816185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285897, 0.361684, -0.887382,
		-0.954811, -0.186026, 0.231800,
		-0.081237, 0.913553, 0.398524,
		41.639751, 29.350676, 50.935741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091866, 28.938353, 50.421329>,  <41.696617, 28.711189, 50.656776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091866, 28.938353, 50.421329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276909, 29.276220, 50.529053>,  <41.387936, 29.478941, 50.593689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276909, 29.276220, 50.529053>,  <41.091866, 28.938353, 50.421329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276909, 29.276220, 50.529053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563641, 0.514686, -0.646071,
		-0.684325, 0.147085, 0.714189,
		0.462610, 0.844668, 0.269310,
		41.415691, 29.529621, 50.609844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567711, 29.540106, 50.511864>,  <41.091866, 28.938353, 50.421329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567711, 29.540106, 50.511864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925510, 29.696760, 50.425617>,  <41.140190, 29.790752, 50.373867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925510, 29.696760, 50.425617>,  <40.567711, 29.540106, 50.511864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925510, 29.696760, 50.425617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438973, 0.678030, -0.589557,
		-0.084696, 0.622010, 0.778416,
		0.894499, 0.391637, -0.215619,
		41.193859, 29.814251, 50.360931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430931, 30.342329, 50.505295>,  <40.567711, 29.540106, 50.511864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430931, 30.342329, 50.505295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779842, 30.287685, 50.317482>,  <40.989189, 30.254900, 50.204792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779842, 30.287685, 50.317482>,  <40.430931, 30.342329, 50.505295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779842, 30.287685, 50.317482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314699, 0.578105, -0.752834,
		0.374283, 0.804445, 0.461280,
		0.872282, -0.136609, -0.469534,
		41.041527, 30.246702, 50.176620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621616, 31.022871, 50.288746>,  <40.430931, 30.342329, 50.505295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621616, 31.022871, 50.288746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823479, 30.763586, 50.060658>,  <40.944595, 30.608015, 49.923805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823479, 30.763586, 50.060658>,  <40.621616, 31.022871, 50.288746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823479, 30.763586, 50.060658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209039, 0.549092, -0.809198,
		0.837632, 0.527562, 0.141600,
		0.504653, -0.648210, -0.570218,
		40.974876, 30.569122, 49.889591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005203, 31.402361, 49.713364>,  <40.621616, 31.022871, 50.288746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005203, 31.402361, 49.713364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985840, 31.022320, 49.590099>,  <40.974220, 30.794296, 49.516140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985840, 31.022320, 49.590099>,  <41.005203, 31.402361, 49.713364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985840, 31.022320, 49.590099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090089, 0.311421, -0.945992,
		0.994757, -0.018031, -0.100668,
		-0.048408, -0.950101, -0.308163,
		40.971317, 30.737289, 49.497650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205647, 31.467728, 49.019665>,  <41.005203, 31.402361, 49.713364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205647, 31.467728, 49.019665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064026, 31.093874, 49.032963>,  <40.979053, 30.869562, 49.040943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064026, 31.093874, 49.032963>,  <41.205647, 31.467728, 49.019665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064026, 31.093874, 49.032963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082448, -0.004219, -0.996586,
		0.931585, -0.355583, -0.075565,
		-0.354050, -0.934635, 0.033248,
		40.957809, 30.813484, 49.042938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523758, 31.096035, 48.532444>,  <41.205647, 31.467728, 49.019665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523758, 31.096035, 48.532444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198532, 30.868643, 48.582657>,  <41.003395, 30.732208, 48.612785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198532, 30.868643, 48.582657>,  <41.523758, 31.096035, 48.532444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198532, 30.868643, 48.582657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194640, 0.062218, -0.978899,
		0.548675, -0.820341, -0.161236,
		-0.813063, -0.568480, 0.125534,
		40.954613, 30.698099, 48.620316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509422, 30.627853, 48.073410>,  <41.523758, 31.096035, 48.532444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509422, 30.627853, 48.073410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119061, 30.631889, 48.160599>,  <40.884846, 30.634312, 48.212914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119061, 30.631889, 48.160599>,  <41.509422, 30.627853, 48.073410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119061, 30.631889, 48.160599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218192, -0.033349, -0.975336,
		-0.002557, -0.999393, 0.034743,
		-0.975902, 0.010075, 0.217974,
		40.826290, 30.634916, 48.225990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129086, 30.079937, 47.643978>,  <41.509422, 30.627853, 48.073410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129086, 30.079937, 47.643978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814545, 30.304768, 47.746517>,  <40.625820, 30.439667, 47.808041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814545, 30.304768, 47.746517>,  <41.129086, 30.079937, 47.643978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814545, 30.304768, 47.746517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354419, -0.070590, -0.932419,
		-0.505997, -0.824066, 0.254720,
		-0.786355, 0.562079, 0.256346,
		40.578636, 30.473391, 47.823421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466736, 29.811655, 47.298561>,  <41.129086, 30.079937, 47.643978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466736, 29.811655, 47.298561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346031, 30.175339, 47.413300>,  <40.273609, 30.393549, 47.482143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346031, 30.175339, 47.413300>,  <40.466736, 29.811655, 47.298561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346031, 30.175339, 47.413300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593589, 0.056271, -0.802799,
		-0.746053, -0.412521, 0.522715,
		-0.301758, 0.909208, 0.286849,
		40.255505, 30.448101, 47.499355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727119, 29.812239, 47.337284>,  <40.466736, 29.811655, 47.298561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727119, 29.812239, 47.337284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852737, 30.191217, 47.312866>,  <39.928108, 30.418604, 47.298214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852737, 30.191217, 47.312866>,  <39.727119, 29.812239, 47.337284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852737, 30.191217, 47.312866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653453, 0.169055, -0.737848,
		-0.688751, 0.271604, 0.672201,
		0.314041, 0.947445, -0.061044,
		39.946949, 30.475451, 47.294552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259136, 30.360514, 47.446877>,  <39.727119, 29.812239, 47.337284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259136, 30.360514, 47.446877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526192, 30.550446, 47.217514>,  <39.686424, 30.664404, 47.079895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526192, 30.550446, 47.217514>,  <39.259136, 30.360514, 47.446877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526192, 30.550446, 47.217514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642866, -0.020748, -0.765697,
		-0.375472, 0.879834, 0.291399,
		0.667641, 0.474828, -0.573406,
		39.726482, 30.692894, 47.045494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927456, 30.874861, 47.109959>,  <39.259136, 30.360514, 47.446877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927456, 30.874861, 47.109959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251705, 30.889727, 46.876202>,  <39.446255, 30.898645, 46.735947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251705, 30.889727, 46.876202>,  <38.927456, 30.874861, 47.109959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251705, 30.889727, 46.876202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582389, -0.052737, -0.811198,
		-0.060966, 0.997917, -0.021106,
		0.810621, 0.037163, -0.584391,
		39.494892, 30.900875, 46.700886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826927, 31.463726, 46.613579>,  <38.927456, 30.874861, 47.109959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826927, 31.463726, 46.613579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106777, 31.217144, 46.469074>,  <39.274685, 31.069195, 46.382370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106777, 31.217144, 46.469074>,  <38.826927, 31.463726, 46.613579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106777, 31.217144, 46.469074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437103, 0.030708, -0.898887,
		0.565217, 0.786791, -0.247970,
		0.699622, -0.616455, -0.361265,
		39.316666, 31.032207, 46.360695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289165, 31.862028, 46.080921>,  <38.826927, 31.463726, 46.613579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289165, 31.862028, 46.080921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349094, 31.478390, 45.984848>,  <39.385052, 31.248207, 45.927204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349094, 31.478390, 45.984848>,  <39.289165, 31.862028, 46.080921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349094, 31.478390, 45.984848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259476, 0.196272, -0.945595,
		0.954057, 0.203994, -0.219456,
		0.149823, -0.959095, -0.240186,
		39.394043, 31.190660, 45.912792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773804, 31.811087, 45.417339>,  <39.289165, 31.862028, 46.080921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773804, 31.811087, 45.417339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569752, 31.467400, 45.432861>,  <39.447319, 31.261187, 45.442177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569752, 31.467400, 45.432861>,  <39.773804, 31.811087, 45.417339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569752, 31.467400, 45.432861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204715, 0.077472, -0.975751,
		0.835377, -0.505708, -0.215416,
		-0.510134, -0.859219, 0.038808,
		39.416710, 31.209635, 45.444504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086754, 31.354116, 44.869843>,  <39.773804, 31.811087, 45.417339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086754, 31.354116, 44.869843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720242, 31.223974, 44.963280>,  <39.500332, 31.145889, 45.019341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720242, 31.223974, 44.963280>,  <40.086754, 31.354116, 44.869843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720242, 31.223974, 44.963280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296962, 0.160497, -0.941304,
		0.268768, -0.931871, -0.243680,
		-0.916285, -0.325356, 0.233594,
		39.445354, 31.126368, 45.033360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944920, 30.936970, 44.273373>,  <40.086754, 31.354116, 44.869843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944920, 30.936970, 44.273373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597958, 31.031677, 44.448437>,  <39.389782, 31.088503, 44.553474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597958, 31.031677, 44.448437>,  <39.944920, 30.936970, 44.273373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597958, 31.031677, 44.448437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438038, 0.053948, -0.897336,
		-0.236075, -0.970066, 0.056921,
		-0.867405, 0.236772, 0.437661,
		39.337734, 31.102709, 44.579735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413715, 30.551508, 43.887287>,  <39.944920, 30.936970, 44.273373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413715, 30.551508, 43.887287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205677, 30.842670, 44.066021>,  <39.080856, 31.017368, 44.173260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205677, 30.842670, 44.066021>,  <39.413715, 30.551508, 43.887287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205677, 30.842670, 44.066021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490260, 0.173964, -0.854038,
		-0.699391, -0.663242, 0.266386,
		-0.520092, 0.727905, 0.446831,
		39.049648, 31.061043, 44.200069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729309, 30.496675, 43.626701>,  <39.413715, 30.551508, 43.887287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729309, 30.496675, 43.626701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742115, 30.874973, 43.756031>,  <38.749798, 31.101952, 43.833630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742115, 30.874973, 43.756031>,  <38.729309, 30.496675, 43.626701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742115, 30.874973, 43.756031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411179, 0.307313, -0.858190,
		-0.910992, -0.105472, 0.398709,
		0.032013, 0.945745, 0.323327,
		38.751720, 31.158697, 43.853027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206005, 30.703201, 43.180099>,  <38.729309, 30.496675, 43.626701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206005, 30.703201, 43.180099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410091, 31.015074, 43.325302>,  <38.532543, 31.202198, 43.412426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410091, 31.015074, 43.325302>,  <38.206005, 30.703201, 43.180099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410091, 31.015074, 43.325302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122880, 0.483837, -0.866489,
		-0.851223, 0.397489, 0.342668,
		0.510215, 0.779682, 0.363010,
		38.563156, 31.248978, 43.434204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706467, 31.364458, 43.076591>,  <38.206005, 30.703201, 43.180099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706467, 31.364458, 43.076591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091545, 31.469788, 43.101521>,  <38.322590, 31.532986, 43.116478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091545, 31.469788, 43.101521>,  <37.706467, 31.364458, 43.076591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091545, 31.469788, 43.101521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155076, 0.725604, -0.670410,
		-0.221755, 0.635735, 0.739369,
		0.962692, 0.263325, 0.062319,
		38.380352, 31.548784, 43.120216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740116, 32.096611, 42.977211>,  <37.706467, 31.364458, 43.076591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740116, 32.096611, 42.977211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109715, 31.976349, 42.882698>,  <38.331474, 31.904190, 42.825989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109715, 31.976349, 42.882698>,  <37.740116, 32.096611, 42.977211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109715, 31.976349, 42.882698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022310, 0.659239, -0.751603,
		0.381743, 0.689209, 0.615843,
		0.923999, -0.300659, -0.236284,
		38.386913, 31.886150, 42.811813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991730, 32.712540, 42.682278>,  <37.740116, 32.096611, 42.977211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991730, 32.712540, 42.682278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266563, 32.437939, 42.587093>,  <38.431465, 32.273178, 42.529984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266563, 32.437939, 42.587093>,  <37.991730, 32.712540, 42.682278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266563, 32.437939, 42.587093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091954, 0.407040, -0.908770,
		0.720732, 0.602523, 0.342799,
		0.687088, -0.686502, -0.237962,
		38.472691, 32.231987, 42.515705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421497, 33.095978, 42.302097>,  <37.991730, 32.712540, 42.682278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421497, 33.095978, 42.302097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529060, 32.719673, 42.219482>,  <38.593597, 32.493889, 42.169914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529060, 32.719673, 42.219482>,  <38.421497, 33.095978, 42.302097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529060, 32.719673, 42.219482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193662, 0.262871, -0.945195,
		0.943495, 0.214171, 0.252878,
		0.268908, -0.940760, -0.206541,
		38.609734, 32.437447, 42.157520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049377, 33.112381, 41.992931>,  <38.421497, 33.095978, 42.302097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049377, 33.112381, 41.992931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884872, 32.765949, 41.879246>,  <38.786171, 32.558090, 41.811035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884872, 32.765949, 41.879246>,  <39.049377, 33.112381, 41.992931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884872, 32.765949, 41.879246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226727, 0.204809, -0.952181,
		0.882871, -0.456031, 0.112134,
		-0.411258, -0.866077, -0.284215,
		38.761494, 32.506126, 41.793980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522110, 32.933556, 41.581696>,  <39.049377, 33.112381, 41.992931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522110, 32.933556, 41.581696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215702, 32.699150, 41.476013>,  <39.031857, 32.558506, 41.412605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215702, 32.699150, 41.476013>,  <39.522110, 32.933556, 41.581696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215702, 32.699150, 41.476013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170342, 0.211266, -0.962471,
		0.619838, -0.782276, -0.062011,
		-0.766018, -0.586013, -0.264205,
		38.985897, 32.523346, 41.396751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752182, 32.391476, 40.994755>,  <39.522110, 32.933556, 41.581696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752182, 32.391476, 40.994755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357246, 32.454899, 40.993172>,  <39.120285, 32.492954, 40.992222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357246, 32.454899, 40.993172>,  <39.752182, 32.391476, 40.994755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357246, 32.454899, 40.993172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059741, 0.348664, -0.935342,
		-0.146927, -0.923738, -0.353723,
		-0.987342, 0.158559, -0.003957,
		39.061043, 32.502468, 40.991985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500126, 32.104870, 40.387909>,  <39.752182, 32.391476, 40.994755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500126, 32.104870, 40.387909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189983, 32.337879, 40.485470>,  <39.003899, 32.477684, 40.544006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189983, 32.337879, 40.485470>,  <39.500126, 32.104870, 40.387909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189983, 32.337879, 40.485470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045553, 0.333617, -0.941607,
		-0.629882, -0.741189, -0.232136,
		-0.775353, 0.582527, 0.243903,
		38.957378, 32.512638, 40.558640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998646, 31.971857, 39.926018>,  <39.500126, 32.104870, 40.387909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998646, 31.971857, 39.926018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907734, 32.331131, 40.076538>,  <38.853188, 32.546696, 40.166851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907734, 32.331131, 40.076538>,  <38.998646, 31.971857, 39.926018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907734, 32.331131, 40.076538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290179, 0.306397, -0.906596,
		-0.929591, -0.315249, 0.190997,
		-0.227282, 0.898187, 0.376303,
		38.839550, 32.600586, 40.189430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553040, 32.160995, 39.523613>,  <38.998646, 31.971857, 39.926018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553040, 32.160995, 39.523613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703148, 32.501858, 39.669487>,  <38.793213, 32.706375, 39.757011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703148, 32.501858, 39.669487>,  <38.553040, 32.160995, 39.523613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703148, 32.501858, 39.669487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217614, 0.463441, -0.858991,
		-0.901008, 0.242994, 0.359358,
		0.375271, 0.852160, 0.364685,
		38.815731, 32.757507, 39.778893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345730, 32.567070, 39.061188>,  <38.553040, 32.160995, 39.523613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345730, 32.567070, 39.061188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587337, 32.817856, 39.257992>,  <38.732304, 32.968327, 39.376076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587337, 32.817856, 39.257992>,  <38.345730, 32.567070, 39.061188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587337, 32.817856, 39.257992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089788, 0.559889, -0.823688,
		-0.791894, 0.541702, 0.281891,
		0.604021, 0.626963, 0.492011,
		38.768543, 33.005943, 39.405594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249786, 33.247604, 38.770588>,  <38.345730, 32.567070, 39.061188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249786, 33.247604, 38.770588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603146, 33.265369, 38.957191>,  <38.815163, 33.276028, 39.069153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603146, 33.265369, 38.957191>,  <38.249786, 33.247604, 38.770588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603146, 33.265369, 38.957191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387595, 0.490273, -0.780643,
		-0.263391, 0.870436, 0.415891,
		0.883400, 0.044417, 0.466510,
		38.868164, 33.278694, 39.097145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311443, 33.939709, 38.891281>,  <38.249786, 33.247604, 38.770588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311443, 33.939709, 38.891281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684235, 33.796848, 38.866417>,  <38.907909, 33.711132, 38.851498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684235, 33.796848, 38.866417>,  <38.311443, 33.939709, 38.891281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684235, 33.796848, 38.866417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207037, 0.665134, -0.717449,
		0.297581, 0.655776, 0.693832,
		0.931977, -0.357148, -0.062161,
		38.963829, 33.689705, 38.847767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742859, 34.542656, 39.034004>,  <38.311443, 33.939709, 38.891281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742859, 34.542656, 39.034004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994324, 34.269596, 38.885002>,  <39.145203, 34.105759, 38.795601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994324, 34.269596, 38.885002>,  <38.742859, 34.542656, 39.034004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994324, 34.269596, 38.885002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501439, 0.721959, -0.476795,
		0.594421, 0.112955, 0.796181,
		0.628667, -0.682654, -0.372508,
		39.182922, 34.064800, 38.773251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369362, 34.911530, 38.998558>,  <38.742859, 34.542656, 39.034004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369362, 34.911530, 38.998558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420860, 34.610905, 38.739765>,  <39.451759, 34.430531, 38.584488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420860, 34.610905, 38.739765>,  <39.369362, 34.911530, 38.998558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420860, 34.610905, 38.739765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590210, 0.582351, -0.559035,
		0.796918, -0.309885, 0.518549,
		0.128741, -0.751558, -0.646983,
		39.459484, 34.385437, 38.545670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062119, 35.053921, 38.831833>,  <39.369362, 34.911530, 38.998558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062119, 35.053921, 38.831833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888943, 34.830620, 38.548733>,  <39.785038, 34.696640, 38.378872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888943, 34.830620, 38.548733>,  <40.062119, 35.053921, 38.831833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888943, 34.830620, 38.548733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449999, 0.546468, -0.706310,
		0.781066, -0.624277, 0.014627,
		-0.432940, -0.558257, -0.707751,
		39.759060, 34.663143, 38.336407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619228, 34.627659, 38.415356>,  <40.062119, 35.053921, 38.831833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619228, 34.627659, 38.415356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291176, 34.665878, 38.189697>,  <40.094345, 34.688808, 38.054302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291176, 34.665878, 38.189697>,  <40.619228, 34.627659, 38.415356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291176, 34.665878, 38.189697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548393, 0.412574, -0.727357,
		0.163252, -0.905899, -0.390763,
		-0.820130, 0.095549, -0.564142,
		40.045135, 34.694542, 38.020454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773552, 34.391792, 37.784813>,  <40.619228, 34.627659, 38.415356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773552, 34.391792, 37.784813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531750, 34.703785, 37.720078>,  <40.386669, 34.890980, 37.681236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531750, 34.703785, 37.720078>,  <40.773552, 34.391792, 37.784813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531750, 34.703785, 37.720078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705712, 0.430128, -0.562992,
		-0.369514, -0.454545, -0.810462,
		-0.604508, 0.779986, -0.161839,
		40.350399, 34.937782, 37.671524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737194, 34.605198, 37.000938>,  <40.773552, 34.391792, 37.784813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737194, 34.605198, 37.000938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684711, 34.925861, 37.234222>,  <40.653221, 35.118259, 37.374191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684711, 34.925861, 37.234222>,  <40.737194, 34.605198, 37.000938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684711, 34.925861, 37.234222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676585, 0.502393, -0.538363,
		-0.724582, 0.323953, -0.608306,
		-0.131205, 0.801658, 0.583207,
		40.645351, 35.166359, 37.409184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299561, 34.894184, 37.427326>,  <40.737194, 34.605198, 37.000938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299561, 34.894184, 37.427326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378986, 35.221344, 37.643333>,  <41.426643, 35.417641, 37.772938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378986, 35.221344, 37.643333>,  <41.299561, 34.894184, 37.427326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378986, 35.221344, 37.643333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932710, -0.326933, 0.152203,
		0.301036, 0.473458, -0.827777,
		0.198566, 0.817895, 0.540018,
		41.438557, 35.466713, 37.805340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679054, 35.461594, 37.280842>,  <41.299561, 34.894184, 37.427326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679054, 35.461594, 37.280842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735107, 35.348480, 37.660400>,  <41.768738, 35.280613, 37.888134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735107, 35.348480, 37.660400>,  <41.679054, 35.461594, 37.280842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735107, 35.348480, 37.660400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940944, -0.260273, -0.216524,
		0.308200, 0.923197, 0.229607,
		0.140134, -0.282780, 0.948893,
		41.777149, 35.263645, 37.945068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415310, 35.723236, 37.611115>,  <41.679054, 35.461594, 37.280842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415310, 35.723236, 37.611115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251587, 35.378952, 37.732208>,  <42.153351, 35.172382, 37.804863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251587, 35.378952, 37.732208>,  <42.415310, 35.723236, 37.611115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251587, 35.378952, 37.732208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878698, -0.461204, -0.123210,
		0.245669, 0.215579, 0.945078,
		-0.409312, -0.860707, 0.302733,
		42.128792, 35.120739, 37.823029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949303, 35.256939, 37.566807>,  <42.415310, 35.723236, 37.611115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949303, 35.256939, 37.566807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767216, 35.426392, 37.880066>,  <42.657963, 35.528061, 38.068020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767216, 35.426392, 37.880066>,  <42.949303, 35.256939, 37.566807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767216, 35.426392, 37.880066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571241, 0.813635, -0.108078,
		-0.682980, 0.398166, -0.612375,
		-0.455217, 0.423629, 0.783145,
		42.630650, 35.553482, 38.115009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381359, 35.561562, 37.079021>,  <42.949303, 35.256939, 37.566807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381359, 35.561562, 37.079021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737423, 35.743790, 37.082493>,  <43.951061, 35.853127, 37.084576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737423, 35.743790, 37.082493>,  <43.381359, 35.561562, 37.079021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737423, 35.743790, 37.082493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169470, -0.313324, -0.934403,
		-0.422967, 0.833236, -0.356113,
		0.890157, 0.455572, 0.008683,
		44.004471, 35.880463, 37.085098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568722, 35.364395, 36.404831>,  <43.381359, 35.561562, 37.079021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568722, 35.364395, 36.404831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876743, 35.603489, 36.494041>,  <44.061554, 35.746944, 36.547565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876743, 35.603489, 36.494041>,  <43.568722, 35.364395, 36.404831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876743, 35.603489, 36.494041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326701, -0.069191, -0.942591,
		-0.547985, 0.798705, -0.248561,
		0.770051, 0.597731, 0.223022,
		44.107758, 35.782810, 36.560947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261700, 34.995117, 36.231274>,  <43.568722, 35.364395, 36.404831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261700, 34.995117, 36.231274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616787, 35.171276, 36.177586>,  <44.829838, 35.276970, 36.145374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616787, 35.171276, 36.177586>,  <44.261700, 34.995117, 36.231274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616787, 35.171276, 36.177586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022785, 0.333197, 0.942582,
		0.459832, -0.833684, 0.305818,
		0.887714, 0.440397, -0.134220,
		44.883102, 35.303394, 36.137321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717735, 34.748344, 36.734581>,  <44.261700, 34.995117, 36.231274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717735, 34.748344, 36.734581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840782, 35.119839, 36.651802>,  <44.914612, 35.342735, 36.602135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840782, 35.119839, 36.651802>,  <44.717735, 34.748344, 36.734581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840782, 35.119839, 36.651802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114292, 0.251984, 0.960959,
		0.944620, -0.271959, 0.183662,
		0.307621, 0.928732, -0.206946,
		44.933067, 35.398457, 36.589718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165787, 34.986443, 37.317738>,  <44.717735, 34.748344, 36.734581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165787, 34.986443, 37.317738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067341, 35.332527, 37.142998>,  <45.008274, 35.540176, 37.038155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067341, 35.332527, 37.142998>,  <45.165787, 34.986443, 37.317738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067341, 35.332527, 37.142998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199858, 0.395721, 0.896360,
		0.948410, 0.307918, 0.075525,
		-0.246119, 0.865211, -0.436846,
		44.993504, 35.592091, 37.011944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416466, 35.580605, 37.755230>,  <45.165787, 34.986443, 37.317738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416466, 35.580605, 37.755230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139095, 35.727749, 37.507408>,  <44.972675, 35.816036, 37.358715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139095, 35.727749, 37.507408>,  <45.416466, 35.580605, 37.755230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139095, 35.727749, 37.507408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374667, 0.550380, 0.746128,
		0.615459, 0.749508, -0.243822,
		-0.693423, 0.367859, -0.619552,
		44.931068, 35.838108, 37.321541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524147, 36.209076, 37.873062>,  <45.416466, 35.580605, 37.755230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524147, 36.209076, 37.873062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154057, 36.191750, 37.722290>,  <44.932003, 36.181355, 37.631828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154057, 36.191750, 37.722290>,  <45.524147, 36.209076, 37.873062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154057, 36.191750, 37.722290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284706, 0.735931, 0.614286,
		0.250790, 0.675669, -0.693235,
		-0.925228, -0.043311, -0.376931,
		44.876488, 36.178757, 37.609211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379749, 36.864365, 37.700424>,  <45.524147, 36.209076, 37.873062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379749, 36.864365, 37.700424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020969, 36.692894, 37.743710>,  <44.805702, 36.590012, 37.769680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020969, 36.692894, 37.743710>,  <45.379749, 36.864365, 37.700424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020969, 36.692894, 37.743710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202410, 0.615739, 0.761509,
		-0.393073, 0.661134, -0.639058,
		-0.896952, -0.428680, 0.108210,
		44.751884, 36.564289, 37.776173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010315, 37.404739, 37.839554>,  <45.379749, 36.864365, 37.700424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010315, 37.404739, 37.839554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768604, 37.104225, 37.945698>,  <44.623577, 36.923916, 38.009384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768604, 37.104225, 37.945698>,  <45.010315, 37.404739, 37.839554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768604, 37.104225, 37.945698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333961, 0.541195, 0.771737,
		-0.723410, 0.377720, -0.577932,
		-0.604274, -0.751289, 0.265363,
		44.587322, 36.878838, 38.025307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273270, 37.605659, 37.873009>,  <45.010315, 37.404739, 37.839554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273270, 37.605659, 37.873009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306660, 37.299641, 38.128426>,  <44.326694, 37.116032, 38.281677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306660, 37.299641, 38.128426>,  <44.273270, 37.605659, 37.873009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306660, 37.299641, 38.128426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223251, 0.610135, 0.760193,
		-0.971180, -0.206016, -0.119863,
		0.083479, -0.765044, 0.638544,
		44.331703, 37.070126, 38.319988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565502, 37.471516, 38.213898>,  <44.273270, 37.605659, 37.873009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565502, 37.471516, 38.213898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858215, 37.318459, 38.439491>,  <44.033844, 37.226624, 38.574848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858215, 37.318459, 38.439491>,  <43.565502, 37.471516, 38.213898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858215, 37.318459, 38.439491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226149, 0.644302, 0.730570,
		-0.642927, -0.662161, 0.384952,
		0.731780, -0.382647, 0.563986,
		44.077751, 37.203663, 38.608688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315285, 37.280231, 38.969696>,  <43.565502, 37.471516, 38.213898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315285, 37.280231, 38.969696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711292, 37.312649, 39.015823>,  <43.948895, 37.332100, 39.043499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711292, 37.312649, 39.015823>,  <43.315285, 37.280231, 38.969696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711292, 37.312649, 39.015823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140910, 0.550179, 0.823072,
		0.003259, -0.831105, 0.556106,
		0.990017, 0.081044, 0.115318,
		44.008297, 37.336964, 39.050419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334419, 37.495049, 39.629559>,  <43.315285, 37.280231, 38.969696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334419, 37.495049, 39.629559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720970, 37.526676, 39.531689>,  <43.952900, 37.545654, 39.472965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720970, 37.526676, 39.531689>,  <43.334419, 37.495049, 39.629559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720970, 37.526676, 39.531689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158905, 0.564454, 0.810025,
		0.202159, -0.821668, 0.532910,
		0.966375, 0.079072, -0.244677,
		44.010883, 37.550396, 39.458286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711601, 37.358402, 40.252182>,  <43.334419, 37.495049, 39.629559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711601, 37.358402, 40.252182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930447, 37.582462, 40.003376>,  <44.061756, 37.716896, 39.854092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930447, 37.582462, 40.003376>,  <43.711601, 37.358402, 40.252182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930447, 37.582462, 40.003376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137094, 0.673097, 0.726737,
		0.825755, -0.482883, 0.291468,
		0.547115, 0.560148, -0.622013,
		44.094582, 37.750507, 39.816772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280922, 37.477142, 40.641090>,  <43.711601, 37.358402, 40.252182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280922, 37.477142, 40.641090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263050, 37.760139, 40.358967>,  <44.252327, 37.929935, 40.189693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263050, 37.760139, 40.358967>,  <44.280922, 37.477142, 40.641090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263050, 37.760139, 40.358967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271571, 0.688030, 0.672952,
		0.961381, -0.161478, -0.222871,
		-0.044675, 0.707488, -0.705311,
		44.249649, 37.972385, 40.147373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919037, 37.798222, 40.764820>,  <44.280922, 37.477142, 40.641090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919037, 37.798222, 40.764820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664146, 38.040176, 40.573803>,  <44.511211, 38.185349, 40.459194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664146, 38.040176, 40.573803>,  <44.919037, 37.798222, 40.764820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664146, 38.040176, 40.573803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144151, 0.702258, 0.697176,
		0.757074, 0.375422, -0.534694,
		-0.637228, 0.604890, -0.477544,
		44.472977, 38.221642, 40.430538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148666, 38.572723, 40.729603>,  <44.919037, 37.798222, 40.764820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148666, 38.572723, 40.729603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762974, 38.645893, 40.652878>,  <44.531559, 38.689796, 40.606842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762974, 38.645893, 40.652878>,  <45.148666, 38.572723, 40.729603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762974, 38.645893, 40.652878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049112, 0.834448, 0.548894,
		0.260466, 0.519842, -0.813586,
		-0.964233, 0.182925, -0.191815,
		44.473705, 38.700771, 40.595333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198235, 39.188190, 40.628117>,  <45.148666, 38.572723, 40.729603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198235, 39.188190, 40.628117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812439, 39.117519, 40.706654>,  <44.580963, 39.075115, 40.753777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812439, 39.117519, 40.706654>,  <45.198235, 39.188190, 40.628117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812439, 39.117519, 40.706654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098186, 0.929900, 0.354465,
		-0.245202, 0.322599, -0.914224,
		-0.964487, -0.176679, 0.196338,
		44.523094, 39.064514, 40.765556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807339, 39.733513, 40.515751>,  <45.198235, 39.188190, 40.628117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807339, 39.733513, 40.515751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560658, 39.545731, 40.768505>,  <44.412647, 39.433060, 40.920158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560658, 39.545731, 40.768505>,  <44.807339, 39.733513, 40.515751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560658, 39.545731, 40.768505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014628, 0.809405, 0.587069,
		-0.787059, 0.352804, -0.506030,
		-0.616704, -0.469460, 0.631889,
		44.375645, 39.404892, 40.958073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343147, 40.245770, 40.733212>,  <44.807339, 39.733513, 40.515751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343147, 40.245770, 40.733212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310280, 39.958096, 41.009190>,  <44.290562, 39.785492, 41.174778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310280, 39.958096, 41.009190>,  <44.343147, 40.245770, 40.733212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310280, 39.958096, 41.009190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234938, 0.686753, 0.687876,
		-0.968531, -0.105576, -0.225390,
		-0.082164, -0.719182, 0.689946,
		44.285629, 39.742340, 41.216175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798729, 40.437508, 41.039165>,  <44.343147, 40.245770, 40.733212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798729, 40.437508, 41.039165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967667, 40.211094, 41.322353>,  <44.069031, 40.075245, 41.492268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967667, 40.211094, 41.322353>,  <43.798729, 40.437508, 41.039165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967667, 40.211094, 41.322353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326561, 0.633586, 0.701374,
		-0.845566, -0.527420, 0.082747,
		0.422346, -0.566036, 0.707974,
		44.094372, 40.041283, 41.534744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388054, 40.518486, 41.491440>,  <43.798729, 40.437508, 41.039165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388054, 40.518486, 41.491440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682598, 40.364849, 41.714237>,  <43.859325, 40.272667, 41.847916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682598, 40.364849, 41.714237>,  <43.388054, 40.518486, 41.491440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682598, 40.364849, 41.714237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397878, 0.420024, 0.815643,
		-0.547237, -0.822223, 0.156465,
		0.736359, -0.384096, 0.556997,
		43.903507, 40.249619, 41.881336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089535, 40.222103, 42.032368>,  <43.388054, 40.518486, 41.491440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089535, 40.222103, 42.032368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460606, 40.286236, 42.167252>,  <43.683247, 40.324715, 42.248184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460606, 40.286236, 42.167252>,  <43.089535, 40.222103, 42.032368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460606, 40.286236, 42.167252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370219, 0.277531, 0.886518,
		0.048548, -0.947244, 0.316815,
		0.927675, 0.160330, 0.337214,
		43.738907, 40.334335, 42.268417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204876, 39.935749, 42.725094>,  <43.089535, 40.222103, 42.032368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204876, 39.935749, 42.725094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436962, 40.257324, 42.672871>,  <43.576214, 40.450268, 42.641537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436962, 40.257324, 42.672871>,  <43.204876, 39.935749, 42.725094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436962, 40.257324, 42.672871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323059, 0.374315, 0.869207,
		0.747655, -0.462146, 0.476900,
		0.580211, 0.803934, -0.130558,
		43.611027, 40.498505, 42.633705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481342, 40.048542, 43.399525>,  <43.204876, 39.935749, 42.725094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481342, 40.048542, 43.399525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510700, 40.394630, 43.201130>,  <43.528316, 40.602283, 43.082092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510700, 40.394630, 43.201130>,  <43.481342, 40.048542, 43.399525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510700, 40.394630, 43.201130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077547, 0.500771, 0.862099,
		0.994283, -0.024815, 0.103851,
		0.073399, 0.865224, -0.495984,
		43.532719, 40.654198, 43.052334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045105, 40.545612, 43.506390>,  <43.481342, 40.048542, 43.399525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045105, 40.545612, 43.506390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725452, 40.758766, 43.395092>,  <43.533661, 40.886658, 43.328316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725452, 40.758766, 43.395092>,  <44.045105, 40.545612, 43.506390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725452, 40.758766, 43.395092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098647, 0.340331, 0.935117,
		0.593001, 0.774733, -0.219404,
		-0.799136, 0.532882, -0.278242,
		43.485710, 40.918633, 43.311619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723927, 41.265430, 43.655479>,  <44.045105, 40.545612, 43.506390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723927, 41.265430, 43.655479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710720, 41.633785, 43.810848>,  <43.702797, 41.854797, 43.904068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710720, 41.633785, 43.810848>,  <43.723927, 41.265430, 43.655479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710720, 41.633785, 43.810848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678426, 0.306030, -0.667895,
		-0.733926, 0.241463, -0.634860,
		-0.033015, 0.920892, 0.388418,
		43.700817, 41.910053, 43.927372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792583, 41.749989, 43.061687>,  <43.723927, 41.265430, 43.655479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792583, 41.749989, 43.061687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926682, 41.912392, 43.401752>,  <44.007141, 42.009834, 43.605789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926682, 41.912392, 43.401752>,  <43.792583, 41.749989, 43.061687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926682, 41.912392, 43.401752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838667, 0.282523, -0.465638,
		-0.429241, 0.869103, -0.245789,
		0.335247, 0.406006, 0.850158,
		44.027256, 42.034195, 43.656799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205929, 42.397194, 43.006985>,  <43.792583, 41.749989, 43.061687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205929, 42.397194, 43.006985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321976, 42.178120, 43.320896>,  <44.391605, 42.046677, 43.509243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321976, 42.178120, 43.320896>,  <44.205929, 42.397194, 43.006985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321976, 42.178120, 43.320896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941414, 0.015981, -0.336876,
		0.171959, 0.836533, 0.520233,
		0.290122, -0.547683, 0.784775,
		44.409012, 42.013813, 43.556328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896309, 42.714676, 43.304947>,  <44.205929, 42.397194, 43.006985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896309, 42.714676, 43.304947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282677, 42.817150, 43.290165>,  <45.514496, 42.878635, 43.281296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282677, 42.817150, 43.290165>,  <44.896309, 42.714676, 43.304947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282677, 42.817150, 43.290165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225759, -0.903684, -0.363851,
		-0.126609, 0.343108, -0.930724,
		0.965921, 0.256186, -0.036955,
		45.572453, 42.894005, 43.279079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245922, 42.257706, 42.888309>,  <44.896309, 42.714676, 43.304947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245922, 42.257706, 42.888309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582100, 42.406540, 43.045895>,  <45.783806, 42.495842, 43.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582100, 42.406540, 43.045895>,  <45.245922, 42.257706, 42.888309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582100, 42.406540, 43.045895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491352, -0.829852, -0.264422,
		0.228545, 0.415807, -0.880268,
		0.840440, 0.372089, 0.393966,
		45.834232, 42.518166, 43.164085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576488, 42.393860, 42.264046>,  <45.245922, 42.257706, 42.888309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576488, 42.393860, 42.264046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783340, 42.301849, 42.593815>,  <45.907452, 42.246643, 42.791676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783340, 42.301849, 42.593815>,  <45.576488, 42.393860, 42.264046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783340, 42.301849, 42.593815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303168, -0.851539, -0.427752,
		0.800419, 0.471139, -0.370617,
		0.517125, -0.230021, 0.824422,
		45.938477, 42.232841, 42.841141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363037, 42.416252, 42.105953>,  <45.576488, 42.393860, 42.264046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363037, 42.416252, 42.105953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225380, 42.169750, 42.389305>,  <46.142784, 42.021851, 42.559315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225380, 42.169750, 42.389305>,  <46.363037, 42.416252, 42.105953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225380, 42.169750, 42.389305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173353, -0.783195, -0.597121,
		0.922775, -0.082696, 0.376361,
		-0.344144, -0.616252, 0.708377,
		46.122135, 41.984875, 42.601818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.877113, 41.969616, 42.544697>,  <46.363037, 42.416252, 42.105953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.877113, 41.969616, 42.544697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.516926, 41.868336, 42.403252>,  <46.300812, 41.807568, 42.318386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.516926, 41.868336, 42.403252>,  <46.877113, 41.969616, 42.544697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.516926, 41.868336, 42.403252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416928, -0.733985, -0.536132,
		-0.123795, -0.630201, 0.766499,
		-0.900470, -0.253205, -0.353612,
		46.246784, 41.792374, 42.297169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.932129, 41.196102, 42.485317>,  <46.877113, 41.969616, 42.544697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.932129, 41.196102, 42.485317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609421, 41.274513, 42.262360>,  <46.415794, 41.321560, 42.128586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609421, 41.274513, 42.262360>,  <46.932129, 41.196102, 42.485317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609421, 41.274513, 42.262360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342246, -0.613958, -0.711283,
		-0.481649, -0.764611, 0.428235,
		-0.806772, 0.196027, -0.557397,
		46.367390, 41.333321, 42.095139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667278, 40.539589, 42.329926>,  <46.932129, 41.196102, 42.485317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667278, 40.539589, 42.329926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.542164, 40.800785, 42.054020>,  <46.467094, 40.957500, 41.888477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.542164, 40.800785, 42.054020>,  <46.667278, 40.539589, 42.329926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542164, 40.800785, 42.054020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103476, -0.698453, -0.708136,
		-0.944172, -0.292866, 0.150895,
		-0.312782, 0.652988, -0.689764,
		46.448330, 40.996681, 41.847092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264900, 40.195099, 41.959007>,  <46.667278, 40.539589, 42.329926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264900, 40.195099, 41.959007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335434, 40.513260, 41.727062>,  <46.377754, 40.704155, 41.587894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335434, 40.513260, 41.727062>,  <46.264900, 40.195099, 41.959007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.335434, 40.513260, 41.727062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083685, -0.599079, -0.796305,
		-0.980767, 0.091889, -0.172200,
		0.176333, 0.795400, -0.579867,
		46.388332, 40.751881, 41.553101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734127, 40.313080, 41.384029>,  <46.264900, 40.195099, 41.959007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734127, 40.313080, 41.384029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052383, 40.504581, 41.235573>,  <46.243340, 40.619480, 41.146500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052383, 40.504581, 41.235573>,  <45.734127, 40.313080, 41.384029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052383, 40.504581, 41.235573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082190, -0.521705, -0.849157,
		-0.600162, 0.706132, -0.375743,
		0.795644, 0.478750, -0.371145,
		46.291077, 40.648205, 41.124229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560448, 40.303165, 40.646412>,  <45.734127, 40.313080, 41.384029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560448, 40.303165, 40.646412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943287, 40.419014, 40.642616>,  <46.172989, 40.488522, 40.640339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943287, 40.419014, 40.642616>,  <45.560448, 40.303165, 40.646412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943287, 40.419014, 40.642616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085709, -0.314231, -0.945470,
		-0.276809, 0.904091, -0.325572,
		0.957095, 0.289619, -0.009493,
		46.230415, 40.505901, 40.639767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652946, 40.702866, 40.023121>,  <45.560448, 40.303165, 40.646412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652946, 40.702866, 40.023121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989769, 40.542057, 40.166969>,  <46.191860, 40.445572, 40.253277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989769, 40.542057, 40.166969>,  <45.652946, 40.702866, 40.023121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989769, 40.542057, 40.166969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143440, -0.475815, -0.867770,
		0.519972, 0.782293, -0.342996,
		0.842053, -0.402017, 0.359622,
		46.242386, 40.421452, 40.274857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181526, 40.790009, 39.570850>,  <45.652946, 40.702866, 40.023121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181526, 40.790009, 39.570850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298759, 40.479881, 39.794632>,  <46.369099, 40.293804, 39.928902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298759, 40.479881, 39.794632>,  <46.181526, 40.790009, 39.570850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298759, 40.479881, 39.794632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124834, -0.549109, -0.826375,
		0.947903, 0.312034, -0.064149,
		0.293082, -0.775315, 0.559455,
		46.386684, 40.247288, 39.962467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838009, 40.615368, 39.330936>,  <46.181526, 40.790009, 39.570850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838009, 40.615368, 39.330936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720589, 40.278183, 39.511269>,  <46.650135, 40.075874, 39.619469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720589, 40.278183, 39.511269>,  <46.838009, 40.615368, 39.330936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720589, 40.278183, 39.511269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344406, -0.533195, -0.772714,
		0.891747, -0.071563, 0.446841,
		-0.293552, -0.842960, 0.450828,
		46.632523, 40.025295, 39.646519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249928, 40.117119, 39.111767>,  <46.838009, 40.615368, 39.330936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249928, 40.117119, 39.111767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979855, 39.861435, 39.259033>,  <46.817810, 39.708027, 39.347393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979855, 39.861435, 39.259033>,  <47.249928, 40.117119, 39.111767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979855, 39.861435, 39.259033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308914, -0.698246, -0.645774,
		0.669854, -0.322282, 0.668902,
		-0.675180, -0.639208, 0.368165,
		46.777302, 39.669674, 39.369484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.527020, 39.471107, 39.037842>,  <47.249928, 40.117119, 39.111767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.527020, 39.471107, 39.037842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132706, 39.407619, 39.059875>,  <46.896118, 39.369526, 39.073093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132706, 39.407619, 39.059875>,  <47.527020, 39.471107, 39.037842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.132706, 39.407619, 39.059875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079525, -0.729625, -0.679207,
		0.147992, -0.665173, 0.731877,
		-0.985786, -0.158719, 0.055081,
		46.836971, 39.360004, 39.076401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.452042, 38.751606, 39.075241>,  <47.527020, 39.471107, 39.037842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.452042, 38.751606, 39.075241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083736, 38.872131, 38.976120>,  <46.862755, 38.944447, 38.916649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083736, 38.872131, 38.976120>,  <47.452042, 38.751606, 39.075241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.083736, 38.872131, 38.976120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090197, -0.782399, -0.616211,
		-0.379551, -0.545033, 0.747582,
		-0.920763, 0.301313, -0.247800,
		46.807507, 38.962524, 38.901779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981083, 38.216778, 39.160477>,  <47.452042, 38.751606, 39.075241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981083, 38.216778, 39.160477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797192, 38.464142, 38.905537>,  <46.686859, 38.612560, 38.752571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797192, 38.464142, 38.905537>,  <46.981083, 38.216778, 39.160477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.797192, 38.464142, 38.905537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037802, -0.730665, -0.681689,
		-0.887255, -0.289298, 0.359283,
		-0.459727, 0.618414, -0.637350,
		46.659275, 38.649666, 38.714333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426426, 37.846626, 38.861832>,  <46.981083, 38.216778, 39.160477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426426, 37.846626, 38.861832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502747, 38.129829, 38.589855>,  <46.548538, 38.299751, 38.426670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502747, 38.129829, 38.589855>,  <46.426426, 37.846626, 38.861832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502747, 38.129829, 38.589855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022834, -0.695684, -0.717985,
		-0.981363, 0.121466, -0.148904,
		0.190801, 0.708004, -0.679945,
		46.559986, 38.342232, 38.385872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186569, 37.575214, 38.332653>,  <46.426426, 37.846626, 38.861832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186569, 37.575214, 38.332653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390919, 37.874184, 38.162777>,  <46.513531, 38.053566, 38.060852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390919, 37.874184, 38.162777>,  <46.186569, 37.575214, 38.332653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390919, 37.874184, 38.162777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049020, -0.518545, -0.853644,
		-0.858255, 0.415289, -0.301551,
		0.510877, 0.747426, -0.424687,
		46.544182, 38.098412, 38.035370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936069, 37.604195, 37.636360>,  <46.186569, 37.575214, 38.332653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936069, 37.604195, 37.636360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290127, 37.790234, 37.630619>,  <46.502560, 37.901855, 37.627174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290127, 37.790234, 37.630619>,  <45.936069, 37.604195, 37.636360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290127, 37.790234, 37.630619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201710, -0.411315, -0.888894,
		-0.419325, 0.783904, -0.457887,
		0.885144, 0.465096, -0.014353,
		46.555672, 37.929764, 37.626312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070736, 38.005630, 37.004009>,  <45.936069, 37.604195, 37.636360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070736, 38.005630, 37.004009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432648, 37.902351, 37.139484>,  <46.649796, 37.840385, 37.220768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432648, 37.902351, 37.139484>,  <46.070736, 38.005630, 37.004009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432648, 37.902351, 37.139484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218218, -0.401858, -0.889321,
		0.365723, 0.878547, -0.307250,
		0.904780, -0.258198, 0.338683,
		46.704082, 37.824894, 37.241089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630299, 38.206081, 36.492798>,  <46.070736, 38.005630, 37.004009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630299, 38.206081, 36.492798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763126, 37.903439, 36.718109>,  <46.842823, 37.721855, 36.853294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763126, 37.903439, 36.718109>,  <46.630299, 38.206081, 36.492798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763126, 37.903439, 36.718109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155371, -0.545133, -0.823826,
		0.930372, 0.361082, -0.063467,
		0.332067, -0.756604, 0.563278,
		46.862747, 37.676456, 36.887093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.217171, 38.046654, 36.082993>,  <46.630299, 38.206081, 36.492798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.217171, 38.046654, 36.082993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172417, 37.737736, 36.333122>,  <47.145565, 37.552383, 36.483200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172417, 37.737736, 36.333122>,  <47.217171, 38.046654, 36.082993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.172417, 37.737736, 36.333122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168161, -0.634918, -0.754056,
		0.979389, 0.020786, 0.200910,
		-0.111888, -0.772300, 0.625327,
		47.138851, 37.506046, 36.520721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716717, 37.670845, 35.905895>,  <47.217171, 38.046654, 36.082993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716717, 37.670845, 35.905895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487755, 37.400894, 36.092186>,  <47.350380, 37.238922, 36.203960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487755, 37.400894, 36.092186>,  <47.716717, 37.670845, 35.905895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.487755, 37.400894, 36.092186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172265, -0.654272, -0.736378,
		0.801674, -0.341276, 0.490764,
		-0.572402, -0.674876, 0.465723,
		47.316032, 37.198433, 36.231903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.031769, 36.996239, 36.023438>,  <47.716717, 37.670845, 35.905895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.031769, 36.996239, 36.023438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638214, 36.929607, 35.997467>,  <47.402081, 36.889629, 35.981884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638214, 36.929607, 35.997467>,  <48.031769, 36.996239, 36.023438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638214, 36.929607, 35.997467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159167, -0.650710, -0.742457,
		0.081427, -0.740829, 0.666740,
		-0.983888, -0.166579, -0.064930,
		47.343048, 36.879635, 35.977989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.845207, 36.239990, 36.186657>,  <48.031769, 36.996239, 36.023438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.845207, 36.239990, 36.186657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535255, 36.341862, 35.955246>,  <47.349285, 36.402985, 35.816399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535255, 36.341862, 35.955246>,  <47.845207, 36.239990, 36.186657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.535255, 36.341862, 35.955246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104995, -0.850671, -0.515107,
		-0.623324, -0.459890, 0.632430,
		-0.774883, 0.254677, -0.578530,
		47.302792, 36.418266, 35.781689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.265533, 35.795918, 36.202122>,  <47.845207, 36.239990, 36.186657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.265533, 35.795918, 36.202122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362473, 35.979183, 35.860043>,  <47.420635, 36.089142, 35.654797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362473, 35.979183, 35.860043>,  <47.265533, 35.795918, 36.202122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362473, 35.979183, 35.860043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088576, -0.888237, -0.450764,
		-0.966139, 0.033490, -0.255840,
		0.242343, 0.458162, -0.855194,
		47.435177, 36.116631, 35.603485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.549427, 35.466824, 35.613277>,  <47.265533, 35.795918, 36.202122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.549427, 35.466824, 35.613277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513660, 35.074230, 35.545528>,  <47.492199, 34.838673, 35.504879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513660, 35.074230, 35.545528>,  <47.549427, 35.466824, 35.613277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513660, 35.074230, 35.545528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278054, 0.187896, -0.942009,
		0.956394, -0.037139, -0.289708,
		-0.089421, -0.981486, -0.169376,
		47.486835, 34.779785, 35.494717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.060860, 35.259560, 35.093887>,  <47.549427, 35.466824, 35.613277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.060860, 35.259560, 35.093887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729301, 35.036224, 35.080082>,  <47.530369, 34.902222, 35.071796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729301, 35.036224, 35.080082>,  <48.060860, 35.259560, 35.093887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.729301, 35.036224, 35.080082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173798, 0.315679, -0.932814,
		0.531724, -0.767204, -0.358703,
		-0.828893, -0.558341, -0.034516,
		47.480633, 34.868721, 35.069729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.179821, 33.055538, 46.760101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.883183, 32.788010, 46.780941>,  <34.705200, 32.627491, 46.793446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.883183, 32.788010, 46.780941>,  <35.179821, 33.055538, 46.760101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883183, 32.788010, 46.780941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156681, 0.097170, -0.982858,
		0.652295, -0.737045, -0.176852,
		-0.741595, -0.668823, 0.052097,
		34.660706, 32.587364, 46.796570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271824, 32.603973, 46.227154>,  <35.179821, 33.055538, 46.760101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271824, 32.603973, 46.227154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893230, 32.508957, 46.314560>,  <34.666077, 32.451946, 46.367004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893230, 32.508957, 46.314560>,  <35.271824, 32.603973, 46.227154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893230, 32.508957, 46.314560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183741, -0.160063, -0.969855,
		0.265361, -0.958098, 0.107849,
		-0.946479, -0.237546, 0.218516,
		34.609287, 32.437695, 46.380116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140038, 31.931349, 45.891552>,  <35.271824, 32.603973, 46.227154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140038, 31.931349, 45.891552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.800255, 32.135120, 45.946552>,  <34.596386, 32.257381, 45.979553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.800255, 32.135120, 45.946552>,  <35.140038, 31.931349, 45.891552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800255, 32.135120, 45.946552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191390, -0.054620, -0.979993,
		-0.491725, -0.858778, 0.143896,
		-0.849456, 0.509428, 0.137504,
		34.545418, 32.287949, 45.987804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761459, 31.610037, 45.434177>,  <35.140038, 31.931349, 45.891552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761459, 31.610037, 45.434177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551598, 31.942272, 45.508869>,  <34.425682, 32.141613, 45.553684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551598, 31.942272, 45.508869>,  <34.761459, 31.610037, 45.434177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551598, 31.942272, 45.508869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253603, 0.056895, -0.965634,
		-0.812667, -0.553974, 0.180790,
		-0.524650, 0.830588, 0.186726,
		34.394203, 32.191448, 45.564888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108120, 31.551346, 45.042511>,  <34.761459, 31.610037, 45.434177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108120, 31.551346, 45.042511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.172897, 31.941980, 45.099159>,  <34.211761, 32.176361, 45.133148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.172897, 31.941980, 45.099159>,  <34.108120, 31.551346, 45.042511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172897, 31.941980, 45.099159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308622, 0.186434, -0.932735,
		-0.937298, 0.107342, 0.331587,
		0.161941, 0.976586, 0.141616,
		34.221481, 32.234955, 45.141644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520020, 31.790554, 44.767487>,  <34.108120, 31.551346, 45.042511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520020, 31.790554, 44.767487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786503, 32.088821, 44.762810>,  <33.946392, 32.267780, 44.760006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786503, 32.088821, 44.762810>,  <33.520020, 31.790554, 44.767487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786503, 32.088821, 44.762810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110218, 0.082947, -0.990440,
		-0.737572, 0.661133, 0.137447,
		0.666213, 0.745670, -0.011689,
		33.986366, 32.312523, 44.759304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245449, 32.361492, 44.218662>,  <33.520020, 31.790554, 44.767487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245449, 32.361492, 44.218662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637665, 32.416767, 44.274445>,  <33.872993, 32.449932, 44.307915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637665, 32.416767, 44.274445>,  <33.245449, 32.361492, 44.218662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637665, 32.416767, 44.274445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088886, 0.320895, -0.942934,
		-0.175055, 0.936979, 0.302367,
		0.980538, 0.138189, 0.139459,
		33.931828, 32.458225, 44.316280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430256, 32.991901, 43.899517>,  <33.245449, 32.361492, 44.218662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430256, 32.991901, 43.899517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.789509, 32.819324, 43.933475>,  <34.005062, 32.715778, 43.953850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.789509, 32.819324, 43.933475>,  <33.430256, 32.991901, 43.899517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789509, 32.819324, 43.933475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319544, 0.507758, -0.800045,
		0.302068, 0.745678, 0.593902,
		0.898135, -0.431446, 0.084900,
		34.058949, 32.689892, 43.958946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986332, 33.544308, 43.819733>,  <33.430256, 32.991901, 43.899517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986332, 33.544308, 43.819733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173008, 33.195988, 43.757885>,  <34.285011, 32.986996, 43.720776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173008, 33.195988, 43.757885>,  <33.986332, 33.544308, 43.819733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173008, 33.195988, 43.757885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468767, 0.391793, -0.791679,
		0.749973, 0.296988, 0.591049,
		0.466688, -0.870802, -0.154616,
		34.313015, 32.934746, 43.711498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650826, 33.710911, 43.488701>,  <33.986332, 33.544308, 43.819733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650826, 33.710911, 43.488701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625881, 33.325417, 43.384907>,  <34.610916, 33.094120, 43.322632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625881, 33.325417, 43.384907>,  <34.650826, 33.710911, 43.488701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625881, 33.325417, 43.384907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250201, 0.236595, -0.938841,
		0.966184, -0.123470, 0.226372,
		-0.062361, -0.963731, -0.259487,
		34.607174, 33.036297, 43.307060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268909, 33.408546, 43.141277>,  <34.650826, 33.710911, 43.488701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268909, 33.408546, 43.141277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952133, 33.212234, 42.995972>,  <34.762066, 33.094448, 42.908787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952133, 33.212234, 42.995972>,  <35.268909, 33.408546, 43.141277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952133, 33.212234, 42.995972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363025, 0.099919, -0.926406,
		0.490957, -0.865536, 0.099034,
		-0.791943, -0.490778, -0.363268,
		34.714550, 33.065002, 42.886990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472572, 33.090008, 42.592876>,  <35.268909, 33.408546, 43.141277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472572, 33.090008, 42.592876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079342, 33.053959, 42.529072>,  <34.843403, 33.032330, 42.490791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079342, 33.053959, 42.529072>,  <35.472572, 33.090008, 42.592876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079342, 33.053959, 42.529072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138307, 0.205906, -0.968749,
		0.120147, -0.974413, -0.189956,
		-0.983074, -0.090120, -0.159508,
		34.784420, 33.026924, 42.481220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472218, 32.629917, 42.185726>,  <35.472572, 33.090008, 42.592876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472218, 32.629917, 42.185726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126808, 32.829479, 42.156269>,  <34.919563, 32.949215, 42.138596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126808, 32.829479, 42.156269>,  <35.472218, 32.629917, 42.185726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126808, 32.829479, 42.156269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180101, 0.168677, -0.969078,
		-0.471052, -0.850085, -0.235509,
		-0.863524, 0.498902, -0.073646,
		34.867752, 32.979149, 42.134174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124893, 32.476086, 41.555779>,  <35.472218, 32.629917, 42.185726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124893, 32.476086, 41.555779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910698, 32.803902, 41.637363>,  <34.782181, 33.000591, 41.686314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910698, 32.803902, 41.637363>,  <35.124893, 32.476086, 41.555779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910698, 32.803902, 41.637363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074101, 0.286165, -0.955311,
		-0.841284, -0.496447, -0.213968,
		-0.535491, 0.819543, 0.203958,
		34.750050, 33.049763, 41.698551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558708, 32.375263, 41.132172>,  <35.124893, 32.476086, 41.555779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558708, 32.375263, 41.132172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.658577, 32.752369, 41.220581>,  <34.718498, 32.978634, 41.273628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.658577, 32.752369, 41.220581>,  <34.558708, 32.375263, 41.132172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658577, 32.752369, 41.220581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088805, 0.204997, -0.974726,
		-0.964249, 0.262993, -0.032540,
		0.249675, 0.942768, 0.221023,
		34.733479, 33.035198, 41.286888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426975, 32.709400, 40.539204>,  <34.558708, 32.375263, 41.132172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426975, 32.709400, 40.539204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599422, 33.034359, 40.696255>,  <34.702888, 33.229332, 40.790485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599422, 33.034359, 40.696255>,  <34.426975, 32.709400, 40.539204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599422, 33.034359, 40.696255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000790, 0.434804, -0.900525,
		-0.902297, 0.388539, 0.186808,
		0.431114, 0.812393, 0.392630,
		34.728756, 33.278076, 40.814045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111797, 33.410965, 40.236988>,  <34.426975, 32.709400, 40.539204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111797, 33.410965, 40.236988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468868, 33.506603, 40.389809>,  <34.683109, 33.563984, 40.481503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468868, 33.506603, 40.389809>,  <34.111797, 33.410965, 40.236988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468868, 33.506603, 40.389809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267759, 0.400540, -0.876283,
		-0.362540, 0.884535, 0.293534,
		0.892676, 0.239091, 0.382054,
		34.736671, 33.578331, 40.504425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145142, 34.114758, 40.148758>,  <34.111797, 33.410965, 40.236988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145142, 34.114758, 40.148758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.521343, 33.983315, 40.183331>,  <34.747063, 33.904449, 40.204075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.521343, 33.983315, 40.183331>,  <34.145142, 34.114758, 40.148758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521343, 33.983315, 40.183331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253343, 0.508679, -0.822838,
		0.226427, 0.795779, 0.561665,
		0.940504, -0.328606, 0.086427,
		34.803493, 33.884731, 40.209259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523796, 34.565273, 39.778984>,  <34.145142, 34.114758, 40.148758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523796, 34.565273, 39.778984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765984, 34.247627, 39.800079>,  <34.911297, 34.057037, 39.812737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765984, 34.247627, 39.800079>,  <34.523796, 34.565273, 39.778984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765984, 34.247627, 39.800079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406714, 0.251777, -0.878175,
		0.684098, 0.553157, 0.475423,
		0.605470, -0.794119, 0.052736,
		34.947624, 34.009392, 39.815899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142029, 34.828117, 39.564289>,  <34.523796, 34.565273, 39.778984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142029, 34.828117, 39.564289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.154373, 34.432430, 39.507027>,  <35.161781, 34.195019, 39.472672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.154373, 34.432430, 39.507027>,  <35.142029, 34.828117, 39.564289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154373, 34.432430, 39.507027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555343, 0.136053, -0.820417,
		0.831049, -0.054176, 0.553555,
		0.030866, -0.989219, -0.143153,
		35.163631, 34.135666, 39.464081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865902, 34.721539, 39.420109>,  <35.142029, 34.828117, 39.564289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865902, 34.721539, 39.420109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676800, 34.403851, 39.267414>,  <35.563339, 34.213238, 39.175797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676800, 34.403851, 39.267414>,  <35.865902, 34.721539, 39.420109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676800, 34.403851, 39.267414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422332, 0.176000, -0.889190,
		0.773396, -0.581588, 0.252218,
		-0.472752, -0.794216, -0.381741,
		35.534973, 34.165585, 39.152893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432854, 34.465199, 39.095005>,  <35.865902, 34.721539, 39.420109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432854, 34.465199, 39.095005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119579, 34.271004, 38.939613>,  <35.931614, 34.154488, 38.846378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119579, 34.271004, 38.939613>,  <36.432854, 34.465199, 39.095005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119579, 34.271004, 38.939613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457643, -0.027123, -0.888723,
		0.420926, -0.873823, 0.243422,
		-0.783189, -0.485487, -0.388482,
		35.884624, 34.125359, 38.823071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827541, 34.431953, 38.502220>,  <36.432854, 34.465199, 39.095005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827541, 34.431953, 38.502220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046772, 34.763691, 38.545681>,  <37.178310, 34.962734, 38.571758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046772, 34.763691, 38.545681>,  <36.827541, 34.431953, 38.502220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046772, 34.763691, 38.545681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141350, -0.219868, 0.965235,
		0.824397, -0.513666, -0.237732,
		0.548078, 0.829340, 0.108652,
		37.211197, 35.012493, 38.578278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398369, 34.214848, 38.958809>,  <36.827541, 34.431953, 38.502220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398369, 34.214848, 38.958809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368088, 34.613594, 38.968060>,  <37.349918, 34.852840, 38.973610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368088, 34.613594, 38.968060>,  <37.398369, 34.214848, 38.958809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368088, 34.613594, 38.968060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052392, -0.019184, 0.998442,
		0.995753, 0.076799, -0.050775,
		-0.075705, 0.996862, 0.023126,
		37.345375, 34.912651, 38.974998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810585, 34.342648, 39.541664>,  <37.398369, 34.214848, 38.958809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810585, 34.342648, 39.541664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638977, 34.698586, 39.479549>,  <37.536015, 34.912148, 39.442280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638977, 34.698586, 39.479549>,  <37.810585, 34.342648, 39.541664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638977, 34.698586, 39.479549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165325, 0.246360, 0.954973,
		0.888039, 0.384025, -0.252807,
		-0.429015, 0.889849, -0.155289,
		37.510273, 34.965542, 39.432964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251987, 34.906090, 39.817329>,  <37.810585, 34.342648, 39.541664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251987, 34.906090, 39.817329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876091, 35.039761, 39.788464>,  <37.650551, 35.119965, 39.771145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876091, 35.039761, 39.788464>,  <38.251987, 34.906090, 39.817329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876091, 35.039761, 39.788464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013397, 0.246920, 0.968943,
		0.341620, 0.909591, -0.236518,
		-0.939743, 0.334179, -0.072167,
		37.594170, 35.140015, 39.766815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297665, 35.517609, 40.149406>,  <38.251987, 34.906090, 39.817329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297665, 35.517609, 40.149406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902229, 35.458809, 40.136246>,  <37.664967, 35.423527, 40.128349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902229, 35.458809, 40.136246>,  <38.297665, 35.517609, 40.149406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902229, 35.458809, 40.136246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075332, 0.293301, 0.953047,
		-0.130451, 0.944650, -0.301028,
		-0.988589, -0.147003, -0.032901,
		37.605652, 35.414707, 40.126377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008152, 36.089470, 40.502056>,  <38.297665, 35.517609, 40.149406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008152, 36.089470, 40.502056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726112, 35.805855, 40.505985>,  <37.556889, 35.635685, 40.508343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726112, 35.805855, 40.505985>,  <38.008152, 36.089470, 40.502056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726112, 35.805855, 40.505985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258414, 0.269834, 0.927584,
		-0.660344, 0.651501, -0.373485,
		-0.705101, -0.709039, 0.009826,
		37.514584, 35.593143, 40.508934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460403, 36.310715, 40.942547>,  <38.008152, 36.089470, 40.502056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460403, 36.310715, 40.942547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375584, 35.920128, 40.926853>,  <37.324692, 35.685776, 40.917439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375584, 35.920128, 40.926853>,  <37.460403, 36.310715, 40.942547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375584, 35.920128, 40.926853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205281, 0.005257, 0.978689,
		-0.955455, 0.215583, -0.201566,
		-0.212048, -0.976471, -0.039233,
		37.311970, 35.627186, 40.915085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795460, 36.193886, 41.256729>,  <37.460403, 36.310715, 40.942547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795460, 36.193886, 41.256729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982441, 35.841427, 41.285202>,  <37.094631, 35.629951, 41.302284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982441, 35.841427, 41.285202>,  <36.795460, 36.193886, 41.256729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982441, 35.841427, 41.285202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069477, 0.043649, 0.996628,
		-0.881282, -0.470824, -0.040815,
		0.467455, -0.881146, 0.071178,
		37.122677, 35.577084, 41.306557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354424, 35.664631, 41.630795>,  <36.795460, 36.193886, 41.256729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354424, 35.664631, 41.630795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704685, 35.472687, 41.652576>,  <36.914841, 35.357521, 41.665646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704685, 35.472687, 41.652576>,  <36.354424, 35.664631, 41.630795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704685, 35.472687, 41.652576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276259, -0.405227, 0.871477,
		-0.396098, -0.778168, -0.487403,
		0.875664, -0.479839, 0.054466,
		36.967381, 35.328728, 41.668911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216061, 34.906380, 41.877422>,  <36.354424, 35.664631, 41.630795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216061, 34.906380, 41.877422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603825, 34.980019, 41.942368>,  <36.836483, 35.024200, 41.981335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603825, 34.980019, 41.942368>,  <36.216061, 34.906380, 41.877422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603825, 34.980019, 41.942368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093819, -0.333344, 0.938126,
		0.226828, -0.924657, -0.305874,
		0.969405, 0.184096, 0.162362,
		36.894646, 35.035248, 41.991077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412048, 34.328342, 42.269112>,  <36.216061, 34.906380, 41.877422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412048, 34.328342, 42.269112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689487, 34.607269, 42.341412>,  <36.855949, 34.774628, 42.384792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689487, 34.607269, 42.341412>,  <36.412048, 34.328342, 42.269112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689487, 34.607269, 42.341412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114737, -0.140773, 0.983371,
		0.711169, -0.702800, -0.017631,
		0.693595, 0.697320, 0.180750,
		36.897568, 34.816463, 42.395638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865944, 34.012459, 42.828747>,  <36.412048, 34.328342, 42.269112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865944, 34.012459, 42.828747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.921745, 34.408230, 42.844639>,  <36.955227, 34.645691, 42.854176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.921745, 34.408230, 42.844639>,  <36.865944, 34.012459, 42.828747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921745, 34.408230, 42.844639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108109, -0.024664, 0.993833,
		0.984303, -0.142935, 0.103526,
		0.139501, 0.989424, 0.039729,
		36.963596, 34.705059, 42.856556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443996, 34.165245, 43.181145>,  <36.865944, 34.012459, 42.828747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443996, 34.165245, 43.181145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354988, 34.552280, 43.228916>,  <37.301582, 34.784500, 43.257580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354988, 34.552280, 43.228916>,  <37.443996, 34.165245, 43.181145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354988, 34.552280, 43.228916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005808, -0.121181, 0.992613,
		0.974911, 0.221568, 0.021345,
		-0.222518, 0.967586, 0.119428,
		37.288231, 34.842556, 43.264744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793259, 34.312847, 43.820992>,  <37.443996, 34.165245, 43.181145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793259, 34.312847, 43.820992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548016, 34.625393, 43.774418>,  <37.400867, 34.812920, 43.746475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548016, 34.625393, 43.774418>,  <37.793259, 34.312847, 43.820992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548016, 34.625393, 43.774418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279500, -0.076701, 0.957077,
		0.738900, 0.619338, 0.265418,
		-0.613112, 0.781369, -0.116431,
		37.364082, 34.859802, 43.739491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026928, 34.845642, 44.252975>,  <37.793259, 34.312847, 43.820992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026928, 34.845642, 44.252975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631794, 34.883438, 44.203571>,  <37.394714, 34.906116, 44.173927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631794, 34.883438, 44.203571>,  <38.026928, 34.845642, 44.252975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631794, 34.883438, 44.203571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139419, -0.186247, 0.972561,
		0.068891, 0.977949, 0.197155,
		-0.987834, 0.094488, -0.123514,
		37.335445, 34.911785, 44.166515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822208, 35.263794, 44.778191>,  <38.026928, 34.845642, 44.252975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822208, 35.263794, 44.778191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503609, 35.063046, 44.643299>,  <37.312450, 34.942596, 44.562366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503609, 35.063046, 44.643299>,  <37.822208, 35.263794, 44.778191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503609, 35.063046, 44.643299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290690, -0.171203, 0.941376,
		-0.530180, 0.847831, -0.009525,
		-0.796497, -0.501868, -0.337224,
		37.264660, 34.912483, 44.542133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407181, 35.396854, 45.320103>,  <37.822208, 35.263794, 44.778191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407181, 35.396854, 45.320103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238361, 35.090038, 45.126801>,  <37.137070, 34.905949, 45.010818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238361, 35.090038, 45.126801>,  <37.407181, 35.396854, 45.320103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238361, 35.090038, 45.126801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452928, -0.283358, 0.845319,
		-0.785324, 0.575642, -0.227822,
		-0.422046, -0.767037, -0.483252,
		37.111748, 34.859928, 44.981827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743023, 35.322922, 45.553730>,  <37.407181, 35.396854, 45.320103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743023, 35.322922, 45.553730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838348, 34.958866, 45.418167>,  <36.895542, 34.740433, 45.336830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838348, 34.958866, 45.418167>,  <36.743023, 35.322922, 45.553730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838348, 34.958866, 45.418167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329653, -0.404051, 0.853271,
		-0.913531, -0.091619, -0.396318,
		0.238309, -0.910137, -0.338910,
		36.909840, 34.685825, 45.316494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.173504, 34.873802, 46.015919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448311, 34.630436, 45.857006>,  <36.613197, 34.484417, 45.761658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448311, 34.630436, 45.857006>,  <36.173504, 34.873802, 46.015919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448311, 34.630436, 45.857006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154755, -0.656713, 0.738091,
		-0.709966, -0.445603, -0.545331,
		0.687022, -0.608412, -0.397285,
		36.654419, 34.447914, 45.737820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822216, 34.214310, 46.016327>,  <36.173504, 34.873802, 46.015919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822216, 34.214310, 46.016327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210617, 34.128510, 45.974117>,  <36.443657, 34.077030, 45.948792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210617, 34.128510, 45.974117>,  <35.822216, 34.214310, 46.016327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210617, 34.128510, 45.974117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054343, -0.627946, 0.776357,
		-0.232792, -0.748113, -0.621397,
		0.971007, -0.214499, -0.105527,
		36.501919, 34.064159, 45.942459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850399, 33.438366, 46.057682>,  <35.822216, 34.214310, 46.016327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850399, 33.438366, 46.057682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206638, 33.592701, 46.153984>,  <36.420383, 33.685303, 46.211765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206638, 33.592701, 46.153984>,  <35.850399, 33.438366, 46.057682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206638, 33.592701, 46.153984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007109, -0.541133, 0.840907,
		0.454733, -0.747200, -0.484675,
		0.890599, 0.385834, 0.240759,
		36.473820, 33.708450, 46.226212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174110, 32.830013, 46.323120>,  <35.850399, 33.438366, 46.057682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174110, 32.830013, 46.323120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380726, 33.155300, 46.430344>,  <36.504696, 33.350471, 46.494678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380726, 33.155300, 46.430344>,  <36.174110, 32.830013, 46.323120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380726, 33.155300, 46.430344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309612, -0.469261, 0.827004,
		0.798327, -0.344187, -0.494176,
		0.516541, 0.813222, 0.268059,
		36.535686, 33.399265, 46.510761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895638, 32.698128, 46.395733>,  <36.174110, 32.830013, 46.323120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895638, 32.698128, 46.395733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806404, 33.008331, 46.631977>,  <36.752865, 33.194454, 46.773724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806404, 33.008331, 46.631977>,  <36.895638, 32.698128, 46.395733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806404, 33.008331, 46.631977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340528, -0.505713, 0.792651,
		0.913387, 0.377945, -0.151268,
		-0.223080, 0.775508, 0.590612,
		36.739479, 33.240982, 46.809162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374557, 32.628975, 46.949757>,  <36.895638, 32.698128, 46.395733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374557, 32.628975, 46.949757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118118, 32.898441, 47.096817>,  <36.964256, 33.060120, 47.185055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118118, 32.898441, 47.096817>,  <37.374557, 32.628975, 46.949757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118118, 32.898441, 47.096817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255378, -0.264492, 0.929960,
		0.723724, 0.690085, -0.002475,
		-0.641097, 0.673667, 0.367652,
		36.925789, 33.100540, 47.207111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767860, 33.068764, 47.393116>,  <37.374557, 32.628975, 46.949757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767860, 33.068764, 47.393116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384449, 33.072540, 47.507050>,  <37.154404, 33.074806, 47.575409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384449, 33.072540, 47.507050>,  <37.767860, 33.068764, 47.393116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384449, 33.072540, 47.507050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277618, -0.194950, 0.940703,
		0.064411, 0.980768, 0.184244,
		-0.958530, 0.009443, 0.284836,
		37.096889, 33.075375, 47.592499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858902, 33.526367, 47.958282>,  <37.767860, 33.068764, 47.393116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858902, 33.526367, 47.958282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491306, 33.375698, 48.004906>,  <37.270748, 33.285297, 48.032879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491306, 33.375698, 48.004906>,  <37.858902, 33.526367, 47.958282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491306, 33.375698, 48.004906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193560, -0.173426, 0.965639,
		-0.343511, 0.909969, 0.232284,
		-0.918986, -0.376669, 0.116560,
		37.215611, 33.262699, 48.039875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660004, 33.764179, 48.557606>,  <37.858902, 33.526367, 47.958282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660004, 33.764179, 48.557606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445774, 33.428196, 48.522682>,  <37.317234, 33.226604, 48.501728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445774, 33.428196, 48.522682>,  <37.660004, 33.764179, 48.557606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445774, 33.428196, 48.522682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187074, -0.218825, 0.957663,
		-0.823504, 0.496570, 0.274333,
		-0.535578, -0.839960, -0.087308,
		37.285099, 33.176208, 48.496490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245289, 33.867718, 49.090359>,  <37.660004, 33.764179, 48.557606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245289, 33.867718, 49.090359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200150, 33.474174, 49.034798>,  <37.173065, 33.238049, 49.001461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200150, 33.474174, 49.034798>,  <37.245289, 33.867718, 49.090359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200150, 33.474174, 49.034798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413985, -0.173639, 0.893569,
		-0.903262, 0.043335, 0.426896,
		-0.112848, -0.983855, -0.138901,
		37.166294, 33.179016, 48.993126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022621, 33.548531, 49.734612>,  <37.245289, 33.867718, 49.090359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022621, 33.548531, 49.734612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149952, 33.229130, 49.530231>,  <37.226349, 33.037491, 49.407604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149952, 33.229130, 49.530231>,  <37.022621, 33.548531, 49.734612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149952, 33.229130, 49.530231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312844, -0.420305, 0.851747,
		-0.894874, -0.430978, 0.116013,
		0.318323, -0.798500, -0.510948,
		37.245449, 32.989578, 49.376945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742371, 32.994698, 50.007565>,  <37.022621, 33.548531, 49.734612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742371, 32.994698, 50.007565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.063358, 32.863255, 49.808338>,  <37.255951, 32.784389, 49.688805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.063358, 32.863255, 49.808338>,  <36.742371, 32.994698, 50.007565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063358, 32.863255, 49.808338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356916, -0.404572, 0.841981,
		-0.478183, -0.853428, -0.207369,
		0.802466, -0.328608, -0.498062,
		37.304100, 32.764671, 49.658920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787331, 32.242435, 50.107471>,  <36.742371, 32.994698, 50.007565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787331, 32.242435, 50.107471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.164387, 32.340324, 50.016655>,  <37.390621, 32.399059, 49.962166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.164387, 32.340324, 50.016655>,  <36.787331, 32.242435, 50.107471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164387, 32.340324, 50.016655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329603, -0.574517, 0.749194,
		0.052905, -0.781051, -0.622222,
		0.942636, 0.244722, -0.227042,
		37.447178, 32.413742, 49.948544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071915, 31.684170, 50.035809>,  <36.787331, 32.242435, 50.107471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071915, 31.684170, 50.035809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386986, 31.923515, 50.094498>,  <37.576027, 32.067123, 50.129711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386986, 31.923515, 50.094498>,  <37.071915, 31.684170, 50.035809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386986, 31.923515, 50.094498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402548, -0.680137, 0.612674,
		0.466392, -0.423527, -0.776597,
		0.787676, 0.598363, 0.146720,
		37.623287, 32.103024, 50.138515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646229, 31.280897, 50.020927>,  <37.071915, 31.684170, 50.035809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646229, 31.280897, 50.020927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.788322, 31.592573, 50.227486>,  <37.873577, 31.779579, 50.351421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.788322, 31.592573, 50.227486>,  <37.646229, 31.280897, 50.020927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788322, 31.592573, 50.227486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451974, -0.626736, 0.634761,
		0.818247, 0.007910, -0.574813,
		0.355235, 0.779191, 0.516400,
		37.894894, 31.826330, 50.382404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340336, 31.118067, 50.061146>,  <37.646229, 31.280897, 50.020927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340336, 31.118067, 50.061146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.272209, 31.391636, 50.344902>,  <38.231335, 31.555779, 50.515156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.272209, 31.391636, 50.344902>,  <38.340336, 31.118067, 50.061146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272209, 31.391636, 50.344902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509805, -0.554920, 0.657390,
		0.843263, 0.473615, -0.254158,
		-0.170313, 0.683924, 0.709395,
		38.221115, 31.596813, 50.557720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918175, 31.083048, 50.529579>,  <38.340336, 31.118067, 50.061146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918175, 31.083048, 50.529579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675167, 31.316448, 50.745152>,  <38.529362, 31.456488, 50.874496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675167, 31.316448, 50.745152>,  <38.918175, 31.083048, 50.529579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675167, 31.316448, 50.745152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439688, -0.318017, 0.839964,
		0.661508, 0.747257, -0.063356,
		-0.607520, 0.583500, 0.538931,
		38.492912, 31.491499, 50.906830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310242, 31.433283, 50.979809>,  <38.918175, 31.083048, 50.529579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310242, 31.433283, 50.979809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949600, 31.443165, 51.152554>,  <38.733215, 31.449095, 51.256203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949600, 31.443165, 51.152554>,  <39.310242, 31.433283, 50.979809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949600, 31.443165, 51.152554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403681, -0.310685, 0.860533,
		0.155434, 0.950192, 0.270141,
		-0.901600, 0.024705, 0.431865,
		38.679119, 31.450577, 51.282112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349892, 31.813126, 51.598957>,  <39.310242, 31.433283, 50.979809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349892, 31.813126, 51.598957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036167, 31.567984, 51.637466>,  <38.847935, 31.420898, 51.660572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036167, 31.567984, 51.637466>,  <39.349892, 31.813126, 51.598957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036167, 31.567984, 51.637466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361990, -0.326073, 0.873292,
		-0.503809, 0.719781, 0.477589,
		-0.784308, -0.612855, 0.096275,
		38.800873, 31.384127, 51.666348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149948, 31.885366, 52.323315>,  <39.349892, 31.813126, 51.598957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149948, 31.885366, 52.323315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026493, 31.538940, 52.166000>,  <38.952419, 31.331085, 52.071613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026493, 31.538940, 52.166000>,  <39.149948, 31.885366, 52.323315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026493, 31.538940, 52.166000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357985, -0.488837, 0.795541,
		-0.881242, 0.104745, 0.460912,
		-0.308640, -0.866064, -0.393287,
		38.933903, 31.279121, 52.048016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061501, 31.493740, 52.935745>,  <39.149948, 31.885366, 52.323315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061501, 31.493740, 52.935745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043274, 31.229504, 52.636002>,  <39.032337, 31.070961, 52.456154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043274, 31.229504, 52.636002>,  <39.061501, 31.493740, 52.935745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043274, 31.229504, 52.636002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400073, -0.699422, 0.592243,
		-0.915350, -0.272815, 0.296152,
		-0.045562, -0.660592, -0.749362,
		39.029606, 31.031326, 52.411194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892937, 30.873632, 53.302277>,  <39.061501, 31.493740, 52.935745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892937, 30.873632, 53.302277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040215, 30.737095, 52.956348>,  <39.128582, 30.655172, 52.748791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040215, 30.737095, 52.956348>,  <38.892937, 30.873632, 53.302277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040215, 30.737095, 52.956348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415553, -0.771671, 0.481497,
		-0.831714, -0.536664, -0.142279,
		0.368195, -0.341343, -0.864822,
		39.150673, 30.634691, 52.696903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445446, 30.528181, 53.681858>,  <38.892937, 30.873632, 53.302277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445446, 30.528181, 53.681858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411301, 30.184694, 53.479744>,  <38.390816, 29.978601, 53.358475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411301, 30.184694, 53.479744>,  <38.445446, 30.528181, 53.681858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411301, 30.184694, 53.479744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994510, -0.042624, -0.095570,
		0.060530, -0.510672, 0.857642,
		-0.085362, -0.858718, -0.505288,
		38.385693, 29.927078, 53.328159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894951, 30.054369, 54.065296>,  <38.445446, 30.528181, 53.681858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894951, 30.054369, 54.065296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536774, 29.876356, 54.069878>,  <37.321869, 29.769548, 54.072628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536774, 29.876356, 54.069878>,  <37.894951, 30.054369, 54.065296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536774, 29.876356, 54.069878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266128, 0.514495, -0.815151,
		0.356874, -0.732969, -0.579136,
		-0.895442, -0.445030, 0.011454,
		37.268143, 29.742847, 54.073315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808308, 29.788271, 53.354546>,  <37.894951, 30.054369, 54.065296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808308, 29.788271, 53.354546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448238, 29.815983, 53.526543>,  <37.232197, 29.832609, 53.629742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448238, 29.815983, 53.526543>,  <37.808308, 29.788271, 53.354546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448238, 29.815983, 53.526543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404996, 0.230047, -0.884905,
		-0.160223, -0.970710, -0.179024,
		-0.900171, 0.069278, 0.429993,
		37.178188, 29.836765, 53.655540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390160, 29.513668, 52.853401>,  <37.808308, 29.788271, 53.354546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390160, 29.513668, 52.853401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135189, 29.715832, 53.086037>,  <36.982208, 29.837130, 53.225616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135189, 29.715832, 53.086037>,  <37.390160, 29.513668, 52.853401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135189, 29.715832, 53.086037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513958, 0.283454, -0.809630,
		-0.574050, -0.814993, 0.079078,
		-0.637428, 0.505411, 0.581589,
		36.943962, 29.867455, 53.260513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776699, 29.347979, 52.569805>,  <37.390160, 29.513668, 52.853401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776699, 29.347979, 52.569805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714581, 29.689875, 52.767918>,  <36.677311, 29.895012, 52.886784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714581, 29.689875, 52.767918>,  <36.776699, 29.347979, 52.569805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714581, 29.689875, 52.767918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660320, 0.283084, -0.695587,
		-0.734752, -0.435064, 0.520441,
		-0.155297, 0.854741, 0.495278,
		36.667992, 29.946297, 52.916500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053429, 29.304089, 52.718315>,  <36.776699, 29.347979, 52.569805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053429, 29.304089, 52.718315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174980, 29.685057, 52.727741>,  <36.247910, 29.913637, 52.733395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174980, 29.685057, 52.727741>,  <36.053429, 29.304089, 52.718315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174980, 29.685057, 52.727741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731064, 0.248968, -0.635264,
		-0.610904, 0.175816, 0.771935,
		0.303877, 0.952420, 0.023563,
		36.266144, 29.970783, 52.734810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486210, 29.729338, 52.824787>,  <36.053429, 29.304089, 52.718315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486210, 29.729338, 52.824787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.752148, 29.980030, 52.662212>,  <35.911713, 30.130445, 52.564667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.752148, 29.980030, 52.662212>,  <35.486210, 29.729338, 52.824787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752148, 29.980030, 52.662212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704951, 0.346498, -0.618856,
		-0.247028, 0.697960, 0.672182,
		0.664846, 0.626731, -0.406433,
		35.951603, 30.168049, 52.540283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021923, 30.191051, 52.540798>,  <35.486210, 29.729338, 52.824787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021923, 30.191051, 52.540798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383484, 30.283144, 52.396606>,  <35.600422, 30.338400, 52.310089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383484, 30.283144, 52.396606>,  <35.021923, 30.191051, 52.540798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383484, 30.283144, 52.396606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417423, 0.290916, -0.860887,
		-0.093332, 0.928634, 0.359064,
		0.903907, 0.230230, -0.360482,
		35.654655, 30.352213, 52.288464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968605, 30.833357, 52.296169>,  <35.021923, 30.191051, 52.540798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968605, 30.833357, 52.296169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268509, 30.667761, 52.089687>,  <35.448452, 30.568403, 51.965797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268509, 30.667761, 52.089687>,  <34.968605, 30.833357, 52.296169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268509, 30.667761, 52.089687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316425, 0.460828, -0.829164,
		0.581148, 0.785016, 0.214515,
		0.749762, -0.413989, -0.516208,
		35.493439, 30.543564, 51.934826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046474, 31.310539, 51.784523>,  <34.968605, 30.833357, 52.296169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046474, 31.310539, 51.784523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233337, 31.003496, 51.609005>,  <35.345455, 30.819269, 51.503693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233337, 31.003496, 51.609005>,  <35.046474, 31.310539, 51.784523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233337, 31.003496, 51.609005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435484, 0.232154, -0.869746,
		0.769494, 0.597394, -0.225830,
		0.467153, -0.767610, -0.438797,
		35.373482, 30.773212, 51.477367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294533, 31.522318, 51.134296>,  <35.046474, 31.310539, 51.784523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294533, 31.522318, 51.134296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272011, 31.123684, 51.110123>,  <35.258499, 30.884504, 51.095619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272011, 31.123684, 51.110123>,  <35.294533, 31.522318, 51.134296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272011, 31.123684, 51.110123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354122, 0.076532, -0.932063,
		0.933503, -0.031075, -0.357221,
		-0.056303, -0.996583, -0.060439,
		35.255119, 30.824709, 51.091991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792213, 31.415022, 50.819256>,  <35.294533, 31.522318, 51.134296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792213, 31.415022, 50.819256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548592, 31.106592, 50.744961>,  <35.402420, 30.921535, 50.700382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548592, 31.106592, 50.744961>,  <35.792213, 31.415022, 50.819256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548592, 31.106592, 50.744961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027042, 0.213864, -0.976489,
		0.792668, -0.599757, -0.109403,
		-0.609054, -0.771073, -0.185742,
		35.365875, 30.875271, 50.689240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075211, 31.020590, 50.251205>,  <35.792213, 31.415022, 50.819256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075211, 31.020590, 50.251205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.683563, 30.940695, 50.266312>,  <35.448574, 30.892757, 50.275375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.683563, 30.940695, 50.266312>,  <36.075211, 31.020590, 50.251205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683563, 30.940695, 50.266312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063037, 0.121709, -0.990562,
		0.193257, -0.972261, -0.131759,
		-0.979121, -0.199739, 0.037768,
		35.389828, 30.880774, 50.277641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012390, 30.588373, 49.804680>,  <36.075211, 31.020590, 50.251205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012390, 30.588373, 49.804680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648911, 30.741995, 49.870132>,  <35.430824, 30.834167, 49.909405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648911, 30.741995, 49.870132>,  <36.012390, 30.588373, 49.804680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648911, 30.741995, 49.870132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137458, 0.094853, -0.985956,
		-0.394181, -0.918426, -0.033402,
		-0.908695, 0.384053, 0.163634,
		35.376301, 30.857210, 49.919224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697273, 30.255602, 49.291191>,  <36.012390, 30.588373, 49.804680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697273, 30.255602, 49.291191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472492, 30.563457, 49.412430>,  <35.337624, 30.748171, 49.485172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472492, 30.563457, 49.412430>,  <35.697273, 30.255602, 49.291191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472492, 30.563457, 49.412430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218710, 0.215139, -0.951778,
		-0.797734, -0.601141, 0.047431,
		-0.561949, 0.769639, 0.303099,
		35.303909, 30.794350, 49.503361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273216, 30.241531, 48.749645>,  <35.697273, 30.255602, 49.291191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273216, 30.241531, 48.749645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166878, 30.572681, 48.947208>,  <35.103077, 30.771372, 49.065746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166878, 30.572681, 48.947208>,  <35.273216, 30.241531, 48.749645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166878, 30.572681, 48.947208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004383, 0.513379, -0.858151,
		-0.964006, -0.225969, -0.140107,
		-0.265844, 0.827877, 0.493910,
		35.087124, 30.821045, 49.095383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585503, 30.555031, 48.401115>,  <35.273216, 30.241531, 48.749645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585503, 30.555031, 48.401115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790081, 30.844694, 48.586166>,  <34.912827, 31.018492, 48.697197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790081, 30.844694, 48.586166>,  <34.585503, 30.555031, 48.401115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790081, 30.844694, 48.586166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143039, 0.602596, -0.785122,
		-0.847329, 0.335371, 0.411776,
		0.511442, 0.724158, 0.462626,
		34.943512, 31.061941, 48.724953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117146, 31.154881, 48.429287>,  <34.585503, 30.555031, 48.401115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117146, 31.154881, 48.429287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480919, 31.318958, 48.456635>,  <34.699181, 31.417406, 48.473042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480919, 31.318958, 48.456635>,  <34.117146, 31.154881, 48.429287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480919, 31.318958, 48.456635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201923, 0.579299, -0.789708,
		-0.363541, 0.704380, 0.609661,
		0.909431, 0.410196, 0.068368,
		34.753750, 31.442017, 48.477146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863621, 31.804741, 48.453613>,  <34.117146, 31.154881, 48.429287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863621, 31.804741, 48.453613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259674, 31.815298, 48.398575>,  <34.497307, 31.821632, 48.365551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259674, 31.815298, 48.398575>,  <33.863621, 31.804741, 48.453613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259674, 31.815298, 48.398575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122680, 0.637698, -0.760455,
		0.067676, 0.769835, 0.634646,
		0.990136, 0.026393, -0.137600,
		34.556713, 31.823215, 48.357296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947163, 32.492035, 48.458092>,  <33.863621, 31.804741, 48.453613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947163, 32.492035, 48.458092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260700, 32.325409, 48.273891>,  <34.448822, 32.225433, 48.163372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260700, 32.325409, 48.273891>,  <33.947163, 32.492035, 48.458092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260700, 32.325409, 48.273891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156062, 0.585640, -0.795406,
		0.601023, 0.695343, 0.394042,
		0.783847, -0.416563, -0.460499,
		34.495853, 32.200439, 48.135742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308205, 33.069283, 48.027641>,  <33.947163, 32.492035, 48.458092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308205, 33.069283, 48.027641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422066, 32.717930, 47.874058>,  <34.490383, 32.507118, 47.781910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422066, 32.717930, 47.874058>,  <34.308205, 33.069283, 48.027641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422066, 32.717930, 47.874058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171262, 0.347483, -0.921914,
		0.943208, 0.328182, -0.051521,
		0.284653, -0.878380, -0.383954,
		34.507462, 32.454414, 47.758873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888115, 33.179607, 47.467232>,  <34.308205, 33.069283, 48.027641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888115, 33.179607, 47.467232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703934, 32.833488, 47.387985>,  <34.593426, 32.625816, 47.340439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703934, 32.833488, 47.387985>,  <34.888115, 33.179607, 47.467232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703934, 32.833488, 47.387985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230304, 0.331990, -0.914736,
		0.857288, -0.375566, -0.352147,
		-0.460453, -0.865293, -0.198117,
		34.565796, 32.573902, 47.328548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.891510, 40.438839, 42.891472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539108, 40.368355, 42.715847>,  <44.327667, 40.326065, 42.610474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539108, 40.368355, 42.715847>,  <44.891510, 40.438839, 42.891472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539108, 40.368355, 42.715847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431856, -0.678519, -0.594233,
		-0.193201, -0.713135, 0.673878,
		-0.881007, -0.176212, -0.439062,
		44.274807, 40.315491, 42.584129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871246, 39.770462, 42.629791>,  <44.891510, 40.438839, 42.891472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871246, 39.770462, 42.629791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.575478, 39.908978, 42.398846>,  <44.398018, 39.992088, 42.260281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.575478, 39.908978, 42.398846>,  <44.871246, 39.770462, 42.629791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575478, 39.908978, 42.398846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237520, -0.668258, -0.704994,
		-0.629952, -0.658422, 0.411875,
		-0.739422, 0.346284, -0.577359,
		44.353653, 40.012863, 42.225636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859043, 39.300301, 42.194450>,  <44.871246, 39.770462, 42.629791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859043, 39.300301, 42.194450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.580791, 39.522984, 42.012825>,  <44.413841, 39.656593, 41.903851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.580791, 39.522984, 42.012825>,  <44.859043, 39.300301, 42.194450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580791, 39.522984, 42.012825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173901, -0.743739, -0.645454,
		-0.697036, -0.370035, 0.614179,
		-0.695629, 0.556711, -0.454063,
		44.372105, 39.689999, 41.876606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160484, 38.920830, 42.201267>,  <44.859043, 39.300301, 42.194450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160484, 38.920830, 42.201267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200214, 39.166149, 41.887833>,  <44.224052, 39.313339, 41.699772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200214, 39.166149, 41.887833>,  <44.160484, 38.920830, 42.201267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200214, 39.166149, 41.887833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178539, -0.763712, -0.620377,
		-0.978907, 0.201517, 0.033644,
		0.099322, 0.613298, -0.783582,
		44.230011, 39.350140, 41.652760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547844, 38.755119, 41.736546>,  <44.160484, 38.920830, 42.201267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547844, 38.755119, 41.736546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.808792, 38.954082, 41.507812>,  <43.965363, 39.073460, 41.370575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.808792, 38.954082, 41.507812>,  <43.547844, 38.755119, 41.736546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808792, 38.954082, 41.507812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103537, -0.688931, -0.717394,
		-0.750791, 0.527216, -0.397941,
		0.652375, 0.497412, -0.571829,
		44.004505, 39.103306, 41.336266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320816, 38.720345, 41.042053>,  <43.547844, 38.755119, 41.736546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320816, 38.720345, 41.042053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697224, 38.831024, 40.964157>,  <43.923069, 38.897430, 40.917419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697224, 38.831024, 40.964157>,  <43.320816, 38.720345, 41.042053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697224, 38.831024, 40.964157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037486, -0.486746, -0.872739,
		-0.336275, 0.828563, -0.447664,
		0.941017, 0.276699, -0.194740,
		43.979530, 38.914036, 40.905735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246132, 38.865681, 40.277191>,  <43.320816, 38.720345, 41.042053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246132, 38.865681, 40.277191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.628338, 38.825447, 40.388100>,  <43.857662, 38.801308, 40.454643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.628338, 38.825447, 40.388100>,  <43.246132, 38.865681, 40.277191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628338, 38.825447, 40.388100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208921, -0.432751, -0.876971,
		0.208199, 0.895885, -0.392485,
		0.955513, -0.100587, 0.277267,
		43.914993, 38.795273, 40.471279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655296, 38.997936, 39.651047>,  <43.246132, 38.865681, 40.277191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655296, 38.997936, 39.651047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889278, 38.775665, 39.887367>,  <44.029667, 38.642303, 40.029160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889278, 38.775665, 39.887367>,  <43.655296, 38.997936, 39.651047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889278, 38.775665, 39.887367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278260, -0.546722, -0.789726,
		0.761839, 0.626351, -0.165185,
		0.584955, -0.555680, 0.590802,
		44.064766, 38.608963, 40.064610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346992, 38.892418, 39.324398>,  <43.655296, 38.997936, 39.651047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346992, 38.892418, 39.324398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289436, 38.594086, 39.584564>,  <44.254902, 38.415089, 39.740662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289436, 38.594086, 39.584564>,  <44.346992, 38.892418, 39.324398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289436, 38.594086, 39.584564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204967, -0.665461, -0.717740,
		0.968134, 0.030034, 0.248627,
		-0.143894, -0.745828, 0.650411,
		44.246269, 38.370338, 39.779686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929527, 38.458031, 39.190704>,  <44.346992, 38.892418, 39.324398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929527, 38.458031, 39.190704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662674, 38.224094, 39.375267>,  <44.502563, 38.083733, 39.486004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662674, 38.224094, 39.375267>,  <44.929527, 38.458031, 39.190704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662674, 38.224094, 39.375267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114921, -0.692774, -0.711939,
		0.736022, -0.421931, 0.529382,
		-0.667132, -0.584840, 0.461408,
		44.462536, 38.048641, 39.513691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223316, 37.740566, 39.187164>,  <44.929527, 38.458031, 39.190704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223316, 37.740566, 39.187164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.835289, 37.677109, 39.260712>,  <44.602474, 37.639034, 39.304840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.835289, 37.677109, 39.260712>,  <45.223316, 37.740566, 39.187164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835289, 37.677109, 39.260712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003028, -0.749162, -0.662380,
		0.242827, -0.643108, 0.726255,
		-0.970065, -0.158645, 0.183865,
		44.544270, 37.629517, 39.315872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243767, 37.108776, 39.359760>,  <45.223316, 37.740566, 39.187164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243767, 37.108776, 39.359760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867458, 37.188198, 39.249836>,  <44.641674, 37.235851, 39.183880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867458, 37.188198, 39.249836>,  <45.243767, 37.108776, 39.359760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867458, 37.188198, 39.249836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006502, -0.799850, -0.600165,
		-0.338977, -0.566405, 0.751186,
		-0.940772, 0.198558, -0.274814,
		44.585228, 37.247765, 39.167393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873184, 36.520706, 39.375484>,  <45.243767, 37.108776, 39.359760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873184, 36.520706, 39.375484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611504, 36.726723, 39.153942>,  <44.454494, 36.850330, 39.021019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611504, 36.726723, 39.153942>,  <44.873184, 36.520706, 39.375484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611504, 36.726723, 39.153942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091944, -0.781029, -0.617689,
		-0.750711, -0.353168, 0.558305,
		-0.654200, 0.515039, -0.553856,
		44.415241, 36.881233, 38.987785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286240, 36.053097, 39.096966>,  <44.873184, 36.520706, 39.375484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286240, 36.053097, 39.096966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342075, 36.365574, 38.853573>,  <44.375576, 36.553062, 38.707539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342075, 36.365574, 38.853573>,  <44.286240, 36.053097, 39.096966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342075, 36.365574, 38.853573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096686, -0.600810, -0.793524,
		-0.985478, 0.169597, -0.008334,
		0.139586, 0.781195, -0.608483,
		44.383949, 36.599934, 38.671028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900146, 35.857456, 38.485554>,  <44.286240, 36.053097, 39.096966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900146, 35.857456, 38.485554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138733, 36.160759, 38.380276>,  <44.281887, 36.342739, 38.317108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138733, 36.160759, 38.380276>,  <43.900146, 35.857456, 38.485554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138733, 36.160759, 38.380276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002538, -0.329694, -0.944084,
		-0.802631, 0.562450, -0.198577,
		0.596470, 0.758256, -0.263195,
		44.317673, 36.388237, 38.301315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618671, 35.939980, 37.924892>,  <43.900146, 35.857456, 38.485554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618671, 35.939980, 37.924892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973400, 36.120449, 37.884914>,  <44.186237, 36.228733, 37.860928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973400, 36.120449, 37.884914>,  <43.618671, 35.939980, 37.924892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973400, 36.120449, 37.884914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072870, -0.350102, -0.933873,
		-0.456332, 0.820895, -0.343355,
		0.886821, 0.451176, -0.099944,
		44.239445, 36.255802, 37.854931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645287, 36.277672, 37.288109>,  <43.618671, 35.939980, 37.924892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645287, 36.277672, 37.288109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.028538, 36.220810, 37.387539>,  <44.258488, 36.186691, 37.447197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.028538, 36.220810, 37.387539>,  <43.645287, 36.277672, 37.288109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028538, 36.220810, 37.387539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189498, -0.336028, -0.922592,
		0.214678, 0.931062, -0.295019,
		0.958125, -0.142154, 0.248572,
		44.315975, 36.178165, 37.462112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938236, 36.338802, 36.682590>,  <43.645287, 36.277672, 37.288109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938236, 36.338802, 36.682590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266716, 36.213711, 36.873516>,  <44.463806, 36.138657, 36.988071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266716, 36.213711, 36.873516>,  <43.938236, 36.338802, 36.682590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266716, 36.213711, 36.873516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426219, -0.220016, -0.877457,
		0.379425, 0.924008, -0.047385,
		0.821203, -0.312733, 0.477309,
		44.513077, 36.119892, 37.016708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541729, 36.600578, 36.321636>,  <43.938236, 36.338802, 36.682590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541729, 36.600578, 36.321636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701149, 36.305798, 36.540012>,  <44.796803, 36.128929, 36.671040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701149, 36.305798, 36.540012>,  <44.541729, 36.600578, 36.321636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701149, 36.305798, 36.540012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450884, -0.360922, -0.816357,
		0.798661, 0.571517, 0.188435,
		0.398552, -0.736955, 0.545943,
		44.820713, 36.084709, 36.703796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279202, 36.637112, 36.186222>,  <44.541729, 36.600578, 36.321636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279202, 36.637112, 36.186222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.166950, 36.270210, 36.299286>,  <45.099598, 36.050072, 36.367123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.166950, 36.270210, 36.299286>,  <45.279202, 36.637112, 36.186222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166950, 36.270210, 36.299286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331723, -0.369035, -0.868201,
		0.900670, -0.149878, 0.407835,
		-0.280630, -0.917251, 0.282661,
		45.082760, 35.995033, 36.384083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792305, 36.221687, 35.993431>,  <45.279202, 36.637112, 36.186222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792305, 36.221687, 35.993431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510239, 35.940208, 36.028198>,  <45.341000, 35.771320, 36.049061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510239, 35.940208, 36.028198>,  <45.792305, 36.221687, 35.993431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510239, 35.940208, 36.028198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279540, -0.388575, -0.877990,
		0.651612, -0.594831, 0.470720,
		-0.705166, -0.703694, 0.086922,
		45.298687, 35.729099, 36.054276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510277, 36.515350, 36.025684>,  <45.792305, 36.221687, 35.993431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510277, 36.515350, 36.025684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.896385, 36.512272, 36.130131>,  <47.128052, 36.510426, 36.192799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.896385, 36.512272, 36.130131>,  <46.510277, 36.515350, 36.025684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.896385, 36.512272, 36.130131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179620, 0.706232, 0.684816,
		-0.189683, -0.707938, 0.680326,
		0.965276, -0.007698, 0.261120,
		47.185966, 36.509964, 36.208466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592926, 36.292854, 36.758980>,  <46.510277, 36.515350, 36.025684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592926, 36.292854, 36.758980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.870945, 36.546230, 36.622940>,  <47.037758, 36.698254, 36.541317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.870945, 36.546230, 36.622940>,  <46.592926, 36.292854, 36.758980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.870945, 36.546230, 36.622940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076193, 0.535272, 0.841236,
		0.714916, -0.558785, 0.420303,
		0.695046, 0.633437, -0.340099,
		47.079460, 36.736263, 36.520912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083218, 36.484161, 37.296803>,  <46.592926, 36.292854, 36.758980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083218, 36.484161, 37.296803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.121723, 36.807419, 37.064373>,  <47.144829, 37.001373, 36.924915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.121723, 36.807419, 37.064373>,  <47.083218, 36.484161, 37.296803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.121723, 36.807419, 37.064373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037673, 0.580404, 0.813456,
		0.994642, -0.100201, 0.025429,
		0.096268, 0.808140, -0.581070,
		47.150604, 37.049862, 36.890053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.476063, 36.850483, 37.676670>,  <47.083218, 36.484161, 37.296803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.476063, 36.850483, 37.676670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.333023, 37.119389, 37.417385>,  <47.247200, 37.280731, 37.261814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.333023, 37.119389, 37.417385>,  <47.476063, 36.850483, 37.676670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.333023, 37.119389, 37.417385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031606, 0.685002, 0.727855,
		0.933339, 0.280770, -0.223711,
		-0.357603, 0.672265, -0.648213,
		47.225742, 37.321068, 37.222919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.834858, 37.549011, 37.757366>,  <47.476063, 36.850483, 37.676670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.834858, 37.549011, 37.757366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.489361, 37.632206, 37.573765>,  <47.282063, 37.682125, 37.463604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.489361, 37.632206, 37.573765>,  <47.834858, 37.549011, 37.757366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.489361, 37.632206, 37.573765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098114, 0.824009, 0.558017,
		0.494285, 0.527019, -0.691327,
		-0.863745, 0.207991, -0.459004,
		47.230236, 37.694603, 37.436062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.772903, 38.362633, 37.723240>,  <47.834858, 37.549011, 37.757366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.772903, 38.362633, 37.723240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.393757, 38.242973, 37.679314>,  <47.166267, 38.171177, 37.652958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.393757, 38.242973, 37.679314>,  <47.772903, 38.362633, 37.723240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.393757, 38.242973, 37.679314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307957, 0.771326, 0.556972,
		-0.081916, 0.561753, -0.823239,
		-0.947867, -0.299147, -0.109812,
		47.109398, 38.153229, 37.646370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.399658, 38.951275, 37.543755>,  <47.772903, 38.362633, 37.723240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.399658, 38.951275, 37.543755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.134190, 38.695580, 37.699146>,  <46.974907, 38.542164, 37.792381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.134190, 38.695580, 37.699146>,  <47.399658, 38.951275, 37.543755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.134190, 38.695580, 37.699146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431028, 0.751260, 0.499822,
		-0.611355, 0.164272, -0.774119,
		-0.663672, -0.639236, 0.388481,
		46.935089, 38.503807, 37.815689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.805264, 39.240734, 37.532314>,  <47.399658, 38.951275, 37.543755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.805264, 39.240734, 37.532314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.773468, 38.963036, 37.818447>,  <46.754391, 38.796417, 37.990128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.773468, 38.963036, 37.818447>,  <46.805264, 39.240734, 37.532314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773468, 38.963036, 37.818447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501539, 0.648013, 0.573182,
		-0.861475, -0.313202, -0.399706,
		-0.079493, -0.694250, 0.715330,
		46.749619, 38.754761, 38.033047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071491, 39.458824, 37.872318>,  <46.805264, 39.240734, 37.532314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071491, 39.458824, 37.872318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.251717, 39.213634, 38.131935>,  <46.359852, 39.066521, 38.287704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.251717, 39.213634, 38.131935>,  <46.071491, 39.458824, 37.872318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.251717, 39.213634, 38.131935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200222, 0.639115, 0.742592,
		-0.870004, -0.464536, 0.165229,
		0.450561, -0.612975, 0.649043,
		46.386887, 39.029743, 38.326649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643837, 39.424454, 38.465904>,  <46.071491, 39.458824, 37.872318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643837, 39.424454, 38.465904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998260, 39.290226, 38.593834>,  <46.210915, 39.209690, 38.670589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998260, 39.290226, 38.593834>,  <45.643837, 39.424454, 38.465904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998260, 39.290226, 38.593834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125925, 0.489738, 0.862728,
		-0.446136, -0.804704, 0.391682,
		0.886062, -0.335572, 0.319822,
		46.264080, 39.189556, 38.689781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532764, 39.103054, 39.158417>,  <45.643837, 39.424454, 38.465904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532764, 39.103054, 39.158417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921562, 39.190449, 39.123783>,  <46.154839, 39.242886, 39.103004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921562, 39.190449, 39.123783>,  <45.532764, 39.103054, 39.158417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921562, 39.190449, 39.123783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023153, 0.455644, 0.889861,
		0.233872, -0.862933, 0.447941,
		0.971991, 0.218485, -0.086583,
		46.213161, 39.255993, 39.097809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817471, 38.841164, 39.767799>,  <45.532764, 39.103054, 39.158417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817471, 38.841164, 39.767799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.076511, 39.115742, 39.635494>,  <46.231934, 39.280491, 39.556110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.076511, 39.115742, 39.635494>,  <45.817471, 38.841164, 39.767799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076511, 39.115742, 39.635494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029351, 0.411291, 0.911031,
		0.761417, -0.599690, 0.246203,
		0.647598, 0.686448, -0.330766,
		46.270790, 39.321674, 39.536266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248077, 39.007034, 40.322052>,  <45.817471, 38.841164, 39.767799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248077, 39.007034, 40.322052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.346504, 39.311432, 40.081940>,  <46.405560, 39.494068, 39.937870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.346504, 39.311432, 40.081940>,  <46.248077, 39.007034, 40.322052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346504, 39.311432, 40.081940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126418, 0.588838, 0.798303,
		0.960972, -0.272325, 0.048692,
		0.246070, 0.760992, -0.600284,
		46.420326, 39.539730, 39.901855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.789398, 39.282803, 40.677559>,  <46.248077, 39.007034, 40.322052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.789398, 39.282803, 40.677559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.681801, 39.582386, 40.435337>,  <46.617241, 39.762138, 40.290005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.681801, 39.582386, 40.435337>,  <46.789398, 39.282803, 40.677559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681801, 39.582386, 40.435337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020877, 0.633117, 0.773775,
		0.962916, 0.195497, -0.185940,
		-0.268993, 0.748962, -0.605557,
		46.601105, 39.807076, 40.253670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.273880, 39.836300, 40.785294>,  <46.789398, 39.282803, 40.677559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.273880, 39.836300, 40.785294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.950809, 40.013432, 40.629570>,  <46.756966, 40.119709, 40.536137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.950809, 40.013432, 40.629570>,  <47.273880, 39.836300, 40.785294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950809, 40.013432, 40.629570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059111, 0.717754, 0.693784,
		0.586657, 0.537339, -0.605888,
		-0.807676, 0.442827, -0.389312,
		46.708508, 40.146278, 40.512775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.476372, 40.484364, 40.822456>,  <47.273880, 39.836300, 40.785294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.476372, 40.484364, 40.822456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.079967, 40.480511, 40.769070>,  <46.842125, 40.478199, 40.737038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.079967, 40.480511, 40.769070>,  <47.476372, 40.484364, 40.822456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079967, 40.480511, 40.769070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104423, 0.679340, 0.726356,
		0.083670, 0.733760, -0.674237,
		-0.991007, -0.009631, -0.133462,
		46.782665, 40.477623, 40.729031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.364681, 41.278595, 40.779385>,  <47.476372, 40.484364, 40.822456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.364681, 41.278595, 40.779385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.031982, 41.078487, 40.875664>,  <46.832363, 40.958424, 40.933434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.031982, 41.078487, 40.875664>,  <47.364681, 41.278595, 40.779385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.031982, 41.078487, 40.875664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108169, 0.571296, 0.813585,
		-0.544519, 0.650658, -0.529286,
		-0.831744, -0.500265, 0.240700,
		46.782459, 40.928410, 40.947872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823288, 41.752758, 40.835419>,  <47.364681, 41.278595, 40.779385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823288, 41.752758, 40.835419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.685364, 41.449509, 41.056816>,  <46.602612, 41.267559, 41.189655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.685364, 41.449509, 41.056816>,  <46.823288, 41.752758, 40.835419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.685364, 41.449509, 41.056816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546181, 0.641599, 0.538552,
		-0.763410, -0.116611, -0.635301,
		-0.344807, -0.758125, 0.553493,
		46.581921, 41.222073, 41.222862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077496, 41.864666, 40.915764>,  <46.823288, 41.752758, 40.835419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077496, 41.864666, 40.915764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.172218, 41.598110, 41.198563>,  <46.229050, 41.438175, 41.368240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.172218, 41.598110, 41.198563>,  <46.077496, 41.864666, 40.915764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172218, 41.598110, 41.198563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469000, 0.558887, 0.683874,
		-0.850860, -0.493526, -0.180192,
		0.236803, -0.666391, 0.706998,
		46.243259, 41.398193, 41.410664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480129, 41.789261, 41.293549>,  <46.077496, 41.864666, 40.915764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480129, 41.789261, 41.293549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740715, 41.634365, 41.554512>,  <45.897064, 41.541428, 41.711090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.740715, 41.634365, 41.554512>,  <45.480129, 41.789261, 41.293549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740715, 41.634365, 41.554512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536670, 0.372622, 0.757059,
		-0.536268, -0.843325, 0.034928,
		0.651462, -0.387242, 0.652412,
		45.936153, 41.518192, 41.750237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094166, 41.365089, 41.897900>,  <45.480129, 41.789261, 41.293549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094166, 41.365089, 41.897900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.450005, 41.498070, 42.023186>,  <45.663506, 41.577858, 42.098358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.450005, 41.498070, 42.023186>,  <45.094166, 41.365089, 41.897900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450005, 41.498070, 42.023186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413345, 0.294183, 0.861744,
		0.194342, -0.896067, 0.399118,
		0.889594, 0.332447, 0.313212,
		45.716881, 41.597805, 42.117149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.179672, 36.011070, 42.761780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138660, 35.615711, 42.806602>,  <37.114052, 35.378494, 42.833496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138660, 35.615711, 42.806602>,  <37.179672, 36.011070, 42.761780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138660, 35.615711, 42.806602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347128, -0.141119, -0.927139,
		0.932196, -0.056160, 0.357570,
		-0.102528, -0.988398, 0.112056,
		37.107903, 35.319191, 42.840218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827740, 35.684650, 42.687775>,  <37.179672, 36.011070, 42.761780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827740, 35.684650, 42.687775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534435, 35.430851, 42.590008>,  <37.358452, 35.278572, 42.531349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534435, 35.430851, 42.590008>,  <37.827740, 35.684650, 42.687775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534435, 35.430851, 42.590008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322638, -0.008265, -0.946486,
		0.598523, -0.772881, 0.210773,
		-0.733263, -0.634497, -0.244414,
		37.314457, 35.240501, 42.516685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180519, 35.140781, 42.276283>,  <37.827740, 35.684650, 42.687775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180519, 35.140781, 42.276283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791367, 35.149563, 42.184174>,  <37.557877, 35.154831, 42.128906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791367, 35.149563, 42.184174>,  <38.180519, 35.140781, 42.276283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791367, 35.149563, 42.184174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230300, -0.001348, -0.973119,
		-0.021680, -0.999758, -0.003746,
		-0.972878, 0.021960, -0.230273,
		37.499504, 35.156147, 42.115093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185341, 34.815678, 41.624992>,  <38.180519, 35.140781, 42.276283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185341, 34.815678, 41.624992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831657, 35.001347, 41.645817>,  <37.619446, 35.112747, 41.658310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831657, 35.001347, 41.645817>,  <38.185341, 34.815678, 41.624992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831657, 35.001347, 41.645817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035762, 0.043855, -0.998398,
		-0.465713, -0.884658, -0.022177,
		-0.884213, 0.464174, 0.052061,
		37.566395, 35.140598, 41.661434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739353, 34.447891, 41.329300>,  <38.185341, 34.815678, 41.624992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739353, 34.447891, 41.329300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566952, 34.807964, 41.304321>,  <37.463512, 35.024010, 41.289333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566952, 34.807964, 41.304321>,  <37.739353, 34.447891, 41.329300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566952, 34.807964, 41.304321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054741, -0.095161, -0.993956,
		-0.900688, -0.424980, 0.090292,
		-0.431004, 0.900187, -0.062446,
		37.437649, 35.078022, 41.285587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191444, 34.350723, 40.849358>,  <37.739353, 34.447891, 41.329300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191444, 34.350723, 40.849358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255379, 34.745583, 40.849636>,  <37.293739, 34.982498, 40.849804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255379, 34.745583, 40.849636>,  <37.191444, 34.350723, 40.849358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255379, 34.745583, 40.849636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046833, 0.008288, -0.998868,
		-0.986032, 0.159621, 0.047556,
		0.159835, 0.987143, 0.000697,
		37.303329, 35.041725, 40.849846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772884, 34.558327, 40.470524>,  <37.191444, 34.350723, 40.849358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772884, 34.558327, 40.470524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000103, 34.887264, 40.483620>,  <37.136436, 35.084625, 40.491478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000103, 34.887264, 40.483620>,  <36.772884, 34.558327, 40.470524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000103, 34.887264, 40.483620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152077, 0.143976, -0.977826,
		-0.808821, 0.550475, 0.206845,
		0.568050, 0.822343, 0.032736,
		37.170517, 35.133968, 40.493439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329895, 35.054157, 40.112450>,  <36.772884, 34.558327, 40.470524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329895, 35.054157, 40.112450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713203, 35.167694, 40.126068>,  <36.943188, 35.235817, 40.134239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713203, 35.167694, 40.126068>,  <36.329895, 35.054157, 40.112450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713203, 35.167694, 40.126068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041199, 0.254954, -0.966075,
		-0.282891, 0.924355, 0.256008,
		0.958267, 0.283842, 0.034042,
		37.000683, 35.252846, 40.136280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426521, 35.636719, 39.724136>,  <36.329895, 35.054157, 40.112450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426521, 35.636719, 39.724136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789509, 35.469055, 39.712776>,  <37.007301, 35.368458, 39.705959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789509, 35.469055, 39.712776>,  <36.426521, 35.636719, 39.724136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789509, 35.469055, 39.712776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002517, 0.073022, -0.997327,
		0.420110, 0.904973, 0.067320,
		0.907470, -0.419156, -0.028400,
		37.061749, 35.343307, 39.704258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804298, 36.007988, 39.243969>,  <36.426521, 35.636719, 39.724136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804298, 36.007988, 39.243969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037540, 35.687187, 39.295799>,  <37.177486, 35.494709, 39.326897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037540, 35.687187, 39.295799>,  <36.804298, 36.007988, 39.243969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037540, 35.687187, 39.295799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275371, 0.045063, -0.960281,
		0.764304, 0.595624, 0.247124,
		0.583103, -0.801998, 0.129576,
		37.212471, 35.446587, 39.334671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483158, 36.217396, 39.048351>,  <36.804298, 36.007988, 39.243969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483158, 36.217396, 39.048351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423847, 35.823071, 39.016907>,  <37.388260, 35.586475, 38.998039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423847, 35.823071, 39.016907>,  <37.483158, 36.217396, 39.048351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423847, 35.823071, 39.016907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321075, 0.027197, -0.946663,
		0.935374, -0.165611, 0.312488,
		-0.148279, -0.985816, -0.078613,
		37.379364, 35.527325, 38.993324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005436, 36.076527, 38.709846>,  <37.483158, 36.217396, 39.048351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005436, 36.076527, 38.709846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754215, 35.768650, 38.664017>,  <37.603485, 35.583923, 38.636520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754215, 35.768650, 38.664017>,  <38.005436, 36.076527, 38.709846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754215, 35.768650, 38.664017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265991, -0.073975, -0.961133,
		0.731302, -0.634114, 0.251191,
		-0.628050, -0.769693, -0.114571,
		37.565800, 35.537743, 38.629646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388706, 35.585106, 38.349438>,  <38.005436, 36.076527, 38.709846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388706, 35.585106, 38.349438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423767, 35.192093, 38.283768>,  <38.444801, 34.956287, 38.244366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423767, 35.192093, 38.283768>,  <38.388706, 35.585106, 38.349438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423767, 35.192093, 38.283768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215073, 0.179586, -0.959944,
		0.972657, 0.048827, 0.227056,
		0.087648, -0.982530, -0.164174,
		38.450062, 34.897335, 38.234516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057800, 35.514683, 38.167889>,  <38.388706, 35.585106, 38.349438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057800, 35.514683, 38.167889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792652, 35.248161, 38.031273>,  <38.633564, 35.088249, 37.949303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792652, 35.248161, 38.031273>,  <39.057800, 35.514683, 38.167889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792652, 35.248161, 38.031273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314667, 0.166010, -0.934572,
		0.679405, -0.726969, 0.099620,
		-0.662867, -0.666301, -0.341542,
		38.593792, 35.048271, 37.928810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000225, 35.289558, 37.506443>,  <39.057800, 35.514683, 38.167889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000225, 35.289558, 37.506443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369003, 35.136154, 37.484764>,  <39.590271, 35.044113, 37.471756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369003, 35.136154, 37.484764>,  <39.000225, 35.289558, 37.506443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369003, 35.136154, 37.484764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362029, -0.903000, 0.231357,
		-0.137665, -0.193679, -0.971358,
		0.921946, -0.383509, -0.054195,
		39.645588, 35.021103, 37.468506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006100, 34.612186, 37.205265>,  <39.000225, 35.289558, 37.506443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006100, 34.612186, 37.205265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313801, 34.666340, 37.455040>,  <39.498421, 34.698830, 37.604904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313801, 34.666340, 37.455040>,  <39.006100, 34.612186, 37.205265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313801, 34.666340, 37.455040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255205, -0.830852, 0.494525,
		0.585761, -0.539775, -0.604589,
		0.769256, 0.135379, 0.624433,
		39.544579, 34.706955, 37.642368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183979, 33.973789, 37.366005>,  <39.006100, 34.612186, 37.205265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183979, 33.973789, 37.366005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354523, 34.174133, 37.667297>,  <39.456848, 34.294338, 37.848072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354523, 34.174133, 37.667297>,  <39.183979, 33.973789, 37.366005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354523, 34.174133, 37.667297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228004, -0.746318, 0.625319,
		0.875349, -0.438348, -0.203998,
		0.426355, 0.500860, 0.753233,
		39.482430, 34.324390, 37.893269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687595, 33.509457, 37.629467>,  <39.183979, 33.973789, 37.366005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687595, 33.509457, 37.629467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596195, 33.775913, 37.913452>,  <39.541355, 33.935787, 38.083843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596195, 33.775913, 37.913452>,  <39.687595, 33.509457, 37.629467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596195, 33.775913, 37.913452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024769, -0.732996, 0.679782,
		0.973228, 0.137747, 0.183992,
		-0.228503, 0.666140, 0.709961,
		39.527645, 33.975754, 38.126442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932140, 33.169930, 38.221363>,  <39.687595, 33.509457, 37.629467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932140, 33.169930, 38.221363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702915, 33.453011, 38.386654>,  <39.565380, 33.622860, 38.485828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702915, 33.453011, 38.386654>,  <39.932140, 33.169930, 38.221363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702915, 33.453011, 38.386654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210349, -0.614369, 0.760463,
		0.792052, 0.348875, 0.500939,
		-0.573067, 0.707698, 0.413227,
		39.530994, 33.665321, 38.510624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174892, 33.209976, 38.930862>,  <39.932140, 33.169930, 38.221363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174892, 33.209976, 38.930862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797619, 33.341949, 38.915142>,  <39.571255, 33.421135, 38.905712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797619, 33.341949, 38.915142>,  <40.174892, 33.209976, 38.930862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797619, 33.341949, 38.915142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167625, -0.370376, 0.913632,
		0.286881, 0.868313, 0.404638,
		-0.943186, 0.329932, -0.039297,
		39.514664, 33.440929, 38.903355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010780, 33.287544, 39.643742>,  <40.174892, 33.209976, 38.930862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010780, 33.287544, 39.643742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650032, 33.343281, 39.480175>,  <39.433582, 33.376724, 39.382034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650032, 33.343281, 39.480175>,  <40.010780, 33.287544, 39.643742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650032, 33.343281, 39.480175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424627, -0.111742, 0.898446,
		0.079498, 0.983920, 0.159946,
		-0.901871, 0.139343, -0.408916,
		39.379471, 33.385082, 39.357502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736965, 33.822563, 39.971420>,  <40.010780, 33.287544, 39.643742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736965, 33.822563, 39.971420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457706, 33.573914, 39.829330>,  <39.290154, 33.424725, 39.744076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457706, 33.573914, 39.829330>,  <39.736965, 33.822563, 39.971420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457706, 33.573914, 39.829330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325036, -0.166885, 0.930860,
		-0.637924, 0.765334, -0.085540,
		-0.698144, -0.621622, -0.355221,
		39.248264, 33.387428, 39.722763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130596, 33.968475, 40.323650>,  <39.736965, 33.822563, 39.971420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130596, 33.968475, 40.323650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063168, 33.605297, 40.170177>,  <39.022713, 33.387390, 40.078094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063168, 33.605297, 40.170177>,  <39.130596, 33.968475, 40.323650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063168, 33.605297, 40.170177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279101, -0.329357, 0.902013,
		-0.945351, 0.259136, -0.197891,
		-0.168568, -0.907950, -0.383683,
		39.012596, 33.332912, 40.055073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578041, 33.717899, 40.714981>,  <39.130596, 33.968475, 40.323650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578041, 33.717899, 40.714981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686752, 33.373878, 40.542259>,  <38.751980, 33.167465, 40.438625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686752, 33.373878, 40.542259>,  <38.578041, 33.717899, 40.714981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686752, 33.373878, 40.542259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131274, -0.477627, 0.868700,
		-0.953366, -0.179405, -0.242709,
		0.271774, -0.860050, -0.431802,
		38.768284, 33.115864, 40.412720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006992, 33.355328, 40.899681>,  <38.578041, 33.717899, 40.714981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006992, 33.355328, 40.899681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294876, 33.098053, 40.795116>,  <38.467606, 32.943687, 40.732376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294876, 33.098053, 40.795116>,  <38.006992, 33.355328, 40.899681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294876, 33.098053, 40.795116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298688, -0.626741, 0.719709,
		-0.626741, -0.439900, -0.643182,
		-0.719709, 0.643182, 0.261412,
		38.510788, 32.905098, 40.716694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790913, 32.614594, 41.098721>,  <38.006992, 33.355328, 40.899681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790913, 32.614594, 41.098721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187584, 32.592560, 41.052166>,  <38.425587, 32.579338, 41.024235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187584, 32.592560, 41.052166>,  <37.790913, 32.614594, 41.098721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187584, 32.592560, 41.052166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066855, -0.552194, 0.831030,
		-0.110044, -0.831894, -0.543915,
		0.991676, -0.055086, -0.116382,
		38.485088, 32.576035, 41.017250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994415, 31.827724, 41.049442>,  <37.790913, 32.614594, 41.098721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994415, 31.827724, 41.049442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299690, 32.052376, 41.177265>,  <38.482857, 32.187168, 41.253960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299690, 32.052376, 41.177265>,  <37.994415, 31.827724, 41.049442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299690, 32.052376, 41.177265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096313, -0.587880, 0.803194,
		0.638958, -0.582211, -0.502755,
		0.763188, 0.561629, 0.319556,
		38.528648, 32.220863, 41.273132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450840, 31.352753, 41.329018>,  <37.994415, 31.827724, 41.049442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450840, 31.352753, 41.329018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559799, 31.704941, 41.484230>,  <38.625175, 31.916254, 41.577358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559799, 31.704941, 41.484230>,  <38.450840, 31.352753, 41.329018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559799, 31.704941, 41.484230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148645, -0.436952, 0.887118,
		0.950634, -0.183967, -0.249902,
		0.272395, 0.880471, 0.388036,
		38.641518, 31.969082, 41.600639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826683, 30.650782, 41.170013>,  <38.450840, 31.352753, 41.329018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826683, 30.650782, 41.170013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684036, 30.282825, 41.104744>,  <38.598446, 30.062052, 41.065582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684036, 30.282825, 41.104744>,  <38.826683, 30.650782, 41.170013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684036, 30.282825, 41.104744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204246, 0.247202, -0.947193,
		0.911650, -0.304459, -0.276041,
		-0.356619, -0.919889, -0.163178,
		38.577049, 30.006859, 41.055790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270176, 30.411335, 40.665733>,  <38.826683, 30.650782, 41.170013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270176, 30.411335, 40.665733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923687, 30.217319, 40.617748>,  <38.715794, 30.100910, 40.588955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923687, 30.217319, 40.617748>,  <39.270176, 30.411335, 40.665733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923687, 30.217319, 40.617748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065620, 0.348451, -0.935027,
		0.495330, -0.802070, -0.333664,
		-0.866223, -0.485042, -0.119966,
		38.663818, 30.071808, 40.581760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264671, 30.069613, 40.031189>,  <39.270176, 30.411335, 40.665733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264671, 30.069613, 40.031189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870037, 30.061119, 40.095928>,  <38.633255, 30.056023, 40.134773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870037, 30.061119, 40.095928>,  <39.264671, 30.069613, 40.031189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870037, 30.061119, 40.095928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159451, 0.337648, -0.927669,
		-0.034953, -0.941033, -0.336504,
		-0.986587, -0.021231, 0.161850,
		38.574062, 30.054750, 40.144482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925056, 29.560547, 39.518608>,  <39.264671, 30.069613, 40.031189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925056, 29.560547, 39.518608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657616, 29.830118, 39.644337>,  <38.497150, 29.991861, 39.719772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657616, 29.830118, 39.644337>,  <38.925056, 29.560547, 39.518608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657616, 29.830118, 39.644337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150214, 0.291575, -0.944680,
		-0.728294, -0.678826, -0.093712,
		-0.668598, 0.673928, 0.314322,
		38.457035, 30.032297, 39.738632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266548, 29.398939, 39.112373>,  <38.925056, 29.560547, 39.518608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266548, 29.398939, 39.112373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175251, 29.757261, 39.264919>,  <38.120472, 29.972254, 39.356449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175251, 29.757261, 39.264919>,  <38.266548, 29.398939, 39.112373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175251, 29.757261, 39.264919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268934, 0.318459, -0.908987,
		-0.935725, -0.310030, 0.168228,
		-0.228240, 0.895804, 0.381367,
		38.106777, 30.026003, 39.379330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630886, 29.577591, 38.951954>,  <38.266548, 29.398939, 39.112373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630886, 29.577591, 38.951954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795380, 29.933191, 39.032516>,  <37.894077, 30.146551, 39.080853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795380, 29.933191, 39.032516>,  <37.630886, 29.577591, 38.951954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795380, 29.933191, 39.032516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320875, 0.347996, -0.880873,
		-0.853186, 0.297617, 0.428365,
		0.411233, 0.889001, 0.201408,
		37.918751, 30.199892, 39.092937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169651, 30.047407, 38.735443>,  <37.630886, 29.577591, 38.951954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169651, 30.047407, 38.735443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493702, 30.281534, 38.748703>,  <37.688133, 30.422010, 38.756657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493702, 30.281534, 38.748703>,  <37.169651, 30.047407, 38.735443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493702, 30.281534, 38.748703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296026, 0.457217, -0.838642,
		-0.506026, 0.669595, 0.543673,
		0.810127, 0.585317, 0.033146,
		37.736740, 30.457129, 38.758648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857929, 30.645634, 38.497082>,  <37.169651, 30.047407, 38.735443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857929, 30.645634, 38.497082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255535, 30.685606, 38.514763>,  <37.494099, 30.709589, 38.525372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255535, 30.685606, 38.514763>,  <36.857929, 30.645634, 38.497082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255535, 30.685606, 38.514763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039952, 0.708874, -0.704203,
		-0.101702, 0.698221, 0.708622,
		0.994012, 0.099930, 0.044198,
		37.553738, 30.715586, 38.528023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050430, 31.338152, 38.686367>,  <36.857929, 30.645634, 38.497082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050430, 31.338152, 38.686367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334084, 31.156420, 38.470695>,  <37.504276, 31.047380, 38.341293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334084, 31.156420, 38.470695>,  <37.050430, 31.338152, 38.686367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334084, 31.156420, 38.470695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172868, 0.629336, -0.757663,
		0.683551, 0.630492, 0.367746,
		0.709136, -0.454330, -0.539175,
		37.546825, 31.020121, 38.308945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447613, 31.936050, 38.443459>,  <37.050430, 31.338152, 38.686367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447613, 31.936050, 38.443459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553894, 31.612259, 38.234024>,  <37.617664, 31.417984, 38.108364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553894, 31.612259, 38.234024>,  <37.447613, 31.936050, 38.443459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553894, 31.612259, 38.234024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084009, 0.521602, -0.849042,
		0.960387, 0.269582, 0.070590,
		0.265706, -0.809479, -0.523588,
		37.633606, 31.369415, 38.076946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127880, 32.045506, 38.094051>,  <37.447613, 31.936050, 38.443459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127880, 32.045506, 38.094051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891361, 31.784622, 37.904320>,  <37.749451, 31.628092, 37.790482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891361, 31.784622, 37.904320>,  <38.127880, 32.045506, 38.094051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891361, 31.784622, 37.904320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118295, 0.651951, -0.748977,
		0.797734, -0.386753, -0.462647,
		-0.591292, -0.652213, -0.474332,
		37.713974, 31.588959, 37.762020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321384, 32.100037, 37.352730>,  <38.127880, 32.045506, 38.094051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321384, 32.100037, 37.352730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956455, 31.936859, 37.366833>,  <37.737495, 31.838953, 37.375294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956455, 31.936859, 37.366833>,  <38.321384, 32.100037, 37.352730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956455, 31.936859, 37.366833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260841, 0.512637, -0.818025,
		0.315632, -0.755503, -0.574101,
		-0.912326, -0.407944, 0.035261,
		37.682758, 31.814476, 37.377411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.360142, 28.917429, 44.186813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.041664, 28.682615, 44.128212>,  <39.850578, 28.541727, 44.093052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.041664, 28.682615, 44.128212>,  <40.360142, 28.917429, 44.186813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041664, 28.682615, 44.128212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032132, 0.282826, -0.958633,
		0.604187, -0.758551, -0.244047,
		-0.796195, -0.587035, -0.146506,
		39.802807, 28.506504, 44.084259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471920, 28.507494, 43.576603>,  <40.360142, 28.917429, 44.186813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471920, 28.507494, 43.576603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077232, 28.545033, 43.629646>,  <39.840420, 28.567556, 43.661472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077232, 28.545033, 43.629646>,  <40.471920, 28.507494, 43.576603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077232, 28.545033, 43.629646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103091, 0.269167, -0.957560,
		-0.125560, -0.958510, -0.255917,
		-0.986715, 0.093848, 0.132611,
		39.781219, 28.573187, 43.669430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197197, 28.343224, 42.885590>,  <40.471920, 28.507494, 43.576603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197197, 28.343224, 42.885590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.868221, 28.467403, 43.076260>,  <39.670837, 28.541910, 43.190662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.868221, 28.467403, 43.076260>,  <40.197197, 28.343224, 42.885590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868221, 28.467403, 43.076260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359776, 0.365214, -0.858592,
		-0.440637, -0.877634, -0.188673,
		-0.822436, 0.310447, 0.476678,
		39.621490, 28.560537, 43.219265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644863, 28.014553, 42.598511>,  <40.197197, 28.343224, 42.885590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644863, 28.014553, 42.598511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514896, 28.355450, 42.762520>,  <39.436916, 28.559988, 42.860924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514896, 28.355450, 42.762520>,  <39.644863, 28.014553, 42.598511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514896, 28.355450, 42.762520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450184, 0.241902, -0.859545,
		-0.831724, -0.463863, 0.305068,
		-0.324915, 0.852240, 0.410020,
		39.417423, 28.611122, 42.885525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949226, 28.140924, 42.367485>,  <39.644863, 28.014553, 42.598511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949226, 28.140924, 42.367485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045498, 28.509611, 42.489151>,  <39.103260, 28.730824, 42.562149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045498, 28.509611, 42.489151>,  <38.949226, 28.140924, 42.367485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045498, 28.509611, 42.489151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307087, 0.369589, -0.876984,
		-0.920744, 0.117671, 0.372001,
		0.240683, 0.921714, 0.304161,
		39.117702, 28.786125, 42.580399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401867, 28.546547, 42.369881>,  <38.949226, 28.140924, 42.367485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401867, 28.546547, 42.369881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704723, 28.806107, 42.339771>,  <38.886436, 28.961842, 42.321705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704723, 28.806107, 42.339771>,  <38.401867, 28.546547, 42.369881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704723, 28.806107, 42.339771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458179, 0.445375, -0.769229,
		-0.465625, 0.616907, 0.634523,
		0.757143, 0.648897, -0.075276,
		38.931866, 29.000776, 42.317188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117077, 29.172953, 42.285160>,  <38.401867, 28.546547, 42.369881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117077, 29.172953, 42.285160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490662, 29.239620, 42.158714>,  <38.714813, 29.279621, 42.082848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.490662, 29.239620, 42.158714>,  <38.117077, 29.172953, 42.285160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490662, 29.239620, 42.158714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351257, 0.590961, -0.726211,
		0.065776, 0.789295, 0.610481,
		0.933966, 0.166669, -0.316117,
		38.770851, 29.289621, 42.063881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210243, 29.945513, 42.302666>,  <38.117077, 29.172953, 42.285160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210243, 29.945513, 42.302666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454918, 29.769939, 42.039402>,  <38.601723, 29.664597, 41.881443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454918, 29.769939, 42.039402>,  <38.210243, 29.945513, 42.302666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454918, 29.769939, 42.039402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346642, 0.599126, -0.721725,
		0.711110, 0.669617, 0.214326,
		0.611688, -0.438931, -0.658162,
		38.638424, 29.638260, 41.841953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552094, 30.482815, 41.854343>,  <38.210243, 29.945513, 42.302666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552094, 30.482815, 41.854343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.599525, 30.146601, 41.642895>,  <38.627983, 29.944872, 41.516026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.599525, 30.146601, 41.642895>,  <38.552094, 30.482815, 41.854343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599525, 30.146601, 41.642895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339169, 0.466071, -0.817155,
		0.933222, 0.276189, -0.229817,
		0.118578, -0.840534, -0.528623,
		38.635098, 29.894440, 41.484306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958317, 31.208447, 41.820232>,  <38.552094, 30.482815, 41.854343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958317, 31.208447, 41.820232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.872871, 31.585062, 41.924438>,  <38.821602, 31.811031, 41.986961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.872871, 31.585062, 41.924438>,  <38.958317, 31.208447, 41.820232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872871, 31.585062, 41.924438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052453, -0.255234, 0.965455,
		0.975508, 0.219903, 0.005135,
		-0.213618, 0.941540, 0.260517,
		38.808784, 31.867523, 42.002594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412266, 31.347565, 42.288189>,  <38.958317, 31.208447, 41.820232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412266, 31.347565, 42.288189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.135853, 31.626757, 42.363342>,  <38.970005, 31.794271, 42.408432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.135853, 31.626757, 42.363342>,  <39.412266, 31.347565, 42.288189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135853, 31.626757, 42.363342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060627, -0.203041, 0.977291,
		0.720275, 0.686732, 0.097992,
		-0.691034, 0.697978, 0.187880,
		38.928543, 31.836149, 42.419704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593773, 31.630194, 42.843739>,  <39.412266, 31.347565, 42.288189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593773, 31.630194, 42.843739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210762, 31.745468, 42.839817>,  <38.980957, 31.814632, 42.837463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210762, 31.745468, 42.839817>,  <39.593773, 31.630194, 42.843739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210762, 31.745468, 42.839817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077107, -0.223128, 0.971735,
		0.277852, 0.931216, 0.235871,
		-0.957524, 0.288186, -0.009807,
		38.923504, 31.831924, 42.836876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522274, 32.147343, 43.383595>,  <39.593773, 31.630194, 42.843739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522274, 32.147343, 43.383595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.189278, 31.946381, 43.290173>,  <38.989479, 31.825804, 43.234119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.189278, 31.946381, 43.290173>,  <39.522274, 32.147343, 43.383595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189278, 31.946381, 43.290173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085103, -0.300590, 0.949949,
		-0.547459, 0.810703, 0.207483,
		-0.832494, -0.502401, -0.233554,
		38.939529, 31.795660, 43.220108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099216, 32.359009, 43.874481>,  <39.522274, 32.147343, 43.383595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099216, 32.359009, 43.874481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941399, 32.020870, 43.730415>,  <38.846706, 31.817987, 43.643974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941399, 32.020870, 43.730415>,  <39.099216, 32.359009, 43.874481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941399, 32.020870, 43.730415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091671, -0.426223, 0.899962,
		-0.914291, 0.322062, 0.245660,
		-0.394549, -0.845346, -0.360168,
		38.823032, 31.767267, 43.622364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650005, 32.339867, 44.381596>,  <39.099216, 32.359009, 43.874481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650005, 32.339867, 44.381596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683094, 31.980234, 44.209637>,  <38.702946, 31.764454, 44.106461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683094, 31.980234, 44.209637>,  <38.650005, 32.339867, 44.381596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683094, 31.980234, 44.209637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042467, -0.427799, 0.902875,
		-0.995667, -0.092943, 0.002794,
		0.082720, -0.899082, -0.429893,
		38.707909, 31.710510, 44.080669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365311, 31.899532, 44.856049>,  <38.650005, 32.339867, 44.381596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365311, 31.899532, 44.856049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575909, 31.638222, 44.638412>,  <38.702267, 31.481436, 44.507832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575909, 31.638222, 44.638412>,  <38.365311, 31.899532, 44.856049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575909, 31.638222, 44.638412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306081, -0.451413, 0.838177,
		-0.793172, -0.607829, -0.037709,
		0.526491, -0.653276, -0.544093,
		38.733856, 31.442240, 44.475185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104668, 31.237162, 45.022255>,  <38.365311, 31.899532, 44.856049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104668, 31.237162, 45.022255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.482582, 31.194401, 44.898354>,  <38.709332, 31.168745, 44.824013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.482582, 31.194401, 44.898354>,  <38.104668, 31.237162, 45.022255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482582, 31.194401, 44.898354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245825, -0.393831, 0.885702,
		-0.216675, -0.912945, -0.345807,
		0.944787, -0.106902, -0.309758,
		38.766018, 31.162331, 44.805428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275131, 30.667175, 45.344952>,  <38.104668, 31.237162, 45.022255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275131, 30.667175, 45.344952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628143, 30.825788, 45.243843>,  <38.839951, 30.920956, 45.183178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628143, 30.825788, 45.243843>,  <38.275131, 30.667175, 45.344952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628143, 30.825788, 45.243843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361216, -0.227462, 0.904314,
		0.301094, -0.889394, -0.343977,
		0.882534, 0.396534, -0.252775,
		38.892902, 30.944748, 45.168011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705967, 30.149414, 45.578400>,  <38.275131, 30.667175, 45.344952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705967, 30.149414, 45.578400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924168, 30.480585, 45.526310>,  <39.055088, 30.679289, 45.495056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924168, 30.480585, 45.526310>,  <38.705967, 30.149414, 45.578400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924168, 30.480585, 45.526310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554926, -0.240364, 0.796418,
		0.628077, -0.506714, -0.590559,
		0.545505, 0.827929, -0.130222,
		39.087818, 30.728964, 45.487244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306583, 29.885170, 45.756420>,  <38.705967, 30.149414, 45.578400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306583, 29.885170, 45.756420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325909, 30.281738, 45.805000>,  <39.337502, 30.519680, 45.834148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325909, 30.281738, 45.805000>,  <39.306583, 29.885170, 45.756420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325909, 30.281738, 45.805000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617713, -0.125206, 0.776372,
		0.784918, 0.037513, -0.618463,
		0.048311, 0.991421, 0.121449,
		39.340401, 30.579165, 45.841434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022869, 30.119484, 45.783051>,  <39.306583, 29.885170, 45.756420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022869, 30.119484, 45.783051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.804096, 30.400246, 45.965565>,  <39.672832, 30.568703, 46.075073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.804096, 30.400246, 45.965565>,  <40.022869, 30.119484, 45.783051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804096, 30.400246, 45.965565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675097, 0.047469, 0.736200,
		0.495082, 0.710689, -0.499816,
		-0.546935, 0.701903, 0.456283,
		39.640015, 30.610817, 46.102451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553024, 30.626442, 46.024815>,  <40.022869, 30.119484, 45.783051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553024, 30.626442, 46.024815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223839, 30.736237, 46.223766>,  <40.026329, 30.802114, 46.343136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223839, 30.736237, 46.223766>,  <40.553024, 30.626442, 46.024815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223839, 30.736237, 46.223766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559456, 0.239510, 0.793501,
		0.098680, 0.931285, -0.350672,
		-0.822965, 0.274488, 0.497378,
		39.976948, 30.818583, 46.372978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629391, 31.303677, 46.370502>,  <40.553024, 30.626442, 46.024815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629391, 31.303677, 46.370502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338181, 31.122343, 46.576206>,  <40.163452, 31.013544, 46.699631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338181, 31.122343, 46.576206>,  <40.629391, 31.303677, 46.370502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338181, 31.122343, 46.576206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479314, 0.199726, 0.854616,
		-0.490136, 0.868677, 0.071883,
		-0.728028, -0.453333, 0.514261,
		40.119774, 30.986343, 46.730484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.694275, 28.880587, 47.304935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081234, 28.977871, 47.333202>,  <33.313408, 29.036242, 47.350163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081234, 28.977871, 47.333202>,  <32.694275, 28.880587, 47.304935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081234, 28.977871, 47.333202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017177, 0.341370, -0.939772,
		-0.252686, 0.907918, 0.334418,
		0.967396, 0.243212, 0.070664,
		33.371452, 29.050835, 47.354401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688213, 29.518087, 46.929539>,  <32.694275, 28.880587, 47.304935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688213, 29.518087, 46.929539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060066, 29.371069, 46.940102>,  <33.283176, 29.282858, 46.946442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060066, 29.371069, 46.940102>,  <32.688213, 29.518087, 46.929539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060066, 29.371069, 46.940102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106859, 0.200299, -0.973890,
		0.352659, 0.908180, 0.225480,
		0.929631, -0.367545, 0.026410,
		33.338955, 29.260805, 46.948025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199520, 30.077118, 46.721977>,  <32.688213, 29.518087, 46.929539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199520, 30.077118, 46.721977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.368893, 29.719894, 46.661121>,  <33.470516, 29.505560, 46.624607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.368893, 29.719894, 46.661121>,  <33.199520, 30.077118, 46.721977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368893, 29.719894, 46.661121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123427, 0.223247, -0.966916,
		0.897479, 0.390646, 0.204758,
		0.423434, -0.893060, -0.152143,
		33.495922, 29.451977, 46.615479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883152, 30.223595, 46.395565>,  <33.199520, 30.077118, 46.721977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883152, 30.223595, 46.395565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798279, 29.844894, 46.298706>,  <33.747356, 29.617674, 46.240589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798279, 29.844894, 46.298706>,  <33.883152, 30.223595, 46.395565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798279, 29.844894, 46.298706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092202, 0.227293, -0.969452,
		0.972871, -0.228028, 0.039065,
		-0.212183, -0.946753, -0.242151,
		33.734623, 29.560869, 46.226059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250637, 30.193159, 45.847385>,  <33.883152, 30.223595, 46.395565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250637, 30.193159, 45.847385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059517, 29.842144, 45.831200>,  <33.944847, 29.631535, 45.821487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059517, 29.842144, 45.831200>,  <34.250637, 30.193159, 45.847385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059517, 29.842144, 45.831200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185957, -0.056019, -0.980960,
		0.858562, -0.476225, 0.189950,
		-0.477798, -0.877537, -0.040462,
		33.916176, 29.578882, 45.819061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697811, 29.697731, 45.447632>,  <34.250637, 30.193159, 45.847385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697811, 29.697731, 45.447632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310654, 29.598763, 45.429859>,  <34.078362, 29.539381, 45.419197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.310654, 29.598763, 45.429859>,  <34.697811, 29.697731, 45.447632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310654, 29.598763, 45.429859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049205, -0.013155, -0.998702,
		0.246515, -0.968819, 0.024907,
		-0.967889, -0.247421, -0.044428,
		34.020287, 29.524536, 45.416531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624916, 29.141621, 44.877949>,  <34.697811, 29.697731, 45.447632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624916, 29.141621, 44.877949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269150, 29.317091, 44.929340>,  <34.055691, 29.422373, 44.960175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269150, 29.317091, 44.929340>,  <34.624916, 29.141621, 44.877949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269150, 29.317091, 44.929340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089126, 0.109246, -0.990011,
		-0.448330, -0.891980, -0.058068,
		-0.889414, 0.438676, 0.128477,
		34.002327, 29.448694, 44.967884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120651, 28.872421, 44.372784>,  <34.624916, 29.141621, 44.877949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120651, 28.872421, 44.372784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940216, 29.216307, 44.468624>,  <33.831955, 29.422638, 44.526127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940216, 29.216307, 44.468624>,  <34.120651, 28.872421, 44.372784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940216, 29.216307, 44.468624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056347, 0.295361, -0.953723,
		-0.890698, -0.416715, -0.181677,
		-0.451091, 0.859716, 0.239596,
		33.804890, 29.474222, 44.540504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663521, 28.910589, 43.852406>,  <34.120651, 28.872421, 44.372784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663521, 28.910589, 43.852406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703518, 29.280256, 43.999870>,  <33.727516, 29.502056, 44.088348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703518, 29.280256, 43.999870>,  <33.663521, 28.910589, 43.852406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703518, 29.280256, 43.999870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039203, 0.373893, -0.926643,
		-0.994216, 0.078204, 0.073617,
		0.099992, 0.924169, 0.368665,
		33.733517, 29.557507, 44.110470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192764, 29.217978, 43.428810>,  <33.663521, 28.910589, 43.852406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192764, 29.217978, 43.428810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.451477, 29.499548, 43.546223>,  <33.606705, 29.668489, 43.616669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.451477, 29.499548, 43.546223>,  <33.192764, 29.217978, 43.428810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451477, 29.499548, 43.546223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012781, 0.394820, -0.918670,
		-0.762566, 0.590429, 0.264360,
		0.646784, 0.703925, 0.293530,
		33.645512, 29.710726, 43.634281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935246, 29.710258, 43.141346>,  <33.192764, 29.217978, 43.428810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935246, 29.710258, 43.141346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291462, 29.869169, 43.229992>,  <33.505192, 29.964516, 43.283180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291462, 29.869169, 43.229992>,  <32.935246, 29.710258, 43.141346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291462, 29.869169, 43.229992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025352, 0.529748, -0.847776,
		-0.454200, 0.749359, 0.481833,
		0.890539, 0.397276, 0.221614,
		33.558624, 29.988352, 43.296474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898136, 30.359163, 42.889652>,  <32.935246, 29.710258, 43.141346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898136, 30.359163, 42.889652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295002, 30.328291, 42.928947>,  <33.533123, 30.309767, 42.952526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295002, 30.328291, 42.928947>,  <32.898136, 30.359163, 42.889652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295002, 30.328291, 42.928947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124929, 0.620412, -0.774262,
		-0.001192, 0.780469, 0.625194,
		0.992165, -0.077182, 0.098242,
		33.592651, 30.305136, 42.958420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107258, 30.984798, 42.888996>,  <32.898136, 30.359163, 42.889652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107258, 30.984798, 42.888996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423988, 30.767626, 42.777119>,  <33.614029, 30.637321, 42.709991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423988, 30.767626, 42.777119>,  <33.107258, 30.984798, 42.888996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423988, 30.767626, 42.777119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003348, 0.461810, -0.886973,
		0.610731, 0.701396, 0.367493,
		0.791831, -0.542932, -0.279693,
		33.661537, 30.604746, 42.693211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688488, 31.552242, 42.706291>,  <33.107258, 30.984798, 42.888996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688488, 31.552242, 42.706291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719547, 31.192596, 42.533981>,  <33.738182, 30.976809, 42.430595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719547, 31.192596, 42.533981>,  <33.688488, 31.552242, 42.706291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719547, 31.192596, 42.533981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100340, 0.422838, -0.900633,
		0.991919, 0.113154, -0.057386,
		0.077645, -0.899113, -0.430775,
		33.742840, 30.922863, 42.404747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402729, 31.855242, 42.864613>,  <33.688488, 31.552242, 42.706291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402729, 31.855242, 42.864613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478260, 32.215385, 43.021427>,  <34.523579, 32.431473, 43.115517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478260, 32.215385, 43.021427>,  <34.402729, 31.855242, 42.864613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478260, 32.215385, 43.021427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047709, -0.390340, 0.919434,
		0.980850, -0.192321, -0.030753,
		0.188830, 0.900360, 0.392040,
		34.534908, 32.485493, 43.139038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880558, 31.786232, 43.414589>,  <34.402729, 31.855242, 42.864613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880558, 31.786232, 43.414589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681953, 32.125744, 43.487301>,  <34.562790, 32.329453, 43.530930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681953, 32.125744, 43.487301>,  <34.880558, 31.786232, 43.414589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681953, 32.125744, 43.487301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060307, -0.242647, 0.968239,
		0.865932, 0.469779, 0.171664,
		-0.496512, 0.848782, 0.181784,
		34.533001, 32.380379, 43.541836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248211, 32.305943, 43.821152>,  <34.880558, 31.786232, 43.414589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248211, 32.305943, 43.821152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871487, 32.428154, 43.877220>,  <34.645451, 32.501480, 43.910862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871487, 32.428154, 43.877220>,  <35.248211, 32.305943, 43.821152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871487, 32.428154, 43.877220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092514, -0.165304, 0.981894,
		0.323166, 0.937725, 0.127419,
		-0.941809, 0.305527, 0.140173,
		34.588943, 32.519814, 43.919273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267189, 32.696026, 44.416859>,  <35.248211, 32.305943, 43.821152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267189, 32.696026, 44.416859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883152, 32.588776, 44.385021>,  <34.652729, 32.524426, 44.365917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883152, 32.588776, 44.385021>,  <35.267189, 32.696026, 44.416859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883152, 32.588776, 44.385021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033547, -0.172145, 0.984500,
		-0.277672, 0.947879, 0.156279,
		-0.960090, -0.268125, -0.079598,
		34.595123, 32.508339, 44.361141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938217, 33.200062, 44.788563>,  <35.267189, 32.696026, 44.416859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938217, 33.200062, 44.788563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654388, 32.918407, 44.799160>,  <34.484093, 32.749416, 44.805519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654388, 32.918407, 44.799160>,  <34.938217, 33.200062, 44.788563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654388, 32.918407, 44.799160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063064, -0.026018, 0.997670,
		-0.701805, 0.709590, 0.062867,
		-0.709572, -0.704134, 0.026490,
		34.441517, 32.707169, 44.807106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501919, 33.493683, 45.310753>,  <34.938217, 33.200062, 44.788563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501919, 33.493683, 45.310753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397461, 33.110634, 45.262146>,  <34.334785, 32.880806, 45.232983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397461, 33.110634, 45.262146>,  <34.501919, 33.493683, 45.310753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397461, 33.110634, 45.262146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267019, -0.049313, 0.962429,
		-0.927633, 0.283783, -0.242824,
		-0.261147, -0.957620, -0.121520,
		34.319118, 32.823349, 45.225689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917149, 33.384861, 45.763210>,  <34.501919, 33.493683, 45.310753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917149, 33.384861, 45.763210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.041348, 33.009239, 45.704197>,  <34.115868, 32.783867, 45.668789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.041348, 33.009239, 45.704197>,  <33.917149, 33.384861, 45.763210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041348, 33.009239, 45.704197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003505, -0.154075, 0.988053,
		-0.950568, -0.307304, -0.044548,
		0.310497, -0.939055, -0.147535,
		34.134495, 32.727524, 45.659935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465839, 32.964169, 46.256714>,  <33.917149, 33.384861, 45.763210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465839, 32.964169, 46.256714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789330, 32.745319, 46.170349>,  <33.983425, 32.614010, 46.118530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789330, 32.745319, 46.170349>,  <33.465839, 32.964169, 46.256714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789330, 32.745319, 46.170349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017074, -0.345091, 0.938414,
		-0.587933, -0.762609, -0.269744,
		0.808730, -0.547119, -0.215912,
		34.031948, 32.581184, 46.105576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335403, 32.345150, 46.665886>,  <33.465839, 32.964169, 46.256714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335403, 32.345150, 46.665886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725361, 32.369740, 46.580273>,  <33.959335, 32.384491, 46.528904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725361, 32.369740, 46.580273>,  <33.335403, 32.345150, 46.665886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725361, 32.369740, 46.580273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221880, -0.349715, 0.910202,
		-0.018900, -0.934837, -0.354573,
		0.974891, 0.061470, -0.214032,
		34.017830, 32.388180, 46.516064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658070, 31.758148, 46.953815>,  <33.335403, 32.345150, 46.665886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658070, 31.758148, 46.953815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.969265, 32.001244, 46.890091>,  <34.155983, 32.147102, 46.851856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.969265, 32.001244, 46.890091>,  <33.658070, 31.758148, 46.953815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969265, 32.001244, 46.890091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442979, -0.350801, 0.825050,
		0.445530, -0.712454, -0.542137,
		0.777993, 0.607740, -0.159309,
		34.202663, 32.183567, 46.842297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269165, 31.342518, 46.998745>,  <33.658070, 31.758148, 46.953815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269165, 31.342518, 46.998745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353790, 31.719557, 47.102089>,  <34.404564, 31.945780, 47.164093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353790, 31.719557, 47.102089>,  <34.269165, 31.342518, 46.998745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353790, 31.719557, 47.102089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318710, -0.316425, 0.893476,
		0.923940, -0.106687, -0.367360,
		0.211564, 0.942599, 0.258356,
		34.417259, 32.002338, 47.179596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826889, 31.220289, 47.412182>,  <34.269165, 31.342518, 46.998745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826889, 31.220289, 47.412182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743996, 31.603617, 47.490852>,  <34.694260, 31.833612, 47.538055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743996, 31.603617, 47.490852>,  <34.826889, 31.220289, 47.412182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743996, 31.603617, 47.490852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371042, -0.109031, 0.922193,
		0.905198, 0.264083, -0.332982,
		-0.207230, 0.958318, 0.196681,
		34.681828, 31.891111, 47.549858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485462, 31.577482, 47.596718>,  <34.826889, 31.220289, 47.412182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485462, 31.577482, 47.596718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167488, 31.769577, 47.745010>,  <34.976704, 31.884834, 47.833988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167488, 31.769577, 47.745010>,  <35.485462, 31.577482, 47.596718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167488, 31.769577, 47.745010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352089, -0.132459, 0.926546,
		0.494069, 0.867080, -0.063789,
		-0.794940, 0.480237, 0.370733,
		34.929005, 31.913649, 47.856232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800705, 32.042564, 48.047619>,  <35.485462, 31.577482, 47.596718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800705, 32.042564, 48.047619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428532, 31.941008, 48.153324>,  <35.205227, 31.880074, 48.216747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428532, 31.941008, 48.153324>,  <35.800705, 32.042564, 48.047619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428532, 31.941008, 48.153324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336012, -0.303274, 0.891696,
		-0.146251, 0.918458, 0.367486,
		-0.930434, -0.253891, 0.264259,
		35.149403, 31.864840, 48.232601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021511, 32.704594, 48.141827>,  <35.800705, 32.042564, 48.047619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021511, 32.704594, 48.141827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379845, 32.881294, 48.122475>,  <36.594845, 32.987312, 48.110863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379845, 32.881294, 48.122475>,  <36.021511, 32.704594, 48.141827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379845, 32.881294, 48.122475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302777, 0.527039, -0.794076,
		-0.325284, 0.726007, 0.605891,
		0.895833, 0.441750, -0.048381,
		36.648594, 33.013821, 48.107960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911541, 33.350468, 47.994308>,  <36.021511, 32.704594, 48.141827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911541, 33.350468, 47.994308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288044, 33.286697, 47.875237>,  <36.513947, 33.248436, 47.803791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288044, 33.286697, 47.875237>,  <35.911541, 33.350468, 47.994308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288044, 33.286697, 47.875237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226840, 0.354515, -0.907118,
		0.250155, 0.921358, 0.297525,
		0.941258, -0.159429, -0.297685,
		36.570423, 33.238869, 47.785931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093521, 33.942856, 47.688900>,  <35.911541, 33.350468, 47.994308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093521, 33.942856, 47.688900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.361481, 33.684757, 47.541996>,  <36.522259, 33.529896, 47.453854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.361481, 33.684757, 47.541996>,  <36.093521, 33.942856, 47.688900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361481, 33.684757, 47.541996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071914, 0.435947, -0.897095,
		0.738958, 0.627378, 0.245640,
		0.669903, -0.645250, -0.367263,
		36.562450, 33.491180, 47.431816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699593, 34.369854, 47.461510>,  <36.093521, 33.942856, 47.688900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699593, 34.369854, 47.461510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.673523, 34.021156, 47.267265>,  <36.657879, 33.811939, 47.150719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.673523, 34.021156, 47.267265>,  <36.699593, 34.369854, 47.461510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673523, 34.021156, 47.267265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058642, 0.482458, -0.873954,
		0.996149, -0.085439, 0.019676,
		-0.065177, -0.871742, -0.485610,
		36.653969, 33.759632, 47.121582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284077, 34.290222, 47.210094>,  <36.699593, 34.369854, 47.461510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284077, 34.290222, 47.210094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052338, 34.055542, 46.983772>,  <36.913296, 33.914734, 46.847980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052338, 34.055542, 46.983772>,  <37.284077, 34.290222, 47.210094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052338, 34.055542, 46.983772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301194, 0.490937, -0.817474,
		0.757390, -0.644018, -0.107710,
		-0.579346, -0.586704, -0.565805,
		36.878532, 33.879532, 46.814030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637096, 34.195938, 46.642117>,  <37.284077, 34.290222, 47.210094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637096, 34.195938, 46.642117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297722, 34.038147, 46.500957>,  <37.094097, 33.943474, 46.416264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297722, 34.038147, 46.500957>,  <37.637096, 34.195938, 46.642117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297722, 34.038147, 46.500957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136019, 0.481848, -0.865634,
		0.511520, -0.782437, -0.355161,
		-0.848438, -0.394480, -0.352901,
		37.043190, 33.919804, 46.395088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796200, 33.906292, 45.959030>,  <37.637096, 34.195938, 46.642117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796200, 33.906292, 45.959030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.398758, 33.946648, 45.979317>,  <37.160294, 33.970860, 45.991489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.398758, 33.946648, 45.979317>,  <37.796200, 33.906292, 45.959030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398758, 33.946648, 45.979317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000181, 0.447723, -0.894172,
		-0.112920, -0.888462, -0.444841,
		-0.993604, 0.100889, 0.050717,
		37.100677, 33.976913, 45.994534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539219, 33.586369, 45.283539>,  <37.796200, 33.906292, 45.959030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539219, 33.586369, 45.283539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.272038, 33.846909, 45.427525>,  <37.111729, 34.003235, 45.513916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.272038, 33.846909, 45.427525>,  <37.539219, 33.586369, 45.283539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272038, 33.846909, 45.427525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055527, 0.438719, -0.896907,
		-0.742126, -0.619083, -0.256878,
		-0.667957, 0.651354, 0.359960,
		37.071651, 34.042316, 45.535511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036945, 33.545597, 44.802830>,  <37.539219, 33.586369, 45.283539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036945, 33.545597, 44.802830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.022915, 33.908363, 44.970764>,  <37.014496, 34.126022, 45.071526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.022915, 33.908363, 44.970764>,  <37.036945, 33.545597, 44.802830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022915, 33.908363, 44.970764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076806, 0.421302, -0.903662,
		-0.996429, 0.000547, -0.084436,
		-0.035078, 0.906920, 0.419839,
		37.012390, 34.180439, 45.096718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607094, 33.763271, 44.356018>,  <37.036945, 33.545597, 44.802830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607094, 33.763271, 44.356018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763962, 34.074253, 44.552700>,  <36.858082, 34.260841, 44.670712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763962, 34.074253, 44.552700>,  <36.607094, 33.763271, 44.356018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763962, 34.074253, 44.552700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093354, 0.498131, -0.862062,
		-0.915144, 0.383976, 0.122773,
		0.392168, 0.777450, 0.491708,
		36.881611, 34.307487, 44.700211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124470, 34.358776, 44.244541>,  <36.607094, 33.763271, 44.356018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124470, 34.358776, 44.244541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480217, 34.518787, 44.333080>,  <36.693665, 34.614796, 44.386204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480217, 34.518787, 44.333080>,  <36.124470, 34.358776, 44.244541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480217, 34.518787, 44.333080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001344, 0.481869, -0.876242,
		-0.457182, 0.779603, 0.428023,
		0.889372, 0.400027, 0.221349,
		36.747028, 34.638794, 44.399487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069778, 34.976364, 43.949356>,  <36.124470, 34.358776, 44.244541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069778, 34.976364, 43.949356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462769, 34.952366, 44.019939>,  <36.698563, 34.937969, 44.062290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462769, 34.952366, 44.019939>,  <36.069778, 34.976364, 43.949356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462769, 34.952366, 44.019939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184607, 0.443551, -0.877031,
		-0.025654, 0.894239, 0.446854,
		0.982477, -0.059993, 0.176462,
		36.757511, 34.934368, 44.072880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353695, 35.533104, 43.567101>,  <36.069778, 34.976364, 43.949356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353695, 35.533104, 43.567101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689579, 35.326241, 43.633354>,  <36.891109, 35.202122, 43.673107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689579, 35.326241, 43.633354>,  <36.353695, 35.533104, 43.567101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689579, 35.326241, 43.633354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352354, 0.286807, -0.890836,
		0.413202, 0.806403, 0.423059,
		0.839709, -0.517162, 0.165630,
		36.941490, 35.171093, 43.683044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907780, 36.051537, 43.434429>,  <36.353695, 35.533104, 43.567101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907780, 36.051537, 43.434429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.008194, 35.669075, 43.374088>,  <37.068443, 35.439598, 43.337883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.008194, 35.669075, 43.374088>,  <36.907780, 36.051537, 43.434429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008194, 35.669075, 43.374088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316339, 0.228327, -0.920759,
		0.914827, 0.183425, 0.359786,
		0.251039, -0.956150, -0.150855,
		37.083508, 35.382229, 43.328831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.742970, 29.109030, 33.056736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428862, 28.933186, 33.231136>,  <29.240396, 28.827679, 33.335777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428862, 28.933186, 33.231136>,  <29.742970, 29.109030, 33.056736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428862, 28.933186, 33.231136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412391, 0.896615, 0.161295,
		-0.461829, -0.053142, -0.885375,
		-0.785269, -0.439611, 0.435998,
		29.193281, 28.801302, 33.361935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103600, 29.331688, 32.806133>,  <29.742970, 29.109030, 33.056736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103600, 29.331688, 32.806133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006351, 29.220867, 33.177967>,  <28.948002, 29.154375, 33.401070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006351, 29.220867, 33.177967>,  <29.103600, 29.331688, 32.806133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006351, 29.220867, 33.177967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376384, 0.910199, 0.172837,
		-0.893995, -0.307861, -0.325568,
		-0.243122, -0.277054, 0.929588,
		28.933414, 29.137751, 33.456844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445826, 29.616711, 32.935165>,  <29.103600, 29.331688, 32.806133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445826, 29.616711, 32.935165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570282, 29.501625, 33.297470>,  <28.644957, 29.432573, 33.514854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570282, 29.501625, 33.297470>,  <28.445826, 29.616711, 32.935165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570282, 29.501625, 33.297470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343269, 0.854707, 0.389412,
		-0.886203, -0.432084, 0.167173,
		0.311143, -0.287713, 0.905766,
		28.663626, 29.415312, 33.569199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866791, 29.694080, 33.296684>,  <28.445826, 29.616711, 32.935165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866791, 29.694080, 33.296684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160662, 29.688646, 33.567997>,  <28.336985, 29.685385, 33.730785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160662, 29.688646, 33.567997>,  <27.866791, 29.694080, 33.296684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160662, 29.688646, 33.567997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343339, 0.854863, 0.389010,
		-0.585122, -0.518677, 0.623383,
		0.734677, -0.013587, 0.678281,
		28.381065, 29.684570, 33.771481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579342, 29.878216, 33.928139>,  <27.866791, 29.694080, 33.296684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579342, 29.878216, 33.928139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967854, 29.972401, 33.941875>,  <28.200960, 30.028912, 33.950119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967854, 29.972401, 33.941875>,  <27.579342, 29.878216, 33.928139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967854, 29.972401, 33.941875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225326, 0.863719, 0.450796,
		0.076482, -0.445586, 0.891966,
		0.971277, 0.235461, 0.034343,
		28.259237, 30.043039, 33.952179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622282, 30.032145, 34.631603>,  <27.579342, 29.878216, 33.928139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622282, 30.032145, 34.631603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912050, 30.214563, 34.424824>,  <28.085911, 30.324015, 34.300755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912050, 30.214563, 34.424824>,  <27.622282, 30.032145, 34.631603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912050, 30.214563, 34.424824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203940, 0.858109, 0.471230,
		0.658501, -0.235943, 0.714638,
		0.724421, 0.456048, -0.516947,
		28.129377, 30.351377, 34.269741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785786, 30.559580, 35.110481>,  <27.622282, 30.032145, 34.631603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785786, 30.559580, 35.110481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980934, 30.664989, 34.777607>,  <28.098024, 30.728235, 34.577881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980934, 30.664989, 34.777607>,  <27.785786, 30.559580, 35.110481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980934, 30.664989, 34.777607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039713, 0.945656, 0.322735,
		0.872011, -0.190502, 0.450895,
		0.487873, 0.263522, -0.832187,
		28.127296, 30.744045, 34.527950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465115, 30.922688, 35.372425>,  <27.785786, 30.559580, 35.110481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465115, 30.922688, 35.372425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342813, 31.038164, 35.009510>,  <28.269432, 31.107450, 34.791759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342813, 31.038164, 35.009510>,  <28.465115, 30.922688, 35.372425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342813, 31.038164, 35.009510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066653, 0.957076, 0.282069,
		0.949775, 0.025770, -0.311871,
		-0.305753, 0.288689, -0.907289,
		28.251087, 31.124771, 34.737324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857952, 31.454542, 35.153618>,  <28.465115, 30.922688, 35.372425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857952, 31.454542, 35.153618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552763, 31.477470, 34.896065>,  <28.369650, 31.491228, 34.741531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552763, 31.477470, 34.896065>,  <28.857952, 31.454542, 35.153618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552763, 31.477470, 34.896065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130467, 0.961908, 0.240231,
		0.633127, 0.267295, -0.726432,
		-0.762974, 0.057321, -0.643883,
		28.323872, 31.494667, 34.702900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808512, 32.186562, 35.100883>,  <28.857952, 31.454542, 35.153618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808512, 32.186562, 35.100883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507790, 32.093285, 34.854176>,  <28.327356, 32.037319, 34.706150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.507790, 32.093285, 34.854176>,  <28.808512, 32.186562, 35.100883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507790, 32.093285, 34.854176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328316, 0.943568, 0.043445,
		0.571834, 0.235158, -0.785943,
		-0.751807, -0.233195, -0.616771,
		28.282248, 32.023327, 34.669144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828842, 32.717018, 34.482803>,  <28.808512, 32.186562, 35.100883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828842, 32.717018, 34.482803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477463, 32.544571, 34.565231>,  <28.266636, 32.441101, 34.614689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477463, 32.544571, 34.565231>,  <28.828842, 32.717018, 34.482803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477463, 32.544571, 34.565231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387365, 0.895005, 0.221167,
		-0.279785, 0.114458, -0.953215,
		-0.878447, -0.431121, 0.206071,
		28.213928, 32.415234, 34.627052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314564, 33.108204, 34.145527>,  <28.828842, 32.717018, 34.482803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314564, 33.108204, 34.145527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.135132, 32.897800, 34.434551>,  <28.027472, 32.771557, 34.607964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.135132, 32.897800, 34.434551>,  <28.314564, 33.108204, 34.145527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135132, 32.897800, 34.434551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462174, 0.828499, 0.316204,
		-0.764964, -0.192104, -0.614757,
		-0.448582, -0.526010, 0.722557,
		28.000557, 32.739998, 34.651318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657738, 33.387924, 34.136093>,  <28.314564, 33.108204, 34.145527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657738, 33.387924, 34.136093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703989, 33.217545, 34.495026>,  <27.731739, 33.115318, 34.710384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703989, 33.217545, 34.495026>,  <27.657738, 33.387924, 34.136093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703989, 33.217545, 34.495026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561923, 0.716882, 0.412701,
		-0.819068, -0.551949, -0.156459,
		0.115627, -0.425949, 0.897328,
		27.738678, 33.089760, 34.764225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949837, 33.452747, 34.450283>,  <27.657738, 33.387924, 34.136093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949837, 33.452747, 34.450283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.226130, 33.382183, 34.730789>,  <27.391905, 33.339844, 34.899094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.226130, 33.382183, 34.730789>,  <26.949837, 33.452747, 34.450283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226130, 33.382183, 34.730789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397348, 0.717656, 0.571913,
		-0.604157, -0.673684, 0.425611,
		0.690730, -0.176410, 0.701264,
		27.433348, 33.329262, 34.941170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486355, 33.494553, 35.100216>,  <26.949837, 33.452747, 34.450283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486355, 33.494553, 35.100216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851419, 33.512634, 35.262699>,  <27.070459, 33.523483, 35.360188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851419, 33.512634, 35.262699>,  <26.486355, 33.494553, 35.100216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851419, 33.512634, 35.262699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277594, 0.798019, 0.534890,
		-0.299981, -0.600935, 0.740871,
		0.912662, 0.045205, 0.406206,
		27.125217, 33.526196, 35.384560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387005, 33.612274, 35.821690>,  <26.486355, 33.494553, 35.100216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387005, 33.612274, 35.821690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.750231, 33.741844, 35.715492>,  <26.968166, 33.819588, 35.651772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.750231, 33.741844, 35.715492>,  <26.387005, 33.612274, 35.821690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750231, 33.741844, 35.715492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213342, 0.903242, 0.372344,
		0.360418, -0.281471, 0.889310,
		0.908066, 0.323927, -0.265495,
		27.022650, 33.839024, 35.635845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596550, 34.101910, 36.397202>,  <26.387005, 33.612274, 35.821690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596550, 34.101910, 36.397202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837616, 34.210773, 36.097141>,  <26.982256, 34.276093, 35.917107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.837616, 34.210773, 36.097141>,  <26.596550, 34.101910, 36.397202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837616, 34.210773, 36.097141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232299, 0.959165, 0.161369,
		0.763436, 0.077008, 0.641276,
		0.602663, 0.272163, -0.750150,
		27.018415, 34.292423, 35.872097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187498, 34.401989, 36.664410>,  <26.596550, 34.101910, 36.397202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187498, 34.401989, 36.664410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.151371, 34.533653, 36.288433>,  <27.129696, 34.612652, 36.062847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.151371, 34.533653, 36.288433>,  <27.187498, 34.401989, 36.664410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151371, 34.533653, 36.288433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062452, 0.943816, 0.324517,
		0.993953, -0.029392, -0.105798,
		-0.090315, 0.329162, -0.939944,
		27.124277, 34.632401, 36.006451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669043, 34.954456, 36.684822>,  <27.187498, 34.401989, 36.664410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669043, 34.954456, 36.684822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473530, 35.040054, 36.346519>,  <27.356222, 35.091415, 36.143539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473530, 35.040054, 36.346519>,  <27.669043, 34.954456, 36.684822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473530, 35.040054, 36.346519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235255, 0.965867, 0.108429,
		0.840089, -0.145970, -0.522440,
		-0.488780, 0.213997, -0.845754,
		27.326897, 35.104252, 36.092793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168926, 35.400410, 36.187160>,  <27.669043, 34.954456, 36.684822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168926, 35.400410, 36.187160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784494, 35.467690, 36.099495>,  <27.553835, 35.508057, 36.046894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784494, 35.467690, 36.099495>,  <28.168926, 35.400410, 36.187160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784494, 35.467690, 36.099495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101962, 0.953255, 0.284445,
		0.256762, 0.251028, -0.933305,
		-0.961081, 0.168196, -0.219164,
		27.496170, 35.518147, 36.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887785, 35.156876, 36.162640>,  <28.168926, 35.400410, 36.187160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887785, 35.156876, 36.162640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227480, 35.147568, 35.951641>,  <29.431297, 35.141983, 35.825043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227480, 35.147568, 35.951641>,  <28.887785, 35.156876, 36.162640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227480, 35.147568, 35.951641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106968, -0.970730, 0.215038,
		-0.517062, -0.239044, -0.821891,
		0.849237, -0.023272, -0.527498,
		29.482252, 35.140587, 35.793392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913815, 34.600014, 35.647659>,  <28.887785, 35.156876, 36.162640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913815, 34.600014, 35.647659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.300835, 34.688393, 35.696705>,  <29.533047, 34.741421, 35.726131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.300835, 34.688393, 35.696705>,  <28.913815, 34.600014, 35.647659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300835, 34.688393, 35.696705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201954, -0.967795, 0.150289,
		0.151874, -0.120649, -0.981009,
		0.967548, 0.220943, 0.122618,
		29.591099, 34.754677, 35.733490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308857, 34.172523, 35.251324>,  <28.913815, 34.600014, 35.647659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308857, 34.172523, 35.251324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568308, 34.266266, 35.540974>,  <29.723978, 34.322510, 35.714764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568308, 34.266266, 35.540974>,  <29.308857, 34.172523, 35.251324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568308, 34.266266, 35.540974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236842, -0.966326, 0.100593,
		0.723317, 0.106256, -0.682292,
		0.648628, 0.234356, 0.724126,
		29.762896, 34.336571, 35.758213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861809, 33.711624, 35.075237>,  <29.308857, 34.172523, 35.251324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861809, 33.711624, 35.075237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883928, 33.851109, 35.449474>,  <29.897200, 33.934799, 35.674019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883928, 33.851109, 35.449474>,  <29.861809, 33.711624, 35.075237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883928, 33.851109, 35.449474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267963, -0.907839, 0.322528,
		0.961841, 0.232870, -0.143646,
		0.055301, 0.348713, 0.935597,
		29.900518, 33.955723, 35.730152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494293, 33.561996, 35.376068>,  <29.861809, 33.711624, 35.075237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494293, 33.561996, 35.376068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254814, 33.609837, 35.692867>,  <30.111128, 33.638538, 35.882946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254814, 33.609837, 35.692867>,  <30.494293, 33.561996, 35.376068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254814, 33.609837, 35.692867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221190, -0.925654, 0.306985,
		0.769830, 0.358973, 0.527731,
		-0.598695, 0.119597, 0.791998,
		30.075205, 33.645718, 35.930466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926382, 33.321491, 35.928963>,  <30.494293, 33.561996, 35.376068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926382, 33.321491, 35.928963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.557777, 33.358459, 36.079842>,  <30.336615, 33.380642, 36.170368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.557777, 33.358459, 36.079842>,  <30.926382, 33.321491, 35.928963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557777, 33.358459, 36.079842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076862, -0.908652, 0.410419,
		0.380674, 0.407197, 0.830228,
		-0.921509, 0.092423, 0.377198,
		30.281324, 33.386185, 36.193001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903412, 33.245537, 36.710430>,  <30.926382, 33.321491, 35.928963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903412, 33.245537, 36.710430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.543745, 33.143696, 36.568066>,  <30.327944, 33.082592, 36.482647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.543745, 33.143696, 36.568066>,  <30.903412, 33.245537, 36.710430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543745, 33.143696, 36.568066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058954, -0.876390, 0.477980,
		-0.433613, 0.408803, 0.803032,
		-0.899169, -0.254600, -0.355914,
		30.273994, 33.067314, 36.461292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543415, 32.826679, 37.250835>,  <30.903412, 33.245537, 36.710430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543415, 32.826679, 37.250835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342409, 32.740551, 36.915905>,  <30.221806, 32.688873, 36.714947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342409, 32.740551, 36.915905>,  <30.543415, 32.826679, 37.250835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342409, 32.740551, 36.915905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201523, -0.912642, 0.355631,
		-0.840754, 0.347451, 0.415224,
		-0.502515, -0.215321, -0.837326,
		30.191654, 32.675953, 36.664707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988024, 32.386715, 37.436981>,  <30.543415, 32.826679, 37.250835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988024, 32.386715, 37.436981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071262, 32.306202, 37.054111>,  <30.121206, 32.257893, 36.824390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071262, 32.306202, 37.054111>,  <29.988024, 32.386715, 37.436981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071262, 32.306202, 37.054111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187759, -0.968617, 0.162873,
		-0.959918, 0.145824, -0.239361,
		0.208098, -0.201287, -0.957172,
		30.133692, 32.245815, 36.766960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511805, 31.847965, 37.144474>,  <29.988024, 32.386715, 37.436981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511805, 31.847965, 37.144474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.811062, 31.841328, 36.879143>,  <29.990616, 31.837345, 36.719944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.811062, 31.841328, 36.879143>,  <29.511805, 31.847965, 37.144474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811062, 31.841328, 36.879143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007098, -0.999430, 0.033009,
		-0.663500, -0.029403, -0.747598,
		0.748143, -0.016595, -0.663330,
		30.035505, 31.836349, 36.680145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436474, 31.177193, 36.973328>,  <29.511805, 31.847965, 37.144474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436474, 31.177193, 36.973328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.778631, 31.282402, 36.794834>,  <29.983925, 31.345528, 36.687740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.778631, 31.282402, 36.794834>,  <29.436474, 31.177193, 36.973328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778631, 31.282402, 36.794834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256832, -0.963495, -0.075591,
		-0.449824, -0.049946, -0.891720,
		0.855392, 0.263025, -0.446231,
		30.035250, 31.361309, 36.660965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478369, 30.920355, 36.269241>,  <29.436474, 31.177193, 36.973328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478369, 30.920355, 36.269241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854082, 30.980362, 36.392685>,  <30.079510, 31.016365, 36.466751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854082, 30.980362, 36.392685>,  <29.478369, 30.920355, 36.269241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854082, 30.980362, 36.392685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256357, -0.904621, -0.340503,
		0.228096, 0.398944, -0.888153,
		0.939284, 0.150017, 0.308612,
		30.135868, 31.025368, 36.485268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787249, 30.580149, 35.785767>,  <29.478369, 30.920355, 36.269241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787249, 30.580149, 35.785767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070086, 30.611712, 36.066849>,  <30.239788, 30.630650, 36.235497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070086, 30.611712, 36.066849>,  <29.787249, 30.580149, 35.785767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070086, 30.611712, 36.066849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315677, -0.924457, -0.213840,
		0.632748, 0.373033, -0.678584,
		0.707091, 0.078906, 0.702706,
		30.282213, 30.635384, 36.277660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466619, 30.485435, 35.421585>,  <29.787249, 30.580149, 35.785767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466619, 30.485435, 35.421585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520454, 30.419125, 35.812359>,  <30.552755, 30.379337, 36.046822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520454, 30.419125, 35.812359>,  <30.466619, 30.485435, 35.421585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520454, 30.419125, 35.812359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366873, -0.907506, -0.204540,
		0.920484, 0.385940, -0.061319,
		0.134588, -0.165780, 0.976936,
		30.560831, 30.369390, 36.105438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183641, 30.214066, 35.448494>,  <30.466619, 30.485435, 35.421585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183641, 30.214066, 35.448494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022303, 30.099403, 35.796089>,  <30.925499, 30.030605, 36.004646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022303, 30.099403, 35.796089>,  <31.183641, 30.214066, 35.448494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022303, 30.099403, 35.796089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411522, -0.905034, -0.107537,
		0.817288, 0.314232, 0.483010,
		-0.403349, -0.286658, 0.868986,
		30.901299, 30.013407, 36.056786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668930, 29.867895, 35.767715>,  <31.183641, 30.214066, 35.448494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668930, 29.867895, 35.767715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.338383, 29.723463, 35.940567>,  <31.140055, 29.636805, 36.044277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.338383, 29.723463, 35.940567>,  <31.668930, 29.867895, 35.767715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338383, 29.723463, 35.940567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336563, -0.931922, -0.135081,
		0.451488, 0.033813, 0.891636,
		-0.826368, -0.361079, 0.432132,
		31.090473, 29.615139, 36.070206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974089, 29.313013, 36.273281>,  <31.668930, 29.867895, 35.767715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974089, 29.313013, 36.273281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.596790, 29.226768, 36.172245>,  <31.370411, 29.175022, 36.111622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.596790, 29.226768, 36.172245>,  <31.974089, 29.313013, 36.273281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596790, 29.226768, 36.172245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266218, -0.945608, -0.186960,
		-0.198540, -0.243593, 0.949339,
		-0.943244, -0.215612, -0.252590,
		31.313818, 29.162085, 36.096466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953928, 28.570154, 36.366215>,  <31.974089, 29.313013, 36.273281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953928, 28.570154, 36.366215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.619373, 28.625633, 36.154095>,  <31.418640, 28.658920, 36.026821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.619373, 28.625633, 36.154095>,  <31.953928, 28.570154, 36.366215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619373, 28.625633, 36.154095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130468, -0.889281, -0.438358,
		-0.532387, -0.435824, 0.725687,
		-0.836386, 0.138697, -0.530302,
		31.368458, 28.667242, 35.995003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625639, 27.998169, 36.449661>,  <31.953928, 28.570154, 36.366215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625639, 27.998169, 36.449661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.460011, 28.156452, 36.121769>,  <31.360634, 28.251423, 35.925034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.460011, 28.156452, 36.121769>,  <31.625639, 27.998169, 36.449661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460011, 28.156452, 36.121769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024759, -0.905126, -0.424423,
		-0.909914, -0.155439, 0.384571,
		-0.414057, 0.395710, -0.819738,
		31.335789, 28.275164, 35.875851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071383, 27.530369, 36.319431>,  <31.625639, 27.998169, 36.449661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071383, 27.530369, 36.319431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.112602, 27.740023, 35.981281>,  <31.137335, 27.865814, 35.778389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.112602, 27.740023, 35.981281>,  <31.071383, 27.530369, 36.319431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112602, 27.740023, 35.981281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257122, -0.806980, -0.531668,
		-0.960869, 0.272153, 0.051608,
		0.103049, 0.524133, -0.845379,
		31.143517, 27.897263, 35.727669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446671, 27.454967, 35.904087>,  <31.071383, 27.530369, 36.319431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446671, 27.454967, 35.904087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.735037, 27.546331, 35.642368>,  <30.908056, 27.601151, 35.485336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.735037, 27.546331, 35.642368>,  <30.446671, 27.454967, 35.904087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735037, 27.546331, 35.642368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232724, -0.809510, -0.539011,
		-0.652779, 0.540853, -0.530432,
		0.720916, 0.228411, -0.654300,
		30.951311, 27.614855, 35.446079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075647, 27.389215, 35.185513>,  <30.446671, 27.454967, 35.904087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075647, 27.389215, 35.185513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469460, 27.359741, 35.121925>,  <30.705748, 27.342056, 35.083775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469460, 27.359741, 35.121925>,  <30.075647, 27.389215, 35.185513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469460, 27.359741, 35.121925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149318, -0.827529, -0.541202,
		-0.091671, 0.556566, -0.825730,
		0.984531, -0.073684, -0.158965,
		30.764818, 27.337637, 35.074234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.395565, 31.714239, 47.092777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.260128, 31.340246, 47.135033>,  <40.178864, 31.115850, 47.160385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.260128, 31.340246, 47.135033>,  <40.395565, 31.714239, 47.092777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260128, 31.340246, 47.135033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413399, -0.046963, 0.909338,
		-0.845254, 0.351571, 0.402422,
		-0.338596, -0.934982, 0.105643,
		40.158550, 31.059752, 47.166725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063927, 31.712704, 47.759182>,  <40.395565, 31.714239, 47.092777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063927, 31.712704, 47.759182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.116997, 31.325506, 47.673962>,  <40.148838, 31.093187, 47.622829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.116997, 31.325506, 47.673962>,  <40.063927, 31.712704, 47.759182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116997, 31.325506, 47.673962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312482, -0.163135, 0.935811,
		-0.940613, -0.190732, 0.280836,
		0.132675, -0.967992, -0.213048,
		40.156799, 31.035109, 47.610046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666763, 31.332602, 48.227127>,  <40.063927, 31.712704, 47.759182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666763, 31.332602, 48.227127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.922493, 31.050739, 48.104019>,  <40.075932, 30.881622, 48.030155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.922493, 31.050739, 48.104019>,  <39.666763, 31.332602, 48.227127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922493, 31.050739, 48.104019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394419, -0.043068, 0.917921,
		-0.660073, -0.708241, 0.250395,
		0.639326, -0.704655, -0.307772,
		40.114292, 30.839342, 48.011688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583679, 30.708467, 48.556568>,  <39.666763, 31.332602, 48.227127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583679, 30.708467, 48.556568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.971020, 30.689266, 48.458591>,  <40.203423, 30.677746, 48.399803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.971020, 30.689266, 48.458591>,  <39.583679, 30.708467, 48.556568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971020, 30.689266, 48.458591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235505, -0.149438, 0.960315,
		-0.082703, -0.987605, -0.133403,
		0.968348, -0.048003, -0.244945,
		40.261524, 30.674866, 48.385109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830040, 30.147102, 48.958054>,  <39.583679, 30.708467, 48.556568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830040, 30.147102, 48.958054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.153622, 30.366137, 48.872501>,  <40.347771, 30.497557, 48.821171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.153622, 30.366137, 48.872501>,  <39.830040, 30.147102, 48.958054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153622, 30.366137, 48.872501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394828, -0.236523, 0.887788,
		0.435552, -0.802625, -0.407538,
		0.808953, 0.547586, -0.213881,
		40.396309, 30.530413, 48.808338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347546, 29.688429, 49.111122>,  <39.830040, 30.147102, 48.958054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347546, 29.688429, 49.111122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.510647, 30.053541, 49.101540>,  <40.608505, 30.272608, 49.095791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.510647, 30.053541, 49.101540>,  <40.347546, 29.688429, 49.111122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510647, 30.053541, 49.101540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522835, -0.211887, 0.825680,
		0.748588, -0.349195, -0.563630,
		0.407749, 0.912779, -0.023956,
		40.632973, 30.327375, 49.094353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046650, 29.528818, 49.054699>,  <40.347546, 29.688429, 49.111122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046650, 29.528818, 49.054699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.019905, 29.902597, 49.194607>,  <41.003857, 30.126865, 49.278553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.019905, 29.902597, 49.194607>,  <41.046650, 29.528818, 49.054699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019905, 29.902597, 49.194607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503068, -0.271161, 0.820606,
		0.861656, 0.230829, -0.451959,
		-0.066866, 0.934446, 0.349770,
		40.999844, 30.182932, 49.299538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668476, 29.672203, 49.208797>,  <41.046650, 29.528818, 49.054699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668476, 29.672203, 49.208797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.472275, 29.945854, 49.424713>,  <41.354553, 30.110044, 49.554264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.472275, 29.945854, 49.424713>,  <41.668476, 29.672203, 49.208797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472275, 29.945854, 49.424713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452638, -0.329295, 0.828663,
		0.744662, 0.650794, -0.148141,
		-0.490507, 0.684128, 0.539788,
		41.325123, 30.151093, 49.586651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168964, 30.053148, 49.576221>,  <41.668476, 29.672203, 49.208797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168964, 30.053148, 49.576221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.813480, 30.105789, 49.751892>,  <41.600189, 30.137373, 49.857296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.813480, 30.105789, 49.751892>,  <42.168964, 30.053148, 49.576221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813480, 30.105789, 49.751892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370544, -0.357928, 0.857079,
		0.269988, 0.924428, 0.269329,
		-0.888709, 0.131603, 0.439178,
		41.546867, 30.145269, 49.883644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281406, 30.447365, 50.265366>,  <42.168964, 30.053148, 49.576221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281406, 30.447365, 50.265366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.936535, 30.245401, 50.281948>,  <41.729614, 30.124224, 50.291897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.936535, 30.245401, 50.281948>,  <42.281406, 30.447365, 50.265366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936535, 30.245401, 50.281948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336352, -0.509309, 0.792131,
		-0.378839, 0.696901, 0.608941,
		-0.862177, -0.504909, 0.041458,
		41.677883, 30.093929, 50.294384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096226, 30.497215, 50.978710>,  <42.281406, 30.447365, 50.265366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096226, 30.497215, 50.978710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.832733, 30.215572, 50.872646>,  <41.674637, 30.046587, 50.809010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.832733, 30.215572, 50.872646>,  <42.096226, 30.497215, 50.978710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832733, 30.215572, 50.872646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037647, -0.382831, 0.923051,
		-0.751439, 0.598056, 0.278689,
		-0.658727, -0.704109, -0.265159,
		41.635117, 30.004339, 50.793098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521923, 30.530735, 51.523823>,  <42.096226, 30.497215, 50.978710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521923, 30.530735, 51.523823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.578205, 30.179119, 51.341618>,  <41.611973, 29.968149, 51.232296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.578205, 30.179119, 51.341618>,  <41.521923, 30.530735, 51.523823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578205, 30.179119, 51.341618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174176, -0.430937, 0.885413,
		-0.974611, -0.203917, 0.092475,
		0.140700, -0.879040, -0.455514,
		41.620415, 29.915407, 51.204964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984604, 30.115263, 51.784847>,  <41.521923, 30.530735, 51.523823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984604, 30.115263, 51.784847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.331692, 29.945238, 51.681789>,  <41.539944, 29.843224, 51.619953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.331692, 29.945238, 51.681789>,  <40.984604, 30.115263, 51.784847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331692, 29.945238, 51.681789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100928, -0.356871, 0.928685,
		-0.486697, -0.831843, -0.266763,
		0.867721, -0.425064, -0.257645,
		41.592007, 29.817719, 51.604496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228424, 30.137161, 52.046314>,  <40.984604, 30.115263, 51.784847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228424, 30.137161, 52.046314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.889130, 30.114054, 52.256901>,  <39.685555, 30.100189, 52.383251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.889130, 30.114054, 52.256901>,  <40.228424, 30.137161, 52.046314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889130, 30.114054, 52.256901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460391, 0.571799, -0.679033,
		-0.261806, -0.818358, -0.511613,
		-0.848232, -0.057767, 0.526466,
		39.634659, 30.096724, 52.414841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659054, 30.149195, 51.604996>,  <40.228424, 30.137161, 52.046314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659054, 30.149195, 51.604996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.466915, 30.263441, 51.936703>,  <39.351631, 30.331989, 52.135727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.466915, 30.263441, 51.936703>,  <39.659054, 30.149195, 51.604996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466915, 30.263441, 51.936703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558425, 0.629493, -0.540278,
		-0.676331, -0.722607, -0.142881,
		-0.480351, 0.285618, 0.829268,
		39.322811, 30.349127, 52.185482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987617, 30.046230, 51.532501>,  <39.659054, 30.149195, 51.604996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987617, 30.046230, 51.532501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.993916, 30.347633, 51.795403>,  <38.997696, 30.528475, 51.953144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.993916, 30.347633, 51.795403>,  <38.987617, 30.046230, 51.532501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993916, 30.347633, 51.795403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512435, 0.570523, -0.641805,
		-0.858582, -0.326691, 0.395108,
		0.015746, 0.753509, 0.657249,
		38.998638, 30.573687, 51.992577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239346, 30.215355, 51.791740>,  <38.987617, 30.046230, 51.532501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239346, 30.215355, 51.791740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451721, 30.543556, 51.876480>,  <38.579147, 30.740477, 51.927326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451721, 30.543556, 51.876480>,  <38.239346, 30.215355, 51.791740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451721, 30.543556, 51.876480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691034, 0.563912, -0.452190,
		-0.490489, 0.093686, 0.866397,
		0.530935, 0.820504, 0.211852,
		38.611000, 30.789707, 51.940037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710987, 30.727798, 51.782986>,  <38.239346, 30.215355, 51.791740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710987, 30.727798, 51.782986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.055752, 30.928782, 51.755695>,  <38.262611, 31.049372, 51.739323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.055752, 30.928782, 51.755695>,  <37.710987, 30.727798, 51.782986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055752, 30.928782, 51.755695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443969, 0.682796, -0.580243,
		-0.244964, 0.530404, 0.811581,
		0.861907, 0.502455, -0.068223,
		38.314323, 31.079517, 51.735229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441490, 31.331480, 51.660851>,  <37.710987, 30.727798, 51.782986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441490, 31.331480, 51.660851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823784, 31.377413, 51.552498>,  <38.053162, 31.404972, 51.487484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823784, 31.377413, 51.552498>,  <37.441490, 31.331480, 51.660851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823784, 31.377413, 51.552498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288585, 0.545192, -0.787073,
		0.057305, 0.830409, 0.554199,
		0.955738, 0.114830, -0.270886,
		38.110504, 31.411861, 51.471233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583645, 32.058380, 51.661617>,  <37.441490, 31.331480, 51.660851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583645, 32.058380, 51.661617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.853485, 31.881453, 51.425220>,  <38.015388, 31.775295, 51.283382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.853485, 31.881453, 51.425220>,  <37.583645, 32.058380, 51.661617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853485, 31.881453, 51.425220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142066, 0.707837, -0.691942,
		0.724385, 0.550743, 0.414667,
		0.674599, -0.442322, -0.590989,
		38.055866, 31.748756, 51.247925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138348, 32.568573, 51.466873>,  <37.583645, 32.058380, 51.661617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138348, 32.568573, 51.466873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127304, 32.287647, 51.182343>,  <38.120678, 32.119091, 51.011623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127304, 32.287647, 51.182343>,  <38.138348, 32.568573, 51.466873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127304, 32.287647, 51.182343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199036, 0.701212, -0.684607,
		0.979603, 0.122678, -0.159147,
		-0.027609, -0.702319, -0.711327,
		38.119022, 32.076950, 50.968945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430775, 32.858570, 50.918697>,  <38.138348, 32.568573, 51.466873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430775, 32.858570, 50.918697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256279, 32.534924, 50.761208>,  <38.151581, 32.340736, 50.666714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256279, 32.534924, 50.761208>,  <38.430775, 32.858570, 50.918697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256279, 32.534924, 50.761208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156159, 0.498991, -0.852421,
		0.886176, -0.310377, -0.344032,
		-0.436241, -0.809119, -0.393726,
		38.125408, 32.292187, 50.643089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632828, 32.876690, 50.244690>,  <38.430775, 32.858570, 50.918697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632828, 32.876690, 50.244690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.301121, 32.653145, 50.244862>,  <38.102097, 32.519020, 50.244965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.301121, 32.653145, 50.244862>,  <38.632828, 32.876690, 50.244690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301121, 32.653145, 50.244862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242570, 0.359247, -0.901167,
		0.503471, -0.747408, -0.433472,
		-0.829263, -0.558858, 0.000428,
		38.052341, 32.485489, 50.244991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665932, 32.682606, 49.651199>,  <38.632828, 32.876690, 50.244690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665932, 32.682606, 49.651199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286617, 32.586189, 49.733807>,  <38.059029, 32.528339, 49.783371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286617, 32.586189, 49.733807>,  <38.665932, 32.682606, 49.651199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286617, 32.586189, 49.733807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267304, 0.255560, -0.929106,
		0.171171, -0.936264, -0.306775,
		-0.948287, -0.241038, 0.206523,
		38.002132, 32.513878, 49.795765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382622, 32.346535, 49.004101>,  <38.665932, 32.682606, 49.651199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382622, 32.346535, 49.004101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.050121, 32.456276, 49.197491>,  <37.850620, 32.522121, 49.313526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.050121, 32.456276, 49.197491>,  <38.382622, 32.346535, 49.004101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050121, 32.456276, 49.197491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428364, 0.238179, -0.871651,
		-0.354294, -0.931666, -0.080464,
		-0.831252, 0.274353, 0.483478,
		37.800747, 32.538582, 49.342533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807877, 32.168934, 48.507935>,  <38.382622, 32.346535, 49.004101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807877, 32.168934, 48.507935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645439, 32.427284, 48.766525>,  <37.547977, 32.582294, 48.921680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645439, 32.427284, 48.766525>,  <37.807877, 32.168934, 48.507935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645439, 32.427284, 48.766525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670768, 0.269771, -0.690865,
		-0.620613, -0.714192, 0.323680,
		-0.406091, 0.645874, 0.646481,
		37.523613, 32.621048, 48.960468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064667, 31.965645, 48.576797>,  <37.807877, 32.168934, 48.507935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064667, 31.965645, 48.576797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118809, 32.349941, 48.673672>,  <37.151295, 32.580521, 48.731796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118809, 32.349941, 48.673672>,  <37.064667, 31.965645, 48.576797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118809, 32.349941, 48.673672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634221, 0.271807, -0.723799,
		-0.761212, -0.055632, 0.646113,
		0.135352, 0.960743, 0.242186,
		37.159412, 32.638165, 48.746326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445278, 32.181587, 48.375530>,  <37.064667, 31.965645, 48.576797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445278, 32.181587, 48.375530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686268, 32.498871, 48.410954>,  <36.830860, 32.689243, 48.432209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686268, 32.498871, 48.410954>,  <36.445278, 32.181587, 48.375530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686268, 32.498871, 48.410954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491368, 0.456056, -0.742004,
		-0.628956, 0.403520, 0.664519,
		0.602472, 0.793211, 0.088563,
		36.867008, 32.736835, 48.437523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941399, 31.748501, 48.679863>,  <36.445278, 32.181587, 48.375530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941399, 31.748501, 48.679863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549297, 31.696051, 48.620644>,  <35.314037, 31.664581, 48.585114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549297, 31.696051, 48.620644>,  <35.941399, 31.748501, 48.679863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549297, 31.696051, 48.620644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085548, -0.393780, 0.915215,
		-0.178304, 0.909804, 0.374785,
		-0.980250, -0.131124, -0.148044,
		35.255222, 31.656713, 48.576229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596302, 32.028431, 49.272896>,  <35.941399, 31.748501, 48.679863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596302, 32.028431, 49.272896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386784, 31.733496, 49.102261>,  <35.261074, 31.556536, 48.999882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386784, 31.733496, 49.102261>,  <35.596302, 32.028431, 49.272896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386784, 31.733496, 49.102261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189618, -0.387293, 0.902246,
		-0.830470, 0.553483, 0.063052,
		-0.523797, -0.737333, -0.426586,
		35.229645, 31.512295, 48.974285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932892, 31.978680, 49.605278>,  <35.596302, 32.028431, 49.272896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932892, 31.978680, 49.605278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.986282, 31.612312, 49.453869>,  <35.018314, 31.392492, 49.363022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.986282, 31.612312, 49.453869>,  <34.932892, 31.978680, 49.605278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986282, 31.612312, 49.453869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218216, -0.399730, 0.890279,
		-0.966730, -0.036227, -0.253221,
		0.133472, -0.915917, -0.378526,
		35.026325, 31.337538, 49.340313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484741, 31.633104, 50.018204>,  <34.932892, 31.978680, 49.605278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484741, 31.633104, 50.018204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734207, 31.378059, 49.837322>,  <34.883888, 31.225033, 49.728794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734207, 31.378059, 49.837322>,  <34.484741, 31.633104, 50.018204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734207, 31.378059, 49.837322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022610, -0.592973, 0.804905,
		-0.781363, -0.491768, -0.384234,
		0.623667, -0.637611, -0.452208,
		34.921307, 31.186775, 49.701660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134636, 31.111359, 50.120739>,  <34.484741, 31.633104, 50.018204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134636, 31.111359, 50.120739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512939, 31.012732, 50.036125>,  <34.739922, 30.953556, 49.985355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512939, 31.012732, 50.036125>,  <34.134636, 31.111359, 50.120739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512939, 31.012732, 50.036125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093001, -0.418408, 0.903485,
		-0.311276, -0.874152, -0.372782,
		0.945758, -0.246565, -0.211538,
		34.796665, 30.938763, 49.972664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204906, 30.411846, 50.392845>,  <34.134636, 31.111359, 50.120739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204906, 30.411846, 50.392845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577499, 30.546471, 50.337612>,  <34.801056, 30.627245, 50.304470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577499, 30.546471, 50.337612>,  <34.204906, 30.411846, 50.392845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577499, 30.546471, 50.337612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289232, -0.454931, 0.842248,
		0.220648, -0.824478, -0.521104,
		0.931482, 0.336560, -0.138086,
		34.856945, 30.647438, 50.296185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492413, 29.934956, 50.661648>,  <34.204906, 30.411846, 50.392845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492413, 29.934956, 50.661648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772354, 30.220663, 50.659943>,  <34.940319, 30.392088, 50.658920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772354, 30.220663, 50.659943>,  <34.492413, 29.934956, 50.661648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772354, 30.220663, 50.659943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436063, -0.422525, 0.794557,
		0.565729, -0.557934, -0.607174,
		0.699857, 0.714270, -0.004260,
		34.982311, 30.434944, 50.658665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850624, 29.628979, 50.043564>,  <34.492413, 29.934956, 50.661648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850624, 29.628979, 50.043564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778534, 29.241507, 49.975235>,  <34.735279, 29.009024, 49.934238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778534, 29.241507, 49.975235>,  <34.850624, 29.628979, 50.043564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778534, 29.241507, 49.975235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569168, 0.244337, -0.785078,
		0.802226, -0.044266, -0.595377,
		-0.180225, -0.968680, -0.170818,
		34.724468, 28.950903, 49.923988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971909, 29.516972, 49.292572>,  <34.850624, 29.628979, 50.043564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971909, 29.516972, 49.292572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756725, 29.194195, 49.390099>,  <34.627617, 29.000528, 49.448616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756725, 29.194195, 49.390099>,  <34.971909, 29.516972, 49.292572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756725, 29.194195, 49.390099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537894, 0.105891, -0.836335,
		0.649056, -0.581061, -0.491014,
		-0.537956, -0.806942, 0.243820,
		34.595337, 28.952112, 49.463245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054272, 29.218943, 48.726749>,  <34.971909, 29.516972, 49.292572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054272, 29.218943, 48.726749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735821, 29.065952, 48.914322>,  <34.544750, 28.974157, 49.026863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735821, 29.065952, 48.914322>,  <35.054272, 29.218943, 48.726749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735821, 29.065952, 48.914322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559414, 0.169711, -0.811329,
		0.230738, -0.908243, -0.349078,
		-0.796125, -0.382483, 0.468925,
		34.496983, 28.951210, 49.055000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817814, 28.630739, 48.305229>,  <35.054272, 29.218943, 48.726749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817814, 28.630739, 48.305229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515659, 28.726309, 48.549294>,  <34.334366, 28.783651, 48.695732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515659, 28.726309, 48.549294>,  <34.817814, 28.630739, 48.305229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515659, 28.726309, 48.549294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632578, -0.022930, -0.774157,
		-0.170974, -0.970767, 0.168460,
		-0.755389, 0.238924, 0.610165,
		34.289043, 28.797985, 48.732342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259243, 28.162304, 48.128403>,  <34.817814, 28.630739, 48.305229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259243, 28.162304, 48.128403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115242, 28.496960, 48.293533>,  <34.028839, 28.697754, 48.392612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115242, 28.496960, 48.293533>,  <34.259243, 28.162304, 48.128403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115242, 28.496960, 48.293533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656260, 0.087421, -0.749453,
		-0.663114, -0.540730, 0.517583,
		-0.360004, 0.836642, 0.412829,
		34.007240, 28.747952, 48.417381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587296, 28.029108, 48.043774>,  <34.259243, 28.162304, 48.128403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587296, 28.029108, 48.043774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623764, 28.424572, 48.091499>,  <33.645645, 28.661850, 48.120136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623764, 28.424572, 48.091499>,  <33.587296, 28.029108, 48.043774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623764, 28.424572, 48.091499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510447, 0.149271, -0.846854,
		-0.855062, 0.016304, 0.518269,
		0.091170, 0.988662, 0.119314,
		33.651115, 28.721170, 48.127293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979870, 28.330719, 47.754585>,  <33.587296, 28.029108, 48.043774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979870, 28.330719, 47.754585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231823, 28.641079, 47.768593>,  <33.382996, 28.827295, 47.776997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231823, 28.641079, 47.768593>,  <32.979870, 28.330719, 47.754585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231823, 28.641079, 47.768593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168946, 0.180885, -0.968885,
		-0.758095, 0.604365, 0.245021,
		0.629880, 0.775902, 0.035023,
		33.420788, 28.873850, 47.779099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.574169, 26.124250, 49.989735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.630199, 26.501890, 50.109104>,  <41.663818, 26.728474, 50.180725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.630199, 26.501890, 50.109104>,  <41.574169, 26.124250, 49.989735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630199, 26.501890, 50.109104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578205, 0.322663, -0.749378,
		-0.803777, -0.067583, 0.591079,
		0.140074, 0.944098, 0.298426,
		41.672222, 26.785120, 50.198631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988907, 26.447657, 50.002586>,  <41.574169, 26.124250, 49.989735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988907, 26.447657, 50.002586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.224300, 26.770958, 49.994518>,  <41.365536, 26.964939, 49.989677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.224300, 26.770958, 49.994518>,  <40.988907, 26.447657, 50.002586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224300, 26.770958, 49.994518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602087, 0.421451, -0.678136,
		-0.539604, 0.411222, 0.734659,
		0.588488, 0.808254, -0.020175,
		41.400848, 27.013433, 49.988464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568054, 27.026138, 50.066357>,  <40.988907, 26.447657, 50.002586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568054, 27.026138, 50.066357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.901199, 27.150623, 49.883282>,  <41.101086, 27.225315, 49.773438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.901199, 27.150623, 49.883282>,  <40.568054, 27.026138, 50.066357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901199, 27.150623, 49.883282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552672, 0.512162, -0.657453,
		0.029802, 0.800522, 0.598562,
		0.832866, 0.311215, -0.457689,
		41.151058, 27.243988, 49.745975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377625, 27.773516, 49.812275>,  <40.568054, 27.026138, 50.066357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377625, 27.773516, 49.812275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.689888, 27.659565, 49.589775>,  <40.877247, 27.591194, 49.456276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.689888, 27.659565, 49.589775>,  <40.377625, 27.773516, 49.812275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689888, 27.659565, 49.589775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377371, 0.494607, -0.782915,
		0.498161, 0.821103, 0.278615,
		0.780658, -0.284876, -0.556254,
		40.924084, 27.574102, 49.422897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825516, 28.445719, 49.485012>,  <40.377625, 27.773516, 49.812275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825516, 28.445719, 49.485012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.869175, 28.111217, 49.270065>,  <40.895370, 27.910517, 49.141098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.869175, 28.111217, 49.270065>,  <40.825516, 28.445719, 49.485012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869175, 28.111217, 49.270065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219764, 0.506919, -0.833509,
		0.969428, 0.209071, -0.128448,
		0.109150, -0.836255, -0.537368,
		40.901920, 27.860340, 49.108856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852440, 28.775518, 48.805923>,  <40.825516, 28.445719, 49.485012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852440, 28.775518, 48.805923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.839699, 28.384314, 48.723484>,  <40.832054, 28.149591, 48.674019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.839699, 28.384314, 48.723484>,  <40.852440, 28.775518, 48.805923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839699, 28.384314, 48.723484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322176, 0.205249, -0.924162,
		0.946144, 0.036962, -0.321630,
		-0.031855, -0.978012, -0.206103,
		40.830143, 28.090910, 48.661652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112400, 28.615141, 48.176937>,  <40.852440, 28.775518, 48.805923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112400, 28.615141, 48.176937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.884296, 28.288528, 48.212906>,  <40.747437, 28.092562, 48.234489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.884296, 28.288528, 48.212906>,  <41.112400, 28.615141, 48.176937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884296, 28.288528, 48.212906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265743, 0.079785, -0.960737,
		0.777296, -0.571763, -0.262485,
		-0.570256, -0.816530, 0.089926,
		40.713219, 28.043570, 48.239883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307404, 28.256716, 47.680054>,  <41.112400, 28.615141, 48.176937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307404, 28.256716, 47.680054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.949677, 28.094255, 47.755138>,  <40.735039, 27.996778, 47.800190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.949677, 28.094255, 47.755138>,  <41.307404, 28.256716, 47.680054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949677, 28.094255, 47.755138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184774, -0.046831, -0.981665,
		0.407496, -0.912605, -0.033165,
		-0.894319, -0.406152, 0.187709,
		40.681381, 27.972410, 47.811451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183346, 27.645401, 47.300549>,  <41.307404, 28.256716, 47.680054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183346, 27.645401, 47.300549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.806072, 27.734760, 47.398930>,  <40.579708, 27.788376, 47.457958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.806072, 27.734760, 47.398930>,  <41.183346, 27.645401, 47.300549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806072, 27.734760, 47.398930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288990, -0.186296, -0.939030,
		-0.163939, -0.956763, 0.240267,
		-0.943190, 0.223379, 0.245954,
		40.523117, 27.801779, 47.472713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789906, 27.203419, 46.931332>,  <41.183346, 27.645401, 47.300549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789906, 27.203419, 46.931332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.498672, 27.459511, 47.029308>,  <40.323933, 27.613165, 47.088097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.498672, 27.459511, 47.029308>,  <40.789906, 27.203419, 46.931332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498672, 27.459511, 47.029308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344122, -0.032334, -0.938368,
		-0.592851, -0.767503, 0.243858,
		-0.728086, 0.640229, 0.244945,
		40.280247, 27.651579, 47.102791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141777, 26.927219, 46.583740>,  <40.789906, 27.203419, 46.931332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141777, 26.927219, 46.583740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.067024, 27.309450, 46.674911>,  <40.022171, 27.538788, 46.729614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.067024, 27.309450, 46.674911>,  <40.141777, 26.927219, 46.583740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067024, 27.309450, 46.674911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537111, 0.094876, -0.838159,
		-0.822549, -0.279056, 0.495520,
		-0.186880, 0.955576, 0.227924,
		40.010960, 27.596123, 46.743290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385792, 27.068653, 46.554516>,  <40.141777, 26.927219, 46.583740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385792, 27.068653, 46.554516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.608719, 27.395481, 46.495472>,  <39.742477, 27.591578, 46.460045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.608719, 27.395481, 46.495472>,  <39.385792, 27.068653, 46.554516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608719, 27.395481, 46.495472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343074, 0.064719, -0.937076,
		-0.756104, 0.572894, 0.316385,
		0.557321, 0.817071, -0.147610,
		39.775917, 27.640602, 46.451187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585300, 27.249750, 46.635521>,  <39.385792, 27.068653, 46.554516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585300, 27.249750, 46.635521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.190483, 27.185688, 46.631496>,  <37.953594, 27.147251, 46.629082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.190483, 27.185688, 46.631496>,  <38.585300, 27.249750, 46.635521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190483, 27.185688, 46.631496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027206, -0.228810, 0.973091,
		-0.158150, 0.960206, 0.230202,
		-0.987040, -0.160157, -0.010063,
		37.894371, 27.137640, 46.628479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219322, 27.658401, 47.074131>,  <38.585300, 27.249750, 46.635521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219322, 27.658401, 47.074131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.964882, 27.349888, 47.065220>,  <37.812218, 27.164780, 47.059872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.964882, 27.349888, 47.065220>,  <38.219322, 27.658401, 47.074131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964882, 27.349888, 47.065220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077556, 0.035180, 0.996367,
		-0.767699, 0.635518, -0.082196,
		-0.636101, -0.771284, -0.022280,
		37.774052, 27.118502, 47.058537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754089, 27.795040, 47.640163>,  <38.219322, 27.658401, 47.074131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754089, 27.795040, 47.640163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.686382, 27.411430, 47.549282>,  <37.645760, 27.181265, 47.494751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.686382, 27.411430, 47.549282>,  <37.754089, 27.795040, 47.640163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686382, 27.411430, 47.549282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025144, -0.234658, 0.971753,
		-0.985250, 0.158770, 0.063833,
		-0.169265, -0.959024, -0.227205,
		37.635605, 27.123724, 47.481121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259220, 27.556566, 48.110744>,  <37.754089, 27.795040, 47.640163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259220, 27.556566, 48.110744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.446651, 27.235367, 47.963428>,  <37.559109, 27.042648, 47.875038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.446651, 27.235367, 47.963428>,  <37.259220, 27.556566, 48.110744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446651, 27.235367, 47.963428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089621, -0.371527, 0.924087,
		-0.878866, -0.466010, -0.102122,
		0.468574, -0.802996, -0.368286,
		37.587223, 26.994469, 47.852943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869705, 26.928249, 48.283840>,  <37.259220, 27.556566, 48.110744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869705, 26.928249, 48.283840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.257614, 26.853401, 48.221184>,  <37.490360, 26.808493, 48.183590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.257614, 26.853401, 48.221184>,  <36.869705, 26.928249, 48.283840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257614, 26.853401, 48.221184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070448, -0.399881, 0.913856,
		-0.233639, -0.897263, -0.374609,
		0.969768, -0.187122, -0.156638,
		37.548546, 26.797264, 48.174191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058678, 26.166277, 48.306808>,  <36.869705, 26.928249, 48.283840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058678, 26.166277, 48.306808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.381721, 26.383600, 48.398533>,  <37.575546, 26.513994, 48.453568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.381721, 26.383600, 48.398533>,  <37.058678, 26.166277, 48.306808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381721, 26.383600, 48.398533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044081, -0.443374, 0.895252,
		0.588068, -0.712906, -0.382022,
		0.807609, 0.543309, 0.229309,
		37.624004, 26.546593, 48.467327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344646, 25.778221, 48.788860>,  <37.058678, 26.166277, 48.306808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344646, 25.778221, 48.788860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.620178, 26.065504, 48.828243>,  <37.785500, 26.237873, 48.851871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.620178, 26.065504, 48.828243>,  <37.344646, 25.778221, 48.788860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620178, 26.065504, 48.828243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118880, -0.245888, 0.961980,
		0.715108, -0.650938, -0.254756,
		0.688831, 0.718205, 0.098453,
		37.826828, 26.280966, 48.857780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970749, 25.524691, 49.095844>,  <37.344646, 25.778221, 48.788860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970749, 25.524691, 49.095844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.972313, 25.915909, 49.179192>,  <37.973251, 26.150639, 49.229198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.972313, 25.915909, 49.179192>,  <37.970749, 25.524691, 49.095844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972313, 25.915909, 49.179192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158797, -0.206329, 0.965511,
		0.987304, 0.029312, -0.156118,
		0.003911, 0.978044, 0.208364,
		37.973488, 26.209322, 49.241699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527279, 25.589102, 49.524315>,  <37.970749, 25.524691, 49.095844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527279, 25.589102, 49.524315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.310349, 25.922100, 49.569626>,  <38.180191, 26.121899, 49.596813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.310349, 25.922100, 49.569626>,  <38.527279, 25.589102, 49.524315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310349, 25.922100, 49.569626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092011, -0.075168, 0.992917,
		0.835116, 0.548905, -0.035834,
		-0.542324, 0.832498, 0.113279,
		38.147652, 26.171850, 49.603611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834068, 25.870485, 50.121918>,  <38.527279, 25.589102, 49.524315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834068, 25.870485, 50.121918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.486420, 26.067438, 50.103188>,  <38.277832, 26.185610, 50.091949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.486420, 26.067438, 50.103188>,  <38.834068, 25.870485, 50.121918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486420, 26.067438, 50.103188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038248, 0.027472, 0.998891,
		0.493122, 0.869946, -0.005044,
		-0.869119, 0.492382, -0.046821,
		38.225685, 26.215153, 50.089142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917400, 26.381733, 50.647316>,  <38.834068, 25.870485, 50.121918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917400, 26.381733, 50.647316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.518875, 26.374592, 50.613739>,  <38.279762, 26.370306, 50.593594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.518875, 26.374592, 50.613739>,  <38.917400, 26.381733, 50.647316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518875, 26.374592, 50.613739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084309, 0.020574, 0.996227,
		-0.016059, 0.999629, -0.022004,
		-0.996310, -0.017854, -0.083947,
		38.219982, 26.369236, 50.588554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674488, 26.872900, 51.093544>,  <38.917400, 26.381733, 50.647316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674488, 26.872900, 51.093544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.367798, 26.624313, 51.029152>,  <38.183784, 26.475161, 50.990517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.367798, 26.624313, 51.029152>,  <38.674488, 26.872900, 51.093544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367798, 26.624313, 51.029152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220187, 0.019023, 0.975272,
		-0.603036, 0.783210, -0.151424,
		-0.766724, -0.621466, -0.160981,
		38.137779, 26.437874, 50.980858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133789, 27.192049, 51.457123>,  <38.674488, 26.872900, 51.093544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133789, 27.192049, 51.457123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.014919, 26.812405, 51.415421>,  <37.943596, 26.584618, 51.390400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.014919, 26.812405, 51.415421>,  <38.133789, 27.192049, 51.457123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014919, 26.812405, 51.415421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229677, -0.034927, 0.972640,
		-0.926786, 0.312994, -0.207610,
		-0.297179, -0.949113, -0.104257,
		37.925766, 26.527670, 51.384144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505043, 27.160660, 51.680901>,  <38.133789, 27.192049, 51.457123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505043, 27.160660, 51.680901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.632778, 26.783604, 51.719788>,  <37.709419, 26.557369, 51.743118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.632778, 26.783604, 51.719788>,  <37.505043, 27.160660, 51.680901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632778, 26.783604, 51.719788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287392, 0.001420, 0.957812,
		-0.903012, -0.333801, -0.270455,
		0.319334, -0.942643, 0.097214,
		37.728577, 26.500811, 51.748951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015743, 26.784044, 52.049988>,  <37.505043, 27.160660, 51.680901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015743, 26.784044, 52.049988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.361942, 26.590816, 52.102982>,  <37.569664, 26.474880, 52.134777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.361942, 26.590816, 52.102982>,  <37.015743, 26.784044, 52.049988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361942, 26.590816, 52.102982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117546, 0.061238, 0.991177,
		-0.486918, -0.873439, -0.003781,
		0.865501, -0.483067, 0.132488,
		37.621593, 26.445896, 52.142727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560524, 27.279507, 51.601936>,  <37.015743, 26.784044, 52.049988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560524, 27.279507, 51.601936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.421574, 27.638844, 51.709499>,  <36.338203, 27.854446, 51.774036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.421574, 27.638844, 51.709499>,  <36.560524, 27.279507, 51.601936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421574, 27.638844, 51.709499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734559, -0.082433, -0.673519,
		-0.582885, -0.431492, 0.688521,
		-0.347375, 0.898343, 0.268907,
		36.317360, 27.908346, 51.790173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834209, 27.216930, 51.422665>,  <36.560524, 27.279507, 51.601936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834209, 27.216930, 51.422665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.877308, 27.614187, 51.440807>,  <35.903168, 27.852541, 51.451694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.877308, 27.614187, 51.440807>,  <35.834209, 27.216930, 51.422665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877308, 27.614187, 51.440807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824443, 0.114756, -0.554189,
		-0.555594, 0.022318, 0.831154,
		0.107748, 0.993143, 0.045358,
		35.909634, 27.912130, 51.454414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189449, 27.521727, 51.527794>,  <35.834209, 27.216930, 51.422665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189449, 27.521727, 51.527794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410103, 27.815344, 51.369362>,  <35.542496, 27.991514, 51.274303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410103, 27.815344, 51.369362>,  <35.189449, 27.521727, 51.527794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410103, 27.815344, 51.369362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792447, 0.313081, -0.523457,
		-0.260236, 0.602629, 0.754397,
		0.551638, 0.734042, -0.396077,
		35.575596, 28.035557, 51.250538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731392, 27.954405, 51.332066>,  <35.189449, 27.521727, 51.527794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731392, 27.954405, 51.332066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.028851, 28.151346, 51.151146>,  <35.207325, 28.269512, 51.042595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.028851, 28.151346, 51.151146>,  <34.731392, 27.954405, 51.332066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028851, 28.151346, 51.151146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668506, 0.538104, -0.513365,
		-0.009374, 0.684128, 0.729302,
		0.743648, 0.492355, -0.452299,
		35.251945, 28.299053, 51.015457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438934, 28.583197, 51.261906>,  <34.731392, 27.954405, 51.332066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438934, 28.583197, 51.261906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722794, 28.574121, 50.980228>,  <34.893108, 28.568676, 50.811222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722794, 28.574121, 50.980228>,  <34.438934, 28.583197, 51.261906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722794, 28.574121, 50.980228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606414, 0.489181, -0.626868,
		0.358701, 0.871887, 0.333385,
		0.709644, -0.022689, -0.704195,
		34.935688, 28.567314, 50.768970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376125, 29.278070, 50.965336>,  <34.438934, 28.583197, 51.261906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376125, 29.278070, 50.965336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541111, 29.019047, 50.709042>,  <34.640102, 28.863632, 50.555264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541111, 29.019047, 50.709042>,  <34.376125, 29.278070, 50.965336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541111, 29.019047, 50.709042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518805, 0.411169, -0.749520,
		0.748810, 0.641566, -0.166365,
		0.412462, -0.647559, -0.640735,
		34.664848, 28.824780, 50.516823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989925, 29.582222, 51.075893>,  <34.376125, 29.278070, 50.965336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989925, 29.582222, 51.075893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.131977, 29.951265, 51.015648>,  <35.217209, 30.172691, 50.979500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.131977, 29.951265, 51.015648>,  <34.989925, 29.582222, 51.075893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131977, 29.951265, 51.015648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515156, -0.058705, 0.855084,
		0.780064, -0.381250, -0.496134,
		0.355126, 0.922606, -0.150609,
		35.238514, 30.228046, 50.970467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774494, 29.669254, 50.980774>,  <34.989925, 29.582222, 51.075893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774494, 29.669254, 50.980774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.678066, 30.023336, 51.139919>,  <35.620209, 30.235786, 51.235405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.678066, 30.023336, 51.139919>,  <35.774494, 29.669254, 50.980774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678066, 30.023336, 51.139919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639943, -0.163220, 0.750888,
		0.729631, 0.435624, -0.527135,
		-0.241065, 0.885207, 0.397865,
		35.605747, 30.288898, 51.259277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441654, 29.974977, 51.344952>,  <35.774494, 29.669254, 50.980774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441654, 29.974977, 51.344952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.166828, 30.207722, 51.519024>,  <36.001934, 30.347368, 51.623466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.166828, 30.207722, 51.519024>,  <36.441654, 29.974977, 51.344952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166828, 30.207722, 51.519024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445893, -0.135250, 0.884809,
		0.573695, 0.801963, -0.166523,
		-0.687061, 0.581862, 0.435182,
		35.960709, 30.382280, 51.649578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787792, 30.543371, 51.656212>,  <36.441654, 29.974977, 51.344952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787792, 30.543371, 51.656212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441174, 30.468863, 51.841423>,  <36.233204, 30.424156, 51.952549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441174, 30.468863, 51.841423>,  <36.787792, 30.543371, 51.656212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441174, 30.468863, 51.841423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480909, -0.063466, 0.874471,
		-0.133504, 0.980446, 0.144577,
		-0.866547, -0.186274, 0.463032,
		36.181210, 30.412981, 51.980331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754559, 31.039093, 52.146198>,  <36.787792, 30.543371, 51.656212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754559, 31.039093, 52.146198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525753, 30.725582, 52.242947>,  <36.388470, 30.537476, 52.300995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525753, 30.725582, 52.242947>,  <36.754559, 31.039093, 52.146198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525753, 30.725582, 52.242947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406317, -0.014601, 0.913616,
		-0.712539, 0.620871, 0.326814,
		-0.572010, -0.783776, 0.241867,
		36.354149, 30.490450, 52.315506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632019, 31.228138, 52.878345>,  <36.754559, 31.039093, 52.146198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632019, 31.228138, 52.878345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.513668, 30.846575, 52.858276>,  <36.442657, 30.617638, 52.846233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.513668, 30.846575, 52.858276>,  <36.632019, 31.228138, 52.878345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513668, 30.846575, 52.858276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398944, -0.171126, 0.900866,
		-0.867928, 0.246531, 0.431188,
		-0.295878, -0.953907, -0.050173,
		36.424904, 30.560402, 52.843224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401863, 31.078596, 53.545998>,  <36.632019, 31.228138, 52.878345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401863, 31.078596, 53.545998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.474117, 30.726381, 53.370716>,  <36.517471, 30.515053, 53.265545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.474117, 30.726381, 53.370716>,  <36.401863, 31.078596, 53.545998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474117, 30.726381, 53.370716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460348, -0.318028, 0.828817,
		-0.869166, -0.351444, 0.347905,
		0.180639, -0.880537, -0.438206,
		36.528309, 30.462221, 53.239254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248100, 30.619844, 54.035316>,  <36.401863, 31.078596, 53.545998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248100, 30.619844, 54.035316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.455421, 30.377901, 53.793488>,  <36.579815, 30.232735, 53.648392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.455421, 30.377901, 53.793488>,  <36.248100, 30.619844, 54.035316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455421, 30.377901, 53.793488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384228, -0.466870, 0.796493,
		-0.764021, -0.645120, -0.009578,
		0.518305, -0.604858, -0.604571,
		36.610912, 30.196444, 53.612118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079441, 30.074730, 54.262989>,  <36.248100, 30.619844, 54.035316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079441, 30.074730, 54.262989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.419147, 30.009962, 54.061981>,  <36.622971, 29.971102, 53.941376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.419147, 30.009962, 54.061981>,  <36.079441, 30.074730, 54.262989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419147, 30.009962, 54.061981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379550, -0.474375, 0.794298,
		-0.366995, -0.865304, -0.341415,
		0.849268, -0.161920, -0.502519,
		36.673927, 29.961386, 53.911224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.890671, 33.622551, 38.211620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202255, 33.768822, 38.415386>,  <35.389206, 33.856586, 38.537643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202255, 33.768822, 38.415386>,  <34.890671, 33.622551, 38.211620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202255, 33.768822, 38.415386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377544, -0.375128, 0.846605,
		0.500682, -0.851796, -0.154149,
		0.778960, 0.365682, 0.509410,
		35.435944, 33.878525, 38.568211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989128, 33.110893, 38.627819>,  <34.890671, 33.622551, 38.211620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989128, 33.110893, 38.627819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175697, 33.426025, 38.788700>,  <35.287640, 33.615105, 38.885231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175697, 33.426025, 38.788700>,  <34.989128, 33.110893, 38.627819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175697, 33.426025, 38.788700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365389, -0.242491, 0.898715,
		0.805571, -0.566139, 0.174764,
		0.466419, 0.787835, 0.402204,
		35.315624, 33.662376, 38.909363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308765, 32.866787, 39.201733>,  <34.989128, 33.110893, 38.627819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308765, 32.866787, 39.201733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277916, 33.255138, 39.292454>,  <35.259407, 33.488152, 39.346886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277916, 33.255138, 39.292454>,  <35.308765, 32.866787, 39.201733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277916, 33.255138, 39.292454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160053, -0.236586, 0.958337,
		0.984091, 0.037610, 0.173639,
		-0.077123, 0.970882, 0.226803,
		35.254780, 33.546402, 39.360497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718498, 33.005653, 39.840405>,  <35.308765, 32.866787, 39.201733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718498, 33.005653, 39.840405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473583, 33.321384, 39.822189>,  <35.326633, 33.510822, 39.811260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473583, 33.321384, 39.822189>,  <35.718498, 33.005653, 39.840405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473583, 33.321384, 39.822189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215046, -0.110829, 0.970295,
		0.760831, 0.603890, 0.237600,
		-0.612284, 0.789325, -0.045542,
		35.289898, 33.558182, 39.808525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009918, 33.412155, 40.316975>,  <35.718498, 33.005653, 39.840405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009918, 33.412155, 40.316975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635452, 33.544918, 40.270618>,  <35.410774, 33.624577, 40.242805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635452, 33.544918, 40.270618>,  <36.009918, 33.412155, 40.316975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635452, 33.544918, 40.270618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184939, -0.184593, 0.965258,
		0.298983, 0.925075, 0.234192,
		-0.936166, 0.331907, -0.115893,
		35.354603, 33.644489, 40.235851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903301, 33.802338, 40.948498>,  <36.009918, 33.412155, 40.316975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903301, 33.802338, 40.948498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530083, 33.753693, 40.813065>,  <35.306152, 33.724506, 40.731804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530083, 33.753693, 40.813065>,  <35.903301, 33.802338, 40.948498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530083, 33.753693, 40.813065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319216, -0.154177, 0.935057,
		-0.165913, 0.980531, 0.105035,
		-0.933046, -0.121609, -0.338581,
		35.250168, 33.717209, 40.711491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442032, 34.205383, 41.372814>,  <35.903301, 33.802338, 40.948498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442032, 34.205383, 41.372814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211182, 33.921448, 41.211296>,  <35.072670, 33.751087, 41.114384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211182, 33.921448, 41.211296>,  <35.442032, 34.205383, 41.372814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211182, 33.921448, 41.211296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337137, -0.243264, 0.909484,
		-0.743817, 0.661022, -0.098919,
		-0.577126, -0.709839, -0.403799,
		35.038044, 33.708496, 41.090157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795795, 34.421940, 41.523155>,  <35.442032, 34.205383, 41.372814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795795, 34.421940, 41.523155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769939, 34.027088, 41.464634>,  <34.754425, 33.790176, 41.429520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769939, 34.027088, 41.464634>,  <34.795795, 34.421940, 41.523155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769939, 34.027088, 41.464634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460722, -0.100534, 0.881832,
		-0.885188, 0.124405, -0.448292,
		-0.064636, -0.987126, -0.146307,
		34.750549, 33.730949, 41.420742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192280, 34.180172, 41.892113>,  <34.795795, 34.421940, 41.523155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192280, 34.180172, 41.892113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385944, 33.834480, 41.837425>,  <34.502144, 33.627064, 41.804615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385944, 33.834480, 41.837425>,  <34.192280, 34.180172, 41.892113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385944, 33.834480, 41.837425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276065, -0.299151, 0.913399,
		-0.830287, -0.404490, -0.383421,
		0.484161, -0.864232, -0.136715,
		34.531193, 33.575211, 41.796410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730400, 33.743252, 42.029228>,  <34.192280, 34.180172, 41.892113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730400, 33.743252, 42.029228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056915, 33.514072, 42.058601>,  <34.252827, 33.376564, 42.076225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056915, 33.514072, 42.058601>,  <33.730400, 33.743252, 42.029228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056915, 33.514072, 42.058601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389034, -0.451336, 0.803087,
		-0.426985, -0.684123, -0.591320,
		0.816294, -0.572949, 0.073434,
		34.301804, 33.342186, 42.080631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520687, 33.031750, 42.261154>,  <33.730400, 33.743252, 42.029228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520687, 33.031750, 42.261154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913559, 33.037670, 42.336090>,  <34.149284, 33.041222, 42.381050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913559, 33.037670, 42.336090>,  <33.520687, 33.031750, 42.261154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913559, 33.037670, 42.336090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153156, -0.514614, 0.843633,
		0.108894, -0.857294, -0.503178,
		0.982184, 0.014801, 0.187338,
		34.208214, 33.042110, 42.392292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761211, 32.272549, 42.439034>,  <33.520687, 33.031750, 42.261154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761211, 32.272549, 42.439034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003609, 32.539871, 42.611607>,  <34.149048, 32.700264, 42.715153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003609, 32.539871, 42.611607>,  <33.761211, 32.272549, 42.439034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003609, 32.539871, 42.611607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029318, -0.523233, 0.851685,
		0.794928, -0.528765, -0.297483,
		0.605994, 0.668307, 0.431435,
		34.185406, 32.740364, 42.741035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141125, 31.755419, 42.152634>,  <33.761211, 32.272549, 42.439034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141125, 31.755419, 42.152634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994411, 31.397299, 42.051514>,  <33.906384, 31.182426, 41.990841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994411, 31.397299, 42.051514>,  <34.141125, 31.755419, 42.152634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994411, 31.397299, 42.051514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062303, 0.294763, -0.953537,
		0.928218, -0.333992, -0.163894,
		-0.366784, -0.895301, -0.252796,
		33.884377, 31.128708, 41.975674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446404, 31.662210, 41.550755>,  <34.141125, 31.755419, 42.152634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446404, 31.662210, 41.550755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156570, 31.386625, 41.543621>,  <33.982670, 31.221275, 41.539341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156570, 31.386625, 41.543621>,  <34.446404, 31.662210, 41.550755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156570, 31.386625, 41.543621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087352, 0.117469, -0.989227,
		0.683634, -0.715215, -0.145298,
		-0.724579, -0.688961, -0.017831,
		33.939198, 31.179937, 41.538273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522003, 31.074524, 41.046585>,  <34.446404, 31.662210, 41.550755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522003, 31.074524, 41.046585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124630, 31.088102, 41.090275>,  <33.886204, 31.096249, 41.116489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124630, 31.088102, 41.090275>,  <34.522003, 31.074524, 41.046585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124630, 31.088102, 41.090275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108556, 0.020937, -0.993870,
		-0.036027, -0.999204, -0.017115,
		-0.993438, 0.033948, 0.109224,
		33.826599, 31.098286, 41.123043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236027, 30.607061, 40.519226>,  <34.522003, 31.074524, 41.046585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236027, 30.607061, 40.519226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918404, 30.816074, 40.643436>,  <33.727829, 30.941483, 40.717964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918404, 30.816074, 40.643436>,  <34.236027, 30.607061, 40.519226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918404, 30.816074, 40.643436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332504, 0.054247, -0.941540,
		-0.508831, -0.850892, 0.130668,
		-0.794061, 0.522532, 0.310528,
		33.680187, 30.972834, 40.736595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635143, 30.339228, 40.181641>,  <34.236027, 30.607061, 40.519226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635143, 30.339228, 40.181641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488735, 30.700663, 40.270683>,  <33.400890, 30.917524, 40.324108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488735, 30.700663, 40.270683>,  <33.635143, 30.339228, 40.181641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488735, 30.700663, 40.270683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494357, 0.013874, -0.869148,
		-0.788441, -0.428176, 0.441617,
		-0.366022, 0.903589, 0.222611,
		33.378929, 30.971739, 40.337467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941132, 30.383423, 40.058708>,  <33.635143, 30.339228, 40.181641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941132, 30.383423, 40.058708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051193, 30.767982, 40.057919>,  <33.117229, 30.998718, 40.057446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051193, 30.767982, 40.057919>,  <32.941132, 30.383423, 40.058708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051193, 30.767982, 40.057919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335188, 0.094012, -0.937449,
		-0.901075, 0.258606, 0.348117,
		0.275157, 0.961397, -0.001970,
		33.133739, 31.056402, 40.057327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338284, 30.731747, 39.834885>,  <32.941132, 30.383423, 40.058708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338284, 30.731747, 39.834885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660240, 30.962130, 39.777714>,  <32.853413, 31.100359, 39.743412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660240, 30.962130, 39.777714>,  <32.338284, 30.731747, 39.834885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660240, 30.962130, 39.777714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477313, 0.485226, -0.732617,
		-0.352601, 0.657898, 0.665464,
		0.804888, 0.575956, -0.142932,
		32.901707, 31.134916, 39.734833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001747, 31.186989, 39.430676>,  <32.338284, 30.731747, 39.834885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001747, 31.186989, 39.430676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387104, 31.292364, 39.410748>,  <32.618317, 31.355589, 39.398792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387104, 31.292364, 39.410748>,  <32.001747, 31.186989, 39.430676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387104, 31.292364, 39.410748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170020, 0.456615, -0.873267,
		-0.207302, 0.849767, 0.484687,
		0.963389, 0.263436, -0.049821,
		32.676121, 31.371395, 39.395802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054531, 31.928698, 39.393642>,  <32.001747, 31.186989, 39.430676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054531, 31.928698, 39.393642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354900, 31.742382, 39.206387>,  <32.535122, 31.630592, 39.094032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354900, 31.742382, 39.206387>,  <32.054531, 31.928698, 39.393642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354900, 31.742382, 39.206387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140331, 0.580141, -0.802336,
		0.645303, 0.668190, 0.370279,
		0.750927, -0.465788, -0.468135,
		32.580177, 31.602646, 39.065945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282211, 32.487091, 38.967880>,  <32.054531, 31.928698, 39.393642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282211, 32.487091, 38.967880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491199, 32.187340, 38.805180>,  <32.616592, 32.007488, 38.707558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491199, 32.187340, 38.805180>,  <32.282211, 32.487091, 38.967880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491199, 32.187340, 38.805180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071231, 0.437018, -0.896628,
		0.849675, 0.497438, 0.174952,
		0.522474, -0.749380, -0.406756,
		32.647942, 31.962526, 38.683151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702122, 32.840374, 38.436619>,  <32.282211, 32.487091, 38.967880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702122, 32.840374, 38.436619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675385, 32.456093, 38.328850>,  <32.659344, 32.225525, 38.264191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675385, 32.456093, 38.328850>,  <32.702122, 32.840374, 38.436619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675385, 32.456093, 38.328850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355938, 0.275215, -0.893065,
		0.932116, 0.036203, -0.360346,
		-0.066841, -0.960701, -0.269418,
		32.655331, 32.167881, 38.248024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914421, 32.782211, 37.703346>,  <32.702122, 32.840374, 38.436619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914421, 32.782211, 37.703346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709755, 32.440697, 37.741802>,  <32.586956, 32.235786, 37.764877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709755, 32.440697, 37.741802>,  <32.914421, 32.782211, 37.703346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709755, 32.440697, 37.741802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477140, 0.189306, -0.858196,
		0.714518, -0.484983, -0.504238,
		-0.511666, -0.853789, 0.096143,
		32.556255, 32.184559, 37.770645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051991, 32.393196, 37.156532>,  <32.914421, 32.782211, 37.703346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051991, 32.393196, 37.156532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693844, 32.287037, 37.299572>,  <32.478954, 32.223343, 37.385395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693844, 32.287037, 37.299572>,  <33.051991, 32.393196, 37.156532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693844, 32.287037, 37.299572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429853, 0.305234, -0.849740,
		0.116366, -0.914547, -0.387379,
		-0.895369, -0.265397, 0.357601,
		32.425232, 32.207417, 37.406853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727139, 32.157379, 37.196445>,  <33.051991, 32.393196, 37.156532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727139, 32.157379, 37.196445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567268, 32.059483, 37.549797>,  <33.471348, 32.000744, 37.761810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567268, 32.059483, 37.549797>,  <33.727139, 32.157379, 37.196445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567268, 32.059483, 37.549797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881475, 0.161815, 0.443641,
		-0.251522, 0.955990, 0.151061,
		-0.399673, -0.244743, 0.883381,
		33.447365, 31.986059, 37.814812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761677, 32.747581, 37.709953>,  <33.727139, 32.157379, 37.196445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761677, 32.747581, 37.709953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131107, 32.757347, 37.556896>,  <34.352764, 32.763206, 37.465061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131107, 32.757347, 37.556896>,  <33.761677, 32.747581, 37.709953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131107, 32.757347, 37.556896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357113, -0.418087, 0.835269,
		-0.139588, -0.908079, -0.394851,
		0.923572, 0.024413, -0.382647,
		34.408180, 32.764671, 37.442101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003082, 32.138992, 37.975109>,  <33.761677, 32.747581, 37.709953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003082, 32.138992, 37.975109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309097, 32.380787, 37.886284>,  <34.492706, 32.525864, 37.832989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309097, 32.380787, 37.886284>,  <34.003082, 32.138992, 37.975109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309097, 32.380787, 37.886284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540279, -0.414816, 0.732138,
		0.350450, -0.680092, -0.643941,
		0.765038, 0.604485, -0.222067,
		34.538609, 32.562134, 37.819664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464382, 31.617348, 37.644573>,  <34.003082, 32.138992, 37.975109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464382, 31.617348, 37.644573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738110, 31.376789, 37.479637>,  <34.902348, 31.232454, 37.380676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738110, 31.376789, 37.479637>,  <34.464382, 31.617348, 37.644573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738110, 31.376789, 37.479637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087067, -0.494048, 0.865064,
		-0.723964, -0.627883, -0.285726,
		0.684322, -0.601398, -0.412340,
		34.943405, 31.196369, 37.355934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257172, 30.819605, 37.624607>,  <34.464382, 31.617348, 37.644573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257172, 30.819605, 37.624607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652611, 30.861805, 37.667591>,  <34.889874, 30.887125, 37.693382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652611, 30.861805, 37.667591>,  <34.257172, 30.819605, 37.624607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652611, 30.861805, 37.667591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032769, -0.545761, 0.837300,
		0.146983, -0.831273, -0.536080,
		0.988596, 0.105503, 0.107458,
		34.949188, 30.893456, 37.699829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733074, 30.163580, 37.808945>,  <34.257172, 30.819605, 37.624607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733074, 30.163580, 37.808945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915302, 30.486818, 37.958309>,  <35.024639, 30.680761, 38.047928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915302, 30.486818, 37.958309>,  <34.733074, 30.163580, 37.808945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915302, 30.486818, 37.958309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066928, -0.387186, 0.919569,
		0.887679, -0.443922, -0.122306,
		0.455573, 0.808097, 0.373408,
		35.051975, 30.729248, 38.070332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323711, 29.949875, 38.260101>,  <34.733074, 30.163580, 37.808945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323711, 29.949875, 38.260101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256054, 30.314754, 38.409382>,  <35.215462, 30.533684, 38.498951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256054, 30.314754, 38.409382>,  <35.323711, 29.949875, 38.260101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256054, 30.314754, 38.409382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160727, -0.348060, 0.923591,
		0.972398, 0.216202, -0.087744,
		-0.169142, 0.912201, 0.373202,
		35.205311, 30.588415, 38.521343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916805, 30.054159, 38.520195>,  <35.323711, 29.949875, 38.260101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916805, 30.054159, 38.520195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648815, 30.292742, 38.697002>,  <35.488022, 30.435890, 38.803085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648815, 30.292742, 38.697002>,  <35.916805, 30.054159, 38.520195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648815, 30.292742, 38.697002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298002, -0.329260, 0.895981,
		0.679951, 0.732004, 0.042849,
		-0.669971, 0.596455, 0.442020,
		35.447823, 30.471678, 38.829609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234890, 30.391668, 39.096992>,  <35.916805, 30.054159, 38.520195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234890, 30.391668, 39.096992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845211, 30.414907, 39.184223>,  <35.611404, 30.428850, 39.236561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845211, 30.414907, 39.184223>,  <36.234890, 30.391668, 39.096992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845211, 30.414907, 39.184223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201672, -0.209624, 0.956758,
		0.101299, 0.976055, 0.192500,
		-0.974201, 0.058097, 0.218077,
		35.552952, 30.432337, 39.249645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279972, 30.713503, 39.733757>,  <36.234890, 30.391668, 39.096992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279972, 30.713503, 39.733757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928391, 30.527004, 39.693661>,  <35.717442, 30.415104, 39.669605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928391, 30.527004, 39.693661>,  <36.279972, 30.713503, 39.733757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928391, 30.527004, 39.693661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016856, -0.179683, 0.983580,
		-0.476604, 0.866214, 0.150074,
		-0.878957, -0.466248, -0.100239,
		35.664703, 30.387129, 39.663589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872017, 31.029606, 40.244522>,  <36.279972, 30.713503, 39.733757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872017, 31.029606, 40.244522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742058, 30.659790, 40.164856>,  <35.664082, 30.437901, 40.117058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742058, 30.659790, 40.164856>,  <35.872017, 31.029606, 40.244522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742058, 30.659790, 40.164856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275885, -0.294080, 0.915098,
		-0.904614, 0.242371, 0.350614,
		-0.324902, -0.924540, -0.199163,
		35.644588, 30.382429, 40.105106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667721, 30.835003, 40.837593>,  <35.872017, 31.029606, 40.244522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667721, 30.835003, 40.837593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669006, 30.482414, 40.648701>,  <35.669777, 30.270861, 40.535366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669006, 30.482414, 40.648701>,  <35.667721, 30.835003, 40.837593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669006, 30.482414, 40.648701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239768, -0.457776, 0.856126,
		-0.970825, -0.115980, 0.209876,
		0.003217, -0.881470, -0.472228,
		35.669971, 30.217974, 40.507030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359669, 30.414959, 41.253864>,  <35.667721, 30.835003, 40.837593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359669, 30.414959, 41.253864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549709, 30.153492, 41.018238>,  <35.663734, 29.996611, 40.876862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549709, 30.153492, 41.018238>,  <35.359669, 30.414959, 41.253864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549709, 30.153492, 41.018238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222264, -0.558584, 0.799114,
		-0.851397, -0.510588, -0.120097,
		0.475103, -0.653669, -0.589062,
		35.692242, 29.957392, 40.841518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027130, 29.746346, 41.426636>,  <35.359669, 30.414959, 41.253864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027130, 29.746346, 41.426636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394798, 29.684544, 41.281715>,  <35.615398, 29.647463, 41.194763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394798, 29.684544, 41.281715>,  <35.027130, 29.746346, 41.426636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394798, 29.684544, 41.281715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175748, -0.662312, 0.728323,
		-0.352486, -0.733124, -0.581621,
		0.919166, -0.154505, -0.362301,
		35.670547, 29.638191, 41.173023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224167, 29.067137, 41.656109>,  <35.027130, 29.746346, 41.426636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224167, 29.067137, 41.656109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575054, 29.227516, 41.550488>,  <35.785587, 29.323744, 41.487114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575054, 29.227516, 41.550488>,  <35.224167, 29.067137, 41.656109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575054, 29.227516, 41.550488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452717, -0.507795, 0.732933,
		0.159784, -0.762486, -0.626965,
		0.877221, 0.400949, -0.264053,
		35.838219, 29.347801, 41.471272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589020, 28.529470, 41.538544>,  <35.224167, 29.067137, 41.656109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589020, 28.529470, 41.538544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873108, 28.804790, 41.597637>,  <36.043560, 28.969982, 41.633091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873108, 28.804790, 41.597637>,  <35.589020, 28.529470, 41.538544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873108, 28.804790, 41.597637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452109, -0.606820, 0.653733,
		0.539610, -0.397508, -0.742165,
		0.710225, 0.688300, 0.147730,
		36.086174, 29.011280, 41.641956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268131, 28.155661, 41.621269>,  <35.589020, 28.529470, 41.538544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268131, 28.155661, 41.621269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301231, 28.519928, 41.783173>,  <36.321091, 28.738489, 41.880314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301231, 28.519928, 41.783173>,  <36.268131, 28.155661, 41.621269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301231, 28.519928, 41.783173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289168, -0.410624, 0.864737,
		0.953695, 0.045483, -0.297318,
		0.082755, 0.910670, 0.404762,
		36.326057, 28.793129, 41.904602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880871, 28.153223, 41.955990>,  <36.268131, 28.155661, 41.621269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880871, 28.153223, 41.955990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684261, 28.465010, 42.111343>,  <36.566296, 28.652081, 42.204556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684261, 28.465010, 42.111343>,  <36.880871, 28.153223, 41.955990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684261, 28.465010, 42.111343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344604, -0.235492, 0.908731,
		0.799785, 0.580498, -0.152858,
		-0.491520, 0.779465, 0.388385,
		36.536804, 28.698849, 42.227859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376041, 28.434628, 42.400204>,  <36.880871, 28.153223, 41.955990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376041, 28.434628, 42.400204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017666, 28.562622, 42.523430>,  <36.802643, 28.639420, 42.597366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017666, 28.562622, 42.523430>,  <37.376041, 28.434628, 42.400204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017666, 28.562622, 42.523430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209205, -0.307829, 0.928156,
		0.391830, 0.896019, 0.208853,
		-0.895937, 0.319987, 0.308068,
		36.748886, 28.658619, 42.615849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459023, 29.033806, 42.934315>,  <37.376041, 28.434628, 42.400204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459023, 29.033806, 42.934315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104534, 28.853506, 42.977100>,  <36.891842, 28.745327, 43.002773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104534, 28.853506, 42.977100>,  <37.459023, 29.033806, 42.934315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104534, 28.853506, 42.977100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240734, -0.250799, 0.937628,
		-0.395807, 0.856694, 0.330773,
		-0.886219, -0.450749, 0.106968,
		36.838669, 28.718281, 43.009190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313915, 29.271225, 43.569759>,  <37.459023, 29.033806, 42.934315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313915, 29.271225, 43.569759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092251, 28.948229, 43.488903>,  <36.959251, 28.754431, 43.440388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092251, 28.948229, 43.488903>,  <37.313915, 29.271225, 43.569759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092251, 28.948229, 43.488903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139409, -0.329444, 0.933827,
		-0.820650, 0.489313, 0.295137,
		-0.554165, -0.807490, -0.202144,
		36.926003, 28.705982, 43.428261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097591, 29.121414, 44.246277>,  <37.313915, 29.271225, 43.569759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097591, 29.121414, 44.246277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023331, 28.782488, 44.047245>,  <36.978775, 28.579132, 43.927826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023331, 28.782488, 44.047245>,  <37.097591, 29.121414, 44.246277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023331, 28.782488, 44.047245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146567, -0.524600, 0.838638,
		-0.971624, 0.082762, 0.221580,
		-0.185648, -0.847317, -0.497584,
		36.967636, 28.528294, 43.897968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487591, 28.834551, 44.600403>,  <37.097591, 29.121414, 44.246277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487591, 28.834551, 44.600403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695675, 28.557390, 44.400696>,  <36.820526, 28.391094, 44.280872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695675, 28.557390, 44.400696>,  <36.487591, 28.834551, 44.600403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695675, 28.557390, 44.400696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071408, -0.547258, 0.833912,
		-0.851046, -0.469463, -0.235212,
		0.520213, -0.692902, -0.499265,
		36.851738, 28.349520, 44.250916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295906, 28.245316, 44.964081>,  <36.487591, 28.834551, 44.600403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295906, 28.245316, 44.964081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610424, 28.125448, 44.747952>,  <36.799133, 28.053528, 44.618275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610424, 28.125448, 44.747952>,  <36.295906, 28.245316, 44.964081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610424, 28.125448, 44.747952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294600, -0.586860, 0.754192,
		-0.543096, -0.752194, -0.373163,
		0.786294, -0.299665, -0.540318,
		36.846310, 28.035547, 44.585857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371643, 27.470894, 45.042072>,  <36.295906, 28.245316, 44.964081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371643, 27.470894, 45.042072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729763, 27.617874, 44.941345>,  <36.944637, 27.706062, 44.880909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729763, 27.617874, 44.941345>,  <36.371643, 27.470894, 45.042072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729763, 27.617874, 44.941345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408871, -0.453517, 0.791926,
		0.176794, -0.811973, -0.556277,
		0.895303, 0.367453, -0.251813,
		36.998356, 27.728109, 44.865803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761398, 26.862112, 44.973125>,  <36.371643, 27.470894, 45.042072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761398, 26.862112, 44.973125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043476, 27.140600, 45.026764>,  <37.212723, 27.307693, 45.058945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043476, 27.140600, 45.026764>,  <36.761398, 26.862112, 44.973125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043476, 27.140600, 45.026764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369206, -0.522050, 0.768863,
		0.605301, -0.492689, -0.625194,
		0.705193, 0.696219, 0.134093,
		37.255035, 27.349466, 45.066990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399174, 26.472521, 45.164051>,  <36.761398, 26.862112, 44.973125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399174, 26.472521, 45.164051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456917, 26.851126, 45.279480>,  <37.491562, 27.078289, 45.348736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456917, 26.851126, 45.279480>,  <37.399174, 26.472521, 45.164051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456917, 26.851126, 45.279480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390331, -0.322448, 0.862363,
		0.909287, -0.011850, -0.416001,
		0.144357, 0.946513, 0.288573,
		37.500225, 27.135080, 45.366051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106750, 26.523794, 45.427258>,  <37.399174, 26.472521, 45.164051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106750, 26.523794, 45.427258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877033, 26.809711, 45.586887>,  <37.739204, 26.981262, 45.682667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877033, 26.809711, 45.586887>,  <38.106750, 26.523794, 45.427258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877033, 26.809711, 45.586887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278197, -0.288068, 0.916310,
		0.769934, 0.637248, -0.033420,
		-0.574289, 0.714795, 0.399074,
		37.704746, 27.024151, 45.706608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559010, 26.825899, 45.955608>,  <38.106750, 26.523794, 45.427258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559010, 26.825899, 45.955608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201080, 26.949791, 46.084202>,  <37.986320, 27.024126, 46.161358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201080, 26.949791, 46.084202>,  <38.559010, 26.825899, 45.955608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201080, 26.949791, 46.084202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277687, -0.177676, 0.944098,
		0.349537, 0.934076, 0.072981,
		-0.894826, 0.309731, 0.321486,
		37.932632, 27.042709, 46.180649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886379, 27.491726, 45.959789>,  <38.559010, 26.825899, 45.955608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886379, 27.491726, 45.959789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231609, 27.691494, 45.989952>,  <39.438747, 27.811354, 46.008049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231609, 27.691494, 45.989952>,  <38.886379, 27.491726, 45.959789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231609, 27.691494, 45.989952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124870, 0.355650, -0.926240,
		-0.489400, 0.789996, 0.369314,
		0.863073, 0.499418, 0.075408,
		39.490532, 27.841320, 46.012573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786098, 28.084570, 45.706947>,  <38.886379, 27.491726, 45.959789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786098, 28.084570, 45.706947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179379, 28.022833, 45.667980>,  <39.415348, 27.985790, 45.644600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179379, 28.022833, 45.667980>,  <38.786098, 28.084570, 45.706947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179379, 28.022833, 45.667980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047779, 0.297466, -0.953536,
		0.176151, 0.942174, 0.285095,
		0.983203, -0.154345, -0.097415,
		39.474339, 27.976530, 45.638756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066761, 28.666140, 45.456276>,  <38.786098, 28.084570, 45.706947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066761, 28.666140, 45.456276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309147, 28.376453, 45.324627>,  <39.454578, 28.202642, 45.245636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309147, 28.376453, 45.324627>,  <39.066761, 28.666140, 45.456276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309147, 28.376453, 45.324627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077311, 0.358165, -0.930452,
		0.791727, 0.589265, 0.161045,
		0.605963, -0.724213, -0.329126,
		39.490936, 28.159189, 45.225891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319511, 29.048769, 44.950195>,  <39.066761, 28.666140, 45.456276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319511, 29.048769, 44.950195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450752, 28.674585, 44.897629>,  <39.529495, 28.450075, 44.866089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450752, 28.674585, 44.897629>,  <39.319511, 29.048769, 44.950195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450752, 28.674585, 44.897629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068969, 0.162465, -0.984301,
		0.942123, 0.313883, 0.117822,
		0.328098, -0.935458, -0.131414,
		39.549183, 28.393948, 44.858204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913593, 29.115995, 44.690113>,  <39.319511, 29.048769, 44.950195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913593, 29.115995, 44.690113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779514, 28.755014, 44.581875>,  <39.699066, 28.538425, 44.516933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779514, 28.755014, 44.581875>,  <39.913593, 29.115995, 44.690113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779514, 28.755014, 44.581875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103183, 0.250319, -0.962649,
		0.936480, -0.350600, 0.009212,
		-0.335199, -0.902453, -0.270595,
		39.678955, 28.484280, 44.500698>
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
