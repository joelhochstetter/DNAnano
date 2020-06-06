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
	<24.428646, 35.102249, 34.968975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.133205, 34.835739, 34.927898>,  <23.955942, 34.675835, 34.903252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.133205, 34.835739, 34.927898>,  <24.428646, 35.102249, 34.968975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.133205, 34.835739, 34.927898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339444, -0.235943, -0.910554,
		0.582450, -0.707395, 0.400431,
		-0.738600, -0.666276, -0.102696,
		23.911625, 34.635857, 34.897091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.586626, 34.402367, 34.721741>,  <24.428646, 35.102249, 34.968975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.586626, 34.402367, 34.721741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225618, 34.506100, 34.584217>,  <24.009014, 34.568340, 34.501701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225618, 34.506100, 34.584217>,  <24.586626, 34.402367, 34.721741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.225618, 34.506100, 34.584217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300224, -0.193472, -0.934042,
		-0.308741, -0.946212, 0.096756,
		-0.902521, 0.259329, -0.343808,
		23.954863, 34.583897, 34.481075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.055305, 33.957237, 34.236794>,  <24.586626, 34.402367, 34.721741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.055305, 33.957237, 34.236794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.132984, 34.347553, 34.196541>,  <24.179592, 34.581741, 34.172390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.132984, 34.347553, 34.196541>,  <24.055305, 33.957237, 34.236794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.132984, 34.347553, 34.196541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466958, -0.182169, -0.865312,
		-0.862692, 0.121050, -0.491029,
		0.194197, 0.975787, -0.100630,
		24.191242, 34.640289, 34.166351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.106981, 34.118423, 33.518383>,  <24.055305, 33.957237, 34.236794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.106981, 34.118423, 33.518383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257505, 34.468288, 33.640602>,  <24.347820, 34.678207, 33.713932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257505, 34.468288, 33.640602>,  <24.106981, 34.118423, 33.518383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.257505, 34.468288, 33.640602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352999, 0.169559, -0.920131,
		-0.856611, 0.454112, -0.244948,
		0.376310, 0.874661, 0.305547,
		24.370398, 34.730686, 33.732265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.783930, 34.715485, 33.190590>,  <24.106981, 34.118423, 33.518383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.783930, 34.715485, 33.190590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167717, 34.773270, 33.287376>,  <24.397989, 34.807941, 33.345448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167717, 34.773270, 33.287376>,  <23.783930, 34.715485, 33.190590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.167717, 34.773270, 33.287376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252347, -0.058181, -0.965886,
		-0.125459, 0.987798, -0.092278,
		0.959469, 0.144465, 0.241968,
		24.455557, 34.816608, 33.359966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.128304, 35.179024, 32.648319>,  <23.783930, 34.715485, 33.190590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.128304, 35.179024, 32.648319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399508, 34.943382, 32.824162>,  <24.562231, 34.801998, 32.929668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399508, 34.943382, 32.824162>,  <24.128304, 35.179024, 32.648319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399508, 34.943382, 32.824162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417791, -0.183206, -0.889880,
		0.604773, 0.787012, 0.121908,
		0.678012, -0.589108, 0.439604,
		24.602911, 34.766651, 32.956043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739576, 35.469719, 32.349689>,  <24.128304, 35.179024, 32.648319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.739576, 35.469719, 32.349689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812908, 35.102554, 32.490452>,  <24.856907, 34.882256, 32.574909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812908, 35.102554, 32.490452>,  <24.739576, 35.469719, 32.349689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812908, 35.102554, 32.490452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361481, -0.269943, -0.892447,
		0.914178, 0.290820, 0.282317,
		0.183332, -0.917908, 0.351901,
		24.867908, 34.827183, 32.596024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387524, 35.381264, 32.168179>,  <24.739576, 35.469719, 32.349689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387524, 35.381264, 32.168179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236246, 35.013882, 32.214508>,  <25.145479, 34.793453, 32.242306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236246, 35.013882, 32.214508>,  <25.387524, 35.381264, 32.168179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236246, 35.013882, 32.214508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490186, -0.304825, -0.816579,
		0.785295, -0.252048, 0.565495,
		-0.378194, -0.918452, 0.115827,
		25.122787, 34.738346, 32.249256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942133, 34.868069, 32.075199>,  <25.387524, 35.381264, 32.168179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942133, 34.868069, 32.075199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614508, 34.640881, 32.042847>,  <25.417933, 34.504566, 32.023438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614508, 34.640881, 32.042847>,  <25.942133, 34.868069, 32.075199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614508, 34.640881, 32.042847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425283, -0.506486, -0.750071,
		0.385056, -0.648752, 0.656393,
		-0.819064, -0.567972, -0.080878,
		25.368788, 34.470490, 32.018581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187832, 34.176266, 32.078079>,  <25.942133, 34.868069, 32.075199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187832, 34.176266, 32.078079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831123, 34.157467, 31.898062>,  <25.617098, 34.146187, 31.790052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831123, 34.157467, 31.898062>,  <26.187832, 34.176266, 32.078079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831123, 34.157467, 31.898062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444672, -0.275108, -0.852398,
		-0.083747, -0.960264, 0.266233,
		-0.891769, -0.047001, -0.450042,
		25.563593, 34.143368, 31.763048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103333, 33.534023, 31.591373>,  <26.187832, 34.176266, 32.078079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103333, 33.534023, 31.591373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825579, 33.789345, 31.458466>,  <25.658926, 33.942535, 31.378721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825579, 33.789345, 31.458466>,  <26.103333, 33.534023, 31.591373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825579, 33.789345, 31.458466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319211, -0.140604, -0.937195,
		-0.644931, -0.756837, -0.106119,
		-0.694384, 0.638301, -0.332270,
		25.617264, 33.980835, 31.358784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758255, 33.221844, 31.054543>,  <26.103333, 33.534023, 31.591373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758255, 33.221844, 31.054543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664963, 33.598244, 30.956461>,  <25.608988, 33.824085, 30.897612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664963, 33.598244, 30.956461>,  <25.758255, 33.221844, 31.054543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664963, 33.598244, 30.956461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218503, -0.194999, -0.956155,
		-0.947555, -0.276581, -0.160132,
		-0.233229, 0.940999, -0.245206,
		25.594994, 33.880543, 30.882898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283466, 33.178566, 30.430307>,  <25.758255, 33.221844, 31.054543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283466, 33.178566, 30.430307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451588, 33.541061, 30.448517>,  <25.552460, 33.758560, 30.459442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451588, 33.541061, 30.448517>,  <25.283466, 33.178566, 30.430307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451588, 33.541061, 30.448517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218471, -0.052375, -0.974437,
		-0.880691, 0.419503, -0.220001,
		0.420301, 0.906242, 0.045523,
		25.577679, 33.812935, 30.462173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030331, 33.561306, 29.867493>,  <25.283466, 33.178566, 30.430307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030331, 33.561306, 29.867493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351574, 33.771496, 29.979845>,  <25.544319, 33.897610, 30.047256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351574, 33.771496, 29.979845>,  <25.030331, 33.561306, 29.867493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351574, 33.771496, 29.979845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321314, 0.015043, -0.946853,
		-0.501775, 0.850675, -0.156762,
		0.803106, 0.525477, 0.280882,
		25.592506, 33.929138, 30.064110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357658, 33.788273, 29.160965>,  <25.030331, 33.561306, 29.867493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357658, 33.788273, 29.160965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644333, 33.901165, 29.416059>,  <25.816338, 33.968903, 29.569117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644333, 33.901165, 29.416059>,  <25.357658, 33.788273, 29.160965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644333, 33.901165, 29.416059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655704, 0.038742, -0.754023,
		-0.237518, 0.958563, -0.157296,
		0.716685, 0.282234, 0.637736,
		25.859339, 33.985836, 29.607380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661251, 34.407269, 28.860296>,  <25.357658, 33.788273, 29.160965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661251, 34.407269, 28.860296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886761, 34.201286, 29.118591>,  <26.022066, 34.077698, 29.273569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886761, 34.201286, 29.118591>,  <25.661251, 34.407269, 28.860296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886761, 34.201286, 29.118591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649308, -0.206859, -0.731852,
		0.510449, 0.831883, 0.217743,
		0.563773, -0.514956, 0.645740,
		26.055893, 34.046799, 29.312313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357822, 34.708969, 28.894169>,  <25.661251, 34.407269, 28.860296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357822, 34.708969, 28.894169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371340, 34.325302, 29.006496>,  <26.379450, 34.095100, 29.073893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371340, 34.325302, 29.006496>,  <26.357822, 34.708969, 28.894169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371340, 34.325302, 29.006496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810657, -0.138031, -0.569019,
		0.584545, 0.246877, 0.772890,
		0.033795, -0.959166, 0.280818,
		26.381479, 34.037552, 29.090742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109486, 34.568817, 28.976028>,  <26.357822, 34.708969, 28.894169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109486, 34.568817, 28.976028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967857, 34.195263, 28.995995>,  <26.882879, 33.971130, 29.007975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967857, 34.195263, 28.995995>,  <27.109486, 34.568817, 28.976028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967857, 34.195263, 28.995995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867866, -0.347992, -0.354557,
		0.348486, -0.082219, 0.933701,
		-0.354072, -0.933885, 0.049915,
		26.861635, 33.915096, 29.010969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665144, 34.105278, 29.263163>,  <27.109486, 34.568817, 28.976028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665144, 34.105278, 29.263163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400421, 33.883984, 29.060802>,  <27.241587, 33.751205, 28.939386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400421, 33.883984, 29.060802>,  <27.665144, 34.105278, 29.263163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400421, 33.883984, 29.060802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742179, -0.578694, -0.338058,
		-0.105736, -0.599200, 0.793587,
		-0.661808, -0.553239, -0.505902,
		27.201880, 33.718014, 28.909031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879084, 33.369915, 29.414228>,  <27.665144, 34.105278, 29.263163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879084, 33.369915, 29.414228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661690, 33.386707, 29.078882>,  <27.531254, 33.396782, 28.877674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661690, 33.386707, 29.078882>,  <27.879084, 33.369915, 29.414228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661690, 33.386707, 29.078882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643845, -0.619980, -0.448429,
		-0.538596, -0.783494, 0.309921,
		-0.543486, 0.041981, -0.838368,
		27.498644, 33.399300, 28.827372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049417, 32.740284, 29.128807>,  <27.879084, 33.369915, 29.414228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049417, 32.740284, 29.128807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896582, 32.953014, 28.826504>,  <27.804880, 33.080654, 28.645123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896582, 32.953014, 28.826504>,  <28.049417, 32.740284, 29.128807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896582, 32.953014, 28.826504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569441, -0.508606, -0.645799,
		-0.727836, -0.677112, -0.108512,
		-0.382088, 0.531827, -0.755757,
		27.781956, 33.112564, 28.599777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813271, 32.277039, 28.563448>,  <28.049417, 32.740284, 29.128807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813271, 32.277039, 28.563448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845648, 32.639774, 28.397997>,  <27.865074, 32.857418, 28.298727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845648, 32.639774, 28.397997>,  <27.813271, 32.277039, 28.563448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845648, 32.639774, 28.397997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729692, -0.336604, -0.595187,
		-0.678969, -0.253645, -0.688960,
		0.080941, 0.906842, -0.413626,
		27.869930, 32.911827, 28.273909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693636, 32.255619, 27.787064>,  <27.813271, 32.277039, 28.563448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693636, 32.255619, 27.787064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916204, 32.576839, 27.872393>,  <28.049746, 32.769569, 27.923590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916204, 32.576839, 27.872393>,  <27.693636, 32.255619, 27.787064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916204, 32.576839, 27.872393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762512, -0.391513, -0.515065,
		-0.330105, 0.449254, -0.830182,
		0.556423, 0.803049, 0.213321,
		28.083132, 32.817753, 27.936390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925720, 32.349312, 27.094471>,  <27.693636, 32.255619, 27.787064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925720, 32.349312, 27.094471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147400, 32.540455, 27.367094>,  <28.280407, 32.655140, 27.530668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147400, 32.540455, 27.367094>,  <27.925720, 32.349312, 27.094471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147400, 32.540455, 27.367094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832160, -0.299071, -0.466975,
		-0.019311, 0.825961, -0.563396,
		0.554199, 0.477854, 0.681557,
		28.313660, 32.683811, 27.571562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449091, 32.691296, 26.699945>,  <27.925720, 32.349312, 27.094471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449091, 32.691296, 26.699945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594740, 32.662674, 27.071384>,  <28.682129, 32.645500, 27.294249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594740, 32.662674, 27.071384>,  <28.449091, 32.691296, 26.699945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594740, 32.662674, 27.071384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717164, -0.614585, -0.328575,
		0.594214, 0.785599, -0.172466,
		0.364122, -0.071558, 0.928598,
		28.703978, 32.641205, 27.349964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125074, 33.008942, 26.763523>,  <28.449091, 32.691296, 26.699945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125074, 33.008942, 26.763523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063938, 32.689205, 26.995970>,  <29.027256, 32.497364, 27.135437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063938, 32.689205, 26.995970>,  <29.125074, 33.008942, 26.763523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063938, 32.689205, 26.995970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797165, -0.447267, -0.405561,
		0.584095, 0.401257, 0.705568,
		-0.152843, -0.799340, 0.581114,
		29.018085, 32.449402, 27.170303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718605, 32.815041, 27.175154>,  <29.125074, 33.008942, 26.763523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718605, 32.815041, 27.175154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487225, 32.492985, 27.122782>,  <29.348396, 32.299751, 27.091358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487225, 32.492985, 27.122782>,  <29.718605, 32.815041, 27.175154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487225, 32.492985, 27.122782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737711, -0.447856, -0.505181,
		0.348105, -0.388810, 0.853024,
		-0.578451, -0.805141, -0.130929,
		29.313688, 32.251442, 27.083504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959848, 32.162193, 27.532949>,  <29.718605, 32.815041, 27.175154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959848, 32.162193, 27.532949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740879, 32.051903, 27.216898>,  <29.609497, 31.985727, 27.027267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740879, 32.051903, 27.216898>,  <29.959848, 32.162193, 27.532949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740879, 32.051903, 27.216898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770076, -0.535560, -0.346638,
		-0.327582, -0.798216, 0.505511,
		-0.547424, -0.275729, -0.790127,
		29.576653, 31.969185, 26.979860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879789, 31.395834, 27.452585>,  <29.959848, 32.162193, 27.532949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879789, 31.395834, 27.452585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831217, 31.548899, 27.086235>,  <29.802074, 31.640738, 26.866425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831217, 31.548899, 27.086235>,  <29.879789, 31.395834, 27.452585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831217, 31.548899, 27.086235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738424, -0.581779, -0.340974,
		-0.663314, -0.717708, -0.211920,
		-0.121429, 0.382659, -0.915875,
		29.794788, 31.663696, 26.811472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341034, 30.954754, 27.055010>,  <29.879789, 31.395834, 27.452585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341034, 30.954754, 27.055010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264006, 31.235434, 26.780628>,  <30.217789, 31.403841, 26.615999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264006, 31.235434, 26.780628>,  <30.341034, 30.954754, 27.055010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264006, 31.235434, 26.780628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700741, -0.391018, -0.596714,
		-0.686935, -0.595584, -0.416413,
		-0.192569, 0.701701, -0.685954,
		30.206236, 31.445944, 26.574842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912331, 30.703648, 27.439043>,  <30.341034, 30.954754, 27.055010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912331, 30.703648, 27.439043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756525, 30.352774, 27.551344>,  <30.663042, 30.142248, 27.618725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756525, 30.352774, 27.551344>,  <30.912331, 30.703648, 27.439043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756525, 30.352774, 27.551344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290366, 0.406240, 0.866405,
		-0.874051, 0.255957, -0.412942,
		-0.389516, -0.877186, 0.280753,
		30.639669, 30.089619, 27.635571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346989, 30.857723, 27.857773>,  <30.912331, 30.703648, 27.439043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346989, 30.857723, 27.857773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440504, 30.486567, 27.973949>,  <30.496614, 30.263872, 28.043655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440504, 30.486567, 27.973949>,  <30.346989, 30.857723, 27.857773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440504, 30.486567, 27.973949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154055, 0.259594, 0.953351,
		-0.960005, -0.267628, -0.082256,
		0.233790, -0.927893, 0.290441,
		30.510641, 30.208199, 28.061081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737902, 30.632856, 28.324606>,  <30.346989, 30.857723, 27.857773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737902, 30.632856, 28.324606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079166, 30.461050, 28.443016>,  <30.283924, 30.357965, 28.514063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079166, 30.461050, 28.443016>,  <29.737902, 30.632856, 28.324606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079166, 30.461050, 28.443016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146398, 0.347530, 0.926170,
		-0.500684, -0.833509, 0.233618,
		0.853161, -0.429518, 0.296027,
		30.335115, 30.332195, 28.531824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530930, 30.253256, 28.924841>,  <29.737902, 30.632856, 28.324606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530930, 30.253256, 28.924841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914640, 30.361139, 28.891268>,  <30.144867, 30.425869, 28.871124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914640, 30.361139, 28.891268>,  <29.530930, 30.253256, 28.924841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914640, 30.361139, 28.891268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001981, 0.290709, 0.956809,
		0.282438, -0.918018, 0.278339,
		0.959284, 0.269688, -0.083926,
		30.202423, 30.442053, 28.866089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027559, 29.914717, 29.430315>,  <29.530930, 30.253256, 28.924841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027559, 29.914717, 29.430315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142918, 30.280247, 29.315945>,  <30.212132, 30.499565, 29.247322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142918, 30.280247, 29.315945>,  <30.027559, 29.914717, 29.430315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142918, 30.280247, 29.315945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084376, 0.273195, 0.958251,
		0.953787, -0.300479, 0.001683,
		0.288394, 0.913826, -0.285924,
		30.229435, 30.554394, 29.230167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654135, 30.251095, 29.824053>,  <30.027559, 29.914717, 29.430315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654135, 30.251095, 29.824053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412333, 30.540941, 29.691685>,  <30.267252, 30.714849, 29.612265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412333, 30.540941, 29.691685>,  <30.654135, 30.251095, 29.824053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412333, 30.540941, 29.691685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047019, 0.382231, 0.922870,
		0.795214, 0.573438, -0.196989,
		-0.604503, 0.724616, -0.330918,
		30.230982, 30.758326, 29.592409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901983, 30.837898, 30.231716>,  <30.654135, 30.251095, 29.824053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901983, 30.837898, 30.231716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538256, 30.902300, 30.078241>,  <30.320019, 30.940941, 29.986156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538256, 30.902300, 30.078241>,  <30.901983, 30.837898, 30.231716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538256, 30.902300, 30.078241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308587, 0.357621, 0.881409,
		0.279125, 0.919883, -0.275508,
		-0.909320, 0.161005, -0.383685,
		30.265459, 30.950602, 29.963137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738148, 31.509005, 30.542509>,  <30.901983, 30.837898, 30.231716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738148, 31.509005, 30.542509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392456, 31.342485, 30.429508>,  <30.185041, 31.242575, 30.361708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392456, 31.342485, 30.429508>,  <30.738148, 31.509005, 30.542509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392456, 31.342485, 30.429508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414632, 0.271344, 0.868592,
		-0.284937, 0.867796, -0.407113,
		-0.864229, -0.416296, -0.282500,
		30.133188, 31.217596, 30.344759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282408, 31.930252, 30.792276>,  <30.738148, 31.509005, 30.542509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282408, 31.930252, 30.792276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047596, 31.612034, 30.732275>,  <29.906708, 31.421103, 30.696274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047596, 31.612034, 30.732275>,  <30.282408, 31.930252, 30.792276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047596, 31.612034, 30.732275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586849, 0.290531, 0.755778,
		-0.557676, 0.531693, -0.637416,
		-0.587031, -0.795547, -0.150001,
		29.871487, 31.373369, 30.687275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640631, 32.168003, 30.903042>,  <30.282408, 31.930252, 30.792276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640631, 32.168003, 30.903042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600040, 31.772314, 30.945261>,  <29.575686, 31.534901, 30.970592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600040, 31.772314, 30.945261>,  <29.640631, 32.168003, 30.903042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600040, 31.772314, 30.945261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560516, 0.144505, 0.815438,
		-0.821903, 0.023586, -0.569139,
		-0.101476, -0.989223, 0.105549,
		29.569597, 31.475548, 30.976925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819889, 31.978046, 30.998592>,  <29.640631, 32.168003, 30.903042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819889, 31.978046, 30.998592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010977, 31.661699, 31.151596>,  <29.125629, 31.471891, 31.243399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010977, 31.661699, 31.151596>,  <28.819889, 31.978046, 30.998592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010977, 31.661699, 31.151596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632724, -0.007677, 0.774339,
		-0.609462, -0.611941, -0.504068,
		0.477720, -0.790867, 0.382511,
		29.154293, 31.424438, 31.266350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272224, 31.422743, 31.061518>,  <28.819889, 31.978046, 30.998592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272224, 31.422743, 31.061518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577940, 31.369259, 31.313860>,  <28.761370, 31.337170, 31.465265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577940, 31.369259, 31.313860>,  <28.272224, 31.422743, 31.061518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577940, 31.369259, 31.313860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635423, 0.010700, 0.772090,
		-0.109987, -0.990963, -0.076786,
		0.764290, -0.133711, 0.630857,
		28.807228, 31.329145, 31.503117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962439, 31.083879, 31.593250>,  <28.272224, 31.422743, 31.061518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962439, 31.083879, 31.593250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303488, 31.213219, 31.757433>,  <28.508118, 31.290823, 31.855944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303488, 31.213219, 31.757433>,  <27.962439, 31.083879, 31.593250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303488, 31.213219, 31.757433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472165, 0.140311, 0.870272,
		0.223809, -0.935820, 0.272307,
		0.852625, 0.323349, 0.410458,
		28.559275, 31.310223, 31.880569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964350, 30.721128, 32.194962>,  <27.962439, 31.083879, 31.593250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964350, 30.721128, 32.194962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224766, 31.015718, 32.268448>,  <28.381016, 31.192472, 32.312538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224766, 31.015718, 32.268448>,  <27.964350, 30.721128, 32.194962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224766, 31.015718, 32.268448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436385, 0.165131, 0.884477,
		0.621059, -0.656001, 0.428893,
		0.651041, 0.736475, 0.183713,
		28.420078, 31.236660, 32.323563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338076, 30.604685, 32.875210>,  <27.964350, 30.721128, 32.194962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338076, 30.604685, 32.875210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350626, 30.995941, 32.792980>,  <28.358156, 31.230694, 32.743645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350626, 30.995941, 32.792980>,  <28.338076, 30.604685, 32.875210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350626, 30.995941, 32.792980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350711, 0.203369, 0.914135,
		0.935958, 0.043412, 0.349425,
		0.031378, 0.978139, -0.205570,
		28.360039, 31.289383, 32.731308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675219, 30.897652, 33.447746>,  <28.338076, 30.604685, 32.875210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675219, 30.897652, 33.447746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476496, 31.194185, 33.267254>,  <28.357262, 31.372105, 33.158958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476496, 31.194185, 33.267254>,  <28.675219, 30.897652, 33.447746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476496, 31.194185, 33.267254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175818, 0.423181, 0.888823,
		0.849866, 0.520906, -0.079899,
		-0.496805, 0.741333, -0.451232,
		28.327454, 31.416586, 33.131886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891354, 31.370918, 33.835274>,  <28.675219, 30.897652, 33.447746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891354, 31.370918, 33.835274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575808, 31.521484, 33.640953>,  <28.386480, 31.611824, 33.524361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575808, 31.521484, 33.640953>,  <28.891354, 31.370918, 33.835274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575808, 31.521484, 33.640953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210247, 0.577483, 0.788866,
		0.577483, 0.724448, -0.376416,
		-0.788866, 0.376416, -0.485800,
		28.339148, 31.634409, 33.495213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922268, 32.110390, 33.999447>,  <28.891354, 31.370918, 33.835274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922268, 32.110390, 33.999447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548084, 32.020981, 33.889935>,  <28.323574, 31.967335, 33.824226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548084, 32.020981, 33.889935>,  <28.922268, 32.110390, 33.999447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548084, 32.020981, 33.889935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353206, 0.563160, 0.747059,
		-0.012805, 0.795543, -0.605763,
		-0.935458, -0.223525, -0.273779,
		28.267447, 31.953924, 33.807800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612738, 32.728466, 34.177437>,  <28.922268, 32.110390, 33.999447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612738, 32.728466, 34.177437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301853, 32.482525, 34.123924>,  <28.115322, 32.334961, 34.091816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301853, 32.482525, 34.123924>,  <28.612738, 32.728466, 34.177437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301853, 32.482525, 34.123924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475123, 0.434040, 0.765420,
		-0.412558, 0.658453, -0.629472,
		-0.777209, -0.614857, -0.133779,
		28.068691, 32.298069, 34.083790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048996, 33.160358, 33.878792>,  <28.612738, 32.728466, 34.177437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048996, 33.160358, 33.878792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887312, 32.831585, 34.039314>,  <27.790302, 32.634323, 34.135628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887312, 32.831585, 34.039314>,  <28.048996, 33.160358, 33.878792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887312, 32.831585, 34.039314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412814, 0.555454, 0.721842,
		-0.816211, 0.126109, -0.563823,
		-0.404208, -0.821929, 0.401308,
		27.766050, 32.585007, 34.159706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859222, 33.421894, 33.220142>,  <28.048996, 33.160358, 33.878792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859222, 33.421894, 33.220142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806999, 33.796417, 33.089733>,  <27.775665, 34.021130, 33.011490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806999, 33.796417, 33.089733>,  <27.859222, 33.421894, 33.220142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806999, 33.796417, 33.089733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444976, -0.238516, -0.863195,
		-0.885974, -0.257769, -0.385493,
		-0.130559, 0.936304, -0.326020,
		27.767832, 34.077309, 32.991928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274967, 33.084511, 33.519978>,  <27.859222, 33.421894, 33.220142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274967, 33.084511, 33.519978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252237, 32.960926, 33.899727>,  <27.238600, 32.886776, 34.127579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252237, 32.960926, 33.899727>,  <27.274967, 33.084511, 33.519978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252237, 32.960926, 33.899727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718685, 0.672717, 0.175908,
		-0.693010, -0.672306, -0.260271,
		-0.056825, -0.308959, 0.949376,
		27.235189, 32.868237, 34.184540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524000, 33.000797, 33.778164>,  <27.274967, 33.084511, 33.519978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524000, 33.000797, 33.778164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728577, 33.021885, 34.121243>,  <26.851322, 33.034538, 34.327091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728577, 33.021885, 34.121243>,  <26.524000, 33.000797, 33.778164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728577, 33.021885, 34.121243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713080, 0.583016, 0.389370,
		-0.479525, -0.810748, 0.335773,
		0.511442, 0.052720, 0.857700,
		26.882010, 33.037701, 34.378551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031420, 32.970230, 34.297741>,  <26.524000, 33.000797, 33.778164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031420, 32.970230, 34.297741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359198, 33.155128, 34.433292>,  <26.555864, 33.266068, 34.514622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359198, 33.155128, 34.433292>,  <26.031420, 32.970230, 34.297741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359198, 33.155128, 34.433292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559765, 0.772494, 0.299860,
		-0.123175, -0.435412, 0.891765,
		0.819446, 0.462243, 0.338880,
		26.605032, 33.293800, 34.534958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896454, 32.977711, 34.958729>,  <26.031420, 32.970230, 34.297741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896454, 32.977711, 34.958729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160948, 33.252811, 34.838882>,  <26.319643, 33.417870, 34.766975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160948, 33.252811, 34.838882>,  <25.896454, 32.977711, 34.958729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160948, 33.252811, 34.838882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506886, 0.704033, 0.497397,
		0.553026, -0.177023, 0.814141,
		0.661233, 0.687750, -0.299618,
		26.359318, 33.459137, 34.748997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735409, 33.504612, 35.421970>,  <25.896454, 32.977711, 34.958729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735409, 33.504612, 35.421970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958471, 33.686058, 35.143906>,  <26.092308, 33.794926, 34.977066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958471, 33.686058, 35.143906>,  <25.735409, 33.504612, 35.421970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958471, 33.686058, 35.143906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408235, 0.879067, 0.246139,
		0.722749, 0.146529, 0.675399,
		0.557655, 0.453619, -0.695163,
		26.125767, 33.822144, 34.935356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947718, 34.113804, 35.705956>,  <25.735409, 33.504612, 35.421970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947718, 34.113804, 35.705956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964510, 34.167923, 35.309990>,  <25.974586, 34.200394, 35.072411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964510, 34.167923, 35.309990>,  <25.947718, 34.113804, 35.705956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964510, 34.167923, 35.309990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496238, 0.862765, 0.096872,
		0.867171, 0.487167, 0.103360,
		0.041983, 0.135295, -0.989916,
		25.977104, 34.208511, 35.013016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304195, 34.755470, 35.528625>,  <25.947718, 34.113804, 35.705956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304195, 34.755470, 35.528625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011644, 34.629162, 35.286839>,  <25.836113, 34.553379, 35.141766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011644, 34.629162, 35.286839>,  <26.304195, 34.755470, 35.528625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011644, 34.629162, 35.286839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527797, 0.823387, 0.208481,
		0.431876, 0.471513, -0.768869,
		-0.731378, -0.315768, -0.604464,
		25.792231, 34.534431, 35.105499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986107, 34.994648, 35.627098>,  <26.304195, 34.755470, 35.528625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986107, 34.994648, 35.627098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196962, 35.106071, 35.305969>,  <27.323475, 35.172928, 35.113293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196962, 35.106071, 35.305969>,  <26.986107, 34.994648, 35.627098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196962, 35.106071, 35.305969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418328, 0.737277, 0.530494,
		0.739701, -0.615477, 0.272085,
		0.527109, 0.278587, -0.802836,
		27.355104, 35.189640, 35.065121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725037, 34.738991, 35.568630>,  <26.986107, 34.994648, 35.627098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725037, 34.738991, 35.568630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623629, 35.101513, 35.433369>,  <27.562784, 35.319027, 35.352211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623629, 35.101513, 35.433369>,  <27.725037, 34.738991, 35.568630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623629, 35.101513, 35.433369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466083, 0.420763, 0.778283,
		0.847640, 0.039706, -0.529084,
		-0.253521, 0.906301, -0.338149,
		27.547573, 35.373402, 35.331924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296276, 35.136326, 35.416153>,  <27.725037, 34.738991, 35.568630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296276, 35.136326, 35.416153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004463, 35.398983, 35.492676>,  <27.829376, 35.556580, 35.538589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004463, 35.398983, 35.492676>,  <28.296276, 35.136326, 35.416153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004463, 35.398983, 35.492676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553252, 0.402116, 0.729531,
		0.402116, 0.638058, -0.656647,
		-0.729531, 0.656647, 0.191309,
		27.785604, 35.595978, 35.550068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597696, 35.822220, 35.294071>,  <28.296276, 35.136326, 35.416153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597696, 35.822220, 35.294071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322390, 35.741405, 35.572773>,  <28.157206, 35.692917, 35.739994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322390, 35.741405, 35.572773>,  <28.597696, 35.822220, 35.294071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322390, 35.741405, 35.572773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637599, 0.289679, 0.713831,
		-0.346056, 0.935557, -0.070558,
		-0.688268, -0.202037, 0.696755,
		28.115910, 35.680794, 35.781799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863262, 36.185734, 36.050289>,  <28.597696, 35.822220, 35.294071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863262, 36.185734, 36.050289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622652, 35.871475, 36.108150>,  <28.478287, 35.682919, 36.142868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622652, 35.871475, 36.108150>,  <28.863262, 36.185734, 36.050289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622652, 35.871475, 36.108150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558074, -0.283710, 0.779784,
		-0.571595, 0.549787, 0.609108,
		-0.601525, -0.785648, 0.144654,
		28.442194, 35.635780, 36.151546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684288, 36.209229, 36.735767>,  <28.863262, 36.185734, 36.050289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684288, 36.209229, 36.735767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663658, 35.827129, 36.619255>,  <28.651281, 35.597870, 36.549347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663658, 35.827129, 36.619255>,  <28.684288, 36.209229, 36.735767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663658, 35.827129, 36.619255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319187, -0.292134, 0.901542,
		-0.946287, -0.046476, 0.319969,
		-0.051574, -0.955247, -0.291277,
		28.648186, 35.540554, 36.531872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238035, 35.849876, 37.240150>,  <28.684288, 36.209229, 36.735767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238035, 35.849876, 37.240150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507040, 35.619259, 37.054535>,  <28.668442, 35.480888, 36.943165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507040, 35.619259, 37.054535>,  <28.238035, 35.849876, 37.240150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507040, 35.619259, 37.054535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284188, -0.377760, 0.881212,
		-0.683350, -0.724498, -0.090201,
		0.672511, -0.576542, -0.464036,
		28.708794, 35.446297, 36.915325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201124, 35.301300, 37.515060>,  <28.238035, 35.849876, 37.240150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201124, 35.301300, 37.515060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550022, 35.186119, 37.356934>,  <28.759361, 35.117012, 37.262058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550022, 35.186119, 37.356934>,  <28.201124, 35.301300, 37.515060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550022, 35.186119, 37.356934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320452, -0.274119, 0.906735,
		-0.369458, -0.917574, -0.146824,
		0.872245, -0.287951, -0.395314,
		28.811695, 35.099735, 37.238338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328920, 34.649231, 37.854958>,  <28.201124, 35.301300, 37.515060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328920, 34.649231, 37.854958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686237, 34.746902, 37.704010>,  <28.900627, 34.805508, 37.613441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686237, 34.746902, 37.704010>,  <28.328920, 34.649231, 37.854958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686237, 34.746902, 37.704010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425812, -0.190886, 0.884447,
		0.143932, -0.950756, -0.274492,
		0.893290, 0.244183, -0.377369,
		28.954224, 34.820156, 37.590801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725283, 34.064972, 38.045238>,  <28.328920, 34.649231, 37.854958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725283, 34.064972, 38.045238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965948, 34.374649, 37.966629>,  <29.110348, 34.560455, 37.919464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965948, 34.374649, 37.966629>,  <28.725283, 34.064972, 38.045238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965948, 34.374649, 37.966629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436932, -0.113043, 0.892363,
		0.668648, -0.622770, -0.406285,
		0.601664, 0.774196, -0.196522,
		29.146448, 34.606907, 37.907673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392725, 33.829224, 38.241959>,  <28.725283, 34.064972, 38.045238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392725, 33.829224, 38.241959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406559, 34.228844, 38.231365>,  <29.414860, 34.468616, 38.225010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406559, 34.228844, 38.231365>,  <29.392725, 33.829224, 38.241959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406559, 34.228844, 38.231365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534437, 0.003903, 0.845199,
		0.844500, -0.043383, -0.533795,
		0.034584, 0.999051, -0.026481,
		29.416935, 34.528561, 38.223419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041914, 33.957542, 38.366154>,  <29.392725, 33.829224, 38.241959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041914, 33.957542, 38.366154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854546, 34.298153, 38.460365>,  <29.742125, 34.502522, 38.516891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854546, 34.298153, 38.460365>,  <30.041914, 33.957542, 38.366154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854546, 34.298153, 38.460365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448591, -0.000440, 0.893737,
		0.761148, 0.524305, -0.381783,
		-0.468423, 0.851530, 0.235533,
		29.714018, 34.553612, 38.531025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589434, 34.403301, 38.757591>,  <30.041914, 33.957542, 38.366154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589434, 34.403301, 38.757591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220364, 34.531670, 38.843082>,  <29.998922, 34.608692, 38.894379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220364, 34.531670, 38.843082>,  <30.589434, 34.403301, 38.757591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220364, 34.531670, 38.843082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228717, 0.009269, 0.973449,
		0.310421, 0.947060, -0.081953,
		-0.922674, 0.320923, 0.213732,
		29.943562, 34.627945, 38.907204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695356, 34.856701, 39.348267>,  <30.589434, 34.403301, 38.757591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695356, 34.856701, 39.348267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304516, 34.771900, 39.340969>,  <30.070011, 34.721020, 39.336590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304516, 34.771900, 39.340969>,  <30.695356, 34.856701, 39.348267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304516, 34.771900, 39.340969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025327, -0.201016, 0.979261,
		-0.211269, 0.956373, 0.201782,
		-0.977100, -0.211998, -0.018246,
		30.011387, 34.708302, 39.335495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499607, 35.196178, 39.944870>,  <30.695356, 34.856701, 39.348267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499607, 35.196178, 39.944870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211199, 34.924629, 39.889347>,  <30.038155, 34.761700, 39.856033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211199, 34.924629, 39.889347>,  <30.499607, 35.196178, 39.944870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211199, 34.924629, 39.889347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133666, -0.060293, 0.989191,
		-0.679901, 0.731778, -0.047270,
		-0.721018, -0.678870, -0.138807,
		29.994894, 34.720966, 39.847706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870924, 35.331272, 40.470497>,  <30.499607, 35.196178, 39.944870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870924, 35.331272, 40.470497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851719, 34.949696, 40.352047>,  <29.840197, 34.720749, 40.280979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851719, 34.949696, 40.352047>,  <29.870924, 35.331272, 40.470497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851719, 34.949696, 40.352047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422882, -0.249170, 0.871255,
		-0.904912, 0.167054, -0.391443,
		-0.048011, -0.953943, -0.296122,
		29.837317, 34.663513, 40.263210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319790, 35.044117, 40.937874>,  <29.870924, 35.331272, 40.470497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319790, 35.044117, 40.937874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534069, 34.737591, 40.796009>,  <29.662638, 34.553677, 40.710888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534069, 34.737591, 40.796009>,  <29.319790, 35.044117, 40.937874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534069, 34.737591, 40.796009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099788, -0.359622, 0.927747,
		-0.838492, -0.532384, -0.116180,
		0.535699, -0.766315, -0.354666,
		29.694778, 34.507698, 40.689610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045067, 34.424049, 41.311939>,  <29.319790, 35.044117, 40.937874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045067, 34.424049, 41.311939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403505, 34.300827, 41.184116>,  <29.618568, 34.226894, 41.107422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403505, 34.300827, 41.184116>,  <29.045067, 34.424049, 41.311939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403505, 34.300827, 41.184116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149700, -0.468009, 0.870952,
		-0.417853, -0.828294, -0.373266,
		0.896096, -0.308052, -0.319555,
		29.672335, 34.208412, 41.088249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114147, 33.733635, 41.447353>,  <29.045067, 34.424049, 41.311939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114147, 33.733635, 41.447353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489977, 33.858589, 41.391338>,  <29.715475, 33.933563, 41.357731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489977, 33.858589, 41.391338>,  <29.114147, 33.733635, 41.447353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489977, 33.858589, 41.391338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294249, -0.527872, 0.796724,
		0.174968, -0.789787, -0.587896,
		0.939576, 0.312389, -0.140034,
		29.771851, 33.952305, 41.349327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583986, 33.121132, 41.438705>,  <29.114147, 33.733635, 41.447353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583986, 33.121132, 41.438705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838726, 33.417801, 41.522942>,  <29.991570, 33.595802, 41.573483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838726, 33.417801, 41.522942>,  <29.583986, 33.121132, 41.438705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838726, 33.417801, 41.522942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339896, -0.515249, 0.786759,
		0.692020, -0.429470, -0.580227,
		0.636851, 0.741670, 0.210588,
		30.029781, 33.640301, 41.586117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124598, 32.818233, 41.717712>,  <29.583986, 33.121132, 41.438705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124598, 32.818233, 41.717712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225599, 33.178482, 41.859207>,  <30.286200, 33.394630, 41.944103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225599, 33.178482, 41.859207>,  <30.124598, 32.818233, 41.717712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225599, 33.178482, 41.859207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360826, -0.426852, 0.829218,
		0.897801, -0.081744, -0.432749,
		0.252503, 0.900619, 0.353732,
		30.301350, 33.448669, 41.965328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787308, 32.714317, 41.927216>,  <30.124598, 32.818233, 41.717712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787308, 32.714317, 41.927216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627895, 33.035366, 42.104744>,  <30.532248, 33.227993, 42.211262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627895, 33.035366, 42.104744>,  <30.787308, 32.714317, 41.927216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627895, 33.035366, 42.104744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219010, -0.386625, 0.895855,
		0.890621, 0.454228, -0.021700,
		-0.398532, 0.802620, 0.443817,
		30.508335, 33.276154, 42.237888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267374, 32.974216, 42.427483>,  <30.787308, 32.714317, 41.927216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267374, 32.974216, 42.427483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918375, 33.134739, 42.538979>,  <30.708975, 33.231052, 42.605877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918375, 33.134739, 42.538979>,  <31.267374, 32.974216, 42.427483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918375, 33.134739, 42.538979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164516, -0.295893, 0.940947,
		0.460089, 0.866833, 0.192145,
		-0.872498, 0.401308, 0.278745,
		30.656626, 33.255131, 42.622601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446804, 33.291920, 43.032970>,  <31.267374, 32.974216, 42.427483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446804, 33.291920, 43.032970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047552, 33.267464, 43.033745>,  <30.808001, 33.252792, 43.034210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047552, 33.267464, 43.033745>,  <31.446804, 33.291920, 43.032970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047552, 33.267464, 43.033745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022283, -0.333978, 0.942318,
		-0.056966, 0.940596, 0.334715,
		-0.998128, -0.061138, 0.001934,
		30.748114, 33.249123, 43.034325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223978, 33.537655, 43.639313>,  <31.446804, 33.291920, 43.032970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223978, 33.537655, 43.639313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933147, 33.294540, 43.511593>,  <30.758648, 33.148670, 43.434959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933147, 33.294540, 43.511593>,  <31.223978, 33.537655, 43.639313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933147, 33.294540, 43.511593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125861, -0.339200, 0.932257,
		-0.674920, 0.718010, 0.170128,
		-0.727077, -0.607787, -0.319302,
		30.715025, 33.112206, 43.415802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666796, 33.591202, 44.179852>,  <31.223978, 33.537655, 43.639313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666796, 33.591202, 44.179852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567841, 33.261993, 43.975330>,  <30.508467, 33.064468, 43.852619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567841, 33.261993, 43.975330>,  <30.666796, 33.591202, 44.179852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567841, 33.261993, 43.975330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197557, -0.473773, 0.858202,
		-0.948562, 0.313321, -0.045388,
		-0.247389, -0.823024, -0.511302,
		30.493624, 33.015087, 43.821941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983837, 33.380764, 44.336544>,  <30.666796, 33.591202, 44.179852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983837, 33.380764, 44.336544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179827, 33.057091, 44.206837>,  <30.297421, 32.862888, 44.129013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179827, 33.057091, 44.206837>,  <29.983837, 33.380764, 44.336544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179827, 33.057091, 44.206837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291285, -0.502568, 0.813989,
		-0.821632, -0.304380, -0.481948,
		0.489973, -0.809184, -0.324265,
		30.326818, 32.814335, 44.109558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548574, 32.898708, 44.611866>,  <29.983837, 33.380764, 44.336544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548574, 32.898708, 44.611866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881132, 32.717709, 44.482853>,  <30.080667, 32.609108, 44.405445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881132, 32.717709, 44.482853>,  <29.548574, 32.898708, 44.611866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881132, 32.717709, 44.482853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048530, -0.519086, 0.853343,
		-0.553562, -0.725116, -0.409604,
		0.831393, -0.452500, -0.322536,
		30.130550, 32.581959, 44.386093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446634, 32.139713, 44.634968>,  <29.548574, 32.898708, 44.611866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446634, 32.139713, 44.634968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845032, 32.175476, 44.635906>,  <30.084070, 32.196934, 44.636467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845032, 32.175476, 44.635906>,  <29.446634, 32.139713, 44.634968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845032, 32.175476, 44.635906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047110, -0.546720, 0.835989,
		0.076026, -0.832529, -0.548741,
		0.995992, 0.089408, 0.002344,
		30.143829, 32.202297, 44.636608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705019, 31.519894, 44.844051>,  <29.446634, 32.139713, 44.634968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705019, 31.519894, 44.844051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023695, 31.752323, 44.910549>,  <30.214901, 31.891781, 44.950447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023695, 31.752323, 44.910549>,  <29.705019, 31.519894, 44.844051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023695, 31.752323, 44.910549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156122, -0.463592, 0.872186,
		0.583876, -0.668907, -0.460058,
		0.796690, 0.581073, 0.166249,
		30.262703, 31.926645, 44.960423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262262, 31.038832, 45.126965>,  <29.705019, 31.519894, 44.844051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262262, 31.038832, 45.126965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392824, 31.407387, 45.211346>,  <30.471161, 31.628521, 45.261974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392824, 31.407387, 45.211346>,  <30.262262, 31.038832, 45.126965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392824, 31.407387, 45.211346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405355, -0.338061, 0.849354,
		0.853902, -0.191719, -0.483834,
		0.326403, 0.921389, 0.210957,
		30.490746, 31.683804, 45.274632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006783, 30.963247, 45.303749>,  <30.262262, 31.038832, 45.126965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006783, 30.963247, 45.303749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871811, 31.304920, 45.461998>,  <30.790827, 31.509924, 45.556946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871811, 31.304920, 45.461998>,  <31.006783, 30.963247, 45.303749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871811, 31.304920, 45.461998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362480, -0.269961, 0.892036,
		0.868763, 0.444404, -0.218531,
		-0.337430, 0.854182, 0.395620,
		30.770582, 31.561174, 45.580685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556585, 31.153049, 45.700172>,  <31.006783, 30.963247, 45.303749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556585, 31.153049, 45.700172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236017, 31.350393, 45.835419>,  <31.043676, 31.468800, 45.916569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236017, 31.350393, 45.835419>,  <31.556585, 31.153049, 45.700172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236017, 31.350393, 45.835419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217515, -0.286193, 0.933156,
		0.557148, 0.821395, 0.122047,
		-0.801419, 0.493359, 0.338118,
		30.995592, 31.498402, 45.936855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635483, 31.617638, 46.425213>,  <31.556585, 31.153049, 45.700172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635483, 31.617638, 46.425213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248440, 31.521069, 46.395672>,  <31.016214, 31.463127, 46.377949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248440, 31.521069, 46.395672>,  <31.635483, 31.617638, 46.425213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248440, 31.521069, 46.395672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025717, -0.196733, 0.980120,
		-0.251152, 0.950269, 0.184151,
		-0.967606, -0.241423, -0.073848,
		30.958158, 31.448641, 46.373516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436548, 31.788887, 46.995148>,  <31.635483, 31.617638, 46.425213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436548, 31.788887, 46.995148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111689, 31.587271, 46.877602>,  <30.916773, 31.466301, 46.807076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111689, 31.587271, 46.877602>,  <31.436548, 31.788887, 46.995148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111689, 31.587271, 46.877602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291789, -0.085275, 0.952674,
		-0.505247, 0.859459, -0.077818,
		-0.812148, -0.504043, -0.293865,
		30.868044, 31.436058, 46.789440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830744, 32.110554, 47.322273>,  <31.436548, 31.788887, 46.995148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830744, 32.110554, 47.322273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740292, 31.732033, 47.229862>,  <30.686020, 31.504919, 47.174416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740292, 31.732033, 47.229862>,  <30.830744, 32.110554, 47.322273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740292, 31.732033, 47.229862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381494, -0.132196, 0.914869,
		-0.896286, 0.295015, -0.331116,
		-0.226128, -0.946303, -0.231032,
		30.672453, 31.448141, 47.160553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224262, 32.018944, 47.727509>,  <30.830744, 32.110554, 47.322273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224262, 32.018944, 47.727509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368080, 31.658012, 47.632404>,  <30.454370, 31.441454, 47.575340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368080, 31.658012, 47.632404>,  <30.224262, 32.018944, 47.727509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368080, 31.658012, 47.632404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282464, -0.348092, 0.893894,
		-0.889349, -0.254234, -0.380030,
		0.359544, -0.902328, -0.237764,
		30.475943, 31.387314, 47.561077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710802, 31.562832, 48.004101>,  <30.224262, 32.018944, 47.727509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710802, 31.562832, 48.004101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047405, 31.353462, 47.950592>,  <30.249367, 31.227840, 47.918488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047405, 31.353462, 47.950592>,  <29.710802, 31.562832, 48.004101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047405, 31.353462, 47.950592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138095, -0.447793, 0.883409,
		-0.522301, -0.724920, -0.449103,
		0.841505, -0.523424, -0.133775,
		30.299858, 31.196436, 47.910461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594589, 30.880758, 48.237484>,  <29.710802, 31.562832, 48.004101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594589, 30.880758, 48.237484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991682, 30.928892, 48.236462>,  <30.229937, 30.957773, 48.235847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991682, 30.928892, 48.236462>,  <29.594589, 30.880758, 48.237484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991682, 30.928892, 48.236462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061007, -0.484785, 0.872503,
		0.103755, -0.866316, -0.488602,
		0.992730, 0.120335, -0.002552,
		30.289501, 30.964993, 48.235695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815210, 30.191446, 48.372261>,  <29.594589, 30.880758, 48.237484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815210, 30.191446, 48.372261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118917, 30.441046, 48.446167>,  <30.301142, 30.590805, 48.490509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118917, 30.441046, 48.446167>,  <29.815210, 30.191446, 48.372261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118917, 30.441046, 48.446167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304295, -0.591378, 0.746778,
		0.575255, -0.510781, -0.638893,
		0.759267, 0.624000, 0.184765,
		30.346697, 30.628246, 48.501598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388226, 29.851454, 48.239887>,  <29.815210, 30.191446, 48.372261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388226, 29.851454, 48.239887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511026, 30.124392, 48.505264>,  <30.584707, 30.288155, 48.664490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511026, 30.124392, 48.505264>,  <30.388226, 29.851454, 48.239887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511026, 30.124392, 48.505264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357979, -0.728704, 0.583817,
		0.881817, 0.058264, -0.467980,
		0.307003, 0.682346, 0.663440,
		30.603127, 30.329096, 48.704296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064129, 29.695444, 48.455421>,  <30.388226, 29.851454, 48.239887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064129, 29.695444, 48.455421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970703, 29.938299, 48.759220>,  <30.914648, 30.084011, 48.941498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970703, 29.938299, 48.759220>,  <31.064129, 29.695444, 48.455421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970703, 29.938299, 48.759220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479975, -0.607311, 0.633086,
		0.845619, 0.512405, -0.149563,
		-0.233565, 0.607136, 0.759496,
		30.900633, 30.120440, 48.987068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669762, 29.749462, 48.897087>,  <31.064129, 29.695444, 48.455421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669762, 29.749462, 48.897087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363407, 29.862465, 49.128120>,  <31.179594, 29.930267, 49.266743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363407, 29.862465, 49.128120>,  <31.669762, 29.749462, 48.897087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363407, 29.862465, 49.128120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319311, -0.612585, 0.723036,
		0.558085, 0.738193, 0.378962,
		-0.765886, 0.282508, 0.577587,
		31.133640, 29.947218, 49.301395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929916, 29.804983, 49.552673>,  <31.669762, 29.749462, 48.897087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929916, 29.804983, 49.552673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539864, 29.749556, 49.621864>,  <31.305832, 29.716299, 49.663380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539864, 29.749556, 49.621864>,  <31.929916, 29.804983, 49.552673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539864, 29.749556, 49.621864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220597, -0.531422, 0.817880,
		-0.021408, 0.835697, 0.548773,
		-0.975130, -0.138567, 0.172975,
		31.247324, 29.707985, 49.673756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839624, 29.975918, 50.218716>,  <31.929916, 29.804983, 49.552673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839624, 29.975918, 50.218716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516415, 29.756609, 50.132465>,  <31.322489, 29.625023, 50.080715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516415, 29.756609, 50.132465>,  <31.839624, 29.975918, 50.218716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516415, 29.756609, 50.132465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114997, -0.505731, 0.854992,
		-0.577817, 0.666058, 0.471693,
		-0.808024, -0.548272, -0.215625,
		31.274008, 29.592127, 50.067780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453348, 29.943531, 50.901169>,  <31.839624, 29.975918, 50.218716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453348, 29.943531, 50.901169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319908, 29.648773, 50.665985>,  <31.239843, 29.471918, 50.524876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319908, 29.648773, 50.665985>,  <31.453348, 29.943531, 50.901169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319908, 29.648773, 50.665985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018691, -0.618393, 0.785647,
		-0.942529, 0.273082, 0.192524,
		-0.333602, -0.736896, -0.587957,
		31.219828, 29.427704, 50.489597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903435, 29.705818, 51.307877>,  <31.453348, 29.943531, 50.901169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903435, 29.705818, 51.307877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013857, 29.418188, 51.052776>,  <31.080111, 29.245609, 50.899715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013857, 29.418188, 51.052776>,  <30.903435, 29.705818, 51.307877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013857, 29.418188, 51.052776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033648, -0.670355, 0.741277,
		-0.960552, -0.183176, -0.209253,
		0.276058, -0.719077, -0.637747,
		31.096674, 29.202465, 50.861454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107130, 29.978142, 51.365154>,  <30.903435, 29.705818, 51.307877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107130, 29.978142, 51.365154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942410, 29.641031, 51.503803>,  <29.843578, 29.438765, 51.586990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942410, 29.641031, 51.503803>,  <30.107130, 29.978142, 51.365154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942410, 29.641031, 51.503803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902805, -0.325568, 0.280978,
		-0.123953, 0.428637, 0.894933,
		-0.411799, -0.842778, 0.346621,
		29.818871, 29.388197, 51.607788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407503, 29.788332, 52.035629>,  <30.107130, 29.978142, 51.365154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407503, 29.788332, 52.035629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294867, 29.421705, 51.922058>,  <30.227283, 29.201729, 51.853916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294867, 29.421705, 51.922058>,  <30.407503, 29.788332, 52.035629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294867, 29.421705, 51.922058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832274, -0.380565, 0.403102,
		-0.477521, -0.122793, 0.869997,
		-0.281592, -0.916565, -0.283925,
		30.210388, 29.146736, 51.836880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432865, 29.352812, 52.674564>,  <30.407503, 29.788332, 52.035629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432865, 29.352812, 52.674564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530203, 29.152748, 52.342148>,  <30.588606, 29.032709, 52.142700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530203, 29.152748, 52.342148>,  <30.432865, 29.352812, 52.674564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530203, 29.152748, 52.342148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753663, -0.441828, 0.486601,
		-0.610554, -0.744734, 0.269435,
		0.243344, -0.500159, -0.831038,
		30.603207, 29.002701, 52.092834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338009, 28.525211, 52.692966>,  <30.432865, 29.352812, 52.674564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338009, 28.525211, 52.692966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626411, 28.668495, 52.455704>,  <30.799454, 28.754465, 52.313347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626411, 28.668495, 52.455704>,  <30.338009, 28.525211, 52.692966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626411, 28.668495, 52.455704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684391, -0.502092, 0.528689,
		-0.108439, -0.787140, -0.607166,
		0.721006, 0.358208, -0.593158,
		30.842712, 28.775957, 52.277756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797382, 27.939905, 52.325153>,  <30.338009, 28.525211, 52.692966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797382, 27.939905, 52.325153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971256, 28.294333, 52.389561>,  <31.075581, 28.506989, 52.428207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971256, 28.294333, 52.389561>,  <30.797382, 27.939905, 52.325153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971256, 28.294333, 52.389561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756098, -0.456199, 0.469254,
		0.489250, -0.082229, -0.868259,
		0.434685, 0.886071, 0.161022,
		31.101662, 28.560154, 52.437866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399740, 27.620636, 52.056660>,  <30.797382, 27.939905, 52.325153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399740, 27.620636, 52.056660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694681, 27.350590, 52.047424>,  <31.871645, 27.188562, 52.041885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694681, 27.350590, 52.047424>,  <31.399740, 27.620636, 52.056660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694681, 27.350590, 52.047424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012603, 0.020420, -0.999712,
		0.675391, 0.737430, 0.006548,
		0.737352, -0.675115, -0.023085,
		31.915886, 27.148056, 52.040497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067394, 27.815475, 51.674622>,  <31.399740, 27.620636, 52.056660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067394, 27.815475, 51.674622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998617, 27.425623, 51.617306>,  <31.957350, 27.191711, 51.582916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998617, 27.425623, 51.617306>,  <32.067394, 27.815475, 51.674622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998617, 27.425623, 51.617306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173809, 0.113160, -0.978256,
		0.969652, -0.193110, 0.149943,
		-0.171944, -0.974630, -0.143291,
		31.947035, 27.133234, 51.574318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291904, 27.734863, 50.970196>,  <32.067394, 27.815475, 51.674622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291904, 27.734863, 50.970196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203255, 27.352592, 51.047714>,  <32.150063, 27.123230, 51.094227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203255, 27.352592, 51.047714>,  <32.291904, 27.734863, 50.970196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203255, 27.352592, 51.047714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249563, -0.247713, -0.936139,
		0.942655, -0.159110, 0.293402,
		-0.221629, -0.955679, 0.193800,
		32.136765, 27.065889, 51.105854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699509, 27.318998, 50.581665>,  <32.291904, 27.734863, 50.970196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699509, 27.318998, 50.581665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379452, 27.086466, 50.640770>,  <32.187420, 26.946947, 50.676235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379452, 27.086466, 50.640770>,  <32.699509, 27.318998, 50.581665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379452, 27.086466, 50.640770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014604, -0.265159, -0.964094,
		0.599638, -0.769250, 0.220654,
		-0.800138, -0.581330, 0.147765,
		32.139412, 26.912067, 50.685101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841007, 26.649000, 50.374565>,  <32.699509, 27.318998, 50.581665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841007, 26.649000, 50.374565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447983, 26.689119, 50.311951>,  <32.212166, 26.713192, 50.274380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447983, 26.689119, 50.311951>,  <32.841007, 26.649000, 50.374565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447983, 26.689119, 50.311951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129750, -0.233089, -0.963760,
		-0.133152, -0.967269, 0.216012,
		-0.982566, 0.100299, -0.156539,
		32.153214, 26.719210, 50.264988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661686, 26.072533, 49.941303>,  <32.841007, 26.649000, 50.374565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661686, 26.072533, 49.941303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391262, 26.363733, 49.895771>,  <32.229008, 26.538454, 49.868454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391262, 26.363733, 49.895771>,  <32.661686, 26.072533, 49.941303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391262, 26.363733, 49.895771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062308, -0.097443, -0.993289,
		-0.734209, -0.678614, 0.020517,
		-0.676059, 0.728003, -0.113827,
		32.188446, 26.582134, 49.861622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118488, 25.860329, 49.468441>,  <32.661686, 26.072533, 49.941303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118488, 25.860329, 49.468441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078537, 26.256433, 49.429646>,  <32.054565, 26.494097, 49.406368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078537, 26.256433, 49.429646>,  <32.118488, 25.860329, 49.468441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078537, 26.256433, 49.429646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007320, -0.096742, -0.995282,
		-0.994972, -0.100120, 0.002414,
		-0.099882, 0.990261, -0.096988,
		32.048573, 26.553513, 49.400551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575130, 26.052813, 48.834312>,  <32.118488, 25.860329, 49.468441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575130, 26.052813, 48.834312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811966, 26.369274, 48.895641>,  <31.954067, 26.559151, 48.932438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811966, 26.369274, 48.895641>,  <31.575130, 26.052813, 48.834312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811966, 26.369274, 48.895641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111492, 0.108003, -0.987879,
		-0.798123, 0.602006, -0.024260,
		0.592089, 0.791154, 0.153319,
		31.989594, 26.606621, 48.941635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282446, 26.609999, 48.498955>,  <31.575130, 26.052813, 48.834312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282446, 26.609999, 48.498955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671188, 26.697783, 48.533211>,  <31.904434, 26.750452, 48.553764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671188, 26.697783, 48.533211>,  <31.282446, 26.609999, 48.498955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671188, 26.697783, 48.533211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041155, 0.199770, -0.978978,
		-0.231953, 0.954950, 0.185116,
		0.971856, 0.219458, 0.085639,
		31.962746, 26.763620, 48.558903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360895, 27.143806, 48.032829>,  <31.282446, 26.609999, 48.498955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360895, 27.143806, 48.032829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748802, 27.069818, 48.096497>,  <31.981546, 27.025425, 48.134697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748802, 27.069818, 48.096497>,  <31.360895, 27.143806, 48.032829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748802, 27.069818, 48.096497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223584, 0.412144, -0.883260,
		0.097774, 0.892146, 0.441040,
		0.969768, -0.184969, 0.159172,
		32.039734, 27.014328, 48.144249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690035, 27.834860, 47.767113>,  <31.360895, 27.143806, 48.032829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690035, 27.834860, 47.767113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926046, 27.512218, 47.752960>,  <32.067654, 27.318634, 47.744469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926046, 27.512218, 47.752960>,  <31.690035, 27.834860, 47.767113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926046, 27.512218, 47.752960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234485, 0.213126, -0.948469,
		0.772581, 0.551330, 0.314888,
		0.590030, -0.806606, -0.035378,
		32.103054, 27.270237, 47.742348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196117, 28.144407, 47.435745>,  <31.690035, 27.834860, 47.767113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196117, 28.144407, 47.435745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232952, 27.746672, 47.414558>,  <32.255054, 27.508030, 47.401844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232952, 27.746672, 47.414558>,  <32.196117, 28.144407, 47.435745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232952, 27.746672, 47.414558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405410, 0.086029, -0.910078,
		0.909485, 0.062333, 0.411038,
		0.092089, -0.994341, -0.052972,
		32.260578, 27.448370, 47.398666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763874, 28.099873, 47.102547>,  <32.196117, 28.144407, 47.435745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763874, 28.099873, 47.102547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617153, 27.729967, 47.062012>,  <32.529121, 27.508024, 47.037689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617153, 27.729967, 47.062012>,  <32.763874, 28.099873, 47.102547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617153, 27.729967, 47.062012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227844, 0.016313, -0.973561,
		0.901968, -0.380190, 0.204718,
		-0.366799, -0.924764, -0.101338,
		32.507114, 27.452538, 47.031609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262062, 27.706646, 46.858925>,  <32.763874, 28.099873, 47.102547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262062, 27.706646, 46.858925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928455, 27.504192, 46.771065>,  <32.728291, 27.382721, 46.718349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928455, 27.504192, 46.771065>,  <33.262062, 27.706646, 46.858925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928455, 27.504192, 46.771065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289108, -0.061814, -0.955299,
		0.469930, -0.860238, 0.197881,
		-0.834016, -0.506132, -0.219653,
		32.678249, 27.352352, 46.705170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548878, 27.029179, 46.526257>,  <33.262062, 27.706646, 46.858925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548878, 27.029179, 46.526257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181149, 27.131462, 46.406612>,  <32.960510, 27.192831, 46.334827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181149, 27.131462, 46.406612>,  <33.548878, 27.029179, 46.526257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181149, 27.131462, 46.406612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333329, 0.102022, -0.937275,
		-0.209152, -0.961356, -0.179025,
		-0.919319, 0.255707, -0.299110,
		32.905354, 27.208174, 46.316879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488239, 26.703297, 45.833672>,  <33.548878, 27.029179, 46.526257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488239, 26.703297, 45.833672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196606, 26.974468, 45.871288>,  <33.021626, 27.137173, 45.893860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196606, 26.974468, 45.871288>,  <33.488239, 26.703297, 45.833672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196606, 26.974468, 45.871288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016074, 0.120409, -0.992594,
		-0.684235, -0.725197, -0.076891,
		-0.729084, 0.677931, 0.094045,
		32.977879, 27.177847, 45.899502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949139, 26.481619, 45.389816>,  <33.488239, 26.703297, 45.833672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949139, 26.481619, 45.389816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910030, 26.875366, 45.448418>,  <32.886566, 27.111614, 45.483578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910030, 26.875366, 45.448418>,  <32.949139, 26.481619, 45.389816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910030, 26.875366, 45.448418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031845, 0.150228, -0.988139,
		-0.994699, -0.091950, -0.046036,
		-0.097775, 0.984366, 0.146503,
		32.880699, 27.170675, 45.492367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391071, 26.750837, 44.921474>,  <32.949139, 26.481619, 45.389816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391071, 26.750837, 44.921474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607277, 27.071104, 45.024841>,  <32.737000, 27.263264, 45.086861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607277, 27.071104, 45.024841>,  <32.391071, 26.750837, 44.921474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607277, 27.071104, 45.024841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150248, 0.394071, -0.906716,
		-0.827813, 0.451263, 0.333298,
		0.540511, 0.800668, 0.258416,
		32.769428, 27.311304, 45.102367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958094, 27.317234, 44.600513>,  <32.391071, 26.750837, 44.921474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958094, 27.317234, 44.600513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303089, 27.496389, 44.694752>,  <32.510086, 27.603882, 44.751297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303089, 27.496389, 44.694752>,  <31.958094, 27.317234, 44.600513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303089, 27.496389, 44.694752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059663, 0.552287, -0.831516,
		-0.502545, 0.703118, 0.503064,
		0.862490, 0.447888, 0.235599,
		32.561836, 27.630756, 44.765430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910351, 28.040232, 44.508617>,  <31.958094, 27.317234, 44.600513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910351, 28.040232, 44.508617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291275, 27.940063, 44.438889>,  <32.519829, 27.879963, 44.397049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291275, 27.940063, 44.438889>,  <31.910351, 28.040232, 44.508617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291275, 27.940063, 44.438889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039759, 0.464608, -0.884624,
		0.302522, 0.849370, 0.432495,
		0.952313, -0.250422, -0.174324,
		32.576969, 27.864937, 44.386593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228661, 28.686869, 44.290638>,  <31.910351, 28.040232, 44.508617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228661, 28.686869, 44.290638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445095, 28.377104, 44.159485>,  <32.574955, 28.191244, 44.080791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445095, 28.377104, 44.159485>,  <32.228661, 28.686869, 44.290638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445095, 28.377104, 44.159485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093994, 0.443137, -0.891513,
		0.835697, 0.451567, 0.312566,
		0.541088, -0.774414, -0.327883,
		32.607422, 28.144779, 44.061119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947994, 28.944668, 44.053394>,  <32.228661, 28.686869, 44.290638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947994, 28.944668, 44.053394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834526, 28.615442, 43.856583>,  <32.766445, 28.417906, 43.738495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834526, 28.615442, 43.856583>,  <32.947994, 28.944668, 44.053394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834526, 28.615442, 43.856583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039105, 0.502753, -0.863545,
		0.958124, -0.264204, -0.110430,
		-0.283671, -0.823065, -0.492031,
		32.749424, 28.368523, 43.708973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331444, 28.925631, 43.463181>,  <32.947994, 28.944668, 44.053394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331444, 28.925631, 43.463181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004059, 28.703072, 43.405861>,  <32.807629, 28.569536, 43.371468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004059, 28.703072, 43.405861>,  <33.331444, 28.925631, 43.463181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004059, 28.703072, 43.405861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195444, 0.504155, -0.841207,
		0.540294, -0.660490, -0.521378,
		-0.818465, -0.556399, -0.143303,
		32.758518, 28.536152, 43.362869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294025, 28.829878, 42.747307>,  <33.331444, 28.925631, 43.463181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294025, 28.829878, 42.747307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917824, 28.753063, 42.859425>,  <32.692101, 28.706974, 42.926697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917824, 28.753063, 42.859425>,  <33.294025, 28.829878, 42.747307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917824, 28.753063, 42.859425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331948, 0.343336, -0.878596,
		0.072488, -0.919371, -0.386656,
		-0.940509, -0.192037, 0.280296,
		32.635670, 28.695452, 42.943512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877144, 28.584332, 42.093727>,  <33.294025, 28.829878, 42.747307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877144, 28.584332, 42.093727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598152, 28.704666, 42.353889>,  <32.430759, 28.776867, 42.509987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598152, 28.704666, 42.353889>,  <32.877144, 28.584332, 42.093727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598152, 28.704666, 42.353889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585913, 0.283167, -0.759291,
		-0.412595, -0.910667, -0.021239,
		-0.697476, 0.300835, 0.650405,
		32.388908, 28.794916, 42.549011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309074, 28.448257, 41.733021>,  <32.877144, 28.584332, 42.093727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309074, 28.448257, 41.733021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165073, 28.681742, 42.024139>,  <32.078674, 28.821833, 42.198811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165073, 28.681742, 42.024139>,  <32.309074, 28.448257, 41.733021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165073, 28.681742, 42.024139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493764, 0.542679, -0.679482,
		-0.791578, -0.603973, 0.092850,
		-0.360001, 0.583709, 0.727793,
		32.057072, 28.856853, 42.242477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621973, 28.519283, 41.571301>,  <32.309074, 28.448257, 41.733021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621973, 28.519283, 41.571301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694304, 28.824310, 41.819748>,  <31.737701, 29.007326, 41.968819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694304, 28.824310, 41.819748>,  <31.621973, 28.519283, 41.571301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694304, 28.824310, 41.819748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541762, 0.604314, -0.584208,
		-0.820850, -0.230858, 0.522407,
		0.180828, 0.762568, 0.621121,
		31.748552, 29.053082, 42.006084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923985, 28.817398, 41.776443>,  <31.621973, 28.519283, 41.571301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923985, 28.817398, 41.776443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210972, 29.093779, 41.811821>,  <31.383163, 29.259607, 41.833046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210972, 29.093779, 41.811821>,  <30.923985, 28.817398, 41.776443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210972, 29.093779, 41.811821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556590, 0.644976, -0.523655,
		-0.418863, 0.326481, 0.847327,
		0.717469, 0.690953, 0.088441,
		31.426212, 29.301065, 41.838352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628136, 29.450275, 41.629631>,  <30.923985, 28.817398, 41.776443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628136, 29.450275, 41.629631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002815, 29.588167, 41.605095>,  <31.227623, 29.670902, 41.590374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002815, 29.588167, 41.605095>,  <30.628136, 29.450275, 41.629631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002815, 29.588167, 41.605095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331509, 0.816750, -0.472251,
		-0.112698, 0.462691, 0.879327,
		0.936696, 0.344727, -0.061340,
		31.283825, 29.691586, 41.586693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606581, 30.087156, 41.921783>,  <30.628136, 29.450275, 41.629631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606581, 30.087156, 41.921783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905796, 30.051331, 41.658749>,  <31.085325, 30.029835, 41.500927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905796, 30.051331, 41.658749>,  <30.606581, 30.087156, 41.921783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905796, 30.051331, 41.658749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380137, 0.754377, -0.535175,
		0.543998, 0.650303, 0.530257,
		0.748039, -0.089563, -0.657583,
		31.130207, 30.024462, 41.461475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812410, 30.692965, 41.832916>,  <30.606581, 30.087156, 41.921783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812410, 30.692965, 41.832916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960592, 30.515415, 41.506546>,  <31.049501, 30.408886, 41.310722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960592, 30.515415, 41.506546>,  <30.812410, 30.692965, 41.832916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960592, 30.515415, 41.506546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099675, 0.854359, -0.510034,
		0.923487, 0.270272, 0.272258,
		0.370454, -0.443872, -0.815930,
		31.071728, 30.382254, 41.261768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200272, 31.194851, 41.513592>,  <30.812410, 30.692965, 41.832916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200272, 31.194851, 41.513592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146126, 30.932575, 41.216473>,  <31.113638, 30.775209, 41.038200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146126, 30.932575, 41.216473>,  <31.200272, 31.194851, 41.513592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146126, 30.932575, 41.216473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033771, 0.752316, -0.657936,
		0.990220, -0.063975, -0.123979,
		-0.135363, -0.655689, -0.742798,
		31.105516, 30.735868, 40.993633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594093, 31.468145, 40.990570>,  <31.200272, 31.194851, 41.513592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594093, 31.468145, 40.990570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331497, 31.217646, 40.822365>,  <31.173939, 31.067347, 40.721439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331497, 31.217646, 40.822365>,  <31.594093, 31.468145, 40.990570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331497, 31.217646, 40.822365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215356, 0.689864, -0.691165,
		0.722942, -0.363180, -0.587754,
		-0.656488, -0.626249, -0.420519,
		31.134550, 31.029772, 40.696209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817711, 31.322819, 40.247768>,  <31.594093, 31.468145, 40.990570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817711, 31.322819, 40.247768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428818, 31.229683, 40.238411>,  <31.195482, 31.173801, 40.232796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428818, 31.229683, 40.238411>,  <31.817711, 31.322819, 40.247768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428818, 31.229683, 40.238411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121546, 0.587874, -0.799769,
		0.199972, -0.774719, -0.599852,
		-0.972233, -0.232841, -0.023394,
		31.137148, 31.159830, 40.231392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717010, 31.075031, 39.616863>,  <31.817711, 31.322819, 40.247768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717010, 31.075031, 39.616863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343767, 31.164976, 39.729111>,  <31.119822, 31.218943, 39.796459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343767, 31.164976, 39.729111>,  <31.717010, 31.075031, 39.616863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343767, 31.164976, 39.729111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179601, 0.384640, -0.905426,
		-0.311532, -0.895259, -0.318525,
		-0.933109, 0.224862, 0.280617,
		31.063835, 31.232435, 39.813297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382650, 30.990501, 39.005867>,  <31.717010, 31.075031, 39.616863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382650, 30.990501, 39.005867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127504, 31.184275, 39.245350>,  <30.974417, 31.300539, 39.389038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127504, 31.184275, 39.245350>,  <31.382650, 30.990501, 39.005867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127504, 31.184275, 39.245350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425795, 0.425947, -0.798290,
		-0.641738, -0.764128, -0.065426,
		-0.637864, 0.484435, 0.598709,
		30.936146, 31.329605, 39.424961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709055, 30.879732, 38.751015>,  <31.382650, 30.990501, 39.005867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709055, 30.879732, 38.751015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698215, 31.221695, 38.958244>,  <30.691711, 31.426872, 39.082581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698215, 31.221695, 38.958244>,  <30.709055, 30.879732, 38.751015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698215, 31.221695, 38.958244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463190, 0.448532, -0.764378,
		-0.885845, -0.260678, 0.383831,
		-0.027096, 0.854907, 0.518074,
		30.690086, 31.478167, 39.113667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040970, 31.121300, 38.710464>,  <30.709055, 30.879732, 38.751015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040970, 31.121300, 38.710464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270695, 31.440264, 38.784550>,  <30.408529, 31.631641, 38.828999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270695, 31.440264, 38.784550>,  <30.040970, 31.121300, 38.710464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270695, 31.440264, 38.784550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392451, 0.466734, -0.792554,
		-0.718433, 0.382489, 0.580995,
		0.574313, 0.797409, 0.185209,
		30.442989, 31.679487, 38.840111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781677, 31.559179, 38.244209>,  <30.040970, 31.121300, 38.710464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781677, 31.559179, 38.244209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069971, 31.801762, 38.378525>,  <30.242947, 31.947311, 38.459114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069971, 31.801762, 38.378525>,  <29.781677, 31.559179, 38.244209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069971, 31.801762, 38.378525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091709, 0.563551, -0.820975,
		-0.687119, 0.560909, 0.461788,
		0.720734, 0.606457, 0.335786,
		30.286192, 31.983700, 38.479259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521631, 32.172791, 38.146103>,  <29.781677, 31.559179, 38.244209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521631, 32.172791, 38.146103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917961, 32.222595, 38.167133>,  <30.155758, 32.252480, 38.179752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917961, 32.222595, 38.167133>,  <29.521631, 32.172791, 38.146103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917961, 32.222595, 38.167133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012853, 0.474043, -0.880408,
		-0.134548, 0.871653, 0.471294,
		0.990824, 0.124515, 0.052578,
		30.215208, 32.259949, 38.182907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658415, 32.919373, 38.149746>,  <29.521631, 32.172791, 38.146103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658415, 32.919373, 38.149746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996176, 32.746304, 38.023392>,  <30.198832, 32.642464, 37.947578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996176, 32.746304, 38.023392>,  <29.658415, 32.919373, 38.149746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996176, 32.746304, 38.023392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057990, 0.512374, -0.856802,
		0.532565, 0.741803, 0.407558,
		0.844400, -0.432668, -0.315890,
		30.249496, 32.616505, 37.928623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981293, 33.531082, 37.794662>,  <29.658415, 32.919373, 38.149746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981293, 33.531082, 37.794662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195925, 33.207844, 37.697453>,  <30.324703, 33.013901, 37.639126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195925, 33.207844, 37.697453>,  <29.981293, 33.531082, 37.794662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195925, 33.207844, 37.697453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258963, 0.431792, -0.863999,
		0.803133, 0.400668, 0.440957,
		0.536578, -0.808097, -0.243028,
		30.356897, 32.965416, 37.624542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646973, 33.772072, 37.520306>,  <29.981293, 33.531082, 37.794662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646973, 33.772072, 37.520306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539206, 33.415653, 37.374184>,  <30.474545, 33.201801, 37.286510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539206, 33.415653, 37.374184>,  <30.646973, 33.772072, 37.520306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539206, 33.415653, 37.374184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147800, 0.336578, -0.929984,
		0.951613, -0.304548, 0.041016,
		-0.269420, -0.891048, -0.365304,
		30.458380, 33.148338, 37.264591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116650, 33.663799, 36.983936>,  <30.646973, 33.772072, 37.520306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116650, 33.663799, 36.983936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785656, 33.452732, 36.907169>,  <30.587059, 33.326092, 36.861111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785656, 33.452732, 36.907169>,  <31.116650, 33.663799, 36.983936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785656, 33.452732, 36.907169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085604, 0.219240, -0.971908,
		0.554923, -0.820669, -0.136247,
		-0.827486, -0.527671, -0.191914,
		30.537411, 33.294430, 36.849594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247774, 33.528442, 36.306549>,  <31.116650, 33.663799, 36.983936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247774, 33.528442, 36.306549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896082, 33.348000, 36.367817>,  <30.685066, 33.239735, 36.404575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896082, 33.348000, 36.367817>,  <31.247774, 33.528442, 36.306549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896082, 33.348000, 36.367817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221532, 0.102517, -0.969749,
		0.421756, -0.886564, -0.190071,
		-0.879230, -0.451104, 0.153165,
		30.632313, 33.212669, 36.413765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731365, 32.987614, 36.217384>,  <31.247774, 33.528442, 36.306549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731365, 32.987614, 36.217384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053673, 32.988987, 35.980495>,  <32.247059, 32.989811, 35.838364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053673, 32.988987, 35.980495>,  <31.731365, 32.987614, 36.217384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053673, 32.988987, 35.980495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499126, -0.542169, 0.675963,
		-0.318761, -0.840262, -0.438578,
		0.805770, 0.003435, -0.592219,
		32.295403, 32.990017, 35.802830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928299, 32.262249, 36.193478>,  <31.731365, 32.987614, 36.217384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928299, 32.262249, 36.193478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246048, 32.485786, 36.098263>,  <32.436699, 32.619907, 36.041134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246048, 32.485786, 36.098263>,  <31.928299, 32.262249, 36.193478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246048, 32.485786, 36.098263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548710, -0.492092, 0.675843,
		0.260553, -0.667487, -0.697548,
		0.794374, 0.558844, -0.238040,
		32.484360, 32.653439, 36.026852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385162, 31.781126, 36.157433>,  <31.928299, 32.262249, 36.193478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385162, 31.781126, 36.157433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584740, 32.122932, 36.215206>,  <32.704487, 32.328014, 36.249870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584740, 32.122932, 36.215206>,  <32.385162, 31.781126, 36.157433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584740, 32.122932, 36.215206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518564, -0.427908, 0.740261,
		0.694370, -0.294446, -0.656621,
		0.498940, 0.854515, 0.144437,
		32.734421, 32.379288, 36.258537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064106, 31.543625, 36.353958>,  <32.385162, 31.781126, 36.157433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064106, 31.543625, 36.353958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038498, 31.910444, 36.511398>,  <33.023132, 32.130535, 36.605862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038498, 31.910444, 36.511398>,  <33.064106, 31.543625, 36.353958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038498, 31.910444, 36.511398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416658, -0.333825, 0.845551,
		0.906806, 0.218125, -0.360726,
		-0.064017, 0.917051, 0.393599,
		33.019295, 32.185558, 36.629478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804893, 31.702938, 36.664169>,  <33.064106, 31.543625, 36.353958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804893, 31.702938, 36.664169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513096, 31.926584, 36.821770>,  <33.338017, 32.060772, 36.916328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513096, 31.926584, 36.821770>,  <33.804893, 31.702938, 36.664169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513096, 31.926584, 36.821770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334656, -0.210621, 0.918501,
		0.596531, 0.801892, -0.033465,
		-0.729490, 0.559113, 0.394000,
		33.294250, 32.094318, 36.939968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033642, 32.187733, 37.124172>,  <33.804893, 31.702938, 36.664169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033642, 32.187733, 37.124172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655884, 32.158676, 37.252453>,  <33.429230, 32.141243, 37.329422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655884, 32.158676, 37.252453>,  <34.033642, 32.187733, 37.124172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655884, 32.158676, 37.252453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328786, -0.193773, 0.924311,
		-0.005003, 0.978353, 0.206882,
		-0.944391, -0.072645, 0.320699,
		33.372566, 32.136883, 37.348663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097954, 32.294918, 37.838776>,  <34.033642, 32.187733, 37.124172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097954, 32.294918, 37.838776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738781, 32.123096, 37.800396>,  <33.523277, 32.020004, 37.777367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738781, 32.123096, 37.800396>,  <34.097954, 32.294918, 37.838776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738781, 32.123096, 37.800396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108150, -0.426646, 0.897929,
		-0.426646, 0.795899, 0.429555,
		-0.897929, -0.429555, -0.095951,
		33.469402, 31.994230, 37.771610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922791, 32.392212, 38.528343>,  <34.097954, 32.294918, 37.838776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922791, 32.392212, 38.528343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696068, 32.114437, 38.351032>,  <33.560036, 31.947773, 38.244644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696068, 32.114437, 38.351032>,  <33.922791, 32.392212, 38.528343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696068, 32.114437, 38.351032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001889, -0.536959, 0.843607,
		-0.823851, 0.478997, 0.303038,
		-0.566804, -0.694433, -0.443279,
		33.526028, 31.906107, 38.218048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401260, 32.207191, 39.029030>,  <33.922791, 32.392212, 38.528343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401260, 32.207191, 39.029030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402912, 31.894785, 38.779232>,  <33.403904, 31.707340, 38.629353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402912, 31.894785, 38.779232>,  <33.401260, 32.207191, 39.029030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402912, 31.894785, 38.779232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063480, -0.623037, 0.779612,
		-0.997975, -0.042861, 0.047008,
		0.004128, -0.781017, -0.624496,
		33.404152, 31.660480, 38.591885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014359, 31.611017, 39.363434>,  <33.401260, 32.207191, 39.029030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014359, 31.611017, 39.363434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231453, 31.410868, 39.093601>,  <33.361710, 31.290777, 38.931702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231453, 31.410868, 39.093601>,  <33.014359, 31.611017, 39.363434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231453, 31.410868, 39.093601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088654, -0.764551, 0.638438,
		-0.835212, -0.406308, -0.370588,
		0.542736, -0.500377, -0.674582,
		33.394276, 31.260756, 38.891228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748554, 30.912361, 39.289886>,  <33.014359, 31.611017, 39.363434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748554, 30.912361, 39.289886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123764, 30.873812, 39.156723>,  <33.348888, 30.850681, 39.076824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123764, 30.873812, 39.156723>,  <32.748554, 30.912361, 39.289886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123764, 30.873812, 39.156723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115534, -0.818663, 0.562533,
		-0.326754, -0.566130, -0.756788,
		0.938021, -0.096375, -0.332909,
		33.405170, 30.844898, 39.056850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993317, 30.180595, 39.319241>,  <32.748554, 30.912361, 39.289886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993317, 30.180595, 39.319241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339500, 30.378464, 39.350929>,  <33.547211, 30.497185, 39.369942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339500, 30.378464, 39.350929>,  <32.993317, 30.180595, 39.319241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339500, 30.378464, 39.350929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319760, -0.667187, 0.672767,
		0.385654, -0.556922, -0.735601,
		0.865462, 0.494671, 0.079222,
		33.599140, 30.526865, 39.374695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459873, 29.714417, 39.303097>,  <32.993317, 30.180595, 39.319241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459873, 29.714417, 39.303097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640652, 30.022079, 39.483826>,  <33.749119, 30.206676, 39.592262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640652, 30.022079, 39.483826>,  <33.459873, 29.714417, 39.303097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640652, 30.022079, 39.483826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250865, -0.595652, 0.763063,
		0.856045, -0.231514, -0.462156,
		0.451943, 0.769155, 0.451827,
		33.776234, 30.252827, 39.619373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120255, 29.426439, 39.537159>,  <33.459873, 29.714417, 39.303097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120255, 29.426439, 39.537159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086685, 29.761028, 39.753777>,  <34.066544, 29.961782, 39.883747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086685, 29.761028, 39.753777>,  <34.120255, 29.426439, 39.537159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086685, 29.761028, 39.753777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316103, -0.493044, 0.810547,
		0.945005, 0.239212, -0.223031,
		-0.083928, 0.836472, 0.541545,
		34.061508, 30.011971, 39.916241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760708, 29.548174, 39.882435>,  <34.120255, 29.426439, 39.537159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760708, 29.548174, 39.882435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474682, 29.705612, 40.113525>,  <34.303066, 29.800076, 40.252182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474682, 29.705612, 40.113525>,  <34.760708, 29.548174, 39.882435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474682, 29.705612, 40.113525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332592, -0.535361, 0.776383,
		0.614874, 0.747310, 0.251910,
		-0.715062, 0.393594, 0.577729,
		34.260162, 29.823690, 40.286842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112537, 29.443665, 40.530899>,  <34.760708, 29.548174, 39.882435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112537, 29.443665, 40.530899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745235, 29.572432, 40.623138>,  <34.524853, 29.649693, 40.678482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745235, 29.572432, 40.623138>,  <35.112537, 29.443665, 40.530899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745235, 29.572432, 40.623138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136145, -0.290173, 0.947240,
		0.371846, 0.901204, 0.222626,
		-0.918257, 0.321918, 0.230594,
		34.469757, 29.669006, 40.692318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116840, 30.079916, 41.016357>,  <35.112537, 29.443665, 40.530899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116840, 30.079916, 41.016357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762650, 29.903217, 41.074028>,  <34.550133, 29.797199, 41.108631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762650, 29.903217, 41.074028>,  <35.116840, 30.079916, 41.016357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762650, 29.903217, 41.074028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289173, -0.280973, 0.915114,
		-0.363737, 0.852007, 0.376537,
		-0.885480, -0.441745, 0.144177,
		34.497005, 29.770695, 41.117283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836838, 30.266701, 41.669903>,  <35.116840, 30.079916, 41.016357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836838, 30.266701, 41.669903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624969, 29.936619, 41.591427>,  <34.497849, 29.738569, 41.544342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624969, 29.936619, 41.591427>,  <34.836838, 30.266701, 41.669903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624969, 29.936619, 41.591427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184535, -0.337871, 0.922925,
		-0.827887, 0.452641, 0.331239,
		-0.529669, -0.825203, -0.196191,
		34.466068, 29.689058, 41.532570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226173, 30.051838, 42.252720>,  <34.836838, 30.266701, 41.669903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226173, 30.051838, 42.252720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327389, 29.717033, 42.058655>,  <34.388119, 29.516151, 41.942215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327389, 29.717033, 42.058655>,  <34.226173, 30.051838, 42.252720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327389, 29.717033, 42.058655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104254, -0.474969, 0.873805,
		-0.961822, -0.271689, -0.032925,
		0.253042, -0.837012, -0.485160,
		34.403301, 29.465929, 41.913105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056915, 29.592134, 42.778664>,  <34.226173, 30.051838, 42.252720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056915, 29.592134, 42.778664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284637, 29.373400, 42.533108>,  <34.421272, 29.242159, 42.385773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284637, 29.373400, 42.533108>,  <34.056915, 29.592134, 42.778664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284637, 29.373400, 42.533108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362259, -0.503452, 0.784414,
		-0.738011, -0.668958, -0.088521,
		0.569305, -0.546838, -0.613889,
		34.455429, 29.209349, 42.348942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992462, 28.876587, 43.002758>,  <34.056915, 29.592134, 42.778664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992462, 28.876587, 43.002758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330318, 28.893526, 42.789295>,  <34.533031, 28.903690, 42.661217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330318, 28.893526, 42.789295>,  <33.992462, 28.876587, 43.002758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330318, 28.893526, 42.789295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507572, -0.380208, 0.773183,
		-0.170157, -0.923931, -0.342634,
		0.844640, 0.042349, -0.533657,
		34.583710, 28.906231, 42.629196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167744, 28.197998, 42.716835>,  <33.992462, 28.876587, 43.002758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167744, 28.197998, 42.716835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475037, 28.446518, 42.778549>,  <34.659412, 28.595629, 42.815578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475037, 28.446518, 42.778549>,  <34.167744, 28.197998, 42.716835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475037, 28.446518, 42.778549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357662, -0.616446, 0.701479,
		0.530935, -0.483719, -0.695790,
		0.768236, 0.621298, 0.154285,
		34.705505, 28.632908, 42.824833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902370, 27.792791, 42.771675>,  <34.167744, 28.197998, 42.716835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902370, 27.792791, 42.771675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902779, 28.148125, 42.955353>,  <34.903023, 28.361324, 43.065559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902779, 28.148125, 42.955353>,  <34.902370, 27.792791, 42.771675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902779, 28.148125, 42.955353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230685, -0.447021, 0.864267,
		0.973028, 0.105046, -0.205382,
		0.001022, 0.888334, 0.459196,
		34.903084, 28.414625, 43.093113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301395, 27.696836, 43.340702>,  <34.902370, 27.792791, 42.771675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301395, 27.696836, 43.340702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156460, 28.057945, 43.433407>,  <35.069500, 28.274611, 43.489029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156460, 28.057945, 43.433407>,  <35.301395, 27.696836, 43.340702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156460, 28.057945, 43.433407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089574, -0.213783, 0.972766,
		0.927733, 0.373228, -0.003403,
		-0.362336, 0.902772, 0.231765,
		35.047760, 28.328777, 43.502937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725826, 27.948559, 43.925259>,  <35.301395, 27.696836, 43.340702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725826, 27.948559, 43.925259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374973, 28.140499, 43.917526>,  <35.164459, 28.255663, 43.912888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374973, 28.140499, 43.917526>,  <35.725826, 27.948559, 43.925259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374973, 28.140499, 43.917526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080267, -0.106799, 0.991035,
		0.473486, 0.870825, 0.132194,
		-0.877136, 0.479852, -0.019331,
		35.111832, 28.284454, 43.911728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792011, 28.585461, 44.379230>,  <35.725826, 27.948559, 43.925259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792011, 28.585461, 44.379230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409660, 28.468147, 44.372559>,  <35.180248, 28.397758, 44.368553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409660, 28.468147, 44.372559>,  <35.792011, 28.585461, 44.379230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409660, 28.468147, 44.372559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015070, -0.007755, 0.999856,
		-0.293372, 0.955994, 0.002993,
		-0.955880, -0.293285, -0.016682,
		35.122898, 28.380161, 44.367554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587814, 28.737139, 44.969688>,  <35.792011, 28.585461, 44.379230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587814, 28.737139, 44.969688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252182, 28.529427, 44.904827>,  <35.050804, 28.404799, 44.865910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252182, 28.529427, 44.904827>,  <35.587814, 28.737139, 44.969688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252182, 28.529427, 44.904827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267776, 0.134781, 0.954007,
		-0.473544, 0.843907, -0.252143,
		-0.839078, -0.519283, -0.162153,
		35.000458, 28.373642, 44.856182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104744, 29.049559, 45.364166>,  <35.587814, 28.737139, 44.969688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104744, 29.049559, 45.364166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948242, 28.688507, 45.292408>,  <34.854343, 28.471876, 45.249355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948242, 28.688507, 45.292408>,  <35.104744, 29.049559, 45.364166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948242, 28.688507, 45.292408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324335, -0.047182, 0.944765,
		-0.861238, 0.427822, -0.274295,
		-0.391250, -0.902631, -0.179392,
		34.830868, 28.417717, 45.238590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465935, 29.139381, 45.651123>,  <35.104744, 29.049559, 45.364166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465935, 29.139381, 45.651123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597965, 28.762453, 45.628914>,  <34.677185, 28.536297, 45.615589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597965, 28.762453, 45.628914>,  <34.465935, 29.139381, 45.651123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597965, 28.762453, 45.628914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155069, -0.112152, 0.981517,
		-0.931130, -0.315366, -0.183143,
		0.330077, -0.942319, -0.055524,
		34.696987, 28.479757, 45.612255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066566, 28.833906, 46.019039>,  <34.465935, 29.139381, 45.651123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066566, 28.833906, 46.019039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366230, 28.569096, 46.010178>,  <34.546028, 28.410210, 46.004860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366230, 28.569096, 46.010178>,  <34.066566, 28.833906, 46.019039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366230, 28.569096, 46.010178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070296, 0.046204, 0.996456,
		-0.658654, -0.748057, 0.081151,
		0.749155, -0.662024, -0.022153,
		34.590977, 28.370489, 46.003532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916344, 28.260645, 46.408512>,  <34.066566, 28.833906, 46.019039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916344, 28.260645, 46.408512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312164, 28.203625, 46.417206>,  <34.549656, 28.169413, 46.422424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312164, 28.203625, 46.417206>,  <33.916344, 28.260645, 46.408512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312164, 28.203625, 46.417206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042268, -0.142612, 0.988876,
		-0.137811, -0.979467, -0.147146,
		0.989556, -0.142498, 0.021747,
		34.609028, 28.160860, 46.423729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091717, 27.521687, 46.752144>,  <33.916344, 28.260645, 46.408512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091717, 27.521687, 46.752144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438084, 27.720015, 46.778515>,  <34.645905, 27.839010, 46.794338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438084, 27.720015, 46.778515>,  <34.091717, 27.521687, 46.752144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438084, 27.720015, 46.778515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095508, 0.034521, 0.994830,
		0.490979, -0.867740, 0.077247,
		0.865921, 0.495818, 0.065928,
		34.697861, 27.868759, 46.798294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478115, 27.188047, 47.186939>,  <34.091717, 27.521687, 46.752144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478115, 27.188047, 47.186939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648643, 27.549875, 47.187809>,  <34.750961, 27.766972, 47.188332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648643, 27.549875, 47.187809>,  <34.478115, 27.188047, 47.186939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648643, 27.549875, 47.187809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054335, -0.028007, 0.998130,
		0.902939, -0.425404, -0.061089,
		0.426319, 0.904570, 0.002174,
		34.776539, 27.821247, 47.188461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022381, 27.196634, 47.742657>,  <34.478115, 27.188047, 47.186939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022381, 27.196634, 47.742657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962196, 27.588810, 47.691902>,  <34.926086, 27.824116, 47.661449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962196, 27.588810, 47.691902>,  <35.022381, 27.196634, 47.742657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962196, 27.588810, 47.691902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250995, 0.162029, 0.954331,
		0.956223, 0.111744, -0.270464,
		-0.150464, 0.980439, -0.126889,
		34.917057, 27.882942, 47.653835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676655, 27.555820, 48.028694>,  <35.022381, 27.196634, 47.742657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676655, 27.555820, 48.028694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381828, 27.825478, 48.009666>,  <35.204933, 27.987272, 47.998249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381828, 27.825478, 48.009666>,  <35.676655, 27.555820, 48.028694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381828, 27.825478, 48.009666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095562, 0.173645, 0.980161,
		0.669030, 0.717898, -0.192410,
		-0.737066, 0.674144, -0.047570,
		35.160709, 28.027721, 47.995396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847595, 28.208445, 48.386719>,  <35.676655, 27.555820, 48.028694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847595, 28.208445, 48.386719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447826, 28.203217, 48.374161>,  <35.207966, 28.200079, 48.366627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447826, 28.203217, 48.374161>,  <35.847595, 28.208445, 48.386719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447826, 28.203217, 48.374161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032875, 0.135330, 0.990255,
		-0.008696, 0.990714, -0.135682,
		-0.999422, -0.013072, -0.031393,
		35.147999, 28.199295, 48.364742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604309, 28.862276, 48.718861>,  <35.847595, 28.208445, 48.386719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604309, 28.862276, 48.718861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286060, 28.620205, 48.729778>,  <35.095112, 28.474962, 48.736328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286060, 28.620205, 48.729778>,  <35.604309, 28.862276, 48.718861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286060, 28.620205, 48.729778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159087, 0.252202, 0.954508,
		-0.584532, 0.755085, -0.296933,
		-0.795622, -0.605179, 0.027296,
		35.047375, 28.438652, 48.737968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008869, 29.219345, 49.072605>,  <35.604309, 28.862276, 48.718861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008869, 29.219345, 49.072605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897945, 28.837189, 49.113247>,  <34.831390, 28.607895, 49.137630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897945, 28.837189, 49.113247>,  <35.008869, 29.219345, 49.072605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897945, 28.837189, 49.113247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215084, 0.164801, 0.962590,
		-0.936396, 0.245084, -0.251191,
		-0.277312, -0.955393, 0.101605,
		34.814751, 28.550571, 49.143730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665108, 29.690756, 49.714211>,  <35.008869, 29.219345, 49.072605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665108, 29.690756, 49.714211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992867, 29.904234, 49.797890>,  <35.189522, 30.032320, 49.848099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992867, 29.904234, 49.797890>,  <34.665108, 29.690756, 49.714211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992867, 29.904234, 49.797890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060074, 0.442891, -0.894561,
		-0.570075, 0.720429, 0.394963,
		0.819393, 0.533694, 0.209202,
		35.238686, 30.064342, 49.860649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465050, 30.323626, 49.648144>,  <34.665108, 29.690756, 49.714211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465050, 30.323626, 49.648144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862976, 30.320267, 49.607594>,  <35.101730, 30.318251, 49.583263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862976, 30.320267, 49.607594>,  <34.465050, 30.323626, 49.648144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862976, 30.320267, 49.607594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086573, 0.453346, -0.887120,
		0.053406, 0.891295, 0.450267,
		0.994813, -0.008396, -0.101374,
		35.161419, 30.317747, 49.577183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518578, 30.731266, 49.190037>,  <34.465050, 30.323626, 49.648144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518578, 30.731266, 49.190037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899338, 30.608698, 49.190147>,  <35.127792, 30.535158, 49.190212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899338, 30.608698, 49.190147>,  <34.518578, 30.731266, 49.190037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899338, 30.608698, 49.190147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121378, 0.376237, -0.918539,
		0.281354, 0.874388, 0.395331,
		0.951897, -0.306419, 0.000276,
		35.184906, 30.516771, 49.190231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959049, 31.290697, 49.044228>,  <34.518578, 30.731266, 49.190037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959049, 31.290697, 49.044228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150192, 30.960953, 48.922848>,  <35.264877, 30.763105, 48.850021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150192, 30.960953, 48.922848>,  <34.959049, 31.290697, 49.044228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150192, 30.960953, 48.922848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076793, 0.304917, -0.949278,
		0.875074, 0.476923, 0.082402,
		0.477858, -0.824360, -0.303449,
		35.293549, 30.713644, 48.831814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551807, 31.514156, 48.637115>,  <34.959049, 31.290697, 49.044228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551807, 31.514156, 48.637115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454124, 31.139740, 48.535770>,  <35.395515, 30.915091, 48.474964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454124, 31.139740, 48.535770>,  <35.551807, 31.514156, 48.637115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454124, 31.139740, 48.535770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137292, 0.292011, -0.946510,
		0.959956, -0.196357, -0.199821,
		-0.244203, -0.936041, -0.253360,
		35.380863, 30.858927, 48.459763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962162, 31.408558, 48.041805>,  <35.551807, 31.514156, 48.637115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962162, 31.408558, 48.041805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681076, 31.126020, 48.007683>,  <35.512424, 30.956499, 47.987209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681076, 31.126020, 48.007683>,  <35.962162, 31.408558, 48.041805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681076, 31.126020, 48.007683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155798, 0.269761, -0.950240,
		0.694207, -0.654454, -0.299611,
		-0.702711, -0.706343, -0.085307,
		35.470264, 30.914118, 47.982090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100811, 31.008533, 47.418736>,  <35.962162, 31.408558, 48.041805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100811, 31.008533, 47.418736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715641, 30.952559, 47.510986>,  <35.484539, 30.918974, 47.566338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715641, 30.952559, 47.510986>,  <36.100811, 31.008533, 47.418736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715641, 30.952559, 47.510986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251000, 0.151530, -0.956053,
		0.098840, -0.978497, -0.181037,
		-0.962928, -0.139937, 0.230625,
		35.426762, 30.910578, 47.580173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895081, 30.604406, 46.866673>,  <36.100811, 31.008533, 47.418736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895081, 30.604406, 46.866673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552925, 30.744772, 47.019077>,  <35.347633, 30.828991, 47.110519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552925, 30.744772, 47.019077>,  <35.895081, 30.604406, 46.866673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552925, 30.744772, 47.019077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400471, 0.018519, -0.916122,
		-0.328537, -0.936224, 0.124690,
		-0.855387, 0.350915, 0.381015,
		35.296310, 30.850046, 47.133381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431087, 30.168280, 46.517914>,  <35.895081, 30.604406, 46.866673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431087, 30.168280, 46.517914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264778, 30.515184, 46.627449>,  <35.164993, 30.723328, 46.693169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264778, 30.515184, 46.627449>,  <35.431087, 30.168280, 46.517914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264778, 30.515184, 46.627449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442990, 0.069838, -0.893802,
		-0.794286, -0.492927, 0.355152,
		-0.415776, 0.867263, 0.273834,
		35.140045, 30.775364, 46.709599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786476, 30.079386, 46.235176>,  <35.431087, 30.168280, 46.517914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786476, 30.079386, 46.235176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819809, 30.474825, 46.285347>,  <34.839809, 30.712088, 46.315449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819809, 30.474825, 46.285347>,  <34.786476, 30.079386, 46.235176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819809, 30.474825, 46.285347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552814, 0.150586, -0.819585,
		-0.829127, -0.001040, 0.559059,
		0.083335, 0.988596, 0.125430,
		34.844810, 30.771404, 46.322975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181992, 30.345428, 45.843693>,  <34.786476, 30.079386, 46.235176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181992, 30.345428, 45.843693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402821, 30.672659, 45.908150>,  <34.535316, 30.868998, 45.946823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402821, 30.672659, 45.908150>,  <34.181992, 30.345428, 45.843693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402821, 30.672659, 45.908150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529775, 0.493403, -0.689849,
		-0.643859, 0.295475, 0.705790,
		0.552072, 0.818075, 0.161147,
		34.568443, 30.918081, 45.956493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750214, 30.938126, 45.793121>,  <34.181992, 30.345428, 45.843693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750214, 30.938126, 45.793121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120625, 31.075138, 45.729683>,  <34.342869, 31.157345, 45.691620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120625, 31.075138, 45.729683>,  <33.750214, 30.938126, 45.793121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120625, 31.075138, 45.729683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341652, 0.581950, -0.737976,
		-0.160483, 0.737568, 0.655926,
		0.926023, 0.342531, -0.158599,
		34.398430, 31.177898, 45.682102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601486, 31.583870, 45.535545>,  <33.750214, 30.938126, 45.793121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601486, 31.583870, 45.535545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981255, 31.541569, 45.417282>,  <34.209114, 31.516188, 45.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981255, 31.541569, 45.417282>,  <33.601486, 31.583870, 45.535545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981255, 31.541569, 45.417282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166035, 0.630111, -0.758546,
		0.266517, 0.769270, 0.580683,
		0.949422, -0.105752, -0.295661,
		34.266083, 31.509844, 45.328583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909782, 32.283318, 45.405575>,  <33.601486, 31.583870, 45.535545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909782, 32.283318, 45.405575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145130, 32.035957, 45.197189>,  <34.286339, 31.887541, 45.072159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145130, 32.035957, 45.197189>,  <33.909782, 32.283318, 45.405575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145130, 32.035957, 45.197189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038612, 0.665038, -0.745810,
		0.807670, 0.418696, 0.415166,
		0.588369, -0.618399, -0.520965,
		34.321640, 31.850437, 45.040901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221775, 32.789085, 44.858696>,  <33.909782, 32.283318, 45.405575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221775, 32.789085, 44.858696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303368, 32.419022, 44.730652>,  <34.352322, 32.196983, 44.653828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303368, 32.419022, 44.730652>,  <34.221775, 32.789085, 44.858696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303368, 32.419022, 44.730652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047120, 0.335883, -0.940725,
		0.977841, 0.176804, 0.112106,
		0.203978, -0.925161, -0.320109,
		34.364559, 32.141472, 44.634621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733162, 32.745430, 44.288124>,  <34.221775, 32.789085, 44.858696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733162, 32.745430, 44.288124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569233, 32.385960, 44.225597>,  <34.470875, 32.170277, 44.188084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569233, 32.385960, 44.225597>,  <34.733162, 32.745430, 44.288124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569233, 32.385960, 44.225597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185166, 0.085834, -0.978951,
		0.893173, -0.430142, 0.131226,
		-0.409825, -0.898671, -0.156313,
		34.446285, 32.116360, 44.178703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180111, 32.348343, 43.814045>,  <34.733162, 32.745430, 44.288124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180111, 32.348343, 43.814045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823792, 32.169197, 43.783329>,  <34.610001, 32.061710, 43.764900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823792, 32.169197, 43.783329>,  <35.180111, 32.348343, 43.814045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823792, 32.169197, 43.783329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049007, 0.073305, -0.996105,
		0.451747, -0.891092, -0.043352,
		-0.890799, -0.447862, -0.076785,
		34.556553, 32.034840, 43.760292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282692, 31.759686, 43.452900>,  <35.180111, 32.348343, 43.814045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282692, 31.759686, 43.452900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897388, 31.862272, 43.421028>,  <34.666206, 31.923824, 43.401905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897388, 31.862272, 43.421028>,  <35.282692, 31.759686, 43.452900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897388, 31.862272, 43.421028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071408, -0.041439, -0.996586,
		-0.258893, -0.965665, 0.021603,
		-0.963263, 0.256467, -0.079684,
		34.608410, 31.939213, 43.397121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996902, 31.245352, 43.067783>,  <35.282692, 31.759686, 43.452900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996902, 31.245352, 43.067783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784138, 31.580957, 43.021969>,  <34.656479, 31.782322, 42.994480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784138, 31.580957, 43.021969>,  <34.996902, 31.245352, 43.067783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784138, 31.580957, 43.021969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056288, -0.099930, -0.993401,
		-0.844925, -0.534851, 0.005927,
		-0.531914, 0.839016, -0.114539,
		34.624565, 31.832663, 42.987606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582222, 31.092596, 42.466881>,  <34.996902, 31.245352, 43.067783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582222, 31.092596, 42.466881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575527, 31.490213, 42.509956>,  <34.571510, 31.728785, 42.535801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575527, 31.490213, 42.509956>,  <34.582222, 31.092596, 42.466881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575527, 31.490213, 42.509956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010792, 0.107516, -0.994145,
		-0.999802, -0.017798, 0.008929,
		-0.016734, 0.994044, 0.107686,
		34.570507, 31.788427, 42.542263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201107, 31.304321, 41.922440>,  <34.582222, 31.092596, 42.466881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201107, 31.304321, 41.922440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390228, 31.637196, 42.038322>,  <34.503700, 31.836920, 42.107853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390228, 31.637196, 42.038322>,  <34.201107, 31.304321, 41.922440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390228, 31.637196, 42.038322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083838, 0.284800, -0.954914,
		-0.877172, 0.475772, 0.064884,
		0.472800, 0.832184, 0.289706,
		34.532070, 31.886850, 42.125233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858280, 31.817095, 41.521214>,  <34.201107, 31.304321, 41.922440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858280, 31.817095, 41.521214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217369, 31.951645, 41.635017>,  <34.432823, 32.032375, 41.703300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217369, 31.951645, 41.635017>,  <33.858280, 31.817095, 41.521214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217369, 31.951645, 41.635017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261919, 0.111764, -0.958596,
		-0.354247, 0.935072, 0.012230,
		0.897723, 0.336377, 0.284505,
		34.486687, 32.052559, 41.720367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031536, 32.399452, 41.008965>,  <33.858280, 31.817095, 41.521214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031536, 32.399452, 41.008965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379784, 32.323017, 41.190292>,  <34.588734, 32.277157, 41.299091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379784, 32.323017, 41.190292>,  <34.031536, 32.399452, 41.008965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379784, 32.323017, 41.190292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481956, 0.146492, -0.863862,
		0.098669, 0.970579, 0.219637,
		0.870622, -0.191092, 0.453323,
		34.640968, 32.265690, 41.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530495, 32.822231, 40.667664>,  <34.031536, 32.399452, 41.008965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530495, 32.822231, 40.667664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770264, 32.563175, 40.855812>,  <34.914124, 32.407742, 40.968700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770264, 32.563175, 40.855812>,  <34.530495, 32.822231, 40.667664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770264, 32.563175, 40.855812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589942, -0.039711, -0.806469,
		0.540983, 0.760908, 0.358268,
		0.599422, -0.647643, 0.470374,
		34.950089, 32.368881, 40.996925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154621, 33.103107, 40.889664>,  <34.530495, 32.822231, 40.667664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154621, 33.103107, 40.889664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224232, 32.710449, 40.858475>,  <35.265999, 32.474854, 40.839760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224232, 32.710449, 40.858475>,  <35.154621, 33.103107, 40.889664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224232, 32.710449, 40.858475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538254, 0.161127, -0.827237,
		0.824620, 0.101992, 0.556417,
		0.174025, -0.981649, -0.077972,
		35.276440, 32.415955, 40.835083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905502, 33.053982, 40.723431>,  <35.154621, 33.103107, 40.889664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905502, 33.053982, 40.723431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724892, 32.710495, 40.626495>,  <35.616528, 32.504402, 40.568336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724892, 32.710495, 40.626495>,  <35.905502, 33.053982, 40.723431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724892, 32.710495, 40.626495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451682, 0.014246, -0.892065,
		0.769487, -0.512247, 0.381436,
		-0.451523, -0.858720, -0.242334,
		35.589436, 32.452877, 40.553795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508369, 32.784325, 40.376583>,  <35.905502, 33.053982, 40.723431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508369, 32.784325, 40.376583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202854, 32.555599, 40.256813>,  <36.019543, 32.418365, 40.184952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202854, 32.555599, 40.256813>,  <36.508369, 32.784325, 40.376583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202854, 32.555599, 40.256813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433325, -0.110436, -0.894446,
		0.478385, -0.812920, 0.332129,
		-0.763791, -0.571809, -0.299428,
		35.973717, 32.384056, 40.166985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742401, 32.136406, 40.133900>,  <36.508369, 32.784325, 40.376583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742401, 32.136406, 40.133900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386395, 32.196350, 39.961662>,  <36.172791, 32.232319, 39.858318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386395, 32.196350, 39.961662>,  <36.742401, 32.136406, 40.133900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386395, 32.196350, 39.961662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448613, 0.119316, -0.885725,
		-0.081363, -0.981481, -0.173425,
		-0.890015, 0.149866, -0.430597,
		36.119389, 32.241310, 39.832481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708992, 31.740545, 39.599487>,  <36.742401, 32.136406, 40.133900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708992, 31.740545, 39.599487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433285, 32.013496, 39.502106>,  <36.267860, 32.177265, 39.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433285, 32.013496, 39.502106>,  <36.708992, 31.740545, 39.599487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433285, 32.013496, 39.502106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478683, 0.176680, -0.860027,
		-0.543848, -0.709329, -0.448422,
		-0.689269, 0.682376, -0.243456,
		36.226505, 32.218208, 39.429070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722614, 31.753929, 38.906982>,  <36.708992, 31.740545, 39.599487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722614, 31.753929, 38.906982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531380, 32.096718, 38.983959>,  <36.416637, 32.302391, 39.030144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531380, 32.096718, 38.983959>,  <36.722614, 31.753929, 38.906982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531380, 32.096718, 38.983959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388627, 0.402887, -0.828644,
		-0.787655, -0.321378, -0.525658,
		-0.478089, 0.856970, 0.192439,
		36.387955, 32.353809, 39.041691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474884, 32.057426, 38.193607>,  <36.722614, 31.753929, 38.906982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474884, 32.057426, 38.193607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496082, 32.352951, 38.462334>,  <36.508801, 32.530266, 38.623569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496082, 32.352951, 38.462334>,  <36.474884, 32.057426, 38.193607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496082, 32.352951, 38.462334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641650, 0.490307, -0.589817,
		-0.765165, 0.462331, -0.448077,
		0.052995, 0.738816, 0.671820,
		36.511982, 32.574596, 38.663879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471714, 32.742096, 37.756165>,  <36.474884, 32.057426, 38.193607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471714, 32.742096, 37.756165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560318, 32.883572, 38.119667>,  <36.613480, 32.968456, 38.337769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560318, 32.883572, 38.119667>,  <36.471714, 32.742096, 37.756165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560318, 32.883572, 38.119667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600941, 0.684412, -0.412856,
		-0.767985, 0.637562, -0.060938,
		0.221514, 0.353688, 0.908755,
		36.626774, 32.989677, 38.392292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420021, 33.447411, 37.700066>,  <36.471714, 32.742096, 37.756165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420021, 33.447411, 37.700066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622486, 33.398212, 38.041515>,  <36.743965, 33.368694, 38.246384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622486, 33.398212, 38.041515>,  <36.420021, 33.447411, 37.700066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622486, 33.398212, 38.041515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731756, 0.585079, -0.349592,
		-0.456439, 0.801594, 0.386148,
		0.506158, -0.122999, 0.853625,
		36.774334, 33.361313, 38.297604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717659, 34.103443, 37.718010>,  <36.420021, 33.447411, 37.700066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717659, 34.103443, 37.718010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929600, 33.872833, 37.966808>,  <37.056767, 33.734467, 38.116085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929600, 33.872833, 37.966808>,  <36.717659, 34.103443, 37.718010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929600, 33.872833, 37.966808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795685, 0.591742, -0.129334,
		-0.293496, 0.563439, 0.772267,
		0.529855, -0.576522, 0.621994,
		37.088554, 33.699875, 38.153408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909115, 34.464924, 38.244205>,  <36.717659, 34.103443, 37.718010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909115, 34.464924, 38.244205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167652, 34.168510, 38.171425>,  <37.322773, 33.990662, 38.127758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167652, 34.168510, 38.171425>,  <36.909115, 34.464924, 38.244205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167652, 34.168510, 38.171425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754377, 0.656411, 0.006371,
		0.114714, -0.141378, 0.983287,
		0.646341, -0.741038, -0.181951,
		37.361553, 33.946198, 38.116840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426254, 34.774548, 38.488449>,  <36.909115, 34.464924, 38.244205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426254, 34.774548, 38.488449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589909, 34.469566, 38.287941>,  <37.688103, 34.286579, 38.167637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589909, 34.469566, 38.287941>,  <37.426254, 34.774548, 38.488449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589909, 34.469566, 38.287941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793439, 0.568573, -0.217208,
		0.450621, -0.308862, 0.837583,
		0.409139, -0.762450, -0.501274,
		37.712650, 34.240833, 38.137558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191383, 34.829475, 38.590832>,  <37.426254, 34.774548, 38.488449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191383, 34.829475, 38.590832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127724, 34.590954, 38.276100>,  <38.089527, 34.447842, 38.087261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127724, 34.590954, 38.276100>,  <38.191383, 34.829475, 38.590832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127724, 34.590954, 38.276100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720687, 0.474530, -0.505403,
		0.674746, -0.647489, 0.354226,
		-0.159152, -0.596304, -0.786824,
		38.079979, 34.412064, 38.040054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875515, 34.494347, 38.382393>,  <38.191383, 34.829475, 38.590832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875515, 34.494347, 38.382393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630245, 34.490303, 38.066441>,  <38.483082, 34.487877, 37.876869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630245, 34.490303, 38.066441>,  <38.875515, 34.494347, 38.382393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630245, 34.490303, 38.066441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744457, 0.327017, -0.582102,
		0.264189, -0.944964, -0.192994,
		-0.613178, -0.010110, -0.789880,
		38.446293, 34.487270, 37.829475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276371, 34.068188, 37.914299>,  <38.875515, 34.494347, 38.382393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276371, 34.068188, 37.914299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038834, 34.336277, 37.736240>,  <38.896313, 34.497131, 37.629406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038834, 34.336277, 37.736240>,  <39.276371, 34.068188, 37.914299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038834, 34.336277, 37.736240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656503, 0.083775, -0.749657,
		-0.465143, -0.737419, -0.489750,
		-0.593840, 0.670220, -0.445150,
		38.860683, 34.537342, 37.602695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298733, 33.985359, 37.185619>,  <39.276371, 34.068188, 37.914299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298733, 33.985359, 37.185619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196674, 34.369167, 37.233315>,  <39.135441, 34.599453, 37.261932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196674, 34.369167, 37.233315>,  <39.298733, 33.985359, 37.185619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196674, 34.369167, 37.233315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729377, 0.271950, -0.627736,
		-0.634753, -0.073195, -0.769240,
		-0.255142, 0.959524, 0.119234,
		39.120132, 34.657024, 37.269085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135929, 34.324261, 36.539524>,  <39.298733, 33.985359, 37.185619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135929, 34.324261, 36.539524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303272, 34.575127, 36.802322>,  <39.403679, 34.725647, 36.960003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303272, 34.575127, 36.802322>,  <39.135929, 34.324261, 36.539524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303272, 34.575127, 36.802322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658442, 0.288842, -0.695000,
		-0.625646, 0.723352, -0.292111,
		0.418356, 0.627162, 0.656998,
		39.428780, 34.763275, 36.999420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248936, 34.954327, 36.220509>,  <39.135929, 34.324261, 36.539524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248936, 34.954327, 36.220509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528404, 34.904785, 36.502365>,  <39.696083, 34.875061, 36.671478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528404, 34.904785, 36.502365>,  <39.248936, 34.954327, 36.220509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528404, 34.904785, 36.502365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672653, 0.449233, -0.587986,
		-0.243723, 0.884788, 0.397177,
		0.698668, -0.123857, 0.704644,
		39.738003, 34.867630, 36.713757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617527, 35.589718, 36.271172>,  <39.248936, 34.954327, 36.220509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617527, 35.589718, 36.271172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872208, 35.309963, 36.401077>,  <40.025017, 35.142109, 36.479019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872208, 35.309963, 36.401077>,  <39.617527, 35.589718, 36.271172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872208, 35.309963, 36.401077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766939, 0.530584, -0.360950,
		0.080131, 0.478889, 0.874210,
		0.636697, -0.699389, 0.324763,
		40.063217, 35.100147, 36.498505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124504, 35.801250, 36.827507>,  <39.617527, 35.589718, 36.271172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124504, 35.801250, 36.827507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230080, 35.521008, 36.562332>,  <40.293423, 35.352859, 36.403229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230080, 35.521008, 36.562332>,  <40.124504, 35.801250, 36.827507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230080, 35.521008, 36.562332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817228, 0.527503, -0.232118,
		0.512325, -0.480505, 0.711785,
		0.263935, -0.700611, -0.662935,
		40.309261, 35.310825, 36.363453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696148, 35.571125, 37.013058>,  <40.124504, 35.801250, 36.827507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696148, 35.571125, 37.013058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690052, 35.474621, 36.624924>,  <40.686394, 35.416718, 36.392044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690052, 35.474621, 36.624924>,  <40.696148, 35.571125, 37.013058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690052, 35.474621, 36.624924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892675, 0.433901, -0.121903,
		0.450443, -0.868056, 0.208760,
		-0.015237, -0.241265, -0.970340,
		40.685482, 35.402241, 36.333820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042870, 36.137180, 37.405060>,  <40.696148, 35.571125, 37.013058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042870, 36.137180, 37.405060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346306, 35.880119, 37.362095>,  <41.528370, 35.725883, 37.336315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346306, 35.880119, 37.362095>,  <41.042870, 36.137180, 37.405060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346306, 35.880119, 37.362095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113046, 0.032540, -0.993057,
		0.641682, 0.765470, -0.047965,
		0.758594, -0.642649, -0.107413,
		41.573883, 35.687325, 37.329872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408989, 36.292030, 36.732391>,  <41.042870, 36.137180, 37.405060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408989, 36.292030, 36.732391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546326, 35.924438, 36.809948>,  <41.628727, 35.703884, 36.856483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546326, 35.924438, 36.809948>,  <41.408989, 36.292030, 36.732391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546326, 35.924438, 36.809948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197421, -0.272444, -0.941700,
		0.918227, 0.285047, -0.274967,
		0.343342, -0.918979, 0.193892,
		41.649330, 35.648746, 36.868114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884491, 36.195061, 36.159328>,  <41.408989, 36.292030, 36.732391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884491, 36.195061, 36.159328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751205, 35.863911, 36.339813>,  <41.671234, 35.665218, 36.448105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751205, 35.863911, 36.339813>,  <41.884491, 36.195061, 36.159328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751205, 35.863911, 36.339813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074423, -0.453969, -0.887904,
		0.939910, -0.329440, 0.089655,
		-0.333212, -0.827878, 0.451208,
		41.651241, 35.615547, 36.475174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109531, 35.588081, 35.643574>,  <41.884491, 36.195061, 36.159328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109531, 35.588081, 35.643574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476707, 35.444435, 35.576134>,  <42.697014, 35.358250, 35.535671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476707, 35.444435, 35.576134>,  <42.109531, 35.588081, 35.643574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476707, 35.444435, 35.576134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051386, -0.313774, 0.948106,
		-0.393382, -0.878966, -0.269571,
		0.917938, -0.359116, -0.168600,
		42.752090, 35.336700, 35.525555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090527, 34.890160, 35.889629>,  <42.109531, 35.588081, 35.643574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090527, 34.890160, 35.889629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472031, 35.010376, 35.887741>,  <42.700932, 35.082504, 35.886608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472031, 35.010376, 35.887741>,  <42.090527, 34.890160, 35.889629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472031, 35.010376, 35.887741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117508, -0.358364, 0.926157,
		0.276657, -0.883884, -0.377108,
		0.953758, 0.300541, -0.004720,
		42.758160, 35.100536, 35.886326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442768, 34.341713, 36.091454>,  <42.090527, 34.890160, 35.889629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442768, 34.341713, 36.091454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699726, 34.637665, 36.171360>,  <42.853901, 34.815235, 36.219303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699726, 34.637665, 36.171360>,  <42.442768, 34.341713, 36.091454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699726, 34.637665, 36.171360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168459, -0.390607, 0.905012,
		0.747631, -0.547722, -0.375563,
		0.642393, 0.739883, 0.199762,
		42.892445, 34.859631, 36.231289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878368, 34.043957, 36.528316>,  <42.442768, 34.341713, 36.091454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878368, 34.043957, 36.528316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999508, 34.419758, 36.592327>,  <43.072193, 34.645241, 36.630733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999508, 34.419758, 36.592327>,  <42.878368, 34.043957, 36.528316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999508, 34.419758, 36.592327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282147, -0.248770, 0.926556,
		0.910316, -0.235457, -0.340419,
		0.302850, 0.939507, 0.160025,
		43.090363, 34.701611, 36.640335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629135, 33.981472, 36.705769>,  <42.878368, 34.043957, 36.528316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629135, 33.981472, 36.705769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483555, 34.321991, 36.856941>,  <43.396206, 34.526302, 36.947643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483555, 34.321991, 36.856941>,  <43.629135, 33.981472, 36.705769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483555, 34.321991, 36.856941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189227, -0.329715, 0.924922,
		0.911995, 0.408137, -0.041090,
		-0.363947, 0.851300, 0.377929,
		43.374371, 34.577381, 36.970322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085140, 34.197861, 37.211098>,  <43.629135, 33.981472, 36.705769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085140, 34.197861, 37.211098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761677, 34.394066, 37.341003>,  <43.567600, 34.511791, 37.418945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761677, 34.394066, 37.341003>,  <44.085140, 34.197861, 37.211098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761677, 34.394066, 37.341003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201603, -0.287556, 0.936305,
		0.552659, 0.822622, 0.133645,
		-0.808656, 0.490515, 0.324764,
		43.519081, 34.541222, 37.438431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313335, 34.527332, 37.828659>,  <44.085140, 34.197861, 37.211098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313335, 34.527332, 37.828659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917339, 34.477917, 37.855980>,  <43.679741, 34.448269, 37.872372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917339, 34.477917, 37.855980>,  <44.313335, 34.527332, 37.828659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917339, 34.477917, 37.855980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090728, -0.186149, 0.978324,
		-0.108145, 0.974724, 0.195493,
		-0.989986, -0.123537, 0.068304,
		43.620342, 34.440857, 37.876472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116791, 34.880630, 38.447697>,  <44.313335, 34.527332, 37.828659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116791, 34.880630, 38.447697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823372, 34.627918, 38.347488>,  <43.647320, 34.476292, 38.287365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823372, 34.627918, 38.347488>,  <44.116791, 34.880630, 38.447697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823372, 34.627918, 38.347488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162485, -0.194892, 0.967272,
		-0.659930, 0.750245, 0.040307,
		-0.733547, -0.631783, -0.250518,
		43.603310, 34.438385, 38.272331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375301, 35.086430, 38.786659>,  <44.116791, 34.880630, 38.447697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375301, 35.086430, 38.786659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335251, 34.698235, 38.698902>,  <43.311218, 34.465317, 38.646248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335251, 34.698235, 38.698902>,  <43.375301, 35.086430, 38.786659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335251, 34.698235, 38.698902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328898, -0.175817, 0.927855,
		-0.939042, 0.165061, -0.301587,
		-0.100129, -0.970486, -0.219388,
		43.305214, 34.407089, 38.633087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768284, 34.778381, 39.168518>,  <43.375301, 35.086430, 38.786659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768284, 34.778381, 39.168518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916595, 34.425827, 39.051434>,  <43.005585, 34.214294, 38.981182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916595, 34.425827, 39.051434>,  <42.768284, 34.778381, 39.168518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916595, 34.425827, 39.051434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289204, -0.409084, 0.865454,
		-0.882543, -0.236241, -0.406581,
		0.370781, -0.881386, -0.292712,
		43.027828, 34.161411, 38.963619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222946, 34.277073, 39.273579>,  <42.768284, 34.778381, 39.168518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222946, 34.277073, 39.273579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578293, 34.095108, 39.298439>,  <42.791500, 33.985928, 39.313354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578293, 34.095108, 39.298439>,  <42.222946, 34.277073, 39.273579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578293, 34.095108, 39.298439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214428, -0.291382, 0.932264,
		-0.405989, -0.841518, -0.356400,
		0.888366, -0.454912, 0.062147,
		42.844803, 33.958633, 39.317081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093838, 33.584396, 39.615688>,  <42.222946, 34.277073, 39.273579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093838, 33.584396, 39.615688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488846, 33.633015, 39.655769>,  <42.725849, 33.662186, 39.679817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488846, 33.633015, 39.655769>,  <42.093838, 33.584396, 39.615688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488846, 33.633015, 39.655769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056154, -0.322670, 0.944844,
		0.147173, -0.938675, -0.311816,
		0.987515, 0.121546, 0.100198,
		42.785099, 33.669479, 39.685829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328014, 32.944153, 39.929943>,  <42.093838, 33.584396, 39.615688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328014, 32.944153, 39.929943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615040, 33.207760, 40.020096>,  <42.787254, 33.365925, 40.074188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615040, 33.207760, 40.020096>,  <42.328014, 32.944153, 39.929943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615040, 33.207760, 40.020096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086454, -0.405363, 0.910059,
		0.691108, -0.633539, -0.347848,
		0.717562, 0.659022, 0.225377,
		42.830307, 33.405468, 40.087708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771603, 32.503750, 40.354351>,  <42.328014, 32.944153, 39.929943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771603, 32.503750, 40.354351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880379, 32.882530, 40.422871>,  <42.945644, 33.109798, 40.463982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880379, 32.882530, 40.422871>,  <42.771603, 32.503750, 40.354351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880379, 32.882530, 40.422871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058621, -0.193975, 0.979253,
		0.960528, -0.256253, -0.108259,
		0.271936, 0.946947, 0.171297,
		42.961960, 33.166615, 40.474258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080162, 32.347687, 40.932785>,  <42.771603, 32.503750, 40.354351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080162, 32.347687, 40.932785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069618, 32.747425, 40.942684>,  <43.063293, 32.987267, 40.948624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069618, 32.747425, 40.942684>,  <43.080162, 32.347687, 40.932785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069618, 32.747425, 40.942684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154537, -0.028536, 0.987575,
		0.987636, 0.022204, 0.155188,
		-0.026356, 0.999346, 0.024752,
		43.061710, 33.047230, 40.950111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539970, 32.649296, 41.541218>,  <43.080162, 32.347687, 40.932785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539970, 32.649296, 41.541218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259514, 32.911892, 41.429924>,  <43.091240, 33.069450, 41.363148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259514, 32.911892, 41.429924>,  <43.539970, 32.649296, 41.541218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259514, 32.911892, 41.429924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134898, 0.261040, 0.955856,
		0.700143, 0.707726, -0.094467,
		-0.701144, 0.656492, -0.278236,
		43.049171, 33.108841, 41.346455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654808, 33.253651, 41.875881>,  <43.539970, 32.649296, 41.541218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654808, 33.253651, 41.875881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269360, 33.265736, 41.769661>,  <43.038090, 33.272987, 41.705929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269360, 33.265736, 41.769661>,  <43.654808, 33.253651, 41.875881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269360, 33.265736, 41.769661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262622, 0.077240, 0.961802,
		0.049573, 0.996555, -0.066495,
		-0.963624, 0.030217, -0.265547,
		42.980270, 33.274799, 41.689999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366600, 33.826508, 42.201313>,  <43.654808, 33.253651, 41.875881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366600, 33.826508, 42.201313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058708, 33.587475, 42.111504>,  <42.873974, 33.444054, 42.057617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058708, 33.587475, 42.111504>,  <43.366600, 33.826508, 42.201313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058708, 33.587475, 42.111504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303722, 0.033463, 0.952173,
		-0.561490, 0.801108, -0.207257,
		-0.769728, -0.597584, -0.224525,
		42.827789, 33.408199, 42.044147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814251, 34.107037, 42.450928>,  <43.366600, 33.826508, 42.201313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814251, 34.107037, 42.450928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700035, 33.726749, 42.402588>,  <42.631504, 33.498577, 42.373585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700035, 33.726749, 42.402588>,  <42.814251, 34.107037, 42.450928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700035, 33.726749, 42.402588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260585, -0.044325, 0.964433,
		-0.922258, 0.306879, -0.235086,
		-0.285544, -0.950716, -0.120847,
		42.614372, 33.441536, 42.366333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238026, 34.082699, 42.862843>,  <42.814251, 34.107037, 42.450928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238026, 34.082699, 42.862843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345753, 33.703445, 42.795303>,  <42.410389, 33.475891, 42.754780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345753, 33.703445, 42.795303>,  <42.238026, 34.082699, 42.862843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345753, 33.703445, 42.795303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348414, -0.259369, 0.900742,
		-0.897819, -0.183754, -0.400195,
		0.269313, -0.948136, -0.168844,
		42.426548, 33.419006, 42.744652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688251, 33.664055, 43.210167>,  <42.238026, 34.082699, 42.862843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688251, 33.664055, 43.210167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045540, 33.490219, 43.164051>,  <42.259914, 33.385918, 43.136383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045540, 33.490219, 43.164051>,  <41.688251, 33.664055, 43.210167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045540, 33.490219, 43.164051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031096, -0.196095, 0.980092,
		-0.448544, -0.879022, -0.161642,
		0.893220, -0.434588, -0.115291,
		42.313507, 33.359844, 43.129463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622654, 33.075321, 43.662918>,  <41.688251, 33.664055, 43.210167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622654, 33.075321, 43.662918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003746, 33.160412, 43.576149>,  <42.232403, 33.211464, 43.524086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003746, 33.160412, 43.576149>,  <41.622654, 33.075321, 43.662918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003746, 33.160412, 43.576149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182559, 0.169900, 0.968404,
		0.242859, -0.962228, 0.123034,
		0.952729, 0.212724, -0.216925,
		42.289566, 33.224228, 43.511070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158630, 32.795712, 44.158966>,  <41.622654, 33.075321, 43.662918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158630, 32.795712, 44.158966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322865, 33.121624, 43.995228>,  <42.421406, 33.317169, 43.896984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322865, 33.121624, 43.995228>,  <42.158630, 32.795712, 44.158966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322865, 33.121624, 43.995228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446762, 0.211588, 0.869272,
		0.794875, -0.539786, -0.277137,
		0.410582, 0.814777, -0.409342,
		42.446037, 33.366058, 43.872425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433826, 31.978851, 44.152611>,  <42.158630, 32.795712, 44.158966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433826, 31.978851, 44.152611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336174, 31.910404, 44.534420>,  <42.277584, 31.869335, 44.763508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336174, 31.910404, 44.534420>,  <42.433826, 31.978851, 44.152611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336174, 31.910404, 44.534420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750050, 0.590588, 0.297709,
		-0.614674, 0.788622, -0.015834,
		-0.244131, -0.171118, 0.954525,
		42.262936, 31.859068, 44.820778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219501, 31.465282, 43.684151>,  <42.433826, 31.978851, 44.152611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219501, 31.465282, 43.684151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601349, 31.582407, 43.705921>,  <42.830456, 31.652681, 43.718983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601349, 31.582407, 43.705921>,  <42.219501, 31.465282, 43.684151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601349, 31.582407, 43.705921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267694, -0.923688, 0.274117,
		0.130542, -0.247107, -0.960155,
		0.954620, 0.292812, 0.054431,
		42.887733, 31.670250, 43.722252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716404, 30.948225, 43.579357>,  <42.219501, 31.465282, 43.684151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716404, 30.948225, 43.579357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938393, 31.225502, 43.763306>,  <43.071587, 31.391869, 43.873676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938393, 31.225502, 43.763306>,  <42.716404, 30.948225, 43.579357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938393, 31.225502, 43.763306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439223, -0.713660, 0.545685,
		0.706460, -0.100854, -0.700530,
		0.554975, 0.693194, 0.459875,
		43.104885, 31.433460, 43.901268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355759, 30.611820, 43.578335>,  <42.716404, 30.948225, 43.579357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355759, 30.611820, 43.578335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318424, 30.895792, 43.857559>,  <43.296024, 31.066175, 44.025093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318424, 30.895792, 43.857559>,  <43.355759, 30.611820, 43.578335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318424, 30.895792, 43.857559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378846, -0.623060, 0.684304,
		0.920741, 0.328325, -0.210802,
		-0.093332, 0.709929, 0.698061,
		43.290424, 31.108770, 44.066978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814358, 30.978449, 44.124779>,  <43.355759, 30.611820, 43.578335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814358, 30.978449, 44.124779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995583, 30.633125, 44.035851>,  <44.104317, 30.425930, 43.982494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995583, 30.633125, 44.035851>,  <43.814358, 30.978449, 44.124779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995583, 30.633125, 44.035851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289813, 0.378476, -0.879070,
		0.843055, 0.333842, 0.421672,
		0.453063, -0.863311, -0.222324,
		44.131500, 30.374132, 43.969154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472343, 31.110416, 43.756866>,  <43.814358, 30.978449, 44.124779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472343, 31.110416, 43.756866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309547, 30.765932, 43.635098>,  <44.211868, 30.559242, 43.562038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309547, 30.765932, 43.635098>,  <44.472343, 31.110416, 43.756866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309547, 30.765932, 43.635098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108649, 0.376547, -0.920004,
		0.906946, -0.341360, -0.246822,
		-0.406993, -0.861211, -0.304420,
		44.187450, 30.507568, 43.543770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837902, 30.696438, 43.094307>,  <44.472343, 31.110416, 43.756866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837902, 30.696438, 43.094307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450542, 30.602989, 43.129215>,  <44.218124, 30.546921, 43.150158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450542, 30.602989, 43.129215>,  <44.837902, 30.696438, 43.094307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450542, 30.602989, 43.129215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170874, 0.366688, -0.914517,
		0.181650, -0.900534, -0.395022,
		-0.968403, -0.233621, 0.087269,
		44.160023, 30.532902, 43.155396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603306, 30.221626, 42.626614>,  <44.837902, 30.696438, 43.094307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603306, 30.221626, 42.626614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291534, 30.462076, 42.697197>,  <44.104469, 30.606346, 42.739548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291534, 30.462076, 42.697197>,  <44.603306, 30.221626, 42.626614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291534, 30.462076, 42.697197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068942, 0.362245, -0.929529,
		-0.622683, -0.712339, -0.323788,
		-0.779431, 0.601125, 0.176454,
		44.057705, 30.642414, 42.750134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141018, 30.220047, 42.002987>,  <44.603306, 30.221626, 42.626614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141018, 30.220047, 42.002987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055500, 30.564941, 42.186657>,  <44.004189, 30.771877, 42.296860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055500, 30.564941, 42.186657>,  <44.141018, 30.220047, 42.002987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055500, 30.564941, 42.186657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213729, 0.499943, -0.839272,
		-0.953212, -0.081290, -0.291169,
		-0.213792, 0.862235, 0.459177,
		43.991364, 30.823612, 42.324409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679310, 30.523102, 41.530914>,  <44.141018, 30.220047, 42.002987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679310, 30.523102, 41.530914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859032, 30.807203, 41.747681>,  <43.966866, 30.977665, 41.877739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859032, 30.807203, 41.747681>,  <43.679310, 30.523102, 41.530914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859032, 30.807203, 41.747681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297406, 0.453074, -0.840401,
		-0.842425, 0.538760, -0.007668,
		0.449300, 0.710255, 0.541911,
		43.993820, 31.020279, 41.910255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252571, 31.053566, 41.374653>,  <43.679310, 30.523102, 41.530914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252571, 31.053566, 41.374653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595657, 31.200909, 41.518116>,  <43.801510, 31.289314, 41.604195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595657, 31.200909, 41.518116>,  <43.252571, 31.053566, 41.374653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595657, 31.200909, 41.518116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194944, 0.412492, -0.889858,
		-0.475726, 0.833165, 0.281993,
		0.857719, 0.368356, 0.358654,
		43.852974, 31.311415, 41.625713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341049, 31.587107, 40.938557>,  <43.252571, 31.053566, 41.374653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341049, 31.587107, 40.938557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700954, 31.553802, 41.109901>,  <43.916897, 31.533821, 41.212708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700954, 31.553802, 41.109901>,  <43.341049, 31.587107, 40.938557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700954, 31.553802, 41.109901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430945, 0.323964, -0.842219,
		-0.068652, 0.942399, 0.327371,
		0.899763, -0.083259, 0.428363,
		43.970882, 31.528824, 41.238411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657803, 32.035938, 40.591862>,  <43.341049, 31.587107, 40.938557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657803, 32.035938, 40.591862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973194, 31.849798, 40.752731>,  <44.162430, 31.738113, 40.849255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973194, 31.849798, 40.752731>,  <43.657803, 32.035938, 40.591862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973194, 31.849798, 40.752731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571200, 0.311534, -0.759392,
		0.228094, 0.828489, 0.511449,
		0.788482, -0.465352, 0.402174,
		44.209740, 31.710192, 40.873383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309135, 32.473984, 40.530605>,  <43.657803, 32.035938, 40.591862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309135, 32.473984, 40.530605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368721, 32.079258, 40.505276>,  <44.404472, 31.842422, 40.490078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368721, 32.079258, 40.505276>,  <44.309135, 32.473984, 40.530605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368721, 32.079258, 40.505276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443328, 0.123886, -0.887757,
		0.883895, 0.104171, 0.455936,
		0.148963, -0.986813, -0.063320,
		44.413410, 31.783215, 40.486279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020161, 32.438457, 40.430817>,  <44.309135, 32.473984, 40.530605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020161, 32.438457, 40.430817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873669, 32.085598, 40.312366>,  <44.785774, 31.873882, 40.241295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873669, 32.085598, 40.312366>,  <45.020161, 32.438457, 40.430817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873669, 32.085598, 40.312366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565038, 0.042021, -0.823994,
		0.739328, -0.469095, 0.483057,
		-0.366233, -0.882147, -0.296124,
		44.763798, 31.820953, 40.223530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603367, 32.151070, 40.060970>,  <45.020161, 32.438457, 40.430817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603367, 32.151070, 40.060970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295391, 31.919086, 39.954502>,  <45.110607, 31.779898, 39.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295391, 31.919086, 39.954502>,  <45.603367, 32.151070, 40.060970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295391, 31.919086, 39.954502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326037, 0.001031, -0.945356,
		0.548538, -0.814648, 0.188293,
		-0.769939, -0.579954, -0.266171,
		45.064411, 31.745100, 39.874649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866684, 31.531322, 39.659386>,  <45.603367, 32.151070, 40.060970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866684, 31.531322, 39.659386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486362, 31.622980, 39.575993>,  <45.258171, 31.677975, 39.525955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486362, 31.622980, 39.575993>,  <45.866684, 31.531322, 39.659386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486362, 31.622980, 39.575993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260300, 0.226020, -0.938701,
		-0.167976, -0.946788, -0.274546,
		-0.950804, 0.229143, -0.208483,
		45.201122, 31.691723, 39.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886986, 31.341778, 38.954300>,  <45.866684, 31.531322, 39.659386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886986, 31.341778, 38.954300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525375, 31.510555, 38.981743>,  <45.308411, 31.611822, 38.998207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525375, 31.510555, 38.981743>,  <45.886986, 31.341778, 38.954300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525375, 31.510555, 38.981743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079027, 0.322673, -0.943205,
		-0.420114, -0.847259, -0.325049,
		-0.904023, 0.421941, 0.068603,
		45.254169, 31.637138, 39.002323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390366, 31.124802, 38.243771>,  <45.886986, 31.341778, 38.954300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390366, 31.124802, 38.243771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298164, 31.474764, 38.414139>,  <45.242844, 31.684742, 38.516361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298164, 31.474764, 38.414139>,  <45.390366, 31.124802, 38.243771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298164, 31.474764, 38.414139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079508, 0.453178, -0.887867,
		-0.969819, -0.170788, -0.174019,
		-0.230499, 0.874906, 0.425921,
		45.229015, 31.737236, 38.541916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687855, 31.385334, 37.895283>,  <45.390366, 31.124802, 38.243771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687855, 31.385334, 37.895283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837421, 31.716484, 38.062523>,  <44.927162, 31.915174, 38.162868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837421, 31.716484, 38.062523>,  <44.687855, 31.385334, 37.895283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837421, 31.716484, 38.062523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114853, 0.488663, -0.864880,
		-0.920325, 0.275369, 0.277801,
		0.373912, 0.827877, 0.418102,
		44.949596, 31.964848, 38.187954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252640, 31.887026, 37.615700>,  <44.687855, 31.385334, 37.895283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252640, 31.887026, 37.615700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578041, 32.075443, 37.752129>,  <44.773281, 32.188496, 37.833988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578041, 32.075443, 37.752129>,  <44.252640, 31.887026, 37.615700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578041, 32.075443, 37.752129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081416, 0.488460, -0.868780,
		-0.575836, 0.734522, 0.359012,
		0.813501, 0.471046, 0.341075,
		44.822090, 32.216759, 37.854450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090397, 32.592331, 37.566601>,  <44.252640, 31.887026, 37.615700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090397, 32.592331, 37.566601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488701, 32.604668, 37.601276>,  <44.727684, 32.612068, 37.622082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488701, 32.604668, 37.601276>,  <44.090397, 32.592331, 37.566601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488701, 32.604668, 37.601276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044640, 0.661946, -0.748221,
		-0.080457, 0.748917, 0.657761,
		0.995758, 0.030837, 0.086690,
		44.787430, 32.613918, 37.627285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195450, 33.277584, 37.652512>,  <44.090397, 32.592331, 37.566601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195450, 33.277584, 37.652512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544601, 33.129513, 37.525356>,  <44.754093, 33.040668, 37.449062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544601, 33.129513, 37.525356>,  <44.195450, 33.277584, 37.652512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544601, 33.129513, 37.525356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024018, 0.618098, -0.785734,
		0.487349, 0.693484, 0.530633,
		0.872877, -0.370182, -0.317885,
		44.806465, 33.018459, 37.429989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648693, 33.868999, 37.635445>,  <44.195450, 33.277584, 37.652512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648693, 33.868999, 37.635445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826939, 33.592869, 37.407448>,  <44.933884, 33.427193, 37.270649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826939, 33.592869, 37.407448>,  <44.648693, 33.868999, 37.635445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826939, 33.592869, 37.407448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243003, 0.706064, -0.665149,
		0.861615, 0.157889, 0.482379,
		0.445610, -0.690322, -0.569988,
		44.960621, 33.385773, 37.236450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140175, 34.215199, 37.378868>,  <44.648693, 33.868999, 37.635445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140175, 34.215199, 37.378868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105972, 33.898754, 37.136600>,  <45.085449, 33.708889, 36.991238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105972, 33.898754, 37.136600>,  <45.140175, 34.215199, 37.378868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105972, 33.898754, 37.136600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152583, 0.590329, -0.792610,
		0.984585, -0.160189, 0.070232,
		-0.085507, -0.791108, -0.605671,
		45.080318, 33.661423, 36.954899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803246, 34.125877, 37.121777>,  <45.140175, 34.215199, 37.378868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803246, 34.125877, 37.121777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574940, 33.935440, 36.854176>,  <45.437954, 33.821178, 36.693615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574940, 33.935440, 36.854176>,  <45.803246, 34.125877, 37.121777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574940, 33.935440, 36.854176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466651, 0.482307, -0.741362,
		0.675619, -0.735335, -0.053117,
		-0.570768, -0.476091, -0.669000,
		45.403709, 33.792614, 36.653477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268501, 34.168247, 36.593521>,  <45.803246, 34.125877, 37.121777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268501, 34.168247, 36.593521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892269, 34.106369, 36.472603>,  <45.666531, 34.069241, 36.400051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892269, 34.106369, 36.472603>,  <46.268501, 34.168247, 36.593521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892269, 34.106369, 36.472603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232239, 0.356448, -0.904992,
		0.247750, -0.921420, -0.299341,
		-0.940577, -0.154693, -0.302300,
		45.610096, 34.059959, 36.381912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243271, 33.733658, 36.016685>,  <46.268501, 34.168247, 36.593521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243271, 33.733658, 36.016685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938663, 33.992714, 36.026985>,  <45.755901, 34.148148, 36.033165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938663, 33.992714, 36.026985>,  <46.243271, 33.733658, 36.016685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938663, 33.992714, 36.026985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242741, 0.321809, -0.915159,
		-0.600977, -0.690656, -0.402270,
		-0.761514, 0.647636, 0.025749,
		45.710209, 34.187004, 36.034710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571991, 34.322735, 35.710548>,  <46.243271, 33.733658, 36.016685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571991, 34.322735, 35.710548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.907467, 34.525566, 35.790020>,  <47.108753, 34.647266, 35.837704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.907467, 34.525566, 35.790020>,  <46.571991, 34.322735, 35.710548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.907467, 34.525566, 35.790020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425541, -0.382494, -0.820130,
		-0.339880, 0.772377, -0.536577,
		0.838687, 0.507082, 0.198676,
		47.159073, 34.677692, 35.849625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750385, 34.747814, 35.115860>,  <46.571991, 34.322735, 35.710548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750385, 34.747814, 35.115860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059521, 34.626163, 35.338650>,  <47.245003, 34.553173, 35.472324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059521, 34.626163, 35.338650>,  <46.750385, 34.747814, 35.115860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.059521, 34.626163, 35.338650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470781, -0.313760, -0.824572,
		0.425534, 0.899477, -0.099308,
		0.772843, -0.304131, 0.556973,
		47.291374, 34.534924, 35.505741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381866, 34.919342, 34.681717>,  <46.750385, 34.747814, 35.115860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381866, 34.919342, 34.681717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441502, 34.645462, 34.967079>,  <47.477283, 34.481133, 35.138298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441502, 34.645462, 34.967079>,  <47.381866, 34.919342, 34.681717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441502, 34.645462, 34.967079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646633, -0.478317, -0.594204,
		0.748090, 0.549902, 0.371441,
		0.149088, -0.684704, 0.713409,
		47.486229, 34.440052, 35.181103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.875835, 35.415962, 34.691147>,  <47.381866, 34.919342, 34.681717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.875835, 35.415962, 34.691147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.818470, 35.109047, 34.941174>,  <47.784050, 34.924896, 35.091190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.818470, 35.109047, 34.941174>,  <47.875835, 35.415962, 34.691147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.818470, 35.109047, 34.941174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888062, -0.178973, -0.423455,
		0.436780, -0.615824, -0.655731,
		-0.143415, -0.767287, 0.625062,
		47.775444, 34.878860, 35.128693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.403946, 34.792244, 45.414871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006332, 34.802208, 45.372383>,  <32.767765, 34.808186, 45.346889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006332, 34.802208, 45.372383>,  <33.403946, 34.792244, 45.414871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006332, 34.802208, 45.372383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108639, 0.315329, -0.942743,
		0.010004, -0.948655, -0.316154,
		-0.994031, 0.024915, -0.106216,
		32.708122, 34.809681, 45.340519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267387, 34.525513, 44.798172>,  <33.403946, 34.792244, 45.414871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267387, 34.525513, 44.798172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903572, 34.685184, 44.844490>,  <32.685284, 34.780987, 44.872280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903572, 34.685184, 44.844490>,  <33.267387, 34.525513, 44.798172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903572, 34.685184, 44.844490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050511, 0.170369, -0.984085,
		-0.412549, -0.900907, -0.134794,
		-0.909534, 0.399175, 0.115792,
		32.630711, 34.804935, 44.879227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843060, 34.201561, 44.314610>,  <33.267387, 34.525513, 44.798172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843060, 34.201561, 44.314610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.624928, 34.527370, 44.393776>,  <32.494049, 34.722855, 44.441277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.624928, 34.527370, 44.393776>,  <32.843060, 34.201561, 44.314610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624928, 34.527370, 44.393776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199541, 0.103182, -0.974442,
		-0.814125, -0.570884, 0.106262,
		-0.545329, 0.814521, 0.197917,
		32.461330, 34.771729, 44.453152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182030, 34.093643, 43.961391>,  <32.843060, 34.201561, 44.314610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182030, 34.093643, 43.961391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.262413, 34.480877, 44.021309>,  <32.310642, 34.713215, 44.057259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.262413, 34.480877, 44.021309>,  <32.182030, 34.093643, 43.961391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262413, 34.480877, 44.021309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173693, 0.185703, -0.967132,
		-0.964079, 0.168331, 0.205467,
		0.200954, 0.968080, 0.149794,
		32.322701, 34.771301, 44.066246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615330, 34.419018, 43.641563>,  <32.182030, 34.093643, 43.961391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615330, 34.419018, 43.641563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.891981, 34.706779, 43.667191>,  <32.057972, 34.879436, 43.682568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.891981, 34.706779, 43.667191>,  <31.615330, 34.419018, 43.641563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891981, 34.706779, 43.667191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173586, 0.251673, -0.952118,
		-0.701084, 0.647391, 0.298943,
		0.691628, 0.719407, 0.064066,
		32.099468, 34.922600, 43.686409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366516, 35.015999, 43.356731>,  <31.615330, 34.419018, 43.641563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366516, 35.015999, 43.356731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.757736, 35.095432, 43.331493>,  <31.992468, 35.143093, 43.316349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.757736, 35.095432, 43.331493>,  <31.366516, 35.015999, 43.356731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757736, 35.095432, 43.331493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093502, 0.147667, -0.984607,
		-0.186210, 0.968896, 0.162994,
		0.978051, 0.198584, -0.063096,
		32.051151, 35.155006, 43.312565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450933, 35.562996, 42.946934>,  <31.366516, 35.015999, 43.356731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450933, 35.562996, 42.946934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.829025, 35.434093, 42.926167>,  <32.055882, 35.356754, 42.913708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.829025, 35.434093, 42.926167>,  <31.450933, 35.562996, 42.946934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829025, 35.434093, 42.926167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002667, 0.151425, -0.988465,
		0.326396, 0.934465, 0.142272,
		0.945229, -0.322252, -0.051916,
		32.112595, 35.337418, 42.910591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693167, 36.026569, 42.585342>,  <31.450933, 35.562996, 42.946934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693167, 36.026569, 42.585342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.921688, 35.698803, 42.566700>,  <32.058800, 35.502144, 42.555515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.921688, 35.698803, 42.566700>,  <31.693167, 36.026569, 42.585342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921688, 35.698803, 42.566700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177872, 0.179046, -0.967628,
		0.801234, 0.544518, 0.248041,
		0.571302, -0.819416, -0.046603,
		32.093079, 35.452980, 42.552719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150955, 36.204411, 42.023628>,  <31.693167, 36.026569, 42.585342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150955, 36.204411, 42.023628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.214901, 35.813343, 42.078194>,  <32.253269, 35.578701, 42.110931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.214901, 35.813343, 42.078194>,  <32.150955, 36.204411, 42.023628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214901, 35.813343, 42.078194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284948, -0.086599, -0.954623,
		0.945117, 0.191482, 0.264741,
		0.159866, -0.977668, 0.136409,
		32.262859, 35.520042, 42.119118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781254, 36.112347, 41.782326>,  <32.150955, 36.204411, 42.023628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781254, 36.112347, 41.782326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.620441, 35.746780, 41.759930>,  <32.523956, 35.527439, 41.746494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.620441, 35.746780, 41.759930>,  <32.781254, 36.112347, 41.782326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620441, 35.746780, 41.759930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294408, -0.071127, -0.953030,
		0.867006, -0.399626, 0.297659,
		-0.402027, -0.913915, -0.055985,
		32.499832, 35.472607, 41.743134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256985, 35.722820, 41.483887>,  <32.781254, 36.112347, 41.782326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256985, 35.722820, 41.483887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.912067, 35.529278, 41.424107>,  <32.705116, 35.413151, 41.388241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.912067, 35.529278, 41.424107>,  <33.256985, 35.722820, 41.483887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912067, 35.529278, 41.424107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237277, -0.125319, -0.963325,
		0.447382, -0.866128, 0.222870,
		-0.862293, -0.483856, -0.149446,
		32.653381, 35.384121, 41.379272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429794, 35.149460, 41.013763>,  <33.256985, 35.722820, 41.483887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429794, 35.149460, 41.013763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.032207, 35.165939, 40.973106>,  <32.793655, 35.175827, 40.948711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.032207, 35.165939, 40.973106>,  <33.429794, 35.149460, 41.013763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032207, 35.165939, 40.973106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093455, -0.166802, -0.981551,
		-0.057392, -0.985129, 0.161946,
		-0.993968, 0.041198, -0.101638,
		32.734016, 35.178299, 40.942616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263363, 34.623810, 40.570339>,  <33.429794, 35.149460, 41.013763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263363, 34.623810, 40.570339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962040, 34.884174, 40.532730>,  <32.781246, 35.040394, 40.510166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962040, 34.884174, 40.532730>,  <33.263363, 34.623810, 40.570339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962040, 34.884174, 40.532730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023082, -0.116709, -0.992898,
		-0.657266, -0.750125, 0.072893,
		-0.753305, 0.650916, -0.094023,
		32.736050, 35.079449, 40.504524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790150, 34.310722, 40.145168>,  <33.263363, 34.623810, 40.570339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790150, 34.310722, 40.145168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.722893, 34.702126, 40.097404>,  <32.682537, 34.936966, 40.068745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.722893, 34.702126, 40.097404>,  <32.790150, 34.310722, 40.145168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722893, 34.702126, 40.097404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075120, -0.133505, -0.988197,
		-0.982896, -0.157187, 0.095953,
		-0.168142, 0.978503, -0.119414,
		32.672451, 34.995678, 40.061581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281338, 34.379761, 39.615471>,  <32.790150, 34.310722, 40.145168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281338, 34.379761, 39.615471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.482479, 34.725449, 39.608955>,  <32.603165, 34.932861, 39.605045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.482479, 34.725449, 39.608955>,  <32.281338, 34.379761, 39.615471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482479, 34.725449, 39.608955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037610, 0.003054, -0.999288,
		-0.863554, 0.503107, 0.034039,
		0.502852, 0.864219, -0.016285,
		32.633335, 34.984715, 39.604069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881838, 34.725170, 39.130142>,  <32.281338, 34.379761, 39.615471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881838, 34.725170, 39.130142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233841, 34.913006, 39.158638>,  <32.445042, 35.025707, 39.175735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233841, 34.913006, 39.158638>,  <31.881838, 34.725170, 39.130142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233841, 34.913006, 39.158638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000943, 0.148268, -0.988947,
		-0.474958, 0.870348, 0.130034,
		0.880008, 0.469586, 0.071242,
		32.497845, 35.053883, 39.180012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754595, 35.239223, 38.626255>,  <31.881838, 34.725170, 39.130142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754595, 35.239223, 38.626255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.148487, 35.187099, 38.672432>,  <32.384823, 35.155823, 38.700138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.148487, 35.187099, 38.672432>,  <31.754595, 35.239223, 38.626255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148487, 35.187099, 38.672432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111834, -0.034669, -0.993122,
		0.133419, 0.990866, -0.019566,
		0.984730, -0.130314, 0.115438,
		32.443905, 35.148006, 38.707062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031921, 35.595917, 38.156918>,  <31.754595, 35.239223, 38.626255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031921, 35.595917, 38.156918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.362247, 35.389942, 38.248882>,  <32.560444, 35.266357, 38.304062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.362247, 35.389942, 38.248882>,  <32.031921, 35.595917, 38.156918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362247, 35.389942, 38.248882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326323, 0.103839, -0.939538,
		0.459932, 0.850913, 0.253789,
		0.825818, -0.514941, 0.229914,
		32.609993, 35.235458, 38.317856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480801, 35.970009, 37.879932>,  <32.031921, 35.595917, 38.156918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480801, 35.970009, 37.879932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.657291, 35.614231, 37.927612>,  <32.763187, 35.400764, 37.956223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.657291, 35.614231, 37.927612>,  <32.480801, 35.970009, 37.879932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657291, 35.614231, 37.927612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405240, 0.078967, -0.910793,
		0.800684, 0.450176, 0.395280,
		0.441231, -0.889441, 0.119202,
		32.789661, 35.347397, 37.963371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265541, 36.045441, 37.662586>,  <32.480801, 35.970009, 37.879932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265541, 36.045441, 37.662586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.191811, 35.655628, 37.611488>,  <33.147572, 35.421741, 37.580830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.191811, 35.655628, 37.611488>,  <33.265541, 36.045441, 37.662586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191811, 35.655628, 37.611488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437338, 0.035068, -0.898613,
		0.880203, -0.221508, 0.419734,
		-0.184331, -0.974528, -0.127741,
		33.136513, 35.363270, 37.573166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919479, 35.724689, 37.389729>,  <33.265541, 36.045441, 37.662586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919479, 35.724689, 37.389729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602131, 35.492081, 37.317749>,  <33.411720, 35.352516, 37.274563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602131, 35.492081, 37.317749>,  <33.919479, 35.724689, 37.389729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602131, 35.492081, 37.317749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214808, 0.009144, -0.976614,
		0.569572, -0.813476, 0.117662,
		-0.793376, -0.581526, -0.179949,
		33.364117, 35.317623, 37.263763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158260, 35.102764, 36.957031>,  <33.919479, 35.724689, 37.389729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158260, 35.102764, 36.957031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.766014, 35.154003, 36.897724>,  <33.530666, 35.184746, 36.862141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.766014, 35.154003, 36.897724>,  <34.158260, 35.102764, 36.957031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766014, 35.154003, 36.897724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126373, -0.164808, -0.978196,
		-0.149732, -0.977973, 0.145426,
		-0.980617, 0.128089, -0.148266,
		33.471828, 35.192432, 36.853245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914421, 35.288780, 36.780964>,  <34.158260, 35.102764, 36.957031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914421, 35.288780, 36.780964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239525, 35.489731, 36.898979>,  <35.434586, 35.610302, 36.969788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239525, 35.489731, 36.898979>,  <34.914421, 35.288780, 36.780964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239525, 35.489731, 36.898979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236185, -0.178811, 0.955114,
		0.532584, -0.845956, -0.026675,
		0.812755, 0.502379, 0.295035,
		35.483353, 35.640446, 36.987488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224319, 34.943748, 37.385048>,  <34.914421, 35.288780, 36.780964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224319, 34.943748, 37.385048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366547, 35.317307, 37.400070>,  <35.451881, 35.541443, 37.409084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366547, 35.317307, 37.400070>,  <35.224319, 34.943748, 37.385048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366547, 35.317307, 37.400070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073751, -0.012027, 0.997204,
		0.931737, -0.357341, 0.064599,
		0.355565, 0.933896, 0.037560,
		35.473217, 35.597477, 37.411339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812733, 35.018108, 37.881481>,  <35.224319, 34.943748, 37.385048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812733, 35.018108, 37.881481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672009, 35.392090, 37.863194>,  <35.587574, 35.616478, 37.852219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672009, 35.392090, 37.863194>,  <35.812733, 35.018108, 37.881481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672009, 35.392090, 37.863194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109635, 0.089666, 0.989919,
		0.929627, 0.343255, -0.134050,
		-0.351815, 0.934952, -0.045723,
		35.566463, 35.672577, 37.849476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191410, 35.383114, 38.412724>,  <35.812733, 35.018108, 37.881481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191410, 35.383114, 38.412724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872871, 35.613968, 38.340332>,  <35.681747, 35.752480, 38.296898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872871, 35.613968, 38.340332>,  <36.191410, 35.383114, 38.412724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872871, 35.613968, 38.340332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000598, 0.299967, 0.953949,
		0.604841, 0.759566, -0.239223,
		-0.796346, 0.577130, -0.180978,
		35.633968, 35.787106, 38.286037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141697, 35.691090, 38.967854>,  <36.191410, 35.383114, 38.412724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141697, 35.691090, 38.967854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801342, 35.849148, 38.829376>,  <35.597130, 35.943985, 38.746288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801342, 35.849148, 38.829376>,  <36.141697, 35.691090, 38.967854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801342, 35.849148, 38.829376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229710, 0.312807, 0.921621,
		0.472471, 0.863718, -0.175393,
		-0.850884, 0.395150, -0.346197,
		35.546078, 35.967693, 38.725517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103645, 36.321178, 39.333462>,  <36.141697, 35.691090, 38.967854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103645, 36.321178, 39.333462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739483, 36.211338, 39.209690>,  <35.520985, 36.145432, 39.135426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739483, 36.211338, 39.209690>,  <36.103645, 36.321178, 39.333462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739483, 36.211338, 39.209690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327689, 0.022085, 0.944528,
		-0.252537, 0.961304, -0.110090,
		-0.910409, -0.274603, -0.309431,
		35.466358, 36.128956, 39.116859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692833, 36.821236, 39.577702>,  <36.103645, 36.321178, 39.333462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692833, 36.821236, 39.577702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458828, 36.505482, 39.503258>,  <35.318424, 36.316029, 39.458591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458828, 36.505482, 39.503258>,  <35.692833, 36.821236, 39.577702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458828, 36.505482, 39.503258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384926, 0.068268, 0.920419,
		-0.713857, 0.610094, -0.343792,
		-0.585013, -0.789382, -0.186107,
		35.283325, 36.268665, 39.447426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203541, 36.926235, 40.035870>,  <35.692833, 36.821236, 39.577702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203541, 36.926235, 40.035870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137749, 36.555557, 39.900703>,  <35.098274, 36.333153, 39.819603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137749, 36.555557, 39.900703>,  <35.203541, 36.926235, 40.035870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137749, 36.555557, 39.900703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298393, -0.279781, 0.912515,
		-0.940163, 0.250924, -0.230500,
		-0.164482, -0.926693, -0.337914,
		35.088406, 36.277550, 39.799328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447033, 36.685871, 40.119164>,  <35.203541, 36.926235, 40.035870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447033, 36.685871, 40.119164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706245, 36.381542, 40.133076>,  <34.861774, 36.198944, 40.141422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706245, 36.381542, 40.133076>,  <34.447033, 36.685871, 40.119164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706245, 36.381542, 40.133076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348638, -0.255731, 0.901695,
		-0.677132, -0.596452, -0.430972,
		0.648031, -0.760820, 0.034782,
		34.900654, 36.153297, 40.143509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238522, 36.247646, 40.704281>,  <34.447033, 36.685871, 40.119164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238522, 36.247646, 40.704281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599930, 36.085392, 40.648991>,  <34.816776, 35.988041, 40.615818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599930, 36.085392, 40.648991>,  <34.238522, 36.247646, 40.704281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599930, 36.085392, 40.648991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046110, -0.228657, 0.972414,
		-0.426051, -0.884973, -0.187893,
		0.903523, -0.405634, -0.138226,
		34.870987, 35.963703, 40.607521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255192, 35.686478, 41.146118>,  <34.238522, 36.247646, 40.704281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255192, 35.686478, 41.146118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648174, 35.736408, 41.090691>,  <34.883965, 35.766365, 41.057434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648174, 35.736408, 41.090691>,  <34.255192, 35.686478, 41.146118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648174, 35.736408, 41.090691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164170, -0.226243, 0.960136,
		0.088497, -0.966040, -0.242766,
		0.982454, 0.124824, -0.138573,
		34.942909, 35.773853, 41.049118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571987, 35.201851, 41.549263>,  <34.255192, 35.686478, 41.146118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571987, 35.201851, 41.549263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897846, 35.425598, 41.488007>,  <35.093361, 35.559849, 41.451252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897846, 35.425598, 41.488007>,  <34.571987, 35.201851, 41.549263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897846, 35.425598, 41.488007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392421, -0.337235, 0.855733,
		0.427029, -0.757216, -0.494238,
		0.814648, 0.559372, -0.153138,
		35.142242, 35.593410, 41.442066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117760, 34.804218, 41.819687>,  <34.571987, 35.201851, 41.549263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117760, 34.804218, 41.819687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272423, 35.172249, 41.794521>,  <35.365223, 35.393066, 41.779423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272423, 35.172249, 41.794521>,  <35.117760, 34.804218, 41.819687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272423, 35.172249, 41.794521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265298, -0.045640, 0.963086,
		0.883239, -0.389076, -0.261741,
		0.386659, 0.920074, -0.062910,
		35.388420, 35.448273, 41.775650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779976, 34.840790, 42.120621>,  <35.117760, 34.804218, 41.819687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779976, 34.840790, 42.120621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630653, 35.211662, 42.133080>,  <35.541061, 35.434185, 42.140556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630653, 35.211662, 42.133080>,  <35.779976, 34.840790, 42.120621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630653, 35.211662, 42.133080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094788, 0.004719, 0.995486,
		0.922853, 0.374575, -0.089647,
		-0.373307, 0.927185, 0.031150,
		35.518661, 35.489819, 42.142426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334965, 35.172188, 42.431572>,  <35.779976, 34.840790, 42.120621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334965, 35.172188, 42.431572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965874, 35.323364, 42.461842>,  <35.744419, 35.414070, 42.480003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965874, 35.323364, 42.461842>,  <36.334965, 35.172188, 42.431572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965874, 35.323364, 42.461842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113251, 0.078183, 0.990486,
		0.368431, 0.922522, -0.114944,
		-0.922731, 0.377943, 0.075671,
		35.689053, 35.436749, 42.484543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399055, 35.664829, 42.915020>,  <36.334965, 35.172188, 42.431572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399055, 35.664829, 42.915020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004650, 35.598629, 42.907219>,  <35.768005, 35.558910, 42.902538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004650, 35.598629, 42.907219>,  <36.399055, 35.664829, 42.915020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004650, 35.598629, 42.907219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073146, 0.324692, 0.942987,
		-0.149729, 0.931228, -0.332258,
		-0.986018, -0.165496, -0.019500,
		35.708843, 35.548981, 42.901367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016697, 36.240025, 43.338646>,  <36.399055, 35.664829, 42.915020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016697, 36.240025, 43.338646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770226, 35.925030, 43.333157>,  <35.622341, 35.736034, 43.329865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770226, 35.925030, 43.333157>,  <36.016697, 36.240025, 43.338646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770226, 35.925030, 43.333157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128339, 0.083205, 0.988234,
		-0.777077, 0.610692, -0.152335,
		-0.616182, -0.787484, -0.013719,
		35.585369, 35.688786, 43.329041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540482, 36.418224, 43.892632>,  <36.016697, 36.240025, 43.338646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540482, 36.418224, 43.892632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435429, 36.039646, 43.817520>,  <35.372395, 35.812500, 43.772453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435429, 36.039646, 43.817520>,  <35.540482, 36.418224, 43.892632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435429, 36.039646, 43.817520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086715, -0.170670, 0.981505,
		-0.960991, 0.274061, -0.037247,
		-0.262635, -0.946447, -0.187778,
		35.356640, 35.755711, 43.761189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.674557, 36.103352, 44.436153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889812, 35.797314, 44.294708>,  <35.018967, 35.613693, 44.209843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889812, 35.797314, 44.294708>,  <34.674557, 36.103352, 44.436153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889812, 35.797314, 44.294708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154800, -0.502116, 0.850833,
		-0.828518, -0.403128, -0.388645,
		0.538139, -0.765093, -0.353609,
		35.051254, 35.567787, 44.188625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272003, 35.571949, 44.687168>,  <34.674557, 36.103352, 44.436153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272003, 35.571949, 44.687168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626606, 35.403568, 44.610321>,  <34.839367, 35.302540, 44.564213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626606, 35.403568, 44.610321>,  <34.272003, 35.571949, 44.687168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626606, 35.403568, 44.610321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065808, -0.525668, 0.848141,
		-0.458015, -0.739238, -0.493709,
		0.886505, -0.420951, -0.192116,
		34.892559, 35.277283, 44.552685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156166, 34.867512, 44.772972>,  <34.272003, 35.571949, 44.687168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156166, 34.867512, 44.772972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550819, 34.925236, 44.803272>,  <34.787609, 34.959869, 44.821453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550819, 34.925236, 44.803272>,  <34.156166, 34.867512, 44.772972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550819, 34.925236, 44.803272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000413, -0.462533, 0.886602,
		0.162984, -0.874778, -0.456289,
		0.986629, 0.144313, 0.075746,
		34.846809, 34.968529, 44.825996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448898, 34.225048, 44.947990>,  <34.156166, 34.867512, 44.772972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448898, 34.225048, 44.947990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725636, 34.488209, 45.067001>,  <34.891678, 34.646103, 45.138409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725636, 34.488209, 45.067001>,  <34.448898, 34.225048, 44.947990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725636, 34.488209, 45.067001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033064, -0.440497, 0.897145,
		0.721290, -0.610846, -0.326508,
		0.691843, 0.657898, 0.297529,
		34.933189, 34.685577, 45.156261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942341, 33.762589, 45.288769>,  <34.448898, 34.225048, 44.947990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942341, 33.762589, 45.288769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012314, 34.134190, 45.419216>,  <35.054298, 34.357151, 45.497486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012314, 34.134190, 45.419216>,  <34.942341, 33.762589, 45.288769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012314, 34.134190, 45.419216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166079, -0.354322, 0.920257,
		0.970472, -0.106825, -0.216272,
		0.174936, 0.929002, 0.326118,
		35.064796, 34.412891, 45.517052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406067, 33.655605, 45.768406>,  <34.942341, 33.762589, 45.288769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406067, 33.655605, 45.768406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290630, 34.032143, 45.838360>,  <35.221367, 34.258064, 45.880333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290630, 34.032143, 45.838360>,  <35.406067, 33.655605, 45.768406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290630, 34.032143, 45.838360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059087, -0.164797, 0.984556,
		0.955628, 0.294466, -0.008063,
		-0.288590, 0.941346, 0.174884,
		35.204052, 34.314545, 45.890823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855614, 33.754971, 46.288364>,  <35.406067, 33.655605, 45.768406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855614, 33.754971, 46.288364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570488, 34.034252, 46.314899>,  <35.399410, 34.201820, 46.330822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570488, 34.034252, 46.314899>,  <35.855614, 33.754971, 46.288364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570488, 34.034252, 46.314899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039250, -0.134151, 0.990183,
		0.700251, 0.703215, 0.123029,
		-0.712816, 0.698206, 0.066338,
		35.356644, 34.243713, 46.334801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973736, 34.037636, 46.877445>,  <35.855614, 33.754971, 46.288364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973736, 34.037636, 46.877445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590252, 34.147663, 46.848560>,  <35.360161, 34.213680, 46.831230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590252, 34.147663, 46.848560>,  <35.973736, 34.037636, 46.877445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590252, 34.147663, 46.848560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111622, -0.130425, 0.985155,
		0.261569, 0.952536, 0.155744,
		-0.958709, 0.275070, -0.072209,
		35.302639, 34.230183, 46.826897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894875, 34.402336, 47.385445>,  <35.973736, 34.037636, 46.877445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894875, 34.402336, 47.385445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526100, 34.286484, 47.282574>,  <35.304836, 34.216972, 47.220852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526100, 34.286484, 47.282574>,  <35.894875, 34.402336, 47.385445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526100, 34.286484, 47.282574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242668, -0.085597, 0.966326,
		-0.301894, 0.953302, 0.008630,
		-0.921939, -0.289634, -0.257177,
		35.249519, 34.199593, 47.205421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451458, 34.841045, 47.692352>,  <35.894875, 34.402336, 47.385445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451458, 34.841045, 47.692352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278610, 34.484077, 47.640408>,  <35.174900, 34.269897, 47.609241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278610, 34.484077, 47.640408>,  <35.451458, 34.841045, 47.692352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278610, 34.484077, 47.640408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249866, -0.019879, 0.968076,
		-0.866510, 0.450772, -0.214394,
		-0.432120, -0.892418, -0.129858,
		35.148975, 34.216351, 47.601452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895653, 34.806877, 48.225700>,  <35.451458, 34.841045, 47.692352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895653, 34.806877, 48.225700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904831, 34.423599, 48.111618>,  <34.910336, 34.193634, 48.043167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904831, 34.423599, 48.111618>,  <34.895653, 34.806877, 48.225700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904831, 34.423599, 48.111618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155512, -0.285231, 0.945758,
		-0.987567, 0.022656, -0.155555,
		0.022942, -0.958191, -0.285209,
		34.911713, 34.136143, 48.026054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300060, 34.483448, 48.522881>,  <34.895653, 34.806877, 48.225700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300060, 34.483448, 48.522881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536957, 34.177795, 48.420620>,  <34.679092, 33.994404, 48.359264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536957, 34.177795, 48.420620>,  <34.300060, 34.483448, 48.522881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536957, 34.177795, 48.420620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054437, -0.354499, 0.933471,
		-0.803923, -0.538919, -0.251544,
		0.592237, -0.764132, -0.255652,
		34.714626, 33.948555, 48.343925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938744, 33.821320, 48.828827>,  <34.300060, 34.483448, 48.522881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938744, 33.821320, 48.828827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319122, 33.701866, 48.796547>,  <34.547352, 33.630196, 48.777180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319122, 33.701866, 48.796547>,  <33.938744, 33.821320, 48.828827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319122, 33.701866, 48.796547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067135, -0.453880, 0.888530,
		-0.301968, -0.839531, -0.451666,
		0.950951, -0.298630, -0.080695,
		34.604408, 33.612278, 48.772339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906944, 33.222317, 49.165886>,  <33.938744, 33.821320, 48.828827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906944, 33.222317, 49.165886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298771, 33.296432, 49.134628>,  <34.533867, 33.340904, 49.115875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298771, 33.296432, 49.134628>,  <33.906944, 33.222317, 49.165886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298771, 33.296432, 49.134628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171799, -0.569112, 0.804113,
		0.104525, -0.801110, -0.589319,
		0.979571, 0.185294, -0.078144,
		34.592644, 33.352020, 49.111183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191925, 32.622643, 49.264488>,  <33.906944, 33.222317, 49.165886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191925, 32.622643, 49.264488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460060, 32.909241, 49.341717>,  <34.620941, 33.081200, 49.388054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460060, 32.909241, 49.341717>,  <34.191925, 32.622643, 49.264488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460060, 32.909241, 49.341717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129349, -0.369029, 0.920373,
		0.730693, -0.591990, -0.340053,
		0.670341, 0.716495, 0.193073,
		34.661163, 33.124187, 49.399639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839691, 32.220482, 49.577156>,  <34.191925, 32.622643, 49.264488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839691, 32.220482, 49.577156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.868515, 32.606335, 49.678577>,  <34.885811, 32.837845, 49.739429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.868515, 32.606335, 49.678577>,  <34.839691, 32.220482, 49.577156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868515, 32.606335, 49.678577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088815, -0.259411, 0.961675,
		0.993438, -0.046782, -0.104368,
		0.072063, 0.964633, 0.253553,
		34.890133, 32.895725, 49.754642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402912, 32.214245, 50.052906>,  <34.839691, 32.220482, 49.577156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402912, 32.214245, 50.052906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223564, 32.566376, 50.114861>,  <35.115955, 32.777653, 50.152035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223564, 32.566376, 50.114861>,  <35.402912, 32.214245, 50.052906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223564, 32.566376, 50.114861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047971, -0.149332, 0.987623,
		0.892562, 0.450246, 0.024725,
		-0.448366, 0.880328, 0.154887,
		35.089054, 32.830475, 50.161327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785946, 32.537575, 50.585903>,  <35.402912, 32.214245, 50.052906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785946, 32.537575, 50.585903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432339, 32.720154, 50.626232>,  <35.220173, 32.829700, 50.650429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432339, 32.720154, 50.626232>,  <35.785946, 32.537575, 50.585903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432339, 32.720154, 50.626232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025861, -0.167610, 0.985514,
		0.466734, 0.873821, 0.136366,
		-0.884020, 0.456446, 0.100827,
		35.167133, 32.857086, 50.656479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833599, 32.877300, 51.193916>,  <35.785946, 32.537575, 50.585903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833599, 32.877300, 51.193916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441040, 32.867020, 51.117809>,  <35.205505, 32.860851, 51.072144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441040, 32.867020, 51.117809>,  <35.833599, 32.877300, 51.193916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441040, 32.867020, 51.117809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174018, -0.299665, 0.938040,
		-0.081130, 0.953698, 0.289616,
		-0.981395, -0.025705, -0.190272,
		35.146622, 32.859310, 51.060726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575619, 33.275970, 51.737312>,  <35.833599, 32.877300, 51.193916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575619, 33.275970, 51.737312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264576, 33.072502, 51.589481>,  <35.077950, 32.950420, 51.500782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264576, 33.072502, 51.589481>,  <35.575619, 33.275970, 51.737312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264576, 33.072502, 51.589481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266769, -0.265356, 0.926510,
		-0.569357, 0.819049, 0.070645,
		-0.777604, -0.508669, -0.369579,
		35.031296, 32.919903, 51.478607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071587, 33.428234, 52.152008>,  <35.575619, 33.275970, 51.737312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071587, 33.428234, 52.152008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.976650, 33.079418, 51.980797>,  <34.919689, 32.870129, 51.878071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.976650, 33.079418, 51.980797>,  <35.071587, 33.428234, 52.152008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976650, 33.079418, 51.980797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234264, -0.376238, 0.896418,
		-0.942756, 0.313029, -0.114992,
		-0.237340, -0.872042, -0.428033,
		34.905449, 32.817806, 51.852386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443775, 33.251308, 52.266987>,  <35.071587, 33.428234, 52.152008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443775, 33.251308, 52.266987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612568, 32.897709, 52.186512>,  <34.713844, 32.685551, 52.138226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612568, 32.897709, 52.186512>,  <34.443775, 33.251308, 52.266987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612568, 32.897709, 52.186512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146439, -0.285458, 0.947138,
		-0.894700, -0.370213, -0.249910,
		0.421981, -0.884000, -0.201186,
		34.739162, 32.632507, 52.126156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939190, 32.707905, 52.488197>,  <34.443775, 33.251308, 52.266987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939190, 32.707905, 52.488197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296364, 32.527897, 52.483223>,  <34.510670, 32.419891, 52.480240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296364, 32.527897, 52.483223>,  <33.939190, 32.707905, 52.488197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296364, 32.527897, 52.483223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232041, -0.483742, 0.843890,
		-0.385778, -0.750654, -0.536372,
		0.892934, -0.450015, -0.012435,
		34.564243, 32.392891, 52.479492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799137, 32.014816, 52.717014>,  <33.939190, 32.707905, 52.488197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799137, 32.014816, 52.717014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185337, 32.081192, 52.797291>,  <34.417057, 32.121017, 52.845459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185337, 32.081192, 52.797291>,  <33.799137, 32.014816, 52.717014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185337, 32.081192, 52.797291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086131, -0.523812, 0.847468,
		0.245755, -0.835514, -0.491447,
		0.965498, 0.165941, 0.200693,
		34.474987, 32.130974, 52.857498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217010, 31.905546, 52.449917>,  <33.799137, 32.014816, 52.717014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217010, 31.905546, 52.449917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878334, 32.066433, 52.589256>,  <32.675129, 32.162964, 52.672859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878334, 32.066433, 52.589256>,  <33.217010, 31.905546, 52.449917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878334, 32.066433, 52.589256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397044, -0.041747, -0.916850,
		-0.354231, -0.914592, 0.195045,
		-0.846686, 0.402218, 0.348344,
		32.624329, 32.187099, 52.693760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715576, 31.425219, 52.240444>,  <33.217010, 31.905546, 52.449917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715576, 31.425219, 52.240444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.521633, 31.770596, 52.296131>,  <32.405270, 31.977821, 52.329544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.521633, 31.770596, 52.296131>,  <32.715576, 31.425219, 52.240444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521633, 31.770596, 52.296131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334957, -0.036279, -0.941535,
		-0.807912, -0.503139, 0.306806,
		-0.484854, 0.863443, 0.139220,
		32.376179, 32.029629, 52.337898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073784, 31.323746, 51.996571>,  <32.715576, 31.425219, 52.240444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073784, 31.323746, 51.996571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097317, 31.721518, 51.961590>,  <32.111435, 31.960180, 51.940601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097317, 31.721518, 51.961590>,  <32.073784, 31.323746, 51.996571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097317, 31.721518, 51.961590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403305, -0.056456, -0.913323,
		-0.913173, 0.089003, 0.397737,
		0.058834, 0.994430, -0.087449,
		32.114967, 32.019848, 51.935356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490517, 31.493980, 51.732922>,  <32.073784, 31.323746, 51.996571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490517, 31.493980, 51.732922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741610, 31.792192, 51.643356>,  <31.892265, 31.971119, 51.589619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741610, 31.792192, 51.643356>,  <31.490517, 31.493980, 51.732922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741610, 31.792192, 51.643356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365260, 0.028090, -0.930481,
		-0.687413, 0.665879, 0.289945,
		0.627733, 0.745530, -0.223910,
		31.929930, 32.015850, 51.576183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159708, 31.972490, 51.214302>,  <31.490517, 31.493980, 51.732922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159708, 31.972490, 51.214302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.549429, 32.053913, 51.175728>,  <31.783262, 32.102768, 51.152584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.549429, 32.053913, 51.175728>,  <31.159708, 31.972490, 51.214302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549429, 32.053913, 51.175728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131120, 0.164451, -0.977631,
		-0.183144, 0.965153, 0.186915,
		0.974303, 0.203556, -0.096433,
		31.841721, 32.114979, 51.146797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096792, 32.473007, 50.801880>,  <31.159708, 31.972490, 51.214302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096792, 32.473007, 50.801880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.483854, 32.375881, 50.774494>,  <31.716091, 32.317604, 50.758060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.483854, 32.375881, 50.774494>,  <31.096792, 32.473007, 50.801880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483854, 32.375881, 50.774494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034264, 0.142388, -0.989218,
		0.249945, 0.959566, 0.129463,
		0.967654, -0.242815, -0.068468,
		31.774151, 32.303036, 50.753952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328875, 32.991005, 50.380497>,  <31.096792, 32.473007, 50.801880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328875, 32.991005, 50.380497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.630407, 32.728390, 50.369934>,  <31.811327, 32.570820, 50.363594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.630407, 32.728390, 50.369934>,  <31.328875, 32.991005, 50.380497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630407, 32.728390, 50.369934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270541, 0.346761, -0.898089,
		0.598787, 0.669863, 0.439019,
		0.753831, -0.656537, -0.026410,
		31.856556, 32.531429, 50.362011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927517, 33.310326, 50.173412>,  <31.328875, 32.991005, 50.380497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927517, 33.310326, 50.173412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028095, 32.933769, 50.083473>,  <32.088444, 32.707836, 50.029510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028095, 32.933769, 50.083473>,  <31.927517, 33.310326, 50.173412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028095, 32.933769, 50.083473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369732, 0.308122, -0.876561,
		0.894467, 0.137275, 0.425539,
		0.251448, -0.941391, -0.224850,
		32.103531, 32.651352, 50.016018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492718, 33.365242, 49.728500>,  <31.927517, 33.310326, 50.173412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492718, 33.365242, 49.728500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419109, 32.977829, 49.661476>,  <32.374943, 32.745380, 49.621262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419109, 32.977829, 49.661476>,  <32.492718, 33.365242, 49.728500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419109, 32.977829, 49.661476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151246, 0.140540, -0.978454,
		0.971215, -0.205403, 0.120624,
		-0.184025, -0.968534, -0.167561,
		32.363903, 32.687267, 49.611206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082371, 32.951069, 49.570194>,  <32.492718, 33.365242, 49.728500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082371, 32.951069, 49.570194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.772686, 32.775948, 49.387363>,  <32.586876, 32.670876, 49.277664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.772686, 32.775948, 49.387363>,  <33.082371, 32.951069, 49.570194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772686, 32.775948, 49.387363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284942, 0.403741, -0.869368,
		0.565153, -0.803318, -0.187834,
		-0.774216, -0.437804, -0.457075,
		32.540421, 32.644608, 49.250240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339390, 32.852894, 48.923923>,  <33.082371, 32.951069, 49.570194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339390, 32.852894, 48.923923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.946266, 32.799675, 48.872715>,  <32.710392, 32.767742, 48.841988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.946266, 32.799675, 48.872715>,  <33.339390, 32.852894, 48.923923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946266, 32.799675, 48.872715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038586, 0.530066, -0.847078,
		0.180561, -0.837454, -0.515819,
		-0.982807, -0.133046, -0.128024,
		32.651424, 32.759762, 48.834309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235809, 32.564167, 48.336353>,  <33.339390, 32.852894, 48.923923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235809, 32.564167, 48.336353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.904530, 32.772835, 48.418278>,  <32.705761, 32.898037, 48.467430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.904530, 32.772835, 48.418278>,  <33.235809, 32.564167, 48.336353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904530, 32.772835, 48.418278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070766, 0.459864, -0.885165,
		-0.555948, -0.718599, -0.417776,
		-0.828199, 0.521670, 0.204808,
		32.656071, 32.929337, 48.479721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903759, 32.511448, 47.749054>,  <33.235809, 32.564167, 48.336353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903759, 32.511448, 47.749054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735622, 32.827656, 47.927219>,  <32.634739, 33.017380, 48.034119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735622, 32.827656, 47.927219>,  <32.903759, 32.511448, 47.749054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735622, 32.827656, 47.927219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083846, 0.454942, -0.886565,
		-0.903484, -0.410004, -0.124949,
		-0.420340, 0.790521, 0.445410,
		32.609520, 33.064812, 48.060844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314396, 32.705654, 47.371708>,  <32.903759, 32.511448, 47.749054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314396, 32.705654, 47.371708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399853, 33.045555, 47.564491>,  <32.451126, 33.249496, 47.680161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399853, 33.045555, 47.564491>,  <32.314396, 32.705654, 47.371708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399853, 33.045555, 47.564491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125604, 0.513146, -0.849061,
		-0.968803, 0.120862, 0.216363,
		0.213645, 0.849749, 0.481957,
		32.463947, 33.300480, 47.709080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748632, 33.055702, 47.182240>,  <32.314396, 32.705654, 47.371708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748632, 33.055702, 47.182240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028908, 33.314781, 47.301918>,  <32.197075, 33.470230, 47.373726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028908, 33.314781, 47.301918>,  <31.748632, 33.055702, 47.182240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028908, 33.314781, 47.301918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179241, 0.565718, -0.804883,
		-0.690583, 0.510345, 0.512487,
		0.700691, 0.647697, 0.299201,
		32.239117, 33.509090, 47.391678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489304, 33.626995, 46.972088>,  <31.748632, 33.055702, 47.182240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489304, 33.626995, 46.972088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873051, 33.727619, 47.023201>,  <32.103298, 33.787994, 47.053871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873051, 33.727619, 47.023201>,  <31.489304, 33.626995, 46.972088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873051, 33.727619, 47.023201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029613, 0.540162, -0.841040,
		-0.280594, 0.803084, 0.525664,
		0.959370, 0.251558, 0.127784,
		32.160862, 33.803085, 47.061535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491560, 34.329826, 47.064392>,  <31.489304, 33.626995, 46.972088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491560, 34.329826, 47.064392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.856962, 34.234272, 46.932671>,  <32.076202, 34.176937, 46.853638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.856962, 34.234272, 46.932671>,  <31.491560, 34.329826, 47.064392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856962, 34.234272, 46.932671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116861, 0.621244, -0.774855,
		0.389683, 0.746316, 0.539592,
		0.913505, -0.238890, -0.329304,
		32.131012, 34.162605, 46.833881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883129, 34.996929, 47.006126>,  <31.491560, 34.329826, 47.064392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883129, 34.996929, 47.006126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073635, 34.733395, 46.773193>,  <32.187939, 34.575275, 46.633434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073635, 34.733395, 46.773193>,  <31.883129, 34.996929, 47.006126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073635, 34.733395, 46.773193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032087, 0.648804, -0.760279,
		0.878717, 0.380778, 0.287861,
		0.476263, -0.658833, -0.582333,
		32.216515, 34.535744, 46.598492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390266, 35.341274, 46.518417>,  <31.883129, 34.996929, 47.006126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390266, 35.341274, 46.518417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375206, 34.983345, 46.340485>,  <32.366169, 34.768589, 46.233727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375206, 34.983345, 46.340485>,  <32.390266, 35.341274, 46.518417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375206, 34.983345, 46.340485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068148, 0.441808, -0.894518,
		0.996964, -0.063997, 0.044345,
		-0.037655, -0.894824, -0.444828,
		32.363911, 34.714897, 46.207035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921417, 35.365097, 46.040009>,  <32.390266, 35.341274, 46.518417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921417, 35.365097, 46.040009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673809, 35.081726, 45.904396>,  <32.525246, 34.911705, 45.823029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673809, 35.081726, 45.904396>,  <32.921417, 35.365097, 46.040009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673809, 35.081726, 45.904396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128123, 0.334807, -0.933535,
		0.774853, -0.621316, -0.116487,
		-0.619022, -0.708428, -0.339032,
		32.488102, 34.869198, 45.802685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.644943, 32.156235, 42.611248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.545139, 32.542587, 42.639042>,  <42.485256, 32.774399, 42.655716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.545139, 32.542587, 42.639042>,  <42.644943, 32.156235, 42.611248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545139, 32.542587, 42.639042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107366, 0.043715, -0.993258,
		-0.962403, -0.255283, 0.092795,
		-0.249506, 0.965878, 0.069480,
		42.470287, 32.832352, 42.659885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115971, 32.259190, 42.198627>,  <42.644943, 32.156235, 42.611248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115971, 32.259190, 42.198627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282108, 32.619186, 42.251545>,  <42.381790, 32.835186, 42.283295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282108, 32.619186, 42.251545>,  <42.115971, 32.259190, 42.198627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282108, 32.619186, 42.251545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092453, 0.186444, -0.978106,
		-0.904956, 0.394016, 0.160645,
		0.415340, 0.899995, 0.132296,
		42.406712, 32.889183, 42.291233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917747, 32.572315, 41.620594>,  <42.115971, 32.259190, 42.198627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917747, 32.572315, 41.620594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183041, 32.837353, 41.759785>,  <42.342216, 32.996376, 41.843300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183041, 32.837353, 41.759785>,  <41.917747, 32.572315, 41.620594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183041, 32.837353, 41.759785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312900, 0.176871, -0.933172,
		-0.679864, 0.727792, -0.090020,
		0.663233, 0.662598, 0.347974,
		42.382011, 33.036133, 41.864178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734631, 33.245277, 41.321690>,  <41.917747, 32.572315, 41.620594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734631, 33.245277, 41.321690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.116768, 33.266216, 41.438015>,  <42.346050, 33.278782, 41.507809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.116768, 33.266216, 41.438015>,  <41.734631, 33.245277, 41.321690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116768, 33.266216, 41.438015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273983, 0.211634, -0.938160,
		-0.110657, 0.975946, 0.187841,
		0.955347, 0.052349, 0.290812,
		42.403374, 33.281921, 41.525257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992180, 33.833549, 41.092918>,  <41.734631, 33.245277, 41.321690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992180, 33.833549, 41.092918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326950, 33.626400, 41.163765>,  <42.527813, 33.502110, 41.206272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.326950, 33.626400, 41.163765>,  <41.992180, 33.833549, 41.092918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326950, 33.626400, 41.163765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377243, 0.311357, -0.872207,
		0.396548, 0.796783, 0.455946,
		0.836921, -0.517874, 0.177112,
		42.578026, 33.471039, 41.216900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612564, 34.198112, 40.961983>,  <41.992180, 33.833549, 41.092918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612564, 34.198112, 40.961983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.780331, 33.835014, 40.958298>,  <42.880989, 33.617153, 40.956085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.780331, 33.835014, 40.958298>,  <42.612564, 34.198112, 40.961983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780331, 33.835014, 40.958298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436502, 0.210561, -0.874717,
		0.795964, 0.362845, 0.484546,
		0.419413, -0.907749, -0.009216,
		42.906155, 33.562691, 40.955532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320988, 34.318764, 40.941780>,  <42.612564, 34.198112, 40.961983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320988, 34.318764, 40.941780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190262, 33.977280, 40.779606>,  <43.111828, 33.772388, 40.682301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190262, 33.977280, 40.779606>,  <43.320988, 34.318764, 40.941780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190262, 33.977280, 40.779606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321521, 0.302969, -0.897125,
		0.888717, -0.423546, 0.175472,
		-0.326811, -0.853709, -0.405432,
		43.092220, 33.721169, 40.657974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734299, 34.289909, 40.363522>,  <43.320988, 34.318764, 40.941780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734299, 34.289909, 40.363522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476788, 33.992130, 40.292702>,  <43.322281, 33.813465, 40.250210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476788, 33.992130, 40.292702>,  <43.734299, 34.289909, 40.363522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476788, 33.992130, 40.292702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216245, 0.044952, -0.975304,
		0.734018, -0.666170, 0.132043,
		-0.643782, -0.744444, -0.177052,
		43.283653, 33.768799, 40.239586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047558, 33.777534, 39.968288>,  <43.734299, 34.289909, 40.363522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047558, 33.777534, 39.968288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662327, 33.735474, 39.869160>,  <43.431187, 33.710239, 39.809681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662327, 33.735474, 39.869160>,  <44.047558, 33.777534, 39.968288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662327, 33.735474, 39.869160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226472, 0.181250, -0.957005,
		0.145542, -0.977800, -0.150746,
		-0.963082, -0.105144, -0.247824,
		43.373402, 33.703930, 39.794811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061550, 33.417034, 39.328434>,  <44.047558, 33.777534, 39.968288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061550, 33.417034, 39.328434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697594, 33.582726, 39.337555>,  <43.479221, 33.682140, 39.343029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697594, 33.582726, 39.337555>,  <44.061550, 33.417034, 39.328434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697594, 33.582726, 39.337555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094628, 0.260747, -0.960758,
		-0.403921, -0.872023, -0.276448,
		-0.909886, 0.414230, 0.022803,
		43.424629, 33.706993, 39.344395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848129, 33.212914, 38.699528>,  <44.061550, 33.417034, 39.328434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848129, 33.212914, 38.699528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588459, 33.504417, 38.786690>,  <43.432659, 33.679321, 38.838985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588459, 33.504417, 38.786690>,  <43.848129, 33.212914, 38.699528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588459, 33.504417, 38.786690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054848, 0.240877, -0.969005,
		-0.758661, -0.641003, -0.116400,
		-0.649173, 0.728762, 0.217902,
		43.393707, 33.723045, 38.852058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371227, 33.211987, 38.212646>,  <43.848129, 33.212914, 38.699528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371227, 33.211987, 38.212646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347546, 33.583996, 38.357723>,  <43.333336, 33.807201, 38.444771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347546, 33.583996, 38.357723>,  <43.371227, 33.211987, 38.212646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347546, 33.583996, 38.357723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152014, 0.350693, -0.924071,
		-0.986603, -0.109846, 0.120614,
		-0.059207, 0.930026, 0.362693,
		43.329784, 33.863003, 38.466530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691154, 33.570663, 38.084248>,  <43.371227, 33.211987, 38.212646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691154, 33.570663, 38.084248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946838, 33.871365, 38.149097>,  <43.100246, 34.051785, 38.188007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946838, 33.871365, 38.149097>,  <42.691154, 33.570663, 38.084248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946838, 33.871365, 38.149097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130474, 0.313765, -0.940494,
		-0.757887, 0.580016, 0.298644,
		0.639205, 0.751754, 0.162121,
		43.138599, 34.096889, 38.197735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373005, 34.321018, 37.921555>,  <42.691154, 33.570663, 38.084248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373005, 34.321018, 37.921555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.771374, 34.344795, 37.894413>,  <43.010395, 34.359062, 37.878128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.771374, 34.344795, 37.894413>,  <42.373005, 34.321018, 37.921555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771374, 34.344795, 37.894413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085840, 0.393278, -0.915404,
		-0.027731, 0.917496, 0.396778,
		0.995923, 0.059445, -0.067852,
		43.070152, 34.362629, 37.874058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455318, 35.117981, 37.751049>,  <42.373005, 34.321018, 37.921555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455318, 35.117981, 37.751049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796772, 34.945187, 37.634632>,  <43.001644, 34.841511, 37.564781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796772, 34.945187, 37.634632>,  <42.455318, 35.117981, 37.751049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796772, 34.945187, 37.634632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038218, 0.505306, -0.862093,
		0.519477, 0.747031, 0.414835,
		0.853629, -0.431984, -0.291045,
		43.052860, 34.815590, 37.547318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846832, 35.667923, 37.451805>,  <42.455318, 35.117981, 37.751049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846832, 35.667923, 37.451805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019108, 35.337925, 37.305443>,  <43.122475, 35.139927, 37.217625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019108, 35.337925, 37.305443>,  <42.846832, 35.667923, 37.451805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019108, 35.337925, 37.305443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099952, 0.446543, -0.889162,
		0.896948, 0.346381, 0.274781,
		0.430690, -0.824997, -0.365904,
		43.148315, 35.090427, 37.195671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319565, 35.957012, 36.908489>,  <42.846832, 35.667923, 37.451805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319565, 35.957012, 36.908489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.270405, 35.570705, 36.817108>,  <43.240910, 35.338921, 36.762280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.270405, 35.570705, 36.817108>,  <43.319565, 35.957012, 36.908489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270405, 35.570705, 36.817108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077583, 0.220145, -0.972377,
		0.989382, -0.137228, 0.047871,
		-0.122898, -0.965766, -0.228454,
		43.233536, 35.280975, 36.748573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862331, 35.777344, 36.435333>,  <43.319565, 35.957012, 36.908489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862331, 35.777344, 36.435333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570984, 35.509624, 36.376659>,  <43.396175, 35.348991, 36.341454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570984, 35.509624, 36.376659>,  <43.862331, 35.777344, 36.435333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570984, 35.509624, 36.376659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009389, 0.223810, -0.974588,
		0.685124, -0.708479, -0.169300,
		-0.728366, -0.669303, -0.146686,
		43.352474, 35.308834, 36.332653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052044, 35.454910, 35.874573>,  <43.862331, 35.777344, 36.435333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052044, 35.454910, 35.874573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.671967, 35.330322, 35.878880>,  <43.443920, 35.255569, 35.881466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.671967, 35.330322, 35.878880>,  <44.052044, 35.454910, 35.874573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671967, 35.330322, 35.878880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044660, 0.101874, -0.993794,
		0.308441, -0.944779, -0.110710,
		-0.950195, -0.311472, 0.010771,
		43.386909, 35.236881, 35.882111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953228, 34.823689, 35.388252>,  <44.052044, 35.454910, 35.874573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953228, 34.823689, 35.388252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594872, 34.996117, 35.431236>,  <43.379856, 35.099575, 35.457027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594872, 34.996117, 35.431236>,  <43.953228, 34.823689, 35.388252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594872, 34.996117, 35.431236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067377, 0.107239, -0.991948,
		-0.439126, -0.895922, -0.067031,
		-0.895896, 0.431073, 0.107456,
		43.326103, 35.125439, 35.463474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683765, 34.961544, 35.701759>,  <43.953228, 34.823689, 35.388252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683765, 34.961544, 35.701759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.024788, 34.754353, 35.673904>,  <45.229401, 34.630039, 35.657192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.024788, 34.754353, 35.673904>,  <44.683765, 34.961544, 35.701759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024788, 34.754353, 35.673904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341346, -0.652749, 0.676315,
		-0.395772, -0.552825, -0.733314,
		0.852554, -0.517980, -0.069635,
		45.280556, 34.598957, 35.653015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559071, 34.400600, 36.173084>,  <44.683765, 34.961544, 35.701759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559071, 34.400600, 36.173084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924580, 34.314976, 36.034988>,  <45.143887, 34.263599, 35.952129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924580, 34.314976, 36.034988>,  <44.559071, 34.400600, 36.173084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924580, 34.314976, 36.034988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038677, -0.891872, 0.450632,
		-0.404378, -0.398423, -0.823248,
		0.913774, -0.214066, -0.345244,
		45.198711, 34.250755, 35.931416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457054, 33.911236, 35.783585>,  <44.559071, 34.400600, 36.173084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457054, 33.911236, 35.783585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820442, 33.933788, 35.949238>,  <45.038475, 33.947319, 36.048630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820442, 33.933788, 35.949238>,  <44.457054, 33.911236, 35.783585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820442, 33.933788, 35.949238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173061, -0.851186, 0.495513,
		0.380442, -0.521828, -0.763518,
		0.908468, 0.056379, 0.414135,
		45.092983, 33.950703, 36.073479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632351, 33.257027, 35.816956>,  <44.457054, 33.911236, 35.783585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632351, 33.257027, 35.816956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.895672, 33.426308, 36.065968>,  <45.053665, 33.527878, 36.215374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.895672, 33.426308, 36.065968>,  <44.632351, 33.257027, 35.816956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895672, 33.426308, 36.065968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013266, -0.820347, 0.571712,
		0.752639, -0.384616, -0.534420,
		0.658299, 0.423204, 0.622528,
		45.093163, 33.553268, 36.252728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024200, 32.698444, 36.053165>,  <44.632351, 33.257027, 35.816956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024200, 32.698444, 36.053165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.080544, 32.988358, 36.322937>,  <45.114349, 33.162304, 36.484798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.080544, 32.988358, 36.322937>,  <45.024200, 32.698444, 36.053165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080544, 32.988358, 36.322937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014905, -0.682693, 0.730553,
		0.989918, -0.092849, -0.106962,
		0.140853, 0.724782, 0.674427,
		45.122799, 33.205791, 36.525265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533646, 32.500015, 36.465820>,  <45.024200, 32.698444, 36.053165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533646, 32.500015, 36.465820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335262, 32.755539, 36.701088>,  <45.216232, 32.908855, 36.842247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335262, 32.755539, 36.701088>,  <45.533646, 32.500015, 36.465820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335262, 32.755539, 36.701088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091934, -0.634909, 0.767097,
		0.863465, 0.434522, 0.256161,
		-0.495960, 0.638812, 0.588169,
		45.186474, 32.947182, 36.877541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903553, 32.459423, 37.027458>,  <45.533646, 32.500015, 36.465820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903553, 32.459423, 37.027458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568699, 32.636143, 37.156467>,  <45.367786, 32.742172, 37.233871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568699, 32.636143, 37.156467>,  <45.903553, 32.459423, 37.027458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568699, 32.636143, 37.156467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095494, -0.462535, 0.881443,
		0.538596, 0.768686, 0.345016,
		-0.837135, 0.441795, 0.322524,
		45.317558, 32.768681, 37.253223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064152, 32.590797, 37.655945>,  <45.903553, 32.459423, 37.027458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064152, 32.590797, 37.655945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.664883, 32.614914, 37.657024>,  <45.425320, 32.629383, 37.657673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.664883, 32.614914, 37.657024>,  <46.064152, 32.590797, 37.655945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664883, 32.614914, 37.657024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033800, -0.595598, 0.802572,
		0.049996, 0.801017, 0.596550,
		-0.998177, 0.060288, 0.002703,
		45.365429, 32.632999, 37.657837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859013, 32.890797, 38.294708>,  <46.064152, 32.590797, 37.655945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859013, 32.890797, 38.294708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.530983, 32.700619, 38.167316>,  <45.334164, 32.586514, 38.090881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.530983, 32.700619, 38.167316>,  <45.859013, 32.890797, 38.294708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530983, 32.700619, 38.167316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187436, -0.302673, 0.934482,
		-0.540690, 0.826040, 0.159099,
		-0.820074, -0.475444, -0.318482,
		45.284962, 32.557987, 38.071774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437771, 33.054619, 38.762611>,  <45.859013, 32.890797, 38.294708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437771, 33.054619, 38.762611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284191, 32.730621, 38.585300>,  <45.192043, 32.536224, 38.478916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284191, 32.730621, 38.585300>,  <45.437771, 33.054619, 38.762611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284191, 32.730621, 38.585300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231249, -0.380416, 0.895437,
		-0.893927, 0.446311, -0.041249,
		-0.383952, -0.809994, -0.443273,
		45.169006, 32.487621, 38.452320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753750, 32.855942, 39.075119>,  <45.437771, 33.054619, 38.762611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753750, 32.855942, 39.075119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.884415, 32.511162, 38.920025>,  <44.962814, 32.304295, 38.826969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.884415, 32.511162, 38.920025>,  <44.753750, 32.855942, 39.075119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884415, 32.511162, 38.920025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214634, -0.467177, 0.857716,
		-0.920447, -0.196963, -0.337613,
		0.326664, -0.861946, -0.387737,
		44.982414, 32.252579, 38.803703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243416, 32.516888, 39.121487>,  <44.753750, 32.855942, 39.075119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243416, 32.516888, 39.121487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549458, 32.260159, 39.100784>,  <44.733082, 32.106121, 39.088364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549458, 32.260159, 39.100784>,  <44.243416, 32.516888, 39.121487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549458, 32.260159, 39.100784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393856, -0.530060, 0.750943,
		-0.509407, -0.554164, -0.658336,
		0.765103, -0.641825, -0.051755,
		44.778988, 32.067612, 39.085258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973114, 31.883371, 39.142242>,  <44.243416, 32.516888, 39.121487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973114, 31.883371, 39.142242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349453, 31.826263, 39.265160>,  <44.575256, 31.791998, 39.338909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349453, 31.826263, 39.265160>,  <43.973114, 31.883371, 39.142242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349453, 31.826263, 39.265160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336424, -0.501736, 0.796919,
		0.040403, -0.853157, -0.520087,
		0.940844, -0.142771, 0.307294,
		44.631706, 31.783432, 39.357349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993805, 31.216948, 39.441177>,  <43.973114, 31.883371, 39.142242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993805, 31.216948, 39.441177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.323696, 31.395609, 39.579926>,  <44.521633, 31.502806, 39.663174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.323696, 31.395609, 39.579926>,  <43.993805, 31.216948, 39.441177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323696, 31.395609, 39.579926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155831, -0.410136, 0.898613,
		0.543634, -0.795167, -0.268649,
		0.824730, 0.446653, 0.346875,
		44.571114, 31.529604, 39.683987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377617, 30.673941, 39.849247>,  <43.993805, 31.216948, 39.441177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377617, 30.673941, 39.849247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482544, 31.037815, 39.978035>,  <44.545502, 31.256140, 40.055305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482544, 31.037815, 39.978035>,  <44.377617, 30.673941, 39.849247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482544, 31.037815, 39.978035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278858, -0.247955, 0.927770,
		0.923812, -0.333153, 0.188630,
		0.262317, 0.909686, 0.321966,
		44.561237, 31.310720, 40.074623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813297, 30.574535, 40.492523>,  <44.377617, 30.673941, 39.849247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813297, 30.574535, 40.492523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677433, 30.950739, 40.489082>,  <44.595913, 31.176460, 40.487019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677433, 30.950739, 40.489082>,  <44.813297, 30.574535, 40.492523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677433, 30.950739, 40.489082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249099, -0.081132, 0.965074,
		0.906962, 0.329941, 0.261837,
		-0.339660, 0.940509, -0.008605,
		44.575535, 31.232891, 40.486500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099739, 30.838640, 41.105110>,  <44.813297, 30.574535, 40.492523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099739, 30.838640, 41.105110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.851471, 31.147905, 41.052982>,  <44.702511, 31.333466, 41.021706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.851471, 31.147905, 41.052982>,  <45.099739, 30.838640, 41.105110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851471, 31.147905, 41.052982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266118, -0.051386, 0.962570,
		0.737529, 0.632120, 0.237646,
		-0.620671, 0.773165, -0.130320,
		44.665268, 31.379854, 41.013885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157299, 31.287241, 41.663887>,  <45.099739, 30.838640, 41.105110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157299, 31.287241, 41.663887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784882, 31.365826, 41.540878>,  <44.561432, 31.412977, 41.467075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784882, 31.365826, 41.540878>,  <45.157299, 31.287241, 41.663887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784882, 31.365826, 41.540878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340896, -0.167544, 0.925051,
		0.130216, 0.966090, 0.222964,
		-0.931039, 0.196464, -0.307520,
		44.505569, 31.424765, 41.448624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941116, 31.716602, 42.127785>,  <45.157299, 31.287241, 41.663887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941116, 31.716602, 42.127785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598679, 31.585127, 41.968250>,  <44.393215, 31.506241, 41.872528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598679, 31.585127, 41.968250>,  <44.941116, 31.716602, 42.127785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598679, 31.585127, 41.968250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347619, -0.204857, 0.914983,
		-0.382449, 0.921953, 0.061118,
		-0.856092, -0.328688, -0.398836,
		44.341850, 31.486521, 41.848598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465210, 31.940716, 42.661320>,  <44.941116, 31.716602, 42.127785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465210, 31.940716, 42.661320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292130, 31.666836, 42.426727>,  <44.188282, 31.502508, 42.285973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292130, 31.666836, 42.426727>,  <44.465210, 31.940716, 42.661320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292130, 31.666836, 42.426727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389533, -0.444683, 0.806549,
		-0.813042, 0.577444, -0.074301,
		-0.432697, -0.684702, -0.586479,
		44.162319, 31.461426, 42.250782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695938, 31.970127, 42.795010>,  <44.465210, 31.940716, 42.661320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695938, 31.970127, 42.795010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.815556, 31.614956, 42.655209>,  <43.887325, 31.401854, 42.571327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.815556, 31.614956, 42.655209>,  <43.695938, 31.970127, 42.795010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815556, 31.614956, 42.655209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353422, -0.443280, 0.823769,
		-0.886378, -0.122820, -0.446373,
		0.299044, -0.887929, -0.349507,
		43.905270, 31.348577, 42.550358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166908, 31.543924, 43.075161>,  <43.695938, 31.970127, 42.795010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166908, 31.543924, 43.075161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456295, 31.282047, 42.987541>,  <43.629925, 31.124922, 42.934971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456295, 31.282047, 42.987541>,  <43.166908, 31.543924, 43.075161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456295, 31.282047, 42.987541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246612, -0.541438, 0.803759,
		-0.644813, -0.527470, -0.553165,
		0.723463, -0.654691, -0.219046,
		43.673332, 31.085640, 42.921829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.047630, 36.454296, 41.202679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751762, 36.195278, 41.275967>,  <35.574242, 36.039867, 41.319939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751762, 36.195278, 41.275967>,  <36.047630, 36.454296, 41.202679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751762, 36.195278, 41.275967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168600, -0.085269, -0.981989,
		0.651507, -0.757240, -0.046105,
		-0.739671, -0.647546, 0.183224,
		35.529861, 36.001015, 41.330933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209930, 35.917427, 40.749207>,  <36.047630, 36.454296, 41.202679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209930, 35.917427, 40.749207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824146, 35.858387, 40.836876>,  <35.592678, 35.822964, 40.889477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824146, 35.858387, 40.836876>,  <36.209930, 35.917427, 40.749207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824146, 35.858387, 40.836876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216209, -0.036059, -0.975681,
		0.151912, -0.988390, 0.002865,
		-0.964457, -0.147598, 0.219177,
		35.534809, 35.814106, 40.902630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002625, 35.412296, 40.267380>,  <36.209930, 35.917427, 40.749207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002625, 35.412296, 40.267380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663738, 35.585350, 40.390701>,  <35.460407, 35.689182, 40.464695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663738, 35.585350, 40.390701>,  <36.002625, 35.412296, 40.267380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663738, 35.585350, 40.390701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358319, -0.036899, -0.932869,
		-0.392216, -0.900814, 0.186283,
		-0.847215, 0.432635, 0.308307,
		35.409573, 35.715141, 40.483192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552238, 35.070221, 39.961582>,  <36.002625, 35.412296, 40.267380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552238, 35.070221, 39.961582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345528, 35.405315, 40.032166>,  <35.221500, 35.606373, 40.074516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345528, 35.405315, 40.032166>,  <35.552238, 35.070221, 39.961582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345528, 35.405315, 40.032166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262335, 0.041244, -0.964095,
		-0.814935, -0.544515, 0.198454,
		-0.516779, 0.837737, 0.176457,
		35.190495, 35.656635, 40.085102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963547, 35.008476, 39.595154>,  <35.552238, 35.070221, 39.961582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963547, 35.008476, 39.595154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004936, 35.402512, 39.650146>,  <35.029770, 35.638931, 39.683144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004936, 35.402512, 39.650146>,  <34.963547, 35.008476, 39.595154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004936, 35.402512, 39.650146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169762, 0.153692, -0.973427,
		-0.980038, 0.077388, 0.183133,
		0.103478, 0.985084, 0.137486,
		35.035980, 35.698036, 39.691391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484867, 35.294689, 39.255825>,  <34.963547, 35.008476, 39.595154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484867, 35.294689, 39.255825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739429, 35.600338, 39.297977>,  <34.892166, 35.783730, 39.323269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739429, 35.600338, 39.297977>,  <34.484867, 35.294689, 39.255825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739429, 35.600338, 39.297977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074767, 0.074870, -0.994387,
		-0.767725, 0.640710, -0.009484,
		0.636403, 0.764124, 0.105383,
		34.930351, 35.829575, 39.329594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210938, 35.841671, 38.759624>,  <34.484867, 35.294689, 39.255825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210938, 35.841671, 38.759624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588936, 35.923492, 38.861710>,  <34.815735, 35.972584, 38.922962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588936, 35.923492, 38.861710>,  <34.210938, 35.841671, 38.759624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588936, 35.923492, 38.861710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269680, -0.045791, -0.961861,
		-0.185065, 0.977784, -0.098436,
		0.944999, 0.204553, 0.255215,
		34.872437, 35.984859, 38.938274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403275, 36.275265, 38.313889>,  <34.210938, 35.841671, 38.759624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403275, 36.275265, 38.313889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776306, 36.209362, 38.442360>,  <35.000126, 36.169819, 38.519444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776306, 36.209362, 38.442360>,  <34.403275, 36.275265, 38.313889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776306, 36.209362, 38.442360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310799, -0.086050, -0.946573,
		0.183591, 0.982574, -0.029043,
		0.932576, -0.164755, 0.321181,
		35.056080, 36.159935, 38.538715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689312, 36.531857, 37.736145>,  <34.403275, 36.275265, 38.313889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689312, 36.531857, 37.736145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979256, 36.335468, 37.929440>,  <35.153221, 36.217636, 38.045418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979256, 36.335468, 37.929440>,  <34.689312, 36.531857, 37.736145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979256, 36.335468, 37.929440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441363, -0.207605, -0.872983,
		0.528933, 0.846076, 0.066212,
		0.724864, -0.490973, 0.483236,
		35.196716, 36.188175, 38.074409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253441, 36.922577, 37.631405>,  <34.689312, 36.531857, 37.736145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253441, 36.922577, 37.631405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359676, 36.547428, 37.720718>,  <35.423416, 36.322338, 37.774307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359676, 36.547428, 37.720718>,  <35.253441, 36.922577, 37.631405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359676, 36.547428, 37.720718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377026, -0.112113, -0.919392,
		0.887307, 0.328362, 0.323827,
		0.265588, -0.937875, 0.223279,
		35.439354, 36.266068, 37.787701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875011, 36.810307, 37.387844>,  <35.253441, 36.922577, 37.631405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875011, 36.810307, 37.387844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758820, 36.428410, 37.413425>,  <35.689106, 36.199272, 37.428776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758820, 36.428410, 37.413425>,  <35.875011, 36.810307, 37.387844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758820, 36.428410, 37.413425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416748, -0.186389, -0.889708,
		0.861362, -0.231787, 0.452029,
		-0.290476, -0.954743, 0.063952,
		35.671677, 36.141987, 37.432610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503059, 36.376995, 37.398750>,  <35.875011, 36.810307, 37.387844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503059, 36.376995, 37.398750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187492, 36.165325, 37.273800>,  <35.998150, 36.038322, 37.198830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187492, 36.165325, 37.273800>,  <36.503059, 36.376995, 37.398750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187492, 36.165325, 37.273800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427419, -0.107323, -0.897661,
		0.441496, -0.841697, 0.310850,
		-0.788920, -0.529177, -0.312375,
		35.950817, 36.006573, 37.180088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820171, 35.832157, 37.099033>,  <36.503059, 36.376995, 37.398750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820171, 35.832157, 37.099033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454182, 35.902359, 36.953693>,  <36.234589, 35.944481, 36.866489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454182, 35.902359, 36.953693>,  <36.820171, 35.832157, 37.099033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454182, 35.902359, 36.953693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371583, 0.015407, -0.928272,
		-0.157323, -0.984357, -0.079314,
		-0.914973, 0.175510, -0.363347,
		36.179691, 35.955013, 36.844688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447731, 35.429287, 36.641201>,  <36.820171, 35.832157, 37.099033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447731, 35.429287, 36.641201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488667, 35.450523, 37.038532>,  <36.513226, 35.463264, 37.276932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488667, 35.450523, 37.038532>,  <36.447731, 35.429287, 36.641201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488667, 35.450523, 37.038532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742793, -0.660120, 0.111807,
		0.661654, -0.749282, -0.028119,
		0.102337, 0.053091, 0.993332,
		36.519367, 35.466450, 37.336533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207287, 35.237251, 36.602108>,  <36.447731, 35.429287, 36.641201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207287, 35.237251, 36.602108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244362, 35.430359, 36.253777>,  <37.266605, 35.546223, 36.044777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244362, 35.430359, 36.253777>,  <37.207287, 35.237251, 36.602108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244362, 35.430359, 36.253777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650278, 0.632966, 0.420110,
		0.754021, -0.605221, -0.255264,
		0.092685, 0.482765, -0.870832,
		37.272167, 35.575188, 35.992527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893646, 35.099030, 36.914726>,  <37.207287, 35.237251, 36.602108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893646, 35.099030, 36.914726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202927, 34.943230, 37.114906>,  <38.388496, 34.849751, 37.235016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202927, 34.943230, 37.114906>,  <37.893646, 35.099030, 36.914726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202927, 34.943230, 37.114906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631852, -0.405874, 0.660325,
		-0.054078, -0.826774, -0.559929,
		0.773200, -0.389502, 0.500450,
		38.434887, 34.826378, 37.265041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759846, 34.335510, 36.790417>,  <37.893646, 35.099030, 36.914726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759846, 34.335510, 36.790417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992294, 34.341328, 37.115891>,  <38.131763, 34.344818, 37.311176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992294, 34.341328, 37.115891>,  <37.759846, 34.335510, 36.790417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992294, 34.341328, 37.115891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714636, -0.469225, 0.518771,
		0.389347, -0.882959, -0.262282,
		0.581123, 0.014546, 0.813686,
		38.166630, 34.345692, 37.359997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847836, 33.633820, 37.021481>,  <37.759846, 34.335510, 36.790417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847836, 33.633820, 37.021481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926777, 33.880180, 37.326561>,  <37.974140, 34.027996, 37.509609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926777, 33.880180, 37.326561>,  <37.847836, 33.633820, 37.021481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926777, 33.880180, 37.326561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470338, -0.623128, 0.624895,
		0.860137, -0.482050, 0.166710,
		0.197349, 0.615905, 0.762702,
		37.985981, 34.064953, 37.555370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136700, 33.210796, 37.494244>,  <37.847836, 33.633820, 37.021481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136700, 33.210796, 37.494244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978775, 33.531052, 37.674515>,  <37.884022, 33.723206, 37.782677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978775, 33.531052, 37.674515>,  <38.136700, 33.210796, 37.494244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978775, 33.531052, 37.674515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456837, -0.596659, 0.659771,
		0.797135, 0.054599, 0.601327,
		-0.394810, 0.800635, 0.450675,
		37.860332, 33.771244, 37.809719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223816, 33.007782, 38.120876>,  <38.136700, 33.210796, 37.494244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223816, 33.007782, 38.120876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943306, 33.292923, 38.124023>,  <37.775002, 33.464008, 38.125912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943306, 33.292923, 38.124023>,  <38.223816, 33.007782, 38.120876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943306, 33.292923, 38.124023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536107, -0.534611, 0.653285,
		0.469900, 0.453913, 0.757071,
		-0.701273, 0.712850, 0.007868,
		37.732925, 33.506779, 38.126385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947445, 32.971817, 38.778385>,  <38.223816, 33.007782, 38.120876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947445, 32.971817, 38.778385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666199, 33.180408, 38.585018>,  <37.497452, 33.305565, 38.468998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666199, 33.180408, 38.585018>,  <37.947445, 32.971817, 38.778385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666199, 33.180408, 38.585018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710824, -0.497190, 0.497526,
		0.019101, 0.693440, 0.720262,
		-0.703111, 0.521482, -0.483417,
		37.455265, 33.336853, 38.439995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509300, 33.058910, 39.308083>,  <37.947445, 32.971817, 38.778385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509300, 33.058910, 39.308083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288219, 33.168598, 38.993294>,  <37.155571, 33.234413, 38.804420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288219, 33.168598, 38.993294>,  <37.509300, 33.058910, 39.308083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288219, 33.168598, 38.993294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818168, -0.358149, 0.449813,
		-0.158504, 0.892487, 0.422309,
		-0.552701, 0.274222, -0.786971,
		37.122410, 33.250866, 38.757202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964500, 33.424091, 39.588619>,  <37.509300, 33.058910, 39.308083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964500, 33.424091, 39.588619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870132, 33.281071, 39.227177>,  <36.813511, 33.195259, 39.010311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870132, 33.281071, 39.227177>,  <36.964500, 33.424091, 39.588619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870132, 33.281071, 39.227177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837371, -0.397033, 0.375731,
		-0.493105, 0.845292, -0.205739,
		-0.235917, -0.357555, -0.903602,
		36.799358, 33.173805, 38.956097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306160, 33.639019, 39.416313>,  <36.964500, 33.424091, 39.588619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306160, 33.639019, 39.416313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362980, 33.318302, 39.184120>,  <36.397072, 33.125874, 39.044804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362980, 33.318302, 39.184120>,  <36.306160, 33.639019, 39.416313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362980, 33.318302, 39.184120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815034, -0.427527, 0.391075,
		-0.561730, 0.417558, -0.714216,
		0.142050, -0.801789, -0.580479,
		36.405594, 33.077766, 39.009975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674099, 33.409885, 39.079620>,  <36.306160, 33.639019, 39.416313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674099, 33.409885, 39.079620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915489, 33.091225, 39.093254>,  <36.060326, 32.900028, 39.101437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915489, 33.091225, 39.093254>,  <35.674099, 33.409885, 39.079620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915489, 33.091225, 39.093254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710661, -0.517967, 0.476101,
		-0.361630, -0.311540, -0.878730,
		0.603477, -0.796651, 0.034087,
		36.096531, 32.852230, 39.103481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187790, 32.906403, 39.070541>,  <35.674099, 33.409885, 39.079620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187790, 32.906403, 39.070541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527718, 32.731785, 39.188683>,  <35.731674, 32.627014, 39.259567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527718, 32.731785, 39.188683>,  <35.187790, 32.906403, 39.070541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527718, 32.731785, 39.188683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506596, -0.521819, 0.686342,
		-0.145497, -0.732893, -0.664604,
		0.849818, -0.436546, 0.295358,
		35.782661, 32.600822, 39.277290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873257, 32.439266, 39.393826>,  <35.187790, 32.906403, 39.070541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873257, 32.439266, 39.393826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254326, 32.366653, 39.491367>,  <35.482967, 32.323086, 39.549892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254326, 32.366653, 39.491367>,  <34.873257, 32.439266, 39.393826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254326, 32.366653, 39.491367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291449, -0.317246, 0.902448,
		-0.086464, -0.930806, -0.355139,
		0.952671, -0.181534, 0.243852,
		35.540127, 32.312195, 39.564522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963917, 31.761972, 39.664684>,  <34.873257, 32.439266, 39.393826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963917, 31.761972, 39.664684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267918, 31.959732, 39.833431>,  <35.450317, 32.078388, 39.934677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267918, 31.959732, 39.833431>,  <34.963917, 31.761972, 39.664684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267918, 31.959732, 39.833431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302661, -0.305187, 0.902916,
		0.575150, -0.813897, -0.082306,
		0.760000, 0.494401, 0.421863,
		35.495918, 32.108051, 39.959991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815079, 31.083242, 39.327240>,  <34.963917, 31.761972, 39.664684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815079, 31.083242, 39.327240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441105, 30.942881, 39.348244>,  <34.216721, 30.858664, 39.360847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441105, 30.942881, 39.348244>,  <34.815079, 31.083242, 39.327240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441105, 30.942881, 39.348244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225627, 0.473771, -0.851254,
		0.273834, -0.807716, -0.522120,
		-0.934937, -0.350907, 0.052508,
		34.160625, 30.837608, 39.363995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620827, 30.840088, 38.641640>,  <34.815079, 31.083242, 39.327240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620827, 30.840088, 38.641640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245541, 30.851511, 38.779587>,  <34.020370, 30.858364, 38.862354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245541, 30.851511, 38.779587>,  <34.620827, 30.840088, 38.641640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245541, 30.851511, 38.779587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267785, 0.571323, -0.775810,
		-0.219188, -0.820228, -0.528377,
		-0.938215, 0.028557, 0.344872,
		33.964077, 30.860079, 38.883049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120960, 30.654192, 38.071266>,  <34.620827, 30.840088, 38.641640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120960, 30.654192, 38.071266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892410, 30.842396, 38.340233>,  <33.755280, 30.955318, 38.501614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892410, 30.842396, 38.340233>,  <34.120960, 30.654192, 38.071266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892410, 30.842396, 38.340233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491067, 0.460466, -0.739476,
		-0.657556, -0.752723, -0.032049,
		-0.571378, 0.470509, 0.672420,
		33.720997, 30.983549, 38.541958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317661, 30.620022, 37.837975>,  <34.120960, 30.654192, 38.071266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317661, 30.620022, 37.837975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367722, 30.946577, 38.063488>,  <33.397758, 31.142509, 38.198795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367722, 30.946577, 38.063488>,  <33.317661, 30.620022, 37.837975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367722, 30.946577, 38.063488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408704, 0.560217, -0.720498,
		-0.904046, -0.140249, 0.403772,
		0.125151, 0.816386, 0.563782,
		33.405266, 31.191492, 38.232624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720551, 31.001373, 37.772240>,  <33.317661, 30.620022, 37.837975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720551, 31.001373, 37.772240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965237, 31.294022, 37.892593>,  <33.112049, 31.469612, 37.964806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965237, 31.294022, 37.892593>,  <32.720551, 31.001373, 37.772240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965237, 31.294022, 37.892593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325224, 0.579300, -0.747423,
		-0.721132, 0.359359, 0.592310,
		0.611718, 0.731623, 0.300880,
		33.148750, 31.513508, 37.982857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305996, 31.511627, 37.830055>,  <32.720551, 31.001373, 37.772240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305996, 31.511627, 37.830055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673840, 31.665936, 37.800365>,  <32.894547, 31.758520, 37.782551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673840, 31.665936, 37.800365>,  <32.305996, 31.511627, 37.830055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673840, 31.665936, 37.800365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338037, 0.680798, -0.649803,
		-0.200146, 0.622651, 0.756470,
		0.919604, 0.385771, -0.074220,
		32.949722, 31.781666, 37.778099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184917, 32.197041, 37.751736>,  <32.305996, 31.511627, 37.830055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184917, 32.197041, 37.751736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559917, 32.158371, 37.618015>,  <32.784916, 32.135170, 37.537785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559917, 32.158371, 37.618015>,  <32.184917, 32.197041, 37.751736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559917, 32.158371, 37.618015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253690, 0.467708, -0.846694,
		0.238208, 0.878580, 0.413949,
		0.937496, -0.096674, -0.334298,
		32.841167, 32.129368, 37.517727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375130, 32.899223, 37.514236>,  <32.184917, 32.197041, 37.751736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375130, 32.899223, 37.514236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635296, 32.653770, 37.335167>,  <32.791397, 32.506500, 37.227726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635296, 32.653770, 37.335167>,  <32.375130, 32.899223, 37.514236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635296, 32.653770, 37.335167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150834, 0.473295, -0.867894,
		0.744451, 0.632017, 0.215282,
		0.650416, -0.613633, -0.447675,
		32.830421, 32.469681, 37.200863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821964, 33.367058, 37.167328>,  <32.375130, 32.899223, 37.514236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821964, 33.367058, 37.167328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880981, 33.014668, 36.987499>,  <32.916393, 32.803234, 36.879601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880981, 33.014668, 36.987499>,  <32.821964, 33.367058, 37.167328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880981, 33.014668, 36.987499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017686, 0.456823, -0.889382,
		0.988897, 0.123273, 0.082983,
		0.147546, -0.880975, -0.449571,
		32.925243, 32.750374, 36.852627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325794, 33.535656, 36.624767>,  <32.821964, 33.367058, 37.167328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325794, 33.535656, 36.624767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142494, 33.194340, 36.525242>,  <33.032516, 32.989552, 36.465527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142494, 33.194340, 36.525242>,  <33.325794, 33.535656, 36.624767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142494, 33.194340, 36.525242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261258, 0.396875, -0.879905,
		0.849561, -0.338211, -0.404796,
		-0.458247, -0.853290, -0.248809,
		33.005020, 32.938354, 36.450600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564697, 33.372520, 35.992767>,  <33.325794, 33.535656, 36.624767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564697, 33.372520, 35.992767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227661, 33.159397, 36.024158>,  <33.025440, 33.031525, 36.042992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227661, 33.159397, 36.024158>,  <33.564697, 33.372520, 35.992767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227661, 33.159397, 36.024158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382083, 0.488708, -0.784332,
		0.379545, -0.690855, -0.615357,
		-0.842590, -0.532807, 0.078478,
		32.974884, 32.999554, 36.047703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439556, 33.142757, 35.282997>,  <33.564697, 33.372520, 35.992767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439556, 33.142757, 35.282997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076073, 33.111610, 35.447037>,  <32.857983, 33.092922, 35.545460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076073, 33.111610, 35.447037>,  <33.439556, 33.142757, 35.282997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076073, 33.111610, 35.447037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409659, 0.354994, -0.840333,
		-0.080151, -0.931621, -0.354484,
		-0.908711, -0.077864, 0.410100,
		32.803459, 33.088249, 35.570068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.679806, 28.750780, 41.929913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.339455, 28.812216, 42.130875>,  <35.135242, 28.849077, 42.251453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.339455, 28.812216, 42.130875>,  <35.679806, 28.750780, 41.929913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339455, 28.812216, 42.130875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432368, 0.338505, -0.835746,
		-0.298430, -0.928345, -0.221619,
		-0.850880, 0.153591, 0.502407,
		35.084190, 28.858294, 42.281597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251328, 28.527267, 41.470776>,  <35.679806, 28.750780, 41.929913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251328, 28.527267, 41.470776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001202, 28.716684, 41.718884>,  <34.851124, 28.830336, 41.867748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001202, 28.716684, 41.718884>,  <35.251328, 28.527267, 41.470776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001202, 28.716684, 41.718884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502102, 0.364317, -0.784326,
		-0.597388, -0.801891, 0.009954,
		-0.625317, 0.473544, 0.620269,
		34.813606, 28.858747, 41.904964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515991, 28.351637, 41.318764>,  <35.251328, 28.527267, 41.470776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515991, 28.351637, 41.318764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.494053, 28.702597, 41.509411>,  <34.480888, 28.913172, 41.623798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.494053, 28.702597, 41.509411>,  <34.515991, 28.351637, 41.318764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494053, 28.702597, 41.509411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617735, 0.345204, -0.706568,
		-0.784472, -0.333173, 0.523068,
		-0.054844, 0.877400, 0.476615,
		34.477600, 28.965816, 41.652397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747517, 28.571770, 41.481583>,  <34.515991, 28.351637, 41.318764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747517, 28.571770, 41.481583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.964035, 28.907534, 41.501152>,  <34.093945, 29.108992, 41.512894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.964035, 28.907534, 41.501152>,  <33.747517, 28.571770, 41.481583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964035, 28.907534, 41.501152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585006, 0.417754, -0.695162,
		-0.603963, 0.347667, 0.717187,
		0.541292, 0.839410, 0.048921,
		34.126423, 29.159357, 41.515827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322037, 29.114182, 41.125088>,  <33.747517, 28.571770, 41.481583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322037, 29.114182, 41.125088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.664631, 29.320257, 41.137798>,  <33.870186, 29.443903, 41.145424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.664631, 29.320257, 41.137798>,  <33.322037, 29.114182, 41.125088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664631, 29.320257, 41.137798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306060, 0.556457, -0.772453,
		-0.415643, 0.651870, 0.634277,
		0.856486, 0.515191, 0.031776,
		33.921577, 29.474815, 41.147331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219700, 29.932125, 40.997639>,  <33.322037, 29.114182, 41.125088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219700, 29.932125, 40.997639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609257, 29.898869, 40.913136>,  <33.842991, 29.878914, 40.862434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609257, 29.898869, 40.913136>,  <33.219700, 29.932125, 40.997639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609257, 29.898869, 40.913136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112311, 0.632247, -0.766583,
		0.197300, 0.770293, 0.606400,
		0.973889, -0.083141, -0.211255,
		33.901424, 29.873926, 40.849758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607048, 30.617451, 41.041248>,  <33.219700, 29.932125, 40.997639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607048, 30.617451, 41.041248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.793530, 30.367704, 40.790546>,  <33.905418, 30.217857, 40.640125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.793530, 30.367704, 40.790546>,  <33.607048, 30.617451, 41.041248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793530, 30.367704, 40.790546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164954, 0.634686, -0.754959,
		0.869164, 0.455349, 0.192901,
		0.466202, -0.624364, -0.626758,
		33.933392, 30.180395, 40.602520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993046, 31.062346, 40.658543>,  <33.607048, 30.617451, 41.041248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993046, 31.062346, 40.658543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.002579, 30.736179, 40.427189>,  <34.008297, 30.540480, 40.288376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.002579, 30.736179, 40.427189>,  <33.993046, 31.062346, 40.658543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002579, 30.736179, 40.427189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144177, 0.569697, -0.809109,
		0.989265, 0.102673, -0.103987,
		0.023833, -0.815416, -0.578384,
		34.009727, 30.491554, 40.253674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445301, 31.210361, 40.135345>,  <33.993046, 31.062346, 40.658543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445301, 31.210361, 40.135345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.207943, 30.930155, 39.976772>,  <34.065529, 30.762032, 39.881630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.207943, 30.930155, 39.976772>,  <34.445301, 31.210361, 40.135345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207943, 30.930155, 39.976772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128867, 0.568846, -0.812285,
		0.794530, -0.430918, -0.427823,
		-0.593394, -0.700517, -0.396434,
		34.029926, 30.719999, 39.857841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196327, 31.263409, 40.185146>,  <34.445301, 31.210361, 40.135345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196327, 31.263409, 40.185146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.284103, 31.638807, 40.291782>,  <35.336769, 31.864046, 40.355762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.284103, 31.638807, 40.291782>,  <35.196327, 31.263409, 40.185146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284103, 31.638807, 40.291782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146688, -0.238407, 0.960023,
		0.964536, -0.249772, 0.085350,
		0.219439, 0.938497, 0.266591,
		35.349934, 31.920357, 40.371761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341869, 31.164152, 40.815685>,  <35.196327, 31.263409, 40.185146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341869, 31.164152, 40.815685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360104, 31.563730, 40.813335>,  <35.371044, 31.803476, 40.811928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360104, 31.563730, 40.813335>,  <35.341869, 31.164152, 40.815685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360104, 31.563730, 40.813335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247912, 0.017005, 0.968633,
		0.967710, -0.042696, 0.248425,
		0.045582, 0.998943, -0.005871,
		35.373779, 31.863413, 40.811573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752670, 31.419483, 41.373192>,  <35.341869, 31.164152, 40.815685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752670, 31.419483, 41.373192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495956, 31.710112, 41.275040>,  <35.341930, 31.884489, 41.216148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495956, 31.710112, 41.275040>,  <35.752670, 31.419483, 41.373192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495956, 31.710112, 41.275040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261598, 0.093363, 0.960651,
		0.720892, 0.680717, 0.130151,
		-0.641780, 0.726572, -0.245379,
		35.303421, 31.928083, 41.201427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776165, 31.957401, 41.875164>,  <35.752670, 31.419483, 41.373192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776165, 31.957401, 41.875164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426723, 32.021317, 41.691303>,  <35.217060, 32.059666, 41.580986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426723, 32.021317, 41.691303>,  <35.776165, 31.957401, 41.875164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426723, 32.021317, 41.691303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438814, 0.149669, 0.886025,
		0.210373, 0.975739, -0.060634,
		-0.873605, 0.159789, -0.459655,
		35.164642, 32.069252, 41.553406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569153, 32.478310, 42.300980>,  <35.776165, 31.957401, 41.875164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569153, 32.478310, 42.300980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.237503, 32.386627, 42.097012>,  <35.038513, 32.331619, 41.974632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.237503, 32.386627, 42.097012>,  <35.569153, 32.478310, 42.300980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237503, 32.386627, 42.097012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554405, 0.219588, 0.802755,
		-0.072024, 0.948286, -0.309139,
		-0.829125, -0.229206, -0.509919,
		34.988766, 32.317867, 41.944035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075516, 33.034687, 42.551289>,  <35.569153, 32.478310, 42.300980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075516, 33.034687, 42.551289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.895683, 32.707378, 42.408012>,  <34.787781, 32.510994, 42.322048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.895683, 32.707378, 42.408012>,  <35.075516, 33.034687, 42.551289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895683, 32.707378, 42.408012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542868, -0.068138, 0.837049,
		-0.709342, 0.570775, -0.413582,
		-0.449586, -0.818275, -0.358188,
		34.760807, 32.461895, 42.300556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392174, 33.063946, 42.644073>,  <35.075516, 33.034687, 42.551289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392174, 33.063946, 42.644073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.444263, 32.667946, 42.622356>,  <34.475517, 32.430347, 42.609325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.444263, 32.667946, 42.622356>,  <34.392174, 33.063946, 42.644073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444263, 32.667946, 42.622356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546866, -0.117398, 0.828948,
		-0.827031, -0.078255, -0.556683,
		0.130223, -0.989997, -0.054297,
		34.483330, 32.370945, 42.606068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811321, 32.878254, 42.913063>,  <34.392174, 33.063946, 42.644073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811321, 32.878254, 42.913063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053078, 32.559925, 42.927917>,  <34.198132, 32.368927, 42.936829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053078, 32.559925, 42.927917>,  <33.811321, 32.878254, 42.913063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053078, 32.559925, 42.927917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352653, -0.225441, 0.908192,
		-0.714389, -0.561996, -0.416904,
		0.604388, -0.795824, 0.037137,
		34.234394, 32.321178, 42.939060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369705, 32.263252, 43.254215>,  <33.811321, 32.878254, 42.913063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369705, 32.263252, 43.254215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.755116, 32.159176, 43.279240>,  <33.986362, 32.096729, 43.294254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.755116, 32.159176, 43.279240>,  <33.369705, 32.263252, 43.254215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755116, 32.159176, 43.279240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112763, -0.182764, 0.976669,
		-0.242691, -0.948101, -0.205439,
		0.963528, -0.260194, 0.062555,
		34.044174, 32.081120, 43.298008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326672, 31.630190, 43.646088>,  <33.369705, 32.263252, 43.254215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326672, 31.630190, 43.646088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.696335, 31.770828, 43.705837>,  <33.918133, 31.855211, 43.741688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.696335, 31.770828, 43.705837>,  <33.326672, 31.630190, 43.646088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696335, 31.770828, 43.705837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040275, -0.299166, 0.953351,
		0.379882, -0.887062, -0.262317,
		0.924158, 0.351596, 0.149374,
		33.973583, 31.876307, 43.750648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710777, 31.094856, 44.095051>,  <33.326672, 31.630190, 43.646088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710777, 31.094856, 44.095051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915985, 31.432714, 44.156216>,  <34.039112, 31.635429, 44.192913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915985, 31.432714, 44.156216>,  <33.710777, 31.094856, 44.095051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915985, 31.432714, 44.156216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115637, -0.244520, 0.962724,
		0.850551, -0.476217, -0.223117,
		0.513022, 0.844646, 0.152909,
		34.069893, 31.686108, 44.202087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531078, 30.968397, 44.075363>,  <33.710777, 31.094856, 44.095051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531078, 30.968397, 44.075363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490463, 31.321075, 44.259666>,  <34.466095, 31.532682, 44.370251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490463, 31.321075, 44.259666>,  <34.531078, 30.968397, 44.075363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490463, 31.321075, 44.259666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308506, -0.412416, 0.857168,
		0.945787, 0.229184, -0.230133,
		-0.101539, 0.881696, 0.460762,
		34.460003, 31.585585, 44.397896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152702, 31.036488, 44.449661>,  <34.531078, 30.968397, 44.075363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152702, 31.036488, 44.449661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.895237, 31.288593, 44.623310>,  <34.740757, 31.439857, 44.727501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.895237, 31.288593, 44.623310>,  <35.152702, 31.036488, 44.449661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895237, 31.288593, 44.623310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256236, -0.357035, 0.898259,
		0.721140, 0.689413, 0.068313,
		-0.643661, 0.630266, 0.434125,
		34.702137, 31.477673, 44.753548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510395, 31.369604, 44.892262>,  <35.152702, 31.036488, 44.449661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510395, 31.369604, 44.892262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136833, 31.416079, 45.027504>,  <34.912697, 31.443964, 45.108650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136833, 31.416079, 45.027504>,  <35.510395, 31.369604, 44.892262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136833, 31.416079, 45.027504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296701, -0.275750, 0.914292,
		0.199463, 0.954181, 0.223052,
		-0.933907, 0.116187, 0.338108,
		34.856663, 31.450935, 45.128937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.857552, 32.110916, 46.214111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.188965, 31.900049, 46.138611>,  <30.387814, 31.773529, 46.093311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.188965, 31.900049, 46.138611>,  <29.857552, 32.110916, 46.214111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188965, 31.900049, 46.138611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105048, 0.477440, -0.872362,
		0.549997, 0.702954, 0.450953,
		0.828534, -0.527169, -0.188747,
		30.437525, 31.741899, 46.081985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316795, 32.643784, 46.107468>,  <29.857552, 32.110916, 46.214111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316795, 32.643784, 46.107468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.478798, 32.317902, 45.941471>,  <30.576000, 32.122372, 45.841873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.478798, 32.317902, 45.941471>,  <30.316795, 32.643784, 46.107468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478798, 32.317902, 45.941471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030883, 0.441437, -0.896760,
		0.913792, 0.376011, 0.153625,
		0.405008, -0.814708, -0.414994,
		30.600300, 32.073490, 45.816975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770895, 32.891617, 45.703480>,  <30.316795, 32.643784, 46.107468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770895, 32.891617, 45.703480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684013, 32.534267, 45.546146>,  <30.631884, 32.319859, 45.451748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684013, 32.534267, 45.546146>,  <30.770895, 32.891617, 45.703480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684013, 32.534267, 45.546146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078977, 0.385545, -0.919303,
		0.972926, -0.230741, -0.013187,
		-0.217205, -0.893372, -0.393330,
		30.618853, 32.266254, 45.428146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235533, 32.793259, 45.157902>,  <30.770895, 32.891617, 45.703480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235533, 32.793259, 45.157902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.946726, 32.522995, 45.098343>,  <30.773441, 32.360836, 45.062607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.946726, 32.522995, 45.098343>,  <31.235533, 32.793259, 45.157902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946726, 32.522995, 45.098343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093446, 0.308466, -0.946634,
		0.685535, -0.669573, -0.285856,
		-0.722018, -0.675663, -0.148895,
		30.730120, 32.320297, 45.053673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413414, 32.151218, 44.692215>,  <31.235533, 32.793259, 45.157902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413414, 32.151218, 44.692215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.019625, 32.219387, 44.675381>,  <30.783352, 32.260288, 44.665279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.019625, 32.219387, 44.675381>,  <31.413414, 32.151218, 44.692215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019625, 32.219387, 44.675381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077891, 0.209250, -0.974755,
		-0.157310, -0.962898, -0.219275,
		-0.984473, 0.170419, -0.042083,
		30.724283, 32.270512, 44.662754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298370, 31.934704, 44.064930>,  <31.413414, 32.151218, 44.692215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298370, 31.934704, 44.064930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.954872, 32.117012, 44.158588>,  <30.748772, 32.226398, 44.214783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.954872, 32.117012, 44.158588>,  <31.298370, 31.934704, 44.064930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954872, 32.117012, 44.158588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034168, 0.405012, -0.913673,
		-0.511258, -0.792615, -0.332231,
		-0.858748, 0.455771, 0.234148,
		30.697248, 32.253742, 44.228832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954962, 31.751446, 43.505493>,  <31.298370, 31.934704, 44.064930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954962, 31.751446, 43.505493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775085, 32.067863, 43.671398>,  <30.667160, 32.257713, 43.770943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775085, 32.067863, 43.671398>,  <30.954962, 31.751446, 43.505493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775085, 32.067863, 43.671398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168651, 0.380810, -0.909143,
		-0.877117, -0.478785, -0.037838,
		-0.449693, 0.791043, 0.414763,
		30.640177, 32.305176, 43.795826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311687, 31.911222, 43.121353>,  <30.954962, 31.751446, 43.505493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311687, 31.911222, 43.121353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346333, 32.247971, 43.334427>,  <30.367121, 32.450020, 43.462273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346333, 32.247971, 43.334427>,  <30.311687, 31.911222, 43.121353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346333, 32.247971, 43.334427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118096, 0.539603, -0.833596,
		-0.989217, 0.009293, 0.146159,
		0.086614, 0.841868, 0.532687,
		30.372316, 32.500530, 43.494232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774555, 32.386692, 42.885338>,  <30.311687, 31.911222, 43.121353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774555, 32.386692, 42.885338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.044323, 32.625534, 43.059063>,  <30.206184, 32.768837, 43.163300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.044323, 32.625534, 43.059063>,  <29.774555, 32.386692, 42.885338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044323, 32.625534, 43.059063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103852, 0.659088, -0.744861,
		-0.731009, 0.457244, 0.506512,
		0.674419, 0.597102, 0.434313,
		30.246649, 32.804665, 43.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432446, 32.983753, 42.978230>,  <29.774555, 32.386692, 42.885338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432446, 32.983753, 42.978230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.811737, 33.107388, 43.007431>,  <30.039312, 33.181568, 43.024952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.811737, 33.107388, 43.007431>,  <29.432446, 32.983753, 42.978230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811737, 33.107388, 43.007431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106184, 0.525170, -0.844347,
		-0.299318, 0.792881, 0.530800,
		0.948227, 0.309090, 0.073002,
		30.096205, 33.200115, 43.029331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446352, 33.733261, 42.811188>,  <29.432446, 32.983753, 42.978230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446352, 33.733261, 42.811188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.821207, 33.599033, 42.772888>,  <30.046120, 33.518497, 42.749908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.821207, 33.599033, 42.772888>,  <29.446352, 33.733261, 42.811188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821207, 33.599033, 42.772888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066506, 0.441092, -0.894994,
		0.342568, 0.832364, 0.435681,
		0.937136, -0.335571, -0.095747,
		30.102348, 33.498363, 42.744164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862751, 34.303921, 42.739117>,  <29.446352, 33.733261, 42.811188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862751, 34.303921, 42.739117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.092812, 34.008270, 42.598892>,  <30.230848, 33.830879, 42.514759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.092812, 34.008270, 42.598892>,  <29.862751, 34.303921, 42.739117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092812, 34.008270, 42.598892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092143, 0.484338, -0.870015,
		0.812841, 0.468089, 0.346673,
		0.575152, -0.739127, -0.350558,
		30.265358, 33.786533, 42.493725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437996, 34.623810, 42.363319>,  <29.862751, 34.303921, 42.739117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437996, 34.623810, 42.363319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.390333, 34.249893, 42.229469>,  <30.361736, 34.025543, 42.149158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.390333, 34.249893, 42.229469>,  <30.437996, 34.623810, 42.363319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390333, 34.249893, 42.229469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020674, 0.339286, -0.940456,
		0.992660, -0.105143, -0.059753,
		-0.119156, -0.934789, -0.334622,
		30.354586, 33.969456, 42.129082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878119, 34.575352, 41.885677>,  <30.437996, 34.623810, 42.363319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878119, 34.575352, 41.885677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.615356, 34.287479, 41.795757>,  <30.457699, 34.114758, 41.741806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.615356, 34.287479, 41.795757>,  <30.878119, 34.575352, 41.885677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615356, 34.287479, 41.795757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014955, 0.310532, -0.950445,
		0.753825, -0.620990, -0.214753,
		-0.656905, -0.719681, -0.224800,
		30.418285, 34.071575, 41.728317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724125, 34.425266, 41.825726>,  <30.878119, 34.575352, 41.885677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724125, 34.425266, 41.825726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.993784, 34.718468, 41.789444>,  <32.155579, 34.894390, 41.767677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.993784, 34.718468, 41.789444>,  <31.724125, 34.425266, 41.825726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993784, 34.718468, 41.789444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150381, -0.015990, 0.988499,
		0.723126, -0.680034, -0.121010,
		0.674148, 0.733007, -0.090702,
		32.196030, 34.938370, 41.762234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420574, 34.191917, 42.122841>,  <31.724125, 34.425266, 41.825726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420574, 34.191917, 42.122841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335625, 34.582561, 42.136311>,  <32.284657, 34.816948, 42.144394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335625, 34.582561, 42.136311>,  <32.420574, 34.191917, 42.122841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335625, 34.582561, 42.136311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295145, 0.031251, 0.954941,
		0.931552, 0.212741, -0.294878,
		-0.212370, 0.976609, 0.033677,
		32.271915, 34.875546, 42.146412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967915, 34.511456, 42.559036>,  <32.420574, 34.191917, 42.122841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967915, 34.511456, 42.559036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686775, 34.795582, 42.543804>,  <32.518089, 34.966057, 42.534664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686775, 34.795582, 42.543804>,  <32.967915, 34.511456, 42.559036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686775, 34.795582, 42.543804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234732, 0.282138, 0.930215,
		0.671492, 0.644863, -0.365035,
		-0.702851, 0.710317, -0.038084,
		32.475922, 35.008678, 42.532379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341011, 34.974583, 42.907322>,  <32.967915, 34.511456, 42.559036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341011, 34.974583, 42.907322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963196, 35.105221, 42.893616>,  <32.736504, 35.183605, 42.885391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963196, 35.105221, 42.893616>,  <33.341011, 34.974583, 42.907322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963196, 35.105221, 42.893616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046948, 0.237573, 0.970235,
		0.325015, 0.914819, -0.239731,
		-0.944543, 0.326595, -0.034266,
		32.679832, 35.203201, 42.883335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237907, 35.619755, 43.339828>,  <33.341011, 34.974583, 42.907322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237907, 35.619755, 43.339828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901077, 35.404053, 43.335609>,  <32.698978, 35.274632, 43.333080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901077, 35.404053, 43.335609>,  <33.237907, 35.619755, 43.339828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901077, 35.404053, 43.335609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140202, 0.199973, 0.969719,
		-0.520820, 0.818054, -0.243997,
		-0.842075, -0.539258, -0.010543,
		32.648457, 35.242275, 43.332447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977715, 35.807297, 43.988979>,  <33.237907, 35.619755, 43.339828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977715, 35.807297, 43.988979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.695778, 35.551025, 43.867172>,  <32.526615, 35.397263, 43.794090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.695778, 35.551025, 43.867172>,  <32.977715, 35.807297, 43.988979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695778, 35.551025, 43.867172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326319, -0.088316, 0.941125,
		-0.629854, 0.762711, -0.146818,
		-0.704840, -0.640681, -0.304513,
		32.484325, 35.358822, 43.775818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314026, 36.025852, 44.254410>,  <32.977715, 35.807297, 43.988979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314026, 36.025852, 44.254410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337635, 35.631443, 44.192081>,  <32.351799, 35.394798, 44.154682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337635, 35.631443, 44.192081>,  <32.314026, 36.025852, 44.254410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337635, 35.631443, 44.192081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272735, -0.166084, 0.947645,
		-0.960277, -0.013433, -0.278725,
		0.059022, -0.986020, -0.155823,
		32.355343, 35.335636, 44.145336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743156, 35.803219, 44.646030>,  <32.314026, 36.025852, 44.254410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743156, 35.803219, 44.646030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979145, 35.487709, 44.577007>,  <32.120739, 35.298405, 44.535595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979145, 35.487709, 44.577007>,  <31.743156, 35.803219, 44.646030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979145, 35.487709, 44.577007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064058, -0.258766, 0.963814,
		-0.804880, -0.557568, -0.203191,
		0.589970, -0.788770, -0.172558,
		32.156136, 35.251080, 44.525238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447384, 35.334785, 45.133080>,  <31.743156, 35.803219, 44.646030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447384, 35.334785, 45.133080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790815, 35.158981, 45.027496>,  <31.996874, 35.053501, 44.964146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.790815, 35.158981, 45.027496>,  <31.447384, 35.334785, 45.133080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790815, 35.158981, 45.027496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014108, -0.494408, 0.869115,
		-0.512495, -0.749924, -0.418286,
		0.858574, -0.439516, -0.263961,
		32.048389, 35.027130, 44.948311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385920, 34.694614, 45.196110>,  <31.447384, 35.334785, 45.133080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385920, 34.694614, 45.196110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779312, 34.748074, 45.244934>,  <32.015347, 34.780148, 45.274227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.779312, 34.748074, 45.244934>,  <31.385920, 34.694614, 45.196110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779312, 34.748074, 45.244934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056994, -0.411412, 0.909666,
		0.171790, -0.901598, -0.397000,
		0.983483, 0.133645, 0.122062,
		32.074356, 34.788166, 45.281551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626844, 34.026356, 45.436054>,  <31.385920, 34.694614, 45.196110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626844, 34.026356, 45.436054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.927439, 34.274147, 45.526844>,  <32.107796, 34.422821, 45.581318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.927439, 34.274147, 45.526844>,  <31.626844, 34.026356, 45.436054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927439, 34.274147, 45.526844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177091, -0.520805, 0.835105,
		0.635536, -0.587376, -0.501082,
		0.751487, 0.619477, 0.226971,
		32.152885, 34.459991, 45.594936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218887, 33.597744, 45.576008>,  <31.626844, 34.026356, 45.436054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218887, 33.597744, 45.576008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.274940, 33.942657, 45.770664>,  <32.308575, 34.149605, 45.887459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.274940, 33.942657, 45.770664>,  <32.218887, 33.597744, 45.576008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274940, 33.942657, 45.770664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276540, -0.506019, 0.816989,
		0.950730, 0.020086, -0.309369,
		0.140137, 0.862288, 0.486642,
		32.316982, 34.201344, 45.916656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894157, 33.776958, 45.800758>,  <32.218887, 33.597744, 45.576008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894157, 33.776958, 45.800758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674599, 33.992382, 46.056465>,  <32.542862, 34.121635, 46.209888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674599, 33.992382, 46.056465>,  <32.894157, 33.776958, 45.800758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674599, 33.992382, 46.056465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517512, -0.381629, 0.765860,
		0.656425, 0.751207, -0.069236,
		-0.548897, 0.538560, 0.639269,
		32.509930, 34.153950, 46.248245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338085, 34.045074, 46.351368>,  <32.894157, 33.776958, 45.800758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338085, 34.045074, 46.351368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.967617, 34.081383, 46.497772>,  <32.745335, 34.103168, 46.585613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.967617, 34.081383, 46.497772>,  <33.338085, 34.045074, 46.351368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967617, 34.081383, 46.497772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339345, -0.222659, 0.913930,
		0.164455, 0.970661, 0.175418,
		-0.926175, 0.090773, 0.366006,
		32.689766, 34.108616, 46.607574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031929, 34.342701, 46.607719>,  <33.338085, 34.045074, 46.351368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031929, 34.342701, 46.607719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.427097, 34.332462, 46.668842>,  <34.664200, 34.326321, 46.705517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.427097, 34.332462, 46.668842>,  <34.031929, 34.342701, 46.607719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427097, 34.332462, 46.668842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147101, 0.464638, -0.873197,
		-0.048649, 0.885130, 0.462793,
		0.987924, -0.025598, 0.152808,
		34.723476, 34.324783, 46.714684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299206, 35.076317, 46.408688>,  <34.031929, 34.342701, 46.607719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299206, 35.076317, 46.408688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611359, 34.827316, 46.385033>,  <34.798653, 34.677917, 46.370838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611359, 34.827316, 46.385033>,  <34.299206, 35.076317, 46.408688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611359, 34.827316, 46.385033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310702, 0.468099, -0.827253,
		0.542646, 0.627201, 0.558708,
		0.780385, -0.622497, -0.059139,
		34.845474, 34.640568, 46.367290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796829, 35.518478, 46.251331>,  <34.299206, 35.076317, 46.408688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796829, 35.518478, 46.251331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899540, 35.149334, 46.136517>,  <34.961166, 34.927849, 46.067627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899540, 35.149334, 46.136517>,  <34.796829, 35.518478, 46.251331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899540, 35.149334, 46.136517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447809, 0.376803, -0.810855,
		0.856465, 0.079672, 0.510021,
		0.256780, -0.922861, -0.287041,
		34.976574, 34.872475, 46.050404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458698, 35.577137, 46.059261>,  <34.796829, 35.518478, 46.251331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458698, 35.577137, 46.059261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330795, 35.246689, 45.873669>,  <35.254051, 35.048420, 45.762314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330795, 35.246689, 45.873669>,  <35.458698, 35.577137, 46.059261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330795, 35.246689, 45.873669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344103, 0.355004, -0.869233,
		0.882806, -0.437602, 0.170755,
		-0.319759, -0.826122, -0.463980,
		35.234867, 34.998852, 45.734474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859486, 35.537376, 45.465305>,  <35.458698, 35.577137, 46.059261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859486, 35.537376, 45.465305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595043, 35.251720, 45.373276>,  <35.436378, 35.080326, 45.318058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595043, 35.251720, 45.373276>,  <35.859486, 35.537376, 45.465305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595043, 35.251720, 45.373276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131741, 0.191388, -0.972633,
		0.738632, -0.673327, -0.032447,
		-0.661110, -0.714143, -0.230071,
		35.396709, 35.037476, 45.304256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134995, 35.270695, 44.833416>,  <35.859486, 35.537376, 45.465305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134995, 35.270695, 44.833416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749313, 35.166000, 44.850399>,  <35.517902, 35.103184, 44.860588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749313, 35.166000, 44.850399>,  <36.134995, 35.270695, 44.833416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749313, 35.166000, 44.850399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072636, 0.106724, -0.991632,
		0.255017, -0.959220, -0.121916,
		-0.964204, -0.261738, 0.042458,
		35.460052, 35.087479, 44.863136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079079, 34.744762, 44.382442>,  <36.134995, 35.270695, 44.833416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079079, 34.744762, 44.382442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722034, 34.921799, 44.416756>,  <35.507809, 35.028019, 44.437344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722034, 34.921799, 44.416756>,  <36.079079, 34.744762, 44.382442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722034, 34.921799, 44.416756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031959, 0.251925, -0.967219,
		-0.449689, -0.860611, -0.239016,
		-0.892613, 0.442587, 0.085783,
		35.454250, 35.054573, 44.442490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800774, 34.574425, 43.806156>,  <36.079079, 34.744762, 44.382442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800774, 34.574425, 43.806156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551636, 34.866714, 43.917946>,  <35.402153, 35.042088, 43.985020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551636, 34.866714, 43.917946>,  <35.800774, 34.574425, 43.806156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551636, 34.866714, 43.917946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099894, 0.280025, -0.954781,
		-0.775943, -0.622598, -0.101416,
		-0.622844, 0.730725, 0.279477,
		35.364784, 35.085930, 44.001789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117615, 34.462479, 43.516800>,  <35.800774, 34.574425, 43.806156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117615, 34.462479, 43.516800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169575, 34.847721, 43.611084>,  <35.200752, 35.078865, 43.667656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169575, 34.847721, 43.611084>,  <35.117615, 34.462479, 43.516800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169575, 34.847721, 43.611084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168950, 0.255749, -0.951866,
		-0.977027, 0.083823, 0.195938,
		0.129900, 0.963102, 0.235711,
		35.208546, 35.136650, 43.681797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663189, 34.781487, 43.075401>,  <35.117615, 34.462479, 43.516800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663189, 34.781487, 43.075401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.932812, 35.062492, 43.166721>,  <35.094585, 35.231094, 43.221512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.932812, 35.062492, 43.166721>,  <34.663189, 34.781487, 43.075401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932812, 35.062492, 43.166721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010972, 0.299512, -0.954029,
		-0.738597, 0.645576, 0.194181,
		0.674058, 0.702512, 0.228302,
		35.135029, 35.273247, 43.235210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457497, 35.475620, 42.881569>,  <34.663189, 34.781487, 43.075401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457497, 35.475620, 42.881569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856380, 35.457088, 42.858131>,  <35.095711, 35.445969, 42.844067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856380, 35.457088, 42.858131>,  <34.457497, 35.475620, 42.881569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856380, 35.457088, 42.858131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038496, 0.353539, -0.934627,
		0.064015, 0.934272, 0.350767,
		0.997206, -0.046327, -0.058597,
		35.155540, 35.443192, 42.840553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653538, 36.116810, 42.621033>,  <34.457497, 35.475620, 42.881569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653538, 36.116810, 42.621033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980610, 35.896988, 42.552475>,  <35.176853, 35.765095, 42.511341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980610, 35.896988, 42.552475>,  <34.653538, 36.116810, 42.621033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980610, 35.896988, 42.552475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047453, 0.361066, -0.931332,
		0.573707, 0.753403, 0.321316,
		0.817685, -0.549559, -0.171395,
		35.225914, 35.732121, 42.501057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019913, 36.665600, 42.225307>,  <34.653538, 36.116810, 42.621033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019913, 36.665600, 42.225307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.173347, 36.298553, 42.183640>,  <35.265408, 36.078327, 42.158638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.173347, 36.298553, 42.183640>,  <35.019913, 36.665600, 42.225307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173347, 36.298553, 42.183640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008249, 0.109385, -0.993965,
		0.923469, 0.382130, 0.034390,
		0.383585, -0.917612, -0.104166,
		35.288422, 36.023270, 42.152390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667622, 36.697681, 41.772449>,  <35.019913, 36.665600, 42.225307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667622, 36.697681, 41.772449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537891, 36.320526, 41.742043>,  <35.460052, 36.094234, 41.723797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537891, 36.320526, 41.742043>,  <35.667622, 36.697681, 41.772449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537891, 36.320526, 41.742043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033239, 0.091675, -0.995234,
		0.945361, -0.320255, -0.061074,
		-0.324328, -0.942885, -0.076021,
		35.440594, 36.037659, 41.719234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.229401, 32.662094, 28.411142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116520, 32.776512, 28.044855>,  <29.048792, 32.845165, 27.825083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116520, 32.776512, 28.044855>,  <29.229401, 32.662094, 28.411142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116520, 32.776512, 28.044855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731331, 0.553622, 0.398318,
		0.620900, 0.782099, 0.052962,
		-0.282203, 0.286049, -0.915717,
		29.031858, 32.862328, 27.770140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096497, 33.405685, 28.437656>,  <29.229401, 32.662094, 28.411142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096497, 33.405685, 28.437656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.886732, 33.228935, 28.146523>,  <28.760874, 33.122887, 27.971842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.886732, 33.228935, 28.146523>,  <29.096497, 33.405685, 28.437656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886732, 33.228935, 28.146523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839137, 0.413145, 0.353781,
		0.144374, 0.796278, -0.587450,
		-0.524410, -0.441874, -0.727834,
		28.729408, 33.096375, 27.928173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711393, 33.939678, 28.018639>,  <29.096497, 33.405685, 28.437656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711393, 33.939678, 28.018639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519873, 33.589336, 27.994539>,  <28.404961, 33.379131, 27.980080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519873, 33.589336, 27.994539>,  <28.711393, 33.939678, 28.018639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519873, 33.589336, 27.994539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872215, 0.466757, 0.146214,
		-0.099940, 0.122558, -0.987417,
		-0.478803, -0.875852, -0.060249,
		28.376232, 33.326580, 27.976465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022783, 34.151615, 27.782681>,  <28.711393, 33.939678, 28.018639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022783, 34.151615, 27.782681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972383, 33.784897, 27.934267>,  <27.942144, 33.564865, 28.025219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972383, 33.784897, 27.934267>,  <28.022783, 34.151615, 27.782681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972383, 33.784897, 27.934267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905804, 0.262098, 0.332901,
		-0.404528, -0.301322, -0.863459,
		-0.126000, -0.916793, 0.378965,
		27.934584, 33.509857, 28.047956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333097, 33.911972, 27.656002>,  <28.022783, 34.151615, 27.782681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333097, 33.911972, 27.656002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456844, 33.678619, 27.956388>,  <27.531094, 33.538609, 28.136621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456844, 33.678619, 27.956388>,  <27.333097, 33.911972, 27.656002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456844, 33.678619, 27.956388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898342, 0.079710, 0.432004,
		-0.311884, -0.808275, -0.499420,
		0.309369, -0.583385, 0.750967,
		27.549656, 33.503605, 28.181679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760288, 33.389114, 27.738106>,  <27.333097, 33.911972, 27.656002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760288, 33.389114, 27.738106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.994390, 33.394222, 28.062405>,  <27.134851, 33.397285, 28.256985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.994390, 33.394222, 28.062405>,  <26.760288, 33.389114, 27.738106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994390, 33.394222, 28.062405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808811, 0.080038, 0.582597,
		-0.057452, -0.996710, 0.057170,
		0.585256, 0.012768, 0.810748,
		27.169968, 33.398052, 28.305630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476351, 32.903683, 28.234619>,  <26.760288, 33.389114, 27.738106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476351, 32.903683, 28.234619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684542, 33.182392, 28.432043>,  <26.809456, 33.349617, 28.550497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684542, 33.182392, 28.432043>,  <26.476351, 32.903683, 28.234619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684542, 33.182392, 28.432043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761799, 0.117824, 0.637009,
		0.385701, -0.707543, 0.592130,
		0.520478, 0.696779, 0.493561,
		26.840685, 33.391426, 28.580111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401054, 32.633579, 28.967117>,  <26.476351, 32.903683, 28.234619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401054, 32.633579, 28.967117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527981, 33.011974, 28.993725>,  <26.604137, 33.239010, 29.009689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527981, 33.011974, 28.993725>,  <26.401054, 32.633579, 28.967117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527981, 33.011974, 28.993725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772864, 0.217324, 0.596198,
		0.549538, -0.240592, 0.800077,
		0.317316, 0.945984, 0.066517,
		26.623177, 33.295769, 29.013680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387478, 32.874001, 29.633101>,  <26.401054, 32.633579, 28.967117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387478, 32.874001, 29.633101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.422045, 33.240795, 29.477320>,  <26.442785, 33.460873, 29.383850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.422045, 33.240795, 29.477320>,  <26.387478, 32.874001, 29.633101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422045, 33.240795, 29.477320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501051, 0.377884, 0.778558,
		0.861092, 0.127854, 0.492111,
		0.086419, 0.916983, -0.389454,
		26.447971, 33.515888, 29.360483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662928, 33.339264, 30.184834>,  <26.387478, 32.874001, 29.633101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662928, 33.339264, 30.184834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.497351, 33.578899, 29.910681>,  <26.398005, 33.722679, 29.746189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.497351, 33.578899, 29.910681>,  <26.662928, 33.339264, 30.184834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497351, 33.578899, 29.910681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483245, 0.493445, 0.723178,
		0.771444, 0.630561, 0.085247,
		-0.413943, 0.599086, -0.685381,
		26.373167, 33.758625, 29.705067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878122, 34.061558, 30.393209>,  <26.662928, 33.339264, 30.184834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878122, 34.061558, 30.393209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543747, 34.046215, 30.174217>,  <26.343121, 34.037010, 30.042822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.543747, 34.046215, 30.174217>,  <26.878122, 34.061558, 30.393209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543747, 34.046215, 30.174217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508061, 0.431340, 0.745533,
		0.207554, 0.901373, -0.380062,
		-0.835940, -0.038356, -0.547480,
		26.292965, 34.034710, 30.009974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573780, 34.753834, 30.430191>,  <26.878122, 34.061558, 30.393209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573780, 34.753834, 30.430191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.292841, 34.493790, 30.314220>,  <26.124277, 34.337761, 30.244638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.292841, 34.493790, 30.314220>,  <26.573780, 34.753834, 30.430191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292841, 34.493790, 30.314220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577747, 0.282694, 0.765697,
		-0.415830, 0.705291, -0.574152,
		-0.702349, -0.650115, -0.289927,
		26.082136, 34.298756, 30.227242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988407, 35.071133, 30.545034>,  <26.573780, 34.753834, 30.430191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988407, 35.071133, 30.545034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.874605, 34.688042, 30.528023>,  <25.806324, 34.458187, 30.517817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.874605, 34.688042, 30.528023>,  <25.988407, 35.071133, 30.545034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874605, 34.688042, 30.528023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587415, 0.139097, 0.797242,
		-0.757627, 0.251802, -0.602160,
		-0.284506, -0.957731, -0.042528,
		25.789253, 34.400723, 30.515265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246990, 35.061989, 30.480118>,  <25.988407, 35.071133, 30.545034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246990, 35.061989, 30.480118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.372410, 34.715801, 30.636400>,  <25.447662, 34.508087, 30.730169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.372410, 34.715801, 30.636400>,  <25.246990, 35.061989, 30.480118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372410, 34.715801, 30.636400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718347, 0.052901, 0.693671,
		-0.621019, -0.498164, -0.605119,
		0.313550, -0.865467, 0.390707,
		25.466475, 34.456161, 30.753613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693878, 34.641953, 30.859570>,  <25.246990, 35.061989, 30.480118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693878, 34.641953, 30.859570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.015497, 34.463058, 31.016283>,  <25.208467, 34.355721, 31.110312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.015497, 34.463058, 31.016283>,  <24.693878, 34.641953, 30.859570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015497, 34.463058, 31.016283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522317, -0.216484, 0.824815,
		-0.284075, -0.867821, -0.407662,
		0.804044, -0.447238, 0.391780,
		25.256710, 34.328888, 31.133818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.359812, 34.212158, 31.281021>,  <24.693878, 34.641953, 30.859570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.359812, 34.212158, 31.281021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.729904, 34.165474, 31.425423>,  <24.951960, 34.137463, 31.512064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.729904, 34.165474, 31.425423>,  <24.359812, 34.212158, 31.281021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729904, 34.165474, 31.425423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351969, 0.091207, 0.931557,
		-0.141651, -0.988969, 0.043308,
		0.925231, -0.116712, 0.361006,
		25.007473, 34.130463, 31.533724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.289616, 33.803249, 31.852034>,  <24.359812, 34.212158, 31.281021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.289616, 33.803249, 31.852034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.629765, 34.007175, 31.904118>,  <24.833855, 34.129532, 31.935368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.629765, 34.007175, 31.904118>,  <24.289616, 33.803249, 31.852034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629765, 34.007175, 31.904118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245958, 0.166376, 0.954894,
		0.465158, -0.844041, 0.266875,
		0.850372, 0.509817, 0.130208,
		24.884876, 34.160122, 31.943180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.521946, 33.536530, 32.383759>,  <24.289616, 33.803249, 31.852034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.521946, 33.536530, 32.383759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.711897, 33.888332, 32.371414>,  <24.825867, 34.099415, 32.364006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.711897, 33.888332, 32.371414>,  <24.521946, 33.536530, 32.383759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711897, 33.888332, 32.371414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166649, 0.124302, 0.978150,
		0.864129, -0.459359, 0.205597,
		0.474878, 0.879511, -0.030861,
		24.854361, 34.152187, 32.362156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917076, 33.607269, 32.976566>,  <24.521946, 33.536530, 32.383759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917076, 33.607269, 32.976566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.926506, 33.993435, 32.872700>,  <24.932163, 34.225132, 32.810379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.926506, 33.993435, 32.872700>,  <24.917076, 33.607269, 32.976566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926506, 33.993435, 32.872700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117558, 0.260612, 0.958259,
		0.992786, 0.007937, 0.119636,
		0.023573, 0.965411, -0.259665,
		24.933578, 34.283058, 32.794800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369299, 33.903774, 33.440742>,  <24.917076, 33.607269, 32.976566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369299, 33.903774, 33.440742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.124495, 34.179466, 33.285618>,  <24.977612, 34.344883, 33.192543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.124495, 34.179466, 33.285618>,  <25.369299, 33.903774, 33.440742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124495, 34.179466, 33.285618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174227, 0.360825, 0.916215,
		0.771418, 0.628303, -0.100747,
		-0.612013, 0.689232, -0.387814,
		24.940891, 34.386234, 33.169273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956444, 34.274960, 33.732338>,  <25.369299, 33.903774, 33.440742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956444, 34.274960, 33.732338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.007158, 34.290863, 34.128792>,  <26.037588, 34.300404, 34.366665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.007158, 34.290863, 34.128792>,  <25.956444, 34.274960, 33.732338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007158, 34.290863, 34.128792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663050, -0.746562, -0.054872,
		0.737760, 0.664128, -0.121015,
		0.126787, 0.039757, 0.991133,
		26.045195, 34.302792, 34.426132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752094, 34.337070, 33.967754>,  <25.956444, 34.274960, 33.732338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752094, 34.337070, 33.967754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541815, 34.178024, 34.268566>,  <26.415648, 34.082596, 34.449051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541815, 34.178024, 34.268566>,  <26.752094, 34.337070, 33.967754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541815, 34.178024, 34.268566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545355, -0.835998, -0.060784,
		0.652861, 0.378167, 0.656325,
		-0.525700, -0.397613, 0.752026,
		26.384106, 34.058739, 34.494175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281219, 34.341797, 34.506817>,  <26.752094, 34.337070, 33.967754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281219, 34.341797, 34.506817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995478, 34.068130, 34.565636>,  <26.824034, 33.903931, 34.600925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995478, 34.068130, 34.565636>,  <27.281219, 34.341797, 34.506817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995478, 34.068130, 34.565636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655271, -0.727725, -0.202575,
		0.245601, -0.048357, 0.968164,
		-0.714353, -0.684162, 0.147043,
		26.781172, 33.862881, 34.609749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653564, 33.891045, 34.986362>,  <27.281219, 34.341797, 34.506817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653564, 33.891045, 34.986362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318537, 33.704559, 34.872433>,  <27.117521, 33.592667, 34.804073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318537, 33.704559, 34.872433>,  <27.653564, 33.891045, 34.986362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318537, 33.704559, 34.872433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506304, -0.858251, -0.084031,
		-0.205276, -0.214590, 0.954889,
		-0.837567, -0.466214, -0.284826,
		27.067266, 33.564693, 34.786983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567427, 33.316998, 35.438828>,  <27.653564, 33.891045, 34.986362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567427, 33.316998, 35.438828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372055, 33.233723, 35.099865>,  <27.254831, 33.183758, 34.896488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372055, 33.233723, 35.099865>,  <27.567427, 33.316998, 35.438828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372055, 33.233723, 35.099865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402350, -0.915459, -0.007001,
		-0.774307, -0.344372, 0.530902,
		-0.488430, -0.208187, -0.847405,
		27.225527, 33.171265, 34.845642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203936, 32.631546, 35.452221>,  <27.567427, 33.316998, 35.438828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203936, 32.631546, 35.452221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220461, 32.692158, 35.057186>,  <27.230377, 32.728523, 34.820164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220461, 32.692158, 35.057186>,  <27.203936, 32.631546, 35.452221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220461, 32.692158, 35.057186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345424, -0.929651, -0.128187,
		-0.937537, -0.335841, -0.090750,
		0.041315, 0.151528, -0.987589,
		27.232855, 32.737617, 34.760910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551285, 31.949783, 35.249199>,  <27.203936, 32.631546, 35.452221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551285, 31.949783, 35.249199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.462337, 32.164085, 34.923370>,  <27.408970, 32.292667, 34.727875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.462337, 32.164085, 34.923370>,  <27.551285, 31.949783, 35.249199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462337, 32.164085, 34.923370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495235, -0.657606, -0.567713,
		-0.839819, -0.529642, -0.119095,
		-0.222366, 0.535756, -0.814567,
		27.395628, 32.324814, 34.679001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207542, 31.575605, 34.683247>,  <27.551285, 31.949783, 35.249199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207542, 31.575605, 34.683247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.387449, 31.884470, 34.503700>,  <27.495394, 32.069790, 34.395973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.387449, 31.884470, 34.503700>,  <27.207542, 31.575605, 34.683247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387449, 31.884470, 34.503700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273303, -0.597443, -0.753901,
		-0.850304, 0.216403, -0.479743,
		0.449765, 0.772161, -0.448864,
		27.522379, 32.116119, 34.369041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080111, 31.443295, 33.984356>,  <27.207542, 31.575605, 34.683247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080111, 31.443295, 33.984356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364008, 31.725018, 33.990223>,  <27.534346, 31.894053, 33.993744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364008, 31.725018, 33.990223>,  <27.080111, 31.443295, 33.984356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364008, 31.725018, 33.990223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446665, -0.433818, -0.782491,
		-0.544753, 0.561917, -0.622489,
		0.709742, 0.704309, 0.014665,
		27.576931, 31.936310, 33.994621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022867, 31.771427, 33.393288>,  <27.080111, 31.443295, 33.984356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022867, 31.771427, 33.393288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.394365, 31.830765, 33.529182>,  <27.617264, 31.866367, 33.610722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.394365, 31.830765, 33.529182>,  <27.022867, 31.771427, 33.393288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394365, 31.830765, 33.529182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370715, -0.371488, -0.851215,
		-0.000062, 0.916510, -0.400012,
		0.928747, 0.148343, 0.339741,
		27.672989, 31.875267, 33.631104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331213, 32.197678, 33.001434>,  <27.022867, 31.771427, 33.393288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331213, 32.197678, 33.001434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.633097, 31.990463, 33.162457>,  <27.814226, 31.866135, 33.259068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.633097, 31.990463, 33.162457>,  <27.331213, 32.197678, 33.001434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633097, 31.990463, 33.162457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414767, -0.098654, -0.904564,
		0.508313, 0.849648, 0.140411,
		0.754709, -0.518040, 0.402553,
		27.859509, 31.835051, 33.283222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825693, 32.477722, 32.633999>,  <27.331213, 32.197678, 33.001434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825693, 32.477722, 32.633999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980408, 32.144688, 32.792591>,  <28.073236, 31.944866, 32.887745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980408, 32.144688, 32.792591>,  <27.825693, 32.477722, 32.633999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980408, 32.144688, 32.792591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605727, -0.094807, -0.790004,
		0.695336, 0.545721, 0.467650,
		0.386786, -0.832586, 0.396481,
		28.096443, 31.894911, 32.911537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615166, 32.565228, 32.588852>,  <27.825693, 32.477722, 32.633999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615166, 32.565228, 32.588852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.547773, 32.174778, 32.643692>,  <28.507338, 31.940508, 32.676598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.547773, 32.174778, 32.643692>,  <28.615166, 32.565228, 32.588852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547773, 32.174778, 32.643692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639526, -0.214092, -0.738357,
		0.750080, -0.036718, 0.660327,
		-0.168482, -0.976123, 0.137103,
		28.497229, 31.881941, 32.684822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215034, 32.224602, 32.661575>,  <28.615166, 32.565228, 32.588852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215034, 32.224602, 32.661575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.961922, 31.942963, 32.532681>,  <28.810053, 31.773979, 32.455345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.961922, 31.942963, 32.532681>,  <29.215034, 32.224602, 32.661575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961922, 31.942963, 32.532681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663680, -0.278792, -0.694121,
		0.398890, -0.653089, 0.643709,
		-0.632784, -0.704094, -0.322235,
		28.772087, 31.731735, 32.436008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674997, 31.610699, 32.603996>,  <29.215034, 32.224602, 32.661575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674997, 31.610699, 32.603996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356441, 31.564587, 32.366516>,  <29.165308, 31.536919, 32.224030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356441, 31.564587, 32.366516>,  <29.674997, 31.610699, 32.603996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356441, 31.564587, 32.366516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581450, -0.415996, -0.699187,
		-0.166372, -0.902029, 0.398325,
		-0.796389, -0.115281, -0.593696,
		29.117525, 31.530003, 32.188408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942478, 31.071886, 32.051826>,  <29.674997, 31.610699, 32.603996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942478, 31.071886, 32.051826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571032, 31.116377, 31.910236>,  <29.348164, 31.143070, 31.825283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571032, 31.116377, 31.910236>,  <29.942478, 31.071886, 32.051826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571032, 31.116377, 31.910236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313079, -0.277093, -0.908406,
		-0.199118, -0.954384, 0.222493,
		-0.928619, 0.111222, -0.353972,
		29.292446, 31.149744, 31.804045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869263, 30.450092, 31.663574>,  <29.942478, 31.071886, 32.051826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869263, 30.450092, 31.663574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639679, 30.752346, 31.537342>,  <29.501928, 30.933699, 31.461603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639679, 30.752346, 31.537342>,  <29.869263, 30.450092, 31.663574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639679, 30.752346, 31.537342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244799, -0.209429, -0.946685,
		-0.781438, -0.620611, -0.064776,
		-0.573958, 0.755633, -0.315581,
		29.467491, 30.979036, 31.442667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441895, 30.202982, 31.081673>,  <29.869263, 30.450092, 31.663574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441895, 30.202982, 31.081673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476805, 30.601011, 31.062862>,  <29.497751, 30.839828, 31.051577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476805, 30.601011, 31.062862>,  <29.441895, 30.202982, 31.081673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476805, 30.601011, 31.062862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177829, -0.062011, -0.982106,
		-0.980183, 0.077352, -0.182365,
		0.087276, 0.995073, -0.047027,
		29.502987, 30.899534, 31.048754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046606, 30.378651, 30.468529>,  <29.441895, 30.202982, 31.081673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046606, 30.378651, 30.468529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301718, 30.678984, 30.537214>,  <29.454784, 30.859184, 30.578426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301718, 30.678984, 30.537214>,  <29.046606, 30.378651, 30.468529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301718, 30.678984, 30.537214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264030, -0.003693, -0.964507,
		-0.723549, 0.660483, -0.200598,
		0.637781, 0.750832, 0.171715,
		29.493052, 30.904234, 30.588728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931660, 30.722200, 29.940804>,  <29.046606, 30.378651, 30.468529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931660, 30.722200, 29.940804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280685, 30.869696, 30.068966>,  <29.490101, 30.958193, 30.145864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280685, 30.869696, 30.068966>,  <28.931660, 30.722200, 29.940804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280685, 30.869696, 30.068966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329423, 0.040155, -0.943328,
		-0.360707, 0.928665, -0.086433,
		0.872566, 0.368738, 0.320408,
		29.542456, 30.980318, 30.165089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063498, 31.178907, 29.497742>,  <28.931660, 30.722200, 29.940804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063498, 31.178907, 29.497742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425789, 31.098125, 29.646805>,  <29.643164, 31.049656, 29.736242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425789, 31.098125, 29.646805>,  <29.063498, 31.178907, 29.497742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425789, 31.098125, 29.646805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402369, 0.133257, -0.905727,
		0.133257, 0.970287, 0.201955,
		0.905727, -0.201955, 0.372656,
		29.697508, 31.037539, 29.758602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508219, 31.722139, 29.162777>,  <29.063498, 31.178907, 29.497742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508219, 31.722139, 29.162777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.713505, 31.398104, 29.276173>,  <29.836676, 31.203682, 29.344210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.713505, 31.398104, 29.276173>,  <29.508219, 31.722139, 29.162777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713505, 31.398104, 29.276173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486901, 0.002805, -0.873453,
		0.706780, 0.586299, 0.395873,
		0.513215, -0.810090, 0.283487,
		29.867470, 31.155077, 29.361219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.469357, 31.877182, 45.461586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157345, 31.642473, 45.548531>,  <34.970139, 31.501648, 45.600697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157345, 31.642473, 45.548531>,  <35.469357, 31.877182, 45.461586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157345, 31.642473, 45.548531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317616, -0.071981, 0.945484,
		-0.539138, 0.806546, 0.242515,
		-0.780032, -0.586773, 0.217364,
		34.923336, 31.466442, 45.613739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330307, 31.996796, 46.059818>,  <35.469357, 31.877182, 45.461586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330307, 31.996796, 46.059818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104778, 31.666689, 46.046944>,  <34.969460, 31.468624, 46.039219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104778, 31.666689, 46.046944>,  <35.330307, 31.996796, 46.059818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104778, 31.666689, 46.046944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147948, -0.139262, 0.979141,
		-0.812534, 0.547304, 0.200616,
		-0.563826, -0.825266, -0.032183,
		34.935631, 31.419109, 46.037289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924446, 32.085522, 46.585991>,  <35.330307, 31.996796, 46.059818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924446, 32.085522, 46.585991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887302, 31.694950, 46.508053>,  <34.865017, 31.460608, 46.461292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887302, 31.694950, 46.508053>,  <34.924446, 32.085522, 46.585991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887302, 31.694950, 46.508053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170310, -0.208378, 0.963106,
		-0.981005, 0.056248, 0.185646,
		-0.092858, -0.976429, -0.194840,
		34.859444, 31.402021, 46.449600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453754, 31.804596, 47.102566>,  <34.924446, 32.085522, 46.585991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453754, 31.804596, 47.102566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648705, 31.478266, 46.978058>,  <34.765675, 31.282467, 46.903351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648705, 31.478266, 46.978058>,  <34.453754, 31.804596, 47.102566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648705, 31.478266, 46.978058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159345, -0.267396, 0.950320,
		-0.858528, -0.512766, -0.000326,
		0.487379, -0.815825, -0.311274,
		34.794918, 31.233519, 46.884674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294785, 31.444180, 47.691833>,  <34.453754, 31.804596, 47.102566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294785, 31.444180, 47.691833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566738, 31.219414, 47.503365>,  <34.729912, 31.084555, 47.390282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566738, 31.219414, 47.503365>,  <34.294785, 31.444180, 47.691833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566738, 31.219414, 47.503365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167598, -0.506453, 0.845823,
		-0.713910, -0.654030, -0.250154,
		0.679885, -0.561916, -0.471176,
		34.770702, 31.050838, 47.362011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169975, 30.713703, 47.874859>,  <34.294785, 31.444180, 47.691833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169975, 30.713703, 47.874859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552917, 30.765236, 47.771420>,  <34.782684, 30.796156, 47.709358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552917, 30.765236, 47.771420>,  <34.169975, 30.713703, 47.874859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552917, 30.765236, 47.771420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288906, -0.431615, 0.854542,
		-0.001518, -0.892810, -0.450431,
		0.957356, 0.128834, -0.258594,
		34.840126, 30.803886, 47.693840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547665, 30.057957, 48.004795>,  <34.169975, 30.713703, 47.874859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547665, 30.057957, 48.004795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855007, 30.313448, 47.988537>,  <35.039413, 30.466742, 47.978783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855007, 30.313448, 47.988537>,  <34.547665, 30.057957, 48.004795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855007, 30.313448, 47.988537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396974, -0.425796, 0.813086,
		0.502032, -0.640879, -0.580722,
		0.768359, 0.638726, -0.040649,
		35.085514, 30.505066, 47.976341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174400, 29.613827, 48.157276>,  <34.547665, 30.057957, 48.004795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174400, 29.613827, 48.157276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.249519, 29.996315, 48.247051>,  <35.294590, 30.225807, 48.300915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.249519, 29.996315, 48.247051>,  <35.174400, 29.613827, 48.157276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249519, 29.996315, 48.247051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427298, -0.285287, 0.857921,
		0.884391, -0.065214, -0.462168,
		0.187799, 0.956221, 0.224439,
		35.305859, 30.283182, 48.314384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857830, 29.597792, 48.477783>,  <35.174400, 29.613827, 48.157276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857830, 29.597792, 48.477783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675716, 29.935642, 48.590443>,  <35.566448, 30.138351, 48.658039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675716, 29.935642, 48.590443>,  <35.857830, 29.597792, 48.477783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675716, 29.935642, 48.590443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338070, -0.128652, 0.932286,
		0.823668, 0.519669, -0.226970,
		-0.455280, 0.844625, 0.281651,
		35.539131, 30.189030, 48.674938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297504, 29.897625, 49.059181>,  <35.857830, 29.597792, 48.477783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297504, 29.897625, 49.059181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973579, 30.125652, 49.114635>,  <35.779224, 30.262468, 49.147907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973579, 30.125652, 49.114635>,  <36.297504, 29.897625, 49.059181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973579, 30.125652, 49.114635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143092, -0.037240, 0.989009,
		0.568966, 0.820752, -0.051415,
		-0.809816, 0.570069, 0.138631,
		35.730633, 30.296673, 49.156223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458328, 30.379751, 49.548714>,  <36.297504, 29.897625, 49.059181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458328, 30.379751, 49.548714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060955, 30.334318, 49.554203>,  <35.822533, 30.307058, 49.557495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060955, 30.334318, 49.554203>,  <36.458328, 30.379751, 49.548714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060955, 30.334318, 49.554203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009049, 0.041573, 0.999094,
		-0.114051, 0.992658, -0.040272,
		-0.993434, -0.113583, 0.013724,
		35.762924, 30.300243, 49.558319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245949, 30.835587, 50.083809>,  <36.458328, 30.379751, 49.548714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245949, 30.835587, 50.083809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959591, 30.566383, 50.009453>,  <35.787777, 30.404861, 49.964840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959591, 30.566383, 50.009453>,  <36.245949, 30.835587, 50.083809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959591, 30.566383, 50.009453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122887, -0.140629, 0.982406,
		-0.687307, 0.726145, 0.017972,
		-0.715896, -0.673006, -0.185889,
		35.744823, 30.364481, 49.953686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548473, 31.140097, 50.303349>,  <36.245949, 30.835587, 50.083809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548473, 31.140097, 50.303349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580441, 30.743238, 50.341843>,  <35.599621, 30.505123, 50.364937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580441, 30.743238, 50.341843>,  <35.548473, 31.140097, 50.303349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580441, 30.743238, 50.341843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227434, 0.075845, 0.970835,
		-0.970509, -0.099472, -0.219586,
		0.079916, -0.992146, 0.096231,
		35.604416, 30.445595, 50.370712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322094, 31.343489, 51.010715>,  <35.548473, 31.140097, 50.303349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322094, 31.343489, 51.010715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109013, 31.669071, 50.918022>,  <34.981163, 31.864420, 50.862404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109013, 31.669071, 50.918022>,  <35.322094, 31.343489, 51.010715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109013, 31.669071, 50.918022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811443, -0.569022, -0.133324,
		-0.240383, 0.117018, 0.963599,
		-0.532707, 0.813954, -0.231736,
		34.949200, 31.913258, 50.848499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971012, 31.470940, 51.578953>,  <35.322094, 31.343489, 51.010715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971012, 31.470940, 51.578953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872322, 31.822060, 51.743191>,  <34.813107, 32.032730, 51.841736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872322, 31.822060, 51.743191>,  <34.971012, 31.470940, 51.578953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872322, 31.822060, 51.743191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000658, 0.423849, -0.905733,
		-0.969085, -0.223200, -0.105153,
		-0.246728, 0.877801, 0.410598,
		34.798306, 32.085400, 51.866371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428535, 31.671246, 51.235348>,  <34.971012, 31.470940, 51.578953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428535, 31.671246, 51.235348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580486, 31.999500, 51.406113>,  <34.671658, 32.196453, 51.508572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580486, 31.999500, 51.406113>,  <34.428535, 31.671246, 51.235348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580486, 31.999500, 51.406113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083929, 0.490178, -0.867572,
		-0.921223, 0.293739, 0.255081,
		0.379875, 0.820636, 0.426909,
		34.694450, 32.245689, 51.534187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136166, 32.116196, 50.953327>,  <34.428535, 31.671246, 51.235348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136166, 32.116196, 50.953327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413372, 32.356857, 51.112194>,  <34.579697, 32.501255, 51.207516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413372, 32.356857, 51.112194>,  <34.136166, 32.116196, 50.953327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413372, 32.356857, 51.112194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008207, 0.544295, -0.838854,
		-0.720875, 0.584599, 0.372268,
		0.693017, 0.601653, 0.397166,
		34.621277, 32.537354, 51.231342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907631, 32.745380, 50.784046>,  <34.136166, 32.116196, 50.953327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907631, 32.745380, 50.784046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292507, 32.793610, 50.881737>,  <34.523434, 32.822548, 50.940353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292507, 32.793610, 50.881737>,  <33.907631, 32.745380, 50.784046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292507, 32.793610, 50.881737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112872, 0.639547, -0.760421,
		-0.247882, 0.759238, 0.601758,
		0.962192, 0.120573, 0.244229,
		34.581165, 32.829781, 50.955006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042904, 33.512978, 50.661755>,  <33.907631, 32.745380, 50.784046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042904, 33.512978, 50.661755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393944, 33.323032, 50.635433>,  <34.604568, 33.209064, 50.619640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.393944, 33.323032, 50.635433>,  <34.042904, 33.512978, 50.661755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393944, 33.323032, 50.635433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203148, 0.492702, -0.846153,
		0.434227, 0.729214, 0.528861,
		0.877598, -0.474859, -0.065806,
		34.657223, 33.180576, 50.615692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465290, 33.986824, 50.300419>,  <34.042904, 33.512978, 50.661755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465290, 33.986824, 50.300419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658546, 33.638050, 50.268669>,  <34.774502, 33.428783, 50.249619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658546, 33.638050, 50.268669>,  <34.465290, 33.986824, 50.300419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658546, 33.638050, 50.268669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334280, 0.267489, -0.903718,
		0.809217, 0.410090, 0.420706,
		0.483140, -0.871938, -0.079372,
		34.803490, 33.376469, 50.244858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072334, 34.189941, 50.065453>,  <34.465290, 33.986824, 50.300419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072334, 34.189941, 50.065453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033127, 33.804451, 49.966148>,  <35.009602, 33.573158, 49.906567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033127, 33.804451, 49.966148>,  <35.072334, 34.189941, 50.065453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033127, 33.804451, 49.966148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221898, 0.222016, -0.949458,
		0.970131, -0.148155, 0.192085,
		-0.098021, -0.963721, -0.248259,
		35.003719, 33.515335, 49.891670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536900, 34.103642, 49.576057>,  <35.072334, 34.189941, 50.065453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536900, 34.103642, 49.576057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290657, 33.793468, 49.519855>,  <35.142910, 33.607365, 49.486134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290657, 33.793468, 49.519855>,  <35.536900, 34.103642, 49.576057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290657, 33.793468, 49.519855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165950, 0.046732, -0.985026,
		0.770383, -0.629704, 0.099914,
		-0.615606, -0.775428, -0.140501,
		35.105976, 33.560841, 49.477707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834728, 33.713703, 49.052921>,  <35.536900, 34.103642, 49.576057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834728, 33.713703, 49.052921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449245, 33.608856, 49.073158>,  <35.217957, 33.545948, 49.085300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449245, 33.608856, 49.073158>,  <35.834728, 33.713703, 49.052921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449245, 33.608856, 49.073158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058976, 0.024222, -0.997965,
		0.260357, -0.964732, -0.038802,
		-0.963709, -0.262116, 0.050590,
		35.160133, 33.530220, 49.088337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846394, 33.231770, 48.598602>,  <35.834728, 33.713703, 49.052921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846394, 33.231770, 48.598602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462662, 33.334511, 48.645439>,  <35.232422, 33.396156, 48.673542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462662, 33.334511, 48.645439>,  <35.846394, 33.231770, 48.598602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462662, 33.334511, 48.645439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101855, 0.071907, -0.992197,
		-0.263265, -0.963773, -0.042821,
		-0.959331, 0.256850, 0.117096,
		35.174862, 33.411564, 48.680569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600471, 32.967472, 47.987751>,  <35.846394, 33.231770, 48.598602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600471, 32.967472, 47.987751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350121, 33.258118, 48.101116>,  <35.199909, 33.432503, 48.169136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350121, 33.258118, 48.101116>,  <35.600471, 32.967472, 47.987751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350121, 33.258118, 48.101116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189120, 0.211144, -0.958985,
		-0.756648, -0.653801, 0.005268,
		-0.625873, 0.726610, 0.283409,
		35.162357, 33.476101, 48.186138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045822, 32.984489, 47.492329>,  <35.600471, 32.967472, 47.987751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045822, 32.984489, 47.492329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017429, 33.336781, 47.679638>,  <35.000393, 33.548157, 47.792023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017429, 33.336781, 47.679638>,  <35.045822, 32.984489, 47.492329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017429, 33.336781, 47.679638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307768, 0.427216, -0.850156,
		-0.948810, -0.204464, 0.240735,
		-0.070980, 0.880728, 0.468274,
		34.996136, 33.600998, 47.820122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395485, 33.206348, 47.279083>,  <35.045822, 32.984489, 47.492329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395485, 33.206348, 47.279083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632530, 33.514889, 47.371891>,  <34.774757, 33.700012, 47.427574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632530, 33.514889, 47.371891>,  <34.395485, 33.206348, 47.279083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632530, 33.514889, 47.371891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136946, 0.380337, -0.914653,
		-0.793759, 0.510264, 0.331026,
		0.592615, 0.771346, 0.232017,
		34.810314, 33.746292, 47.441498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077766, 33.723213, 46.941021>,  <34.395485, 33.206348, 47.279083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077766, 33.723213, 46.941021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446663, 33.863586, 47.005898>,  <34.668003, 33.947811, 47.044823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446663, 33.863586, 47.005898>,  <34.077766, 33.723213, 46.941021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446663, 33.863586, 47.005898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022584, 0.467724, -0.883586,
		-0.385944, 0.811221, 0.439282,
		0.922246, 0.350935, 0.162195,
		34.723335, 33.968868, 47.054558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415329, 33.916584, 47.231544>,  <34.077766, 33.723213, 46.941021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415329, 33.916584, 47.231544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019997, 33.903511, 47.172031>,  <32.782799, 33.895668, 47.136322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019997, 33.903511, 47.172031>,  <33.415329, 33.916584, 47.231544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019997, 33.903511, 47.172031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129325, -0.336087, 0.932910,
		-0.080493, 0.941264, 0.327938,
		-0.988330, -0.032682, -0.148781,
		32.723499, 33.893707, 47.127396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090916, 34.415524, 47.833500>,  <33.415329, 33.916584, 47.231544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090916, 34.415524, 47.833500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.846779, 34.133141, 47.689774>,  <32.700298, 33.963711, 47.603539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.846779, 34.133141, 47.689774>,  <33.090916, 34.415524, 47.833500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846779, 34.133141, 47.689774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212494, -0.291059, 0.932808,
		-0.763105, 0.645683, 0.027634,
		-0.610342, -0.705959, -0.359313,
		32.663677, 33.921352, 47.581978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540264, 34.458572, 48.293358>,  <33.090916, 34.415524, 47.833500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540264, 34.458572, 48.293358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506744, 34.091351, 48.138355>,  <32.486633, 33.871017, 48.045353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506744, 34.091351, 48.138355>,  <32.540264, 34.458572, 48.293358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506744, 34.091351, 48.138355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137852, -0.374451, 0.916942,
		-0.986901, 0.130259, -0.095176,
		-0.083801, -0.918052, -0.387503,
		32.481606, 33.815933, 48.022106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033134, 34.058487, 48.681293>,  <32.540264, 34.458572, 48.293358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033134, 34.058487, 48.681293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209122, 33.758949, 48.483032>,  <32.314713, 33.579227, 48.364075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209122, 33.758949, 48.483032>,  <32.033134, 34.058487, 48.681293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209122, 33.758949, 48.483032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225475, -0.626374, 0.746201,
		-0.869248, -0.216545, -0.444427,
		0.439964, -0.748842, -0.495649,
		32.341110, 33.534298, 48.334339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530273, 33.542229, 48.719990>,  <32.033134, 34.058487, 48.681293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530273, 33.542229, 48.719990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879717, 33.359421, 48.653126>,  <32.089382, 33.249737, 48.613007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879717, 33.359421, 48.653126>,  <31.530273, 33.542229, 48.719990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879717, 33.359421, 48.653126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272857, -0.744460, 0.609368,
		-0.402935, -0.486739, -0.775067,
		0.873609, -0.457018, -0.167159,
		32.141800, 33.222317, 48.602978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342636, 32.815956, 48.698399>,  <31.530273, 33.542229, 48.719990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342636, 32.815956, 48.698399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.737282, 32.789124, 48.757858>,  <31.974070, 32.773026, 48.793533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.737282, 32.789124, 48.757858>,  <31.342636, 32.815956, 48.698399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737282, 32.789124, 48.757858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147876, -0.752344, 0.641958,
		0.068772, -0.655345, -0.752192,
		0.986612, -0.067083, 0.148650,
		32.033264, 32.768997, 48.802452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435448, 32.122475, 48.817326>,  <31.342636, 32.815956, 48.698399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435448, 32.122475, 48.817326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.750019, 32.326561, 48.956581>,  <31.938763, 32.449013, 49.040134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.750019, 32.326561, 48.956581>,  <31.435448, 32.122475, 48.817326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750019, 32.326561, 48.956581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073411, -0.482429, 0.872854,
		0.613301, -0.711996, -0.341941,
		0.786430, 0.510220, 0.348142,
		31.985949, 32.479626, 49.061024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373819, 31.373554, 48.737293>,  <31.435448, 32.122475, 48.817326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373819, 31.373554, 48.737293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060274, 31.133823, 48.672344>,  <30.872147, 30.989985, 48.633373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060274, 31.133823, 48.672344>,  <31.373819, 31.373554, 48.737293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060274, 31.133823, 48.672344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176780, 0.466080, -0.866902,
		0.595238, -0.650827, -0.471291,
		-0.783863, -0.599328, -0.162375,
		30.825115, 30.954025, 48.623631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571621, 30.932835, 48.199722>,  <31.373819, 31.373554, 48.737293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571621, 30.932835, 48.199722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172012, 30.915131, 48.199947>,  <30.932247, 30.904509, 48.200081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172012, 30.915131, 48.199947>,  <31.571621, 30.932835, 48.199722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172012, 30.915131, 48.199947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015205, 0.331282, -0.943409,
		0.041571, -0.942493, -0.331631,
		-0.999020, -0.044261, 0.000559,
		30.872307, 30.901852, 48.200115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361561, 30.502731, 47.649651>,  <31.571621, 30.932835, 48.199722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361561, 30.502731, 47.649651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.049379, 30.735277, 47.741657>,  <30.862070, 30.874805, 47.796860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.049379, 30.735277, 47.741657>,  <31.361561, 30.502731, 47.649651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049379, 30.735277, 47.741657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134344, 0.203367, -0.969842,
		-0.610610, -0.787817, -0.080615,
		-0.780453, 0.581366, 0.230016,
		30.815243, 30.909687, 47.810661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887766, 30.216919, 47.147255>,  <31.361561, 30.502731, 47.649651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887766, 30.216919, 47.147255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.769939, 30.578415, 47.271503>,  <30.699244, 30.795313, 47.346050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.769939, 30.578415, 47.271503>,  <30.887766, 30.216919, 47.147255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769939, 30.578415, 47.271503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323234, 0.211659, -0.922345,
		-0.899306, -0.372093, 0.229772,
		-0.294565, 0.903741, 0.310619,
		30.681570, 30.849537, 47.364689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330496, 30.299812, 46.738205>,  <30.887766, 30.216919, 47.147255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330496, 30.299812, 46.738205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.440006, 30.655710, 46.884304>,  <30.505713, 30.869249, 46.971962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.440006, 30.655710, 46.884304>,  <30.330496, 30.299812, 46.738205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440006, 30.655710, 46.884304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025241, 0.386269, -0.922041,
		-0.961462, 0.243214, 0.128209,
		0.273776, 0.889744, 0.365244,
		30.522139, 30.922634, 46.993877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881721, 30.675367, 46.428108>,  <30.330496, 30.299812, 46.738205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881721, 30.675367, 46.428108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.178816, 30.919769, 46.537670>,  <30.357073, 31.066410, 46.603405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.178816, 30.919769, 46.537670>,  <29.881721, 30.675367, 46.428108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178816, 30.919769, 46.537670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011258, 0.420398, -0.907270,
		-0.669492, 0.670777, 0.319122,
		0.742734, 0.611003, 0.273901,
		30.401636, 31.103069, 46.619839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681860, 31.301907, 46.282887>,  <29.881721, 30.675367, 46.428108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681860, 31.301907, 46.282887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.080177, 31.329252, 46.307293>,  <30.319168, 31.345659, 46.321938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.080177, 31.329252, 46.307293>,  <29.681860, 31.301907, 46.282887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080177, 31.329252, 46.307293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004049, 0.698056, -0.716031,
		-0.091545, 0.712772, 0.695396,
		0.995793, 0.068365, 0.061018,
		30.378916, 31.349762, 46.325600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.489304, 27.319870, 48.850609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.500977, 27.708437, 48.944843>,  <34.507980, 27.941576, 49.001385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.500977, 27.708437, 48.944843>,  <34.489304, 27.319870, 48.850609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500977, 27.708437, 48.944843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055736, 0.233740, -0.970700,
		-0.998019, 0.041454, -0.047322,
		0.029179, 0.971415, 0.235587,
		34.509731, 27.999861, 49.015518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972061, 27.734285, 48.537354>,  <34.489304, 27.319870, 48.850609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972061, 27.734285, 48.537354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.300285, 27.949726, 48.613869>,  <34.497219, 28.078991, 48.659779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.300285, 27.949726, 48.613869>,  <33.972061, 27.734285, 48.537354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300285, 27.949726, 48.613869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162351, 0.101262, -0.981523,
		-0.548023, 0.836452, -0.004352,
		0.820557, 0.538603, 0.191293,
		34.546452, 28.111307, 48.671257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859276, 28.326500, 48.282906>,  <33.972061, 27.734285, 48.537354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859276, 28.326500, 48.282906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256199, 28.282263, 48.305134>,  <34.494354, 28.255720, 48.318470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256199, 28.282263, 48.305134>,  <33.859276, 28.326500, 48.282906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256199, 28.282263, 48.305134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066210, 0.094963, -0.993277,
		0.104571, 0.989319, 0.101555,
		0.992311, -0.110591, 0.055573,
		34.553894, 28.249084, 48.321804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162033, 28.792706, 47.853279>,  <33.859276, 28.326500, 48.282906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162033, 28.792706, 47.853279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469860, 28.540150, 47.891468>,  <34.654556, 28.388617, 47.914383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469860, 28.540150, 47.891468>,  <34.162033, 28.792706, 47.853279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469860, 28.540150, 47.891468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203443, 0.100700, -0.973895,
		0.605292, 0.768900, 0.205947,
		0.769566, -0.631389, 0.095474,
		34.700729, 28.350733, 47.920109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718197, 29.111156, 47.403385>,  <34.162033, 28.792706, 47.853279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718197, 29.111156, 47.403385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.783745, 28.724529, 47.482265>,  <34.823074, 28.492552, 47.529594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.783745, 28.724529, 47.482265>,  <34.718197, 29.111156, 47.403385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783745, 28.724529, 47.482265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272631, -0.147748, -0.950707,
		0.948061, 0.209553, 0.239306,
		0.163866, -0.966570, 0.197205,
		34.832905, 28.434559, 47.541428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321381, 29.001450, 47.111523>,  <34.718197, 29.111156, 47.403385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321381, 29.001450, 47.111523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.172405, 28.632435, 47.151947>,  <35.083019, 28.411026, 47.176201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.172405, 28.632435, 47.151947>,  <35.321381, 29.001450, 47.111523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172405, 28.632435, 47.151947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234479, -0.198901, -0.951556,
		0.897947, -0.330701, 0.290395,
		-0.372440, -0.922538, 0.101060,
		35.060673, 28.355673, 47.182266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792858, 28.507355, 46.844666>,  <35.321381, 29.001450, 47.111523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792858, 28.507355, 46.844666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.441872, 28.318426, 46.811264>,  <35.231281, 28.205069, 46.791225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.441872, 28.318426, 46.811264>,  <35.792858, 28.507355, 46.844666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441872, 28.318426, 46.811264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175733, -0.154594, -0.972224,
		0.446293, -0.867764, 0.218653,
		-0.877463, -0.472321, -0.083500,
		35.178635, 28.176729, 46.786213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920792, 27.946373, 46.430386>,  <35.792858, 28.507355, 46.844666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920792, 27.946373, 46.430386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.526604, 28.010576, 46.408154>,  <35.290092, 28.049099, 46.394814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.526604, 28.010576, 46.408154>,  <35.920792, 27.946373, 46.430386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526604, 28.010576, 46.408154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029396, -0.161109, -0.986499,
		-0.167343, -0.973790, 0.154047,
		-0.985460, 0.160555, -0.055585,
		35.230965, 28.058729, 46.391479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602562, 27.564966, 45.835796>,  <35.920792, 27.946373, 46.430386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602562, 27.564966, 45.835796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.321262, 27.844200, 45.889633>,  <35.152481, 28.011740, 45.921936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.321262, 27.844200, 45.889633>,  <35.602562, 27.564966, 45.835796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321262, 27.844200, 45.889633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153408, 0.035853, -0.987512,
		-0.694194, -0.715116, 0.081878,
		-0.703250, 0.698086, 0.134593,
		35.110287, 28.053625, 45.930012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989220, 27.226152, 45.422050>,  <35.602562, 27.564966, 45.835796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989220, 27.226152, 45.422050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.890968, 27.607191, 45.493862>,  <34.832020, 27.835814, 45.536949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.890968, 27.607191, 45.493862>,  <34.989220, 27.226152, 45.422050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890968, 27.607191, 45.493862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427958, 0.059616, -0.901830,
		-0.869781, -0.298345, 0.393027,
		-0.245626, 0.952594, 0.179532,
		34.817280, 27.892969, 45.547722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396038, 27.179293, 45.161137>,  <34.989220, 27.226152, 45.422050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396038, 27.179293, 45.161137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.524033, 27.557941, 45.176701>,  <34.600830, 27.785131, 45.186039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.524033, 27.557941, 45.176701>,  <34.396038, 27.179293, 45.161137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524033, 27.557941, 45.176701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176744, 0.099993, -0.979164,
		-0.930789, 0.306444, 0.199306,
		0.319988, 0.946622, 0.038910,
		34.620029, 27.841928, 45.188374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100605, 27.474192, 44.597195>,  <34.396038, 27.179293, 45.161137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100605, 27.474192, 44.597195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359509, 27.767523, 44.680424>,  <34.514851, 27.943521, 44.730362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359509, 27.767523, 44.680424>,  <34.100605, 27.474192, 44.597195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359509, 27.767523, 44.680424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029861, 0.297141, -0.954366,
		-0.761688, 0.611506, 0.214224,
		0.647255, 0.733326, 0.208069,
		34.553684, 27.987520, 44.742844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816895, 27.931221, 45.074020>,  <34.100605, 27.474192, 44.597195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816895, 27.931221, 45.074020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.436718, 27.859484, 44.972431>,  <33.208614, 27.816441, 44.911476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.436718, 27.859484, 44.972431>,  <33.816895, 27.931221, 45.074020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436718, 27.859484, 44.972431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205216, -0.251804, 0.945770,
		-0.233570, 0.951016, 0.202520,
		-0.950438, -0.179343, -0.253977,
		33.151588, 27.805681, 44.896236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403843, 28.329033, 45.520069>,  <33.816895, 27.931221, 45.074020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403843, 28.329033, 45.520069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186008, 28.027918, 45.372154>,  <33.055309, 27.847250, 45.283405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186008, 28.027918, 45.372154>,  <33.403843, 28.329033, 45.520069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186008, 28.027918, 45.372154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138379, -0.354211, 0.924871,
		-0.827212, 0.554841, 0.088728,
		-0.544584, -0.752786, -0.369785,
		33.022633, 27.802082, 45.261219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648590, 28.391024, 45.743813>,  <33.403843, 28.329033, 45.520069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648590, 28.391024, 45.743813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747684, 28.011261, 45.666607>,  <32.807140, 27.783403, 45.620281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747684, 28.011261, 45.666607>,  <32.648590, 28.391024, 45.743813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747684, 28.011261, 45.666607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231484, -0.251461, 0.939778,
		-0.940767, -0.188135, -0.282068,
		0.247735, -0.949406, -0.193016,
		32.822006, 27.726439, 45.608704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060253, 28.093403, 46.013184>,  <32.648590, 28.391024, 45.743813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060253, 28.093403, 46.013184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.347210, 27.815613, 45.991096>,  <32.519386, 27.648939, 45.977844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.347210, 27.815613, 45.991096>,  <32.060253, 28.093403, 46.013184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347210, 27.815613, 45.991096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213504, -0.294607, 0.931463,
		-0.663145, -0.656437, -0.359623,
		0.717394, -0.694476, -0.055215,
		32.562428, 27.607269, 45.974533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609968, 27.457146, 46.153164>,  <32.060253, 28.093403, 46.013184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609968, 27.457146, 46.153164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.001461, 27.397667, 46.209698>,  <32.236355, 27.361980, 46.243618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.001461, 27.397667, 46.209698>,  <31.609968, 27.457146, 46.153164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001461, 27.397667, 46.209698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199655, -0.532104, 0.822802,
		-0.047143, -0.833520, -0.550475,
		0.978732, -0.148695, 0.141331,
		32.295082, 27.353058, 46.252098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611374, 26.794924, 46.308636>,  <31.609968, 27.457146, 46.153164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611374, 26.794924, 46.308636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954744, 26.951263, 46.441505>,  <32.160767, 27.045067, 46.521229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954744, 26.951263, 46.441505>,  <31.611374, 26.794924, 46.308636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954744, 26.951263, 46.441505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131849, -0.457702, 0.879275,
		0.495700, -0.798591, -0.341371,
		0.858427, 0.390847, 0.332176,
		32.212273, 27.068518, 46.541157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077404, 26.282776, 46.651947>,  <31.611374, 26.794924, 46.308636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077404, 26.282776, 46.651947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.204094, 26.635845, 46.790844>,  <32.280109, 26.847687, 46.874180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.204094, 26.635845, 46.790844>,  <32.077404, 26.282776, 46.651947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204094, 26.635845, 46.790844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052859, -0.381943, 0.922673,
		0.947043, -0.273880, -0.167628,
		0.316727, 0.882671, 0.347240,
		32.299110, 26.900646, 46.895016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425373, 26.156704, 47.268253>,  <32.077404, 26.282776, 46.651947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425373, 26.156704, 47.268253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.373440, 26.552082, 47.299541>,  <32.342278, 26.789309, 47.318314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.373440, 26.552082, 47.299541>,  <32.425373, 26.156704, 47.268253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373440, 26.552082, 47.299541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153227, -0.057940, 0.986491,
		0.979624, 0.140068, -0.143934,
		-0.129836, 0.988445, 0.078222,
		32.334488, 26.848616, 47.323009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970070, 26.262680, 47.676811>,  <32.425373, 26.156704, 47.268253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970070, 26.262680, 47.676811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.715763, 26.569269, 47.713291>,  <32.563179, 26.753222, 47.735180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.715763, 26.569269, 47.713291>,  <32.970070, 26.262680, 47.676811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715763, 26.569269, 47.713291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016472, -0.131600, 0.991166,
		0.771702, 0.628653, 0.096293,
		-0.635772, 0.766471, 0.091201,
		32.525032, 26.799210, 47.740650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263580, 26.604939, 48.190269>,  <32.970070, 26.262680, 47.676811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263580, 26.604939, 48.190269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886551, 26.737963, 48.177868>,  <32.660332, 26.817778, 48.170425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886551, 26.737963, 48.177868>,  <33.263580, 26.604939, 48.190269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886551, 26.737963, 48.177868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018467, 0.040801, 0.998997,
		0.333492, 0.942199, -0.032316,
		-0.942572, 0.332561, -0.031006,
		32.603779, 26.837730, 48.168568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171047, 27.244091, 48.635174>,  <33.263580, 26.604939, 48.190269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171047, 27.244091, 48.635174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.808537, 27.076591, 48.612175>,  <32.591030, 26.976091, 48.598373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.808537, 27.076591, 48.612175>,  <33.171047, 27.244091, 48.635174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808537, 27.076591, 48.612175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082711, 0.042285, 0.995676,
		-0.414508, 0.907117, -0.072958,
		-0.906279, -0.418750, -0.057501,
		32.536652, 26.950966, 48.594925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774300, 27.660843, 49.102791>,  <33.171047, 27.244091, 48.635174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774300, 27.660843, 49.102791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.528660, 27.348894, 49.054310>,  <32.381275, 27.161726, 49.025223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.528660, 27.348894, 49.054310>,  <32.774300, 27.660843, 49.102791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528660, 27.348894, 49.054310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207609, 0.011464, 0.978145,
		-0.761436, 0.625836, -0.168948,
		-0.614095, -0.779870, -0.121200,
		32.344433, 27.114933, 49.017948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973543, 27.777128, 49.437916>,  <32.774300, 27.660843, 49.102791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973543, 27.777128, 49.437916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050606, 27.384966, 49.454330>,  <32.096844, 27.149668, 49.464180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050606, 27.384966, 49.454330>,  <31.973543, 27.777128, 49.437916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050606, 27.384966, 49.454330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280604, -0.014971, 0.959707,
		-0.940290, -0.196408, -0.277991,
		0.192656, -0.980408, 0.041036,
		32.108402, 27.090843, 49.466640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390175, 27.590698, 49.802765>,  <31.973543, 27.777128, 49.437916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390175, 27.590698, 49.802765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.642250, 27.280249, 49.811615>,  <31.793495, 27.093979, 49.816925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.642250, 27.280249, 49.811615>,  <31.390175, 27.590698, 49.802765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642250, 27.280249, 49.811615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034839, 0.056734, 0.997782,
		-0.775659, -0.628021, 0.062792,
		0.630190, -0.776126, 0.022126,
		31.831306, 27.047411, 49.818253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370573, 28.265726, 49.978535>,  <31.390175, 27.590698, 49.802765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370573, 28.265726, 49.978535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.299141, 28.550289, 50.250420>,  <31.256281, 28.721027, 50.413551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.299141, 28.550289, 50.250420>,  <31.370573, 28.265726, 49.978535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299141, 28.550289, 50.250420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303033, 0.617468, -0.725882,
		-0.936098, -0.335604, 0.105312,
		-0.178582, 0.711409, 0.679710,
		31.245565, 28.763712, 50.454334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731268, 28.551523, 49.706619>,  <31.370573, 28.265726, 49.978535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731268, 28.551523, 49.706619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.847254, 28.824423, 49.975082>,  <30.916845, 28.988163, 50.136162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.847254, 28.824423, 49.975082>,  <30.731268, 28.551523, 49.706619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847254, 28.824423, 49.975082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379450, 0.725770, -0.573826,
		-0.878599, -0.088281, 0.469328,
		0.289966, 0.682250, 0.671159,
		30.934244, 29.029099, 50.176430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212948, 28.927288, 49.927830>,  <30.731268, 28.551523, 49.706619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212948, 28.927288, 49.927830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.546408, 29.143064, 49.975216>,  <30.746483, 29.272530, 50.003647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.546408, 29.143064, 49.975216>,  <30.212948, 28.927288, 49.927830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546408, 29.143064, 49.975216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324657, 0.652168, -0.685036,
		-0.446797, 0.532618, 0.718812,
		0.833649, 0.539440, 0.118469,
		30.796503, 29.304897, 50.010757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003971, 29.564075, 49.864712>,  <30.212948, 28.927288, 49.927830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003971, 29.564075, 49.864712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.398090, 29.605665, 49.810486>,  <30.634562, 29.630619, 49.777950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.398090, 29.605665, 49.810486>,  <30.003971, 29.564075, 49.864712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398090, 29.605665, 49.810486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165670, 0.775356, -0.609407,
		0.041752, 0.622907, 0.781181,
		0.985297, 0.103974, -0.135569,
		30.693680, 29.636858, 49.769814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189333, 30.384159, 50.056026>,  <30.003971, 29.564075, 49.864712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189333, 30.384159, 50.056026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.475143, 30.239370, 49.816551>,  <30.646629, 30.152496, 49.672867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.475143, 30.239370, 49.816551>,  <30.189333, 30.384159, 50.056026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475143, 30.239370, 49.816551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047967, 0.828388, -0.558098,
		0.697960, 0.427494, 0.574544,
		0.714529, -0.361971, -0.598687,
		30.689503, 30.130779, 49.636944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683094, 30.959133, 49.958923>,  <30.189333, 30.384159, 50.056026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683094, 30.959133, 49.958923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.732172, 30.706085, 49.653049>,  <30.761618, 30.554256, 49.469524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.732172, 30.706085, 49.653049>,  <30.683094, 30.959133, 49.958923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732172, 30.706085, 49.653049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135071, 0.752690, -0.644370,
		0.983210, 0.182347, 0.006902,
		0.122694, -0.632619, -0.764683,
		30.768980, 30.516300, 49.423645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101387, 31.238380, 49.453728>,  <30.683094, 30.959133, 49.958923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101387, 31.238380, 49.453728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920425, 30.968445, 49.220516>,  <30.811848, 30.806484, 49.080589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920425, 30.968445, 49.220516>,  <31.101387, 31.238380, 49.453728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920425, 30.968445, 49.220516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070185, 0.678670, -0.731082,
		0.889046, -0.289826, -0.354398,
		-0.452406, -0.674839, -0.583027,
		30.784704, 30.765993, 49.045609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787142, 31.625076, 49.288940>,  <31.101387, 31.238380, 49.453728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787142, 31.625076, 49.288940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.004356, 31.942440, 49.398930>,  <32.134686, 32.132858, 49.464924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.004356, 31.942440, 49.398930>,  <31.787142, 31.625076, 49.288940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004356, 31.942440, 49.398930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046674, -0.298438, 0.953287,
		0.838411, -0.530504, -0.125031,
		0.543036, 0.793411, 0.274974,
		32.167267, 32.180462, 49.481422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322128, 31.383625, 49.745068>,  <31.787142, 31.625076, 49.288940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322128, 31.383625, 49.745068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.249523, 31.769676, 49.820518>,  <32.205959, 32.001308, 49.865788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.249523, 31.769676, 49.820518>,  <32.322128, 31.383625, 49.745068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249523, 31.769676, 49.820518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119542, -0.212043, 0.969921,
		0.976095, 0.153508, 0.153863,
		-0.181517, 0.965128, 0.188623,
		32.195068, 32.059216, 49.877106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712017, 31.475779, 50.311462>,  <32.322128, 31.383625, 49.745068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712017, 31.475779, 50.311462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.469597, 31.793888, 50.317730>,  <32.324146, 31.984755, 50.321491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.469597, 31.793888, 50.317730>,  <32.712017, 31.475779, 50.311462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469597, 31.793888, 50.317730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015170, -0.008142, 0.999852,
		0.795283, 0.606196, -0.007130,
		-0.606048, 0.795274, 0.015671,
		32.287781, 32.032471, 50.322430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954109, 31.888313, 50.854145>,  <32.712017, 31.475779, 50.311462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954109, 31.888313, 50.854145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598866, 32.060406, 50.789452>,  <32.385719, 32.163662, 50.750633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598866, 32.060406, 50.789452>,  <32.954109, 31.888313, 50.854145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598866, 32.060406, 50.789452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109001, 0.144706, 0.983453,
		0.446515, 0.891046, -0.081620,
		-0.888112, 0.430229, -0.161738,
		32.332432, 32.189476, 50.740929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051777, 32.508743, 51.192513>,  <32.954109, 31.888313, 50.854145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051777, 32.508743, 51.192513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.678886, 32.367397, 51.161301>,  <32.455151, 32.282589, 51.142574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.678886, 32.367397, 51.161301>,  <33.051777, 32.508743, 51.192513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678886, 32.367397, 51.161301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092939, 0.025394, 0.995348,
		-0.349737, 0.935142, -0.056514,
		-0.932227, -0.353362, -0.078030,
		32.399220, 32.261387, 51.137890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682323, 33.103199, 51.460316>,  <33.051777, 32.508743, 51.192513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682323, 33.103199, 51.460316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.465908, 32.768581, 51.494881>,  <32.336060, 32.567810, 51.515621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.465908, 32.768581, 51.494881>,  <32.682323, 33.103199, 51.460316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465908, 32.768581, 51.494881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176031, 0.213119, 0.961038,
		-0.822370, 0.504746, -0.262563,
		-0.541038, -0.836547, 0.086412,
		32.303596, 32.517616, 51.520805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221207, 33.296955, 51.953022>,  <32.682323, 33.103199, 51.460316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221207, 33.296955, 51.953022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.182903, 32.898911, 51.943340>,  <32.159924, 32.660084, 51.937531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.182903, 32.898911, 51.943340>,  <32.221207, 33.296955, 51.953022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182903, 32.898911, 51.943340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077960, -0.016745, 0.996816,
		-0.992347, 0.097338, -0.075975,
		-0.095755, -0.995110, -0.024205,
		32.154175, 32.600376, 51.936077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745255, 33.134327, 52.489326>,  <32.221207, 33.296955, 51.953022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745255, 33.134327, 52.489326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.943819, 32.791283, 52.435532>,  <32.062958, 32.585457, 52.403255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.943819, 32.791283, 52.435532>,  <31.745255, 33.134327, 52.489326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943819, 32.791283, 52.435532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099785, -0.097522, 0.990218,
		-0.862335, -0.504973, 0.037166,
		0.496409, -0.857608, -0.134485,
		32.092743, 32.534000, 52.395187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485188, 32.597313, 53.135513>,  <31.745255, 33.134327, 52.489326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485188, 32.597313, 53.135513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.840822, 32.476078, 52.998306>,  <32.054203, 32.403336, 52.915981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.840822, 32.476078, 52.998306>,  <31.485188, 32.597313, 53.135513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840822, 32.476078, 52.998306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320570, -0.122620, 0.939255,
		-0.326741, -0.945040, -0.011858,
		0.889087, -0.303091, -0.343016,
		32.107548, 32.385151, 52.895401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.393951, 35.012859, 36.507980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766171, 34.962009, 36.645332>,  <32.989502, 34.931499, 36.727745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766171, 34.962009, 36.645332>,  <32.393951, 35.012859, 36.507980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766171, 34.962009, 36.645332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312037, 0.215357, 0.925340,
		-0.191587, -0.968225, 0.160732,
		0.930552, -0.127129, 0.343382,
		33.045338, 34.923870, 36.748348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469067, 34.435131, 36.974632>,  <32.393951, 35.012859, 36.507980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469067, 34.435131, 36.974632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746361, 34.707932, 37.067841>,  <32.912739, 34.871613, 37.123768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746361, 34.707932, 37.067841>,  <32.469067, 34.435131, 36.974632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746361, 34.707932, 37.067841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239035, -0.087452, 0.967065,
		0.679915, -0.726106, 0.102397,
		0.693237, 0.681998, 0.233025,
		32.954330, 34.912533, 37.137749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775757, 34.122753, 37.473026>,  <32.469067, 34.435131, 36.974632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775757, 34.122753, 37.473026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898273, 34.501194, 37.515114>,  <32.971783, 34.728260, 37.540367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898273, 34.501194, 37.515114>,  <32.775757, 34.122753, 37.473026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898273, 34.501194, 37.515114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203956, -0.042743, 0.978046,
		0.929832, -0.321026, 0.179872,
		0.306290, 0.946105, 0.105219,
		32.990162, 34.785027, 37.546680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288921, 34.140507, 38.011471>,  <32.775757, 34.122753, 37.473026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288921, 34.140507, 38.011471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174267, 34.523304, 37.993553>,  <33.105476, 34.752983, 37.982803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174267, 34.523304, 37.993553>,  <33.288921, 34.140507, 38.011471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174267, 34.523304, 37.993553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018326, 0.041275, 0.998980,
		0.957865, 0.287161, 0.005707,
		-0.286632, 0.956993, -0.044798,
		33.088276, 34.810402, 37.980114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671440, 34.502121, 38.452869>,  <33.288921, 34.140507, 38.011471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671440, 34.502121, 38.452869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347752, 34.734299, 38.416557>,  <33.153538, 34.873608, 38.394772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347752, 34.734299, 38.416557>,  <33.671440, 34.502121, 38.452869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347752, 34.734299, 38.416557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063507, 0.240035, 0.968685,
		0.584060, 0.778117, -0.231104,
		-0.809222, 0.580447, -0.090779,
		33.104984, 34.908432, 38.389324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717262, 35.102760, 38.916203>,  <33.671440, 34.502121, 38.452869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717262, 35.102760, 38.916203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322735, 35.109051, 38.850571>,  <33.086018, 35.112823, 38.811192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322735, 35.109051, 38.850571>,  <33.717262, 35.102760, 38.916203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322735, 35.109051, 38.850571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156887, 0.215774, 0.963757,
		0.050556, 0.976317, -0.210356,
		-0.986322, 0.015722, -0.164080,
		33.026840, 35.113766, 38.801346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571789, 35.702095, 39.259396>,  <33.717262, 35.102760, 38.916203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571789, 35.702095, 39.259396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231064, 35.495659, 39.223469>,  <33.026627, 35.371799, 39.201912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231064, 35.495659, 39.223469>,  <33.571789, 35.702095, 39.259396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231064, 35.495659, 39.223469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167559, 0.105980, 0.980149,
		-0.496323, 0.849954, -0.176751,
		-0.851814, -0.516087, -0.089817,
		32.975521, 35.340832, 39.196522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060993, 36.212475, 39.525928>,  <33.571789, 35.702095, 39.259396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060993, 36.212475, 39.525928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925259, 35.837376, 39.555527>,  <32.843819, 35.612316, 39.573284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925259, 35.837376, 39.555527>,  <33.060993, 36.212475, 39.525928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925259, 35.837376, 39.555527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063654, 0.101370, 0.992810,
		-0.938509, 0.332186, -0.094090,
		-0.339336, -0.937751, 0.073991,
		32.823460, 35.556049, 39.577724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441765, 36.238068, 39.934456>,  <33.060993, 36.212475, 39.525928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441765, 36.238068, 39.934456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535530, 35.851246, 39.974182>,  <32.591789, 35.619152, 39.998020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535530, 35.851246, 39.974182>,  <32.441765, 36.238068, 39.934456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535530, 35.851246, 39.974182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201251, 0.051677, 0.978176,
		-0.951078, -0.249282, -0.182507,
		0.234410, -0.967051, 0.099318,
		32.605854, 35.561131, 40.003979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860943, 36.036339, 40.407757>,  <32.441765, 36.238068, 39.934456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860943, 36.036339, 40.407757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111671, 35.726204, 40.438618>,  <32.262108, 35.540123, 40.457134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111671, 35.726204, 40.438618>,  <31.860943, 36.036339, 40.407757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111671, 35.726204, 40.438618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248691, -0.105248, 0.962848,
		-0.738410, -0.622719, -0.258790,
		0.626821, -0.775335, 0.077148,
		32.299717, 35.493603, 40.461761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495579, 35.531624, 40.895969>,  <31.860943, 36.036339, 40.407757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495579, 35.531624, 40.895969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877552, 35.413002, 40.900955>,  <32.106735, 35.341827, 40.903946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877552, 35.413002, 40.900955>,  <31.495579, 35.531624, 40.895969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877552, 35.413002, 40.900955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064783, -0.167270, 0.983781,
		-0.289662, -0.940253, -0.178943,
		0.954934, -0.296556, 0.012460,
		32.164032, 35.324036, 40.904694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469637, 34.862499, 41.161739>,  <31.495579, 35.531624, 40.895969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469637, 34.862499, 41.161739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829355, 35.019455, 41.238987>,  <32.045185, 35.113628, 41.285336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829355, 35.019455, 41.238987>,  <31.469637, 34.862499, 41.161739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829355, 35.019455, 41.238987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120244, -0.202714, 0.971827,
		0.420486, -0.897182, -0.135117,
		0.899296, 0.392393, 0.193119,
		32.099144, 35.137173, 41.296925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023302, 34.298603, 41.136414>,  <31.469637, 34.862499, 41.161739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023302, 34.298603, 41.136414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654043, 34.152477, 41.184319>,  <30.432487, 34.064800, 41.213062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654043, 34.152477, 41.184319>,  <31.023302, 34.298603, 41.136414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654043, 34.152477, 41.184319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209639, 0.217206, -0.953348,
		0.322260, -0.905188, -0.277097,
		-0.923147, -0.365316, 0.119766,
		30.377100, 34.042881, 41.220249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847452, 33.887741, 40.564590>,  <31.023302, 34.298603, 41.136414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847452, 33.887741, 40.564590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492504, 33.986183, 40.720543>,  <30.279535, 34.045250, 40.814114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492504, 33.986183, 40.720543>,  <30.847452, 33.887741, 40.564590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492504, 33.986183, 40.720543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311350, 0.303826, -0.900417,
		-0.340054, -0.920392, -0.192981,
		-0.887370, 0.246106, 0.389881,
		30.226294, 34.060017, 40.837505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334829, 33.487736, 40.242073>,  <30.847452, 33.887741, 40.564590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334829, 33.487736, 40.242073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134432, 33.807148, 40.375557>,  <30.014194, 33.998795, 40.455647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134432, 33.807148, 40.375557>,  <30.334829, 33.487736, 40.242073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134432, 33.807148, 40.375557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431247, 0.103970, -0.896223,
		-0.750355, -0.592910, 0.292275,
		-0.500992, 0.798528, 0.333705,
		29.984135, 34.046707, 40.475670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660051, 33.454205, 39.945671>,  <30.334829, 33.487736, 40.242073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660051, 33.454205, 39.945671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713299, 33.843285, 40.021706>,  <29.745247, 34.076733, 40.067326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713299, 33.843285, 40.021706>,  <29.660051, 33.454205, 39.945671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713299, 33.843285, 40.021706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396023, 0.228022, -0.889479,
		-0.908540, 0.043128, 0.415565,
		0.133119, 0.972700, 0.190087,
		29.753235, 34.135094, 40.078732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125525, 33.759285, 39.588528>,  <29.660051, 33.454205, 39.945671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125525, 33.759285, 39.588528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363937, 34.065418, 39.685696>,  <29.506985, 34.249100, 39.743996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363937, 34.065418, 39.685696>,  <29.125525, 33.759285, 39.588528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363937, 34.065418, 39.685696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189798, 0.428246, -0.883506,
		-0.780206, 0.480492, 0.400507,
		0.596033, 0.765332, 0.242924,
		29.542747, 34.295017, 39.758572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731430, 34.458450, 39.538021>,  <29.125525, 33.759285, 39.588528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731430, 34.458450, 39.538021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117409, 34.543331, 39.476242>,  <29.348995, 34.594257, 39.439175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117409, 34.543331, 39.476242>,  <28.731430, 34.458450, 39.538021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117409, 34.543331, 39.476242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230038, 0.400538, -0.886934,
		-0.126345, 0.891371, 0.435311,
		0.964945, 0.212198, -0.154443,
		29.406893, 34.606991, 39.429909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744211, 34.990791, 39.041676>,  <28.731430, 34.458450, 39.538021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744211, 34.990791, 39.041676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139908, 34.937450, 39.017624>,  <29.377327, 34.905445, 39.003193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139908, 34.937450, 39.017624>,  <28.744211, 34.990791, 39.041676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139908, 34.937450, 39.017624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037711, 0.164709, -0.985621,
		0.141337, 0.977286, 0.157908,
		0.989243, -0.133350, -0.060134,
		29.436680, 34.897446, 38.999584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996494, 35.630623, 38.792763>,  <28.744211, 34.990791, 39.041676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996494, 35.630623, 38.792763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210266, 35.304272, 38.704456>,  <29.338530, 35.108463, 38.651474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210266, 35.304272, 38.704456>,  <28.996494, 35.630623, 38.792763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210266, 35.304272, 38.704456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137280, 0.173939, -0.975141,
		0.833991, 0.551449, -0.019045,
		0.534427, -0.815873, -0.220767,
		29.370594, 35.059509, 38.638226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487511, 35.828369, 38.243305>,  <28.996494, 35.630623, 38.792763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487511, 35.828369, 38.243305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434389, 35.432320, 38.225376>,  <29.402515, 35.194691, 38.214619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434389, 35.432320, 38.225376>,  <29.487511, 35.828369, 38.243305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434389, 35.432320, 38.225376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035776, 0.040401, -0.998543,
		0.990496, -0.134216, 0.030057,
		-0.132806, -0.990128, -0.044818,
		29.394547, 35.135281, 38.211929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962372, 35.599297, 37.831593>,  <29.487511, 35.828369, 38.243305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962372, 35.599297, 37.831593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675396, 35.320820, 37.841381>,  <29.503210, 35.153736, 37.847252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675396, 35.320820, 37.841381>,  <29.962372, 35.599297, 37.831593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675396, 35.320820, 37.841381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007665, -0.043010, -0.999045,
		0.696577, -0.716569, 0.036193,
		-0.717442, -0.696189, 0.024467,
		29.460163, 35.111961, 37.848721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132969, 35.165920, 37.199581>,  <29.962372, 35.599297, 37.831593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132969, 35.165920, 37.199581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766300, 35.051922, 37.311646>,  <29.546299, 34.983524, 37.378883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766300, 35.051922, 37.311646>,  <30.132969, 35.165920, 37.199581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766300, 35.051922, 37.311646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270421, -0.073843, -0.959906,
		0.294258, -0.955680, -0.009379,
		-0.916671, -0.284996, 0.280165,
		29.491299, 34.966423, 37.395695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902740, 34.804054, 36.618607>,  <30.132969, 35.165920, 37.199581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902740, 34.804054, 36.618607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570747, 34.897751, 36.821095>,  <29.371552, 34.953968, 36.942589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570747, 34.897751, 36.821095>,  <29.902740, 34.804054, 36.618607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570747, 34.897751, 36.821095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497536, 0.099387, -0.861731,
		-0.252166, -0.967085, 0.034055,
		-0.829982, 0.234243, 0.506222,
		29.321753, 34.968025, 36.972961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488459, 34.351635, 36.354038>,  <29.902740, 34.804054, 36.618607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488459, 34.351635, 36.354038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291977, 34.660080, 36.516079>,  <29.174088, 34.845146, 36.613304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291977, 34.660080, 36.516079>,  <29.488459, 34.351635, 36.354038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291977, 34.660080, 36.516079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721548, -0.099692, -0.685149,
		-0.487943, -0.628844, 0.605365,
		-0.491202, 0.771114, 0.405098,
		29.144617, 34.891415, 36.637608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731670, 34.290821, 36.206161>,  <29.488459, 34.351635, 36.354038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731670, 34.290821, 36.206161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720888, 34.683243, 36.282898>,  <28.714418, 34.918697, 36.328938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720888, 34.683243, 36.282898>,  <28.731670, 34.290821, 36.206161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720888, 34.683243, 36.282898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604578, 0.136831, -0.784705,
		-0.796089, -0.137132, 0.589437,
		-0.026955, 0.981057, 0.191837,
		28.712801, 34.977558, 36.340450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673143, 33.775467, 35.783001>,  <28.731670, 34.290821, 36.206161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673143, 33.775467, 35.783001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765467, 34.155571, 35.699345>,  <28.820860, 34.383633, 35.649151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765467, 34.155571, 35.699345>,  <28.673143, 33.775467, 35.783001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765467, 34.155571, 35.699345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289866, 0.272336, 0.917502,
		0.928819, -0.151144, 0.338305,
		0.230807, 0.950257, -0.209139,
		28.834709, 34.440647, 35.636604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333128, 33.585194, 36.172356>,  <28.673143, 33.775467, 35.783001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333128, 33.585194, 36.172356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699434, 33.429241, 36.133656>,  <29.919218, 33.335670, 36.110435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699434, 33.429241, 36.133656>,  <29.333128, 33.585194, 36.172356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699434, 33.429241, 36.133656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048676, -0.346766, 0.936688,
		-0.398749, -0.853079, -0.336535,
		0.915767, -0.389884, -0.096748,
		29.974165, 33.312275, 36.104630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353182, 33.135845, 36.681526>,  <29.333128, 33.585194, 36.172356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353182, 33.135845, 36.681526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739832, 33.125069, 36.579617>,  <29.971823, 33.118603, 36.518471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739832, 33.125069, 36.579617>,  <29.353182, 33.135845, 36.681526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739832, 33.125069, 36.579617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217002, -0.442505, 0.870115,
		-0.136183, -0.896361, -0.421889,
		0.966625, -0.026944, -0.254774,
		30.029819, 33.116985, 36.503185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534296, 32.405762, 36.771614>,  <29.353182, 33.135845, 36.681526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534296, 32.405762, 36.771614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860184, 32.637634, 36.777328>,  <30.055717, 32.776756, 36.780758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860184, 32.637634, 36.777328>,  <29.534296, 32.405762, 36.771614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860184, 32.637634, 36.777328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335184, -0.490911, 0.804150,
		0.473161, -0.650369, -0.594254,
		0.814721, 0.579678, 0.014287,
		30.104599, 32.811539, 36.781616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157005, 31.932877, 36.813374>,  <29.534296, 32.405762, 36.771614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157005, 31.932877, 36.813374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243910, 32.299225, 36.948414>,  <30.296053, 32.519035, 37.029438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243910, 32.299225, 36.948414>,  <30.157005, 31.932877, 36.813374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243910, 32.299225, 36.948414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356108, -0.396397, 0.846201,
		0.908837, -0.063623, -0.412271,
		0.217260, 0.915872, 0.337604,
		30.309088, 32.573986, 37.049694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841789, 31.880114, 37.113514>,  <30.157005, 31.932877, 36.813374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841789, 31.880114, 37.113514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688036, 32.214275, 37.270660>,  <30.595783, 32.414772, 37.364948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688036, 32.214275, 37.270660>,  <30.841789, 31.880114, 37.113514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688036, 32.214275, 37.270660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339293, -0.267937, 0.901715,
		0.858562, 0.479903, -0.180457,
		-0.384385, 0.835406, 0.392869,
		30.572720, 32.464897, 37.388519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436596, 32.115768, 37.510277>,  <30.841789, 31.880114, 37.113514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436596, 32.115768, 37.510277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081644, 32.251167, 37.635483>,  <30.868673, 32.332405, 37.710606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081644, 32.251167, 37.635483>,  <31.436596, 32.115768, 37.510277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081644, 32.251167, 37.635483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234874, -0.252324, 0.938705,
		0.396731, 0.906506, 0.144403,
		-0.887378, 0.338497, 0.313019,
		30.815432, 32.352715, 37.729389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523403, 32.265400, 38.268143>,  <31.436596, 32.115768, 37.510277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523403, 32.265400, 38.268143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125250, 32.293484, 38.241962>,  <30.886358, 32.310333, 38.226254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125250, 32.293484, 38.241962>,  <31.523403, 32.265400, 38.268143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125250, 32.293484, 38.241962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087668, -0.387204, 0.917817,
		0.039098, 0.919316, 0.391572,
		-0.995382, 0.070213, -0.065455,
		30.826635, 32.314548, 38.222324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291054, 32.762314, 38.834694>,  <31.523403, 32.265400, 38.268143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291054, 32.762314, 38.834694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996613, 32.516476, 38.721256>,  <30.819948, 32.368973, 38.653194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996613, 32.516476, 38.721256>,  <31.291054, 32.762314, 38.834694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996613, 32.516476, 38.721256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154434, -0.255433, 0.954413,
		-0.659017, 0.746342, 0.093110,
		-0.736102, -0.614596, -0.283595,
		30.775782, 32.332096, 38.636177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898462, 32.767048, 39.333332>,  <31.291054, 32.762314, 38.834694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898462, 32.767048, 39.333332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768499, 32.432442, 39.156841>,  <30.690521, 32.231678, 39.050945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768499, 32.432442, 39.156841>,  <30.898462, 32.767048, 39.333332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768499, 32.432442, 39.156841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131777, -0.421945, 0.896993,
		-0.936520, 0.349584, 0.026860,
		-0.324908, -0.836513, -0.441227,
		30.671026, 32.181488, 39.024471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619112, 32.531082, 39.822838>,  <30.898462, 32.767048, 39.333332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619112, 32.531082, 39.822838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652327, 32.203709, 39.595409>,  <30.672255, 32.007286, 39.458954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652327, 32.203709, 39.595409>,  <30.619112, 32.531082, 39.822838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652327, 32.203709, 39.595409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153620, -0.553207, 0.818757,
		-0.984635, -0.155330, 0.079792,
		0.083037, -0.818434, -0.568569,
		30.677238, 31.958178, 39.424839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244646, 32.082439, 40.193336>,  <30.619112, 32.531082, 39.822838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244646, 32.082439, 40.193336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459377, 31.852104, 39.946686>,  <30.588217, 31.713903, 39.798695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459377, 31.852104, 39.946686>,  <30.244646, 32.082439, 40.193336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459377, 31.852104, 39.946686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026889, -0.742173, 0.669669,
		-0.843264, -0.342916, -0.413902,
		0.536827, -0.575837, -0.616627,
		30.620426, 31.679354, 39.761700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938848, 31.539970, 40.408264>,  <30.244646, 32.082439, 40.193336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938848, 31.539970, 40.408264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272066, 31.452435, 40.205029>,  <30.471996, 31.399914, 40.083088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272066, 31.452435, 40.205029>,  <29.938848, 31.539970, 40.408264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272066, 31.452435, 40.205029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081641, -0.859744, 0.504158,
		-0.547150, -0.461466, -0.698338,
		0.833043, -0.218837, -0.508084,
		30.521978, 31.386784, 40.052605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878691, 30.858330, 40.096043>,  <29.938848, 31.539970, 40.408264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878691, 30.858330, 40.096043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261679, 30.947996, 40.168709>,  <30.491470, 31.001797, 40.212307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261679, 30.947996, 40.168709>,  <29.878691, 30.858330, 40.096043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261679, 30.947996, 40.168709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123738, -0.887780, 0.443323,
		0.260657, -0.401989, -0.877760,
		0.957469, 0.224167, 0.181665,
		30.548920, 31.015245, 40.223209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307549, 30.181852, 40.064423>,  <29.878691, 30.858330, 40.096043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307549, 30.181852, 40.064423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552073, 30.444916, 40.240505>,  <30.698788, 30.602755, 40.346153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552073, 30.444916, 40.240505>,  <30.307549, 30.181852, 40.064423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552073, 30.444916, 40.240505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408112, -0.738552, 0.536643,
		0.678045, -0.148401, -0.719883,
		0.611310, 0.657661, 0.440207,
		30.735466, 30.642214, 40.372566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969324, 29.767548, 40.112980>,  <30.307549, 30.181852, 40.064423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969324, 29.767548, 40.112980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007940, 30.073652, 40.367554>,  <31.031109, 30.257315, 40.520298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007940, 30.073652, 40.367554>,  <30.969324, 29.767548, 40.112980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007940, 30.073652, 40.367554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486633, -0.594078, 0.640514,
		0.868256, 0.247877, -0.429754,
		0.096539, 0.765263, 0.636437,
		31.036901, 30.303230, 40.558483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691849, 29.801771, 40.285217>,  <30.969324, 29.767548, 40.112980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691849, 29.801771, 40.285217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500378, 29.989618, 40.581955>,  <31.385496, 30.102327, 40.759998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500378, 29.989618, 40.581955>,  <31.691849, 29.801771, 40.285217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500378, 29.989618, 40.581955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431237, -0.610236, 0.664565,
		0.764790, 0.638021, 0.089589,
		-0.478676, 0.469618, 0.741841,
		31.356775, 30.130505, 40.804508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195808, 29.957207, 40.767658>,  <31.691849, 29.801771, 40.285217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195808, 29.957207, 40.767658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852377, 29.950598, 40.972626>,  <31.646318, 29.946632, 41.095608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852377, 29.950598, 40.972626>,  <32.195808, 29.957207, 40.767658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852377, 29.950598, 40.972626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449702, -0.504236, 0.737234,
		0.246198, 0.863408, 0.440356,
		-0.858577, -0.016524, 0.512418,
		31.594803, 29.945641, 41.126350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476112, 30.077686, 41.359123>,  <32.195808, 29.957207, 40.767658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476112, 30.077686, 41.359123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107735, 29.945042, 41.440994>,  <31.886707, 29.865454, 41.490116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107735, 29.945042, 41.440994>,  <32.476112, 30.077686, 41.359123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107735, 29.945042, 41.440994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377489, -0.628725, 0.679859,
		-0.096763, 0.703377, 0.704201,
		-0.920945, -0.331613, 0.204680,
		31.831451, 29.845558, 41.502399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437672, 30.038443, 42.118324>,  <32.476112, 30.077686, 41.359123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437672, 30.038443, 42.118324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105526, 29.830139, 42.039028>,  <31.906237, 29.705156, 41.991451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105526, 29.830139, 42.039028>,  <32.437672, 30.038443, 42.118324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105526, 29.830139, 42.039028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268339, -0.685518, 0.676801,
		-0.488347, 0.508798, 0.708972,
		-0.830368, -0.520758, -0.198241,
		31.856415, 29.673912, 41.979557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014881, 30.114365, 42.724228>,  <32.437672, 30.038443, 42.118324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014881, 30.114365, 42.724228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934752, 29.787626, 42.507843>,  <31.886675, 29.591583, 42.378014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934752, 29.787626, 42.507843>,  <32.014881, 30.114365, 42.724228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934752, 29.787626, 42.507843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242885, -0.576321, 0.780296,
		-0.949146, 0.024919, 0.313849,
		-0.200322, -0.816844, -0.540960,
		31.874655, 29.542574, 42.345554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718817, 29.637272, 43.264240>,  <32.014881, 30.114365, 42.724228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718817, 29.637272, 43.264240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830345, 29.412256, 42.952904>,  <31.897263, 29.277246, 42.766102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830345, 29.412256, 42.952904>,  <31.718817, 29.637272, 43.264240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830345, 29.412256, 42.952904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295784, -0.720776, 0.626892,
		-0.913658, -0.405010, -0.034576,
		0.278819, -0.562538, -0.778338,
		31.913990, 29.243494, 42.719402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426994, 29.056778, 43.356178>,  <31.718817, 29.637272, 43.264240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426994, 29.056778, 43.356178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727552, 28.972616, 43.106014>,  <31.907887, 28.922119, 42.955917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727552, 28.972616, 43.106014>,  <31.426994, 29.056778, 43.356178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727552, 28.972616, 43.106014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364228, -0.658073, 0.658997,
		-0.550221, -0.722959, -0.417838,
		0.751395, -0.210406, -0.625407,
		31.952971, 28.909494, 42.918392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392921, 28.325796, 43.173553>,  <31.426994, 29.056778, 43.356178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392921, 28.325796, 43.173553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773556, 28.425257, 43.101273>,  <32.001938, 28.484934, 43.057903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773556, 28.425257, 43.101273>,  <31.392921, 28.325796, 43.173553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773556, 28.425257, 43.101273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306432, -0.721249, 0.621208,
		0.024130, -0.646508, -0.762526,
		0.951586, 0.248652, -0.180707,
		32.059032, 28.499853, 43.047062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727394, 27.777748, 43.084454>,  <31.392921, 28.325796, 43.173553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727394, 27.777748, 43.084454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055626, 27.998323, 43.144543>,  <32.252563, 28.130669, 43.180595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055626, 27.998323, 43.144543>,  <31.727394, 27.777748, 43.084454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055626, 27.998323, 43.144543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407124, -0.748446, 0.523525,
		0.401127, -0.368433, -0.838662,
		0.820578, 0.551440, 0.150224,
		32.301800, 28.163755, 43.189610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333359, 27.234306, 43.176544>,  <31.727394, 27.777748, 43.084454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333359, 27.234306, 43.176544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478905, 27.565445, 43.347317>,  <32.566235, 27.764128, 43.449780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478905, 27.565445, 43.347317>,  <32.333359, 27.234306, 43.176544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478905, 27.565445, 43.347317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328232, -0.542910, 0.772989,
		0.871701, -0.141135, -0.469274,
		0.363869, 0.827846, 0.426931,
		32.588066, 27.813799, 43.475395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092499, 27.089697, 43.498459>,  <32.333359, 27.234306, 43.176544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092499, 27.089697, 43.498459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916355, 27.406693, 43.667240>,  <32.810669, 27.596889, 43.768509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916355, 27.406693, 43.667240>,  <33.092499, 27.089697, 43.498459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916355, 27.406693, 43.667240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196815, -0.373330, 0.906581,
		0.875981, 0.482271, 0.008427,
		-0.440364, 0.792489, 0.421949,
		32.784245, 27.644440, 43.793823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708977, 27.522917, 43.963402>,  <33.092499, 27.089697, 43.498459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708977, 27.522917, 43.963402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327072, 27.579243, 44.068165>,  <33.097927, 27.613039, 44.131023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327072, 27.579243, 44.068165>,  <33.708977, 27.522917, 43.963402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327072, 27.579243, 44.068165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198657, -0.353326, 0.914164,
		0.221266, 0.924842, 0.309370,
		-0.954765, 0.140815, 0.261905,
		33.040642, 27.621487, 44.146736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837162, 28.281942, 44.187492>,  <33.708977, 27.522917, 43.963402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837162, 28.281942, 44.187492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230450, 28.310841, 44.254490>,  <34.466423, 28.328178, 44.294689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230450, 28.310841, 44.254490>,  <33.837162, 28.281942, 44.187492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230450, 28.310841, 44.254490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148485, 0.216399, -0.964948,
		-0.105959, 0.973628, 0.202041,
		0.983222, 0.072245, 0.167498,
		34.525417, 28.332514, 44.304741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004333, 28.924664, 43.893951>,  <33.837162, 28.281942, 44.187492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004333, 28.924664, 43.893951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346054, 28.717449, 43.910931>,  <34.551086, 28.593121, 43.921120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346054, 28.717449, 43.910931>,  <34.004333, 28.924664, 43.893951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346054, 28.717449, 43.910931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248704, 0.335699, -0.908544,
		0.456407, 0.786732, 0.415627,
		0.854306, -0.518034, 0.042448,
		34.602345, 28.562038, 43.923664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479698, 29.426876, 43.921619>,  <34.004333, 28.924664, 43.893951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479698, 29.426876, 43.921619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652626, 29.092028, 43.787556>,  <34.756382, 28.891119, 43.707119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652626, 29.092028, 43.787556>,  <34.479698, 29.426876, 43.921619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652626, 29.092028, 43.787556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201966, 0.452139, -0.868781,
		0.878812, 0.307899, 0.364537,
		0.432318, -0.837120, -0.335160,
		34.782322, 28.840891, 43.687008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068035, 29.593460, 43.602783>,  <34.479698, 29.426876, 43.921619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068035, 29.593460, 43.602783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988201, 29.230558, 43.454700>,  <34.940300, 29.012817, 43.365849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988201, 29.230558, 43.454700>,  <35.068035, 29.593460, 43.602783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988201, 29.230558, 43.454700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072235, 0.363160, -0.928923,
		0.977215, -0.212138, -0.006945,
		-0.199582, -0.907255, -0.370209,
		34.928326, 28.958382, 43.343639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641228, 29.320896, 43.248741>,  <35.068035, 29.593460, 43.602783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641228, 29.320896, 43.248741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282887, 29.216038, 43.105228>,  <35.067883, 29.153124, 43.019119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282887, 29.216038, 43.105228>,  <35.641228, 29.320896, 43.248741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282887, 29.216038, 43.105228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245349, 0.381380, -0.891265,
		0.370464, -0.886473, -0.277348,
		-0.895857, -0.262134, -0.358783,
		35.014130, 29.137394, 42.997593>
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
