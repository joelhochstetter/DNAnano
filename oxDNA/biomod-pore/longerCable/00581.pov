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
	<24.394463, 35.068794, 34.479664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279867, 34.913307, 34.829937>,  <24.211111, 34.820015, 35.040100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279867, 34.913307, 34.829937>,  <24.394463, 35.068794, 34.479664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279867, 34.913307, 34.829937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955139, -0.187491, 0.229254,
		0.075067, 0.902077, 0.424997,
		-0.286487, -0.388721, 0.875683,
		24.193920, 34.796692, 35.092644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791265, 35.384708, 35.027630>,  <24.394463, 35.068794, 34.479664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791265, 35.384708, 35.027630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679041, 35.013607, 35.126072>,  <24.611706, 34.790947, 35.185135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679041, 35.013607, 35.126072>,  <24.791265, 35.384708, 35.027630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679041, 35.013607, 35.126072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889220, -0.154703, 0.430527,
		-0.361349, 0.339629, 0.868378,
		-0.280560, -0.927750, 0.246103,
		24.594873, 34.735283, 35.199902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047434, 35.223011, 35.634968>,  <24.791265, 35.384708, 35.027630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047434, 35.223011, 35.634968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975752, 34.847950, 35.515846>,  <24.932743, 34.622913, 35.444374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975752, 34.847950, 35.515846>,  <25.047434, 35.223011, 35.634968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975752, 34.847950, 35.515846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857174, -0.297376, 0.420501,
		-0.482845, -0.179916, 0.857024,
		-0.179203, -0.937656, -0.297806,
		24.921991, 34.566654, 35.426506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237328, 34.859280, 36.192009>,  <25.047434, 35.223011, 35.634968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237328, 34.859280, 36.192009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245020, 34.620701, 35.871040>,  <25.249636, 34.477554, 35.678459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245020, 34.620701, 35.871040>,  <25.237328, 34.859280, 36.192009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245020, 34.620701, 35.871040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797455, -0.474947, 0.372146,
		-0.603073, -0.647050, 0.466507,
		0.019231, -0.596449, -0.802420,
		25.250790, 34.441765, 35.630314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037992, 34.871811, 36.412979>,  <25.237328, 34.859280, 36.192009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037992, 34.871811, 36.412979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390587, 34.761436, 36.566261>,  <26.602142, 34.695213, 36.658230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390587, 34.761436, 36.566261>,  <26.037992, 34.871811, 36.412979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390587, 34.761436, 36.566261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086157, -0.703903, -0.705052,
		0.464287, 0.654508, -0.596706,
		0.881484, -0.275936, 0.383203,
		26.655033, 34.678658, 36.681221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747690, 35.138351, 36.393101>,  <26.037992, 34.871811, 36.412979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747690, 35.138351, 36.393101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732643, 35.433754, 36.123821>,  <26.723616, 35.610996, 35.962254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732643, 35.433754, 36.123821>,  <26.747690, 35.138351, 36.393101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732643, 35.433754, 36.123821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030286, -0.674204, -0.737924,
		-0.998833, -0.007369, 0.047727,
		-0.037615, 0.738509, -0.673194,
		26.721359, 35.655308, 35.921864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150969, 34.394310, 36.077290>,  <26.747690, 35.138351, 36.393101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150969, 34.394310, 36.077290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367264, 34.480179, 35.751953>,  <27.497040, 34.531700, 35.556751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367264, 34.480179, 35.751953>,  <27.150969, 34.394310, 36.077290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367264, 34.480179, 35.751953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839109, -0.205670, 0.503584,
		-0.059172, -0.954785, -0.291350,
		0.540736, 0.214676, -0.813338,
		27.529484, 34.544582, 35.507950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528309, 33.826687, 35.862305>,  <27.150969, 34.394310, 36.077290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528309, 33.826687, 35.862305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705172, 34.180050, 35.800213>,  <27.811289, 34.392067, 35.762959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705172, 34.180050, 35.800213>,  <27.528309, 33.826687, 35.862305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705172, 34.180050, 35.800213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783751, -0.296369, 0.545802,
		0.436157, -0.362994, -0.823409,
		0.442156, 0.883403, -0.155234,
		27.837818, 34.445072, 35.753643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109219, 33.677731, 35.513943>,  <27.528309, 33.826687, 35.862305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109219, 33.677731, 35.513943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106928, 33.998985, 35.752251>,  <28.105553, 34.191738, 35.895233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106928, 33.998985, 35.752251>,  <28.109219, 33.677731, 35.513943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106928, 33.998985, 35.752251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768127, -0.377932, 0.516864,
		0.640272, 0.460586, -0.614746,
		-0.005728, 0.803137, 0.595767,
		28.105209, 34.239925, 35.930981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686792, 33.704971, 35.977940>,  <28.109219, 33.677731, 35.513943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686792, 33.704971, 35.977940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607962, 33.494457, 36.308800>,  <28.560663, 33.368149, 36.507317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607962, 33.494457, 36.308800>,  <28.686792, 33.704971, 35.977940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607962, 33.494457, 36.308800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805833, 0.393576, 0.442415,
		-0.558384, 0.753738, 0.346535,
		-0.197077, -0.526287, 0.827154,
		28.548838, 33.336571, 36.556946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516422, 34.127308, 36.588940>,  <28.686792, 33.704971, 35.977940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516422, 34.127308, 36.588940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707176, 33.786079, 36.673653>,  <28.821629, 33.581341, 36.724480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707176, 33.786079, 36.673653>,  <28.516422, 34.127308, 36.588940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707176, 33.786079, 36.673653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751856, 0.520710, 0.404443,
		-0.455296, -0.033642, 0.889705,
		0.476885, -0.853070, 0.211783,
		28.850241, 33.530159, 36.737186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519106, 33.924931, 37.274708>,  <28.516422, 34.127308, 36.588940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519106, 33.924931, 37.274708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854559, 33.804821, 37.092926>,  <29.055830, 33.732758, 36.983856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854559, 33.804821, 37.092926>,  <28.519106, 33.924931, 37.274708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854559, 33.804821, 37.092926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536424, 0.600147, 0.593357,
		0.094574, -0.741391, 0.664376,
		0.838633, -0.300271, -0.454458,
		29.106150, 33.714741, 36.956589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867025, 33.563828, 37.870003>,  <28.519106, 33.924931, 37.274708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867025, 33.563828, 37.870003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020889, 33.428284, 38.213448>,  <29.113207, 33.346958, 38.419514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020889, 33.428284, 38.213448>,  <28.867025, 33.563828, 37.870003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020889, 33.428284, 38.213448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455960, -0.878527, -0.142448,
		0.802583, -0.336699, -0.492438,
		0.384658, -0.338858, 0.858611,
		29.136286, 33.326626, 38.471031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459383, 33.023544, 37.875431>,  <28.867025, 33.563828, 37.870003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459383, 33.023544, 37.875431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212458, 32.998741, 38.189140>,  <29.064302, 32.983860, 38.377365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212458, 32.998741, 38.189140>,  <29.459383, 33.023544, 37.875431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212458, 32.998741, 38.189140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341058, -0.877246, -0.337814,
		0.708947, -0.476018, 0.520385,
		-0.617312, -0.062011, 0.784271,
		29.027264, 32.980137, 38.424423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049545, 32.856361, 37.315403>,  <29.459383, 33.023544, 37.875431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049545, 32.856361, 37.315403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248123, 33.011909, 37.625839>,  <30.367270, 33.105240, 37.812103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248123, 33.011909, 37.625839>,  <30.049545, 32.856361, 37.315403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248123, 33.011909, 37.625839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848765, -0.404943, -0.340028,
		0.182048, 0.827527, -0.531091,
		0.496444, 0.388870, 0.776095,
		30.397057, 33.128571, 37.858669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481098, 32.752766, 36.661266>,  <30.049545, 32.856361, 37.315403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481098, 32.752766, 36.661266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596987, 32.424377, 36.464462>,  <30.666521, 32.227345, 36.346378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596987, 32.424377, 36.464462>,  <30.481098, 32.752766, 36.661266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596987, 32.424377, 36.464462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956983, 0.256855, 0.134936,
		0.015597, -0.509940, 0.860069,
		0.289722, -0.820967, -0.492010,
		30.683903, 32.178089, 36.316860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851770, 32.150677, 37.103401>,  <30.481098, 32.752766, 36.661266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851770, 32.150677, 37.103401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004496, 32.202244, 36.737320>,  <31.096130, 32.233185, 36.517670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004496, 32.202244, 36.737320>,  <30.851770, 32.150677, 37.103401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004496, 32.202244, 36.737320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918005, 0.061929, 0.391703,
		0.107174, -0.989720, -0.094701,
		0.381812, 0.128917, -0.915205,
		31.119040, 32.240917, 36.462757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468328, 31.790867, 37.116241>,  <30.851770, 32.150677, 37.103401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468328, 31.790867, 37.116241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513554, 32.065056, 36.828533>,  <31.540689, 32.229568, 36.655910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513554, 32.065056, 36.828533>,  <31.468328, 31.790867, 37.116241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513554, 32.065056, 36.828533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947280, 0.144059, 0.286195,
		0.299795, -0.713706, -0.633045,
		0.113063, 0.685471, -0.719268,
		31.547472, 32.270699, 36.612751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083683, 31.718607, 36.644058>,  <31.468328, 31.790867, 37.116241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083683, 31.718607, 36.644058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994621, 32.084179, 36.779797>,  <31.941183, 32.303524, 36.861240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994621, 32.084179, 36.779797>,  <32.083683, 31.718607, 36.644058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994621, 32.084179, 36.779797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889015, 0.047494, 0.455409,
		0.400095, 0.403081, -0.823073,
		-0.222658, 0.913931, 0.339342,
		31.927824, 32.358356, 36.881599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663525, 32.144974, 36.998726>,  <32.083683, 31.718607, 36.644058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663525, 32.144974, 36.998726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800911, 31.770569, 37.029457>,  <32.883343, 31.545925, 37.047897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800911, 31.770569, 37.029457>,  <32.663525, 32.144974, 36.998726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800911, 31.770569, 37.029457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703861, 0.310712, 0.638778,
		-0.621780, -0.165319, 0.765545,
		0.343467, -0.936017, 0.076833,
		32.903950, 31.489763, 37.052505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639725, 31.997677, 37.716850>,  <32.663525, 32.144974, 36.998726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639725, 31.997677, 37.716850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894932, 31.787710, 37.491497>,  <33.048054, 31.661730, 37.356285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894932, 31.787710, 37.491497>,  <32.639725, 31.997677, 37.716850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894932, 31.787710, 37.491497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738695, 0.210648, 0.640280,
		-0.217417, -0.824677, 0.522148,
		0.638013, -0.524915, -0.563386,
		33.086334, 31.630236, 37.322483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922462, 31.678396, 38.242256>,  <32.639725, 31.997677, 37.716850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922462, 31.678396, 38.242256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159744, 31.626371, 37.924465>,  <33.302113, 31.595156, 37.733791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159744, 31.626371, 37.924465>,  <32.922462, 31.678396, 38.242256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159744, 31.626371, 37.924465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797822, 0.226939, 0.558550,
		0.107652, -0.965185, 0.238388,
		0.593204, -0.130062, -0.794477,
		33.337704, 31.587353, 37.686123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452553, 31.288151, 38.446415>,  <32.922462, 31.678396, 38.242256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452553, 31.288151, 38.446415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591927, 31.477615, 38.122875>,  <33.675552, 31.591293, 37.928753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591927, 31.477615, 38.122875>,  <33.452553, 31.288151, 38.446415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591927, 31.477615, 38.122875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879505, 0.133194, 0.456870,
		0.324135, -0.870578, -0.370176,
		0.348436, 0.473660, -0.808850,
		33.696457, 31.619713, 37.880219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055092, 31.011974, 38.435169>,  <33.452553, 31.288151, 38.446415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055092, 31.011974, 38.435169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059082, 31.354368, 38.228405>,  <34.061474, 31.559805, 38.104347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059082, 31.354368, 38.228405>,  <34.055092, 31.011974, 38.435169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059082, 31.354368, 38.228405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897210, 0.220573, 0.382574,
		0.441492, -0.467590, -0.765796,
		0.009973, 0.855983, -0.516907,
		34.062073, 31.611164, 38.073334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746609, 31.157925, 38.199211>,  <34.055092, 31.011974, 38.435169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746609, 31.157925, 38.199211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540783, 31.497715, 38.245880>,  <34.417286, 31.701590, 38.273880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540783, 31.497715, 38.245880>,  <34.746609, 31.157925, 38.199211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540783, 31.497715, 38.245880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812814, 0.439912, 0.381851,
		0.273047, 0.291320, -0.916830,
		-0.514566, 0.849476, 0.116672,
		34.386414, 31.752558, 38.280880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209438, 31.720833, 38.007713>,  <34.746609, 31.157925, 38.199211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209438, 31.720833, 38.007713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945419, 31.893574, 38.253590>,  <34.787006, 31.997219, 38.401115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945419, 31.893574, 38.253590>,  <35.209438, 31.720833, 38.007713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945419, 31.893574, 38.253590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705386, 0.637734, 0.309395,
		-0.258395, 0.637808, -0.725557,
		-0.660047, 0.431852, 0.614689,
		34.747406, 32.023129, 38.437996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159863, 32.550709, 37.938202>,  <35.209438, 31.720833, 38.007713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159863, 32.550709, 37.938202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118542, 32.361149, 38.288002>,  <35.093750, 32.247414, 38.497883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118542, 32.361149, 38.288002>,  <35.159863, 32.550709, 37.938202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118542, 32.361149, 38.288002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772269, 0.515872, 0.370778,
		-0.626841, 0.713650, 0.312688,
		-0.103299, -0.473898, 0.874500,
		35.087551, 32.218979, 38.550350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525898, 32.472702, 37.222946>,  <35.159863, 32.550709, 37.938202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525898, 32.472702, 37.222946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335197, 32.617432, 36.902496>,  <35.220776, 32.704269, 36.710228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335197, 32.617432, 36.902496>,  <35.525898, 32.472702, 37.222946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335197, 32.617432, 36.902496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705527, -0.386125, -0.594255,
		-0.524348, -0.848523, -0.071192,
		-0.476749, 0.361824, -0.801120,
		35.192173, 32.725979, 36.662159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385612, 31.907627, 36.642223>,  <35.525898, 32.472702, 37.222946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385612, 31.907627, 36.642223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458881, 32.272793, 36.496330>,  <35.502842, 32.491894, 36.408794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458881, 32.272793, 36.496330>,  <35.385612, 31.907627, 36.642223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458881, 32.272793, 36.496330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833189, -0.341080, -0.435271,
		-0.521769, -0.224162, -0.823109,
		0.183175, 0.912916, -0.364735,
		35.513832, 32.546669, 36.386909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930042, 31.694452, 36.274570>,  <35.385612, 31.907627, 36.642223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930042, 31.694452, 36.274570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946442, 32.093224, 36.247864>,  <35.956284, 32.332485, 36.231842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946442, 32.093224, 36.247864>,  <35.930042, 31.694452, 36.274570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946442, 32.093224, 36.247864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902215, -0.065652, -0.426260,
		-0.429333, -0.042759, -0.902133,
		0.041001, 0.996926, -0.066765,
		35.958740, 32.392300, 36.227833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550247, 31.923698, 35.676163>,  <35.930042, 31.694452, 36.274570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550247, 31.923698, 35.676163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380341, 31.924860, 35.314045>,  <35.278397, 31.925556, 35.096775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380341, 31.924860, 35.314045>,  <35.550247, 31.923698, 35.676163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380341, 31.924860, 35.314045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844103, 0.360155, 0.397214,
		0.327200, 0.932888, -0.150533,
		-0.424771, 0.002903, -0.905296,
		35.252911, 31.925732, 35.042458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376198, 32.628090, 35.547508>,  <35.550247, 31.923698, 35.676163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376198, 32.628090, 35.547508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143261, 32.413593, 35.303112>,  <35.003498, 32.284893, 35.156475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143261, 32.413593, 35.303112>,  <35.376198, 32.628090, 35.547508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143261, 32.413593, 35.303112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812207, 0.415708, 0.409275,
		0.034525, 0.734594, -0.677627,
		-0.582346, -0.536244, -0.610995,
		34.968555, 32.252720, 35.119812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978180, 33.080647, 35.135464>,  <35.376198, 32.628090, 35.547508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978180, 33.080647, 35.135464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785721, 32.732109, 35.173954>,  <34.670246, 32.522987, 35.197048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785721, 32.732109, 35.173954>,  <34.978180, 33.080647, 35.135464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785721, 32.732109, 35.173954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724491, 0.457045, 0.515968,
		-0.493564, 0.178541, -0.851186,
		-0.481151, -0.871340, 0.096229,
		34.641376, 32.470707, 35.202824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312759, 33.239395, 34.904602>,  <34.978180, 33.080647, 35.135464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312759, 33.239395, 34.904602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279114, 32.898579, 35.111271>,  <34.258926, 32.694088, 35.235271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279114, 32.898579, 35.111271>,  <34.312759, 33.239395, 34.904602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279114, 32.898579, 35.111271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917557, 0.268445, 0.293303,
		-0.388605, -0.449406, -0.804376,
		-0.084119, -0.852039, 0.516675,
		34.253880, 32.642967, 35.266273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420399, 32.678375, 34.395432>,  <34.312759, 33.239395, 34.904602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420399, 32.678375, 34.395432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305721, 32.330040, 34.555153>,  <34.236916, 32.121037, 34.650986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305721, 32.330040, 34.555153>,  <34.420399, 32.678375, 34.395432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305721, 32.330040, 34.555153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722864, 0.470161, 0.506375,
		-0.628709, -0.143469, -0.764291,
		-0.286691, -0.870842, 0.399303,
		34.219715, 32.068787, 34.674942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811188, 32.792435, 34.302387>,  <34.420399, 32.678375, 34.395432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811188, 32.792435, 34.302387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834526, 32.528198, 34.601780>,  <33.848530, 32.369656, 34.781414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834526, 32.528198, 34.601780>,  <33.811188, 32.792435, 34.302387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834526, 32.528198, 34.601780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706587, 0.502314, 0.498413,
		-0.705216, -0.557947, -0.437453,
		0.058349, -0.660587, 0.748478,
		33.852032, 32.330021, 34.826324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185612, 32.470314, 34.325882>,  <33.811188, 32.792435, 34.302387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185612, 32.470314, 34.325882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352112, 32.435581, 34.687920>,  <33.452011, 32.414742, 34.905144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352112, 32.435581, 34.687920>,  <33.185612, 32.470314, 34.325882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352112, 32.435581, 34.687920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839928, 0.344505, 0.419329,
		-0.348222, -0.934760, 0.070465,
		0.416247, -0.086834, 0.905096,
		33.476986, 32.409531, 34.959450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652924, 32.426102, 34.676834>,  <33.185612, 32.470314, 34.325882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652924, 32.426102, 34.676834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918427, 32.520615, 34.960693>,  <33.077728, 32.577320, 35.131008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918427, 32.520615, 34.960693>,  <32.652924, 32.426102, 34.676834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918427, 32.520615, 34.960693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732547, 0.396912, 0.553024,
		-0.150998, -0.886923, 0.436539,
		0.663758, 0.236280, 0.709646,
		33.117554, 32.591499, 35.173588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359848, 32.131866, 35.260620>,  <32.652924, 32.426102, 34.676834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359848, 32.131866, 35.260620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583523, 32.462761, 35.282490>,  <32.717728, 32.661297, 35.295612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583523, 32.462761, 35.282490>,  <32.359848, 32.131866, 35.260620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583523, 32.462761, 35.282490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821967, 0.544611, 0.166638,
		0.108072, -0.138123, 0.984501,
		0.559187, 0.827237, 0.054675,
		32.751278, 32.710934, 35.298893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138676, 32.459373, 35.944054>,  <32.359848, 32.131866, 35.260620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138676, 32.459373, 35.944054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298904, 32.713478, 35.679939>,  <32.395042, 32.865940, 35.521469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298904, 32.713478, 35.679939>,  <32.138676, 32.459373, 35.944054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298904, 32.713478, 35.679939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739386, 0.649724, 0.176545,
		0.541159, 0.417490, 0.729965,
		0.400570, 0.635265, -0.660290,
		32.419075, 32.904057, 35.481853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280476, 33.169624, 35.992374>,  <32.138676, 32.459373, 35.944054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280476, 33.169624, 35.992374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562534, 33.065842, 36.256332>,  <32.731770, 33.003571, 36.414707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562534, 33.065842, 36.256332>,  <32.280476, 33.169624, 35.992374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562534, 33.065842, 36.256332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545428, -0.396194, -0.738606,
		0.453081, 0.880746, -0.137858,
		0.705142, -0.259457, 0.659891,
		32.774078, 32.988003, 36.454300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793976, 33.481457, 35.690609>,  <32.280476, 33.169624, 35.992374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793976, 33.481457, 35.690609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887966, 33.173222, 35.927586>,  <32.944363, 32.988281, 36.069771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887966, 33.173222, 35.927586>,  <32.793976, 33.481457, 35.690609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887966, 33.173222, 35.927586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689471, -0.297485, -0.660404,
		0.685139, 0.563650, 0.461394,
		0.234979, -0.770586, 0.592438,
		32.958458, 32.942047, 36.105316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532848, 33.423687, 35.733223>,  <32.793976, 33.481457, 35.690609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532848, 33.423687, 35.733223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321648, 33.085743, 35.767708>,  <33.194927, 32.882977, 35.788399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321648, 33.085743, 35.767708>,  <33.532848, 33.423687, 35.733223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321648, 33.085743, 35.767708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629515, -0.457506, -0.628012,
		0.570024, -0.277317, 0.773414,
		-0.527999, -0.844857, 0.086214,
		33.163246, 32.832287, 35.793571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936264, 32.920326, 36.054100>,  <33.532848, 33.423687, 35.733223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936264, 32.920326, 36.054100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666271, 32.780205, 35.794350>,  <33.504276, 32.696133, 35.638500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666271, 32.780205, 35.794350>,  <33.936264, 32.920326, 36.054100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666271, 32.780205, 35.794350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712820, -0.536833, -0.451330,
		-0.190503, -0.767527, 0.612056,
		-0.674979, -0.350305, -0.649376,
		33.463776, 32.675114, 35.599537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966263, 32.185009, 36.113422>,  <33.936264, 32.920326, 36.054100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966263, 32.185009, 36.113422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810432, 32.276939, 35.756680>,  <33.716934, 32.332096, 35.542633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810432, 32.276939, 35.756680>,  <33.966263, 32.185009, 36.113422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810432, 32.276939, 35.756680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749689, -0.483359, -0.452030,
		-0.534976, -0.844716, 0.016007,
		-0.389574, 0.229824, -0.891859,
		33.693562, 32.345886, 35.489120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912033, 31.578791, 35.715904>,  <33.966263, 32.185009, 36.113422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912033, 31.578791, 35.715904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978825, 31.904568, 35.493626>,  <34.018898, 32.100033, 35.360256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978825, 31.904568, 35.493626>,  <33.912033, 31.578791, 35.715904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978825, 31.904568, 35.493626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856308, -0.399166, -0.327723,
		-0.488728, -0.421128, -0.764065,
		0.166976, 0.814443, -0.555699,
		34.028919, 32.148899, 35.326916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017506, 31.343821, 34.992813>,  <33.912033, 31.578791, 35.715904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017506, 31.343821, 34.992813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206871, 31.692522, 35.043289>,  <34.320492, 31.901743, 35.073574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206871, 31.692522, 35.043289>,  <34.017506, 31.343821, 34.992813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206871, 31.692522, 35.043289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775032, -0.344173, -0.529972,
		-0.418572, 0.348700, -0.838573,
		0.473416, 0.871753, 0.126193,
		34.348896, 31.954048, 35.081146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243237, 31.457615, 34.356773>,  <34.017506, 31.343821, 34.992813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243237, 31.457615, 34.356773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456970, 31.706572, 34.585548>,  <34.585209, 31.855946, 34.722813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456970, 31.706572, 34.585548>,  <34.243237, 31.457615, 34.356773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456970, 31.706572, 34.585548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801748, -0.158853, -0.576165,
		-0.267745, 0.766417, -0.583881,
		0.534334, 0.622391, 0.571941,
		34.617271, 31.893290, 34.757130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728035, 31.759768, 33.874428>,  <34.243237, 31.457615, 34.356773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728035, 31.759768, 33.874428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884377, 31.805117, 34.239803>,  <34.978184, 31.832327, 34.459030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884377, 31.805117, 34.239803>,  <34.728035, 31.759768, 33.874428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884377, 31.805117, 34.239803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902538, 0.147623, -0.404514,
		-0.180706, 0.982524, -0.044624,
		0.390858, 0.113373, 0.913442,
		35.001633, 31.839128, 34.513836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147430, 32.303925, 33.829086>,  <34.728035, 31.759768, 33.874428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147430, 32.303925, 33.829086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249653, 32.054928, 34.124977>,  <35.310986, 31.905531, 34.302513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249653, 32.054928, 34.124977>,  <35.147430, 32.303925, 33.829086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249653, 32.054928, 34.124977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931575, -0.046081, -0.360617,
		0.258568, 0.781270, 0.568120,
		0.255560, -0.622490, 0.739726,
		35.326321, 31.868181, 34.346893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736790, 32.505249, 34.422142>,  <35.147430, 32.303925, 33.829086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736790, 32.505249, 34.422142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734921, 32.110126, 34.359901>,  <35.733799, 31.873053, 34.322556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734921, 32.110126, 34.359901>,  <35.736790, 32.505249, 34.422142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734921, 32.110126, 34.359901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934932, 0.050897, -0.351157,
		0.354795, -0.147117, 0.923297,
		-0.004668, -0.987809, -0.155602,
		35.733521, 31.813784, 34.313221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452316, 32.398960, 34.494923>,  <35.736790, 32.505249, 34.422142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452316, 32.398960, 34.494923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284187, 32.075699, 34.329895>,  <36.183311, 31.881742, 34.230877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284187, 32.075699, 34.329895>,  <36.452316, 32.398960, 34.494923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284187, 32.075699, 34.329895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783139, -0.093452, -0.614785,
		0.458286, -0.581508, 0.672178,
		-0.420319, -0.808155, -0.412574,
		36.158092, 31.833252, 34.206123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870884, 31.791983, 34.514713>,  <36.452316, 32.398960, 34.494923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870884, 31.791983, 34.514713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619137, 31.755100, 34.206066>,  <36.468086, 31.732971, 34.020878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619137, 31.755100, 34.206066>,  <36.870884, 31.791983, 34.514713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619137, 31.755100, 34.206066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777097, -0.070472, -0.625423,
		0.003291, -0.993243, 0.116006,
		-0.629372, -0.092206, -0.771615,
		36.430325, 31.727438, 33.974583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938812, 31.235920, 34.068401>,  <36.870884, 31.791983, 34.514713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938812, 31.235920, 34.068401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852509, 31.598991, 33.924419>,  <36.800728, 31.816835, 33.838032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852509, 31.598991, 33.924419>,  <36.938812, 31.235920, 34.068401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852509, 31.598991, 33.924419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812608, -0.037487, -0.581604,
		-0.541404, -0.417985, -0.729500,
		-0.215755, 0.907680, -0.359954,
		36.787781, 31.871296, 33.816433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056778, 31.220053, 33.382652>,  <36.938812, 31.235920, 34.068401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056778, 31.220053, 33.382652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136921, 31.610043, 33.421177>,  <37.185009, 31.844036, 33.444294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136921, 31.610043, 33.421177>,  <37.056778, 31.220053, 33.382652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136921, 31.610043, 33.421177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625577, -0.051659, -0.778450,
		-0.753995, 0.216223, -0.620273,
		0.200361, 0.974976, 0.096314,
		37.197029, 31.902536, 33.450069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931282, 31.727755, 32.721573>,  <37.056778, 31.220053, 33.382652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931282, 31.727755, 32.721573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244717, 31.768644, 32.966702>,  <37.432777, 31.793179, 33.113777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244717, 31.768644, 32.966702>,  <36.931282, 31.727755, 32.721573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244717, 31.768644, 32.966702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607859, 0.077835, -0.790221,
		-0.128477, 0.991712, -0.001146,
		0.783582, 0.102222, 0.612821,
		37.479790, 31.799311, 33.150547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315296, 32.444267, 32.654282>,  <36.931282, 31.727755, 32.721573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315296, 32.444267, 32.654282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543121, 32.128906, 32.747257>,  <37.679817, 31.939690, 32.803043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543121, 32.128906, 32.747257>,  <37.315296, 32.444267, 32.654282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543121, 32.128906, 32.747257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447245, 0.060007, -0.892396,
		0.689618, 0.612229, 0.386786,
		0.569560, -0.788400, 0.232435,
		37.713989, 31.892385, 32.816986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901634, 32.632484, 32.373001>,  <37.315296, 32.444267, 32.654282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901634, 32.632484, 32.373001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923676, 32.233421, 32.389198>,  <37.936901, 31.993982, 32.398914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923676, 32.233421, 32.389198>,  <37.901634, 32.632484, 32.373001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923676, 32.233421, 32.389198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567467, -0.002078, -0.823394,
		0.821551, 0.068345, 0.566024,
		0.055099, -0.997660, 0.040491,
		37.940205, 31.934124, 32.401344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593239, 32.553806, 32.252575>,  <37.901634, 32.632484, 32.373001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593239, 32.553806, 32.252575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448013, 32.190712, 32.168488>,  <38.360878, 31.972855, 32.118034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448013, 32.190712, 32.168488>,  <38.593239, 32.553806, 32.252575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448013, 32.190712, 32.168488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542519, -0.022518, -0.839742,
		0.757533, -0.418929, 0.500642,
		-0.363065, -0.907740, -0.210219,
		38.339092, 31.918390, 32.105423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230598, 32.119583, 32.102116>,  <38.593239, 32.553806, 32.252575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230598, 32.119583, 32.102116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914871, 31.942806, 31.931623>,  <38.725437, 31.836740, 31.829329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914871, 31.942806, 31.931623>,  <39.230598, 32.119583, 32.102116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914871, 31.942806, 31.931623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482095, -0.016203, -0.875969,
		0.380221, -0.896897, 0.225847,
		-0.789314, -0.441942, -0.426229,
		38.678078, 31.810225, 31.803755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499096, 31.514307, 31.804865>,  <39.230598, 32.119583, 32.102116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499096, 31.514307, 31.804865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158218, 31.603182, 31.615379>,  <38.953693, 31.656507, 31.501688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158218, 31.603182, 31.615379>,  <39.499096, 31.514307, 31.804865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158218, 31.603182, 31.615379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474847, -0.051839, -0.878541,
		-0.219758, -0.973625, -0.061329,
		-0.852190, 0.222188, -0.473714,
		38.902561, 31.669838, 31.473265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535404, 31.139677, 31.164705>,  <39.499096, 31.514307, 31.804865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535404, 31.139677, 31.164705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264725, 31.426018, 31.095842>,  <39.102318, 31.597822, 31.054523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264725, 31.426018, 31.095842>,  <39.535404, 31.139677, 31.164705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264725, 31.426018, 31.095842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327626, 0.083372, -0.941122,
		-0.659349, -0.693259, -0.290949,
		-0.676698, 0.715850, -0.172158,
		39.061714, 31.640772, 31.044195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870960, 30.993954, 30.785736>,  <39.535404, 31.139677, 31.164705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870960, 30.993954, 30.785736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002193, 31.359020, 30.688244>,  <39.080933, 31.578060, 30.629747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002193, 31.359020, 30.688244>,  <38.870960, 30.993954, 30.785736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002193, 31.359020, 30.688244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116003, -0.294984, -0.948434,
		-0.937500, 0.282888, -0.202650,
		0.328080, 0.912666, -0.243732,
		39.100616, 31.632820, 30.615124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429565, 31.434845, 30.171259>,  <38.870960, 30.993954, 30.785736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429565, 31.434845, 30.171259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827137, 31.416077, 30.211071>,  <39.065681, 31.404816, 30.234959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827137, 31.416077, 30.211071>,  <38.429565, 31.434845, 30.171259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827137, 31.416077, 30.211071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076902, -0.350758, -0.933303,
		0.078703, 0.935290, -0.345019,
		0.993928, -0.046921, 0.099531,
		39.125317, 31.402000, 30.240931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690834, 31.737848, 29.562609>,  <38.429565, 31.434845, 30.171259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690834, 31.737848, 29.562609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958916, 31.484755, 29.717773>,  <39.119766, 31.332899, 29.810871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958916, 31.484755, 29.717773>,  <38.690834, 31.737848, 29.562609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958916, 31.484755, 29.717773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097084, -0.443433, -0.891034,
		0.735799, 0.634836, -0.235763,
		0.670205, -0.632733, 0.387910,
		39.159977, 31.294935, 29.834146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433140, 31.667603, 29.200176>,  <38.690834, 31.737848, 29.562609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433140, 31.667603, 29.200176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391758, 31.309834, 29.374212>,  <39.366928, 31.095171, 29.478634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391758, 31.309834, 29.374212>,  <39.433140, 31.667603, 29.200176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391758, 31.309834, 29.374212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370416, -0.440616, -0.817710,
		0.923087, 0.076567, 0.376893,
		-0.103455, -0.894424, 0.435088,
		39.360722, 31.041506, 29.504738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155670, 31.378901, 29.275486>,  <39.433140, 31.667603, 29.200176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155670, 31.378901, 29.275486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883862, 31.085457, 29.278828>,  <39.720776, 30.909391, 29.280832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883862, 31.085457, 29.278828>,  <40.155670, 31.378901, 29.275486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883862, 31.085457, 29.278828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453041, -0.428540, -0.781734,
		0.577067, -0.527419, 0.623557,
		-0.679520, -0.733609, 0.008354,
		39.680004, 30.865374, 29.281334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489273, 30.664660, 29.220242>,  <40.155670, 31.378901, 29.275486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489273, 30.664660, 29.220242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111176, 30.674103, 29.090042>,  <39.884315, 30.679770, 29.011923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111176, 30.674103, 29.090042>,  <40.489273, 30.664660, 29.220242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111176, 30.674103, 29.090042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291449, -0.387716, -0.874491,
		-0.146846, -0.921476, 0.359608,
		-0.945248, 0.023608, -0.325497,
		39.827602, 30.681185, 28.992393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453449, 29.982920, 28.872875>,  <40.489273, 30.664660, 29.220242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453449, 29.982920, 28.872875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162766, 30.229782, 28.752205>,  <39.988354, 30.377899, 28.679804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162766, 30.229782, 28.752205>,  <40.453449, 29.982920, 28.872875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162766, 30.229782, 28.752205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190460, -0.240920, -0.951674,
		-0.660010, -0.749050, 0.057536,
		-0.726713, 0.617155, -0.301674,
		39.944752, 30.414928, 28.661703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119907, 29.554131, 28.440765>,  <40.453449, 29.982920, 28.872875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119907, 29.554131, 28.440765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072975, 29.941010, 28.350639>,  <40.044815, 30.173136, 28.296564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072975, 29.941010, 28.350639>,  <40.119907, 29.554131, 28.440765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072975, 29.941010, 28.350639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143458, -0.207995, -0.967553,
		-0.982676, -0.145848, -0.114348,
		-0.117332, 0.967195, -0.225314,
		40.037777, 30.231169, 28.283045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751476, 29.520136, 27.888947>,  <40.119907, 29.554131, 28.440765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751476, 29.520136, 27.888947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910378, 29.886021, 27.859304>,  <40.005718, 30.105551, 27.841520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910378, 29.886021, 27.859304>,  <39.751476, 29.520136, 27.888947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910378, 29.886021, 27.859304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040969, -0.098345, -0.994309,
		-0.916793, 0.391959, -0.076543,
		0.397256, 0.914711, -0.074104,
		40.029552, 30.160435, 27.837072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360680, 29.798456, 27.293394>,  <39.751476, 29.520136, 27.888947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360680, 29.798456, 27.293394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697273, 29.996696, 27.379457>,  <39.899227, 30.115641, 27.431095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697273, 29.996696, 27.379457>,  <39.360680, 29.798456, 27.293394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697273, 29.996696, 27.379457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199001, 0.085934, -0.976224,
		-0.502305, 0.864290, -0.026313,
		0.841480, 0.495599, 0.215160,
		39.949718, 30.145376, 27.444006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322872, 30.321096, 26.839186>,  <39.360680, 29.798456, 27.293394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322872, 30.321096, 26.839186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708191, 30.325417, 26.946468>,  <39.939384, 30.328009, 27.010838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708191, 30.325417, 26.946468>,  <39.322872, 30.321096, 26.839186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708191, 30.325417, 26.946468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267657, 0.036816, -0.962811,
		-0.020274, 0.999264, 0.032573,
		0.963301, 0.010802, 0.268207,
		39.997181, 30.328657, 27.026930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590305, 30.874578, 26.408712>,  <39.322872, 30.321096, 26.839186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590305, 30.874578, 26.408712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914234, 30.679056, 26.538483>,  <40.108593, 30.561743, 26.616344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914234, 30.679056, 26.538483>,  <39.590305, 30.874578, 26.408712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914234, 30.679056, 26.538483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368118, -0.007209, -0.929751,
		0.456806, 0.872363, 0.174100,
		0.809825, -0.488805, 0.324426,
		40.157181, 30.532415, 26.635811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216137, 31.185713, 26.041916>,  <39.590305, 30.874578, 26.408712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216137, 31.185713, 26.041916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296879, 30.815393, 26.169762>,  <40.345322, 30.593203, 26.246469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296879, 30.815393, 26.169762>,  <40.216137, 31.185713, 26.041916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296879, 30.815393, 26.169762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403905, -0.218605, -0.888298,
		0.892254, 0.308398, 0.329809,
		0.201852, -0.925798, 0.319615,
		40.357433, 30.537655, 26.265646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948780, 31.085344, 25.963202>,  <40.216137, 31.185713, 26.041916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948780, 31.085344, 25.963202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758827, 30.733547, 25.975677>,  <40.644855, 30.522469, 25.983164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758827, 30.733547, 25.975677>,  <40.948780, 31.085344, 25.963202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758827, 30.733547, 25.975677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370390, -0.231893, -0.899465,
		0.798307, -0.415591, 0.435879,
		-0.474887, -0.879494, 0.031191,
		40.616360, 30.469700, 25.985035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235619, 30.760115, 25.471754>,  <40.948780, 31.085344, 25.963202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235619, 30.760115, 25.471754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946613, 30.487829, 25.520100>,  <40.773212, 30.324457, 25.549107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946613, 30.487829, 25.520100>,  <41.235619, 30.760115, 25.471754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946613, 30.487829, 25.520100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126921, -0.302447, -0.944678,
		0.679611, -0.667199, 0.304918,
		-0.722510, -0.680714, 0.120865,
		40.729858, 30.283615, 25.556358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490677, 30.205128, 25.125998>,  <41.235619, 30.760115, 25.471754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490677, 30.205128, 25.125998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096134, 30.151121, 25.163664>,  <40.859409, 30.118717, 25.186264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096134, 30.151121, 25.163664>,  <41.490677, 30.205128, 25.125998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096134, 30.151121, 25.163664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069350, -0.177968, -0.981589,
		0.149289, -0.974730, 0.166177,
		-0.986359, -0.135016, 0.094166,
		40.800228, 30.110617, 25.191914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389412, 29.808655, 24.556595>,  <41.490677, 30.205128, 25.125998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389412, 29.808655, 24.556595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009434, 29.895714, 24.646246>,  <40.781448, 29.947948, 24.700037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009434, 29.895714, 24.646246>,  <41.389412, 29.808655, 24.556595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009434, 29.895714, 24.646246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270659, -0.215028, -0.938353,
		-0.156033, -0.952047, 0.263172,
		-0.949946, 0.217644, 0.224129,
		40.724449, 29.961008, 24.713484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101456, 29.270428, 24.276564>,  <41.389412, 29.808655, 24.556595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101456, 29.270428, 24.276564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873634, 29.597670, 24.308348>,  <40.736942, 29.794014, 24.327417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873634, 29.597670, 24.308348>,  <41.101456, 29.270428, 24.276564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873634, 29.597670, 24.308348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146200, -0.005701, -0.989239,
		-0.808846, -0.575043, 0.122853,
		-0.569555, 0.818103, 0.079460,
		40.702766, 29.843102, 24.332186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507301, 29.138821, 23.874468>,  <41.101456, 29.270428, 24.276564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507301, 29.138821, 23.874468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494610, 29.536005, 23.920113>,  <40.486996, 29.774315, 23.947500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494610, 29.536005, 23.920113>,  <40.507301, 29.138821, 23.874468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494610, 29.536005, 23.920113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137388, 0.108753, -0.984529,
		-0.990009, -0.046919, 0.132970,
		-0.031732, 0.992961, 0.114113,
		40.485088, 29.833893, 23.954346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897625, 29.356577, 23.623264>,  <40.507301, 29.138821, 23.874468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897625, 29.356577, 23.623264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133137, 29.678253, 23.590734>,  <40.274445, 29.871260, 23.571217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133137, 29.678253, 23.590734>,  <39.897625, 29.356577, 23.623264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133137, 29.678253, 23.590734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136407, -0.000313, -0.990653,
		-0.796699, 0.594371, 0.109513,
		0.588781, 0.804190, -0.081326,
		40.309772, 29.919510, 23.566338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523212, 29.788641, 23.166729>,  <39.897625, 29.356577, 23.623264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523212, 29.788641, 23.166729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909962, 29.890678, 23.170231>,  <40.142014, 29.951900, 23.172331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909962, 29.890678, 23.170231>,  <39.523212, 29.788641, 23.166729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909962, 29.890678, 23.170231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005003, 0.053225, -0.998570,
		-0.255192, 0.965451, 0.052738,
		0.966877, 0.255091, 0.008752,
		40.200024, 29.967205, 23.172857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455795, 30.335901, 22.788223>,  <39.523212, 29.788641, 23.166729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455795, 30.335901, 22.788223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838516, 30.220051, 22.798368>,  <40.068150, 30.150539, 22.804457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838516, 30.220051, 22.798368>,  <39.455795, 30.335901, 22.788223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838516, 30.220051, 22.798368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093465, 0.223807, -0.970142,
		0.275302, 0.930606, 0.241209,
		0.956803, -0.289627, 0.025365,
		40.125557, 30.133163, 22.805979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746315, 30.861841, 22.289370>,  <39.455795, 30.335901, 22.788223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746315, 30.861841, 22.289370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018856, 30.570505, 22.318443>,  <40.182381, 30.395704, 22.335888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018856, 30.570505, 22.318443>,  <39.746315, 30.861841, 22.289370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018856, 30.570505, 22.318443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078807, -0.025726, -0.996558,
		0.727701, 0.684735, 0.039869,
		0.681352, -0.728338, 0.072683,
		40.223263, 30.352003, 22.340248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204136, 30.927837, 21.729734>,  <39.746315, 30.861841, 22.289370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204136, 30.927837, 21.729734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320576, 30.554390, 21.813272>,  <40.390442, 30.330322, 21.863396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320576, 30.554390, 21.813272>,  <40.204136, 30.927837, 21.729734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320576, 30.554390, 21.813272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095606, -0.188818, -0.977347,
		0.951903, 0.304475, 0.034294,
		0.291103, -0.933618, 0.208846,
		40.407906, 30.274305, 21.875927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889614, 30.799856, 21.379333>,  <40.204136, 30.927837, 21.729734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889614, 30.799856, 21.379333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674438, 30.468449, 21.441532>,  <40.545334, 30.269604, 21.478851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674438, 30.468449, 21.441532>,  <40.889614, 30.799856, 21.379333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674438, 30.468449, 21.441532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012004, -0.176914, -0.984153,
		0.842899, -0.531280, 0.085224,
		-0.537938, -0.828518, 0.155498,
		40.513058, 30.219893, 21.488182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312225, 30.379211, 21.015390>,  <40.889614, 30.799856, 21.379333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312225, 30.379211, 21.015390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946316, 30.234146, 21.086561>,  <40.726768, 30.147106, 21.129263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946316, 30.234146, 21.086561>,  <41.312225, 30.379211, 21.015390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946316, 30.234146, 21.086561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091955, -0.241943, -0.965923,
		0.393354, -0.899966, 0.187975,
		-0.914777, -0.362664, 0.177926,
		40.671883, 30.125347, 21.139938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262833, 29.794094, 20.644854>,  <41.312225, 30.379211, 21.015390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262833, 29.794094, 20.644854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874260, 29.861309, 20.711895>,  <40.641117, 29.901638, 20.752119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874260, 29.861309, 20.711895>,  <41.262833, 29.794094, 20.644854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874260, 29.861309, 20.711895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167400, 0.015477, -0.985768,
		-0.168242, -0.985659, 0.013095,
		-0.971428, 0.168039, 0.167603,
		40.582832, 29.911720, 20.762177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921913, 29.377930, 20.070017>,  <41.262833, 29.794094, 20.644854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921913, 29.377930, 20.070017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638493, 29.618176, 20.218184>,  <40.468441, 29.762323, 20.307083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638493, 29.618176, 20.218184>,  <40.921913, 29.377930, 20.070017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638493, 29.618176, 20.218184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507729, -0.069379, -0.858719,
		-0.490061, -0.796522, 0.354109,
		-0.708556, 0.600616, 0.370418,
		40.425926, 29.798361, 20.329309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303288, 29.025179, 19.848652>,  <40.921913, 29.377930, 20.070017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303288, 29.025179, 19.848652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209347, 29.404146, 19.935596>,  <40.152981, 29.631527, 19.987762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209347, 29.404146, 19.935596>,  <40.303288, 29.025179, 19.848652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209347, 29.404146, 19.935596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621143, 0.025726, -0.783275,
		-0.747679, -0.318968, 0.582439,
		-0.234856, 0.947416, 0.217360,
		40.138889, 29.688372, 20.000805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675449, 29.081121, 19.613787>,  <40.303288, 29.025179, 19.848652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675449, 29.081121, 19.613787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757874, 29.471224, 19.645830>,  <39.807327, 29.705284, 19.665056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757874, 29.471224, 19.645830>,  <39.675449, 29.081121, 19.613787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757874, 29.471224, 19.645830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599361, 0.190504, -0.777480,
		-0.773502, 0.112194, 0.623785,
		0.206062, 0.975254, 0.080111,
		39.819691, 29.763800, 19.669863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042320, 29.481909, 19.602646>,  <39.675449, 29.081121, 19.613787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042320, 29.481909, 19.602646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321751, 29.738869, 19.476589>,  <39.489410, 29.893044, 19.400955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321751, 29.738869, 19.476589>,  <39.042320, 29.481909, 19.602646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321751, 29.738869, 19.476589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632063, 0.347572, -0.692596,
		-0.335389, 0.683021, 0.648842,
		0.698577, 0.642399, -0.315141,
		39.531322, 29.931589, 19.382048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745140, 30.030396, 19.564266>,  <39.042320, 29.481909, 19.602646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745140, 30.030396, 19.564266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053173, 30.082880, 19.314547>,  <39.237995, 30.114370, 19.164715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053173, 30.082880, 19.314547>,  <38.745140, 30.030396, 19.564266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053173, 30.082880, 19.314547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636269, 0.228775, -0.736766,
		0.046152, 0.964596, 0.259663,
		0.770086, 0.131212, -0.624301,
		39.284199, 30.122244, 19.127256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539188, 30.630388, 19.103481>,  <38.745140, 30.030396, 19.564266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539188, 30.630388, 19.103481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819729, 30.434546, 18.896257>,  <38.988052, 30.317039, 18.771923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819729, 30.434546, 18.896257>,  <38.539188, 30.630388, 19.103481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819729, 30.434546, 18.896257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498754, 0.182172, -0.847383,
		0.509262, 0.852700, -0.116427,
		0.701354, -0.489608, -0.518061,
		39.030136, 30.287663, 18.740839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564438, 31.026033, 18.489721>,  <38.539188, 30.630388, 19.103481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564438, 31.026033, 18.489721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743984, 30.683250, 18.388420>,  <38.851711, 30.477581, 18.327641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743984, 30.683250, 18.388420>,  <38.564438, 31.026033, 18.489721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743984, 30.683250, 18.388420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359948, 0.086002, -0.929000,
		0.817896, 0.508157, -0.269857,
		0.448870, -0.856960, -0.253251,
		38.878647, 30.426163, 18.312445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848740, 31.207575, 17.906353>,  <38.564438, 31.026033, 18.489721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848740, 31.207575, 17.906353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827477, 30.810823, 17.860132>,  <38.814716, 30.572773, 17.832399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827477, 30.810823, 17.860132>,  <38.848740, 31.207575, 17.906353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827477, 30.810823, 17.860132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401696, 0.127182, -0.906898,
		0.914229, -0.001795, -0.405195,
		-0.053162, -0.991878, -0.115552,
		38.811527, 30.513260, 17.825466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135651, 31.124477, 17.260626>,  <38.848740, 31.207575, 17.906353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135651, 31.124477, 17.260626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918762, 30.800739, 17.350922>,  <38.788628, 30.606497, 17.405098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918762, 30.800739, 17.350922>,  <39.135651, 31.124477, 17.260626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918762, 30.800739, 17.350922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473419, 0.072320, -0.877863,
		0.694168, -0.582865, -0.422372,
		-0.542222, -0.809344, 0.225737,
		38.756096, 30.557936, 17.418642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286217, 30.534197, 16.838877>,  <39.135651, 31.124477, 17.260626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286217, 30.534197, 16.838877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908127, 30.527050, 16.969250>,  <38.681274, 30.522762, 17.047474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908127, 30.527050, 16.969250>,  <39.286217, 30.534197, 16.838877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908127, 30.527050, 16.969250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325886, 0.108752, -0.939133,
		-0.018666, -0.993908, -0.108617,
		-0.945224, -0.017867, 0.325931,
		38.624561, 30.521690, 17.067030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959396, 30.226179, 16.272108>,  <39.286217, 30.534197, 16.838877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959396, 30.226179, 16.272108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663193, 30.378139, 16.493855>,  <38.485470, 30.469315, 16.626904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663193, 30.378139, 16.493855>,  <38.959396, 30.226179, 16.272108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663193, 30.378139, 16.493855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519295, 0.200156, -0.830825,
		-0.426591, -0.903113, 0.049063,
		-0.740509, 0.379900, 0.554367,
		38.441040, 30.492109, 16.660164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386406, 29.827684, 16.178827>,  <38.959396, 30.226179, 16.272108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386406, 29.827684, 16.178827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252651, 30.183382, 16.303680>,  <38.172398, 30.396801, 16.378592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252651, 30.183382, 16.303680>,  <38.386406, 29.827684, 16.178827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252651, 30.183382, 16.303680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471629, 0.128846, -0.872333,
		-0.815935, -0.438909, 0.376310,
		-0.334388, 0.889246, 0.312132,
		38.152336, 30.450155, 16.397320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683975, 29.837442, 15.974063>,  <38.386406, 29.827684, 16.178827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683975, 29.837442, 15.974063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776756, 30.219114, 16.049683>,  <37.832424, 30.448116, 16.095055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776756, 30.219114, 16.049683>,  <37.683975, 29.837442, 15.974063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776756, 30.219114, 16.049683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629945, 0.295441, -0.718250,
		-0.741192, 0.047511, 0.669610,
		0.231955, 0.954179, 0.189049,
		37.846344, 30.505367, 16.106398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013359, 30.170578, 15.977270>,  <37.683975, 29.837442, 15.974063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013359, 30.170578, 15.977270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318180, 30.414516, 15.890216>,  <37.501072, 30.560881, 15.837983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318180, 30.414516, 15.890216>,  <37.013359, 30.170578, 15.977270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318180, 30.414516, 15.890216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482275, 0.310283, -0.819228,
		-0.432076, 0.729253, 0.530566,
		0.762051, 0.609847, -0.217635,
		37.546795, 30.597471, 15.824925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716160, 30.707695, 15.716108>,  <37.013359, 30.170578, 15.977270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716160, 30.707695, 15.716108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094402, 30.742847, 15.590820>,  <37.321346, 30.763939, 15.515648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094402, 30.742847, 15.590820>,  <36.716160, 30.707695, 15.716108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094402, 30.742847, 15.590820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318595, 0.444874, -0.837009,
		0.065784, 0.891271, 0.448675,
		0.945606, 0.087883, -0.313220,
		37.378082, 30.769213, 15.496855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639687, 31.360392, 15.421560>,  <36.716160, 30.707695, 15.716108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639687, 31.360392, 15.421560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967598, 31.192219, 15.266024>,  <37.164345, 31.091314, 15.172702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967598, 31.192219, 15.266024>,  <36.639687, 31.360392, 15.421560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967598, 31.192219, 15.266024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283575, 0.291886, -0.913448,
		0.497541, 0.859092, 0.120058,
		0.819779, -0.420432, -0.388842,
		37.213531, 31.066090, 15.149371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041779, 31.953024, 15.081380>,  <36.639687, 31.360392, 15.421560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041779, 31.953024, 15.081380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117081, 31.579226, 14.960528>,  <37.162262, 31.354946, 14.888018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117081, 31.579226, 14.960528>,  <37.041779, 31.953024, 15.081380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117081, 31.579226, 14.960528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382437, 0.213596, -0.898954,
		0.904601, 0.284775, -0.317176,
		0.188252, -0.934494, -0.302128,
		37.173557, 31.298878, 14.869890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165829, 32.034451, 14.305258>,  <37.041779, 31.953024, 15.081380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165829, 32.034451, 14.305258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114124, 31.639774, 14.344722>,  <37.083099, 31.402969, 14.368401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114124, 31.639774, 14.344722>,  <37.165829, 32.034451, 14.305258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114124, 31.639774, 14.344722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443209, -0.031515, -0.895864,
		0.887049, -0.159531, -0.433236,
		-0.129265, -0.986690, 0.098660,
		37.075344, 31.343767, 14.374320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299931, 31.836292, 13.627827>,  <37.165829, 32.034451, 14.305258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299931, 31.836292, 13.627827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101234, 31.551958, 13.827012>,  <36.982018, 31.381357, 13.946524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101234, 31.551958, 13.827012>,  <37.299931, 31.836292, 13.627827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101234, 31.551958, 13.827012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489311, -0.244506, -0.837133,
		0.716818, -0.659493, -0.226364,
		-0.496736, -0.710834, 0.497964,
		36.952213, 31.338709, 13.976401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338085, 31.258699, 13.184845>,  <37.299931, 31.836292, 13.627827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338085, 31.258699, 13.184845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026062, 31.194914, 13.426866>,  <36.838848, 31.156643, 13.572078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026062, 31.194914, 13.426866>,  <37.338085, 31.258699, 13.184845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026062, 31.194914, 13.426866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578833, -0.183330, -0.794571,
		0.237631, -0.970031, 0.050702,
		-0.780053, -0.159466, 0.605051,
		36.792046, 31.147074, 13.608381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862240, 30.688643, 13.037109>,  <37.338085, 31.258699, 13.184845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862240, 30.688643, 13.037109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629047, 30.947851, 13.233150>,  <36.489132, 31.103376, 13.350774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629047, 30.947851, 13.233150>,  <36.862240, 30.688643, 13.037109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629047, 30.947851, 13.233150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717182, -0.126964, -0.685223,
		-0.381816, -0.750963, 0.538769,
		-0.582981, 0.648024, 0.490100,
		36.454155, 31.142258, 13.380179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199497, 30.547867, 13.251722>,  <36.862240, 30.688643, 13.037109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199497, 30.547867, 13.251722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219227, 30.936581, 13.159464>,  <36.231064, 31.169809, 13.104109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219227, 30.936581, 13.159464>,  <36.199497, 30.547867, 13.251722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219227, 30.936581, 13.159464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737496, -0.120295, -0.664552,
		-0.673548, 0.202879, 0.710755,
		0.049323, 0.971787, -0.230647,
		36.234024, 31.228117, 13.090270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605247, 30.890984, 13.528417>,  <36.199497, 30.547867, 13.251722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605247, 30.890984, 13.528417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759613, 31.036337, 13.189237>,  <35.852234, 31.123549, 12.985728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759613, 31.036337, 13.189237>,  <35.605247, 30.890984, 13.528417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759613, 31.036337, 13.189237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798980, -0.327850, -0.504128,
		-0.461193, 0.872047, 0.163814,
		0.385917, 0.363385, -0.847950,
		35.875389, 31.145351, 12.934852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015636, 31.265907, 13.263620>,  <35.605247, 30.890984, 13.528417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015636, 31.265907, 13.263620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262970, 31.159306, 12.967879>,  <35.411369, 31.095345, 12.790435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262970, 31.159306, 12.967879>,  <35.015636, 31.265907, 13.263620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262970, 31.159306, 12.967879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785370, -0.174458, -0.593934,
		0.029299, 0.947913, -0.317177,
		0.618332, -0.266504, -0.739352,
		35.448471, 31.079355, 12.746074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993347, 30.535883, 13.341348>,  <35.015636, 31.265907, 13.263620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993347, 30.535883, 13.341348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196941, 30.634987, 13.011609>,  <35.319099, 30.694448, 12.813766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196941, 30.634987, 13.011609>,  <34.993347, 30.535883, 13.341348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196941, 30.634987, 13.011609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600050, -0.584499, -0.546169,
		-0.617149, 0.772642, -0.148835,
		0.508987, 0.247759, -0.824347,
		35.349636, 30.709314, 12.764305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427189, 30.595507, 12.921000>,  <34.993347, 30.535883, 13.341348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427189, 30.595507, 12.921000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785507, 30.547762, 12.749747>,  <35.000500, 30.519115, 12.646996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785507, 30.547762, 12.749747>,  <34.427189, 30.595507, 12.921000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785507, 30.547762, 12.749747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373020, -0.725655, -0.578170,
		-0.241665, 0.677626, -0.694565,
		0.895798, -0.119363, -0.428134,
		35.054245, 30.511953, 12.621307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391361, 30.456884, 12.246855>,  <34.427189, 30.595507, 12.921000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391361, 30.456884, 12.246855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287201, 30.187269, 12.523365>,  <34.224705, 30.025499, 12.689271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287201, 30.187269, 12.523365>,  <34.391361, 30.456884, 12.246855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287201, 30.187269, 12.523365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387813, 0.728701, 0.564443,
		-0.884190, -0.121104, -0.451156,
		-0.260401, -0.674039, 0.691276,
		34.209080, 29.985058, 12.730748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699440, 30.618494, 12.531822>,  <34.391361, 30.456884, 12.246855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699440, 30.618494, 12.531822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913349, 30.402866, 12.792105>,  <34.041695, 30.273489, 12.948275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913349, 30.402866, 12.792105>,  <33.699440, 30.618494, 12.531822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913349, 30.402866, 12.792105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476324, 0.443750, 0.759079,
		-0.697947, -0.715885, -0.019464,
		0.534776, -0.539069, 0.650707,
		34.073784, 30.241146, 12.987317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498158, 30.767187, 13.269536>,  <33.699440, 30.618494, 12.531822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498158, 30.767187, 13.269536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773212, 30.503862, 13.392029>,  <33.938248, 30.345867, 13.465525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773212, 30.503862, 13.392029>,  <33.498158, 30.767187, 13.269536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773212, 30.503862, 13.392029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102735, 0.329311, 0.938616,
		-0.718747, -0.676890, 0.158815,
		0.687639, -0.658311, 0.306232,
		33.979504, 30.306370, 13.483898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323811, 30.479267, 13.952807>,  <33.498158, 30.767187, 13.269536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323811, 30.479267, 13.952807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709877, 30.377054, 13.930335>,  <33.941517, 30.315727, 13.916852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709877, 30.377054, 13.930335>,  <33.323811, 30.479267, 13.952807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709877, 30.377054, 13.930335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086296, 0.108206, 0.990376,
		-0.246995, -0.960726, 0.126489,
		0.965167, -0.255534, -0.056181,
		33.999428, 30.300394, 13.913481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419971, 30.235893, 14.526223>,  <33.323811, 30.479267, 13.952807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419971, 30.235893, 14.526223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807091, 30.259928, 14.428445>,  <34.039364, 30.274347, 14.369778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807091, 30.259928, 14.428445>,  <33.419971, 30.235893, 14.526223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807091, 30.259928, 14.428445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238137, 0.096179, 0.966458,
		0.081567, -0.993550, 0.078777,
		0.967800, 0.060071, -0.244446,
		34.097431, 30.277954, 14.355111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743290, 29.867584, 15.018683>,  <33.419971, 30.235893, 14.526223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743290, 29.867584, 15.018683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026340, 30.093182, 14.848426>,  <34.196171, 30.228540, 14.746271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026340, 30.093182, 14.848426>,  <33.743290, 29.867584, 15.018683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026340, 30.093182, 14.848426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306921, 0.297252, 0.904124,
		0.636442, -0.770425, 0.037244,
		0.707630, 0.563992, -0.425643,
		34.238628, 30.262379, 14.720733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389755, 29.681488, 15.331629>,  <33.743290, 29.867584, 15.018683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389755, 29.681488, 15.331629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438026, 30.052017, 15.188876>,  <34.466988, 30.274334, 15.103225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438026, 30.052017, 15.188876>,  <34.389755, 29.681488, 15.331629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438026, 30.052017, 15.188876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431239, 0.274896, 0.859340,
		0.894131, -0.257604, -0.366292,
		0.120677, 0.926322, -0.356882,
		34.474228, 30.329914, 15.081812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060181, 29.823259, 15.455742>,  <34.389755, 29.681488, 15.331629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060181, 29.823259, 15.455742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910709, 30.187275, 15.383967>,  <34.821026, 30.405684, 15.340902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910709, 30.187275, 15.383967>,  <35.060181, 29.823259, 15.455742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910709, 30.187275, 15.383967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502244, 0.361148, 0.785699,
		0.779820, 0.203475, -0.592013,
		-0.373674, 0.910039, -0.179436,
		34.798607, 30.460287, 15.330136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570663, 30.368532, 15.619761>,  <35.060181, 29.823259, 15.455742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570663, 30.368532, 15.619761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241009, 30.591721, 15.658682>,  <35.043217, 30.725634, 15.682034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241009, 30.591721, 15.658682>,  <35.570663, 30.368532, 15.619761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241009, 30.591721, 15.658682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353302, 0.372160, 0.858298,
		0.442695, 0.741730, -0.503843,
		-0.824136, 0.557972, 0.097301,
		34.993767, 30.759111, 15.687872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765381, 31.055061, 15.659125>,  <35.570663, 30.368532, 15.619761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765381, 31.055061, 15.659125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405506, 31.052338, 15.833717>,  <35.189583, 31.050703, 15.938473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405506, 31.052338, 15.833717>,  <35.765381, 31.055061, 15.659125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405506, 31.052338, 15.833717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365068, 0.536489, 0.760858,
		-0.239346, 0.843880, -0.480188,
		-0.899688, -0.006807, 0.436480,
		35.135601, 31.050295, 15.964662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639675, 31.711491, 15.977364>,  <35.765381, 31.055061, 15.659125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639675, 31.711491, 15.977364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386311, 31.475172, 16.177263>,  <35.234291, 31.333380, 16.297203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386311, 31.475172, 16.177263>,  <35.639675, 31.711491, 15.977364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386311, 31.475172, 16.177263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168701, 0.524858, 0.834304,
		-0.755202, 0.612766, -0.232783,
		-0.633411, -0.590797, 0.499748,
		35.196285, 31.297934, 16.327188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359661, 32.190155, 16.490534>,  <35.639675, 31.711491, 15.977364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359661, 32.190155, 16.490534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288109, 31.815962, 16.612432>,  <35.245178, 31.591446, 16.685572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288109, 31.815962, 16.612432>,  <35.359661, 32.190155, 16.490534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288109, 31.815962, 16.612432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187486, 0.271656, 0.943956,
		-0.965843, 0.225989, 0.126797,
		-0.178878, -0.935485, 0.304746,
		35.234444, 31.535316, 16.703856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889950, 32.318081, 17.030783>,  <35.359661, 32.190155, 16.490534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889950, 32.318081, 17.030783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051975, 31.957005, 17.088860>,  <35.149189, 31.740360, 17.123705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051975, 31.957005, 17.088860>,  <34.889950, 32.318081, 17.030783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051975, 31.957005, 17.088860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108653, 0.205204, 0.972669,
		-0.907811, -0.378213, 0.181200,
		0.405060, -0.902688, 0.145193,
		35.173492, 31.686197, 17.132418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497410, 31.959391, 17.542780>,  <34.889950, 32.318081, 17.030783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497410, 31.959391, 17.542780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869289, 31.812065, 17.541962>,  <35.092419, 31.723669, 17.541471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869289, 31.812065, 17.541962>,  <34.497410, 31.959391, 17.542780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869289, 31.812065, 17.541962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106021, 0.262292, 0.959147,
		-0.352733, -0.891934, 0.282902,
		0.929698, -0.368316, -0.002044,
		35.148197, 31.701571, 17.541348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557159, 31.518433, 18.171280>,  <34.497410, 31.959391, 17.542780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557159, 31.518433, 18.171280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934380, 31.589972, 18.059084>,  <35.160709, 31.632895, 17.991766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934380, 31.589972, 18.059084>,  <34.557159, 31.518433, 18.171280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934380, 31.589972, 18.059084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241403, 0.212206, 0.946939,
		0.228891, -0.960717, 0.156943,
		0.943045, 0.178860, -0.280492,
		35.217293, 31.643625, 17.974937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968925, 31.105457, 18.631809>,  <34.557159, 31.518433, 18.171280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968925, 31.105457, 18.631809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216160, 31.395067, 18.509327>,  <35.364498, 31.568834, 18.435839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216160, 31.395067, 18.509327>,  <34.968925, 31.105457, 18.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216160, 31.395067, 18.509327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255594, 0.183263, 0.949256,
		0.743402, -0.664982, -0.071785,
		0.618082, 0.724026, -0.306203,
		35.401585, 31.612274, 18.417465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518639, 31.013582, 19.054028>,  <34.968925, 31.105457, 18.631809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518639, 31.013582, 19.054028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598660, 31.370907, 18.893047>,  <35.646671, 31.585302, 18.796459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598660, 31.370907, 18.893047>,  <35.518639, 31.013582, 19.054028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598660, 31.370907, 18.893047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536765, 0.243706, 0.807769,
		0.819671, -0.377622, -0.430745,
		0.200056, 0.893314, -0.402453,
		35.658676, 31.638901, 18.772312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229630, 31.111103, 18.991055>,  <35.518639, 31.013582, 19.054028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229630, 31.111103, 18.991055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063324, 31.474827, 18.997932>,  <35.963543, 31.693062, 19.002058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063324, 31.474827, 18.997932>,  <36.229630, 31.111103, 18.991055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063324, 31.474827, 18.997932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604423, 0.262134, 0.752302,
		0.679569, 0.323171, -0.658594,
		-0.415762, 0.909311, 0.017194,
		35.938595, 31.747620, 19.003090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785553, 31.559647, 18.958010>,  <36.229630, 31.111103, 18.991055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785553, 31.559647, 18.958010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476280, 31.754272, 19.120708>,  <36.290714, 31.871048, 19.218328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476280, 31.754272, 19.120708>,  <36.785553, 31.559647, 18.958010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476280, 31.754272, 19.120708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566514, 0.241641, 0.787827,
		0.285040, 0.839563, -0.462478,
		-0.773184, 0.486563, 0.406747,
		36.244324, 31.900242, 19.242733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079346, 32.160652, 19.327353>,  <36.785553, 31.559647, 18.958010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079346, 32.160652, 19.327353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721695, 32.096775, 19.494699>,  <36.507103, 32.058449, 19.595108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721695, 32.096775, 19.494699>,  <37.079346, 32.160652, 19.327353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721695, 32.096775, 19.494699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404663, 0.111990, 0.907582,
		-0.191787, 0.980794, -0.035512,
		-0.894128, -0.159692, 0.418370,
		36.453457, 32.048866, 19.620211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989964, 32.772251, 19.878397>,  <37.079346, 32.160652, 19.327353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989964, 32.772251, 19.878397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733974, 32.475372, 19.957981>,  <36.580383, 32.297245, 20.005732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733974, 32.475372, 19.957981>,  <36.989964, 32.772251, 19.878397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733974, 32.475372, 19.957981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253797, 0.040226, 0.966421,
		-0.725277, 0.668974, 0.162624,
		-0.639969, -0.742196, 0.198959,
		36.541985, 32.252712, 20.017670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983170, 32.837948, 20.524731>,  <36.989964, 32.772251, 19.878397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983170, 32.837948, 20.524731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788792, 32.489525, 20.496111>,  <36.672165, 32.280472, 20.478939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788792, 32.489525, 20.496111>,  <36.983170, 32.837948, 20.524731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788792, 32.489525, 20.496111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304796, -0.245627, 0.920199,
		-0.819117, 0.425362, 0.384856,
		-0.485949, -0.871054, -0.071549,
		36.643005, 32.228210, 20.474646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525402, 32.772476, 21.153040>,  <36.983170, 32.837948, 20.524731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525402, 32.772476, 21.153040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638859, 32.416809, 21.009415>,  <36.706932, 32.203407, 20.923239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638859, 32.416809, 21.009415>,  <36.525402, 32.772476, 21.153040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638859, 32.416809, 21.009415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345700, -0.254449, 0.903187,
		-0.894450, -0.380307, 0.235215,
		0.283638, -0.889169, -0.359064,
		36.723949, 32.150059, 20.901695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266083, 32.418259, 21.616093>,  <36.525402, 32.772476, 21.153040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266083, 32.418259, 21.616093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507141, 32.151257, 21.441164>,  <36.651775, 31.991055, 21.336206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507141, 32.151257, 21.441164>,  <36.266083, 32.418259, 21.616093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507141, 32.151257, 21.441164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166023, -0.431153, 0.886872,
		-0.780545, -0.607078, -0.149013,
		0.602648, -0.667505, -0.437324,
		36.687935, 31.951006, 21.309967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135284, 31.817513, 22.001873>,  <36.266083, 32.418259, 21.616093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135284, 31.817513, 22.001873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494568, 31.749140, 21.839888>,  <36.710140, 31.708117, 21.742697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494568, 31.749140, 21.839888>,  <36.135284, 31.817513, 22.001873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494568, 31.749140, 21.839888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339297, -0.316092, 0.885982,
		-0.279444, -0.933204, -0.225923,
		0.898214, -0.170927, -0.404963,
		36.764030, 31.697861, 21.718399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394592, 31.180576, 22.148247>,  <36.135284, 31.817513, 22.001873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394592, 31.180576, 22.148247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715591, 31.399172, 22.052462>,  <36.908192, 31.530329, 21.994989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715591, 31.399172, 22.052462>,  <36.394592, 31.180576, 22.148247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715591, 31.399172, 22.052462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386160, -0.169771, 0.906674,
		0.454832, -0.820079, -0.347272,
		0.802501, 0.546487, -0.239464,
		36.956341, 31.563118, 21.980621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965988, 30.779432, 22.429882>,  <36.394592, 31.180576, 22.148247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965988, 30.779432, 22.429882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117935, 31.147652, 22.393456>,  <37.209103, 31.368584, 22.371599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117935, 31.147652, 22.393456>,  <36.965988, 30.779432, 22.429882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117935, 31.147652, 22.393456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457354, -0.101327, 0.883493,
		0.804071, -0.377258, -0.459507,
		0.379865, 0.920548, -0.091067,
		37.231895, 31.423817, 22.366135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590546, 30.734964, 22.796780>,  <36.965988, 30.779432, 22.429882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590546, 30.734964, 22.796780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532600, 31.128468, 22.754387>,  <37.497833, 31.364571, 22.728951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532600, 31.128468, 22.754387>,  <37.590546, 30.734964, 22.796780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532600, 31.128468, 22.754387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345422, 0.150655, 0.926276,
		0.927199, 0.097577, -0.361636,
		-0.144866, 0.983759, -0.105982,
		37.489140, 31.423595, 22.722591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140236, 31.109911, 22.996204>,  <37.590546, 30.734964, 22.796780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140236, 31.109911, 22.996204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846359, 31.374655, 23.055773>,  <37.670033, 31.533501, 23.091513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846359, 31.374655, 23.055773>,  <38.140236, 31.109911, 22.996204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846359, 31.374655, 23.055773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250710, 0.060914, 0.966144,
		0.630378, 0.747151, -0.210688,
		-0.734689, 0.661857, 0.148919,
		37.625954, 31.573212, 23.100449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432690, 31.616104, 23.406054>,  <38.140236, 31.109911, 22.996204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432690, 31.616104, 23.406054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035908, 31.646601, 23.446472>,  <37.797840, 31.664898, 23.470724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035908, 31.646601, 23.446472>,  <38.432690, 31.616104, 23.406054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035908, 31.646601, 23.446472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106326, 0.068688, 0.991956,
		0.068688, 0.994721, -0.076242,
		-0.991956, 0.076242, 0.101047,
		37.738319, 31.669474, 23.476786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418312, 32.138630, 23.941267>,  <38.432690, 31.616104, 23.406054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418312, 32.138630, 23.941267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050663, 31.982750, 23.918142>,  <37.830074, 31.889221, 23.904266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050663, 31.982750, 23.918142>,  <38.418312, 32.138630, 23.941267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050663, 31.982750, 23.918142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153668, 0.219503, 0.963434,
		-0.362760, 0.894401, -0.261635,
		-0.919126, -0.389700, -0.057814,
		37.774925, 31.865841, 23.900799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917393, 32.622402, 24.250254>,  <38.418312, 32.138630, 23.941267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917393, 32.622402, 24.250254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768543, 32.251499, 24.266840>,  <37.679234, 32.028957, 24.276793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768543, 32.251499, 24.266840>,  <37.917393, 32.622402, 24.250254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768543, 32.251499, 24.266840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312403, 0.167191, 0.935121,
		-0.874030, 0.335027, -0.351893,
		-0.372124, -0.927256, 0.041466,
		37.656906, 31.973322, 24.279280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526241, 32.703247, 24.853712>,  <37.917393, 32.622402, 24.250254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526241, 32.703247, 24.853712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505314, 32.305576, 24.816023>,  <37.492756, 32.066975, 24.793409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505314, 32.305576, 24.816023>,  <37.526241, 32.703247, 24.853712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505314, 32.305576, 24.816023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264361, -0.077196, 0.961329,
		-0.963004, 0.075205, -0.258782,
		-0.052320, -0.994176, -0.094221,
		37.489616, 32.007324, 24.787756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836147, 32.474041, 25.059189>,  <37.526241, 32.703247, 24.853712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836147, 32.474041, 25.059189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099449, 32.174431, 25.089268>,  <37.257431, 31.994665, 25.107315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099449, 32.174431, 25.089268>,  <36.836147, 32.474041, 25.059189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099449, 32.174431, 25.089268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250202, -0.123475, 0.960288,
		-0.709997, -0.650932, -0.268686,
		0.658258, -0.749027, 0.075197,
		37.296928, 31.949722, 25.111826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580910, 32.058487, 25.626472>,  <36.836147, 32.474041, 25.059189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580910, 32.058487, 25.626472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937744, 31.886372, 25.571289>,  <37.151844, 31.783102, 25.538179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937744, 31.886372, 25.571289>,  <36.580910, 32.058487, 25.626472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937744, 31.886372, 25.571289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004584, -0.296677, 0.954967,
		-0.451846, -0.852543, -0.262689,
		0.892085, -0.430294, -0.137960,
		37.205368, 31.757284, 25.529902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502659, 31.302837, 25.841333>,  <36.580910, 32.058487, 25.626472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502659, 31.302837, 25.841333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876339, 31.444641, 25.857306>,  <37.100548, 31.529724, 25.866890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876339, 31.444641, 25.857306>,  <36.502659, 31.302837, 25.841333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876339, 31.444641, 25.857306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032284, -0.195482, 0.980176,
		0.355288, -0.914390, -0.194064,
		0.934199, 0.354510, 0.039932,
		37.156597, 31.550995, 25.869286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857479, 30.944477, 26.288223>,  <36.502659, 31.302837, 25.841333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857479, 30.944477, 26.288223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113354, 31.251932, 26.287766>,  <37.266876, 31.436405, 26.287491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113354, 31.251932, 26.287766>,  <36.857479, 30.944477, 26.288223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113354, 31.251932, 26.287766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068077, -0.055171, 0.996153,
		0.765618, -0.637301, -0.087619,
		0.639683, 0.768638, -0.001146,
		37.305260, 31.482523, 26.287422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454556, 30.703732, 26.687876>,  <36.857479, 30.944477, 26.288223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454556, 30.703732, 26.687876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488567, 31.101990, 26.703176>,  <37.508976, 31.340944, 26.712357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488567, 31.101990, 26.703176>,  <37.454556, 30.703732, 26.687876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488567, 31.101990, 26.703176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066925, -0.032598, 0.997225,
		0.994128, -0.087357, 0.063862,
		0.085033, 0.995644, 0.038253,
		37.514076, 31.400682, 26.714653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047535, 30.883020, 27.049715>,  <37.454556, 30.703732, 26.687876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047535, 30.883020, 27.049715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824436, 31.213144, 27.085001>,  <37.690575, 31.411219, 27.106173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824436, 31.213144, 27.085001>,  <38.047535, 30.883020, 27.049715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824436, 31.213144, 27.085001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206346, 0.034932, 0.977855,
		0.803951, 0.563601, -0.189782,
		-0.557750, 0.825308, 0.088214,
		37.657112, 31.460737, 27.111465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334099, 31.182592, 27.512997>,  <38.047535, 30.883020, 27.049715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334099, 31.182592, 27.512997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000351, 31.402397, 27.530279>,  <37.800102, 31.534279, 27.540649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000351, 31.402397, 27.530279>,  <38.334099, 31.182592, 27.512997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000351, 31.402397, 27.530279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095221, 0.066489, 0.993233,
		0.542919, 0.832837, -0.107801,
		-0.834369, 0.549510, 0.043206,
		37.750042, 31.567249, 27.543242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518360, 31.721704, 27.838528>,  <38.334099, 31.182592, 27.512997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518360, 31.721704, 27.838528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119965, 31.737209, 27.870808>,  <37.880928, 31.746511, 27.890177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119965, 31.737209, 27.870808>,  <38.518360, 31.721704, 27.838528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119965, 31.737209, 27.870808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083838, 0.087566, 0.992625,
		0.031409, 0.995404, -0.090464,
		-0.995984, 0.038762, 0.080702,
		37.821171, 31.748838, 27.895018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410038, 32.306023, 28.288401>,  <38.518360, 31.721704, 27.838528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410038, 32.306023, 28.288401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091614, 32.064877, 28.309736>,  <37.900558, 31.920191, 28.322538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091614, 32.064877, 28.309736>,  <38.410038, 32.306023, 28.288401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091614, 32.064877, 28.309736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009727, 0.100868, 0.994852,
		-0.605138, 0.791444, -0.086161,
		-0.796061, -0.602861, 0.053341,
		37.852795, 31.884018, 28.325739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941788, 32.659882, 28.767397>,  <38.410038, 32.306023, 28.288401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941788, 32.659882, 28.767397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819187, 32.279137, 28.765768>,  <37.745625, 32.050690, 28.764790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819187, 32.279137, 28.765768>,  <37.941788, 32.659882, 28.767397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819187, 32.279137, 28.765768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069827, 0.018216, 0.997393,
		-0.949305, 0.305989, -0.072049,
		-0.306504, -0.951861, -0.004074,
		37.727238, 31.993578, 28.764545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230145, 32.584461, 29.075129>,  <37.941788, 32.659882, 28.767397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230145, 32.584461, 29.075129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454933, 32.256035, 29.115204>,  <37.589806, 32.058979, 29.139248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454933, 32.256035, 29.115204>,  <37.230145, 32.584461, 29.075129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454933, 32.256035, 29.115204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117622, 0.040567, 0.992229,
		-0.818749, -0.569391, -0.073778,
		0.561974, -0.821065, 0.100187,
		37.623524, 32.009716, 29.145260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697266, 32.990475, 28.636940>,  <37.230145, 32.584461, 29.075129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697266, 32.990475, 28.636940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690022, 33.352551, 28.806791>,  <36.685673, 33.569794, 28.908703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690022, 33.352551, 28.806791>,  <36.697266, 32.990475, 28.636940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690022, 33.352551, 28.806791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917109, 0.154110, -0.367643,
		-0.398225, -0.396089, 0.827363,
		-0.018114, 0.905187, 0.424627,
		36.684586, 33.624107, 28.934179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055656, 33.054790, 28.847782>,  <36.697266, 32.990475, 28.636940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055656, 33.054790, 28.847782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174778, 33.435009, 28.883064>,  <36.246250, 33.663139, 28.904234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174778, 33.435009, 28.883064>,  <36.055656, 33.054790, 28.847782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174778, 33.435009, 28.883064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858665, 0.307101, -0.410345,
		-0.417138, 0.046465, 0.907655,
		0.297808, 0.950542, 0.088205,
		36.264122, 33.720173, 28.909527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502304, 33.452053, 29.231009>,  <36.055656, 33.054790, 28.847782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502304, 33.452053, 29.231009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723419, 33.675514, 28.983673>,  <35.856087, 33.809589, 28.835272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723419, 33.675514, 28.983673>,  <35.502304, 33.452053, 29.231009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723419, 33.675514, 28.983673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832159, 0.330818, -0.445052,
		-0.044070, 0.760573, 0.647755,
		0.552783, 0.558649, -0.618338,
		35.889256, 33.843109, 28.798172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007118, 33.930862, 29.041298>,  <35.502304, 33.452053, 29.231009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007118, 33.930862, 29.041298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308006, 33.961143, 28.779478>,  <35.488541, 33.979313, 28.622387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308006, 33.961143, 28.779478>,  <35.007118, 33.930862, 29.041298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308006, 33.961143, 28.779478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640682, 0.316082, -0.699728,
		0.153920, 0.945707, 0.286264,
		0.752220, 0.075702, -0.654548,
		35.533672, 33.983852, 28.583113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827751, 34.418343, 28.537630>,  <35.007118, 33.930862, 29.041298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827751, 34.418343, 28.537630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138882, 34.261700, 28.341011>,  <35.325562, 34.167713, 28.223040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138882, 34.261700, 28.341011>,  <34.827751, 34.418343, 28.537630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138882, 34.261700, 28.341011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432983, 0.232987, -0.870771,
		0.455529, 0.890145, 0.011663,
		0.777830, -0.391611, -0.491550,
		35.372231, 34.144215, 28.193546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966457, 34.948811, 28.050323>,  <34.827751, 34.418343, 28.537630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966457, 34.948811, 28.050323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177181, 34.639534, 27.909100>,  <35.303616, 34.453968, 27.824366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177181, 34.639534, 27.909100>,  <34.966457, 34.948811, 28.050323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177181, 34.639534, 27.909100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298308, 0.220769, -0.928587,
		0.795918, 0.594509, -0.114346,
		0.526809, -0.773189, -0.353060,
		35.335224, 34.407578, 27.803181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401394, 35.223919, 27.432077>,  <34.966457, 34.948811, 28.050323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401394, 35.223919, 27.432077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398228, 34.826084, 27.390635>,  <35.396328, 34.587383, 27.365768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398228, 34.826084, 27.390635>,  <35.401394, 35.223919, 27.432077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398228, 34.826084, 27.390635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211699, 0.102927, -0.971900,
		0.977303, 0.014239, -0.211368,
		-0.007917, -0.994587, -0.103605,
		35.395851, 34.527706, 27.359552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792439, 35.066048, 26.873396>,  <35.401394, 35.223919, 27.432077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792439, 35.066048, 26.873396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541882, 34.756657, 26.912107>,  <35.391548, 34.571022, 26.935333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541882, 34.756657, 26.912107>,  <35.792439, 35.066048, 26.873396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541882, 34.756657, 26.912107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240239, 0.073447, -0.967931,
		0.741565, -0.629554, -0.231826,
		-0.626392, -0.773478, 0.096778,
		35.353966, 34.524612, 26.941141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998558, 34.690979, 26.345047>,  <35.792439, 35.066048, 26.873396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998558, 34.690979, 26.345047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625946, 34.582474, 26.441935>,  <35.402378, 34.517368, 26.500067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625946, 34.582474, 26.441935>,  <35.998558, 34.690979, 26.345047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625946, 34.582474, 26.441935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255951, 0.015878, -0.966559,
		0.258350, -0.962373, -0.084222,
		-0.931528, -0.271267, 0.242218,
		35.346489, 34.501095, 26.514601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802574, 34.189480, 25.846121>,  <35.998558, 34.690979, 26.345047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802574, 34.189480, 25.846121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448563, 34.299526, 25.996336>,  <35.236156, 34.365555, 26.086466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448563, 34.299526, 25.996336>,  <35.802574, 34.189480, 25.846121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448563, 34.299526, 25.996336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424399, -0.145293, -0.893742,
		-0.191326, -0.950367, 0.245350,
		-0.885031, 0.275123, 0.375536,
		35.183052, 34.382061, 26.108997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296371, 33.591648, 25.768076>,  <35.802574, 34.189480, 25.846121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296371, 33.591648, 25.768076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090584, 33.932384, 25.807440>,  <34.967110, 34.136826, 25.831059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090584, 33.932384, 25.807440>,  <35.296371, 33.591648, 25.768076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090584, 33.932384, 25.807440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548086, -0.238396, -0.801729,
		-0.659488, -0.466400, 0.589531,
		-0.514468, 0.851844, 0.098408,
		34.936245, 34.187939, 25.836962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628609, 33.396736, 25.535679>,  <35.296371, 33.591648, 25.768076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628609, 33.396736, 25.535679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613365, 33.795391, 25.506687>,  <34.604218, 34.034584, 25.489292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613365, 33.795391, 25.506687>,  <34.628609, 33.396736, 25.535679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613365, 33.795391, 25.506687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453477, -0.081880, -0.887499,
		-0.890453, -0.000954, 0.455074,
		-0.038108, 0.996642, -0.072478,
		34.601933, 34.094383, 25.484943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980679, 33.600281, 25.309433>,  <34.628609, 33.396736, 25.535679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980679, 33.600281, 25.309433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226337, 33.896687, 25.200823>,  <34.373734, 34.074528, 25.135656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226337, 33.896687, 25.200823>,  <33.980679, 33.600281, 25.309433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226337, 33.896687, 25.200823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406314, 0.001941, -0.913731,
		-0.676557, 0.671491, 0.302275,
		0.614149, 0.741010, -0.271523,
		34.410583, 34.118988, 25.119366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589447, 33.959938, 24.857330>,  <33.980679, 33.600281, 25.309433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589447, 33.959938, 24.857330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958092, 34.095234, 24.781204>,  <34.179279, 34.176411, 24.735529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958092, 34.095234, 24.781204>,  <33.589447, 33.959938, 24.857330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958092, 34.095234, 24.781204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276918, 0.229521, -0.933079,
		-0.271919, 0.912643, 0.305194,
		0.921616, 0.338236, -0.190317,
		34.234577, 34.196705, 24.724110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447441, 34.577477, 24.465620>,  <33.589447, 33.959938, 24.857330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447441, 34.577477, 24.465620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820797, 34.471470, 24.368828>,  <34.044811, 34.407864, 24.310753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820797, 34.471470, 24.368828>,  <33.447441, 34.577477, 24.465620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820797, 34.471470, 24.368828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195859, 0.188826, -0.962280,
		0.300715, 0.945574, 0.124341,
		0.933386, -0.265019, -0.241982,
		34.100811, 34.391964, 24.296234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563496, 34.861427, 23.880283>,  <33.447441, 34.577477, 24.465620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563496, 34.861427, 23.880283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846283, 34.578747, 23.869209>,  <34.015957, 34.409138, 23.862564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846283, 34.578747, 23.869209>,  <33.563496, 34.861427, 23.880283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846283, 34.578747, 23.869209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139392, -0.100851, -0.985088,
		0.693374, 0.700284, -0.169808,
		0.706967, -0.706704, -0.027686,
		34.058372, 34.366737, 23.860903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883175, 35.119633, 23.332619>,  <33.563496, 34.861427, 23.880283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883175, 35.119633, 23.332619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993649, 34.739048, 23.386950>,  <34.059933, 34.510696, 23.419548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993649, 34.739048, 23.386950>,  <33.883175, 35.119633, 23.332619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993649, 34.739048, 23.386950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126449, -0.104125, -0.986493,
		0.952749, 0.289633, 0.091553,
		0.276188, -0.951457, 0.135829,
		34.076504, 34.453609, 23.427698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329380, 34.993576, 22.851913>,  <33.883175, 35.119633, 23.332619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329380, 34.993576, 22.851913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224453, 34.621544, 22.954777>,  <34.161495, 34.398323, 23.016495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224453, 34.621544, 22.954777>,  <34.329380, 34.993576, 22.851913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224453, 34.621544, 22.954777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076008, -0.285579, -0.955336,
		0.961983, -0.231056, 0.145607,
		-0.262318, -0.930085, 0.257160,
		34.145756, 34.342518, 23.031925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760361, 34.554890, 22.463491>,  <34.329380, 34.993576, 22.851913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760361, 34.554890, 22.463491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475052, 34.298676, 22.577303>,  <34.303867, 34.144947, 22.645590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475052, 34.298676, 22.577303>,  <34.760361, 34.554890, 22.463491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475052, 34.298676, 22.577303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088224, -0.484778, -0.870176,
		0.695312, -0.595571, 0.402290,
		-0.713273, -0.640535, 0.284528,
		34.261070, 34.106514, 22.662661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003876, 33.982025, 22.183516>,  <34.760361, 34.554890, 22.463491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003876, 33.982025, 22.183516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615578, 33.897297, 22.228762>,  <34.382599, 33.846458, 22.255909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615578, 33.897297, 22.228762>,  <35.003876, 33.982025, 22.183516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615578, 33.897297, 22.228762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033793, -0.345856, -0.937679,
		0.237742, -0.914065, 0.328578,
		-0.970740, -0.211822, 0.113113,
		34.324356, 33.833752, 22.262695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895203, 33.245754, 21.952209>,  <35.003876, 33.982025, 22.183516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895203, 33.245754, 21.952209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534763, 33.416374, 21.921034>,  <34.318501, 33.518745, 21.902328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534763, 33.416374, 21.921034>,  <34.895203, 33.245754, 21.952209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534763, 33.416374, 21.921034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068500, -0.317522, -0.945773,
		-0.428172, -0.846895, 0.315338,
		-0.901097, 0.426554, -0.077942,
		34.264435, 33.544342, 21.897652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455593, 32.790142, 21.483568>,  <34.895203, 33.245754, 21.952209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455593, 32.790142, 21.483568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288265, 33.151920, 21.450146>,  <34.187866, 33.368988, 21.430092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288265, 33.151920, 21.450146>,  <34.455593, 32.790142, 21.483568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288265, 33.151920, 21.450146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143911, -0.156831, -0.977084,
		-0.896826, -0.396711, 0.195766,
		-0.418322, 0.904447, -0.083558,
		34.162769, 33.423256, 21.425077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714336, 32.767006, 20.986889>,  <34.455593, 32.790142, 21.483568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714336, 32.767006, 20.986889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850811, 33.142921, 20.994734>,  <33.932697, 33.368473, 20.999441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850811, 33.142921, 20.994734>,  <33.714336, 32.767006, 20.986889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850811, 33.142921, 20.994734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025203, 0.030001, -0.999232,
		-0.939658, 0.340430, 0.033922,
		0.341187, 0.939791, 0.019611,
		33.953167, 33.424858, 21.000618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216080, 33.088482, 20.536707>,  <33.714336, 32.767006, 20.986889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216080, 33.088482, 20.536707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541019, 33.318798, 20.573704>,  <33.735985, 33.456989, 20.595901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541019, 33.318798, 20.573704>,  <33.216080, 33.088482, 20.536707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541019, 33.318798, 20.573704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077821, 0.264217, -0.961318,
		-0.577955, 0.773729, 0.259445,
		0.812350, 0.575789, 0.092493,
		33.784725, 33.491535, 20.601452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108990, 33.575413, 20.069868>,  <33.216080, 33.088482, 20.536707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108990, 33.575413, 20.069868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498131, 33.627293, 20.146528>,  <33.731617, 33.658421, 20.192524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498131, 33.627293, 20.146528>,  <33.108990, 33.575413, 20.069868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498131, 33.627293, 20.146528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139817, 0.330482, -0.933399,
		-0.184397, 0.934858, 0.303377,
		0.972856, 0.129699, 0.191649,
		33.789989, 33.666203, 20.204023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228424, 34.214375, 19.798731>,  <33.108990, 33.575413, 20.069868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228424, 34.214375, 19.798731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586349, 34.036396, 19.813320>,  <33.801105, 33.929607, 19.822073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586349, 34.036396, 19.813320>,  <33.228424, 34.214375, 19.798731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586349, 34.036396, 19.813320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195841, 0.317797, -0.927713,
		0.401194, 0.837273, 0.371508,
		0.894813, -0.444949, 0.036474,
		33.854794, 33.902912, 19.824263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663113, 34.683262, 19.505053>,  <33.228424, 34.214375, 19.798731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663113, 34.683262, 19.505053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866318, 34.341732, 19.459620>,  <33.988243, 34.136814, 19.432360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866318, 34.341732, 19.459620>,  <33.663113, 34.683262, 19.505053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866318, 34.341732, 19.459620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378184, 0.339579, -0.861199,
		0.773885, 0.394546, 0.495414,
		0.508015, -0.853826, -0.113584,
		34.018723, 34.085583, 19.425545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387032, 34.935547, 19.316942>,  <33.663113, 34.683262, 19.505053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387032, 34.935547, 19.316942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336376, 34.552673, 19.212814>,  <34.305981, 34.322948, 19.150337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336376, 34.552673, 19.212814>,  <34.387032, 34.935547, 19.316942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336376, 34.552673, 19.212814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442812, 0.180280, -0.878303,
		0.887626, -0.226503, 0.401020,
		-0.126642, -0.957181, -0.260320,
		34.298382, 34.265518, 19.134718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006817, 34.695118, 19.045044>,  <34.387032, 34.935547, 19.316942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006817, 34.695118, 19.045044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756878, 34.417206, 18.902582>,  <34.606915, 34.250458, 18.817104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756878, 34.417206, 18.902582>,  <35.006817, 34.695118, 19.045044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756878, 34.417206, 18.902582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457567, 0.043744, -0.888098,
		0.632612, -0.717892, 0.290575,
		-0.624848, -0.694779, -0.356157,
		34.569424, 34.208771, 18.795734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375427, 34.235771, 18.761103>,  <35.006817, 34.695118, 19.045044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375427, 34.235771, 18.761103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026352, 34.167248, 18.578203>,  <34.816906, 34.126133, 18.468464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026352, 34.167248, 18.578203>,  <35.375427, 34.235771, 18.761103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026352, 34.167248, 18.578203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452576, 0.067748, -0.889149,
		0.183295, -0.982886, 0.018406,
		-0.872685, -0.171307, -0.457248,
		34.764545, 34.115856, 18.441029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528969, 33.788868, 18.195660>,  <35.375427, 34.235771, 18.761103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528969, 33.788868, 18.195660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172371, 33.943428, 18.101065>,  <34.958412, 34.036163, 18.044308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172371, 33.943428, 18.101065>,  <35.528969, 33.788868, 18.195660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172371, 33.943428, 18.101065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279047, 0.057136, -0.958576,
		-0.356884, -0.920559, -0.158761,
		-0.891497, 0.386402, -0.236488,
		34.904922, 34.059349, 18.030119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475121, 33.492050, 17.535400>,  <35.528969, 33.788868, 18.195660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475121, 33.492050, 17.535400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198792, 33.779106, 17.570621>,  <35.032993, 33.951340, 17.591753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198792, 33.779106, 17.570621>,  <35.475121, 33.492050, 17.535400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198792, 33.779106, 17.570621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120502, 0.234357, -0.964653,
		-0.712911, -0.655795, -0.248377,
		-0.690823, 0.717642, 0.088051,
		34.991543, 33.994400, 17.597036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019501, 33.304592, 17.038044>,  <35.475121, 33.492050, 17.535400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019501, 33.304592, 17.038044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033283, 33.700722, 17.091827>,  <35.041553, 33.938400, 17.124098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033283, 33.700722, 17.091827>,  <35.019501, 33.304592, 17.038044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033283, 33.700722, 17.091827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285230, 0.119195, -0.951019,
		-0.957840, 0.071123, -0.278361,
		0.034460, 0.990320, 0.134456,
		35.043621, 33.997818, 17.132164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906029, 33.502789, 16.428305>,  <35.019501, 33.304592, 17.038044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906029, 33.502789, 16.428305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019730, 33.849106, 16.593035>,  <35.087952, 34.056896, 16.691874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019730, 33.849106, 16.593035>,  <34.906029, 33.502789, 16.428305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019730, 33.849106, 16.593035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363292, 0.300245, -0.881970,
		-0.887253, 0.400318, -0.229190,
		0.284256, 0.865793, 0.411826,
		35.105007, 34.108845, 16.716583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548855, 34.089233, 16.055908>,  <34.906029, 33.502789, 16.428305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548855, 34.089233, 16.055908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891472, 34.203518, 16.227818>,  <35.097042, 34.272087, 16.330963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891472, 34.203518, 16.227818>,  <34.548855, 34.089233, 16.055908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891472, 34.203518, 16.227818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360922, 0.263604, -0.894566,
		-0.368875, 0.921349, 0.122670,
		0.856543, 0.285708, 0.429772,
		35.148434, 34.289230, 16.356749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753284, 34.511978, 15.576118>,  <34.548855, 34.089233, 16.055908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753284, 34.511978, 15.576118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081120, 34.461578, 15.799691>,  <35.277821, 34.431339, 15.933835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081120, 34.461578, 15.799691>,  <34.753284, 34.511978, 15.576118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081120, 34.461578, 15.799691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572393, 0.223403, -0.788960,
		-0.025457, 0.966548, 0.255220,
		0.819584, -0.126001, 0.558932,
		35.326996, 34.423779, 15.967371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235870, 35.202461, 15.562861>,  <34.753284, 34.511978, 15.576118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235870, 35.202461, 15.562861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442162, 34.870300, 15.647196>,  <35.565937, 34.671001, 15.697796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442162, 34.870300, 15.647196>,  <35.235870, 35.202461, 15.562861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442162, 34.870300, 15.647196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597045, 0.171852, -0.783585,
		0.614460, 0.529996, 0.584417,
		0.515730, -0.830404, 0.210835,
		35.596882, 34.621178, 15.710446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037868, 35.335213, 15.347568>,  <35.235870, 35.202461, 15.562861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037868, 35.335213, 15.347568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988693, 34.938854, 15.369501>,  <35.959190, 34.701038, 15.382661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988693, 34.938854, 15.369501>,  <36.037868, 35.335213, 15.347568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988693, 34.938854, 15.369501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756680, -0.129340, -0.640864,
		0.642124, -0.037293, 0.765694,
		-0.122934, -0.990899, 0.054833,
		35.951813, 34.641586, 15.385951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763466, 35.318470, 15.234597>,  <36.037868, 35.335213, 15.347568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763466, 35.318470, 15.234597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902813, 35.691353, 15.195349>,  <36.986420, 35.915085, 15.171800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902813, 35.691353, 15.195349>,  <36.763466, 35.318470, 15.234597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902813, 35.691353, 15.195349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496290, -0.094627, 0.862984,
		0.795197, -0.349331, -0.495611,
		0.348365, 0.932209, -0.098122,
		37.007324, 35.971016, 15.165912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479012, 35.317886, 15.271458>,  <36.763466, 35.318470, 15.234597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479012, 35.317886, 15.271458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348595, 35.672813, 15.401906>,  <37.270344, 35.885769, 15.480175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348595, 35.672813, 15.401906>,  <37.479012, 35.317886, 15.271458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348595, 35.672813, 15.401906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456976, -0.154060, 0.876036,
		0.827568, 0.434655, -0.355254,
		-0.326043, 0.887322, 0.326122,
		37.250782, 35.939011, 15.499743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996136, 35.519257, 15.735025>,  <37.479012, 35.317886, 15.271458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996136, 35.519257, 15.735025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692188, 35.761921, 15.828465>,  <37.509819, 35.907520, 15.884528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692188, 35.761921, 15.828465>,  <37.996136, 35.519257, 15.735025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692188, 35.761921, 15.828465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200791, -0.122743, 0.971914,
		0.618293, 0.785430, -0.028543,
		-0.759867, 0.606658, 0.233598,
		37.464230, 35.943920, 15.898544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306816, 35.976696, 16.348757>,  <37.996136, 35.519257, 15.735025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306816, 35.976696, 16.348757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907639, 35.963047, 16.327042>,  <37.668133, 35.954857, 16.314013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907639, 35.963047, 16.327042>,  <38.306816, 35.976696, 16.348757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907639, 35.963047, 16.327042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053513, -0.023261, 0.998296,
		-0.035324, 0.999147, 0.021387,
		-0.997942, -0.034119, -0.054289,
		37.608257, 35.952812, 16.310755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119335, 36.360336, 16.913645>,  <38.306816, 35.976696, 16.348757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119335, 36.360336, 16.913645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780151, 36.166763, 16.827133>,  <37.576641, 36.050621, 16.775227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780151, 36.166763, 16.827133>,  <38.119335, 36.360336, 16.913645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780151, 36.166763, 16.827133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241392, -0.010708, 0.970368,
		-0.471907, 0.875040, -0.107737,
		-0.847958, -0.483931, -0.216281,
		37.525764, 36.021584, 16.762249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459763, 36.685520, 17.204029>,  <38.119335, 36.360336, 16.913645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459763, 36.685520, 17.204029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326645, 36.315430, 17.131134>,  <37.246773, 36.093376, 17.087397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326645, 36.315430, 17.131134>,  <37.459763, 36.685520, 17.204029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326645, 36.315430, 17.131134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335004, -0.064651, 0.939996,
		-0.881487, 0.373879, -0.288437,
		-0.332797, -0.925222, -0.182240,
		37.226807, 36.037865, 17.076462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743488, 36.683239, 17.400602>,  <37.459763, 36.685520, 17.204029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743488, 36.683239, 17.400602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852039, 36.298923, 17.423368>,  <36.917168, 36.068333, 17.437029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852039, 36.298923, 17.423368>,  <36.743488, 36.683239, 17.400602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852039, 36.298923, 17.423368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233799, -0.008441, 0.972248,
		-0.933646, -0.277150, -0.226922,
		0.271374, -0.960790, 0.056916,
		36.933453, 36.010685, 17.440443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244167, 36.364601, 17.749144>,  <36.743488, 36.683239, 17.400602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244167, 36.364601, 17.749144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529610, 36.084969, 17.767223>,  <36.700874, 35.917187, 17.778070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529610, 36.084969, 17.767223>,  <36.244167, 36.364601, 17.749144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529610, 36.084969, 17.767223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244648, -0.188236, 0.951165,
		-0.656436, -0.689818, -0.305356,
		0.713610, -0.699084, 0.045197,
		36.743694, 35.875244, 17.780783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879841, 35.624439, 17.901283>,  <36.244167, 36.364601, 17.749144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879841, 35.624439, 17.901283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259132, 35.612846, 18.027788>,  <36.486706, 35.605888, 18.103691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259132, 35.612846, 18.027788>,  <35.879841, 35.624439, 17.901283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259132, 35.612846, 18.027788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307484, -0.332996, 0.891385,
		0.079478, -0.942483, -0.324669,
		0.948228, -0.028985, 0.316265,
		36.543602, 35.604153, 18.122667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976223, 34.992149, 18.205875>,  <35.879841, 35.624439, 17.901283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976223, 34.992149, 18.205875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262352, 35.221519, 18.365622>,  <36.434029, 35.359142, 18.461470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262352, 35.221519, 18.365622>,  <35.976223, 34.992149, 18.205875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262352, 35.221519, 18.365622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297602, -0.267102, 0.916564,
		0.632254, -0.774492, -0.020411,
		0.715324, 0.573427, 0.399367,
		36.476948, 35.393547, 18.485432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165951, 34.560055, 18.769880>,  <35.976223, 34.992149, 18.205875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165951, 34.560055, 18.769880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335575, 34.905529, 18.878849>,  <36.437351, 35.112816, 18.944231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335575, 34.905529, 18.878849>,  <36.165951, 34.560055, 18.769880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335575, 34.905529, 18.878849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275832, -0.163341, 0.947225,
		0.862606, -0.476823, 0.168967,
		0.424060, 0.863689, 0.272422,
		36.462791, 35.164635, 18.960575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411232, 34.409199, 19.400566>,  <36.165951, 34.560055, 18.769880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411232, 34.409199, 19.400566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411762, 34.808353, 19.426525>,  <36.412079, 35.047848, 19.442101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411762, 34.808353, 19.426525>,  <36.411232, 34.409199, 19.400566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411762, 34.808353, 19.426525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109281, -0.064365, 0.991925,
		0.994010, -0.008407, 0.108966,
		0.001325, 0.997891, 0.064898,
		36.412159, 35.107719, 19.445995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921436, 34.556950, 19.926361>,  <36.411232, 34.409199, 19.400566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921436, 34.556950, 19.926361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689053, 34.880245, 19.887905>,  <36.549622, 35.074223, 19.864832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689053, 34.880245, 19.887905>,  <36.921436, 34.556950, 19.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689053, 34.880245, 19.887905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110803, 0.038487, 0.993097,
		0.806356, 0.587601, 0.067196,
		-0.580958, 0.808235, -0.096142,
		36.514767, 35.122715, 19.859062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153572, 35.113781, 20.421200>,  <36.921436, 34.556950, 19.926361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153572, 35.113781, 20.421200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767616, 35.173801, 20.334961>,  <36.536045, 35.209812, 20.283218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767616, 35.173801, 20.334961>,  <37.153572, 35.113781, 20.421200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767616, 35.173801, 20.334961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198329, 0.121998, 0.972513,
		0.172227, 0.981123, -0.087955,
		-0.964885, 0.150049, -0.215597,
		36.478149, 35.218815, 20.270283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985714, 35.627682, 20.792030>,  <37.153572, 35.113781, 20.421200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985714, 35.627682, 20.792030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615604, 35.518944, 20.686222>,  <36.393539, 35.453701, 20.622738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615604, 35.518944, 20.686222>,  <36.985714, 35.627682, 20.792030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615604, 35.518944, 20.686222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341655, 0.294399, 0.892525,
		-0.164757, 0.916203, -0.365277,
		-0.925271, -0.271849, -0.264521,
		36.338024, 35.437389, 20.606865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673149, 36.269653, 20.927406>,  <36.985714, 35.627682, 20.792030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673149, 36.269653, 20.927406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397919, 35.979481, 20.920399>,  <36.232780, 35.805378, 20.916195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397919, 35.979481, 20.920399>,  <36.673149, 36.269653, 20.927406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397919, 35.979481, 20.920399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349258, 0.309920, 0.884290,
		-0.636060, 0.614576, -0.466610,
		-0.688075, -0.725429, -0.017518,
		36.191498, 35.761852, 20.915144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164566, 36.638157, 20.967855>,  <36.673149, 36.269653, 20.927406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164566, 36.638157, 20.967855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056862, 36.277004, 21.101904>,  <35.992241, 36.060314, 21.182333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056862, 36.277004, 21.101904>,  <36.164566, 36.638157, 20.967855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056862, 36.277004, 21.101904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291212, 0.408014, 0.865286,
		-0.917984, 0.135393, -0.372791,
		-0.269258, -0.902880, 0.335122,
		35.976086, 36.006142, 21.202440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390797, 36.744076, 21.247791>,  <36.164566, 36.638157, 20.967855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390797, 36.744076, 21.247791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532692, 36.408955, 21.413805>,  <35.617828, 36.207882, 21.513414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532692, 36.408955, 21.413805>,  <35.390797, 36.744076, 21.247791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532692, 36.408955, 21.413805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394059, 0.268579, 0.878967,
		-0.847867, -0.475351, -0.234867,
		0.354737, -0.837799, 0.415036,
		35.639114, 36.157616, 21.538315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920998, 36.565746, 21.745285>,  <35.390797, 36.744076, 21.247791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920998, 36.565746, 21.745285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224266, 36.344921, 21.884085>,  <35.406227, 36.212425, 21.967365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224266, 36.344921, 21.884085>,  <34.920998, 36.565746, 21.745285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224266, 36.344921, 21.884085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261116, 0.230580, 0.937364,
		-0.597492, -0.801289, 0.030668,
		0.758170, -0.552059, 0.346999,
		35.451717, 36.179302, 21.988184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648380, 36.165020, 22.276760>,  <34.920998, 36.565746, 21.745285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648380, 36.165020, 22.276760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042339, 36.161957, 22.345938>,  <35.278717, 36.160118, 22.387444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042339, 36.161957, 22.345938>,  <34.648380, 36.165020, 22.276760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042339, 36.161957, 22.345938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172115, 0.063791, 0.983009,
		-0.018555, -0.997934, 0.061510,
		0.984902, -0.007653, 0.172943,
		35.337811, 36.159660, 22.397821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699680, 35.684669, 22.811956>,  <34.648380, 36.165020, 22.276760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699680, 35.684669, 22.811956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033951, 35.903881, 22.797508>,  <35.234512, 36.035408, 22.788839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033951, 35.903881, 22.797508>,  <34.699680, 35.684669, 22.811956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033951, 35.903881, 22.797508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032194, 0.114530, 0.992898,
		0.548276, -0.828580, 0.113353,
		0.835678, 0.548032, -0.036119,
		35.284653, 36.068291, 22.786673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174019, 35.393127, 23.255116>,  <34.699680, 35.684669, 22.811956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174019, 35.393127, 23.255116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310032, 35.768635, 23.232874>,  <35.391640, 35.993938, 23.219530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310032, 35.768635, 23.232874>,  <35.174019, 35.393127, 23.255116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310032, 35.768635, 23.232874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156170, 0.001935, 0.987728,
		0.927355, -0.344545, -0.145949,
		0.340034, 0.938768, -0.055602,
		35.412041, 36.050266, 23.216194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730396, 35.366215, 23.600569>,  <35.174019, 35.393127, 23.255116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730396, 35.366215, 23.600569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619392, 35.750439, 23.607693>,  <35.552792, 35.980972, 23.611967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619392, 35.750439, 23.607693>,  <35.730396, 35.366215, 23.600569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619392, 35.750439, 23.607693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254165, 0.055524, 0.965566,
		0.926494, 0.272478, -0.259548,
		-0.277506, 0.960559, 0.017812,
		35.536140, 36.038605, 23.613037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245556, 35.737637, 23.981256>,  <35.730396, 35.366215, 23.600569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245556, 35.737637, 23.981256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946224, 36.002934, 23.977098>,  <35.766624, 36.162113, 23.974604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946224, 36.002934, 23.977098>,  <36.245556, 35.737637, 23.981256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946224, 36.002934, 23.977098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164417, 0.200649, 0.965768,
		0.642626, 0.721004, -0.259200,
		-0.748331, 0.663244, -0.010397,
		35.721725, 36.201908, 23.973980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502224, 36.292126, 24.283335>,  <36.245556, 35.737637, 23.981256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502224, 36.292126, 24.283335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106731, 36.334759, 24.325392>,  <35.869438, 36.360336, 24.350626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106731, 36.334759, 24.325392>,  <36.502224, 36.292126, 24.283335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106731, 36.334759, 24.325392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126932, 0.224363, 0.966204,
		0.079386, 0.968660, -0.235363,
		-0.988730, 0.106578, 0.105143,
		35.810112, 36.366734, 24.356936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286564, 37.018757, 24.435467>,  <36.502224, 36.292126, 24.283335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286564, 37.018757, 24.435467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985565, 36.789516, 24.565266>,  <35.804966, 36.651970, 24.643145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985565, 36.789516, 24.565266>,  <36.286564, 37.018757, 24.435467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985565, 36.789516, 24.565266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136810, 0.345936, 0.928230,
		-0.644227, 0.742886, -0.181910,
		-0.752499, -0.573104, 0.324495,
		35.759815, 36.617584, 24.662615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830688, 37.425510, 24.894474>,  <36.286564, 37.018757, 24.435467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830688, 37.425510, 24.894474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755070, 37.045059, 24.992134>,  <35.709698, 36.816788, 25.050730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755070, 37.045059, 24.992134>,  <35.830688, 37.425510, 24.894474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755070, 37.045059, 24.992134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070545, 0.261146, 0.962718,
		-0.979431, 0.164773, -0.116466,
		-0.189044, -0.951132, 0.244151,
		35.698357, 36.759720, 25.065380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238075, 37.466057, 25.363403>,  <35.830688, 37.425510, 24.894474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238075, 37.466057, 25.363403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417984, 37.110909, 25.402164>,  <35.525928, 36.897820, 25.425421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417984, 37.110909, 25.402164>,  <35.238075, 37.466057, 25.363403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417984, 37.110909, 25.402164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048734, 0.132732, 0.989953,
		-0.891813, -0.440531, 0.102969,
		0.449772, -0.887871, 0.096903,
		35.552917, 36.844547, 25.431236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897881, 37.240540, 25.845840>,  <35.238075, 37.466057, 25.363403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897881, 37.240540, 25.845840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233032, 37.023209, 25.866793>,  <35.434124, 36.892811, 25.879364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233032, 37.023209, 25.866793>,  <34.897881, 37.240540, 25.845840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233032, 37.023209, 25.866793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076514, 0.211920, 0.974287,
		-0.540461, -0.812330, 0.219137,
		0.837883, -0.543331, 0.052380,
		35.484398, 36.860210, 25.882507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878498, 36.727108, 26.460564>,  <34.897881, 37.240540, 25.845840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878498, 36.727108, 26.460564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269081, 36.775318, 26.389002>,  <35.503429, 36.804245, 26.346066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269081, 36.775318, 26.389002>,  <34.878498, 36.727108, 26.460564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269081, 36.775318, 26.389002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167489, 0.099050, 0.980885,
		0.135947, -0.987756, 0.076531,
		0.976456, 0.120530, -0.178904,
		35.562019, 36.811474, 26.335331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091702, 36.381924, 26.986317>,  <34.878498, 36.727108, 26.460564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091702, 36.381924, 26.986317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410816, 36.595680, 26.874630>,  <35.602283, 36.723934, 26.807617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410816, 36.595680, 26.874630>,  <35.091702, 36.381924, 26.986317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410816, 36.595680, 26.874630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384676, -0.094520, 0.918200,
		0.464285, -0.839936, -0.280974,
		0.797787, 0.534390, -0.279219,
		35.650154, 36.755997, 26.790865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694283, 35.957455, 27.205072>,  <35.091702, 36.381924, 26.986317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694283, 35.957455, 27.205072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846577, 36.324913, 27.162861>,  <35.937954, 36.545387, 27.137535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846577, 36.324913, 27.162861>,  <35.694283, 35.957455, 27.205072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846577, 36.324913, 27.162861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609335, -0.163413, 0.775891,
		0.695522, -0.359710, -0.621978,
		0.380735, 0.918643, -0.105526,
		35.960796, 36.600506, 27.131203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352566, 35.820812, 27.273714>,  <35.694283, 35.957455, 27.205072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352566, 35.820812, 27.273714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317707, 36.213524, 27.341249>,  <36.296791, 36.449150, 27.381771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317707, 36.213524, 27.341249>,  <36.352566, 35.820812, 27.273714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317707, 36.213524, 27.341249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637974, -0.075169, 0.766380,
		0.765111, 0.174502, -0.619802,
		-0.087145, 0.981783, 0.168840,
		36.291565, 36.508060, 27.391901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010563, 36.122601, 27.248905>,  <36.352566, 35.820812, 27.273714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010563, 36.122601, 27.248905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792034, 36.365437, 27.479723>,  <36.660919, 36.511139, 27.618214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792034, 36.365437, 27.479723>,  <37.010563, 36.122601, 27.248905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792034, 36.365437, 27.479723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678925, -0.082490, 0.729559,
		0.490506, 0.790342, -0.367101,
		-0.546319, 0.607087, 0.577044,
		36.628139, 36.547562, 27.652836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497200, 36.575417, 27.646679>,  <37.010563, 36.122601, 27.248905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497200, 36.575417, 27.646679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164207, 36.643291, 27.857647>,  <36.964413, 36.684017, 27.984228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164207, 36.643291, 27.857647>,  <37.497200, 36.575417, 27.646679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164207, 36.643291, 27.857647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541001, 0.043604, 0.839891,
		0.119523, 0.984532, -0.128102,
		-0.832485, 0.169690, 0.527422,
		36.914463, 36.694199, 28.015873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677113, 37.036381, 28.173340>,  <37.497200, 36.575417, 27.646679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677113, 37.036381, 28.173340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321098, 36.908138, 28.302980>,  <37.107491, 36.831192, 28.380764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321098, 36.908138, 28.302980>,  <37.677113, 37.036381, 28.173340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321098, 36.908138, 28.302980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353029, -0.034895, 0.934962,
		-0.288446, 0.946569, 0.144242,
		-0.890039, -0.320607, 0.324101,
		37.054085, 36.811954, 28.400211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477116, 37.459179, 28.697723>,  <37.677113, 37.036381, 28.173340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477116, 37.459179, 28.697723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280567, 37.116196, 28.758801>,  <37.162640, 36.910404, 28.795446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280567, 37.116196, 28.758801>,  <37.477116, 37.459179, 28.697723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280567, 37.116196, 28.758801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312244, -0.009766, 0.949952,
		-0.813056, 0.514456, 0.272536,
		-0.491370, -0.857461, 0.152695,
		37.133156, 36.858959, 28.804609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055969, 37.574364, 29.309460>,  <37.477116, 37.459179, 28.697723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055969, 37.574364, 29.309460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104195, 37.180008, 29.263004>,  <37.133129, 36.943394, 29.235130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104195, 37.180008, 29.263004>,  <37.055969, 37.574364, 29.309460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104195, 37.180008, 29.263004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302859, -0.074887, 0.950089,
		-0.945379, -0.149716, 0.289557,
		0.120559, -0.985889, -0.116140,
		37.140362, 36.884243, 29.228163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867065, 37.407379, 29.954927>,  <37.055969, 37.574364, 29.309460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867065, 37.407379, 29.954927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088402, 37.119175, 29.787748>,  <37.221203, 36.946255, 29.687441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088402, 37.119175, 29.787748>,  <36.867065, 37.407379, 29.954927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088402, 37.119175, 29.787748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424961, -0.187353, 0.885611,
		-0.716394, -0.667658, 0.202518,
		0.553343, -0.720508, -0.417947,
		37.254406, 36.903023, 29.662365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964874, 36.905571, 30.475803>,  <36.867065, 37.407379, 29.954927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964874, 36.905571, 30.475803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230503, 36.781590, 30.203646>,  <37.389881, 36.707203, 30.040352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230503, 36.781590, 30.203646>,  <36.964874, 36.905571, 30.475803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230503, 36.781590, 30.203646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491046, -0.505430, 0.709517,
		-0.563808, -0.805276, -0.183442,
		0.664075, -0.309953, -0.680393,
		37.429726, 36.688606, 29.999529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058041, 36.153534, 30.471775>,  <36.964874, 36.905571, 30.475803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058041, 36.153534, 30.471775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389359, 36.336525, 30.342384>,  <37.588150, 36.446320, 30.264750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389359, 36.336525, 30.342384>,  <37.058041, 36.153534, 30.471775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389359, 36.336525, 30.342384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529569, -0.450676, 0.718643,
		0.182980, -0.766553, -0.615560,
		0.828296, 0.457479, -0.323478,
		37.637848, 36.473770, 30.245340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725719, 35.629063, 30.464979>,  <37.058041, 36.153534, 30.471775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725719, 35.629063, 30.464979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855526, 36.006416, 30.492455>,  <37.933411, 36.232826, 30.508940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855526, 36.006416, 30.492455>,  <37.725719, 35.629063, 30.464979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855526, 36.006416, 30.492455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636241, -0.271444, 0.722161,
		0.699918, -0.190655, -0.688307,
		0.324520, 0.943382, 0.068686,
		37.952881, 36.289433, 30.513060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279594, 35.139244, 30.924385>,  <37.725719, 35.629063, 30.464979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279594, 35.139244, 30.924385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300720, 35.538670, 30.920986>,  <37.313396, 35.778324, 30.918947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300720, 35.538670, 30.920986>,  <37.279594, 35.139244, 30.924385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300720, 35.538670, 30.920986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931024, -0.046166, 0.362026,
		0.361116, -0.027031, -0.932129,
		0.052818, 0.998568, -0.008495,
		37.316566, 35.838242, 30.918438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104904, 35.664673, 31.367207>,  <37.279594, 35.139244, 30.924385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104904, 35.664673, 31.367207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898144, 35.914970, 31.133537>,  <36.774086, 36.065147, 30.993336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898144, 35.914970, 31.133537>,  <37.104904, 35.664673, 31.367207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898144, 35.914970, 31.133537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671031, 0.127544, 0.730376,
		0.531534, 0.769533, 0.353963,
		-0.516903, 0.625740, -0.584175,
		36.743073, 36.102692, 30.958284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641674, 35.137394, 31.650400>,  <37.104904, 35.664673, 31.367207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641674, 35.137394, 31.650400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021618, 35.254116, 31.695314>,  <38.249584, 35.324150, 31.722263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021618, 35.254116, 31.695314>,  <37.641674, 35.137394, 31.650400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021618, 35.254116, 31.695314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244158, -0.916590, 0.316623,
		0.195313, -0.273333, -0.941882,
		0.949863, 0.291808, 0.112285,
		38.306576, 35.341660, 31.729000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135109, 34.574997, 31.427017>,  <37.641674, 35.137394, 31.650400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135109, 34.574997, 31.427017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336544, 34.815739, 31.674944>,  <38.457405, 34.960182, 31.823700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336544, 34.815739, 31.674944>,  <38.135109, 34.574997, 31.427017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336544, 34.815739, 31.674944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414525, -0.797775, 0.437864,
		0.758004, 0.036428, -0.651232,
		0.503586, 0.601854, 0.619817,
		38.487621, 34.996296, 31.860889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779316, 34.305302, 31.402987>,  <38.135109, 34.574997, 31.427017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779316, 34.305302, 31.402987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720985, 34.522736, 31.733622>,  <38.685986, 34.653198, 31.932003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720985, 34.522736, 31.733622>,  <38.779316, 34.305302, 31.402987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720985, 34.522736, 31.733622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422293, -0.721373, 0.548899,
		0.894652, 0.429109, -0.124355,
		-0.145831, 0.543587, 0.826587,
		38.677235, 34.685810, 31.981598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173172, 34.871353, 31.015226>,  <38.779316, 34.305302, 31.402987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173172, 34.871353, 31.015226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280552, 34.534657, 31.202589>,  <39.344978, 34.332638, 31.315006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280552, 34.534657, 31.202589>,  <39.173172, 34.871353, 31.015226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280552, 34.534657, 31.202589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654308, -0.197538, -0.729973,
		0.706977, 0.502442, 0.497730,
		0.268448, -0.841742, 0.468407,
		39.361088, 34.282135, 31.343111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482529, 35.555920, 30.803396>,  <39.173172, 34.871353, 31.015226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482529, 35.555920, 30.803396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713150, 35.273827, 30.638361>,  <39.851524, 35.104568, 30.539339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713150, 35.273827, 30.638361>,  <39.482529, 35.555920, 30.803396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713150, 35.273827, 30.638361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229237, 0.345065, -0.910154,
		0.784242, 0.619334, 0.037283,
		0.576554, -0.705234, -0.412589,
		39.886116, 35.062256, 30.514584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986919, 35.890217, 30.292332>,  <39.482529, 35.555920, 30.803396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986919, 35.890217, 30.292332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890190, 35.513649, 30.198307>,  <39.832153, 35.287708, 30.141893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890190, 35.513649, 30.198307>,  <39.986919, 35.890217, 30.292332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890190, 35.513649, 30.198307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191267, 0.283745, -0.939631,
		0.951283, -0.182265, -0.248678,
		-0.241823, -0.941418, -0.235060,
		39.817642, 35.231224, 30.127789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308979, 35.658051, 29.597139>,  <39.986919, 35.890217, 30.292332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308979, 35.658051, 29.597139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978748, 35.439171, 29.652266>,  <39.780609, 35.307842, 29.685341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978748, 35.439171, 29.652266>,  <40.308979, 35.658051, 29.597139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978748, 35.439171, 29.652266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243508, 0.125151, -0.961791,
		0.509045, -0.827592, -0.236569,
		-0.825577, -0.547201, 0.137818,
		39.731075, 35.275009, 29.693611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317314, 34.941174, 29.208529>,  <40.308979, 35.658051, 29.597139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317314, 34.941174, 29.208529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948685, 35.089104, 29.255730>,  <39.727505, 35.177864, 29.284050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948685, 35.089104, 29.255730>,  <40.317314, 34.941174, 29.208529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948685, 35.089104, 29.255730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141064, -0.035837, -0.989352,
		-0.361662, -0.928408, 0.085197,
		-0.921575, 0.369829, 0.118004,
		39.672211, 35.200054, 29.291130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933132, 34.545361, 28.821068>,  <40.317314, 34.941174, 29.208529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933132, 34.545361, 28.821068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791409, 34.914513, 28.881411>,  <39.706375, 35.136005, 28.917616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791409, 34.914513, 28.881411>,  <39.933132, 34.545361, 28.821068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791409, 34.914513, 28.881411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102148, 0.122163, -0.987240,
		-0.929534, -0.365195, 0.050988,
		-0.354306, 0.922881, 0.150858,
		39.685116, 35.191376, 28.926668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303799, 34.264954, 29.066900>,  <39.933132, 34.545361, 28.821068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303799, 34.264954, 29.066900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099930, 33.934978, 29.164642>,  <38.977608, 33.736992, 29.223288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099930, 33.934978, 29.164642>,  <39.303799, 34.264954, 29.066900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099930, 33.934978, 29.164642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446663, -0.010962, 0.894635,
		-0.735343, 0.565112, 0.374058,
		-0.509670, -0.824941, 0.244354,
		38.947029, 33.687496, 29.237949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114117, 34.433014, 29.724247>,  <39.303799, 34.264954, 29.066900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114117, 34.433014, 29.724247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099705, 34.034500, 29.692953>,  <39.091057, 33.795391, 29.674177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099705, 34.034500, 29.692953>,  <39.114117, 34.433014, 29.724247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099705, 34.034500, 29.692953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358219, -0.085958, 0.929672,
		-0.932942, 0.005474, 0.359985,
		-0.036033, -0.996284, -0.078233,
		39.088894, 33.735615, 29.669483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580750, 34.211578, 30.271370>,  <39.114117, 34.433014, 29.724247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580750, 34.211578, 30.271370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883286, 33.976059, 30.157335>,  <39.064808, 33.834747, 30.088915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883286, 33.976059, 30.157335>,  <38.580750, 34.211578, 30.271370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883286, 33.976059, 30.157335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141527, -0.278196, 0.950040,
		-0.638691, -0.758897, -0.127079,
		0.756336, -0.588797, -0.285086,
		39.110188, 33.799419, 30.071810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522175, 33.440563, 30.343914>,  <38.580750, 34.211578, 30.271370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522175, 33.440563, 30.343914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901688, 33.562366, 30.377607>,  <39.129395, 33.635448, 30.397823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901688, 33.562366, 30.377607>,  <38.522175, 33.440563, 30.343914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901688, 33.562366, 30.377607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008116, -0.290010, 0.956989,
		0.315841, -0.907286, -0.277626,
		0.948777, 0.304510, 0.084233,
		39.186321, 33.653721, 30.402878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806160, 33.014400, 30.764002>,  <38.522175, 33.440563, 30.343914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806160, 33.014400, 30.764002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077496, 33.308247, 30.769638>,  <39.240299, 33.484554, 30.773020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077496, 33.308247, 30.769638>,  <38.806160, 33.014400, 30.764002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077496, 33.308247, 30.769638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348297, -0.338386, 0.874176,
		0.646948, -0.588083, -0.485404,
		0.678342, 0.734611, 0.014091,
		39.280998, 33.528629, 30.773865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598957, 32.638248, 30.171227>,  <38.806160, 33.014400, 30.764002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598957, 32.638248, 30.171227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779049, 32.352913, 30.386051>,  <38.887104, 32.181709, 30.514946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779049, 32.352913, 30.386051>,  <38.598957, 32.638248, 30.171227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779049, 32.352913, 30.386051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677691, 0.118650, 0.725712,
		-0.581404, -0.690698, -0.430006,
		0.450227, -0.713343, 0.537063,
		38.914116, 32.138908, 30.547171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179863, 32.523220, 30.787958>,  <38.598957, 32.638248, 30.171227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179863, 32.523220, 30.787958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419968, 32.211479, 30.859844>,  <38.564030, 32.024437, 30.902975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419968, 32.211479, 30.859844>,  <38.179863, 32.523220, 30.787958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419968, 32.211479, 30.859844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534377, -0.223620, 0.815129,
		-0.595083, -0.585328, -0.550697,
		0.600265, -0.779349, 0.179713,
		38.600048, 31.977674, 30.913757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764099, 31.866478, 30.894491>,  <38.179863, 32.523220, 30.787958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764099, 31.866478, 30.894491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113922, 31.818819, 31.082514>,  <38.323814, 31.790224, 31.195328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113922, 31.818819, 31.082514>,  <37.764099, 31.866478, 30.894491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113922, 31.818819, 31.082514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484872, -0.201230, 0.851120,
		-0.006819, -0.972271, -0.233758,
		0.874559, -0.119146, 0.470055,
		38.376289, 31.783075, 31.223530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629734, 31.281191, 31.274261>,  <37.764099, 31.866478, 30.894491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629734, 31.281191, 31.274261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959587, 31.438875, 31.436537>,  <38.157497, 31.533485, 31.533901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959587, 31.438875, 31.436537>,  <37.629734, 31.281191, 31.274261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959587, 31.438875, 31.436537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285769, -0.328616, 0.900193,
		0.488181, -0.858260, -0.158334,
		0.824631, 0.394210, 0.405688,
		38.206978, 31.557138, 31.558243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785198, 30.785624, 31.757437>,  <37.629734, 31.281191, 31.274261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785198, 30.785624, 31.757437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957958, 31.126600, 31.875286>,  <38.061615, 31.331186, 31.945995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957958, 31.126600, 31.875286>,  <37.785198, 30.785624, 31.757437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957958, 31.126600, 31.875286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291151, -0.177401, 0.940085,
		0.853637, -0.491801, 0.171571,
		0.431898, 0.852444, 0.294625,
		38.087528, 31.382334, 31.963673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989307, 30.613913, 32.389175>,  <37.785198, 30.785624, 31.757437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989307, 30.613913, 32.389175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984856, 31.012915, 32.417057>,  <37.982185, 31.252316, 32.433784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984856, 31.012915, 32.417057>,  <37.989307, 30.613913, 32.389175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984856, 31.012915, 32.417057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001898, -0.069731, 0.997564,
		0.999936, 0.010966, 0.002669,
		-0.011126, 0.997506, 0.069705,
		37.981518, 31.312166, 32.437969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458664, 30.876255, 33.011284>,  <37.989307, 30.613913, 32.389175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458664, 30.876255, 33.011284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214588, 31.185373, 32.941479>,  <38.068142, 31.370844, 32.899593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214588, 31.185373, 32.941479>,  <38.458664, 30.876255, 33.011284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214588, 31.185373, 32.941479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204379, 0.059277, 0.977095,
		0.765439, 0.631882, 0.121773,
		-0.610190, 0.772795, -0.174517,
		38.031532, 31.417212, 32.889122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530682, 31.372456, 33.485821>,  <38.458664, 30.876255, 33.011284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530682, 31.372456, 33.485821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167912, 31.469925, 33.348351>,  <37.950249, 31.528406, 33.265869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167912, 31.469925, 33.348351>,  <38.530682, 31.372456, 33.485821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167912, 31.469925, 33.348351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295851, 0.212415, 0.931317,
		0.299939, 0.946311, -0.120553,
		-0.906923, 0.243673, -0.343678,
		37.895836, 31.543026, 33.245247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598289, 31.771029, 34.183002>,  <38.530682, 31.372456, 33.485821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598289, 31.771029, 34.183002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988674, 31.822229, 34.253551>,  <39.222904, 31.852951, 34.295879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988674, 31.822229, 34.253551>,  <38.598289, 31.771029, 34.183002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988674, 31.822229, 34.253551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126457, 0.326489, -0.936704,
		-0.177486, 0.936494, 0.302454,
		0.975965, 0.128004, 0.176374,
		39.281464, 31.860630, 34.306465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806244, 32.481537, 34.307507>,  <38.598289, 31.771029, 34.183002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806244, 32.481537, 34.307507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055408, 32.224731, 34.128712>,  <39.204906, 32.070648, 34.021435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055408, 32.224731, 34.128712>,  <38.806244, 32.481537, 34.307507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055408, 32.224731, 34.128712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188316, 0.431524, -0.882227,
		0.759289, 0.633724, 0.147899,
		0.622910, -0.642014, -0.446992,
		39.242283, 32.032127, 33.994614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292553, 32.940819, 33.900246>,  <38.806244, 32.481537, 34.307507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292553, 32.940819, 33.900246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245041, 32.578762, 33.736973>,  <39.216534, 32.361526, 33.639008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245041, 32.578762, 33.736973>,  <39.292553, 32.940819, 33.900246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245041, 32.578762, 33.736973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043319, 0.415424, -0.908596,
		0.991975, -0.090241, -0.088554,
		-0.118780, -0.905141, -0.408181,
		39.209408, 32.307220, 33.614517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891724, 32.708595, 33.502708>,  <39.292553, 32.940819, 33.900246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891724, 32.708595, 33.502708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527065, 32.599171, 33.380032>,  <39.308270, 32.533516, 33.306427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527065, 32.599171, 33.380032>,  <39.891724, 32.708595, 33.502708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527065, 32.599171, 33.380032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124628, 0.527101, -0.840614,
		0.391616, -0.804568, -0.446438,
		-0.911649, -0.273559, -0.306692,
		39.253571, 32.517101, 33.288025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968910, 32.375168, 32.802967>,  <39.891724, 32.708595, 33.502708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968910, 32.375168, 32.802967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612461, 32.543457, 32.870956>,  <39.398590, 32.644432, 32.911751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612461, 32.543457, 32.870956>,  <39.968910, 32.375168, 32.802967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612461, 32.543457, 32.870956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172451, 0.660492, -0.730760,
		-0.419719, -0.621883, -0.661133,
		-0.891121, 0.420727, 0.169977,
		39.345123, 32.669674, 32.921951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873310, 32.574448, 32.142185>,  <39.968910, 32.375168, 32.802967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873310, 32.574448, 32.142185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615875, 32.731777, 32.404816>,  <39.461414, 32.826176, 32.562393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615875, 32.731777, 32.404816>,  <39.873310, 32.574448, 32.142185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615875, 32.731777, 32.404816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004081, 0.859604, -0.510944,
		-0.765359, -0.326159, -0.554839,
		-0.643591, 0.393320, 0.656575,
		39.422798, 32.849773, 32.601788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535950, 33.139881, 31.788895>,  <39.873310, 32.574448, 32.142185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535950, 33.139881, 31.788895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480663, 33.213379, 32.178177>,  <39.447491, 33.257477, 32.411747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480663, 33.213379, 32.178177>,  <39.535950, 33.139881, 31.788895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480663, 33.213379, 32.178177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161748, 0.965258, -0.205220,
		-0.977104, -0.185780, -0.103696,
		-0.138219, 0.183749, 0.973207,
		39.439198, 33.268505, 32.470139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821865, 33.450523, 31.826920>,  <39.535950, 33.139881, 31.788895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821865, 33.450523, 31.826920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099419, 33.555958, 32.094963>,  <39.265949, 33.619217, 32.255791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099419, 33.555958, 32.094963>,  <38.821865, 33.450523, 31.826920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099419, 33.555958, 32.094963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032544, 0.941124, -0.336490,
		-0.719350, 0.211677, 0.661611,
		0.693885, 0.263586, 0.670109,
		39.307583, 33.635033, 32.295998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575039, 33.859272, 32.524342>,  <38.821865, 33.450523, 31.826920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575039, 33.859272, 32.524342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943699, 33.945808, 32.395500>,  <39.164894, 33.997730, 32.318195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943699, 33.945808, 32.395500>,  <38.575039, 33.859272, 32.524342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943699, 33.945808, 32.395500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265987, 0.956659, -0.118548,
		0.282497, 0.194936, 0.939253,
		0.921654, 0.216340, -0.322104,
		39.220196, 34.010712, 32.298870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867172, 34.421459, 32.940010>,  <38.575039, 33.859272, 32.524342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867172, 34.421459, 32.940010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003483, 34.440601, 32.564442>,  <39.085270, 34.452087, 32.339100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003483, 34.440601, 32.564442>,  <38.867172, 34.421459, 32.940010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003483, 34.440601, 32.564442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433150, 0.894383, -0.111629,
		0.834417, 0.444736, 0.325513,
		0.340778, 0.047851, -0.938925,
		39.105717, 34.454956, 32.282764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201107, 35.007923, 32.889519>,  <38.867172, 34.421459, 32.940010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201107, 35.007923, 32.889519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084496, 34.947163, 32.511749>,  <39.014530, 34.910706, 32.285088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084496, 34.947163, 32.511749>,  <39.201107, 35.007923, 32.889519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084496, 34.947163, 32.511749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358447, 0.932719, -0.039373,
		0.886864, 0.327048, -0.326362,
		-0.291527, -0.151902, -0.944424,
		38.997036, 34.901592, 32.228420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304840, 35.685726, 32.621464>,  <39.201107, 35.007923, 32.889519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304840, 35.685726, 32.621464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074131, 35.466751, 32.378929>,  <38.935707, 35.335365, 32.233410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074131, 35.466751, 32.378929>,  <39.304840, 35.685726, 32.621464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074131, 35.466751, 32.378929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474828, 0.828639, -0.296473,
		0.664734, 0.116907, -0.737876,
		-0.576773, -0.547440, -0.606335,
		38.901100, 35.302521, 32.197029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308514, 35.995983, 31.923918>,  <39.304840, 35.685726, 32.621464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308514, 35.995983, 31.923918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983486, 35.775276, 31.999056>,  <38.788471, 35.642853, 32.044140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983486, 35.775276, 31.999056>,  <39.308514, 35.995983, 31.923918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983486, 35.775276, 31.999056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573055, 0.815152, -0.084472,
		-0.106515, -0.176286, -0.978559,
		-0.812565, -0.551771, 0.187847,
		38.739716, 35.609745, 32.055408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816948, 36.216022, 31.381266>,  <39.308514, 35.995983, 31.923918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816948, 36.216022, 31.381266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048660, 35.926636, 31.231045>,  <40.187687, 35.753006, 31.140913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048660, 35.926636, 31.231045>,  <39.816948, 36.216022, 31.381266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048660, 35.926636, 31.231045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668351, 0.157808, 0.726914,
		-0.466631, -0.672084, 0.574942,
		0.579278, -0.723463, -0.375550,
		40.222443, 35.709599, 31.118380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191322, 35.974117, 32.038502>,  <39.816948, 36.216022, 31.381266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191322, 35.974117, 32.038502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404812, 35.800301, 31.748310>,  <40.532906, 35.696011, 31.574196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404812, 35.800301, 31.748310>,  <40.191322, 35.974117, 32.038502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404812, 35.800301, 31.748310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722022, -0.212464, 0.658440,
		-0.440260, -0.875231, 0.200356,
		0.533719, -0.434546, -0.725475,
		40.564926, 35.669937, 31.530668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518021, 35.412464, 32.362854>,  <40.191322, 35.974117, 32.038502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518021, 35.412464, 32.362854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726730, 35.523479, 32.040184>,  <40.851955, 35.590088, 31.846582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726730, 35.523479, 32.040184>,  <40.518021, 35.412464, 32.362854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726730, 35.523479, 32.040184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852851, -0.191775, 0.485662,
		-0.019911, -0.941380, -0.336760,
		0.521775, 0.277535, -0.806675,
		40.883263, 35.606739, 31.798182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879028, 34.862228, 32.103401>,  <40.518021, 35.412464, 32.362854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879028, 34.862228, 32.103401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066071, 35.201084, 32.002453>,  <41.178295, 35.404400, 31.941883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066071, 35.201084, 32.002453>,  <40.879028, 34.862228, 32.103401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066071, 35.201084, 32.002453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838525, -0.334786, 0.429876,
		0.279675, -0.412635, -0.866899,
		0.467608, 0.847143, -0.252374,
		41.206352, 35.455227, 31.926741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441830, 34.708004, 31.632381>,  <40.879028, 34.862228, 32.103401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441830, 34.708004, 31.632381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500530, 35.022751, 31.872150>,  <41.535751, 35.211597, 32.016014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500530, 35.022751, 31.872150>,  <41.441830, 34.708004, 31.632381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500530, 35.022751, 31.872150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956900, -0.266458, 0.115513,
		0.250615, 0.556638, -0.792052,
		0.146750, 0.786864, 0.599425,
		41.544556, 35.258808, 32.051979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110275, 34.926411, 31.551811>,  <41.441830, 34.708004, 31.632381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110275, 34.926411, 31.551811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008251, 35.054161, 31.916874>,  <41.947037, 35.130810, 32.135910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008251, 35.054161, 31.916874>,  <42.110275, 34.926411, 31.551811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008251, 35.054161, 31.916874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940788, -0.136008, 0.310515,
		0.223299, 0.937818, -0.265774,
		-0.255059, 0.319374, 0.912658,
		41.931732, 35.149975, 32.190670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578667, 35.531124, 31.795290>,  <42.110275, 34.926411, 31.551811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578667, 35.531124, 31.795290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458687, 35.254280, 32.057896>,  <42.386700, 35.088173, 32.215458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458687, 35.254280, 32.057896>,  <42.578667, 35.531124, 31.795290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458687, 35.254280, 32.057896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953019, -0.247867, 0.174117,
		0.042221, 0.677900, 0.733941,
		-0.299953, -0.692109, 0.656516,
		42.368702, 35.046646, 32.254852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017750, 35.609489, 32.413555>,  <42.578667, 35.531124, 31.795290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017750, 35.609489, 32.413555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857834, 35.244423, 32.447521>,  <42.761887, 35.025383, 32.467899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857834, 35.244423, 32.447521>,  <43.017750, 35.609489, 32.413555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857834, 35.244423, 32.447521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865264, -0.345201, 0.363530,
		-0.302469, 0.218807, 0.927705,
		-0.399788, -0.912666, 0.084913,
		42.737896, 34.970623, 32.472996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263004, 35.454029, 33.089104>,  <43.017750, 35.609489, 32.413555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263004, 35.454029, 33.089104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138973, 35.113827, 32.919170>,  <43.064552, 34.909706, 32.817211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138973, 35.113827, 32.919170>,  <43.263004, 35.454029, 33.089104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138973, 35.113827, 32.919170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813169, -0.468780, 0.344967,
		-0.492551, -0.238493, 0.836967,
		-0.310082, -0.850509, -0.424833,
		43.045948, 34.858673, 32.791721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915024, 34.925331, 33.599831>,  <43.263004, 35.454029, 33.089104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915024, 34.925331, 33.599831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139153, 34.763889, 33.310516>,  <43.273628, 34.667023, 33.136929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139153, 34.763889, 33.310516>,  <42.915024, 34.925331, 33.599831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139153, 34.763889, 33.310516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608290, -0.392161, 0.690067,
		-0.562159, -0.826627, 0.025772,
		0.560321, -0.403604, -0.723287,
		43.307247, 34.642807, 33.093529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908089, 34.070240, 33.577923>,  <42.915024, 34.925331, 33.599831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908089, 34.070240, 33.577923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254345, 34.197083, 33.422951>,  <43.462101, 34.273190, 33.329967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254345, 34.197083, 33.422951>,  <42.908089, 34.070240, 33.577923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254345, 34.197083, 33.422951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500399, -0.522921, 0.690040,
		0.016221, -0.791199, -0.611343,
		0.865643, 0.317109, -0.387433,
		43.514038, 34.292213, 33.306721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320511, 33.613770, 33.286358>,  <42.908089, 34.070240, 33.577923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320511, 33.613770, 33.286358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593220, 33.877403, 33.413345>,  <43.756847, 34.035583, 33.489536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593220, 33.877403, 33.413345>,  <43.320511, 33.613770, 33.286358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593220, 33.877403, 33.413345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380828, -0.690272, 0.615219,
		0.624622, -0.298541, -0.721610,
		0.681775, 0.659089, 0.317466,
		43.797752, 34.075130, 33.508587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974064, 33.226074, 33.490929>,  <43.320511, 33.613770, 33.286358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974064, 33.226074, 33.490929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945114, 33.563892, 33.703156>,  <43.927742, 33.766582, 33.830494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945114, 33.563892, 33.703156>,  <43.974064, 33.226074, 33.490929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945114, 33.563892, 33.703156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520545, -0.421780, 0.742385,
		0.850761, 0.329917, -0.409097,
		-0.072376, 0.844545, 0.530570,
		43.923401, 33.817257, 33.862328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521004, 33.277916, 33.844795>,  <43.974064, 33.226074, 33.490929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521004, 33.277916, 33.844795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265316, 33.500366, 34.057259>,  <44.111904, 33.633835, 34.184734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265316, 33.500366, 34.057259>,  <44.521004, 33.277916, 33.844795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265316, 33.500366, 34.057259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275396, -0.479343, 0.833299,
		0.718024, 0.678938, 0.153250,
		-0.639217, 0.556124, 0.531157,
		44.073551, 33.667202, 34.216606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916882, 33.529587, 34.444336>,  <44.521004, 33.277916, 33.844795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916882, 33.529587, 34.444336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534554, 33.485851, 34.553486>,  <44.305157, 33.459610, 34.618977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534554, 33.485851, 34.553486>,  <44.916882, 33.529587, 34.444336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534554, 33.485851, 34.553486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292722, -0.268765, 0.917649,
		-0.026999, 0.956980, 0.288896,
		-0.955816, -0.109342, 0.272873,
		44.247810, 33.453049, 34.635349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868156, 33.669533, 35.166191>,  <44.916882, 33.529587, 34.444336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868156, 33.669533, 35.166191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534077, 33.461372, 35.095070>,  <44.333630, 33.336475, 35.052395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534077, 33.461372, 35.095070>,  <44.868156, 33.669533, 35.166191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534077, 33.461372, 35.095070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186678, -0.572403, 0.798440,
		-0.517289, 0.633666, 0.575221,
		-0.835203, -0.520405, -0.177806,
		44.283516, 33.305252, 35.041729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912735, 33.120346, 35.565132>,  <44.868156, 33.669533, 35.166191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912735, 33.120346, 35.565132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106480, 32.773453, 35.611267>,  <45.222725, 32.565315, 35.638947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106480, 32.773453, 35.611267>,  <44.912735, 33.120346, 35.565132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106480, 32.773453, 35.611267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751920, -0.345268, 0.561611,
		-0.447226, -0.358745, -0.819323,
		0.484361, -0.867233, 0.115335,
		45.251789, 32.513283, 35.645866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519844, 32.550678, 35.345020>,  <44.912735, 33.120346, 35.565132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519844, 32.550678, 35.345020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780796, 32.421402, 35.619232>,  <44.937366, 32.343834, 35.783760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780796, 32.421402, 35.619232>,  <44.519844, 32.550678, 35.345020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780796, 32.421402, 35.619232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755118, -0.354519, 0.551465,
		0.064803, -0.877418, -0.475330,
		0.652379, -0.323193, 0.685528,
		44.976509, 32.324444, 35.824890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998348, 31.977314, 35.022602>,  <44.519844, 32.550678, 35.345020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998348, 31.977314, 35.022602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096413, 32.212021, 34.713902>,  <45.155251, 32.352844, 34.528683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096413, 32.212021, 34.713902>,  <44.998348, 31.977314, 35.022602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096413, 32.212021, 34.713902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501491, 0.604514, 0.618927,
		0.829700, -0.538763, -0.146055,
		0.245163, 0.586769, -0.771750,
		45.169960, 32.388050, 34.482376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736572, 32.188530, 35.115486>,  <44.998348, 31.977314, 35.022602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736572, 32.188530, 35.115486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527180, 32.441566, 34.887169>,  <45.401543, 32.593388, 34.750179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527180, 32.441566, 34.887169>,  <45.736572, 32.188530, 35.115486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527180, 32.441566, 34.887169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476267, 0.772728, 0.419597,
		0.706496, -0.052196, -0.705790,
		-0.523482, 0.632587, -0.570789,
		45.370136, 32.631344, 34.715931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.964973, 32.607964, 34.640560>,  <45.736572, 32.188530, 35.115486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.964973, 32.607964, 34.640560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629318, 32.803711, 34.735527>,  <45.427925, 32.921158, 34.792507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629318, 32.803711, 34.735527>,  <45.964973, 32.607964, 34.640560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629318, 32.803711, 34.735527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533186, 0.826362, 0.181212,
		-0.107514, 0.278649, -0.954356,
		-0.839138, 0.489367, 0.237417,
		45.377575, 32.950520, 34.806751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124153, 33.312603, 34.586090>,  <45.964973, 32.607964, 34.640560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124153, 33.312603, 34.586090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811249, 33.360985, 34.830528>,  <45.623505, 33.390015, 34.977192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811249, 33.360985, 34.830528>,  <46.124153, 33.312603, 34.586090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811249, 33.360985, 34.830528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380988, 0.869010, 0.315703,
		-0.492861, 0.479783, -0.725876,
		-0.782263, 0.120953, 0.611093,
		45.576569, 33.397270, 35.013855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612354, 33.933079, 34.412617>,  <46.124153, 33.312603, 34.586090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612354, 33.933079, 34.412617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645947, 33.868202, 34.805889>,  <45.666103, 33.829277, 35.041851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645947, 33.868202, 34.805889>,  <45.612354, 33.933079, 34.412617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645947, 33.868202, 34.805889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423419, 0.898968, 0.112129,
		-0.902033, 0.406880, 0.144172,
		0.083983, -0.162189, 0.983179,
		45.671143, 33.819546, 35.100842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516525, 34.574162, 34.852978>,  <45.612354, 33.933079, 34.412617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516525, 34.574162, 34.852978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.827454, 34.376041, 35.008125>,  <46.014011, 34.257168, 35.101215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.827454, 34.376041, 35.008125>,  <45.516525, 34.574162, 34.852978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827454, 34.376041, 35.008125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579219, 0.804083, -0.134000,
		-0.245507, 0.328821, 0.911923,
		0.777324, -0.495305, 0.387868,
		46.060650, 34.227451, 35.124485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006496, 35.043800, 35.260815>,  <45.516525, 34.574162, 34.852978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006496, 35.043800, 35.260815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206757, 34.738613, 35.097240>,  <46.326912, 34.555500, 34.999096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206757, 34.738613, 35.097240>,  <46.006496, 35.043800, 35.260815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206757, 34.738613, 35.097240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805409, 0.583701, -0.102999,
		0.317282, -0.277795, 0.906732,
		0.500648, -0.762970, -0.408936,
		46.356953, 34.509724, 34.974560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618122, 35.200718, 35.492775>,  <46.006496, 35.043800, 35.260815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618122, 35.200718, 35.492775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682949, 34.944988, 35.192108>,  <46.721844, 34.791550, 35.011707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682949, 34.944988, 35.192108>,  <46.618122, 35.200718, 35.492775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682949, 34.944988, 35.192108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877962, 0.441153, -0.185922,
		0.450464, -0.629803, 0.632796,
		0.162065, -0.639322, -0.751667,
		46.731567, 34.753193, 34.966610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288334, 35.059494, 35.434536>,  <46.618122, 35.200718, 35.492775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288334, 35.059494, 35.434536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.152889, 35.006054, 35.061977>,  <47.071621, 34.973988, 34.838444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.152889, 35.006054, 35.061977>,  <47.288334, 35.059494, 35.434536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152889, 35.006054, 35.061977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698957, 0.626970, -0.344045,
		0.629920, -0.767502, -0.118918,
		-0.338613, -0.133603, -0.931392,
		47.051304, 34.965973, 34.782558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.861519, 34.801510, 35.032631>,  <47.288334, 35.059494, 35.434536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.861519, 34.801510, 35.032631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597431, 34.998775, 34.806038>,  <47.438980, 35.117134, 34.670082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597431, 34.998775, 34.806038>,  <47.861519, 34.801510, 35.032631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.597431, 34.998775, 34.806038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721951, 0.624692, -0.297568,
		0.207128, -0.605433, -0.768472,
		-0.660215, 0.493165, -0.566484,
		47.399368, 35.146725, 34.636093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.510799, 33.577255, 20.090950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.441452, 33.184063, 20.115232>,  <41.399841, 32.948147, 20.129803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.441452, 33.184063, 20.115232>,  <41.510799, 33.577255, 20.090950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441452, 33.184063, 20.115232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038087, 0.068287, 0.996938,
		-0.984120, 0.170529, -0.049278,
		-0.173372, -0.982984, 0.060708,
		41.389439, 32.889168, 20.133446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921436, 33.379383, 20.566437>,  <41.510799, 33.577255, 20.090950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921436, 33.379383, 20.566437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142822, 33.048439, 20.528166>,  <41.275654, 32.849873, 20.505203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142822, 33.048439, 20.528166>,  <40.921436, 33.379383, 20.566437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142822, 33.048439, 20.528166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084511, -0.170073, 0.981801,
		-0.828574, -0.535306, -0.164050,
		0.553464, -0.827359, -0.095680,
		41.308861, 32.800232, 20.499462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610134, 32.911720, 20.970045>,  <40.921436, 33.379383, 20.566437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610134, 32.911720, 20.970045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.988880, 32.797138, 20.911545>,  <41.216129, 32.728390, 20.876444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.988880, 32.797138, 20.911545>,  <40.610134, 32.911720, 20.970045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988880, 32.797138, 20.911545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088102, -0.206326, 0.974509,
		-0.309326, -0.935614, -0.170126,
		0.946866, -0.286453, -0.146252,
		41.272942, 32.711205, 20.867670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633842, 32.349495, 21.498777>,  <40.610134, 32.911720, 20.970045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633842, 32.349495, 21.498777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007950, 32.411915, 21.371700>,  <41.232414, 32.449368, 21.295454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007950, 32.411915, 21.371700>,  <40.633842, 32.349495, 21.498777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007950, 32.411915, 21.371700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333920, -0.091339, 0.938166,
		0.117387, -0.983516, -0.137535,
		0.935263, 0.156054, -0.317694,
		41.288528, 32.458729, 21.276392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097420, 31.788425, 21.680042>,  <40.633842, 32.349495, 21.498777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097420, 31.788425, 21.680042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.342430, 32.103634, 21.655272>,  <41.489437, 32.292759, 21.640409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.342430, 32.103634, 21.655272>,  <41.097420, 31.788425, 21.680042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342430, 32.103634, 21.655272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174851, -0.058673, 0.982845,
		0.770868, -0.612848, -0.173725,
		0.612528, 0.788019, -0.061928,
		41.526188, 32.340038, 21.636694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800186, 31.611355, 22.032349>,  <41.097420, 31.788425, 21.680042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800186, 31.611355, 22.032349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.745804, 32.007481, 22.021069>,  <41.713173, 32.245155, 22.014301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.745804, 32.007481, 22.021069>,  <41.800186, 31.611355, 22.032349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745804, 32.007481, 22.021069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122481, 0.045045, 0.991448,
		0.983115, 0.131339, -0.127419,
		-0.135956, 0.990314, -0.028198,
		41.705017, 32.304573, 22.012609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328899, 31.809505, 22.502106>,  <41.800186, 31.611355, 22.032349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328899, 31.809505, 22.502106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.103016, 32.138878, 22.479954>,  <41.967487, 32.336502, 22.466663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.103016, 32.138878, 22.479954>,  <42.328899, 31.809505, 22.502106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103016, 32.138878, 22.479954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106588, 0.139310, 0.984496,
		0.818379, 0.550049, -0.166437,
		-0.564708, 0.823431, -0.055379,
		41.933605, 32.385906, 22.463341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630276, 32.373005, 22.984688>,  <42.328899, 31.809505, 22.502106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630276, 32.373005, 22.984688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.241917, 32.456059, 22.936945>,  <42.008900, 32.505890, 22.908300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.241917, 32.456059, 22.936945>,  <42.630276, 32.373005, 22.984688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241917, 32.456059, 22.936945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098436, 0.108354, 0.989227,
		0.218334, 0.972186, -0.084761,
		-0.970897, 0.207638, -0.119355,
		41.950649, 32.518349, 22.901138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525711, 32.780510, 23.545628>,  <42.630276, 32.373005, 22.984688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525711, 32.780510, 23.545628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.146297, 32.702568, 23.445768>,  <41.918652, 32.655804, 23.385853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.146297, 32.702568, 23.445768>,  <42.525711, 32.780510, 23.545628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146297, 32.702568, 23.445768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282942, 0.167318, 0.944430,
		-0.142253, 0.966456, -0.213838,
		-0.948529, -0.194851, -0.249649,
		41.861740, 32.644112, 23.370874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142490, 33.274738, 23.831408>,  <42.525711, 32.780510, 23.545628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142490, 33.274738, 23.831408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.879379, 32.986309, 23.744333>,  <41.721512, 32.813251, 23.692089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.879379, 32.986309, 23.744333>,  <42.142490, 33.274738, 23.831408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879379, 32.986309, 23.744333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540627, 0.250744, 0.803025,
		-0.524453, 0.645900, -0.554763,
		-0.657778, -0.721069, -0.217688,
		41.682045, 32.769989, 23.679028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465118, 33.549744, 23.924540>,  <42.142490, 33.274738, 23.831408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465118, 33.549744, 23.924540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.457878, 33.151592, 23.962259>,  <41.453533, 32.912701, 23.984892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.457878, 33.151592, 23.962259>,  <41.465118, 33.549744, 23.924540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457878, 33.151592, 23.962259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625305, 0.084865, 0.775752,
		-0.780170, -0.044925, -0.623952,
		-0.018101, -0.995379, 0.094301,
		41.452446, 32.852978, 23.990549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890369, 33.462788, 24.302786>,  <41.465118, 33.549744, 23.924540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890369, 33.462788, 24.302786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.085236, 33.115700, 24.342245>,  <41.202156, 32.907448, 24.365921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.085236, 33.115700, 24.342245>,  <40.890369, 33.462788, 24.302786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085236, 33.115700, 24.342245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390230, -0.115236, 0.913477,
		-0.781276, -0.483509, -0.394750,
		0.487164, -0.867721, 0.098649,
		41.231384, 32.855385, 24.371840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343132, 33.083889, 24.469767>,  <40.890369, 33.462788, 24.302786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343132, 33.083889, 24.469767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.665440, 32.895123, 24.612894>,  <40.858822, 32.781864, 24.698771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.665440, 32.895123, 24.612894>,  <40.343132, 33.083889, 24.469767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665440, 32.895123, 24.612894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351831, 0.104578, 0.930203,
		-0.476398, -0.875419, -0.081770,
		0.805767, -0.471916, 0.357821,
		40.907169, 32.753548, 24.720240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989994, 32.771469, 24.971075>,  <40.343132, 33.083889, 24.469767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989994, 32.771469, 24.971075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378590, 32.736492, 25.059223>,  <40.611748, 32.715508, 25.112112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.378590, 32.736492, 25.059223>,  <39.989994, 32.771469, 24.971075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378590, 32.736492, 25.059223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221773, -0.006529, 0.975077,
		-0.083831, -0.996148, -0.025736,
		0.971488, -0.087449, 0.220371,
		40.670036, 32.710258, 25.125334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937603, 32.338291, 25.424189>,  <39.989994, 32.771469, 24.971075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937603, 32.338291, 25.424189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303612, 32.490974, 25.476393>,  <40.523216, 32.582584, 25.507715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.303612, 32.490974, 25.476393>,  <39.937603, 32.338291, 25.424189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303612, 32.490974, 25.476393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209388, 0.172868, 0.962431,
		0.344811, -0.907971, 0.238104,
		0.915020, 0.381713, 0.130511,
		40.578117, 32.605488, 25.515547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071121, 32.154438, 26.083603>,  <39.937603, 32.338291, 25.424189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071121, 32.154438, 26.083603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325802, 32.457172, 26.024517>,  <40.478611, 32.638813, 25.989065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325802, 32.457172, 26.024517>,  <40.071121, 32.154438, 26.083603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325802, 32.457172, 26.024517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086150, 0.260175, 0.961710,
		0.766284, -0.599595, 0.230855,
		0.636700, 0.756832, -0.147713,
		40.516811, 32.684223, 25.980204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580059, 32.100658, 26.636309>,  <40.071121, 32.154438, 26.083603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580059, 32.100658, 26.636309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.607681, 32.478016, 26.506542>,  <40.624256, 32.704430, 26.428682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.607681, 32.478016, 26.506542>,  <40.580059, 32.100658, 26.636309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607681, 32.478016, 26.506542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055289, 0.328311, 0.942950,
		0.996079, -0.047182, 0.074831,
		0.069059, 0.943391, -0.324415,
		40.628399, 32.761032, 26.409218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853336, 32.429340, 27.162138>,  <40.580059, 32.100658, 26.636309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853336, 32.429340, 27.162138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.716103, 32.743126, 26.955486>,  <40.633762, 32.931396, 26.831495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.716103, 32.743126, 26.955486>,  <40.853336, 32.429340, 27.162138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716103, 32.743126, 26.955486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250666, 0.453601, 0.855227,
		0.905239, 0.422918, 0.041015,
		-0.343086, 0.784466, -0.516629,
		40.613178, 32.978466, 26.800497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063606, 33.138084, 27.472351>,  <40.853336, 32.429340, 27.162138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063606, 33.138084, 27.472351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.734951, 33.253742, 27.275858>,  <40.537758, 33.323139, 27.157961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.734951, 33.253742, 27.275858>,  <41.063606, 33.138084, 27.472351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734951, 33.253742, 27.275858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313149, 0.491129, 0.812853,
		0.476294, 0.821697, -0.312982,
		-0.821634, 0.289147, -0.491235,
		40.488461, 33.340485, 27.128487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059025, 33.831421, 27.483046>,  <41.063606, 33.138084, 27.472351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059025, 33.831421, 27.483046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.678318, 33.715099, 27.443918>,  <40.449894, 33.645306, 27.420443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.678318, 33.715099, 27.443918>,  <41.059025, 33.831421, 27.483046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678318, 33.715099, 27.443918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235967, 0.490027, 0.839162,
		-0.196097, 0.821771, -0.535013,
		-0.951770, -0.290802, -0.097818,
		40.392788, 33.627857, 27.414574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591457, 34.386822, 27.764788>,  <41.059025, 33.831421, 27.483046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591457, 34.386822, 27.764788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337196, 34.078068, 27.769493>,  <40.184639, 33.892815, 27.772316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337196, 34.078068, 27.769493>,  <40.591457, 34.386822, 27.764788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337196, 34.078068, 27.769493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319211, 0.276687, 0.906393,
		-0.702887, 0.572396, -0.422271,
		-0.635653, -0.771886, 0.011765,
		40.146500, 33.846500, 27.773022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928440, 34.645397, 28.084753>,  <40.591457, 34.386822, 27.764788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928440, 34.645397, 28.084753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.878963, 34.249527, 28.113695>,  <39.849277, 34.012005, 28.131062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.878963, 34.249527, 28.113695>,  <39.928440, 34.645397, 28.084753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878963, 34.249527, 28.113695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550063, 0.129072, 0.825089,
		-0.825912, 0.062257, -0.560351,
		-0.123693, -0.989679, 0.072357,
		39.841854, 33.952621, 28.135403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283966, 34.721939, 28.281500>,  <39.928440, 34.645397, 28.084753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283966, 34.721939, 28.281500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413887, 35.078072, 28.409136>,  <39.491840, 35.291752, 28.485718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.413887, 35.078072, 28.409136>,  <39.283966, 34.721939, 28.281500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413887, 35.078072, 28.409136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062967, 0.316275, -0.946576,
		-0.943682, 0.327545, 0.046667,
		0.324806, 0.890328, 0.319088,
		39.511330, 35.345169, 28.504862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902981, 35.200775, 27.874172>,  <39.283966, 34.721939, 28.281500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902981, 35.200775, 27.874172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265797, 35.328644, 27.983780>,  <39.483486, 35.405365, 28.049545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265797, 35.328644, 27.983780>,  <38.902981, 35.200775, 27.874172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265797, 35.328644, 27.983780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151597, 0.359210, -0.920862,
		-0.392805, 0.876799, 0.277357,
		0.907040, 0.319673, 0.274019,
		39.537910, 35.424545, 28.065987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009518, 35.601669, 27.283224>,  <38.902981, 35.200775, 27.874172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009518, 35.601669, 27.283224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351063, 35.643635, 27.487148>,  <39.555988, 35.668816, 27.609503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351063, 35.643635, 27.487148>,  <39.009518, 35.601669, 27.283224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351063, 35.643635, 27.487148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440846, 0.374947, -0.815518,
		-0.276715, 0.921090, 0.273901,
		0.853864, 0.104918, 0.509813,
		39.607224, 35.675110, 27.640093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250347, 36.316872, 27.242601>,  <39.009518, 35.601669, 27.283224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250347, 36.316872, 27.242601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581158, 36.107750, 27.325262>,  <39.779644, 35.982277, 27.374859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581158, 36.107750, 27.325262>,  <39.250347, 36.316872, 27.242601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581158, 36.107750, 27.325262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437498, 0.367727, -0.820593,
		0.353015, 0.769063, 0.532844,
		0.827028, -0.522800, 0.206651,
		39.829266, 35.950909, 27.387257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942642, 36.819809, 27.221350>,  <39.250347, 36.316872, 27.242601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942642, 36.819809, 27.221350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.025921, 36.438343, 27.134462>,  <40.075890, 36.209465, 27.082331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.025921, 36.438343, 27.134462>,  <39.942642, 36.819809, 27.221350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025921, 36.438343, 27.134462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562322, 0.298417, -0.771195,
		0.800280, 0.038413, 0.598395,
		0.208195, -0.953662, -0.217217,
		40.088379, 36.152245, 27.069298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630577, 36.886578, 26.898582>,  <39.942642, 36.819809, 27.221350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630577, 36.886578, 26.898582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.525116, 36.514053, 26.798065>,  <40.461838, 36.290539, 26.737755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.525116, 36.514053, 26.798065>,  <40.630577, 36.886578, 26.898582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525116, 36.514053, 26.798065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648128, 0.021910, -0.761216,
		0.714434, -0.363569, 0.597831,
		-0.263656, -0.931309, -0.251292,
		40.446018, 36.234661, 26.722677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224491, 36.502323, 26.687344>,  <40.630577, 36.886578, 26.898582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224491, 36.502323, 26.687344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946499, 36.273163, 26.513544>,  <40.779701, 36.135666, 26.409264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946499, 36.273163, 26.513544>,  <41.224491, 36.502323, 26.687344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946499, 36.273163, 26.513544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521656, 0.014142, -0.853039,
		0.494848, -0.819505, 0.289026,
		-0.694982, -0.572897, -0.434498,
		40.738003, 36.101295, 26.383194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530956, 35.864719, 26.358936>,  <41.224491, 36.502323, 26.687344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530956, 35.864719, 26.358936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.173691, 35.885098, 26.180201>,  <40.959332, 35.897324, 26.072960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.173691, 35.885098, 26.180201>,  <41.530956, 35.864719, 26.358936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173691, 35.885098, 26.180201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442761, -0.074656, -0.893526,
		-0.078892, -0.995906, 0.044118,
		-0.893162, 0.050959, -0.446838,
		40.905743, 35.900383, 26.046148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523018, 35.448914, 25.804277>,  <41.530956, 35.864719, 26.358936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523018, 35.448914, 25.804277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.198559, 35.660286, 25.704037>,  <41.003883, 35.787109, 25.643892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.198559, 35.660286, 25.704037>,  <41.523018, 35.448914, 25.804277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198559, 35.660286, 25.704037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235754, -0.096702, -0.966990,
		-0.535221, -0.843451, -0.046140,
		-0.811147, 0.528431, -0.250603,
		40.955215, 35.818813, 25.628857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153831, 35.041580, 25.415567>,  <41.523018, 35.448914, 25.804277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153831, 35.041580, 25.415567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.035191, 35.408695, 25.309973>,  <40.964005, 35.628963, 25.246616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.035191, 35.408695, 25.309973>,  <41.153831, 35.041580, 25.415567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035191, 35.408695, 25.309973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103814, -0.243799, -0.964254,
		-0.949341, -0.313407, -0.022968,
		-0.296604, 0.917790, -0.263984,
		40.946209, 35.684032, 25.230778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699284, 34.849682, 24.872999>,  <41.153831, 35.041580, 25.415567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699284, 34.849682, 24.872999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.809132, 35.231308, 24.825108>,  <40.875042, 35.460285, 24.796373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.809132, 35.231308, 24.825108>,  <40.699284, 34.849682, 24.872999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809132, 35.231308, 24.825108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097620, -0.151536, -0.983620,
		-0.956584, 0.258438, -0.134751,
		0.274624, 0.954069, -0.119728,
		40.891518, 35.517529, 24.789188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383099, 35.082306, 24.306931>,  <40.699284, 34.849682, 24.872999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383099, 35.082306, 24.306931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.634682, 35.389622, 24.354502>,  <40.785633, 35.574009, 24.383045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.634682, 35.389622, 24.354502>,  <40.383099, 35.082306, 24.306931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634682, 35.389622, 24.354502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033848, 0.125770, -0.991482,
		-0.776700, 0.627629, 0.053099,
		0.628961, 0.768287, 0.118929,
		40.823368, 35.620110, 24.390181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135384, 35.580353, 23.847036>,  <40.383099, 35.082306, 24.306931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135384, 35.580353, 23.847036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.520416, 35.654949, 23.925678>,  <40.751438, 35.699707, 23.972862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.520416, 35.654949, 23.925678>,  <40.135384, 35.580353, 23.847036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520416, 35.654949, 23.925678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204360, -0.023129, -0.978622,
		-0.177960, 0.982184, -0.060376,
		0.962583, 0.186494, 0.196603,
		40.809193, 35.710899, 23.984659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322338, 36.218826, 23.403614>,  <40.135384, 35.580353, 23.847036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322338, 36.218826, 23.403614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.641346, 35.997192, 23.499075>,  <40.832748, 35.864212, 23.556351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.641346, 35.997192, 23.499075>,  <40.322338, 36.218826, 23.403614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641346, 35.997192, 23.499075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204519, -0.123850, -0.970996,
		0.567571, 0.823196, 0.014549,
		0.797518, -0.554085, 0.238653,
		40.880600, 35.830967, 23.570671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892876, 36.659805, 23.214571>,  <40.322338, 36.218826, 23.403614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892876, 36.659805, 23.214571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.992477, 36.272423, 23.210690>,  <41.052238, 36.039993, 23.208361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.992477, 36.272423, 23.210690>,  <40.892876, 36.659805, 23.214571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992477, 36.272423, 23.210690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027273, 0.003005, -0.999624,
		0.968119, 0.249173, -0.025665,
		0.249002, -0.968454, -0.009705,
		41.067177, 35.981888, 23.207779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309216, 36.662357, 22.719549>,  <40.892876, 36.659805, 23.214571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309216, 36.662357, 22.719549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.203991, 36.277271, 22.744774>,  <41.140854, 36.046219, 22.759909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.203991, 36.277271, 22.744774>,  <41.309216, 36.662357, 22.719549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203991, 36.277271, 22.744774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011069, -0.062346, -0.997993,
		0.964715, -0.263235, 0.005744,
		-0.263065, -0.962715, 0.063060,
		41.125072, 35.988457, 22.763693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523788, 36.407394, 22.080242>,  <41.309216, 36.662357, 22.719549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523788, 36.407394, 22.080242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.291798, 36.110901, 22.215412>,  <41.152603, 35.933002, 22.296515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.291798, 36.110901, 22.215412>,  <41.523788, 36.407394, 22.080242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291798, 36.110901, 22.215412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159618, -0.303376, -0.939407,
		0.798841, -0.598775, 0.057637,
		-0.579979, -0.741237, 0.337925,
		41.117805, 35.888531, 22.316790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809963, 35.775223, 21.783953>,  <41.523788, 36.407394, 22.080242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809963, 35.775223, 21.783953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.448662, 35.638653, 21.887928>,  <41.231880, 35.556713, 21.950314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.448662, 35.638653, 21.887928>,  <41.809963, 35.775223, 21.783953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448662, 35.638653, 21.887928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144633, -0.328089, -0.933509,
		0.404003, -0.880789, 0.246966,
		-0.903251, -0.341421, 0.259940,
		41.177685, 35.536228, 21.965910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.802547, 35.105263, 21.531406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.414745, 35.198509, 21.561634>,  <41.182064, 35.254456, 21.579771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.414745, 35.198509, 21.561634>,  <41.802547, 35.105263, 21.531406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414745, 35.198509, 21.561634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176951, -0.452601, -0.873980,
		-0.169535, -0.860703, 0.480051,
		-0.969508, 0.233116, 0.075571,
		41.123894, 35.268444, 21.584305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454803, 34.527985, 21.347172>,  <41.802547, 35.105263, 21.531406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454803, 34.527985, 21.347172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.207382, 34.838562, 21.298960>,  <41.058929, 35.024910, 21.270033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.207382, 34.838562, 21.298960>,  <41.454803, 34.527985, 21.347172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207382, 34.838562, 21.298960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331259, -0.396786, -0.856054,
		-0.712501, -0.489590, 0.502638,
		-0.618555, 0.776442, -0.120529,
		41.021816, 35.071495, 21.262800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922512, 34.238552, 21.109783>,  <41.454803, 34.527985, 21.347172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922512, 34.238552, 21.109783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910034, 34.620758, 20.992474>,  <40.902546, 34.850082, 20.922087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910034, 34.620758, 20.992474>,  <40.922512, 34.238552, 21.109783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910034, 34.620758, 20.992474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352169, -0.285111, -0.891453,
		-0.935416, 0.075470, 0.345399,
		-0.031199, 0.955519, -0.293275,
		40.900673, 34.907413, 20.904491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350742, 34.236156, 20.827726>,  <40.922512, 34.238552, 21.109783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350742, 34.236156, 20.827726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.522083, 34.572144, 20.694473>,  <40.624886, 34.773735, 20.614521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.522083, 34.572144, 20.694473>,  <40.350742, 34.236156, 20.827726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522083, 34.572144, 20.694473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414815, -0.144738, -0.898320,
		-0.802774, 0.522982, 0.286431,
		0.428348, 0.839964, -0.333132,
		40.650589, 34.824135, 20.594534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759907, 34.660435, 20.516949>,  <40.350742, 34.236156, 20.827726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759907, 34.660435, 20.516949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.110180, 34.779949, 20.365210>,  <40.320343, 34.851658, 20.274166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.110180, 34.779949, 20.365210>,  <39.759907, 34.660435, 20.516949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110180, 34.779949, 20.365210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297736, -0.284404, -0.911300,
		-0.380175, 0.910955, -0.160088,
		0.875683, 0.298789, -0.379347,
		40.372887, 34.869587, 20.251406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627579, 35.048656, 19.911694>,  <39.759907, 34.660435, 20.516949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627579, 35.048656, 19.911694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013752, 34.950233, 19.877316>,  <40.245457, 34.891178, 19.856689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013752, 34.950233, 19.877316>,  <39.627579, 35.048656, 19.911694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013752, 34.950233, 19.877316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128974, -0.164468, -0.977914,
		0.226492, 0.955198, -0.190519,
		0.965436, -0.246062, -0.085946,
		40.303383, 34.876415, 19.851532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876575, 35.521034, 19.411997>,  <39.627579, 35.048656, 19.911694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876575, 35.521034, 19.411997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139786, 35.219837, 19.411024>,  <40.297710, 35.039120, 19.410440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139786, 35.219837, 19.411024>,  <39.876575, 35.521034, 19.411997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139786, 35.219837, 19.411024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042834, -0.034208, -0.998496,
		0.751775, 0.657141, -0.054764,
		0.658027, -0.752991, -0.002431,
		40.337193, 34.993938, 19.410295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253574, 35.638912, 18.897970>,  <39.876575, 35.521034, 19.411997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253574, 35.638912, 18.897970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.368370, 35.260521, 18.958307>,  <40.437248, 35.033485, 18.994509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.368370, 35.260521, 18.958307>,  <40.253574, 35.638912, 18.897970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368370, 35.260521, 18.958307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127749, -0.118265, -0.984730,
		0.949377, 0.301879, 0.086908,
		0.286991, -0.945982, 0.150843,
		40.454468, 34.976727, 19.003561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989002, 35.556717, 18.676064>,  <40.253574, 35.638912, 18.897970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989002, 35.556717, 18.676064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.782242, 35.214298, 18.676992>,  <40.658188, 35.008846, 18.677549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.782242, 35.214298, 18.676992>,  <40.989002, 35.556717, 18.676064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782242, 35.214298, 18.676992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038447, -0.025923, -0.998924,
		0.855184, -0.516251, 0.046312,
		-0.516896, -0.856045, 0.002320,
		40.627174, 34.957485, 18.677689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240444, 35.257614, 18.178928>,  <40.989002, 35.556717, 18.676064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240444, 35.257614, 18.178928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.896851, 35.057674, 18.223282>,  <40.690693, 34.937710, 18.249893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.896851, 35.057674, 18.223282>,  <41.240444, 35.257614, 18.178928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896851, 35.057674, 18.223282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088074, -0.069085, -0.993715,
		0.504368, -0.863353, 0.015319,
		-0.858985, -0.499849, 0.110883,
		40.639156, 34.907719, 18.256546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365643, 34.702644, 17.838823>,  <41.240444, 35.257614, 18.178928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365643, 34.702644, 17.838823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969997, 34.757324, 17.860596>,  <40.732609, 34.790134, 17.873659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969997, 34.757324, 17.860596>,  <41.365643, 34.702644, 17.838823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969997, 34.757324, 17.860596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075368, -0.152998, -0.985348,
		-0.126359, -0.978728, 0.161635,
		-0.989117, 0.136690, 0.054433,
		40.673264, 34.798336, 17.876925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026714, 34.175892, 17.418770>,  <41.365643, 34.702644, 17.838823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026714, 34.175892, 17.418770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.763191, 34.470810, 17.478598>,  <40.605080, 34.647762, 17.514494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.763191, 34.470810, 17.478598>,  <41.026714, 34.175892, 17.418770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763191, 34.470810, 17.478598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194173, 0.025434, -0.980638,
		-0.726826, -0.675089, 0.126407,
		-0.658803, 0.737297, 0.149570,
		40.565552, 34.691998, 17.523468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511166, 33.930191, 17.064306>,  <41.026714, 34.175892, 17.418770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511166, 33.930191, 17.064306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.458458, 34.325424, 17.096134>,  <40.426834, 34.562565, 17.115231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.458458, 34.325424, 17.096134>,  <40.511166, 33.930191, 17.064306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458458, 34.325424, 17.096134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306549, 0.035718, -0.951185,
		-0.942690, -0.149731, 0.298188,
		-0.131771, 0.988082, 0.079571,
		40.418926, 34.621849, 17.120005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948147, 34.033249, 16.674824>,  <40.511166, 33.930191, 17.064306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948147, 34.033249, 16.674824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078014, 34.409660, 16.712894>,  <40.155933, 34.635506, 16.735737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078014, 34.409660, 16.712894>,  <39.948147, 34.033249, 16.674824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078014, 34.409660, 16.712894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453183, 0.243095, -0.857630,
		-0.830191, 0.235312, 0.505383,
		0.324666, 0.941028, 0.095176,
		40.175415, 34.691967, 16.741447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432858, 34.400135, 16.389257>,  <39.948147, 34.033249, 16.674824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432858, 34.400135, 16.389257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735531, 34.661617, 16.385336>,  <39.917133, 34.818508, 16.382982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735531, 34.661617, 16.385336>,  <39.432858, 34.400135, 16.389257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735531, 34.661617, 16.385336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316865, 0.353579, -0.880102,
		-0.571861, 0.669066, 0.474685,
		0.756684, 0.653707, -0.009806,
		39.962536, 34.857731, 16.382395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275055, 35.021648, 16.277052>,  <39.432858, 34.400135, 16.389257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275055, 35.021648, 16.277052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649010, 35.057411, 16.139647>,  <39.873383, 35.078869, 16.057203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649010, 35.057411, 16.139647>,  <39.275055, 35.021648, 16.277052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649010, 35.057411, 16.139647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349340, 0.403249, -0.845785,
		0.062899, 0.910712, 0.408225,
		0.934883, 0.089410, -0.343512,
		39.929474, 35.084236, 16.036592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375671, 35.765770, 16.021767>,  <39.275055, 35.021648, 16.277052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375671, 35.765770, 16.021767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644501, 35.540550, 15.829393>,  <39.805798, 35.405418, 15.713970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644501, 35.540550, 15.829393>,  <39.375671, 35.765770, 16.021767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644501, 35.540550, 15.829393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370583, 0.306545, -0.876755,
		0.641080, 0.767470, -0.002634,
		0.672075, -0.563046, -0.480931,
		39.846123, 35.371635, 15.685114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594501, 36.099792, 15.419163>,  <39.375671, 35.765770, 16.021767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594501, 36.099792, 15.419163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.748531, 35.740189, 15.335728>,  <39.840950, 35.524426, 15.285666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.748531, 35.740189, 15.335728>,  <39.594501, 36.099792, 15.419163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748531, 35.740189, 15.335728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379217, 0.051920, -0.923850,
		0.841376, 0.434850, -0.320925,
		0.385074, -0.899005, -0.208586,
		39.864052, 35.470486, 15.273151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917923, 36.161270, 14.736302>,  <39.594501, 36.099792, 15.419163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917923, 36.161270, 14.736302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886330, 35.766716, 14.793991>,  <39.867374, 35.529984, 14.828605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886330, 35.766716, 14.793991>,  <39.917923, 36.161270, 14.736302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886330, 35.766716, 14.793991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359593, -0.106743, -0.926984,
		0.929761, -0.125075, -0.346267,
		-0.078981, -0.986388, 0.144222,
		39.862637, 35.470798, 14.837257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136696, 35.913002, 14.123522>,  <39.917923, 36.161270, 14.736302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136696, 35.913002, 14.123522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938221, 35.603458, 14.280972>,  <39.819138, 35.417732, 14.375443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938221, 35.603458, 14.280972>,  <40.136696, 35.913002, 14.123522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938221, 35.603458, 14.280972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420855, -0.182170, -0.888648,
		0.759397, -0.606591, -0.235294,
		-0.496183, -0.773861, 0.393626,
		39.789368, 35.371300, 14.399060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166439, 35.377602, 13.619525>,  <40.136696, 35.913002, 14.123522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166439, 35.377602, 13.619525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835587, 35.302593, 13.831446>,  <39.637074, 35.257587, 13.958598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835587, 35.302593, 13.831446>,  <40.166439, 35.377602, 13.619525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835587, 35.302593, 13.831446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484679, -0.239200, -0.841350,
		0.284499, -0.952691, 0.106963,
		-0.827131, -0.187520, 0.529801,
		39.587448, 35.246338, 13.990386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891273, 34.822025, 13.232388>,  <40.166439, 35.377602, 13.619525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891273, 34.822025, 13.232388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615955, 34.996815, 13.464010>,  <39.450764, 35.101688, 13.602983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615955, 34.996815, 13.464010>,  <39.891273, 34.822025, 13.232388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615955, 34.996815, 13.464010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661444, -0.050245, -0.748310,
		-0.297899, -0.898068, 0.323619,
		-0.688294, 0.436977, 0.579054,
		39.409466, 35.127907, 13.637727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287636, 34.301918, 13.324304>,  <39.891273, 34.822025, 13.232388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287636, 34.301918, 13.324304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227795, 34.697414, 13.322932>,  <39.191891, 34.934711, 13.322109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227795, 34.697414, 13.322932>,  <39.287636, 34.301918, 13.324304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227795, 34.697414, 13.322932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495597, -0.077986, -0.865045,
		-0.855572, -0.127713, 0.501683,
		-0.149602, 0.988740, -0.003428,
		39.182915, 34.994038, 13.321904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902321, 34.132278, 12.694159>,  <39.287636, 34.301918, 13.324304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902321, 34.132278, 12.694159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577301, 33.924667, 12.588048>,  <38.382290, 33.800098, 12.524382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577301, 33.924667, 12.588048>,  <38.902321, 34.132278, 12.694159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577301, 33.924667, 12.588048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141753, -0.617393, 0.773778,
		-0.565395, 0.591128, 0.575236,
		-0.812548, -0.519032, -0.265276,
		38.333538, 33.768959, 12.508465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325939, 34.217911, 13.153696>,  <38.902321, 34.132278, 12.694159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325939, 34.217911, 13.153696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381165, 33.866039, 12.971663>,  <38.414299, 33.654915, 12.862444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381165, 33.866039, 12.971663>,  <38.325939, 34.217911, 13.153696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381165, 33.866039, 12.971663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277462, -0.406730, 0.870394,
		-0.950765, -0.246435, 0.187925,
		0.138061, -0.879682, -0.455081,
		38.422585, 33.602135, 12.835139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133526, 33.774349, 13.734441>,  <38.325939, 34.217911, 13.153696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133526, 33.774349, 13.734441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270752, 33.526711, 13.451872>,  <38.353088, 33.378128, 13.282331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270752, 33.526711, 13.451872>,  <38.133526, 33.774349, 13.734441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270752, 33.526711, 13.451872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335165, -0.621877, 0.707767,
		-0.877481, -0.479577, -0.005845,
		0.343063, -0.619093, -0.706422,
		38.373672, 33.340984, 13.239945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053967, 33.117596, 14.104223>,  <38.133526, 33.774349, 13.734441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053967, 33.117596, 14.104223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312492, 33.058510, 13.804768>,  <38.467606, 33.023060, 13.625094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312492, 33.058510, 13.804768>,  <38.053967, 33.117596, 14.104223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312492, 33.058510, 13.804768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587368, -0.529978, 0.611656,
		-0.487111, -0.835047, -0.255770,
		0.646314, -0.147713, -0.748638,
		38.506386, 33.014194, 13.580176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181583, 32.309532, 14.078933>,  <38.053967, 33.117596, 14.104223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181583, 32.309532, 14.078933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486588, 32.520645, 13.929249>,  <38.669590, 32.647312, 13.839438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486588, 32.520645, 13.929249>,  <38.181583, 32.309532, 14.078933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486588, 32.520645, 13.929249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606713, -0.382439, 0.696878,
		0.224686, -0.758412, -0.611823,
		0.762506, 0.527780, -0.374210,
		38.715340, 32.678978, 13.816986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706268, 31.748283, 14.106024>,  <38.181583, 32.309532, 14.078933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706268, 31.748283, 14.106024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879055, 32.106781, 14.065733>,  <38.982727, 32.321880, 14.041558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879055, 32.106781, 14.065733>,  <38.706268, 31.748283, 14.106024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879055, 32.106781, 14.065733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781371, -0.316130, 0.538072,
		0.450403, -0.311135, -0.836859,
		0.431969, 0.896246, -0.100726,
		39.008644, 32.375656, 14.035515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384872, 31.596193, 14.075583>,  <38.706268, 31.748283, 14.106024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384872, 31.596193, 14.075583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354259, 31.977020, 14.194048>,  <39.335892, 32.205517, 14.265127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354259, 31.977020, 14.194048>,  <39.384872, 31.596193, 14.075583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354259, 31.977020, 14.194048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627441, -0.184860, 0.756402,
		0.774894, 0.243713, -0.583218,
		-0.076531, 0.952067, 0.296163,
		39.331299, 32.262642, 14.282897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980812, 31.664625, 14.385345>,  <39.384872, 31.596193, 14.075583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980812, 31.664625, 14.385345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766190, 31.976456, 14.514573>,  <39.637417, 32.163555, 14.592110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766190, 31.976456, 14.514573>,  <39.980812, 31.664625, 14.385345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766190, 31.976456, 14.514573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403699, -0.099067, 0.909512,
		0.741039, 0.618424, -0.261559,
		-0.536552, 0.779575, 0.323070,
		39.605225, 32.210327, 14.611494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377762, 32.017059, 14.940825>,  <39.980812, 31.664625, 14.385345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377762, 32.017059, 14.940825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.023373, 32.193047, 14.999443>,  <39.810738, 32.298641, 15.034614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.023373, 32.193047, 14.999443>,  <40.377762, 32.017059, 14.940825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023373, 32.193047, 14.999443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218115, 0.116485, 0.968946,
		0.409238, 0.890425, -0.199167,
		-0.885974, 0.439971, 0.146545,
		39.757580, 32.325039, 15.043406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518738, 32.718243, 15.259804>,  <40.377762, 32.017059, 14.940825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518738, 32.718243, 15.259804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.155090, 32.567177, 15.330093>,  <39.936901, 32.476536, 15.372267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.155090, 32.567177, 15.330093>,  <40.518738, 32.718243, 15.259804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155090, 32.567177, 15.330093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168407, 0.052600, 0.984313,
		-0.380983, 0.924447, 0.015782,
		-0.909115, -0.377665, 0.175723,
		39.882355, 32.453876, 15.382811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393505, 33.083183, 15.814016>,  <40.518738, 32.718243, 15.259804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393505, 33.083183, 15.814016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148563, 32.768364, 15.843879>,  <40.001598, 32.579472, 15.861796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148563, 32.768364, 15.843879>,  <40.393505, 33.083183, 15.814016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148563, 32.768364, 15.843879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128964, -0.006277, 0.991629,
		-0.779991, 0.616861, 0.105344,
		-0.612358, -0.787047, 0.074657,
		39.964855, 32.532249, 15.866276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878380, 33.304611, 16.392216>,  <40.393505, 33.083183, 15.814016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878380, 33.304611, 16.392216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.893616, 32.909348, 16.332754>,  <39.902756, 32.672192, 16.297077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.893616, 32.909348, 16.332754>,  <39.878380, 33.304611, 16.392216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893616, 32.909348, 16.332754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161301, -0.140732, 0.976820,
		-0.986170, -0.061181, 0.154030,
		0.038086, -0.988156, -0.148654,
		39.905041, 32.612900, 16.288158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323269, 32.993999, 16.949001>,  <39.878380, 33.304611, 16.392216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323269, 32.993999, 16.949001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.575375, 32.706032, 16.832739>,  <39.726639, 32.533253, 16.762981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.575375, 32.706032, 16.832739>,  <39.323269, 32.993999, 16.949001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575375, 32.706032, 16.832739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169552, -0.237703, 0.956426,
		-0.757638, -0.652085, -0.027753,
		0.630268, -0.719919, -0.290655,
		39.764454, 32.490055, 16.745543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215816, 32.480183, 17.419605>,  <39.323269, 32.993999, 16.949001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215816, 32.480183, 17.419605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583057, 32.398827, 17.283531>,  <39.803402, 32.350014, 17.201887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583057, 32.398827, 17.283531>,  <39.215816, 32.480183, 17.419605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583057, 32.398827, 17.283531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299717, -0.205351, 0.931665,
		-0.259348, -0.957321, -0.127574,
		0.918100, -0.203389, -0.340183,
		39.858486, 32.337811, 17.181477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297371, 31.893188, 17.766241>,  <39.215816, 32.480183, 17.419605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297371, 31.893188, 17.766241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645832, 32.037289, 17.632788>,  <39.854908, 32.123749, 17.552715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645832, 32.037289, 17.632788>,  <39.297371, 31.893188, 17.766241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645832, 32.037289, 17.632788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403544, -0.138207, 0.904462,
		0.279724, -0.922560, -0.265777,
		0.871153, 0.360252, -0.333633,
		39.907177, 32.145363, 17.532698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753605, 31.496496, 18.097319>,  <39.297371, 31.893188, 17.766241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753605, 31.496496, 18.097319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.963509, 31.822861, 18.000225>,  <40.089451, 32.018681, 17.941969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.963509, 31.822861, 18.000225>,  <39.753605, 31.496496, 18.097319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963509, 31.822861, 18.000225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445496, -0.020241, 0.895055,
		0.725371, -0.577824, -0.374107,
		0.524756, 0.815911, -0.242736,
		40.120937, 32.067635, 17.927404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432587, 31.341017, 18.254522>,  <39.753605, 31.496496, 18.097319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432587, 31.341017, 18.254522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443546, 31.740845, 18.250290>,  <40.450123, 31.980742, 18.247751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443546, 31.740845, 18.250290>,  <40.432587, 31.341017, 18.254522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443546, 31.740845, 18.250290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479224, -0.003846, 0.877684,
		0.877265, -0.029117, -0.479123,
		0.027398, 0.999569, -0.010579,
		40.451767, 32.040714, 18.247116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256050, 31.626898, 18.377447>,  <40.432587, 31.341017, 18.254522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256050, 31.626898, 18.377447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033546, 31.940865, 18.486609>,  <40.900043, 32.129246, 18.552105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033546, 31.940865, 18.486609>,  <41.256050, 31.626898, 18.377447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033546, 31.940865, 18.486609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588691, 0.140417, 0.796069,
		0.586528, 0.603480, -0.540182,
		-0.556263, 0.784917, 0.272904,
		40.866669, 32.176338, 18.568480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712532, 32.118835, 18.501545>,  <41.256050, 31.626898, 18.377447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712532, 32.118835, 18.501545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380161, 32.243214, 18.686100>,  <41.180740, 32.317841, 18.796833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380161, 32.243214, 18.686100>,  <41.712532, 32.118835, 18.501545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380161, 32.243214, 18.686100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533917, 0.212341, 0.818440,
		0.156519, 0.926404, -0.342458,
		-0.830924, 0.310946, 0.461388,
		41.130882, 32.336498, 18.824516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908634, 32.666939, 18.843962>,  <41.712532, 32.118835, 18.501545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908634, 32.666939, 18.843962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.592922, 32.544399, 19.056826>,  <41.403496, 32.470875, 19.184544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.592922, 32.544399, 19.056826>,  <41.908634, 32.666939, 18.843962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592922, 32.544399, 19.056826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509564, 0.156797, 0.846026,
		-0.342619, 0.938918, 0.032348,
		-0.789276, -0.306348, 0.532160,
		41.356140, 32.452496, 19.216473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775928, 33.212116, 19.369663>,  <41.908634, 32.666939, 18.843962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775928, 33.212116, 19.369663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.567963, 32.897602, 19.503199>,  <41.443184, 32.708893, 19.583319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.567963, 32.897602, 19.503199>,  <41.775928, 33.212116, 19.369663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567963, 32.897602, 19.503199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397497, 0.123225, 0.909292,
		-0.756098, 0.605454, 0.248478,
		-0.519916, -0.786283, 0.333837,
		41.411987, 32.661716, 19.603350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.737617, 36.496719, 24.439566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466984, 36.202316, 24.430437>,  <41.304604, 36.025673, 24.424959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466984, 36.202316, 24.430437>,  <41.737617, 36.496719, 24.439566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466984, 36.202316, 24.430437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207206, 0.160554, 0.965033,
		-0.706611, 0.657655, -0.261134,
		-0.676584, -0.736012, -0.022821,
		41.264008, 35.981514, 24.423592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165730, 36.780365, 24.701321>,  <41.737617, 36.496719, 24.439566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165730, 36.780365, 24.701321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.084385, 36.390152, 24.734751>,  <41.035576, 36.156025, 24.754808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.084385, 36.390152, 24.734751>,  <41.165730, 36.780365, 24.701321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084385, 36.390152, 24.734751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333230, 0.149223, 0.930962,
		-0.920653, 0.161474, -0.355423,
		-0.203363, -0.975530, 0.083575,
		41.023376, 36.097492, 24.759823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483471, 36.864925, 24.889244>,  <41.165730, 36.780365, 24.701321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483471, 36.864925, 24.889244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636745, 36.507568, 24.983063>,  <40.728710, 36.293152, 25.039354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636745, 36.507568, 24.983063>,  <40.483471, 36.864925, 24.889244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636745, 36.507568, 24.983063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449913, 0.041242, 0.892120,
		-0.806689, -0.447374, -0.386147,
		0.383185, -0.893396, 0.234549,
		40.751701, 36.239552, 25.053427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929749, 36.509628, 25.246912>,  <40.483471, 36.864925, 24.889244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929749, 36.509628, 25.246912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.244431, 36.291283, 25.362232>,  <40.433239, 36.160275, 25.431425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.244431, 36.291283, 25.362232>,  <39.929749, 36.509628, 25.246912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244431, 36.291283, 25.362232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439840, -0.167949, 0.882232,
		-0.433163, -0.820866, -0.372221,
		0.786709, -0.545868, 0.288301,
		40.480442, 36.127522, 25.448723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665573, 36.086216, 25.593567>,  <39.929749, 36.509628, 25.246912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665573, 36.086216, 25.593567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.042320, 36.033924, 25.717373>,  <40.268368, 36.002548, 25.791656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.042320, 36.033924, 25.717373>,  <39.665573, 36.086216, 25.593567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042320, 36.033924, 25.717373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326599, -0.139969, 0.934741,
		-0.078869, -0.981489, -0.174526,
		0.941866, -0.130722, 0.309514,
		40.324879, 35.994705, 25.810226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639324, 35.551785, 26.023417>,  <39.665573, 36.086216, 25.593567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639324, 35.551785, 26.023417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992081, 35.706005, 26.131948>,  <40.203735, 35.798538, 26.197067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992081, 35.706005, 26.131948>,  <39.639324, 35.551785, 26.023417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992081, 35.706005, 26.131948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202121, -0.210748, 0.956416,
		0.425930, -0.898295, -0.107929,
		0.881890, 0.385552, 0.271328,
		40.256649, 35.821671, 26.213346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098789, 35.025688, 26.365265>,  <39.639324, 35.551785, 26.023417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098789, 35.025688, 26.365265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173607, 35.399273, 26.487072>,  <40.218498, 35.623425, 26.560156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173607, 35.399273, 26.487072>,  <40.098789, 35.025688, 26.365265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173607, 35.399273, 26.487072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111918, -0.287710, 0.951155,
		0.975955, -0.211989, 0.050713,
		0.187044, 0.933961, 0.304518,
		40.229721, 35.679462, 26.578428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446033, 34.892925, 26.986349>,  <40.098789, 35.025688, 26.365265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446033, 34.892925, 26.986349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339016, 35.276623, 27.022730>,  <40.274807, 35.506840, 27.044559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339016, 35.276623, 27.022730>,  <40.446033, 34.892925, 26.986349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339016, 35.276623, 27.022730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170017, -0.139910, 0.975459,
		0.948428, 0.245511, 0.200520,
		-0.267540, 0.959244, 0.090953,
		40.258755, 35.564396, 27.050016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758766, 35.163952, 27.566919>,  <40.446033, 34.892925, 26.986349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758766, 35.163952, 27.566919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447517, 35.405170, 27.496651>,  <40.260769, 35.549904, 27.454491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447517, 35.405170, 27.496651>,  <40.758766, 35.163952, 27.566919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447517, 35.405170, 27.496651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217416, 0.003799, 0.976072,
		0.589288, 0.797694, 0.128156,
		-0.778120, 0.603050, -0.175670,
		40.214081, 35.586086, 27.443951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845947, 35.624043, 28.044506>,  <40.758766, 35.163952, 27.566919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845947, 35.624043, 28.044506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458248, 35.653694, 27.950645>,  <40.225628, 35.671486, 27.894329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458248, 35.653694, 27.950645>,  <40.845947, 35.624043, 28.044506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458248, 35.653694, 27.950645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243033, -0.138769, 0.960041,
		0.038602, 0.987546, 0.152517,
		-0.969250, 0.074126, -0.234649,
		40.167473, 35.675930, 27.880251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591103, 36.139030, 28.460373>,  <40.845947, 35.624043, 28.044506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591103, 36.139030, 28.460373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.281773, 35.907173, 28.357628>,  <40.096176, 35.768059, 28.295980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.281773, 35.907173, 28.357628>,  <40.591103, 36.139030, 28.460373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281773, 35.907173, 28.357628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284504, -0.044795, 0.957628,
		-0.566593, 0.813635, -0.130271,
		-0.773324, -0.579648, -0.256863,
		40.049774, 35.733280, 28.280569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050938, 36.465981, 28.678841>,  <40.591103, 36.139030, 28.460373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050938, 36.465981, 28.678841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.899162, 36.098766, 28.632828>,  <39.808098, 35.878437, 28.605221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.899162, 36.098766, 28.632828>,  <40.050938, 36.465981, 28.678841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899162, 36.098766, 28.632828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325213, 0.015941, 0.945506,
		-0.866176, 0.396173, -0.304607,
		-0.379440, -0.918037, -0.115033,
		39.785332, 35.823357, 28.598318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451710, 36.529236, 29.204750>,  <40.050938, 36.465981, 28.678841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451710, 36.529236, 29.204750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.541153, 36.152763, 29.103418>,  <39.594818, 35.926880, 29.042620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.541153, 36.152763, 29.103418>,  <39.451710, 36.529236, 29.204750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541153, 36.152763, 29.103418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167486, -0.293148, 0.941282,
		-0.960181, -0.168052, -0.223186,
		0.223611, -0.941182, -0.253329,
		39.608234, 35.870407, 29.027420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905109, 36.014481, 29.505894>,  <39.451710, 36.529236, 29.204750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905109, 36.014481, 29.505894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.267204, 35.853569, 29.451164>,  <39.484459, 35.757023, 29.418327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.267204, 35.853569, 29.451164>,  <38.905109, 36.014481, 29.505894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267204, 35.853569, 29.451164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056346, -0.205510, 0.977032,
		-0.421159, -0.892152, -0.163368,
		0.905235, -0.402281, -0.136821,
		39.538776, 35.732883, 29.410118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365273, 36.332127, 29.122728>,  <38.905109, 36.014481, 29.505894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365273, 36.332127, 29.122728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079342, 36.420067, 29.388266>,  <37.907784, 36.472832, 29.547588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079342, 36.420067, 29.388266>,  <38.365273, 36.332127, 29.122728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079342, 36.420067, 29.388266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684684, -0.026973, -0.728341,
		-0.142220, -0.975161, 0.169808,
		-0.714829, 0.219849, 0.663841,
		37.864895, 36.486023, 29.587418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866478, 35.860001, 29.115219>,  <38.365273, 36.332127, 29.122728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866478, 35.860001, 29.115219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.680992, 36.167149, 29.292007>,  <37.569698, 36.351437, 29.398081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.680992, 36.167149, 29.292007>,  <37.866478, 35.860001, 29.115219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680992, 36.167149, 29.292007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736332, -0.056590, -0.674249,
		-0.492727, -0.638097, 0.591652,
		-0.463718, 0.767873, 0.441968,
		37.541878, 36.397511, 29.424599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211937, 35.612217, 29.089712>,  <37.866478, 35.860001, 29.115219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211937, 35.612217, 29.089712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.204697, 36.011448, 29.113455>,  <37.200352, 36.250984, 29.127701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.204697, 36.011448, 29.113455>,  <37.211937, 35.612217, 29.089712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204697, 36.011448, 29.113455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672618, 0.031769, -0.739308,
		-0.739769, -0.053304, 0.670746,
		-0.018100, 0.998073, 0.059355,
		37.199268, 36.310871, 29.131262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539120, 35.770252, 28.998529>,  <37.211937, 35.612217, 29.089712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539120, 35.770252, 28.998529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721836, 36.120541, 28.935980>,  <36.831467, 36.330715, 28.898449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721836, 36.120541, 28.935980>,  <36.539120, 35.770252, 28.998529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721836, 36.120541, 28.935980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616620, 0.184997, -0.765216,
		-0.641187, 0.445969, 0.624493,
		0.456791, 0.875722, -0.156376,
		36.858875, 36.383259, 28.889067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988422, 36.289818, 28.935354>,  <36.539120, 35.770252, 28.998529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988422, 36.289818, 28.935354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.301128, 36.448727, 28.743099>,  <36.488754, 36.544071, 28.627747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.301128, 36.448727, 28.743099>,  <35.988422, 36.289818, 28.935354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301128, 36.448727, 28.743099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569674, 0.141544, -0.809591,
		-0.253598, 0.906719, 0.336971,
		0.781767, 0.397274, -0.480639,
		36.535660, 36.567909, 28.598907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768223, 36.928226, 28.688463>,  <35.988422, 36.289818, 28.935354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768223, 36.928226, 28.688463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.099739, 36.850185, 28.478687>,  <36.298649, 36.803360, 28.352821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.099739, 36.850185, 28.478687>,  <35.768223, 36.928226, 28.688463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099739, 36.850185, 28.478687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512887, 0.109850, -0.851399,
		0.223719, 0.974612, -0.009022,
		0.828792, -0.195102, -0.524441,
		36.348377, 36.791656, 28.321356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756752, 37.372074, 28.216864>,  <35.768223, 36.928226, 28.688463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756752, 37.372074, 28.216864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.037651, 37.129185, 28.068199>,  <36.206188, 36.983452, 27.979000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.037651, 37.129185, 28.068199>,  <35.756752, 37.372074, 28.216864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037651, 37.129185, 28.068199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289445, 0.233440, -0.928293,
		0.650441, 0.759465, -0.011825,
		0.702245, -0.607223, -0.371662,
		36.248325, 36.947018, 27.956701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063782, 37.777084, 27.679472>,  <35.756752, 37.372074, 28.216864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063782, 37.777084, 27.679472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153206, 37.396240, 27.596033>,  <36.206860, 37.167736, 27.545969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153206, 37.396240, 27.596033>,  <36.063782, 37.777084, 27.679472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153206, 37.396240, 27.596033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317471, 0.131213, -0.939146,
		0.921539, 0.276179, -0.272932,
		0.223560, -0.952108, -0.208597,
		36.220272, 37.110607, 27.533455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412876, 37.798416, 27.060089>,  <36.063782, 37.777084, 27.679472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412876, 37.798416, 27.060089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.260715, 37.428898, 27.077517>,  <36.169418, 37.207188, 27.087973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.260715, 37.428898, 27.077517>,  <36.412876, 37.798416, 27.060089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260715, 37.428898, 27.077517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230100, 0.048912, -0.971937,
		0.895739, -0.379752, -0.231171,
		-0.380403, -0.923795, 0.043568,
		36.146595, 37.151760, 27.090588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730698, 37.402828, 26.536486>,  <36.412876, 37.798416, 27.060089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730698, 37.402828, 26.536486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.395424, 37.197132, 26.609156>,  <36.194260, 37.073715, 26.652758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.395424, 37.197132, 26.609156>,  <36.730698, 37.402828, 26.536486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395424, 37.197132, 26.609156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130727, -0.133965, -0.982326,
		0.529494, -0.847116, 0.045061,
		-0.838180, -0.514245, 0.181675,
		36.143970, 37.042858, 26.663658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836403, 36.769875, 26.182261>,  <36.730698, 37.402828, 26.536486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836403, 36.769875, 26.182261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.441654, 36.812584, 26.230742>,  <36.204807, 36.838211, 26.259830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.441654, 36.812584, 26.230742>,  <36.836403, 36.769875, 26.182261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441654, 36.812584, 26.230742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140460, -0.196747, -0.970341,
		-0.079760, -0.974623, 0.209160,
		-0.986869, 0.106773, 0.121203,
		36.145596, 36.844616, 26.267103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587772, 36.102531, 25.784891>,  <36.836403, 36.769875, 26.182261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587772, 36.102531, 25.784891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.271679, 36.344658, 25.823109>,  <36.082024, 36.489933, 25.846039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.271679, 36.344658, 25.823109>,  <36.587772, 36.102531, 25.784891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271679, 36.344658, 25.823109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339084, -0.302041, -0.890951,
		-0.510450, -0.736453, 0.443935,
		-0.790230, 0.605317, 0.095542,
		36.034611, 36.526253, 25.851772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973598, 35.610077, 25.639849>,  <36.587772, 36.102531, 25.784891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973598, 35.610077, 25.639849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.849388, 35.987617, 25.594742>,  <35.774860, 36.214142, 25.567678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.849388, 35.987617, 25.594742>,  <35.973598, 35.610077, 25.639849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849388, 35.987617, 25.594742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428433, -0.244870, -0.869761,
		-0.848539, -0.221772, 0.480416,
		-0.310528, 0.943852, -0.112767,
		35.756229, 36.270775, 25.560911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272758, 35.593643, 25.431480>,  <35.973598, 35.610077, 25.639849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272758, 35.593643, 25.431480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.422543, 35.945950, 25.315531>,  <35.512413, 36.157333, 25.245962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.422543, 35.945950, 25.315531>,  <35.272758, 35.593643, 25.431480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422543, 35.945950, 25.315531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330805, -0.165147, -0.929136,
		-0.866224, 0.443820, 0.229521,
		0.374464, 0.880767, -0.289872,
		35.534882, 36.210178, 25.228569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626019, 35.371613, 25.432295>,  <35.272758, 35.593643, 25.431480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626019, 35.371613, 25.432295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.601715, 34.972450, 25.441208>,  <34.587132, 34.732952, 25.446556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.601715, 34.972450, 25.441208>,  <34.626019, 35.371613, 25.432295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601715, 34.972450, 25.441208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138859, 0.013656, 0.990218,
		-0.988446, 0.063261, 0.137738,
		-0.060761, -0.997904, 0.022282,
		34.583488, 34.673080, 25.447893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228523, 35.250946, 26.097332>,  <34.626019, 35.371613, 25.432295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228523, 35.250946, 26.097332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.422756, 34.911865, 26.011906>,  <34.539295, 34.708416, 25.960649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.422756, 34.911865, 26.011906>,  <34.228523, 35.250946, 26.097332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422756, 34.911865, 26.011906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292364, -0.072758, 0.953535,
		-0.823852, -0.525460, 0.212507,
		0.485583, -0.847702, -0.213567,
		34.568432, 34.657555, 25.947836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008404, 34.780151, 26.579079>,  <34.228523, 35.250946, 26.097332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008404, 34.780151, 26.579079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.359936, 34.655827, 26.434273>,  <34.570854, 34.581230, 26.347389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.359936, 34.655827, 26.434273>,  <34.008404, 34.780151, 26.579079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359936, 34.655827, 26.434273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318855, -0.181853, 0.930194,
		-0.354949, -0.932912, -0.060713,
		0.878830, -0.310813, -0.362013,
		34.623585, 34.562584, 26.325668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097992, 34.174236, 26.882710>,  <34.008404, 34.780151, 26.579079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097992, 34.174236, 26.882710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468750, 34.284698, 26.781046>,  <34.691204, 34.350975, 26.720047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.468750, 34.284698, 26.781046>,  <34.097992, 34.174236, 26.882710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468750, 34.284698, 26.781046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307830, -0.171979, 0.935769,
		0.214710, -0.945601, -0.244417,
		0.926899, 0.276157, -0.254158,
		34.746819, 34.367546, 26.704798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475651, 33.640915, 27.137733>,  <34.097992, 34.174236, 26.882710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475651, 33.640915, 27.137733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.759460, 33.916309, 27.077646>,  <34.929745, 34.081547, 27.041594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.759460, 33.916309, 27.077646>,  <34.475651, 33.640915, 27.137733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759460, 33.916309, 27.077646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451487, -0.280470, 0.847052,
		0.541049, -0.668826, -0.509841,
		0.709525, 0.688483, -0.150218,
		34.972317, 34.122852, 27.032581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119980, 33.270912, 27.268040>,  <34.475651, 33.640915, 27.137733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119980, 33.270912, 27.268040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.227440, 33.656078, 27.278091>,  <35.291916, 33.887177, 27.284122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.227440, 33.656078, 27.278091>,  <35.119980, 33.270912, 27.268040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227440, 33.656078, 27.278091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557475, -0.176702, 0.811171,
		0.785526, -0.203908, -0.584269,
		0.268646, 0.962911, 0.025130,
		35.308033, 33.944950, 27.285631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800583, 33.349045, 27.251072>,  <35.119980, 33.270912, 27.268040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800583, 33.349045, 27.251072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.660755, 33.674488, 27.436903>,  <35.576859, 33.869755, 27.548403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.660755, 33.674488, 27.436903>,  <35.800583, 33.349045, 27.251072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660755, 33.674488, 27.436903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622250, -0.169090, 0.764338,
		0.700430, 0.556277, -0.447161,
		-0.349574, 0.813612, 0.464579,
		35.555882, 33.918571, 27.576277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360302, 33.518188, 27.583080>,  <35.800583, 33.349045, 27.251072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360302, 33.518188, 27.583080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.075996, 33.739933, 27.756283>,  <35.905411, 33.872982, 27.860205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.075996, 33.739933, 27.756283>,  <36.360302, 33.518188, 27.583080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075996, 33.739933, 27.756283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493732, -0.045291, 0.868434,
		0.501039, 0.831042, -0.241515,
		-0.710766, 0.554363, 0.433004,
		35.862766, 33.906242, 27.886185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596760, 34.103806, 27.781086>,  <36.360302, 33.518188, 27.583080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596760, 34.103806, 27.781086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.275188, 34.075199, 28.017252>,  <36.082245, 34.058033, 28.158951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.275188, 34.075199, 28.017252>,  <36.596760, 34.103806, 27.781086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275188, 34.075199, 28.017252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574906, 0.160719, 0.802280,
		-0.152268, 0.984406, -0.088090,
		-0.803926, -0.071519, 0.590413,
		36.034012, 34.053745, 28.194376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640591, 34.650860, 28.091785>,  <36.596760, 34.103806, 27.781086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640591, 34.650860, 28.091785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.409801, 34.407242, 28.309469>,  <36.271328, 34.261070, 28.440079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.409801, 34.407242, 28.309469>,  <36.640591, 34.650860, 28.091785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409801, 34.407242, 28.309469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685147, 0.001790, 0.728403,
		-0.444605, 0.793132, 0.416254,
		-0.576975, -0.609047, 0.544208,
		36.236710, 34.224529, 28.472731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671520, 34.920570, 28.723581>,  <36.640591, 34.650860, 28.091785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671520, 34.920570, 28.723581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.537384, 34.555687, 28.817755>,  <36.456902, 34.336758, 28.874258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.537384, 34.555687, 28.817755>,  <36.671520, 34.920570, 28.723581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537384, 34.555687, 28.817755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815550, -0.155978, 0.557270,
		-0.471622, 0.378881, 0.796255,
		-0.335338, -0.912206, 0.235434,
		36.436783, 34.282024, 28.888386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689476, 34.886238, 29.444897>,  <36.671520, 34.920570, 28.723581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689476, 34.886238, 29.444897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.705856, 34.525719, 29.272392>,  <36.715687, 34.309406, 29.168890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.705856, 34.525719, 29.272392>,  <36.689476, 34.886238, 29.444897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705856, 34.525719, 29.272392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849952, -0.195481, 0.489252,
		-0.525265, -0.386588, 0.758054,
		0.040954, -0.901297, -0.431261,
		36.718143, 34.255329, 29.143015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.081379, 34.083141, 21.848906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461052, 33.957424, 21.855515>,  <33.688854, 33.881992, 21.859480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461052, 33.957424, 21.855515>,  <33.081379, 34.083141, 21.848906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461052, 33.957424, 21.855515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001971, 0.058424, 0.998290,
		-0.314724, -0.947525, 0.056074,
		0.949181, -0.314297, 0.016520,
		33.745808, 33.863136, 21.860470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120224, 33.458370, 22.329268>,  <33.081379, 34.083141, 21.848906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120224, 33.458370, 22.329268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499352, 33.585678, 22.321911>,  <33.726830, 33.662064, 22.317497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499352, 33.585678, 22.321911>,  <33.120224, 33.458370, 22.329268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499352, 33.585678, 22.321911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007142, 0.036473, 0.999309,
		0.318724, -0.947297, 0.032297,
		0.947821, 0.318273, -0.018391,
		33.783699, 33.681160, 22.316393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374813, 33.183346, 22.883669>,  <33.120224, 33.458370, 22.329268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374813, 33.183346, 22.883669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626873, 33.483818, 22.805042>,  <33.778111, 33.664101, 22.757866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626873, 33.483818, 22.805042>,  <33.374813, 33.183346, 22.883669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626873, 33.483818, 22.805042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184030, 0.101457, 0.977670,
		0.754351, -0.652252, -0.074307,
		0.630149, 0.751181, -0.196568,
		33.815918, 33.709171, 22.746071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942768, 33.037693, 23.207985>,  <33.374813, 33.183346, 22.883669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942768, 33.037693, 23.207985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982555, 33.434750, 23.180368>,  <34.006428, 33.672985, 23.163799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982555, 33.434750, 23.180368>,  <33.942768, 33.037693, 23.207985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982555, 33.434750, 23.180368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429080, 0.019813, 0.903049,
		0.897773, -0.119447, -0.423952,
		0.099467, 0.992643, -0.069040,
		34.012394, 33.732544, 23.159657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538971, 33.153946, 23.501461>,  <33.942768, 33.037693, 23.207985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538971, 33.153946, 23.501461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380959, 33.521412, 23.500151>,  <34.286152, 33.741890, 23.499365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380959, 33.521412, 23.500151>,  <34.538971, 33.153946, 23.501461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380959, 33.521412, 23.500151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403445, 0.176687, 0.897783,
		0.825336, 0.353334, -0.440426,
		-0.395035, 0.918660, -0.003275,
		34.262447, 33.797009, 23.499168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986416, 33.506046, 23.957380>,  <34.538971, 33.153946, 23.501461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986416, 33.506046, 23.957380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699482, 33.782284, 23.920464>,  <34.527321, 33.948025, 23.898314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699482, 33.782284, 23.920464>,  <34.986416, 33.506046, 23.957380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699482, 33.782284, 23.920464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199455, 0.330461, 0.922504,
		0.667573, 0.643333, -0.374792,
		-0.717331, 0.690593, -0.092291,
		34.484283, 33.989460, 23.892776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391182, 34.035400, 24.068779>,  <34.986416, 33.506046, 23.957380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391182, 34.035400, 24.068779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009853, 34.144588, 24.120419>,  <34.781055, 34.210102, 24.151402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009853, 34.144588, 24.120419>,  <35.391182, 34.035400, 24.068779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009853, 34.144588, 24.120419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191942, 0.217765, 0.956941,
		0.233107, 0.937050, -0.259995,
		-0.953320, 0.272974, 0.129097,
		34.723858, 34.226482, 24.159147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458611, 34.618362, 24.463894>,  <35.391182, 34.035400, 24.068779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458611, 34.618362, 24.463894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093369, 34.467426, 24.525669>,  <34.874222, 34.376865, 24.562735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093369, 34.467426, 24.525669>,  <35.458611, 34.618362, 24.463894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093369, 34.467426, 24.525669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043231, 0.287044, 0.956941,
		-0.405420, 0.880467, -0.245789,
		-0.913108, -0.377338, 0.154437,
		34.819435, 34.354225, 24.572001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077534, 35.195934, 24.815516>,  <35.458611, 34.618362, 24.463894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077534, 35.195934, 24.815516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918556, 34.840599, 24.907513>,  <34.823170, 34.627399, 24.962711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918556, 34.840599, 24.907513>,  <35.077534, 35.195934, 24.815516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918556, 34.840599, 24.907513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103520, 0.205633, 0.973139,
		-0.911770, 0.410574, 0.010234,
		-0.397441, -0.888338, 0.229992,
		34.799324, 34.574097, 24.976511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701015, 35.892967, 24.850590>,  <35.077534, 35.195934, 24.815516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701015, 35.892967, 24.850590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003605, 36.154217, 24.836916>,  <35.185158, 36.310966, 24.828712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003605, 36.154217, 24.836916>,  <34.701015, 35.892967, 24.850590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003605, 36.154217, 24.836916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092037, 0.054564, -0.994259,
		-0.647511, 0.755281, 0.101388,
		0.756478, 0.653126, -0.034183,
		35.230549, 36.350155, 24.826660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466793, 36.478779, 24.373123>,  <34.701015, 35.892967, 24.850590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466793, 36.478779, 24.373123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865616, 36.448112, 24.372215>,  <35.104908, 36.429714, 24.371670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865616, 36.448112, 24.372215>,  <34.466793, 36.478779, 24.373123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865616, 36.448112, 24.372215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011712, 0.181464, -0.983328,
		0.075796, 0.980405, 0.181827,
		0.997055, -0.076662, -0.002272,
		35.164734, 36.425114, 24.371534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740501, 37.035767, 24.034842>,  <34.466793, 36.478779, 24.373123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740501, 37.035767, 24.034842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028126, 36.758392, 24.016481>,  <35.200699, 36.591969, 24.005466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028126, 36.758392, 24.016481>,  <34.740501, 37.035767, 24.034842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028126, 36.758392, 24.016481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097858, 0.166420, -0.981187,
		0.688028, 0.701037, 0.187524,
		0.719056, -0.693434, -0.045899,
		35.243843, 36.550362, 24.002712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296593, 37.329330, 23.638557>,  <34.740501, 37.035767, 24.034842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296593, 37.329330, 23.638557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329418, 36.931419, 23.614304>,  <35.349113, 36.692673, 23.599751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329418, 36.931419, 23.614304>,  <35.296593, 37.329330, 23.638557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329418, 36.931419, 23.614304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231880, 0.078230, -0.969594,
		0.969277, 0.065509, 0.237090,
		0.082064, -0.994781, -0.060636,
		35.354038, 36.632984, 23.596113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898304, 37.188889, 23.242466>,  <35.296593, 37.329330, 23.638557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898304, 37.188889, 23.242466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697796, 36.842773, 23.243484>,  <35.577492, 36.635105, 23.244095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697796, 36.842773, 23.243484>,  <35.898304, 37.188889, 23.242466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697796, 36.842773, 23.243484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206563, -0.122519, -0.970732,
		0.840274, -0.486073, 0.240152,
		-0.501269, -0.865287, 0.002545,
		35.547417, 36.583187, 23.244247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288944, 36.825962, 22.780609>,  <35.898304, 37.188889, 23.242466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288944, 36.825962, 22.780609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981750, 36.569778, 22.779140>,  <35.797436, 36.416069, 22.778259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981750, 36.569778, 22.779140>,  <36.288944, 36.825962, 22.780609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981750, 36.569778, 22.779140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258012, -0.304127, -0.917026,
		0.586204, -0.705205, 0.398811,
		-0.767981, -0.640463, -0.003671,
		35.751358, 36.377640, 22.778040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607647, 36.232891, 22.577297>,  <36.288944, 36.825962, 22.780609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607647, 36.232891, 22.577297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212597, 36.202629, 22.522333>,  <35.975567, 36.184471, 22.489355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212597, 36.202629, 22.522333>,  <36.607647, 36.232891, 22.577297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212597, 36.202629, 22.522333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155614, -0.362376, -0.918950,
		0.019726, -0.928957, 0.369662,
		-0.987621, -0.075652, -0.137410,
		35.916309, 36.179935, 22.481110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550819, 35.554623, 22.294458>,  <36.607647, 36.232891, 22.577297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550819, 35.554623, 22.294458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217747, 35.752399, 22.194721>,  <36.017902, 35.871063, 22.134878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217747, 35.752399, 22.194721>,  <36.550819, 35.554623, 22.294458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217747, 35.752399, 22.194721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104378, -0.302069, -0.947555,
		-0.543826, -0.815037, 0.199919,
		-0.832681, 0.494438, -0.249344,
		35.967941, 35.900730, 22.119919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192871, 35.083038, 21.977961>,  <36.550819, 35.554623, 22.294458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192871, 35.083038, 21.977961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025410, 35.423531, 21.851387>,  <35.924934, 35.627827, 21.775442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025410, 35.423531, 21.851387>,  <36.192871, 35.083038, 21.977961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025410, 35.423531, 21.851387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108372, -0.299123, -0.948041,
		-0.901656, -0.431194, 0.032979,
		-0.418655, 0.851233, -0.316436,
		35.899815, 35.678902, 21.756456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588142, 34.862110, 21.661980>,  <36.192871, 35.083038, 21.977961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588142, 34.862110, 21.661980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703297, 35.218189, 21.520744>,  <35.772388, 35.431835, 21.436003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703297, 35.218189, 21.520744>,  <35.588142, 34.862110, 21.661980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703297, 35.218189, 21.520744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079231, -0.345293, -0.935145,
		-0.954381, 0.297193, -0.028874,
		0.287888, 0.890196, -0.353088,
		35.789661, 35.485249, 21.414818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282749, 34.825104, 20.974730>,  <35.588142, 34.862110, 21.661980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282749, 34.825104, 20.974730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541840, 35.127728, 20.938805>,  <35.697292, 35.309303, 20.917250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541840, 35.127728, 20.938805>,  <35.282749, 34.825104, 20.974730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541840, 35.127728, 20.938805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088283, -0.191622, -0.977490,
		-0.756743, 0.625215, -0.190910,
		0.647724, 0.756563, -0.089812,
		35.736156, 35.354698, 20.911861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114052, 35.125172, 20.383684>,  <35.282749, 34.825104, 20.974730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114052, 35.125172, 20.383684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496777, 35.219364, 20.451868>,  <35.726414, 35.275879, 20.492779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496777, 35.219364, 20.451868>,  <35.114052, 35.125172, 20.383684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496777, 35.219364, 20.451868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187619, -0.052323, -0.980847,
		-0.222051, 0.970470, -0.094244,
		0.956814, 0.235480, 0.170461,
		35.783821, 35.290009, 20.503006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270546, 35.738461, 20.017200>,  <35.114052, 35.125172, 20.383684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270546, 35.738461, 20.017200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629143, 35.576786, 20.089800>,  <35.844299, 35.479782, 20.133360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629143, 35.576786, 20.089800>,  <35.270546, 35.738461, 20.017200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629143, 35.576786, 20.089800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271028, 0.176209, -0.946305,
		0.350500, 0.897544, 0.267515,
		0.896490, -0.404184, 0.181499,
		35.898090, 35.455532, 20.144249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671051, 36.070335, 19.618788>,  <35.270546, 35.738461, 20.017200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671051, 36.070335, 19.618788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931816, 35.778633, 19.701920>,  <36.088276, 35.603611, 19.751799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931816, 35.778633, 19.701920>,  <35.671051, 36.070335, 19.618788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931816, 35.778633, 19.701920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395219, 0.092853, -0.913882,
		0.647159, 0.677908, 0.348749,
		0.651910, -0.729259, 0.207831,
		36.127388, 35.559856, 19.764269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.968773, 29.739708, 18.086437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.678036, 29.935349, 18.279303>,  <39.503593, 30.052732, 18.395021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.678036, 29.935349, 18.279303>,  <39.968773, 29.739708, 18.086437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678036, 29.935349, 18.279303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598914, 0.107751, 0.793531,
		0.336163, 0.865546, -0.371248,
		-0.726840, 0.489101, 0.482166,
		39.459984, 30.082079, 18.423952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346062, 30.280779, 18.428419>,  <39.968773, 29.739708, 18.086437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346062, 30.280779, 18.428419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.004898, 30.247330, 18.634548>,  <39.800201, 30.227261, 18.758226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.004898, 30.247330, 18.634548>,  <40.346062, 30.280779, 18.428419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004898, 30.247330, 18.634548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521629, -0.096155, 0.847737,
		-0.021340, 0.991847, 0.125632,
		-0.852905, -0.083624, 0.515325,
		39.749027, 30.222242, 18.789146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587601, 30.656342, 19.038485>,  <40.346062, 30.280779, 18.428419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587601, 30.656342, 19.038485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261322, 30.447475, 19.138063>,  <40.065556, 30.322155, 19.197811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261322, 30.447475, 19.138063>,  <40.587601, 30.656342, 19.038485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261322, 30.447475, 19.138063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368537, -0.137368, 0.919408,
		-0.445887, 0.841707, 0.304489,
		-0.815699, -0.522168, 0.248949,
		40.016613, 30.290825, 19.212748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186844, 30.957609, 19.551821>,  <40.587601, 30.656342, 19.038485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186844, 30.957609, 19.551821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091320, 30.571222, 19.591572>,  <40.034004, 30.339390, 19.615421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091320, 30.571222, 19.591572>,  <40.186844, 30.957609, 19.551821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091320, 30.571222, 19.591572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313086, 0.020281, 0.949508,
		-0.919210, 0.257866, 0.297588,
		-0.238811, -0.965968, 0.099377,
		40.019676, 30.281431, 19.621386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810486, 30.993908, 20.131725>,  <40.186844, 30.957609, 19.551821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810486, 30.993908, 20.131725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904297, 30.606951, 20.093466>,  <39.960583, 30.374777, 20.070511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904297, 30.606951, 20.093466>,  <39.810486, 30.993908, 20.131725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904297, 30.606951, 20.093466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216371, -0.043977, 0.975320,
		-0.947724, -0.249433, 0.199003,
		0.234526, -0.967393, -0.095648,
		39.974655, 30.316732, 20.064772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521030, 30.733900, 20.631086>,  <39.810486, 30.993908, 20.131725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521030, 30.733900, 20.631086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.779232, 30.437475, 20.557167>,  <39.934155, 30.259621, 20.512815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.779232, 30.437475, 20.557167>,  <39.521030, 30.733900, 20.631086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779232, 30.437475, 20.557167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152665, -0.111880, 0.981925,
		-0.748342, -0.662050, 0.040916,
		0.645506, -0.741062, -0.184796,
		39.972885, 30.215157, 20.501728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335068, 30.177301, 20.962111>,  <39.521030, 30.733900, 20.631086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335068, 30.177301, 20.962111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722725, 30.099955, 20.900972>,  <39.955318, 30.053547, 20.864290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722725, 30.099955, 20.900972>,  <39.335068, 30.177301, 20.962111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722725, 30.099955, 20.900972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146342, -0.047569, 0.988090,
		-0.198337, -0.979972, -0.017804,
		0.969147, -0.193369, -0.152846,
		40.013470, 30.041945, 20.855118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494751, 29.504002, 21.437983>,  <39.335068, 30.177301, 20.962111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494751, 29.504002, 21.437983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834461, 29.697258, 21.352837>,  <40.038288, 29.813211, 21.301748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834461, 29.697258, 21.352837>,  <39.494751, 29.504002, 21.437983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834461, 29.697258, 21.352837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319653, -0.149663, 0.935640,
		0.420187, -0.862657, -0.281542,
		0.849273, 0.483140, -0.212864,
		40.089245, 29.842199, 21.288977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017323, 29.035492, 21.652756>,  <39.494751, 29.504002, 21.437983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017323, 29.035492, 21.652756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.141907, 29.414387, 21.622458>,  <40.216660, 29.641724, 21.604279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.141907, 29.414387, 21.622458>,  <40.017323, 29.035492, 21.652756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141907, 29.414387, 21.622458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497613, -0.094673, 0.862217,
		0.809551, -0.306240, -0.500843,
		0.311462, 0.947235, -0.075746,
		40.235344, 29.698557, 21.599733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500294, 29.017618, 22.115826>,  <40.017323, 29.035492, 21.652756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500294, 29.017618, 22.115826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.490021, 29.408789, 22.032875>,  <40.483856, 29.643490, 21.983105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.490021, 29.408789, 22.032875>,  <40.500294, 29.017618, 22.115826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490021, 29.408789, 22.032875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337306, 0.203756, 0.919080,
		0.941045, -0.046348, -0.335092,
		-0.025679, 0.977924, -0.207376,
		40.482319, 29.702166, 21.970661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059490, 29.380432, 22.232334>,  <40.500294, 29.017618, 22.115826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059490, 29.380432, 22.232334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.778625, 29.659958, 22.286928>,  <40.610107, 29.827673, 22.319685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.778625, 29.659958, 22.286928>,  <41.059490, 29.380432, 22.232334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778625, 29.659958, 22.286928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292767, 0.108626, 0.949994,
		0.649044, 0.707006, -0.280863,
		-0.702160, 0.698816, 0.136485,
		40.567978, 29.869602, 22.327873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368820, 30.006292, 22.565556>,  <41.059490, 29.380432, 22.232334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368820, 30.006292, 22.565556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.979454, 30.024454, 22.655363>,  <40.745834, 30.035351, 22.709248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.979454, 30.024454, 22.655363>,  <41.368820, 30.006292, 22.565556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979454, 30.024454, 22.655363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228347, 0.114951, 0.966770,
		0.018087, 0.992333, -0.122263,
		-0.973412, 0.045404, 0.224517,
		40.687431, 30.038074, 22.722717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314201, 30.552441, 23.047071>,  <41.368820, 30.006292, 22.565556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314201, 30.552441, 23.047071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.953899, 30.383589, 23.087954>,  <40.737717, 30.282278, 23.112484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.953899, 30.383589, 23.087954>,  <41.314201, 30.552441, 23.047071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953899, 30.383589, 23.087954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006694, 0.248788, 0.968535,
		-0.434276, 0.871728, -0.226923,
		-0.900755, -0.422130, 0.102207,
		40.683674, 30.256950, 23.118616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972229, 31.019913, 23.444901>,  <41.314201, 30.552441, 23.047071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972229, 31.019913, 23.444901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766506, 30.680006, 23.491175>,  <40.643070, 30.476063, 23.518940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.766506, 30.680006, 23.491175>,  <40.972229, 31.019913, 23.444901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766506, 30.680006, 23.491175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027384, 0.151097, 0.988140,
		-0.857167, 0.505042, -0.100981,
		-0.514310, -0.849766, 0.115686,
		40.612213, 30.425076, 23.525881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933792, 31.741814, 23.407450>,  <40.972229, 31.019913, 23.444901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933792, 31.741814, 23.407450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146626, 32.070179, 23.490387>,  <41.274326, 32.267197, 23.540150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146626, 32.070179, 23.490387>,  <40.933792, 31.741814, 23.407450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146626, 32.070179, 23.490387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040442, 0.219966, -0.974669,
		-0.845726, 0.526990, 0.083841,
		0.532083, 0.820912, 0.207344,
		41.306252, 32.316452, 23.552589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651760, 32.462925, 23.057756>,  <40.933792, 31.741814, 23.407450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651760, 32.462925, 23.057756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.041763, 32.510334, 23.132921>,  <41.275764, 32.538780, 23.178020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.041763, 32.510334, 23.132921>,  <40.651760, 32.462925, 23.057756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041763, 32.510334, 23.132921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149905, 0.273287, -0.950180,
		-0.163968, 0.954603, 0.248691,
		0.975009, 0.118519, 0.187910,
		41.334267, 32.545891, 23.189295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818668, 33.150711, 22.852976>,  <40.651760, 32.462925, 23.057756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818668, 33.150711, 22.852976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.128605, 32.898647, 22.832905>,  <41.314568, 32.747410, 22.820862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.128605, 32.898647, 22.832905>,  <40.818668, 33.150711, 22.852976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128605, 32.898647, 22.832905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213954, 0.336106, -0.917200,
		0.594848, 0.699950, 0.395254,
		0.774841, -0.630161, -0.050175,
		41.361057, 32.709599, 22.817852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222549, 33.445480, 22.414621>,  <40.818668, 33.150711, 22.852976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222549, 33.445480, 22.414621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.432064, 33.104851, 22.423347>,  <41.557774, 32.900475, 22.428583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.432064, 33.104851, 22.423347>,  <41.222549, 33.445480, 22.414621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432064, 33.104851, 22.423347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221389, 0.111356, -0.968807,
		0.822577, 0.512279, 0.246855,
		0.523788, -0.851569, 0.021814,
		41.589199, 32.849380, 22.429892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722317, 33.593639, 21.944921>,  <41.222549, 33.445480, 22.414621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722317, 33.593639, 21.944921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.740482, 33.194935, 21.971447>,  <41.751381, 32.955711, 21.987362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.740482, 33.194935, 21.971447>,  <41.722317, 33.593639, 21.944921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740482, 33.194935, 21.971447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010454, -0.066851, -0.997708,
		0.998913, 0.044620, -0.013457,
		0.045417, -0.996765, 0.066311,
		41.754108, 32.895905, 21.991341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288879, 33.362709, 21.514259>,  <41.722317, 33.593639, 21.944921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288879, 33.362709, 21.514259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.062553, 33.033417, 21.532816>,  <41.926758, 32.835842, 21.543949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.062553, 33.033417, 21.532816>,  <42.288879, 33.362709, 21.514259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062553, 33.033417, 21.532816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031330, -0.034755, -0.998905,
		0.823939, -0.566646, -0.006127,
		-0.565812, -0.823228, 0.046390,
		41.892811, 32.786449, 21.546732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550949, 32.830997, 21.138729>,  <42.288879, 33.362709, 21.514259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550949, 32.830997, 21.138729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.165863, 32.724369, 21.157118>,  <41.934811, 32.660393, 21.168152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.165863, 32.724369, 21.157118>,  <42.550949, 32.830997, 21.138729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165863, 32.724369, 21.157118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031282, -0.059102, -0.997762,
		0.268688, -0.962002, 0.048560,
		-0.962719, -0.266568, 0.045973,
		41.877048, 32.644398, 21.170910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478855, 32.280327, 20.704033>,  <42.550949, 32.830997, 21.138729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478855, 32.280327, 20.704033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.097160, 32.392891, 20.744505>,  <41.868141, 32.460430, 20.768789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.097160, 32.392891, 20.744505>,  <42.478855, 32.280327, 20.704033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097160, 32.392891, 20.744505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136510, -0.108865, -0.984639,
		-0.266070, -0.953393, 0.142298,
		-0.954239, 0.281408, 0.101182,
		41.810890, 32.477314, 20.774860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984341, 31.751030, 20.268110>,  <42.478855, 32.280327, 20.704033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984341, 31.751030, 20.268110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.761135, 32.071037, 20.356285>,  <41.627213, 32.263042, 20.409189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.761135, 32.071037, 20.356285>,  <41.984341, 31.751030, 20.268110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761135, 32.071037, 20.356285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426423, -0.048558, -0.903219,
		-0.711887, -0.598008, 0.368242,
		-0.558014, 0.800018, 0.220436,
		41.593731, 32.311043, 20.422417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353455, 31.554852, 20.164843>,  <41.984341, 31.751030, 20.268110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353455, 31.554852, 20.164843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.332432, 31.954025, 20.179623>,  <41.319817, 32.193531, 20.188490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.332432, 31.954025, 20.179623>,  <41.353455, 31.554852, 20.164843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332432, 31.954025, 20.179623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512466, 0.004804, -0.858694,
		-0.857097, -0.064070, 0.511154,
		-0.052561, 0.997934, 0.036951,
		41.316662, 32.253407, 20.190708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680294, 31.872585, 20.248869>,  <41.353455, 31.554852, 20.164843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680294, 31.872585, 20.248869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933529, 32.094456, 20.032894>,  <41.085472, 32.227577, 19.903309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933529, 32.094456, 20.032894>,  <40.680294, 31.872585, 20.248869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933529, 32.094456, 20.032894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573991, -0.131602, -0.808218,
		-0.519356, 0.821593, 0.235064,
		0.633091, 0.554677, -0.539935,
		41.123455, 32.260860, 19.870914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246422, 31.992836, 19.798252>,  <40.680294, 31.872585, 20.248869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246422, 31.992836, 19.798252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571056, 32.152969, 19.628046>,  <40.765839, 32.249050, 19.525923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571056, 32.152969, 19.628046>,  <40.246422, 31.992836, 19.798252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571056, 32.152969, 19.628046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537855, 0.227581, -0.811738,
		-0.228125, 0.887660, 0.400022,
		0.811586, 0.400332, -0.425515,
		40.814533, 32.273067, 19.500391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025139, 32.654942, 19.472122>,  <40.246422, 31.992836, 19.798252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025139, 32.654942, 19.472122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.367416, 32.579842, 19.279232>,  <40.572784, 32.534782, 19.163498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.367416, 32.579842, 19.279232>,  <40.025139, 32.654942, 19.472122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367416, 32.579842, 19.279232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475356, 0.083105, -0.875860,
		0.204517, 0.978695, -0.018135,
		0.855692, -0.187749, -0.482225,
		40.624123, 32.523518, 19.134565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034576, 33.159851, 18.983948>,  <40.025139, 32.654942, 19.472122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034576, 33.159851, 18.983948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287842, 32.881123, 18.849163>,  <40.439800, 32.713886, 18.768291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287842, 32.881123, 18.849163>,  <40.034576, 33.159851, 18.983948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287842, 32.881123, 18.849163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443576, 0.030099, -0.895731,
		0.634309, 0.716610, -0.290037,
		0.633160, -0.696824, -0.336963,
		40.477791, 32.672077, 18.748074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558678, 33.709103, 19.178743>,  <40.034576, 33.159851, 18.983948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558678, 33.709103, 19.178743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.549915, 34.104858, 19.121281>,  <40.544659, 34.342312, 19.086803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.549915, 34.104858, 19.121281>,  <40.558678, 33.709103, 19.178743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549915, 34.104858, 19.121281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057605, 0.144699, 0.987797,
		0.998099, 0.013363, -0.060164,
		-0.021906, 0.989385, -0.143655,
		40.543343, 34.401672, 19.078184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181751, 33.998604, 19.432095>,  <40.558678, 33.709103, 19.178743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181751, 33.998604, 19.432095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933632, 34.312214, 19.441271>,  <40.784760, 34.500381, 19.446777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933632, 34.312214, 19.441271>,  <41.181751, 33.998604, 19.432095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933632, 34.312214, 19.441271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202697, 0.131977, 0.970307,
		0.757721, 0.606533, -0.240786,
		-0.620301, 0.784028, 0.022940,
		40.747543, 34.547421, 19.448153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543083, 34.547962, 19.725771>,  <41.181751, 33.998604, 19.432095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543083, 34.547962, 19.725771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.154293, 34.624218, 19.780794>,  <40.921021, 34.669971, 19.813808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.154293, 34.624218, 19.780794>,  <41.543083, 34.547962, 19.725771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154293, 34.624218, 19.780794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207707, 0.422331, 0.882323,
		0.110114, 0.886167, -0.450093,
		-0.971974, 0.190643, 0.137559,
		40.862701, 34.681412, 19.822062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576332, 35.204136, 19.952438>,  <41.543083, 34.547962, 19.725771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576332, 35.204136, 19.952438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.192608, 35.111004, 20.016327>,  <40.962372, 35.055122, 20.054661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.192608, 35.111004, 20.016327>,  <41.576332, 35.204136, 19.952438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192608, 35.111004, 20.016327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046221, 0.428555, 0.902333,
		-0.278543, 0.873000, -0.400356,
		-0.959311, -0.232834, 0.159722,
		40.904816, 35.041153, 20.064243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223736, 35.899609, 20.121172>,  <41.576332, 35.204136, 19.952438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223736, 35.899609, 20.121172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.029076, 35.579674, 20.261705>,  <40.912281, 35.387714, 20.346025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.029076, 35.579674, 20.261705>,  <41.223736, 35.899609, 20.121172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029076, 35.579674, 20.261705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023262, 0.390160, 0.920453,
		-0.873289, 0.456109, -0.171264,
		-0.486647, -0.799838, 0.351332,
		40.883080, 35.339722, 20.367105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712086, 36.170177, 20.579910>,  <41.223736, 35.899609, 20.121172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712086, 36.170177, 20.579910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.759483, 35.784893, 20.676394>,  <40.787922, 35.553722, 20.734283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.759483, 35.784893, 20.676394>,  <40.712086, 36.170177, 20.579910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759483, 35.784893, 20.676394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217950, 0.262224, 0.940072,
		-0.968740, -0.058817, 0.241003,
		0.118489, -0.963213, 0.241208,
		40.795029, 35.495930, 20.748756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275295, 36.085510, 21.189396>,  <40.712086, 36.170177, 20.579910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275295, 36.085510, 21.189396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512478, 35.763420, 21.188055>,  <40.654789, 35.570168, 21.187250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512478, 35.763420, 21.188055>,  <40.275295, 36.085510, 21.189396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512478, 35.763420, 21.188055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216506, 0.155421, 0.963831,
		-0.775581, -0.572237, 0.266494,
		0.592958, -0.805226, -0.003351,
		40.690365, 35.521851, 21.187050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900879, 35.722324, 21.697876>,  <40.275295, 36.085510, 21.189396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900879, 35.722324, 21.697876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278542, 35.595425, 21.662285>,  <40.505138, 35.519287, 21.640930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278542, 35.595425, 21.662285>,  <39.900879, 35.722324, 21.697876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278542, 35.595425, 21.662285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122291, 0.086648, 0.988705,
		-0.305953, -0.944377, 0.120606,
		0.944160, -0.317246, -0.088979,
		40.561790, 35.500252, 21.635592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934189, 35.245403, 22.237940>,  <39.900879, 35.722324, 21.697876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934189, 35.245403, 22.237940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.316490, 35.326256, 22.152447>,  <40.545872, 35.374767, 22.101151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.316490, 35.326256, 22.152447>,  <39.934189, 35.245403, 22.237940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316490, 35.326256, 22.152447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207815, 0.050328, 0.976873,
		0.208212, -0.978065, 0.006096,
		0.955751, 0.202130, -0.213735,
		40.603214, 35.386894, 22.088326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364220, 34.862968, 22.650461>,  <39.934189, 35.245403, 22.237940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364220, 34.862968, 22.650461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.611099, 35.157162, 22.538654>,  <40.759228, 35.333679, 22.471571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.611099, 35.157162, 22.538654>,  <40.364220, 34.862968, 22.650461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611099, 35.157162, 22.538654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395037, 0.017567, 0.918497,
		0.680451, -0.677313, -0.279702,
		0.617197, 0.735485, -0.279517,
		40.796257, 35.377808, 22.454800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938789, 34.675735, 22.986732>,  <40.364220, 34.862968, 22.650461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938789, 34.675735, 22.986732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.999077, 35.063694, 22.910215>,  <41.035252, 35.296467, 22.864305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.999077, 35.063694, 22.910215>,  <40.938789, 34.675735, 22.986732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999077, 35.063694, 22.910215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368774, 0.124374, 0.921161,
		0.917218, -0.209383, -0.338925,
		0.150722, 0.969892, -0.191293,
		41.044292, 35.354660, 22.852827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541004, 34.813885, 23.387556>,  <40.938789, 34.675735, 22.986732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541004, 34.813885, 23.387556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.394054, 35.179283, 23.317631>,  <41.305885, 35.398521, 23.275675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.394054, 35.179283, 23.317631>,  <41.541004, 34.813885, 23.387556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394054, 35.179283, 23.317631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001156, 0.187510, 0.982262,
		0.930073, 0.361059, -0.067830,
		-0.367373, 0.913497, -0.174815,
		41.283844, 35.453331, 23.265186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942635, 35.180634, 23.744444>,  <41.541004, 34.813885, 23.387556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942635, 35.180634, 23.744444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620403, 35.413811, 23.702055>,  <41.427067, 35.553715, 23.676622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620403, 35.413811, 23.702055>,  <41.942635, 35.180634, 23.744444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620403, 35.413811, 23.702055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016417, 0.156828, 0.987489,
		0.592265, 0.797238, -0.116767,
		-0.805576, 0.582938, -0.105972,
		41.378731, 35.588692, 23.670263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062847, 35.928745, 24.065519>,  <41.942635, 35.180634, 23.744444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062847, 35.928745, 24.065519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.672630, 35.840816, 24.064690>,  <41.438499, 35.788059, 24.064192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.672630, 35.840816, 24.064690>,  <42.062847, 35.928745, 24.065519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672630, 35.840816, 24.064690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061407, 0.263435, 0.962721,
		-0.211080, 0.939298, -0.270489,
		-0.975538, -0.219821, -0.002073,
		41.379971, 35.774872, 24.064068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.335205, 36.444084, 19.416607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413017, 36.052567, 19.442291>,  <36.459705, 35.817657, 19.457703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413017, 36.052567, 19.442291>,  <36.335205, 36.444084, 19.416607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413017, 36.052567, 19.442291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487130, 0.039581, -0.872432,
		0.851388, 0.200994, 0.484499,
		0.194530, -0.978792, 0.064212,
		36.471375, 35.758930, 19.461555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981129, 36.355976, 19.191597>,  <36.335205, 36.444084, 19.416607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981129, 36.355976, 19.191597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822147, 35.995964, 19.120071>,  <36.726757, 35.779957, 19.077156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822147, 35.995964, 19.120071>,  <36.981129, 36.355976, 19.191597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822147, 35.995964, 19.120071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430110, -0.010591, -0.902714,
		0.810576, -0.435699, 0.391322,
		-0.397456, -0.900030, -0.178814,
		36.702911, 35.725956, 19.066427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549702, 35.928551, 18.942686>,  <36.981129, 36.355976, 19.191597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549702, 35.928551, 18.942686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.198826, 35.802509, 18.797770>,  <36.988300, 35.726883, 18.710819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.198826, 35.802509, 18.797770>,  <37.549702, 35.928551, 18.942686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198826, 35.802509, 18.797770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422723, -0.148973, -0.893931,
		0.227709, -0.937292, 0.263878,
		-0.877185, -0.315103, -0.362293,
		36.935669, 35.707977, 18.689081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786945, 35.509647, 18.479103>,  <37.549702, 35.928551, 18.942686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786945, 35.509647, 18.479103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407475, 35.547344, 18.358347>,  <37.179794, 35.569962, 18.285894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407475, 35.547344, 18.358347>,  <37.786945, 35.509647, 18.479103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407475, 35.547344, 18.358347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299968, -0.034259, -0.953334,
		-0.100184, -0.994960, 0.004232,
		-0.948674, 0.094240, -0.301889,
		37.122871, 35.575615, 18.267780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759762, 35.031017, 17.905960>,  <37.786945, 35.509647, 18.479103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759762, 35.031017, 17.905960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440426, 35.270580, 17.880781>,  <37.248825, 35.414318, 17.865673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440426, 35.270580, 17.880781>,  <37.759762, 35.031017, 17.905960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440426, 35.270580, 17.880781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005514, -0.111792, -0.993716,
		-0.602185, -0.792974, 0.092550,
		-0.798337, 0.598912, -0.062947,
		37.200924, 35.450253, 17.861897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489910, 34.762291, 17.334858>,  <37.759762, 35.031017, 17.905960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489910, 34.762291, 17.334858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.330360, 35.126980, 17.374189>,  <37.234631, 35.345791, 17.397787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.330360, 35.126980, 17.374189>,  <37.489910, 34.762291, 17.334858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330360, 35.126980, 17.374189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021959, 0.097699, -0.994974,
		-0.916743, -0.399029, -0.018949,
		-0.398875, 0.911719, 0.098327,
		37.210697, 35.400494, 17.403688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025085, 34.789715, 16.789095>,  <37.489910, 34.762291, 17.334858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025085, 34.789715, 16.789095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.086910, 35.171574, 16.890892>,  <37.124004, 35.400688, 16.951971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.086910, 35.171574, 16.890892>,  <37.025085, 34.789715, 16.789095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086910, 35.171574, 16.890892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056793, 0.265748, -0.962368,
		-0.986349, 0.134292, 0.095291,
		0.154562, 0.954643, 0.254494,
		37.133278, 35.457966, 16.967239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510319, 35.195133, 16.458784>,  <37.025085, 34.789715, 16.789095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510319, 35.195133, 16.458784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817459, 35.433189, 16.553627>,  <37.001743, 35.576023, 16.610533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817459, 35.433189, 16.553627>,  <36.510319, 35.195133, 16.458784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817459, 35.433189, 16.553627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028768, 0.401775, -0.915286,
		-0.639986, 0.695980, 0.325623,
		0.767848, 0.595137, 0.237108,
		37.047813, 35.611732, 16.624760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306755, 35.945671, 16.278423>,  <36.510319, 35.195133, 16.458784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306755, 35.945671, 16.278423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705791, 35.949989, 16.305845>,  <36.945213, 35.952579, 16.322298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705791, 35.949989, 16.305845>,  <36.306755, 35.945671, 16.278423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705791, 35.949989, 16.305845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052065, 0.536754, -0.842131,
		-0.045884, 0.843670, 0.534898,
		0.997589, 0.010791, 0.068554,
		37.005070, 35.953228, 16.326412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471790, 36.753235, 16.212017>,  <36.306755, 35.945671, 16.278423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471790, 36.753235, 16.212017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.765148, 36.502403, 16.107016>,  <36.941162, 36.351906, 16.044014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.765148, 36.502403, 16.107016>,  <36.471790, 36.753235, 16.212017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765148, 36.502403, 16.107016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063885, 0.448015, -0.891741,
		0.676795, 0.637228, 0.368632,
		0.733395, -0.627075, -0.262505,
		36.985168, 36.314281, 16.028265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774792, 37.135323, 15.753576>,  <36.471790, 36.753235, 16.212017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774792, 37.135323, 15.753576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.892628, 36.759720, 15.682608>,  <36.963329, 36.534359, 15.640027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.892628, 36.759720, 15.682608>,  <36.774792, 37.135323, 15.753576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892628, 36.759720, 15.682608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112614, 0.218478, -0.969322,
		0.948965, 0.265574, 0.170108,
		0.294591, -0.939009, -0.177421,
		36.981007, 36.478016, 15.629381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356476, 37.210251, 15.250121>,  <36.774792, 37.135323, 15.753576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356476, 37.210251, 15.250121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.240170, 36.829491, 15.211477>,  <37.170383, 36.601032, 15.188292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.240170, 36.829491, 15.211477>,  <37.356476, 37.210251, 15.250121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240170, 36.829491, 15.211477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045679, 0.087045, -0.995156,
		0.955702, -0.293773, 0.018172,
		-0.290769, -0.951903, -0.096608,
		37.152939, 36.543919, 15.182495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809326, 36.899487, 14.841314>,  <37.356476, 37.210251, 15.250121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809326, 36.899487, 14.841314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475143, 36.683056, 14.802869>,  <37.274632, 36.553196, 14.779801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475143, 36.683056, 14.802869>,  <37.809326, 36.899487, 14.841314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475143, 36.683056, 14.802869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075757, 0.059830, -0.995330,
		0.544305, -0.838839, -0.008995,
		-0.835460, -0.541081, -0.096114,
		37.224506, 36.520733, 14.774035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894489, 36.220036, 14.340308>,  <37.809326, 36.899487, 14.841314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894489, 36.220036, 14.340308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541946, 36.408310, 14.356665>,  <37.330421, 36.521275, 14.366479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541946, 36.408310, 14.356665>,  <37.894489, 36.220036, 14.340308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541946, 36.408310, 14.356665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005490, 0.076342, -0.997067,
		-0.472426, -0.878992, -0.064700,
		-0.881353, 0.470685, 0.040891,
		37.277542, 36.549515, 14.368932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434811, 35.692669, 14.219350>,  <37.894489, 36.220036, 14.340308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434811, 35.692669, 14.219350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739555, 35.509048, 14.036553>,  <38.922401, 35.398876, 13.926876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739555, 35.509048, 14.036553>,  <38.434811, 35.692669, 14.219350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739555, 35.509048, 14.036553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362449, -0.282602, 0.888125,
		-0.536840, -0.842264, -0.048922,
		0.761862, -0.459050, -0.456991,
		38.968113, 35.371334, 13.899456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520279, 35.147175, 14.724747>,  <38.434811, 35.692669, 14.219350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520279, 35.147175, 14.724747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835159, 35.122372, 14.479319>,  <39.024086, 35.107491, 14.332062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835159, 35.122372, 14.479319>,  <38.520279, 35.147175, 14.724747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835159, 35.122372, 14.479319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608600, -0.082576, 0.789169,
		-0.099598, -0.994654, -0.027268,
		0.787202, -0.062004, -0.613571,
		39.071320, 35.103771, 14.295247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930092, 34.505405, 14.837567>,  <38.520279, 35.147175, 14.724747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930092, 34.505405, 14.837567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.212776, 34.765568, 14.726192>,  <39.382389, 34.921665, 14.659368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.212776, 34.765568, 14.726192>,  <38.930092, 34.505405, 14.837567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212776, 34.765568, 14.726192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507790, -0.192253, 0.839755,
		0.492652, -0.734853, -0.466138,
		0.706713, 0.650407, -0.278438,
		39.424789, 34.960690, 14.642661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642536, 34.222523, 14.970840>,  <38.930092, 34.505405, 14.837567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642536, 34.222523, 14.970840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.721825, 34.612206, 14.927721>,  <39.769398, 34.846016, 14.901849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.721825, 34.612206, 14.927721>,  <39.642536, 34.222523, 14.970840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721825, 34.612206, 14.927721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552763, -0.020285, 0.833091,
		0.809420, -0.224723, -0.542529,
		0.198220, 0.974212, -0.107799,
		39.781292, 34.904469, 14.895381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329617, 34.244766, 14.964204>,  <39.642536, 34.222523, 14.970840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329617, 34.244766, 14.964204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213299, 34.614597, 15.062672>,  <40.143509, 34.836494, 15.121752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213299, 34.614597, 15.062672>,  <40.329617, 34.244766, 14.964204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213299, 34.614597, 15.062672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617492, -0.015174, 0.786431,
		0.730849, 0.380699, -0.566505,
		-0.290798, 0.924574, 0.246169,
		40.126060, 34.891968, 15.136522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938530, 34.774414, 15.178887>,  <40.329617, 34.244766, 14.964204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938530, 34.774414, 15.178887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.604351, 34.936504, 15.327385>,  <40.403843, 35.033760, 15.416484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.604351, 34.936504, 15.327385>,  <40.938530, 34.774414, 15.178887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604351, 34.936504, 15.327385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413699, 0.019029, 0.910215,
		0.361780, 0.914018, -0.183540,
		-0.835445, 0.405228, 0.371244,
		40.353718, 35.058071, 15.438758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170643, 35.250942, 15.734588>,  <40.938530, 34.774414, 15.178887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170643, 35.250942, 15.734588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.781242, 35.207630, 15.815152>,  <40.547600, 35.181644, 15.863491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.781242, 35.207630, 15.815152>,  <41.170643, 35.250942, 15.734588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781242, 35.207630, 15.815152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190526, 0.103007, 0.976263,
		-0.126454, 0.988770, -0.079648,
		-0.973504, -0.108278, 0.201412,
		40.489193, 35.175148, 15.875576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061813, 35.605328, 16.258188>,  <41.170643, 35.250942, 15.734588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061813, 35.605328, 16.258188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729897, 35.387512, 16.307041>,  <40.530746, 35.256821, 16.336353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729897, 35.387512, 16.307041>,  <41.061813, 35.605328, 16.258188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729897, 35.387512, 16.307041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150409, -0.007469, 0.988596,
		-0.537420, 0.838700, 0.088102,
		-0.829793, -0.544543, 0.122134,
		40.480957, 35.224148, 16.343681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699577, 35.913258, 16.756397>,  <41.061813, 35.605328, 16.258188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699577, 35.913258, 16.756397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.555622, 35.540058, 16.757185>,  <40.469250, 35.316139, 16.757658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.555622, 35.540058, 16.757185>,  <40.699577, 35.913258, 16.756397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555622, 35.540058, 16.757185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062968, -0.022181, 0.997769,
		-0.930870, 0.359206, 0.066731,
		-0.359885, -0.932995, 0.001971,
		40.447659, 35.260159, 16.757776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218460, 35.978130, 17.317482>,  <40.699577, 35.913258, 16.756397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218460, 35.978130, 17.317482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.258484, 35.587181, 17.242947>,  <40.282497, 35.352612, 17.198225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.258484, 35.587181, 17.242947>,  <40.218460, 35.978130, 17.317482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258484, 35.587181, 17.242947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160441, -0.200677, 0.966430,
		-0.981960, -0.066807, -0.176891,
		0.100062, -0.977377, -0.186338,
		40.288502, 35.293968, 17.187046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714901, 35.633095, 17.734432>,  <40.218460, 35.978130, 17.317482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714901, 35.633095, 17.734432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.971249, 35.338840, 17.646688>,  <40.125057, 35.162289, 17.594042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.971249, 35.338840, 17.646688>,  <39.714901, 35.633095, 17.734432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971249, 35.338840, 17.646688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077086, -0.345985, 0.935068,
		-0.763769, -0.582348, -0.278440,
		0.640871, -0.735639, -0.219362,
		40.163509, 35.118149, 17.580879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404774, 34.968296, 18.003201>,  <39.714901, 35.633095, 17.734432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404774, 34.968296, 18.003201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797897, 34.906605, 17.962589>,  <40.033772, 34.869591, 17.938223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797897, 34.906605, 17.962589>,  <39.404774, 34.968296, 18.003201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797897, 34.906605, 17.962589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007254, -0.517176, 0.855849,
		-0.184502, -0.841869, -0.507164,
		0.982806, -0.154226, -0.101527,
		40.092739, 34.860336, 17.932131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449089, 34.435696, 18.497381>,  <39.404774, 34.968296, 18.003201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449089, 34.435696, 18.497381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820629, 34.560665, 18.417761>,  <40.043552, 34.635647, 18.369989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820629, 34.560665, 18.417761>,  <39.449089, 34.435696, 18.497381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820629, 34.560665, 18.417761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279483, -0.238341, 0.930098,
		0.243143, -0.919557, -0.308701,
		0.928855, 0.312424, -0.199050,
		40.099285, 34.654392, 18.358046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982029, 33.857658, 18.578278>,  <39.449089, 34.435696, 18.497381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982029, 33.857658, 18.578278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145210, 34.218750, 18.632902>,  <40.243118, 34.435406, 18.665678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145210, 34.218750, 18.632902>,  <39.982029, 33.857658, 18.578278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145210, 34.218750, 18.632902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397177, -0.310154, 0.863744,
		0.822084, -0.298130, -0.485073,
		0.407956, 0.902730, 0.136562,
		40.267597, 34.489571, 18.673870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508747, 33.317497, 18.293316>,  <39.982029, 33.857658, 18.578278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508747, 33.317497, 18.293316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.488472, 32.918186, 18.281490>,  <40.476307, 32.678600, 18.274395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.488472, 32.918186, 18.281490>,  <40.508747, 33.317497, 18.293316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488472, 32.918186, 18.281490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307241, 0.043751, -0.950625,
		0.950281, -0.039103, -0.308929,
		-0.050688, -0.998277, -0.029562,
		40.473267, 32.618702, 18.272621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767666, 33.150078, 17.629780>,  <40.508747, 33.317497, 18.293316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767666, 33.150078, 17.629780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.560047, 32.822113, 17.726391>,  <40.435478, 32.625336, 17.784357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.560047, 32.822113, 17.726391>,  <40.767666, 33.150078, 17.629780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560047, 32.822113, 17.726391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143310, -0.195094, -0.970258,
		0.842648, -0.538220, -0.016239,
		-0.519044, -0.819914, 0.241528,
		40.404335, 32.576138, 17.798849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073578, 32.641205, 17.184080>,  <40.767666, 33.150078, 17.629780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073578, 32.641205, 17.184080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706894, 32.517223, 17.284925>,  <40.486881, 32.442833, 17.345432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706894, 32.517223, 17.284925>,  <41.073578, 32.641205, 17.184080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706894, 32.517223, 17.284925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114795, -0.400073, -0.909265,
		0.382697, -0.862478, 0.331171,
		-0.916714, -0.309956, 0.252115,
		40.431881, 32.424236, 17.360559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025749, 31.966633, 16.752447>,  <41.073578, 32.641205, 17.184080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025749, 31.966633, 16.752447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.656982, 32.071457, 16.866568>,  <40.435722, 32.134350, 16.935040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.656982, 32.071457, 16.866568>,  <41.025749, 31.966633, 16.752447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656982, 32.071457, 16.866568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368218, -0.363968, -0.855537,
		-0.120360, -0.893786, 0.432042,
		-0.921916, 0.262058, 0.285301,
		40.380409, 32.150074, 16.952158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533352, 31.537010, 16.366312>,  <41.025749, 31.966633, 16.752447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533352, 31.537010, 16.366312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.290253, 31.826908, 16.496166>,  <40.144394, 32.000847, 16.574080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.290253, 31.826908, 16.496166>,  <40.533352, 31.537010, 16.366312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290253, 31.826908, 16.496166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501080, -0.032830, -0.864778,
		-0.616084, -0.688237, 0.383107,
		-0.607750, 0.724743, 0.324635,
		40.107929, 32.044331, 16.593557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845081, 31.317629, 16.238218>,  <40.533352, 31.537010, 16.366312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845081, 31.317629, 16.238218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863846, 31.716204, 16.266264>,  <39.875103, 31.955349, 16.283091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863846, 31.716204, 16.266264>,  <39.845081, 31.317629, 16.238218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863846, 31.716204, 16.266264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607250, 0.084177, -0.790039,
		-0.793125, -0.005517, 0.609034,
		0.046908, 0.996436, 0.070113,
		39.877918, 32.015133, 16.287298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094105, 31.582670, 16.106728>,  <39.845081, 31.317629, 16.238218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094105, 31.582670, 16.106728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350742, 31.876429, 16.018171>,  <39.504726, 32.052685, 15.965037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350742, 31.876429, 16.018171>,  <39.094105, 31.582670, 16.106728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350742, 31.876429, 16.018171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410185, 0.084608, -0.908069,
		-0.648153, 0.673425, 0.355523,
		0.641597, 0.734398, -0.221390,
		39.543221, 32.096748, 15.951755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337601, 31.637751, 16.287344>,  <39.094105, 31.582670, 16.106728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337601, 31.637751, 16.287344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148533, 31.289814, 16.230825>,  <38.035091, 31.081053, 16.196915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148533, 31.289814, 16.230825>,  <38.337601, 31.637751, 16.287344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148533, 31.289814, 16.230825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173054, -0.248836, 0.952960,
		-0.864083, 0.425979, 0.268145,
		-0.472665, -0.869841, -0.141297,
		38.006733, 31.028862, 16.188437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818123, 31.566832, 16.934507>,  <38.337601, 31.637751, 16.287344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818123, 31.566832, 16.934507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940876, 31.223366, 16.770306>,  <38.014530, 31.017286, 16.671783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940876, 31.223366, 16.770306>,  <37.818123, 31.566832, 16.934507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940876, 31.223366, 16.770306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191743, -0.366694, 0.910368,
		-0.932231, -0.358091, 0.052109,
		0.306886, -0.858665, -0.410506,
		38.032944, 30.965767, 16.647154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521255, 30.972155, 17.398363>,  <37.818123, 31.566832, 16.934507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521255, 30.972155, 17.398363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801670, 30.822840, 17.155313>,  <37.969917, 30.733252, 17.009483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801670, 30.822840, 17.155313>,  <37.521255, 30.972155, 17.398363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801670, 30.822840, 17.155313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359119, -0.551339, 0.753034,
		-0.616105, -0.746111, -0.252453,
		0.701034, -0.373287, -0.607625,
		38.011982, 30.710854, 16.973026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424534, 30.291363, 17.538006>,  <37.521255, 30.972155, 17.398363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424534, 30.291363, 17.538006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792011, 30.358017, 17.394768>,  <38.012497, 30.398010, 17.308825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792011, 30.358017, 17.394768>,  <37.424534, 30.291363, 17.538006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792011, 30.358017, 17.394768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390733, -0.515832, 0.762394,
		-0.057673, -0.840327, -0.539003,
		0.918696, 0.166637, -0.358093,
		38.067619, 30.408009, 17.287340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807911, 29.662415, 17.548433>,  <37.424534, 30.291363, 17.538006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807911, 29.662415, 17.548433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108585, 29.925705, 17.531937>,  <38.288990, 30.083679, 17.522039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108585, 29.925705, 17.531937>,  <37.807911, 29.662415, 17.548433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108585, 29.925705, 17.531937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424546, -0.435080, 0.794019,
		0.504701, -0.614364, -0.606493,
		0.751690, 0.658226, -0.041241,
		38.334091, 30.123173, 17.519564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512093, 29.265223, 17.793276>,  <37.807911, 29.662415, 17.548433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512093, 29.265223, 17.793276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595226, 29.654938, 17.828062>,  <38.645107, 29.888767, 17.848934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595226, 29.654938, 17.828062>,  <38.512093, 29.265223, 17.793276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595226, 29.654938, 17.828062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576061, -0.193770, 0.794108,
		0.790542, -0.114949, -0.601523,
		0.207839, 0.974290, 0.086966,
		38.657578, 29.947224, 17.854153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259117, 29.251833, 17.990055>,  <38.512093, 29.265223, 17.793276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259117, 29.251833, 17.990055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.111565, 29.605511, 18.104689>,  <39.023033, 29.817717, 18.173470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.111565, 29.605511, 18.104689>,  <39.259117, 29.251833, 17.990055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111565, 29.605511, 18.104689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613945, 0.000291, 0.789349,
		0.697854, 0.467121, -0.542953,
		-0.368879, 0.884193, 0.286584,
		39.000900, 29.870770, 18.190664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.048637, 33.328777, 15.328613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012512, 33.726181, 15.356252>,  <35.990837, 33.964622, 15.372835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012512, 33.726181, 15.356252>,  <36.048637, 33.328777, 15.328613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012512, 33.726181, 15.356252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031111, -0.066533, 0.997299,
		0.995428, 0.092215, -0.024901,
		-0.090310, 0.993514, 0.069097,
		35.985420, 34.024235, 15.376981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297314, 33.475624, 16.013397>,  <36.048637, 33.328777, 15.328613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297314, 33.475624, 16.013397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.094746, 33.804024, 15.907948>,  <35.973206, 34.001064, 15.844680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.094746, 33.804024, 15.907948>,  <36.297314, 33.475624, 16.013397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094746, 33.804024, 15.907948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199525, 0.185856, 0.962106,
		0.838885, 0.539830, 0.069688,
		-0.506421, 0.821000, -0.263621,
		35.942818, 34.050323, 15.828862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488415, 34.221252, 16.408798>,  <36.297314, 33.475624, 16.013397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488415, 34.221252, 16.408798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.104500, 34.239357, 16.297974>,  <35.874153, 34.250221, 16.231480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.104500, 34.239357, 16.297974>,  <36.488415, 34.221252, 16.408798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104500, 34.239357, 16.297974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277357, -0.000254, 0.960767,
		0.043419, 0.998975, 0.012798,
		-0.959785, 0.045266, -0.277061,
		35.816563, 34.252937, 16.214855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250633, 34.666443, 16.976427>,  <36.488415, 34.221252, 16.408798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250633, 34.666443, 16.976427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.911877, 34.568027, 16.787861>,  <35.708622, 34.508976, 16.674721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.911877, 34.568027, 16.787861>,  <36.250633, 34.666443, 16.976427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911877, 34.568027, 16.787861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502752, 0.081665, 0.860564,
		-0.173236, 0.965813, -0.192860,
		-0.846894, -0.246042, -0.471417,
		35.657810, 34.494213, 16.646435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721481, 35.018154, 17.420555>,  <36.250633, 34.666443, 16.976427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721481, 35.018154, 17.420555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.521877, 34.756313, 17.193405>,  <35.402115, 34.599209, 17.057116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.521877, 34.756313, 17.193405>,  <35.721481, 35.018154, 17.420555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521877, 34.756313, 17.193405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647668, -0.153673, 0.746264,
		-0.575777, 0.740185, -0.347284,
		-0.499006, -0.654607, -0.567876,
		35.372177, 34.559933, 17.023043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008659, 35.260002, 17.462355>,  <35.721481, 35.018154, 17.420555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008659, 35.260002, 17.462355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.028408, 34.874134, 17.358833>,  <35.040257, 34.642612, 17.296721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.028408, 34.874134, 17.358833>,  <35.008659, 35.260002, 17.462355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028408, 34.874134, 17.358833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681886, -0.221887, 0.696991,
		-0.729790, 0.142062, -0.668749,
		0.049371, -0.964668, -0.258801,
		35.043221, 34.584732, 17.281193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309765, 35.105953, 17.644220>,  <35.008659, 35.260002, 17.462355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309765, 35.105953, 17.644220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.513874, 34.762291, 17.628849>,  <34.636337, 34.556095, 17.619627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.513874, 34.762291, 17.628849>,  <34.309765, 35.105953, 17.644220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513874, 34.762291, 17.628849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436038, -0.296967, 0.849518,
		-0.741280, -0.416727, -0.526158,
		0.510269, -0.859156, -0.038427,
		34.666954, 34.504543, 17.617321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744678, 34.478054, 17.669588>,  <34.309765, 35.105953, 17.644220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744678, 34.478054, 17.669588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.110489, 34.374706, 17.794092>,  <34.329975, 34.312698, 17.868795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.110489, 34.374706, 17.794092>,  <33.744678, 34.478054, 17.669588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110489, 34.374706, 17.794092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393076, -0.385839, 0.834637,
		-0.095547, -0.885649, -0.454419,
		0.914528, -0.258368, 0.311262,
		34.384846, 34.297195, 17.887470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568039, 33.956596, 18.006727>,  <33.744678, 34.478054, 17.669588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568039, 33.956596, 18.006727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.944290, 33.992004, 18.137810>,  <34.170040, 34.013248, 18.216459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.944290, 33.992004, 18.137810>,  <33.568039, 33.956596, 18.006727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944290, 33.992004, 18.137810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256458, -0.447145, 0.856908,
		0.222387, -0.890071, -0.397893,
		0.940624, 0.088522, 0.327705,
		34.226479, 34.018562, 18.236122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732616, 33.311810, 18.407515>,  <33.568039, 33.956596, 18.006727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732616, 33.311810, 18.407515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.002274, 33.589130, 18.509392>,  <34.164066, 33.755524, 18.570518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.002274, 33.589130, 18.509392>,  <33.732616, 33.311810, 18.407515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002274, 33.589130, 18.509392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038518, -0.311361, 0.949511,
		0.737596, -0.649916, -0.183197,
		0.674142, 0.693299, 0.254692,
		34.204517, 33.797119, 18.585800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154434, 32.911770, 18.867556>,  <33.732616, 33.311810, 18.407515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154434, 32.911770, 18.867556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.217598, 33.299282, 18.944010>,  <34.255497, 33.531788, 18.989882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.217598, 33.299282, 18.944010>,  <34.154434, 32.911770, 18.867556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217598, 33.299282, 18.944010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116816, -0.210531, 0.970583,
		0.980520, -0.130935, -0.146413,
		0.157907, 0.968779, 0.191134,
		34.264969, 33.589916, 19.001350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726315, 32.936890, 19.314573>,  <34.154434, 32.911770, 18.867556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726315, 32.936890, 19.314573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.523079, 33.279541, 19.350422>,  <34.401138, 33.485130, 19.371931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.523079, 33.279541, 19.350422>,  <34.726315, 32.936890, 19.314573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523079, 33.279541, 19.350422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111055, -0.038027, 0.993086,
		0.854114, 0.514530, -0.075812,
		-0.508090, 0.856629, 0.089621,
		34.370651, 33.536530, 19.377308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478485, 32.931217, 18.950218>,  <34.726315, 32.936890, 19.314573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478485, 32.931217, 18.950218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.618084, 32.557529, 18.979727>,  <35.701843, 32.333317, 18.997433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.618084, 32.557529, 18.979727>,  <35.478485, 32.931217, 18.950218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618084, 32.557529, 18.979727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182313, -0.144903, -0.972504,
		0.919218, 0.325954, -0.220891,
		0.348999, -0.934215, 0.073771,
		35.722782, 32.277264, 19.001858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660694, 32.889702, 18.324974>,  <35.478485, 32.931217, 18.950218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660694, 32.889702, 18.324974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.709087, 32.515034, 18.456436>,  <35.738121, 32.290234, 18.535315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.709087, 32.515034, 18.456436>,  <35.660694, 32.889702, 18.324974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709087, 32.515034, 18.456436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276412, -0.349782, -0.895125,
		0.953394, 0.017448, -0.301223,
		0.120981, -0.936669, 0.328657,
		35.745380, 32.234032, 18.555033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249969, 32.530621, 17.935375>,  <35.660694, 32.889702, 18.324974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249969, 32.530621, 17.935375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982651, 32.265785, 18.071039>,  <35.822262, 32.106884, 18.152437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982651, 32.265785, 18.071039>,  <36.249969, 32.530621, 17.935375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982651, 32.265785, 18.071039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024390, -0.436176, -0.899531,
		0.743498, -0.609422, 0.275345,
		-0.668293, -0.662084, 0.339159,
		35.782162, 32.067162, 18.172787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467224, 31.801971, 17.704893>,  <36.249969, 32.530621, 17.935375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467224, 31.801971, 17.704893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078270, 31.778189, 17.795172>,  <35.844898, 31.763920, 17.849339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078270, 31.778189, 17.795172>,  <36.467224, 31.801971, 17.704893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078270, 31.778189, 17.795172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169991, -0.482190, -0.859416,
		0.159927, -0.874047, 0.458765,
		-0.972382, -0.059458, 0.225695,
		35.786556, 31.760351, 17.862881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302299, 31.118933, 17.442781>,  <36.467224, 31.801971, 17.704893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302299, 31.118933, 17.442781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.951115, 31.303013, 17.495546>,  <35.740406, 31.413462, 17.527206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.951115, 31.303013, 17.495546>,  <36.302299, 31.118933, 17.442781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951115, 31.303013, 17.495546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333013, -0.389119, -0.858888,
		-0.343929, -0.797999, 0.494883,
		-0.877961, 0.460199, 0.131915,
		35.687725, 31.441072, 17.535120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862778, 30.615589, 17.355766>,  <36.302299, 31.118933, 17.442781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862778, 30.615589, 17.355766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.677044, 30.959986, 17.272734>,  <35.565605, 31.166624, 17.222914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.677044, 30.959986, 17.272734>,  <35.862778, 30.615589, 17.355766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677044, 30.959986, 17.272734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296165, -0.371836, -0.879787,
		-0.834676, -0.347033, 0.427650,
		-0.464330, 0.860992, -0.207583,
		35.537746, 31.218283, 17.210459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125324, 30.322275, 17.200363>,  <35.862778, 30.615589, 17.355766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125324, 30.322275, 17.200363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.154690, 30.692734, 17.052382>,  <35.172310, 30.915009, 16.963593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.154690, 30.692734, 17.052382>,  <35.125324, 30.322275, 17.200363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154690, 30.692734, 17.052382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468701, -0.295395, -0.832503,
		-0.880301, 0.234513, 0.412400,
		0.073412, 0.926145, -0.369954,
		35.176712, 30.970577, 16.941395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473827, 30.552834, 17.061594>,  <35.125324, 30.322275, 17.200363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473827, 30.552834, 17.061594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.710228, 30.770464, 16.823370>,  <34.852070, 30.901043, 16.680435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.710228, 30.770464, 16.823370>,  <34.473827, 30.552834, 17.061594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710228, 30.770464, 16.823370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553765, -0.263204, -0.789980,
		-0.586565, 0.796682, 0.145737,
		0.591005, 0.544078, -0.595561,
		34.887527, 30.933687, 16.644701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033051, 31.041119, 16.618521>,  <34.473827, 30.552834, 17.061594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033051, 31.041119, 16.618521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.387367, 30.989363, 16.440248>,  <34.599957, 30.958309, 16.333286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.387367, 30.989363, 16.440248>,  <34.033051, 31.041119, 16.618521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387367, 30.989363, 16.440248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456468, -0.069668, -0.887008,
		0.083722, 0.989143, -0.120775,
		0.885792, -0.129392, -0.445680,
		34.653107, 30.950544, 16.306545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863373, 31.312252, 15.867656>,  <34.033051, 31.041119, 16.618521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863373, 31.312252, 15.867656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.221561, 31.145777, 15.804505>,  <34.436474, 31.045891, 15.766615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.221561, 31.145777, 15.804505>,  <33.863373, 31.312252, 15.867656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221561, 31.145777, 15.804505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227508, -0.123078, -0.965967,
		0.382593, 0.900910, -0.204899,
		0.895467, -0.416189, -0.157876,
		34.490200, 31.020920, 15.757143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122078, 31.527573, 15.110882>,  <33.863373, 31.312252, 15.867656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122078, 31.527573, 15.110882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.342472, 31.203461, 15.190740>,  <34.474709, 31.008993, 15.238654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.342472, 31.203461, 15.190740>,  <34.122078, 31.527573, 15.110882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342472, 31.203461, 15.190740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126959, -0.317842, -0.939605,
		0.824799, 0.492364, -0.277999,
		0.550987, -0.810281, 0.199645,
		34.507767, 30.960377, 15.250633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627083, 31.477674, 14.474087>,  <34.122078, 31.527573, 15.110882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627083, 31.477674, 14.474087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.597851, 31.130802, 14.671127>,  <34.580311, 30.922678, 14.789351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.597851, 31.130802, 14.671127>,  <34.627083, 31.477674, 14.474087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597851, 31.130802, 14.671127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149340, -0.478838, -0.865108,
		0.986081, -0.136789, -0.094511,
		-0.073082, -0.867181, 0.492601,
		34.575928, 30.870647, 14.818908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127037, 31.072815, 14.223715>,  <34.627083, 31.477674, 14.474087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127037, 31.072815, 14.223715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.847363, 30.830181, 14.375075>,  <34.679558, 30.684601, 14.465892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.847363, 30.830181, 14.375075>,  <35.127037, 31.072815, 14.223715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847363, 30.830181, 14.375075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043763, -0.491975, -0.869509,
		0.713596, -0.624511, 0.317438,
		-0.699189, -0.606586, 0.378402,
		34.637608, 30.648205, 14.488596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325115, 30.462902, 14.050444>,  <35.127037, 31.072815, 14.223715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325115, 30.462902, 14.050444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.930916, 30.436974, 14.113173>,  <34.694397, 30.421417, 14.150811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.930916, 30.436974, 14.113173>,  <35.325115, 30.462902, 14.050444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930916, 30.436974, 14.113173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096803, -0.544294, -0.833290,
		0.139373, -0.836386, 0.530126,
		-0.985497, -0.064820, 0.156825,
		34.635265, 30.417528, 14.160221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856422, 30.895617, 14.450825>,  <35.325115, 30.462902, 14.050444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856422, 30.895617, 14.450825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150249, 30.977835, 14.192164>,  <36.326546, 31.027166, 14.036968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150249, 30.977835, 14.192164>,  <35.856422, 30.895617, 14.450825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150249, 30.977835, 14.192164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678195, -0.252468, 0.690153,
		-0.021399, -0.945521, -0.324857,
		0.734570, 0.205548, -0.646650,
		36.370621, 31.039499, 13.998169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352409, 30.402294, 14.577128>,  <35.856422, 30.895617, 14.450825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352409, 30.402294, 14.577128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.531967, 30.703093, 14.384053>,  <36.639702, 30.883572, 14.268208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.531967, 30.703093, 14.384053>,  <36.352409, 30.402294, 14.577128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531967, 30.703093, 14.384053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776094, -0.060364, 0.627721,
		0.442908, -0.656395, -0.610719,
		0.448898, 0.751999, -0.482689,
		36.666637, 30.928692, 14.239246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942608, 30.097231, 14.539713>,  <36.352409, 30.402294, 14.577128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942608, 30.097231, 14.539713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.994518, 30.488920, 14.477386>,  <37.025665, 30.723934, 14.439989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.994518, 30.488920, 14.477386>,  <36.942608, 30.097231, 14.539713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994518, 30.488920, 14.477386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613694, 0.044110, 0.788311,
		0.778806, -0.197926, -0.595219,
		0.129772, 0.979224, -0.155819,
		37.033451, 30.782688, 14.430640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640644, 30.150137, 14.391362>,  <36.942608, 30.097231, 14.539713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640644, 30.150137, 14.391362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.496609, 30.494612, 14.534860>,  <37.410187, 30.701296, 14.620958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.496609, 30.494612, 14.534860>,  <37.640644, 30.150137, 14.391362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496609, 30.494612, 14.534860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719968, 0.011979, 0.693903,
		0.593283, 0.508148, -0.624340,
		-0.360084, 0.861186, 0.358744,
		37.388584, 30.752968, 14.642483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234402, 30.420464, 14.764621>,  <37.640644, 30.150137, 14.391362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234402, 30.420464, 14.764621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.923721, 30.644201, 14.880464>,  <37.737312, 30.778444, 14.949969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.923721, 30.644201, 14.880464>,  <38.234402, 30.420464, 14.764621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923721, 30.644201, 14.880464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447108, 0.165740, 0.878991,
		0.443658, 0.812198, -0.378817,
		-0.776700, 0.559343, 0.289608,
		37.690712, 30.812004, 14.967346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551929, 30.990585, 14.998779>,  <38.234402, 30.420464, 14.764621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551929, 30.990585, 14.998779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.192764, 30.943533, 15.168447>,  <37.977264, 30.915302, 15.270248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.192764, 30.943533, 15.168447>,  <38.551929, 30.990585, 14.998779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192764, 30.943533, 15.168447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411583, 0.117302, 0.903792,
		-0.156068, 0.986105, -0.056912,
		-0.897910, -0.117629, 0.424171,
		37.923389, 30.908245, 15.295699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562439, 31.377970, 15.581440>,  <38.551929, 30.990585, 14.998779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562439, 31.377970, 15.581440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245079, 31.150661, 15.668700>,  <38.054665, 31.014277, 15.721056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245079, 31.150661, 15.668700>,  <38.562439, 31.377970, 15.581440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245079, 31.150661, 15.668700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305749, -0.062155, 0.950081,
		-0.526344, 0.820491, 0.223062,
		-0.793397, -0.568271, 0.218149,
		38.007061, 30.980181, 15.734145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664429, 32.191296, 15.753028>,  <38.562439, 31.377970, 15.581440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664429, 32.191296, 15.753028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038433, 32.275970, 15.639226>,  <39.262836, 32.326775, 15.570945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038433, 32.275970, 15.639226>,  <38.664429, 32.191296, 15.753028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038433, 32.275970, 15.639226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332415, 0.243778, -0.911083,
		-0.123506, 0.946447, 0.298303,
		0.935011, 0.211685, -0.284505,
		39.318935, 32.339478, 15.553874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600941, 32.705696, 15.416879>,  <38.664429, 32.191296, 15.753028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600941, 32.705696, 15.416879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.965874, 32.600471, 15.291369>,  <39.184834, 32.537334, 15.216063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.965874, 32.600471, 15.291369>,  <38.600941, 32.705696, 15.416879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965874, 32.600471, 15.291369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289532, 0.127398, -0.948652,
		0.289531, 0.956330, 0.040063,
		0.912328, -0.263064, -0.313774,
		39.239571, 32.521553, 15.197237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850208, 33.321167, 14.968405>,  <38.600941, 32.705696, 15.416879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850208, 33.321167, 14.968405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033215, 32.978531, 14.872962>,  <39.143017, 32.772949, 14.815697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033215, 32.978531, 14.872962>,  <38.850208, 33.321167, 14.968405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033215, 32.978531, 14.872962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150255, 0.190005, -0.970217,
		0.876414, 0.479742, -0.041777,
		0.457516, -0.856590, -0.238607,
		39.170471, 32.721554, 14.801380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198620, 33.597515, 14.484408>,  <38.850208, 33.321167, 14.968405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198620, 33.597515, 14.484408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208775, 33.198727, 14.454994>,  <39.214867, 32.959454, 14.437346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208775, 33.198727, 14.454994>,  <39.198620, 33.597515, 14.484408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208775, 33.198727, 14.454994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006903, 0.073732, -0.997254,
		0.999654, 0.024813, 0.008754,
		0.025391, -0.996969, -0.073535,
		39.216393, 32.899635, 14.432934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681286, 33.524715, 13.947948>,  <39.198620, 33.597515, 14.484408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681286, 33.524715, 13.947948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467163, 33.189171, 13.987477>,  <39.338692, 32.987846, 14.011194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467163, 33.189171, 13.987477>,  <39.681286, 33.524715, 13.947948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467163, 33.189171, 13.987477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373229, 0.129955, -0.918592,
		0.757727, -0.528608, -0.382652,
		-0.535303, -0.838859, 0.098821,
		39.306572, 32.937511, 14.017124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727577, 33.273815, 13.310602>,  <39.681286, 33.524715, 13.947948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727577, 33.273815, 13.310602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412239, 33.082390, 13.465260>,  <39.223038, 32.967537, 13.558054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412239, 33.082390, 13.465260>,  <39.727577, 33.273815, 13.310602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412239, 33.082390, 13.465260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545294, 0.252486, -0.799316,
		0.284896, -0.840972, -0.460000,
		-0.788346, -0.478557, 0.386644,
		39.175735, 32.938824, 13.581252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536606, 32.803989, 12.825871>,  <39.727577, 33.273815, 13.310602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536606, 32.803989, 12.825871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.214676, 32.892403, 13.046199>,  <39.021519, 32.945450, 13.178395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.214676, 32.892403, 13.046199>,  <39.536606, 32.803989, 12.825871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214676, 32.892403, 13.046199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534209, 0.134598, -0.834568,
		-0.258606, -0.965934, 0.009750,
		-0.804825, 0.221032, 0.550819,
		38.973228, 32.958714, 13.211445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951115, 32.515945, 12.462130>,  <39.536606, 32.803989, 12.825871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951115, 32.515945, 12.462130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.746380, 32.768768, 12.694863>,  <38.623539, 32.920460, 12.834503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.746380, 32.768768, 12.694863>,  <38.951115, 32.515945, 12.462130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746380, 32.768768, 12.694863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470732, 0.360206, -0.805396,
		-0.718635, -0.686118, 0.113163,
		-0.511835, 0.632055, 0.581834,
		38.592831, 32.958385, 12.869413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233994, 32.506264, 12.306222>,  <38.951115, 32.515945, 12.462130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233994, 32.506264, 12.306222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.326881, 32.864647, 12.457660>,  <38.382614, 33.079678, 12.548522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.326881, 32.864647, 12.457660>,  <38.233994, 32.506264, 12.306222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326881, 32.864647, 12.457660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336395, 0.439195, -0.833034,
		-0.912640, 0.066092, 0.403386,
		0.232222, 0.895957, 0.378594,
		38.396549, 33.133434, 12.571238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.688362, 32.670082, 28.181105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.700321, 33.069126, 28.156212>,  <39.707497, 33.308552, 28.141277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.700321, 33.069126, 28.156212>,  <39.688362, 32.670082, 28.181105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700321, 33.069126, 28.156212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167097, -0.066371, -0.983704,
		-0.985487, 0.019011, -0.168683,
		0.029897, 0.997614, -0.062231,
		39.709290, 33.368412, 28.137543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326565, 32.845093, 27.604818>,  <39.688362, 32.670082, 28.181105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326565, 32.845093, 27.604818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575203, 33.154308, 27.655476>,  <39.724384, 33.339836, 27.685869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575203, 33.154308, 27.655476>,  <39.326565, 32.845093, 27.604818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575203, 33.154308, 27.655476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134290, 0.054118, -0.989463,
		-0.771742, 0.632052, -0.070171,
		0.621594, 0.773034, 0.126643,
		39.761681, 33.386219, 27.693468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173878, 33.324932, 27.114508>,  <39.326565, 32.845093, 27.604818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173878, 33.324932, 27.114508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555622, 33.398506, 27.208620>,  <39.784668, 33.442650, 27.265087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.555622, 33.398506, 27.208620>,  <39.173878, 33.324932, 27.114508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555622, 33.398506, 27.208620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260506, -0.127494, -0.957017,
		-0.146035, 0.974634, -0.169593,
		0.954364, 0.183938, 0.235279,
		39.841930, 33.453686, 27.279203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382206, 33.644352, 26.588175>,  <39.173878, 33.324932, 27.114508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382206, 33.644352, 26.588175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.728481, 33.522091, 26.746746>,  <39.936249, 33.448734, 26.841888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.728481, 33.522091, 26.746746>,  <39.382206, 33.644352, 26.588175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728481, 33.522091, 26.746746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294982, -0.328342, -0.897316,
		0.404428, 0.893739, -0.194082,
		0.865692, -0.305649, 0.396428,
		39.988190, 33.430397, 26.865675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961063, 33.933205, 26.165094>,  <39.382206, 33.644352, 26.588175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961063, 33.933205, 26.165094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.167919, 33.662292, 26.374416>,  <40.292034, 33.499744, 26.500010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.167919, 33.662292, 26.374416>,  <39.961063, 33.933205, 26.165094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167919, 33.662292, 26.374416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415432, -0.335934, -0.845319,
		0.748318, 0.654548, 0.107640,
		0.517142, -0.677285, 0.523306,
		40.323063, 33.459106, 26.531408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662827, 34.040668, 26.015892>,  <39.961063, 33.933205, 26.165094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662827, 34.040668, 26.015892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.640434, 33.658680, 26.132437>,  <40.626999, 33.429485, 26.202364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.640434, 33.658680, 26.132437>,  <40.662827, 34.040668, 26.015892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640434, 33.658680, 26.132437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467044, -0.282972, -0.837733,
		0.882460, 0.089179, 0.461857,
		-0.055984, -0.954973, 0.291362,
		40.623638, 33.372189, 26.219845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331516, 33.661362, 25.892237>,  <40.662827, 34.040668, 26.015892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331516, 33.661362, 25.892237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.081005, 33.349911, 25.907810>,  <40.930698, 33.163040, 25.917154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.081005, 33.349911, 25.907810>,  <41.331516, 33.661362, 25.892237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081005, 33.349911, 25.907810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434154, -0.389811, -0.812131,
		0.647527, -0.491714, 0.582174,
		-0.626274, -0.778630, 0.038933,
		40.893124, 33.116322, 25.919491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737404, 33.176163, 25.827133>,  <41.331516, 33.661362, 25.892237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737404, 33.176163, 25.827133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.375687, 33.044479, 25.718410>,  <41.158657, 32.965469, 25.653177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.375687, 33.044479, 25.718410>,  <41.737404, 33.176163, 25.827133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375687, 33.044479, 25.718410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384046, -0.349252, -0.854711,
		0.186446, -0.877296, 0.442256,
		-0.904293, -0.329204, -0.271805,
		41.104397, 32.945717, 25.636869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918659, 32.569321, 25.492327>,  <41.737404, 33.176163, 25.827133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918659, 32.569321, 25.492327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.535160, 32.579147, 25.379047>,  <41.305061, 32.585041, 25.311079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.535160, 32.579147, 25.379047>,  <41.918659, 32.569321, 25.492327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535160, 32.579147, 25.379047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272713, -0.201594, -0.940738,
		-0.080197, -0.979161, 0.186579,
		-0.958747, 0.024562, -0.283197,
		41.247536, 32.586517, 25.294088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873123, 31.954174, 25.122272>,  <41.918659, 32.569321, 25.492327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873123, 31.954174, 25.122272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.590588, 32.214077, 25.009916>,  <41.421066, 32.370018, 24.942503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.590588, 32.214077, 25.009916>,  <41.873123, 31.954174, 25.122272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590588, 32.214077, 25.009916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249147, -0.143220, -0.957817,
		-0.662576, -0.746529, -0.060722,
		-0.706342, 0.649756, -0.280890,
		41.378685, 32.409004, 24.925650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604691, 31.633890, 24.586439>,  <41.873123, 31.954174, 25.122272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604691, 31.633890, 24.586439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.458866, 31.999432, 24.514921>,  <41.371372, 32.218758, 24.472012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.458866, 31.999432, 24.514921>,  <41.604691, 31.633890, 24.586439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458866, 31.999432, 24.514921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120131, -0.144246, -0.982223,
		-0.923399, -0.379557, -0.057196,
		-0.364559, 0.913854, -0.178793,
		41.349499, 32.273586, 24.461283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186478, 31.604536, 24.056131>,  <41.604691, 31.633890, 24.586439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186478, 31.604536, 24.056131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.292641, 31.989853, 24.040005>,  <41.356339, 32.221043, 24.030329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.292641, 31.989853, 24.040005>,  <41.186478, 31.604536, 24.056131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292641, 31.989853, 24.040005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266446, -0.113471, -0.957147,
		-0.926588, 0.243292, -0.286782,
		0.265407, 0.963293, -0.040316,
		41.372261, 32.278839, 24.027910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534588, 31.126072, 24.013651>,  <41.186478, 31.604536, 24.056131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534588, 31.126072, 24.013651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.513523, 30.726662, 24.008337>,  <40.500885, 30.487017, 24.005148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.513523, 30.726662, 24.008337>,  <40.534588, 31.126072, 24.013651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513523, 30.726662, 24.008337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164330, -0.004456, 0.986395,
		-0.984999, 0.054130, -0.163853,
		-0.052663, -0.998524, -0.013284,
		40.497723, 30.427105, 24.004353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950047, 30.965637, 24.335392>,  <40.534588, 31.126072, 24.013651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950047, 30.965637, 24.335392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.172890, 30.633949, 24.353388>,  <40.306595, 30.434937, 24.364185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.172890, 30.633949, 24.353388>,  <39.950047, 30.965637, 24.335392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172890, 30.633949, 24.353388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108779, -0.019163, 0.993881,
		-0.823284, -0.558594, -0.100878,
		0.557109, -0.829220, 0.044987,
		40.340023, 30.385183, 24.366884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626682, 30.630112, 24.866556>,  <39.950047, 30.965637, 24.335392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626682, 30.630112, 24.866556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937393, 30.388758, 24.794401>,  <40.123821, 30.243946, 24.751108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937393, 30.388758, 24.794401>,  <39.626682, 30.630112, 24.866556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937393, 30.388758, 24.794401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053915, -0.221670, 0.973630,
		-0.627461, -0.766021, -0.139657,
		0.776779, -0.603386, -0.180390,
		40.170425, 30.207743, 24.740284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498783, 30.049864, 25.226381>,  <39.626682, 30.630112, 24.866556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498783, 30.049864, 25.226381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.898724, 30.043547, 25.229076>,  <40.138687, 30.039757, 25.230694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.898724, 30.043547, 25.229076>,  <39.498783, 30.049864, 25.226381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898724, 30.043547, 25.229076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007857, -0.071756, 0.997391,
		-0.015261, -0.997297, -0.071870,
		0.999853, -0.015786, 0.006740,
		40.198681, 30.038809, 25.231098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777206, 29.432106, 25.616270>,  <39.498783, 30.049864, 25.226381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777206, 29.432106, 25.616270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.052383, 29.721615, 25.594769>,  <40.217487, 29.895321, 25.581867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.052383, 29.721615, 25.594769>,  <39.777206, 29.432106, 25.616270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052383, 29.721615, 25.594769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109366, -0.030165, 0.993544,
		0.717480, -0.689377, -0.099908,
		0.687940, 0.723774, -0.053752,
		40.258766, 29.938747, 25.578644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164730, 29.267298, 26.153475>,  <39.777206, 29.432106, 25.616270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164730, 29.267298, 26.153475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.281532, 29.643509, 26.084030>,  <40.351616, 29.869236, 26.042362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.281532, 29.643509, 26.084030>,  <40.164730, 29.267298, 26.153475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281532, 29.643509, 26.084030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265718, 0.094597, 0.959399,
		0.918763, -0.326286, -0.222291,
		0.292010, 0.940526, -0.173612,
		40.369137, 29.925667, 26.031946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641632, 29.338085, 26.639412>,  <40.164730, 29.267298, 26.153475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641632, 29.338085, 26.639412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.529015, 29.702276, 26.518242>,  <40.461445, 29.920792, 26.445539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.529015, 29.702276, 26.518242>,  <40.641632, 29.338085, 26.639412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529015, 29.702276, 26.518242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159842, 0.355785, 0.920797,
		0.946142, 0.210823, -0.245701,
		-0.281542, 0.910478, -0.302925,
		40.444553, 29.975420, 26.427364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067738, 29.706816, 27.070887>,  <40.641632, 29.338085, 26.639412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067738, 29.706816, 27.070887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.801727, 29.966696, 26.923573>,  <40.642120, 30.122623, 26.835184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.801727, 29.966696, 26.923573>,  <41.067738, 29.706816, 27.070887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801727, 29.966696, 26.923573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003202, 0.495613, 0.868538,
		0.746815, 0.576419, -0.331674,
		-0.665024, 0.649699, -0.368286,
		40.602219, 30.161606, 26.813087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294022, 30.450737, 27.252359>,  <41.067738, 29.706816, 27.070887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294022, 30.450737, 27.252359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.900257, 30.409420, 27.195421>,  <40.663998, 30.384630, 27.161259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.900257, 30.409420, 27.195421>,  <41.294022, 30.450737, 27.252359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900257, 30.409420, 27.195421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166554, 0.287554, 0.943171,
		-0.056492, 0.952178, -0.300276,
		-0.984413, -0.103294, -0.142344,
		40.604935, 30.378431, 27.152718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008530, 30.836843, 27.692123>,  <41.294022, 30.450737, 27.252359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008530, 30.836843, 27.692123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.670708, 30.642183, 27.602772>,  <40.468014, 30.525387, 27.549160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.670708, 30.642183, 27.602772>,  <41.008530, 30.836843, 27.692123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670708, 30.642183, 27.602772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406837, 0.311941, 0.858590,
		-0.348150, 0.816006, -0.461438,
		-0.844556, -0.486649, -0.223379,
		40.417339, 30.496189, 27.535757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502842, 31.331341, 27.852674>,  <41.008530, 30.836843, 27.692123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502842, 31.331341, 27.852674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350609, 30.961479, 27.847492>,  <40.259270, 30.739563, 27.844383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350609, 30.961479, 27.847492>,  <40.502842, 31.331341, 27.852674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350609, 30.961479, 27.847492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493185, 0.191104, 0.848674,
		-0.782255, 0.329384, -0.528757,
		-0.380587, -0.924654, -0.012955,
		40.236431, 30.684082, 27.843605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722183, 31.419764, 27.893625>,  <40.502842, 31.331341, 27.852674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722183, 31.419764, 27.893625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.817307, 31.049837, 28.012392>,  <39.874382, 30.827881, 28.083652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.817307, 31.049837, 28.012392>,  <39.722183, 31.419764, 27.893625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817307, 31.049837, 28.012392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585833, 0.107265, 0.803302,
		-0.774756, -0.364976, -0.516280,
		0.237807, -0.924817, 0.296919,
		39.888649, 30.772392, 28.101467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041264, 31.118528, 28.047409>,  <39.722183, 31.419764, 27.893625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041264, 31.118528, 28.047409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.312817, 30.903378, 28.247332>,  <39.475750, 30.774286, 28.367285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.312817, 30.903378, 28.247332>,  <39.041264, 31.118528, 28.047409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312817, 30.903378, 28.247332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588056, 0.009309, 0.808767,
		-0.439671, -0.842971, -0.309983,
		0.678881, -0.537879, 0.499807,
		39.516479, 30.742014, 28.397274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650597, 30.611027, 28.500877>,  <39.041264, 31.118528, 28.047409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650597, 30.611027, 28.500877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.010227, 30.665073, 28.667442>,  <39.226006, 30.697502, 28.767382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.010227, 30.665073, 28.667442>,  <38.650597, 30.611027, 28.500877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010227, 30.665073, 28.667442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427971, 0.070987, 0.901000,
		0.092195, -0.988281, 0.121656,
		0.899077, 0.135133, 0.416411,
		39.279949, 30.705608, 28.792366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912296, 30.368528, 29.209793>,  <38.650597, 30.611027, 28.500877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912296, 30.368528, 29.209793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.922649, 30.574200, 29.552710>,  <38.928864, 30.697603, 29.758459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.922649, 30.574200, 29.552710>,  <38.912296, 30.368528, 29.209793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922649, 30.574200, 29.552710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136206, 0.851396, -0.506530,
		-0.990342, -0.103657, 0.092073,
		0.025885, 0.514179, 0.857292,
		38.930416, 30.728453, 29.809896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584694, 31.103790, 29.132578>,  <38.912296, 30.368528, 29.209793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584694, 31.103790, 29.132578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245277, 31.265970, 29.268572>,  <38.041626, 31.363277, 29.350168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245277, 31.265970, 29.268572>,  <38.584694, 31.103790, 29.132578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245277, 31.265970, 29.268572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444598, -0.197936, -0.873587,
		-0.286901, -0.892430, 0.348219,
		-0.848540, 0.405451, 0.339984,
		37.990715, 31.387606, 29.370567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998508, 30.734619, 28.943342>,  <38.584694, 31.103790, 29.132578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998508, 30.734619, 28.943342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863472, 31.103424, 29.019163>,  <37.782452, 31.324707, 29.064655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863472, 31.103424, 29.019163>,  <37.998508, 30.734619, 28.943342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863472, 31.103424, 29.019163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453796, 0.017012, -0.890943,
		-0.824684, -0.386791, 0.412661,
		-0.337588, 0.922011, 0.189554,
		37.762196, 31.380028, 29.076029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290089, 30.775064, 28.650064>,  <37.998508, 30.734619, 28.943342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290089, 30.775064, 28.650064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442963, 31.142200, 28.692957>,  <37.534687, 31.362482, 28.718693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442963, 31.142200, 28.692957>,  <37.290089, 30.775064, 28.650064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442963, 31.142200, 28.692957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370542, 0.258519, -0.892113,
		-0.846541, 0.301221, 0.438902,
		0.382188, 0.917842, 0.107232,
		37.557617, 31.417553, 28.725126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769993, 31.212990, 28.481031>,  <37.290089, 30.775064, 28.650064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769993, 31.212990, 28.481031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111568, 31.413105, 28.423763>,  <37.316513, 31.533175, 28.389402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111568, 31.413105, 28.423763>,  <36.769993, 31.212990, 28.481031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111568, 31.413105, 28.423763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300518, 0.249513, -0.920561,
		-0.424824, 0.829129, 0.363415,
		0.853940, 0.500289, -0.143169,
		37.367752, 31.563192, 28.380812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543949, 31.769598, 28.118479>,  <36.769993, 31.212990, 28.481031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543949, 31.769598, 28.118479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938580, 31.779961, 28.053984>,  <37.175358, 31.786179, 28.015287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938580, 31.779961, 28.053984>,  <36.543949, 31.769598, 28.118479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938580, 31.779961, 28.053984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160093, 0.348253, -0.923629,
		0.032223, 0.937043, 0.347725,
		0.986576, 0.025906, -0.161236,
		37.234550, 31.787733, 28.005613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570660, 32.153248, 27.546829>,  <36.543949, 31.769598, 28.118479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570660, 32.153248, 27.546829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935287, 31.988811, 27.549536>,  <37.154064, 31.890150, 27.551161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935287, 31.988811, 27.549536>,  <36.570660, 32.153248, 27.546829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935287, 31.988811, 27.549536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062183, 0.121580, -0.990632,
		0.406413, 0.903452, 0.136392,
		0.911571, -0.411087, 0.006768,
		37.208759, 31.865486, 27.551565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027637, 32.579597, 27.147772>,  <36.570660, 32.153248, 27.546829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027637, 32.579597, 27.147772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228939, 32.233952, 27.145172>,  <37.349720, 32.026566, 27.143612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228939, 32.233952, 27.145172>,  <37.027637, 32.579597, 27.147772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228939, 32.233952, 27.145172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069454, 0.047946, -0.996432,
		0.861344, 0.501006, 0.084146,
		0.503253, -0.864115, -0.006501,
		37.379913, 31.974716, 27.143221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542427, 32.672302, 26.717325>,  <37.027637, 32.579597, 27.147772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542427, 32.672302, 26.717325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542431, 32.272316, 26.720490>,  <37.542431, 32.032322, 26.722389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542431, 32.272316, 26.720490>,  <37.542427, 32.672302, 26.717325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542431, 32.272316, 26.720490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161473, -0.007808, -0.986846,
		0.986877, 0.001285, 0.161468,
		0.000007, -0.999969, 0.007913,
		37.542435, 31.972326, 26.722864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115646, 32.483658, 26.349493>,  <37.542427, 32.672302, 26.717325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115646, 32.483658, 26.349493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890537, 32.154827, 26.314894>,  <37.755474, 31.957529, 26.294134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890537, 32.154827, 26.314894>,  <38.115646, 32.483658, 26.349493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890537, 32.154827, 26.314894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126853, 0.017514, -0.991767,
		0.816823, -0.569108, 0.094427,
		-0.562768, -0.822076, -0.086499,
		37.721706, 31.908205, 26.288944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420231, 32.014175, 25.885391>,  <38.115646, 32.483658, 26.349493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420231, 32.014175, 25.885391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042633, 31.882414, 25.877815>,  <37.816074, 31.803356, 25.873270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042633, 31.882414, 25.877815>,  <38.420231, 32.014175, 25.885391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042633, 31.882414, 25.877815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088061, -0.196212, -0.976599,
		0.317981, -0.923576, 0.214232,
		-0.943999, -0.329405, -0.018939,
		37.759434, 31.783592, 25.872133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378105, 31.261374, 25.556561>,  <38.420231, 32.014175, 25.885391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378105, 31.261374, 25.556561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.012264, 31.420786, 25.529196>,  <37.792759, 31.516434, 25.512777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.012264, 31.420786, 25.529196>,  <38.378105, 31.261374, 25.556561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012264, 31.420786, 25.529196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025044, -0.113026, -0.993276,
		-0.403586, -0.910163, 0.093392,
		-0.914599, 0.398534, -0.068410,
		37.737885, 31.540346, 25.508673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097927, 30.907433, 25.070080>,  <38.378105, 31.261374, 25.556561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097927, 30.907433, 25.070080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834782, 31.207439, 25.097475>,  <37.676895, 31.387444, 25.113913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834782, 31.207439, 25.097475>,  <38.097927, 30.907433, 25.070080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834782, 31.207439, 25.097475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209452, -0.094850, -0.973208,
		-0.723427, -0.654582, 0.219491,
		-0.657863, 0.750018, 0.068486,
		37.637424, 31.432446, 25.118021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502575, 30.710312, 24.654036>,  <38.097927, 30.907433, 25.070080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502575, 30.710312, 24.654036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493961, 31.109484, 24.678282>,  <37.488792, 31.348988, 24.692829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493961, 31.109484, 24.678282>,  <37.502575, 30.710312, 24.654036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493961, 31.109484, 24.678282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197779, 0.055179, -0.978692,
		-0.980010, -0.033061, 0.196182,
		-0.021532, 0.997929, 0.060614,
		37.487503, 31.408863, 24.696466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968548, 30.906134, 24.261005>,  <37.502575, 30.710312, 24.654036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968548, 30.906134, 24.261005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.189884, 31.239311, 24.262936>,  <37.322685, 31.439219, 24.264093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.189884, 31.239311, 24.262936>,  <36.968548, 30.906134, 24.261005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189884, 31.239311, 24.262936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131932, 0.093364, -0.986852,
		-0.822443, 0.545425, 0.161554,
		0.553337, 0.832944, 0.004827,
		37.355885, 31.489195, 24.264383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572254, 31.381411, 23.846663>,  <36.968548, 30.906134, 24.261005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572254, 31.381411, 23.846663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941067, 31.535585, 23.861025>,  <37.162354, 31.628090, 23.869642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941067, 31.535585, 23.861025>,  <36.572254, 31.381411, 23.846663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941067, 31.535585, 23.861025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022550, 0.039119, -0.998980,
		-0.386450, 0.921904, 0.027378,
		0.922035, 0.385439, 0.035907,
		37.217678, 31.651217, 23.871798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491737, 31.930813, 23.418573>,  <36.572254, 31.381411, 23.846663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491737, 31.930813, 23.418573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886951, 31.874470, 23.443701>,  <37.124081, 31.840664, 23.458776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886951, 31.874470, 23.443701>,  <36.491737, 31.930813, 23.418573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886951, 31.874470, 23.443701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086218, 0.166723, -0.982227,
		0.127881, 0.975891, 0.176873,
		0.988035, -0.140858, 0.062819,
		37.183361, 31.832212, 23.462547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746334, 32.477547, 23.046227>,  <36.491737, 31.930813, 23.418573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746334, 32.477547, 23.046227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032925, 32.199661, 23.071617>,  <37.204880, 32.032928, 23.086851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032925, 32.199661, 23.071617>,  <36.746334, 32.477547, 23.046227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032925, 32.199661, 23.071617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196242, 0.113398, -0.973976,
		0.669440, 0.710288, 0.217580,
		0.716477, -0.694717, 0.063475,
		37.247868, 31.991245, 23.090660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399464, 32.748062, 22.681648>,  <36.746334, 32.477547, 23.046227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399464, 32.748062, 22.681648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363880, 32.349873, 22.695044>,  <37.342529, 32.110958, 22.703081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363880, 32.349873, 22.695044>,  <37.399464, 32.748062, 22.681648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363880, 32.349873, 22.695044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005315, -0.034098, -0.999404,
		0.996021, -0.088731, 0.008325,
		-0.088962, -0.995472, 0.033490,
		37.337193, 32.051231, 22.705091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863640, 32.548550, 22.207638>,  <37.399464, 32.748062, 22.681648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863640, 32.548550, 22.207638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639381, 32.222202, 22.264250>,  <37.504826, 32.026394, 22.298218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639381, 32.222202, 22.264250>,  <37.863640, 32.548550, 22.207638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639381, 32.222202, 22.264250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046943, -0.201962, -0.978268,
		0.826724, -0.541818, 0.151529,
		-0.560646, -0.815871, 0.141532,
		37.471188, 31.977442, 22.306709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072376, 32.125786, 21.645918>,  <37.863640, 32.548550, 22.207638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072376, 32.125786, 21.645918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.725002, 31.961369, 21.756815>,  <37.516579, 31.862719, 21.823353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.725002, 31.961369, 21.756815>,  <38.072376, 32.125786, 21.645918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725002, 31.961369, 21.756815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239567, -0.141683, -0.960486,
		0.434082, -0.900538, 0.024570,
		-0.868435, -0.411044, 0.277241,
		37.464470, 31.838055, 21.839987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964809, 31.606455, 21.205807>,  <38.072376, 32.125786, 21.645918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964809, 31.606455, 21.205807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599533, 31.637087, 21.365915>,  <37.380367, 31.655466, 21.461981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599533, 31.637087, 21.365915>,  <37.964809, 31.606455, 21.205807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599533, 31.637087, 21.365915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405117, -0.063890, -0.912030,
		-0.044253, -0.995016, 0.089360,
		-0.913193, 0.076561, 0.400271,
		37.325577, 31.660061, 21.485996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574863, 31.178675, 20.769104>,  <37.964809, 31.606455, 21.205807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574863, 31.178675, 20.769104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308292, 31.412331, 20.954428>,  <37.148350, 31.552525, 21.065622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308292, 31.412331, 20.954428>,  <37.574863, 31.178675, 20.769104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308292, 31.412331, 20.954428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520916, 0.079776, -0.849872,
		-0.533406, -0.807722, 0.251124,
		-0.666427, 0.584141, 0.463309,
		37.108364, 31.587574, 21.093420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927391, 30.967243, 20.494766>,  <37.574863, 31.178675, 20.769104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927391, 30.967243, 20.494766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864300, 31.342237, 20.618856>,  <36.826447, 31.567234, 20.693310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864300, 31.342237, 20.618856>,  <36.927391, 30.967243, 20.494766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864300, 31.342237, 20.618856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577580, 0.167228, -0.799022,
		-0.800951, -0.305208, 0.515097,
		-0.157729, 0.937487, 0.310224,
		36.816982, 31.623484, 20.711924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292648, 31.031761, 20.342667>,  <36.927391, 30.967243, 20.494766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292648, 31.031761, 20.342667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356571, 31.424025, 20.387865>,  <36.394924, 31.659384, 20.414984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356571, 31.424025, 20.387865>,  <36.292648, 31.031761, 20.342667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356571, 31.424025, 20.387865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598437, 0.187278, -0.778974,
		-0.785070, 0.056868, 0.616792,
		0.159810, 0.980660, 0.112994,
		36.404514, 31.718222, 20.421762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627357, 31.344545, 20.323790>,  <36.292648, 31.031761, 20.342667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627357, 31.344545, 20.323790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.909130, 31.616793, 20.243252>,  <36.078194, 31.780140, 20.194929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.909130, 31.616793, 20.243252>,  <35.627357, 31.344545, 20.323790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909130, 31.616793, 20.243252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470247, 0.235051, -0.850658,
		-0.531645, 0.693911, 0.485635,
		0.704430, 0.680616, -0.201346,
		36.120461, 31.820978, 20.182848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280991, 31.977362, 20.079420>,  <35.627357, 31.344545, 20.323790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280991, 31.977362, 20.079420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649799, 32.000217, 19.926262>,  <35.871086, 32.013931, 19.834368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649799, 32.000217, 19.926262>,  <35.280991, 31.977362, 20.079420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649799, 32.000217, 19.926262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384010, 0.260413, -0.885845,
		0.049096, 0.963805, 0.262048,
		0.922023, 0.057137, -0.382896,
		35.926407, 32.017357, 19.811394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444027, 32.670292, 19.807802>,  <35.280991, 31.977362, 20.079420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444027, 32.670292, 19.807802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672680, 32.399498, 19.622360>,  <35.809872, 32.237022, 19.511095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672680, 32.399498, 19.622360>,  <35.444027, 32.670292, 19.807802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672680, 32.399498, 19.622360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502606, 0.157702, -0.850010,
		0.648556, 0.718902, -0.250110,
		0.571631, -0.676986, -0.463603,
		35.844170, 32.196404, 19.483280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912014, 33.219810, 19.973816>,  <35.444027, 32.670292, 19.807802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912014, 33.219810, 19.973816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605328, 33.471050, 19.920691>,  <34.421314, 33.621792, 19.888815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605328, 33.471050, 19.920691>,  <34.912014, 33.219810, 19.973816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605328, 33.471050, 19.920691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168599, 0.002618, 0.985681,
		0.619451, 0.778131, 0.103889,
		-0.766717, 0.628097, -0.132814,
		34.375313, 33.659481, 19.880846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069775, 33.782845, 20.285755>,  <34.912014, 33.219810, 19.973816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069775, 33.782845, 20.285755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669895, 33.787735, 20.277225>,  <34.429966, 33.790668, 20.272108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669895, 33.787735, 20.277225>,  <35.069775, 33.782845, 20.285755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669895, 33.787735, 20.277225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020223, 0.084007, 0.996260,
		0.013967, 0.996390, -0.083735,
		-0.999698, 0.012222, -0.021323,
		34.369987, 33.791401, 20.270828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808228, 34.301704, 20.759676>,  <35.069775, 33.782845, 20.285755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808228, 34.301704, 20.759676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491379, 34.064598, 20.701468>,  <34.301270, 33.922333, 20.666542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491379, 34.064598, 20.701468>,  <34.808228, 34.301704, 20.759676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491379, 34.064598, 20.701468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272165, 0.129620, 0.953480,
		-0.546327, 0.794876, -0.264004,
		-0.792119, -0.592765, -0.145523,
		34.253742, 33.886768, 20.657810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260986, 34.692146, 20.933735>,  <34.808228, 34.301704, 20.759676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260986, 34.692146, 20.933735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173271, 34.303303, 20.967020>,  <34.120644, 34.069996, 20.986992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173271, 34.303303, 20.967020>,  <34.260986, 34.692146, 20.933735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173271, 34.303303, 20.967020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118348, 0.111161, 0.986730,
		-0.968456, 0.206529, -0.139423,
		-0.219287, -0.972105, 0.083212,
		34.107487, 34.011673, 20.991983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642521, 34.636799, 21.261658>,  <34.260986, 34.692146, 20.933735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642521, 34.636799, 21.261658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803471, 34.274254, 21.313187>,  <33.900040, 34.056725, 21.344105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803471, 34.274254, 21.313187>,  <33.642521, 34.636799, 21.261658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803471, 34.274254, 21.313187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215872, 0.042813, 0.975483,
		-0.889660, -0.420317, -0.178432,
		0.402372, -0.906367, 0.128824,
		33.924183, 34.002342, 21.351833>
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
