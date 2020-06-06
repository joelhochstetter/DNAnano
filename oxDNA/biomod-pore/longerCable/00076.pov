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
	<24.322567, 34.374390, 35.002384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298187, 34.759674, 34.897682>,  <24.283560, 34.990845, 34.834862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298187, 34.759674, 34.897682>,  <24.322567, 34.374390, 35.002384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298187, 34.759674, 34.897682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998004, -0.063149, 0.000014,
		-0.016516, 0.261232, 0.965135,
		-0.060951, 0.963208, -0.261753,
		24.279902, 35.048637, 34.819157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.423429, 33.982109, 35.619865>,  <24.322567, 34.374390, 35.002384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.423429, 33.982109, 35.619865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459803, 34.009022, 36.017300>,  <24.481627, 34.025169, 36.255760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459803, 34.009022, 36.017300>,  <24.423429, 33.982109, 35.619865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.459803, 34.009022, 36.017300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972783, -0.219529, -0.074165,
		0.213130, 0.973283, -0.085409,
		0.090933, 0.067278, 0.993582,
		24.487083, 34.029205, 36.315372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002016, 34.378723, 35.759979>,  <24.423429, 33.982109, 35.619865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002016, 34.378723, 35.759979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911846, 34.096474, 36.028690>,  <24.857744, 33.927124, 36.189915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911846, 34.096474, 36.028690>,  <25.002016, 34.378723, 35.759979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911846, 34.096474, 36.028690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963882, -0.261906, 0.048344,
		0.141829, 0.658408, 0.739177,
		-0.225425, -0.705623, 0.671773,
		24.844219, 33.884789, 36.230221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230513, 34.153713, 35.156635>,  <25.002016, 34.378723, 35.759979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230513, 34.153713, 35.156635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403545, 33.915653, 34.885735>,  <25.507364, 33.772820, 34.723194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403545, 33.915653, 34.885735>,  <25.230513, 34.153713, 35.156635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403545, 33.915653, 34.885735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833058, -0.023435, 0.552690,
		-0.344803, -0.803275, 0.485655,
		0.432580, -0.595147, -0.677254,
		25.533319, 33.737110, 34.682560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535748, 33.549026, 35.428711>,  <25.230513, 34.153713, 35.156635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535748, 33.549026, 35.428711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753912, 33.621956, 35.101471>,  <25.884811, 33.665714, 34.905128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753912, 33.621956, 35.101471>,  <25.535748, 33.549026, 35.428711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753912, 33.621956, 35.101471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835222, -0.199983, 0.512260,
		-0.070206, -0.962685, -0.261358,
		0.545413, 0.182328, -0.818096,
		25.917536, 33.676655, 34.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906076, 32.911938, 35.265385>,  <25.535748, 33.549026, 35.428711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906076, 32.911938, 35.265385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114836, 33.226883, 35.134129>,  <26.240091, 33.415852, 35.055374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114836, 33.226883, 35.134129>,  <25.906076, 32.911938, 35.265385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114836, 33.226883, 35.134129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826768, -0.372238, 0.421775,
		0.209946, -0.491418, -0.845240,
		0.521899, 0.787367, -0.328139,
		26.271406, 33.463093, 35.035686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511591, 32.695221, 34.845474>,  <25.906076, 32.911938, 35.265385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511591, 32.695221, 34.845474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585791, 33.047287, 35.020245>,  <26.630310, 33.258526, 35.125107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585791, 33.047287, 35.020245>,  <26.511591, 32.695221, 34.845474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585791, 33.047287, 35.020245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732663, -0.420190, 0.535392,
		0.654825, 0.220808, -0.722806,
		0.185497, 0.880162, 0.436929,
		26.641439, 33.311337, 35.151321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238182, 32.728748, 34.975769>,  <26.511591, 32.695221, 34.845474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238182, 32.728748, 34.975769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055368, 32.978512, 35.229141>,  <26.945681, 33.128372, 35.381165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055368, 32.978512, 35.229141>,  <27.238182, 32.728748, 34.975769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055368, 32.978512, 35.229141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453218, -0.449282, 0.769896,
		0.765319, 0.638949, -0.077657,
		-0.457034, 0.624412, 0.633427,
		26.918259, 33.165836, 35.419170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763573, 32.841393, 35.458698>,  <27.238182, 32.728748, 34.975769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763573, 32.841393, 35.458698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410246, 32.951302, 35.610619>,  <27.198250, 33.017246, 35.701771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410246, 32.951302, 35.610619>,  <27.763573, 32.841393, 35.458698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410246, 32.951302, 35.610619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238871, -0.433301, 0.869017,
		0.403348, 0.858343, 0.317109,
		-0.883318, 0.274768, 0.379804,
		27.145250, 33.033733, 35.724560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976957, 32.962215, 36.106762>,  <27.763573, 32.841393, 35.458698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976957, 32.962215, 36.106762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579439, 32.943447, 36.147091>,  <27.340927, 32.932186, 36.171288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579439, 32.943447, 36.147091>,  <27.976957, 32.962215, 36.106762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579439, 32.943447, 36.147091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106375, -0.665397, 0.738872,
		0.032421, 0.745014, 0.666260,
		-0.993797, -0.046919, 0.100824,
		27.281300, 32.929371, 36.177338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833290, 32.992420, 36.763569>,  <27.976957, 32.962215, 36.106762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833290, 32.992420, 36.763569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502876, 32.813202, 36.626793>,  <27.304628, 32.705669, 36.544727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502876, 32.813202, 36.626793>,  <27.833290, 32.992420, 36.763569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502876, 32.813202, 36.626793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055728, -0.668630, 0.741504,
		-0.560859, 0.593452, 0.577280,
		-0.826034, -0.448050, -0.341935,
		27.255066, 32.678787, 36.524212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550457, 32.710129, 37.259129>,  <27.833290, 32.992420, 36.763569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550457, 32.710129, 37.259129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370214, 32.481419, 36.984894>,  <27.262070, 32.344193, 36.820354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370214, 32.481419, 36.984894>,  <27.550457, 32.710129, 37.259129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370214, 32.481419, 36.984894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008034, -0.765342, 0.643573,
		-0.892687, 0.295505, 0.340273,
		-0.450605, -0.571776, -0.685586,
		27.235033, 32.309887, 36.779217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630180, 32.067177, 37.705273>,  <27.550457, 32.710129, 37.259129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630180, 32.067177, 37.705273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469696, 31.717613, 37.595505>,  <27.373405, 31.507874, 37.529644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469696, 31.717613, 37.595505>,  <27.630180, 32.067177, 37.705273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469696, 31.717613, 37.595505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559257, 0.470977, -0.682211,
		0.725440, -0.120236, -0.677702,
		-0.401209, -0.873913, -0.274423,
		27.349333, 31.455439, 37.513176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718920, 31.748346, 36.949268>,  <27.630180, 32.067177, 37.705273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718920, 31.748346, 36.949268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346308, 31.688025, 37.081638>,  <27.122742, 31.651833, 37.161060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346308, 31.688025, 37.081638>,  <27.718920, 31.748346, 36.949268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346308, 31.688025, 37.081638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351230, 0.609027, -0.711142,
		-0.094303, -0.778681, -0.620292,
		-0.931528, -0.150802, 0.330929,
		27.066849, 31.642784, 37.180916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316572, 31.414789, 36.405357>,  <27.718920, 31.748346, 36.949268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316572, 31.414789, 36.405357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107315, 31.631945, 36.668140>,  <26.981760, 31.762238, 36.825809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107315, 31.631945, 36.668140>,  <27.316572, 31.414789, 36.405357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107315, 31.631945, 36.668140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247599, 0.640788, -0.726695,
		-0.815486, -0.542826, -0.200805,
		-0.523143, 0.542890, 0.656957,
		26.950373, 31.794811, 36.865227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699770, 31.622072, 36.067268>,  <27.316572, 31.414789, 36.405357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699770, 31.622072, 36.067268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773035, 31.884430, 36.360188>,  <26.816994, 32.041843, 36.535938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773035, 31.884430, 36.360188>,  <26.699770, 31.622072, 36.067268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773035, 31.884430, 36.360188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171909, 0.754787, -0.633043,
		-0.967935, -0.009937, 0.251004,
		0.183164, 0.655894, 0.732293,
		26.827984, 32.081200, 36.579876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149542, 32.163315, 36.129620>,  <26.699770, 31.622072, 36.067268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149542, 32.163315, 36.129620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484575, 32.341545, 36.256058>,  <26.685595, 32.448483, 36.331921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484575, 32.341545, 36.256058>,  <26.149542, 32.163315, 36.129620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484575, 32.341545, 36.256058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203223, 0.791198, -0.576807,
		-0.507105, 0.418886, 0.753246,
		0.837583, 0.445579, 0.316093,
		26.735849, 32.475220, 36.350887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962133, 32.835190, 36.300293>,  <26.149542, 32.163315, 36.129620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962133, 32.835190, 36.300293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359287, 32.861969, 36.260899>,  <26.597580, 32.878036, 36.237263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359287, 32.861969, 36.260899>,  <25.962133, 32.835190, 36.300293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359287, 32.861969, 36.260899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105065, 0.881784, -0.459802,
		0.056057, 0.466878, 0.882543,
		0.992884, 0.066950, -0.098483,
		26.657152, 32.882053, 36.231354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033054, 33.492523, 36.310028>,  <25.962133, 32.835190, 36.300293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033054, 33.492523, 36.310028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364563, 33.352066, 36.135746>,  <26.563469, 33.267792, 36.031178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364563, 33.352066, 36.135746>,  <26.033054, 33.492523, 36.310028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364563, 33.352066, 36.135746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017911, 0.794862, -0.606526,
		0.559302, 0.494867, 0.665048,
		0.828771, -0.351143, -0.435704,
		26.613194, 33.246723, 36.005035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436712, 34.085629, 36.177628>,  <26.033054, 33.492523, 36.310028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436712, 34.085629, 36.177628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565617, 33.785858, 35.946281>,  <26.642960, 33.605995, 35.807472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565617, 33.785858, 35.946281>,  <26.436712, 34.085629, 36.177628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565617, 33.785858, 35.946281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039454, 0.599799, -0.799177,
		0.945828, 0.280364, 0.163725,
		0.322263, -0.749424, -0.578368,
		26.662296, 33.561031, 35.772770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797462, 34.366928, 35.618240>,  <26.436712, 34.085629, 36.177628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797462, 34.366928, 35.618240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622784, 34.026329, 35.502144>,  <26.517977, 33.821968, 35.432487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622784, 34.026329, 35.502144>,  <26.797462, 34.366928, 35.618240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622784, 34.026329, 35.502144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104667, 0.368531, -0.923704,
		0.893500, -0.372999, -0.250060,
		-0.436696, -0.851502, -0.290242,
		26.491776, 33.770878, 35.415070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167439, 34.198589, 35.026508>,  <26.797462, 34.366928, 35.618240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167439, 34.198589, 35.026508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797682, 34.046387, 35.037239>,  <26.575829, 33.955067, 35.043678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797682, 34.046387, 35.037239>,  <27.167439, 34.198589, 35.026508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797682, 34.046387, 35.037239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162403, 0.328955, -0.930276,
		0.345164, -0.864289, -0.365878,
		-0.924385, -0.380517, 0.026820,
		26.520365, 33.932236, 35.045288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984291, 33.979332, 34.352417>,  <27.167439, 34.198589, 35.026508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984291, 33.979332, 34.352417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627590, 34.079342, 34.503288>,  <26.413570, 34.139347, 34.593811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627590, 34.079342, 34.503288>,  <26.984291, 33.979332, 34.352417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627590, 34.079342, 34.503288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297126, 0.305154, -0.904764,
		-0.341315, -0.918894, -0.197831,
		-0.891751, 0.250029, 0.377181,
		26.360065, 34.154350, 34.616444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667582, 33.809731, 34.699120>,  <26.984291, 33.979332, 34.352417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667582, 33.809731, 34.699120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993624, 33.864937, 34.924171>,  <28.189249, 33.898060, 35.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993624, 33.864937, 34.924171>,  <27.667582, 33.809731, 34.699120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993624, 33.864937, 34.924171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571426, -0.031811, -0.820037,
		-0.095283, 0.989919, -0.104797,
		0.815103, 0.138020, 0.562634,
		28.238155, 33.906342, 35.092960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053839, 34.385223, 34.429718>,  <27.667582, 33.809731, 34.699120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053839, 34.385223, 34.429718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282700, 34.119743, 34.622444>,  <28.420015, 33.960457, 34.738079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282700, 34.119743, 34.622444>,  <28.053839, 34.385223, 34.429718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282700, 34.119743, 34.622444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554610, -0.119687, -0.823458,
		0.604196, 0.738362, 0.299615,
		0.572150, -0.663699, 0.481817,
		28.454344, 33.920635, 34.766991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855499, 34.534267, 34.392860>,  <28.053839, 34.385223, 34.429718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855499, 34.534267, 34.392860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743515, 34.151588, 34.424721>,  <28.676325, 33.921982, 34.443836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743515, 34.151588, 34.424721>,  <28.855499, 34.534267, 34.392860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743515, 34.151588, 34.424721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421146, -0.196956, -0.885350,
		0.862703, -0.214318, 0.458051,
		-0.279963, -0.956701, 0.079655,
		28.659527, 33.864578, 34.448616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352539, 34.042442, 34.413151>,  <28.855499, 34.534267, 34.392860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352539, 34.042442, 34.413151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032082, 33.884502, 34.233257>,  <28.839808, 33.789738, 34.125320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032082, 33.884502, 34.233257>,  <29.352539, 34.042442, 34.413151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032082, 33.884502, 34.233257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503959, -0.039793, -0.862811,
		0.322788, -0.917882, 0.230870,
		-0.801146, -0.394853, -0.449730,
		28.791739, 33.766045, 34.098339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372065, 33.292286, 34.073021>,  <29.352539, 34.042442, 34.413151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372065, 33.292286, 34.073021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178402, 33.595238, 33.897762>,  <29.062204, 33.777008, 33.792606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178402, 33.595238, 33.897762>,  <29.372065, 33.292286, 34.073021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178402, 33.595238, 33.897762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488514, -0.181458, -0.853479,
		-0.725910, -0.627260, -0.282134,
		-0.484158, 0.757375, -0.438148,
		29.033154, 33.822449, 33.766319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775171, 32.886444, 33.650532>,  <29.372065, 33.292286, 34.073021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775171, 32.886444, 33.650532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960800, 32.551754, 33.534233>,  <30.072178, 32.350941, 33.464455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960800, 32.551754, 33.534233>,  <29.775171, 32.886444, 33.650532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960800, 32.551754, 33.534233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593564, -0.050103, -0.803226,
		0.657509, 0.545332, -0.519899,
		0.464073, -0.836721, -0.290746,
		30.100021, 32.300739, 33.447010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308182, 32.613277, 32.999138>,  <29.775171, 32.886444, 33.650532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308182, 32.613277, 32.999138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460196, 32.251793, 33.078014>,  <30.551403, 32.034904, 33.125340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460196, 32.251793, 33.078014>,  <30.308182, 32.613277, 32.999138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460196, 32.251793, 33.078014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556521, -0.393678, -0.731644,
		0.738823, 0.168309, -0.652544,
		0.380034, -0.903709, 0.197190,
		30.574205, 31.980680, 33.137173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526873, 32.267540, 32.319496>,  <30.308182, 32.613277, 32.999138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526873, 32.267540, 32.319496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481123, 31.966640, 32.579048>,  <30.453672, 31.786102, 32.734779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481123, 31.966640, 32.579048>,  <30.526873, 32.267540, 32.319496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481123, 31.966640, 32.579048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573022, -0.483604, -0.661644,
		0.811519, -0.447499, -0.375740,
		-0.114376, -0.752244, 0.648881,
		30.446810, 31.740967, 32.773712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691401, 31.671797, 31.956402>,  <30.526873, 32.267540, 32.319496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691401, 31.671797, 31.956402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443966, 31.575115, 32.255447>,  <30.295506, 31.517107, 32.434875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443966, 31.575115, 32.255447>,  <30.691401, 31.671797, 31.956402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443966, 31.575115, 32.255447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650612, -0.375898, -0.659853,
		0.440516, -0.894584, 0.075270,
		-0.618587, -0.241704, 0.747616,
		30.258390, 31.502604, 32.479733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593950, 30.977619, 31.896929>,  <30.691401, 31.671797, 31.956402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593950, 30.977619, 31.896929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282219, 31.129902, 32.096012>,  <30.095181, 31.221272, 32.215462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282219, 31.129902, 32.096012>,  <30.593950, 30.977619, 31.896929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282219, 31.129902, 32.096012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621460, -0.367885, -0.691699,
		-0.080236, -0.848364, 0.523297,
		-0.779326, 0.380707, 0.497707,
		30.048422, 31.244114, 32.245323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057974, 30.468197, 31.965801>,  <30.593950, 30.977619, 31.896929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057974, 30.468197, 31.965801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850512, 30.810007, 31.954636>,  <29.726034, 31.015095, 31.947935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850512, 30.810007, 31.954636>,  <30.057974, 30.468197, 31.965801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850512, 30.810007, 31.954636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485667, -0.321333, -0.812941,
		-0.703651, -0.408078, 0.581677,
		-0.518655, 0.854528, -0.027916,
		29.694916, 31.066366, 31.946260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305901, 30.359085, 31.920902>,  <30.057974, 30.468197, 31.965801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305901, 30.359085, 31.920902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387468, 30.717863, 31.763979>,  <29.436409, 30.933130, 31.669825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387468, 30.717863, 31.763979>,  <29.305901, 30.359085, 31.920902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387468, 30.717863, 31.763979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636398, -0.183059, -0.749324,
		-0.743919, 0.402465, 0.533486,
		0.203917, 0.896945, -0.392309,
		29.448643, 30.986946, 31.646286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648872, 30.603529, 31.805529>,  <29.305901, 30.359085, 31.920902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648872, 30.603529, 31.805529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648510, 30.250925, 31.616661>,  <28.648293, 30.039364, 31.503342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648510, 30.250925, 31.616661>,  <28.648872, 30.603529, 31.805529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648510, 30.250925, 31.616661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614645, 0.372938, -0.695074,
		0.788803, 0.289586, -0.542153,
		-0.000906, -0.881508, -0.472168,
		28.648239, 29.986473, 31.475010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979673, 30.573954, 31.070349>,  <28.648872, 30.603529, 31.805529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979673, 30.573954, 31.070349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692989, 30.296721, 31.101234>,  <28.520979, 30.130381, 31.119766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692989, 30.296721, 31.101234>,  <28.979673, 30.573954, 31.070349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692989, 30.296721, 31.101234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518196, 0.455205, -0.724059,
		0.466688, -0.558949, -0.685404,
		-0.716711, -0.693083, 0.077206,
		28.477976, 30.088797, 31.124399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313169, 31.343685, 31.113964>,  <28.979673, 30.573954, 31.070349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313169, 31.343685, 31.113964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037506, 31.281122, 31.396975>,  <28.872108, 31.243584, 31.566780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037506, 31.281122, 31.396975>,  <29.313169, 31.343685, 31.113964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037506, 31.281122, 31.396975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638764, 0.329867, 0.695103,
		-0.342109, 0.930980, -0.127424,
		-0.689161, -0.156408, 0.707527,
		28.830757, 31.234200, 31.609232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218109, 31.991444, 31.437748>,  <29.313169, 31.343685, 31.113964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218109, 31.991444, 31.437748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188046, 31.654993, 31.651983>,  <29.170008, 31.453123, 31.780525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188046, 31.654993, 31.651983>,  <29.218109, 31.991444, 31.437748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188046, 31.654993, 31.651983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770741, 0.291792, 0.566405,
		-0.632700, 0.455372, 0.626361,
		-0.075158, -0.841127, 0.535591,
		29.165499, 31.402655, 31.812660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205421, 32.162674, 32.140865>,  <29.218109, 31.991444, 31.437748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205421, 32.162674, 32.140865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332401, 31.783842, 32.121845>,  <29.408590, 31.556543, 32.110432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332401, 31.783842, 32.121845>,  <29.205421, 32.162674, 32.140865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332401, 31.783842, 32.121845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642072, 0.177773, 0.745748,
		-0.697832, -0.267269, 0.664529,
		0.317451, -0.947082, -0.047550,
		29.427637, 31.499718, 32.107582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998636, 31.789364, 32.802280>,  <29.205421, 32.162674, 32.140865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998636, 31.789364, 32.802280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318598, 31.617966, 32.634209>,  <29.510574, 31.515127, 32.533367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318598, 31.617966, 32.634209>,  <28.998636, 31.789364, 32.802280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318598, 31.617966, 32.634209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531798, 0.181642, 0.827162,
		-0.278113, -0.885098, 0.373169,
		0.799902, -0.428495, -0.420176,
		29.558569, 31.489418, 32.508156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319231, 31.402418, 33.363342>,  <28.998636, 31.789364, 32.802280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319231, 31.402418, 33.363342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600693, 31.460278, 33.085075>,  <29.769569, 31.494993, 32.918118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600693, 31.460278, 33.085075>,  <29.319231, 31.402418, 33.363342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600693, 31.460278, 33.085075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648143, 0.270547, 0.711839,
		0.291174, -0.951778, 0.096621,
		0.703654, 0.144645, -0.695665,
		29.811789, 31.503672, 32.876377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948971, 31.057417, 33.442940>,  <29.319231, 31.402418, 33.363342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948971, 31.057417, 33.442940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025986, 31.404806, 33.260212>,  <30.072195, 31.613239, 33.150578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025986, 31.404806, 33.260212>,  <29.948971, 31.057417, 33.442940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025986, 31.404806, 33.260212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743396, 0.174782, 0.645612,
		0.640541, -0.463900, -0.611968,
		0.192538, 0.868475, -0.456816,
		30.083748, 31.665348, 33.123169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713079, 31.150646, 33.230610>,  <29.948971, 31.057417, 33.442940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713079, 31.150646, 33.230610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516197, 31.493677, 33.290344>,  <30.398067, 31.699495, 33.326183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516197, 31.493677, 33.290344>,  <30.713079, 31.150646, 33.230610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516197, 31.493677, 33.290344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698731, 0.286922, 0.655325,
		0.519143, 0.426897, -0.740439,
		-0.492204, 0.857575, 0.149333,
		30.368536, 31.750950, 33.335144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239149, 31.825584, 33.169899>,  <30.713079, 31.150646, 33.230610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239149, 31.825584, 33.169899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921764, 31.865650, 33.410027>,  <30.731333, 31.889690, 33.554104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921764, 31.865650, 33.410027>,  <31.239149, 31.825584, 33.169899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921764, 31.865650, 33.410027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608276, 0.163623, 0.776677,
		-0.020430, 0.981425, -0.190757,
		-0.793462, 0.100165, 0.600320,
		30.683725, 31.895700, 33.590122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077324, 32.581383, 33.456036>,  <31.239149, 31.825584, 33.169899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077324, 32.581383, 33.456036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987652, 32.274071, 33.695866>,  <30.933849, 32.089684, 33.839764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987652, 32.274071, 33.695866>,  <31.077324, 32.581383, 33.456036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987652, 32.274071, 33.695866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839193, 0.160610, 0.519576,
		-0.495478, 0.619635, 0.608731,
		-0.224179, -0.768281, 0.599573,
		30.920399, 32.043587, 33.875736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253708, 32.790192, 34.097431>,  <31.077324, 32.581383, 33.456036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253708, 32.790192, 34.097431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257524, 32.390568, 34.114361>,  <31.259815, 32.150795, 34.124519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257524, 32.390568, 34.114361>,  <31.253708, 32.790192, 34.097431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257524, 32.390568, 34.114361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742064, 0.035444, 0.669391,
		-0.670261, 0.025017, 0.741704,
		0.009543, -0.999058, 0.042321,
		31.260387, 32.090851, 34.127056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538599, 32.733879, 34.782913>,  <31.253708, 32.790192, 34.097431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538599, 32.733879, 34.782913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495441, 32.370689, 34.620953>,  <31.469547, 32.152775, 34.523777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495441, 32.370689, 34.620953>,  <31.538599, 32.733879, 34.782913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495441, 32.370689, 34.620953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523731, -0.398094, 0.753145,
		-0.845023, -0.130798, 0.518486,
		-0.107896, -0.907972, -0.404901,
		31.463072, 32.098297, 34.499481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089504, 32.950226, 34.293522>,  <31.538599, 32.733879, 34.782913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089504, 32.950226, 34.293522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481186, 32.976376, 34.370338>,  <32.716194, 32.992065, 34.416428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481186, 32.976376, 34.370338>,  <32.089504, 32.950226, 34.293522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481186, 32.976376, 34.370338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199165, 0.489744, 0.848814,
		-0.038558, -0.869412, 0.492581,
		0.979207, 0.065376, 0.192040,
		32.774948, 32.995987, 34.427952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242111, 32.614269, 34.982498>,  <32.089504, 32.950226, 34.293522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242111, 32.614269, 34.982498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509010, 32.901600, 34.903721>,  <32.669151, 33.073997, 34.856453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509010, 32.901600, 34.903721>,  <32.242111, 32.614269, 34.982498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509010, 32.901600, 34.903721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061929, 0.317000, 0.946402,
		0.742254, -0.619291, 0.256004,
		0.667251, 0.718325, -0.196942,
		32.709187, 33.117096, 34.844639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696461, 32.602936, 35.513462>,  <32.242111, 32.614269, 34.982498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696461, 32.602936, 35.513462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748260, 32.967701, 35.357700>,  <32.779339, 33.186562, 35.264244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748260, 32.967701, 35.357700>,  <32.696461, 32.602936, 35.513462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748260, 32.967701, 35.357700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113708, 0.403781, 0.907762,
		0.985038, -0.073274, 0.155981,
		0.129497, 0.911916, -0.389408,
		32.787109, 33.241276, 35.240879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007408, 32.935017, 36.055168>,  <32.696461, 32.602936, 35.513462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007408, 32.935017, 36.055168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856838, 33.219646, 35.817860>,  <32.766495, 33.390423, 35.675476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856838, 33.219646, 35.817860>,  <33.007408, 32.935017, 36.055168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856838, 33.219646, 35.817860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107464, 0.669583, 0.734922,
		0.920193, 0.212889, -0.328517,
		-0.376426, 0.711573, -0.593268,
		32.743912, 33.433117, 35.639877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676826, 33.433182, 36.034172>,  <33.007408, 32.935017, 36.055168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676826, 33.433182, 36.034172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554771, 33.509254, 35.660923>,  <33.481541, 33.554897, 35.436974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554771, 33.509254, 35.660923>,  <33.676826, 33.433182, 36.034172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554771, 33.509254, 35.660923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537579, 0.774405, 0.333626,
		0.786067, 0.603429, -0.134059,
		-0.305135, 0.190186, -0.933125,
		33.463230, 33.566311, 35.380985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945995, 34.004093, 35.758186>,  <33.676826, 33.433182, 36.034172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945995, 34.004093, 35.758186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586220, 33.961037, 35.588753>,  <33.370354, 33.935204, 35.487091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586220, 33.961037, 35.588753>,  <33.945995, 34.004093, 35.758186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586220, 33.961037, 35.588753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354124, 0.747512, 0.561980,
		0.256144, 0.655468, -0.710459,
		-0.899437, -0.107643, -0.423588,
		33.316387, 33.928745, 35.461678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853188, 34.621746, 35.492027>,  <33.945995, 34.004093, 35.758186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853188, 34.621746, 35.492027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495392, 34.458248, 35.564487>,  <33.280716, 34.360149, 35.607964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495392, 34.458248, 35.564487>,  <33.853188, 34.621746, 35.492027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495392, 34.458248, 35.564487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274570, 0.821986, 0.498949,
		-0.352847, 0.396566, -0.847488,
		-0.894489, -0.408747, 0.181150,
		33.227047, 34.335625, 35.618832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469738, 35.162663, 35.339165>,  <33.853188, 34.621746, 35.492027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469738, 35.162663, 35.339165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257801, 34.922672, 35.578930>,  <33.130638, 34.778679, 35.722790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257801, 34.922672, 35.578930>,  <33.469738, 35.162663, 35.339165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257801, 34.922672, 35.578930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451787, 0.797816, 0.399222,
		-0.717745, -0.059282, -0.693778,
		-0.529841, -0.599979, 0.599411,
		33.098850, 34.742680, 35.758755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890697, 35.392395, 35.304852>,  <33.469738, 35.162663, 35.339165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890697, 35.392395, 35.304852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894848, 35.197407, 35.654083>,  <32.897339, 35.080414, 35.863621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894848, 35.197407, 35.654083>,  <32.890697, 35.392395, 35.304852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894848, 35.197407, 35.654083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548890, 0.727047, 0.412458,
		-0.835830, -0.483501, -0.260027,
		0.010372, -0.487471, 0.873077,
		32.897961, 35.051167, 35.916008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159843, 35.202915, 35.482891>,  <32.890697, 35.392395, 35.304852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159843, 35.202915, 35.482891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407120, 35.275833, 35.788731>,  <32.555485, 35.319584, 35.972233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407120, 35.275833, 35.788731>,  <32.159843, 35.202915, 35.482891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407120, 35.275833, 35.788731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597992, 0.740388, 0.306970,
		-0.510139, -0.646989, 0.566714,
		0.618194, 0.182293, 0.764595,
		32.592579, 35.330521, 36.018108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930567, 35.070942, 36.171230>,  <32.159843, 35.202915, 35.482891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930567, 35.070942, 36.171230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847401, 35.353737, 36.441620>,  <31.797501, 35.523415, 36.603855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847401, 35.353737, 36.441620>,  <31.930567, 35.070942, 36.171230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847401, 35.353737, 36.441620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970831, 0.233518, 0.054377,
		-0.119408, 0.667563, -0.734916,
		-0.207916, 0.706986, 0.675974,
		31.785027, 35.565834, 36.644413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997910, 34.583496, 36.789772>,  <31.930567, 35.070942, 36.171230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997910, 34.583496, 36.789772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001915, 34.888878, 37.048088>,  <32.004318, 35.072105, 37.203075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001915, 34.888878, 37.048088>,  <31.997910, 34.583496, 36.789772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001915, 34.888878, 37.048088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771641, -0.416647, 0.480599,
		0.635979, 0.493505, -0.593282,
		0.010012, 0.763451, 0.645788,
		32.004917, 35.117912, 37.241825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243877, 33.937202, 36.363361>,  <31.997910, 34.583496, 36.789772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243877, 33.937202, 36.363361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485458, 34.186890, 36.165134>,  <32.630405, 34.336700, 36.046196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485458, 34.186890, 36.165134>,  <32.243877, 33.937202, 36.363361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485458, 34.186890, 36.165134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192302, -0.717537, -0.669448,
		-0.773473, 0.309015, -0.553397,
		0.603953, 0.624219, -0.495572,
		32.666645, 34.374157, 36.016464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020489, 33.893948, 35.691086>,  <32.243877, 33.937202, 36.363361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020489, 33.893948, 35.691086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395599, 34.031666, 35.673061>,  <32.620667, 34.114296, 35.662247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395599, 34.031666, 35.673061>,  <32.020489, 33.893948, 35.691086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395599, 34.031666, 35.673061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172205, -0.573825, -0.800669,
		-0.301522, 0.743092, -0.597411,
		0.937779, 0.344296, -0.045056,
		32.676933, 34.134956, 35.659546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303505, 34.421394, 35.144077>,  <32.020489, 33.893948, 35.691086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303505, 34.421394, 35.144077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559505, 34.148342, 35.285168>,  <32.713104, 33.984512, 35.369823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559505, 34.148342, 35.285168>,  <32.303505, 34.421394, 35.144077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559505, 34.148342, 35.285168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178566, -0.314352, -0.932361,
		0.747338, 0.659696, -0.079291,
		0.640000, -0.682630, 0.352727,
		32.751507, 33.943554, 35.390987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928478, 34.371059, 34.653538>,  <32.303505, 34.421394, 35.144077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928478, 34.371059, 34.653538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909409, 34.031448, 34.864017>,  <32.897964, 33.827682, 34.990303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909409, 34.031448, 34.864017>,  <32.928478, 34.371059, 34.653538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909409, 34.031448, 34.864017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293593, -0.515437, -0.805064,
		0.954741, 0.116104, 0.273842,
		-0.047677, -0.849026, 0.526196,
		32.895103, 33.776741, 35.021877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559521, 34.030991, 34.514503>,  <32.928478, 34.371059, 34.653538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559521, 34.030991, 34.514503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293789, 33.747448, 34.609318>,  <33.134350, 33.577320, 34.666206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293789, 33.747448, 34.609318>,  <33.559521, 34.030991, 34.514503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293789, 33.747448, 34.609318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371955, -0.588608, -0.717768,
		0.648320, -0.388664, 0.654692,
		-0.664328, -0.708859, 0.237041,
		33.094490, 33.534790, 34.680431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910915, 33.371666, 34.520771>,  <33.559521, 34.030991, 34.514503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910915, 33.371666, 34.520771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525688, 33.308140, 34.433792>,  <33.294552, 33.270023, 34.381607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525688, 33.308140, 34.433792>,  <33.910915, 33.371666, 34.520771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525688, 33.308140, 34.433792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268917, -0.526276, -0.806671,
		0.013676, -0.835351, 0.549546,
		-0.963066, -0.158815, -0.217443,
		33.236767, 33.260494, 34.368561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706165, 32.589058, 34.523438>,  <33.910915, 33.371666, 34.520771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706165, 32.589058, 34.523438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515759, 32.812893, 34.252064>,  <33.401516, 32.947193, 34.089241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515759, 32.812893, 34.252064>,  <33.706165, 32.589058, 34.523438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515759, 32.812893, 34.252064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318741, -0.609212, -0.726130,
		-0.819641, -0.561896, 0.111634,
		-0.476018, 0.559584, -0.678434,
		33.372952, 32.980766, 34.048534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401249, 32.114761, 34.054001>,  <33.706165, 32.589058, 34.523438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401249, 32.114761, 34.054001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439968, 32.473309, 33.880955>,  <33.463200, 32.688438, 33.777126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439968, 32.473309, 33.880955>,  <33.401249, 32.114761, 34.054001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439968, 32.473309, 33.880955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301600, -0.440637, -0.845504,
		-0.948508, -0.048637, -0.312996,
		0.096795, 0.896367, -0.432616,
		33.469006, 32.742218, 33.751171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886314, 32.112114, 33.466576>,  <33.401249, 32.114761, 34.054001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886314, 32.112114, 33.466576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167805, 32.379509, 33.370331>,  <33.336700, 32.539944, 33.312584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167805, 32.379509, 33.370331>,  <32.886314, 32.112114, 33.466576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167805, 32.379509, 33.370331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114340, -0.440816, -0.890285,
		-0.701209, 0.599006, -0.386649,
		0.703728, 0.668485, -0.240614,
		33.378922, 32.580055, 33.298145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731758, 32.517429, 32.796829>,  <32.886314, 32.112114, 33.466576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731758, 32.517429, 32.796829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128193, 32.476738, 32.831249>,  <33.366055, 32.452324, 32.851902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128193, 32.476738, 32.831249>,  <32.731758, 32.517429, 32.796829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128193, 32.476738, 32.831249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052504, -0.295373, -0.953938,
		0.122457, 0.949951, -0.287399,
		0.991084, -0.101727, 0.086046,
		33.425518, 32.446220, 32.857063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001354, 32.896580, 32.238163>,  <32.731758, 32.517429, 32.796829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001354, 32.896580, 32.238163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277008, 32.632729, 32.358158>,  <33.442398, 32.474419, 32.430153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277008, 32.632729, 32.358158>,  <33.001354, 32.896580, 32.238163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277008, 32.632729, 32.358158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107714, -0.316133, -0.942580,
		0.716587, 0.681873, -0.146806,
		0.689130, -0.659628, 0.299984,
		33.483746, 32.434841, 32.448154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393562, 32.755413, 31.568369>,  <33.001354, 32.896580, 32.238163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393562, 32.755413, 31.568369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547474, 32.503883, 31.838636>,  <33.639820, 32.352966, 32.000797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547474, 32.503883, 31.838636>,  <33.393562, 32.755413, 31.568369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547474, 32.503883, 31.838636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333372, -0.587933, -0.737020,
		0.860701, 0.508841, -0.016595,
		0.384783, -0.628821, 0.675667,
		33.662910, 32.315235, 32.041336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076252, 32.663242, 31.162264>,  <33.393562, 32.755413, 31.568369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076252, 32.663242, 31.162264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975395, 32.376617, 31.422407>,  <33.914883, 32.204643, 31.578493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975395, 32.376617, 31.422407>,  <34.076252, 32.663242, 31.162264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975395, 32.376617, 31.422407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344338, -0.694520, -0.631722,
		0.904354, 0.064661, 0.421856,
		-0.252140, -0.716562, 0.650357,
		33.899754, 32.161648, 31.617514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617352, 32.170418, 31.232487>,  <34.076252, 32.663242, 31.162264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617352, 32.170418, 31.232487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296970, 31.954603, 31.336315>,  <34.104740, 31.825115, 31.398613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296970, 31.954603, 31.336315>,  <34.617352, 32.170418, 31.232487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296970, 31.954603, 31.336315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207037, -0.656375, -0.725471,
		0.561793, -0.527327, 0.637429,
		-0.800952, -0.539536, 0.259570,
		34.056686, 31.792742, 31.414186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814835, 31.532225, 31.111441>,  <34.617352, 32.170418, 31.232487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814835, 31.532225, 31.111441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416168, 31.501064, 31.121216>,  <34.176968, 31.482368, 31.127081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416168, 31.501064, 31.121216>,  <34.814835, 31.532225, 31.111441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416168, 31.501064, 31.121216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028052, -0.607830, -0.793572,
		0.076672, -0.790237, 0.607986,
		-0.996662, -0.077900, 0.024436,
		34.117168, 31.477694, 31.128546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661304, 30.840137, 31.197651>,  <34.814835, 31.532225, 31.111441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661304, 30.840137, 31.197651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343140, 31.012758, 31.027435>,  <34.152241, 31.116331, 30.925306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343140, 31.012758, 31.027435>,  <34.661304, 30.840137, 31.197651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343140, 31.012758, 31.027435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018192, -0.684813, -0.728492,
		-0.605797, -0.587192, 0.536857,
		-0.795411, 0.431552, -0.425540,
		34.104515, 31.142223, 30.899773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342567, 30.303181, 30.840034>,  <34.661304, 30.840137, 31.197651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342567, 30.303181, 30.840034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196697, 30.643797, 30.689360>,  <34.109177, 30.848167, 30.598955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196697, 30.643797, 30.689360>,  <34.342567, 30.303181, 30.840034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196697, 30.643797, 30.689360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156512, -0.454846, -0.876709,
		-0.917887, -0.260757, 0.299146,
		-0.364673, 0.851540, -0.376686,
		34.087296, 30.899260, 30.576353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884140, 30.026312, 30.449160>,  <34.342567, 30.303181, 30.840034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884140, 30.026312, 30.449160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924980, 30.404366, 30.325029>,  <33.949482, 30.631197, 30.250551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924980, 30.404366, 30.325029>,  <33.884140, 30.026312, 30.449160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924980, 30.404366, 30.325029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046579, -0.316155, -0.947563,
		-0.993683, 0.082291, -0.076302,
		0.102099, 0.945132, -0.310325,
		33.955608, 30.687904, 30.231932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326748, 30.177822, 30.028343>,  <33.884140, 30.026312, 30.449160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326748, 30.177822, 30.028343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621120, 30.431908, 29.934612>,  <33.797745, 30.584358, 29.878374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621120, 30.431908, 29.934612>,  <33.326748, 30.177822, 30.028343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621120, 30.431908, 29.934612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082120, -0.259798, -0.962165,
		-0.672057, 0.727331, -0.139030,
		0.735932, 0.635213, -0.234327,
		33.841900, 30.622471, 29.864313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123676, 30.359697, 29.412369>,  <33.326748, 30.177822, 30.028343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123676, 30.359697, 29.412369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499397, 30.496931, 29.411108>,  <33.724831, 30.579271, 29.410351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499397, 30.496931, 29.411108>,  <33.123676, 30.359697, 29.412369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499397, 30.496931, 29.411108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034745, -0.104263, -0.993943,
		-0.341334, 0.933500, -0.109855,
		0.939300, 0.343083, -0.003154,
		33.781189, 30.599855, 29.410162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159954, 30.980932, 28.985144>,  <33.123676, 30.359697, 29.412369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159954, 30.980932, 28.985144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518841, 30.804430, 28.992044>,  <33.734173, 30.698528, 28.996185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518841, 30.804430, 28.992044>,  <33.159954, 30.980932, 28.985144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518841, 30.804430, 28.992044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042501, -0.125171, -0.991225,
		0.439545, 0.888608, -0.131059,
		0.897215, -0.441258, 0.017252,
		33.788006, 30.672052, 28.997219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532120, 31.330093, 28.484180>,  <33.159954, 30.980932, 28.985144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532120, 31.330093, 28.484180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742283, 30.996437, 28.551294>,  <33.868382, 30.796244, 28.591562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742283, 30.996437, 28.551294>,  <33.532120, 31.330093, 28.484180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742283, 30.996437, 28.551294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031953, -0.216405, -0.975781,
		0.850248, 0.507325, -0.140355,
		0.525411, -0.834140, 0.167787,
		33.899906, 30.746195, 28.601631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996056, 31.342680, 27.968349>,  <33.532120, 31.330093, 28.484180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996056, 31.342680, 27.968349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024773, 30.961868, 28.087334>,  <34.042004, 30.733381, 28.158724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024773, 30.961868, 28.087334>,  <33.996056, 31.342680, 27.968349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024773, 30.961868, 28.087334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014500, -0.299195, -0.954082,
		0.997314, 0.064187, -0.035286,
		0.071797, -0.952031, 0.297460,
		34.046310, 30.676258, 28.176571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547779, 31.089630, 27.784578>,  <33.996056, 31.342680, 27.968349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547779, 31.089630, 27.784578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324013, 30.760059, 27.820797>,  <34.189754, 30.562317, 27.842527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324013, 30.760059, 27.820797>,  <34.547779, 31.089630, 27.784578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324013, 30.760059, 27.820797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247477, -0.270276, -0.930433,
		0.791081, -0.498090, 0.355100,
		-0.559415, -0.823927, 0.090545,
		34.156189, 30.512880, 27.847960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810703, 30.600080, 27.345341>,  <34.547779, 31.089630, 27.784578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810703, 30.600080, 27.345341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458046, 30.421871, 27.407587>,  <34.246452, 30.314945, 27.444935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458046, 30.421871, 27.407587>,  <34.810703, 30.600080, 27.345341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458046, 30.421871, 27.407587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113043, -0.120777, -0.986222,
		0.458182, -0.887085, 0.056118,
		-0.881641, -0.445525, 0.155616,
		34.193554, 30.288214, 27.454271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838284, 29.863033, 27.079346>,  <34.810703, 30.600080, 27.345341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838284, 29.863033, 27.079346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458801, 29.988447, 27.095604>,  <34.231113, 30.063696, 27.105358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458801, 29.988447, 27.095604>,  <34.838284, 29.863033, 27.079346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458801, 29.988447, 27.095604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145398, -0.318520, -0.936699,
		-0.280734, -0.894564, 0.347769,
		-0.948708, 0.313528, 0.040649,
		34.174191, 30.082508, 27.107798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543751, 29.428505, 26.643898>,  <34.838284, 29.863033, 27.079346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543751, 29.428505, 26.643898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237900, 29.680885, 26.696421>,  <34.054390, 29.832314, 26.727934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237900, 29.680885, 26.696421>,  <34.543751, 29.428505, 26.643898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237900, 29.680885, 26.696421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390409, -0.291383, -0.873314,
		-0.512758, -0.719025, 0.469129,
		-0.764631, 0.630951, 0.131305,
		34.008511, 29.870171, 26.735813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014439, 28.990879, 26.540674>,  <34.543751, 29.428505, 26.643898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014439, 28.990879, 26.540674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880978, 29.360098, 26.464090>,  <33.800900, 29.581629, 26.418140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880978, 29.360098, 26.464090>,  <34.014439, 28.990879, 26.540674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880978, 29.360098, 26.464090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349120, -0.309647, -0.884439,
		-0.875666, -0.228253, 0.425570,
		-0.333652, 0.923049, -0.191460,
		33.780880, 29.637012, 26.406652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303459, 28.896341, 26.308617>,  <34.014439, 28.990879, 26.540674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303459, 28.896341, 26.308617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469532, 29.234198, 26.173443>,  <33.569176, 29.436913, 26.092339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469532, 29.234198, 26.173443>,  <33.303459, 28.896341, 26.308617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469532, 29.234198, 26.173443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407209, -0.159629, -0.899277,
		-0.813512, 0.510977, 0.277671,
		0.415185, 0.844643, -0.337935,
		33.594086, 29.487591, 26.072062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761078, 29.167723, 25.740942>,  <33.303459, 28.896341, 26.308617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761078, 29.167723, 25.740942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106155, 29.359076, 25.675333>,  <33.313202, 29.473886, 25.635967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106155, 29.359076, 25.675333>,  <32.761078, 29.167723, 25.740942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106155, 29.359076, 25.675333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206884, 0.037889, -0.977632,
		-0.461466, 0.877335, 0.131656,
		0.862698, 0.478381, -0.164022,
		33.364964, 29.502590, 25.626127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587894, 29.615658, 25.140541>,  <32.761078, 29.167723, 25.740942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587894, 29.615658, 25.140541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987183, 29.616875, 25.164345>,  <33.226757, 29.617605, 25.178627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987183, 29.616875, 25.164345>,  <32.587894, 29.615658, 25.140541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987183, 29.616875, 25.164345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058629, 0.128121, -0.990024,
		-0.010637, 0.991754, 0.127715,
		0.998223, 0.003043, 0.059509,
		33.286648, 29.617788, 25.182198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759087, 30.103834, 24.728436>,  <32.587894, 29.615658, 25.140541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759087, 30.103834, 24.728436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085175, 29.872589, 24.742334>,  <33.280827, 29.733843, 24.750673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085175, 29.872589, 24.742334>,  <32.759087, 30.103834, 24.728436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085175, 29.872589, 24.742334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065305, 0.032145, -0.997347,
		0.575461, 0.815324, 0.063959,
		0.815218, -0.578111, 0.034747,
		33.329739, 29.699156, 24.752758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253307, 30.411018, 24.230619>,  <32.759087, 30.103834, 24.728436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253307, 30.411018, 24.230619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386547, 30.038288, 24.288233>,  <33.466492, 29.814650, 24.322802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386547, 30.038288, 24.288233>,  <33.253307, 30.411018, 24.230619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386547, 30.038288, 24.288233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121666, -0.109003, -0.986568,
		0.935008, 0.346153, 0.077062,
		0.333104, -0.931824, 0.144034,
		33.486477, 29.758741, 24.331444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941113, 30.293962, 23.903227>,  <33.253307, 30.411018, 24.230619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941113, 30.293962, 23.903227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772488, 29.931370, 23.912785>,  <33.671314, 29.713814, 23.918518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772488, 29.931370, 23.912785>,  <33.941113, 30.293962, 23.903227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772488, 29.931370, 23.912785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282916, -0.156513, -0.946289,
		0.861535, -0.392161, 0.322439,
		-0.421564, -0.906484, 0.023893,
		33.646019, 29.659424, 23.919952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365135, 29.897682, 23.577492>,  <33.941113, 30.293962, 23.903227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365135, 29.897682, 23.577492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065079, 29.633291, 23.585480>,  <33.885044, 29.474657, 23.590273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065079, 29.633291, 23.585480>,  <34.365135, 29.897682, 23.577492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065079, 29.633291, 23.585480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268696, -0.332256, -0.904106,
		0.604230, -0.672840, 0.426840,
		-0.750139, -0.660979, 0.019970,
		33.840038, 29.434998, 23.591471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697159, 29.247913, 23.450319>,  <34.365135, 29.897682, 23.577492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697159, 29.247913, 23.450319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316700, 29.222155, 23.329535>,  <34.088425, 29.206699, 23.257065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316700, 29.222155, 23.329535>,  <34.697159, 29.247913, 23.450319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316700, 29.222155, 23.329535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303659, -0.372014, -0.877153,
		-0.055846, -0.925991, 0.373393,
		-0.951143, -0.064399, -0.301961,
		34.031357, 29.202835, 23.238947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730904, 28.716196, 23.083164>,  <34.697159, 29.247913, 23.450319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730904, 28.716196, 23.083164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391560, 28.897512, 22.973751>,  <34.187954, 29.006302, 22.908104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391560, 28.897512, 22.973751>,  <34.730904, 28.716196, 23.083164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391560, 28.897512, 22.973751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213269, -0.180285, -0.960215,
		-0.484570, -0.872941, 0.056274,
		-0.848357, 0.453290, -0.273532,
		34.137054, 29.033499, 22.891691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585400, 28.330948, 22.540257>,  <34.730904, 28.716196, 23.083164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585400, 28.330948, 22.540257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392376, 28.677328, 22.487692>,  <34.276562, 28.885157, 22.456154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392376, 28.677328, 22.487692>,  <34.585400, 28.330948, 22.540257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392376, 28.677328, 22.487692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296623, 0.020405, -0.954777,
		-0.824107, -0.499716, -0.266707,
		-0.482559, 0.865949, -0.131412,
		34.247608, 28.937113, 22.448269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211174, 28.235847, 21.974066>,  <34.585400, 28.330948, 22.540257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211174, 28.235847, 21.974066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199692, 28.635294, 21.991713>,  <34.192802, 28.874962, 22.002300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199692, 28.635294, 21.991713>,  <34.211174, 28.235847, 21.974066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199692, 28.635294, 21.991713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334760, 0.051189, -0.940912,
		-0.941866, -0.012243, -0.335765,
		-0.028707, 0.998614, 0.044115,
		34.191078, 28.934877, 22.004948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791454, 28.435263, 21.447027>,  <34.211174, 28.235847, 21.974066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791454, 28.435263, 21.447027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005329, 28.766748, 21.513166>,  <34.133656, 28.965639, 21.552851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005329, 28.766748, 21.513166>,  <33.791454, 28.435263, 21.447027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005329, 28.766748, 21.513166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307610, -0.008630, -0.951474,
		-0.787072, 0.559606, -0.259535,
		0.534690, 0.828714, 0.165348,
		34.165737, 29.015362, 21.562771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624714, 29.033747, 20.906757>,  <33.791454, 28.435263, 21.447027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624714, 29.033747, 20.906757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996349, 29.085964, 21.045179>,  <34.219330, 29.117294, 21.128233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996349, 29.085964, 21.045179>,  <33.624714, 29.033747, 20.906757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996349, 29.085964, 21.045179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337737, 0.081931, -0.937668,
		-0.150758, 0.988052, 0.032032,
		0.929089, 0.130543, 0.346053,
		34.275078, 29.125128, 21.148994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008392, 29.491190, 20.514917>,  <33.624714, 29.033747, 20.906757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008392, 29.491190, 20.514917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317928, 29.299833, 20.680958>,  <34.503651, 29.185019, 20.780582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317928, 29.299833, 20.680958>,  <34.008392, 29.491190, 20.514917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317928, 29.299833, 20.680958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484853, 0.025731, -0.874217,
		0.407539, 0.877768, 0.251863,
		0.773841, -0.478394, 0.415102,
		34.550079, 29.156315, 20.805489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516132, 29.806610, 20.227074>,  <34.008392, 29.491190, 20.514917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516132, 29.806610, 20.227074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725632, 29.501812, 20.379412>,  <34.851334, 29.318933, 20.470814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725632, 29.501812, 20.379412>,  <34.516132, 29.806610, 20.227074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725632, 29.501812, 20.379412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712361, 0.146609, -0.686329,
		0.467146, 0.630766, 0.619604,
		0.523753, -0.761997, 0.380845,
		34.882759, 29.273212, 20.493666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173450, 30.105318, 20.218950>,  <34.516132, 29.806610, 20.227074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173450, 30.105318, 20.218950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215340, 29.707584, 20.226271>,  <35.240475, 29.468945, 20.230663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215340, 29.707584, 20.226271>,  <35.173450, 30.105318, 20.218950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215340, 29.707584, 20.226271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768907, 0.069283, -0.635595,
		0.630725, 0.080636, 0.771805,
		0.104725, -0.994333, 0.018303,
		35.246758, 29.409285, 20.231762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951488, 29.916401, 20.300119>,  <35.173450, 30.105318, 20.218950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951488, 29.916401, 20.300119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746479, 29.599005, 20.168856>,  <35.623474, 29.408567, 20.090097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746479, 29.599005, 20.168856>,  <35.951488, 29.916401, 20.300119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746479, 29.599005, 20.168856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743078, -0.218349, -0.632582,
		0.430295, -0.568062, 0.701535,
		-0.512525, -0.793492, -0.328159,
		35.592720, 29.360956, 20.070408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427410, 29.422384, 20.239120>,  <35.951488, 29.916401, 20.300119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427410, 29.422384, 20.239120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133648, 29.284636, 20.005178>,  <35.957390, 29.201986, 19.864813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133648, 29.284636, 20.005178>,  <36.427410, 29.422384, 20.239120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133648, 29.284636, 20.005178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675853, -0.292036, -0.676711,
		0.062242, -0.892256, 0.447219,
		-0.734404, -0.344374, -0.584857,
		35.913326, 29.181324, 19.829721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622841, 28.801020, 20.008053>,  <36.427410, 29.422384, 20.239120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622841, 28.801020, 20.008053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333694, 28.892466, 19.747223>,  <36.160206, 28.947332, 19.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333694, 28.892466, 19.747223>,  <36.622841, 28.801020, 20.008053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333694, 28.892466, 19.747223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461379, -0.542811, -0.701773,
		-0.514391, -0.808140, 0.286900,
		-0.722863, 0.228616, -0.652077,
		36.116837, 28.961050, 19.551600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534317, 28.233410, 19.477398>,  <36.622841, 28.801020, 20.008053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534317, 28.233410, 19.477398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335835, 28.522728, 19.285307>,  <36.216743, 28.696320, 19.170052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335835, 28.522728, 19.285307>,  <36.534317, 28.233410, 19.477398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335835, 28.522728, 19.285307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471976, -0.239529, -0.848448,
		-0.728709, -0.647663, -0.222523,
		-0.496208, 0.723297, -0.480228,
		36.186974, 28.739717, 19.141239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175880, 27.914936, 18.856297>,  <36.534317, 28.233410, 19.477398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175880, 27.914936, 18.856297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239956, 28.306429, 18.805029>,  <36.278400, 28.541325, 18.774269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239956, 28.306429, 18.805029>,  <36.175880, 27.914936, 18.856297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239956, 28.306429, 18.805029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425820, -0.185660, -0.885555,
		-0.890515, 0.087281, -0.446504,
		0.160190, 0.978730, -0.128167,
		36.288013, 28.600048, 18.766579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710552, 28.335297, 18.307795>,  <36.175880, 27.914936, 18.856297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710552, 28.335297, 18.307795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099625, 28.425062, 18.331564>,  <36.333069, 28.478922, 18.345825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099625, 28.425062, 18.331564>,  <35.710552, 28.335297, 18.307795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099625, 28.425062, 18.331564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063083, -0.009171, -0.997966,
		-0.223413, 0.974451, -0.023077,
		0.972680, 0.224414, 0.059422,
		36.391430, 28.492386, 18.349390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886936, 28.987080, 17.937126>,  <35.710552, 28.335297, 18.307795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886936, 28.987080, 17.937126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229244, 28.780188, 17.932461>,  <36.434628, 28.656052, 17.929661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229244, 28.780188, 17.932461>,  <35.886936, 28.987080, 17.937126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229244, 28.780188, 17.932461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189337, 0.334083, -0.923331,
		0.481473, 0.787947, 0.383828,
		0.855766, -0.517232, -0.011664,
		36.485973, 28.625017, 17.928961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382919, 29.475609, 17.771868>,  <35.886936, 28.987080, 17.937126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382919, 29.475609, 17.771868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488632, 29.105059, 17.664551>,  <36.552059, 28.882729, 17.600161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488632, 29.105059, 17.664551>,  <36.382919, 29.475609, 17.771868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488632, 29.105059, 17.664551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482920, 0.367910, -0.794626,
		0.834830, 0.080445, 0.544599,
		0.264287, -0.926375, -0.268294,
		36.567917, 28.827147, 17.584063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817318, 29.642845, 17.033524>,  <36.382919, 29.475609, 17.771868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817318, 29.642845, 17.033524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169632, 29.831556, 17.017342>,  <37.381020, 29.944782, 17.007633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169632, 29.831556, 17.017342>,  <36.817318, 29.642845, 17.033524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169632, 29.831556, 17.017342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054327, -0.185554, -0.981131,
		-0.470382, 0.861972, -0.189064,
		0.880789, 0.471778, -0.040453,
		37.433868, 29.973089, 17.005205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786625, 30.265793, 16.510857>,  <36.817318, 29.642845, 17.033524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786625, 30.265793, 16.510857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161472, 30.133450, 16.555279>,  <37.386383, 30.054043, 16.581932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161472, 30.133450, 16.555279>,  <36.786625, 30.265793, 16.510857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161472, 30.133450, 16.555279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037351, -0.221303, -0.974489,
		0.346994, 0.917365, -0.195031,
		0.937123, -0.330858, 0.111055,
		37.442608, 30.034193, 16.588594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937515, 29.633551, 16.110077>,  <36.786625, 30.265793, 16.510857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937515, 29.633551, 16.110077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260761, 29.491577, 16.298111>,  <37.454708, 29.406393, 16.410931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260761, 29.491577, 16.298111>,  <36.937515, 29.633551, 16.110077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260761, 29.491577, 16.298111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327493, 0.934078, 0.142287,
		-0.489597, 0.038965, 0.871078,
		0.808110, -0.354935, 0.470083,
		37.503193, 29.385096, 16.439137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417507, 29.253824, 15.623260>,  <36.937515, 29.633551, 16.110077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417507, 29.253824, 15.623260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802822, 29.355434, 15.588489>,  <38.034012, 29.416401, 15.567626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802822, 29.355434, 15.588489>,  <37.417507, 29.253824, 15.623260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802822, 29.355434, 15.588489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056536, 0.508426, 0.859248,
		0.262466, -0.822785, 0.504120,
		0.963284, 0.254025, -0.086928,
		38.091808, 29.431643, 15.562410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713490, 28.945751, 16.107449>,  <37.417507, 29.253824, 15.623260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713490, 28.945751, 16.107449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887077, 29.292194, 16.008228>,  <37.991230, 29.500061, 15.948696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887077, 29.292194, 16.008228>,  <37.713490, 28.945751, 16.107449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887077, 29.292194, 16.008228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153346, 0.342320, 0.926985,
		0.887781, -0.364245, 0.281371,
		0.433969, 0.866107, -0.248050,
		38.017269, 29.552027, 15.933813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392212, 29.132851, 16.451395>,  <37.713490, 28.945751, 16.107449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392212, 29.132851, 16.451395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177071, 29.457914, 16.361691>,  <38.047985, 29.652952, 16.307867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177071, 29.457914, 16.361691>,  <38.392212, 29.132851, 16.451395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177071, 29.457914, 16.361691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108415, 0.330483, 0.937564,
		0.836037, 0.479961, -0.265857,
		-0.537855, 0.812662, -0.224261,
		38.015713, 29.701714, 16.294413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694592, 29.713512, 16.664629>,  <38.392212, 29.132851, 16.451395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694592, 29.713512, 16.664629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311661, 29.827669, 16.646418>,  <38.081902, 29.896162, 16.635490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311661, 29.827669, 16.646418>,  <38.694592, 29.713512, 16.664629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311661, 29.827669, 16.646418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090381, 0.445294, 0.890811,
		0.274503, 0.848685, -0.452086,
		-0.957329, 0.285390, -0.045530,
		38.024464, 29.913286, 16.632759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648903, 30.378279, 16.797777>,  <38.694592, 29.713512, 16.664629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648903, 30.378279, 16.797777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274864, 30.262634, 16.879770>,  <38.050442, 30.193249, 16.928967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274864, 30.262634, 16.879770>,  <38.648903, 30.378279, 16.797777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274864, 30.262634, 16.879770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032395, 0.506243, 0.861782,
		-0.352921, 0.812486, -0.464018,
		-0.935092, -0.289109, 0.204984,
		37.994335, 30.175901, 16.941265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409081, 30.896376, 17.023336>,  <38.648903, 30.378279, 16.797777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409081, 30.896376, 17.023336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186947, 30.595009, 17.164171>,  <38.053665, 30.414188, 17.248672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186947, 30.595009, 17.164171>,  <38.409081, 30.896376, 17.023336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186947, 30.595009, 17.164171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063614, 0.460617, 0.885316,
		-0.829191, 0.469248, -0.303724,
		-0.555334, -0.753418, 0.352089,
		38.020348, 30.368984, 17.269798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997841, 31.234531, 17.482565>,  <38.409081, 30.896376, 17.023336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997841, 31.234531, 17.482565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934151, 30.861969, 17.613487>,  <37.895935, 30.638432, 17.692041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934151, 30.861969, 17.613487>,  <37.997841, 31.234531, 17.482565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934151, 30.861969, 17.613487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044086, 0.324497, 0.944859,
		-0.986257, 0.164878, -0.010607,
		-0.159228, -0.931406, 0.327306,
		37.886383, 30.582546, 17.711679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424034, 31.297041, 17.865074>,  <37.997841, 31.234531, 17.482565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424034, 31.297041, 17.865074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614883, 30.966417, 17.984505>,  <37.729393, 30.768044, 18.056164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614883, 30.966417, 17.984505>,  <37.424034, 31.297041, 17.865074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614883, 30.966417, 17.984505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128318, 0.270581, 0.954107,
		-0.869417, -0.493542, 0.023038,
		0.477126, -0.826560, 0.298578,
		37.758022, 30.718449, 18.074078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128899, 31.094496, 18.452555>,  <37.424034, 31.297041, 17.865074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128899, 31.094496, 18.452555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484005, 30.912647, 18.481398>,  <37.697067, 30.803539, 18.498703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484005, 30.912647, 18.481398>,  <37.128899, 31.094496, 18.452555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484005, 30.912647, 18.481398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056267, 0.262659, 0.963247,
		-0.456851, -0.851076, 0.258759,
		0.887761, -0.454620, 0.072109,
		37.750332, 30.776260, 18.503031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101051, 30.584272, 19.054705>,  <37.128899, 31.094496, 18.452555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101051, 30.584272, 19.054705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491932, 30.628542, 18.982222>,  <37.726460, 30.655104, 18.938732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491932, 30.628542, 18.982222>,  <37.101051, 30.584272, 19.054705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491932, 30.628542, 18.982222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167915, 0.119548, 0.978526,
		0.129979, -0.986638, 0.098235,
		0.977195, 0.110693, -0.181210,
		37.785091, 30.661745, 18.927858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437351, 30.163448, 19.580833>,  <37.101051, 30.584272, 19.054705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437351, 30.163448, 19.580833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708939, 30.430237, 19.458101>,  <37.871891, 30.590311, 19.384462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708939, 30.430237, 19.458101>,  <37.437351, 30.163448, 19.580833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708939, 30.430237, 19.458101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194684, 0.239399, 0.951202,
		0.707881, -0.705575, 0.032697,
		0.678972, 0.666972, -0.306831,
		37.912632, 30.630329, 19.366053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913818, 30.082087, 20.097082>,  <37.437351, 30.163448, 19.580833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913818, 30.082087, 20.097082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964729, 30.435444, 19.916676>,  <37.995274, 30.647459, 19.808432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964729, 30.435444, 19.916676>,  <37.913818, 30.082087, 20.097082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964729, 30.435444, 19.916676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153823, 0.431633, 0.888837,
		0.979867, -0.182503, -0.080950,
		0.127275, 0.883394, -0.451017,
		38.002911, 30.700462, 19.781370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397507, 30.396275, 20.473721>,  <37.913818, 30.082087, 20.097082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397507, 30.396275, 20.473721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250439, 30.705656, 20.267193>,  <38.162197, 30.891285, 20.143276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250439, 30.705656, 20.267193>,  <38.397507, 30.396275, 20.473721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250439, 30.705656, 20.267193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055903, 0.572588, 0.817935,
		0.928273, 0.271870, -0.253764,
		-0.367674, 0.773453, -0.516320,
		38.140137, 30.937693, 20.112297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909847, 30.873856, 20.616978>,  <38.397507, 30.396275, 20.473721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909847, 30.873856, 20.616978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578140, 31.066639, 20.503813>,  <38.379116, 31.182310, 20.435915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578140, 31.066639, 20.503813>,  <38.909847, 30.873856, 20.616978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578140, 31.066639, 20.503813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103544, 0.629967, 0.769688,
		0.549183, 0.608980, -0.572312,
		-0.829263, 0.481959, -0.282911,
		38.329361, 31.211227, 20.418940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089626, 31.561710, 20.856674>,  <38.909847, 30.873856, 20.616978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089626, 31.561710, 20.856674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691570, 31.578918, 20.821236>,  <38.452736, 31.589243, 20.799973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691570, 31.578918, 20.821236>,  <39.089626, 31.561710, 20.856674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691570, 31.578918, 20.821236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044774, 0.603632, 0.796005,
		0.087723, 0.796102, -0.598772,
		-0.995138, 0.043019, -0.088597,
		38.393028, 31.591824, 20.794657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900101, 32.227623, 20.901869>,  <39.089626, 31.561710, 20.856674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900101, 32.227623, 20.901869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578079, 32.018658, 21.014280>,  <38.384869, 31.893278, 21.081726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578079, 32.018658, 21.014280>,  <38.900101, 32.227623, 20.901869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578079, 32.018658, 21.014280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100762, 0.587285, 0.803084,
		-0.584587, 0.618206, -0.525433,
		-0.805050, -0.522416, 0.281027,
		38.336563, 31.861933, 21.098589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419361, 32.699261, 21.115461>,  <38.900101, 32.227623, 20.901869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419361, 32.699261, 21.115461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296127, 32.353878, 21.275225>,  <38.222187, 32.146648, 21.371082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296127, 32.353878, 21.275225>,  <38.419361, 32.699261, 21.115461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296127, 32.353878, 21.275225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306827, 0.487575, 0.817390,
		-0.900523, 0.129274, -0.415146,
		-0.308082, -0.863457, 0.399408,
		38.203701, 32.094841, 21.395046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664150, 32.701218, 21.298374>,  <38.419361, 32.699261, 21.115461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664150, 32.701218, 21.298374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842422, 32.433338, 21.535988>,  <37.949387, 32.272610, 21.678556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842422, 32.433338, 21.535988>,  <37.664150, 32.701218, 21.298374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842422, 32.433338, 21.535988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393668, 0.449353, 0.801940,
		-0.803987, -0.591260, -0.063371,
		0.445679, -0.669697, 0.594034,
		37.976128, 32.232430, 21.714199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163963, 32.551353, 21.738081>,  <37.664150, 32.701218, 21.298374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163963, 32.551353, 21.738081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492832, 32.444107, 21.938938>,  <37.690155, 32.379761, 22.059452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492832, 32.444107, 21.938938>,  <37.163963, 32.551353, 21.738081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492832, 32.444107, 21.938938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400083, 0.355327, 0.844793,
		-0.404926, -0.895465, 0.184872,
		0.822173, -0.268115, 0.502142,
		37.739483, 32.363674, 22.089581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890247, 32.135414, 22.287573>,  <37.163963, 32.551353, 21.738081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890247, 32.135414, 22.287573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263210, 32.235210, 22.392166>,  <37.486988, 32.295086, 22.454922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263210, 32.235210, 22.392166>,  <36.890247, 32.135414, 22.287573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263210, 32.235210, 22.392166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282744, 0.052915, 0.957734,
		0.225104, -0.966932, 0.119879,
		0.932407, 0.249485, 0.261483,
		37.542931, 32.310055, 22.470612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013107, 31.897850, 22.949083>,  <36.890247, 32.135414, 22.287573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013107, 31.897850, 22.949083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316250, 32.157173, 22.919830>,  <37.498135, 32.312767, 22.902279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316250, 32.157173, 22.919830>,  <37.013107, 31.897850, 22.949083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316250, 32.157173, 22.919830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237972, 0.379057, 0.894251,
		0.607473, -0.660310, 0.441550,
		0.757856, 0.648310, -0.073131,
		37.543606, 32.351665, 22.897892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475651, 31.827166, 23.558128>,  <37.013107, 31.897850, 22.949083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475651, 31.827166, 23.558128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487682, 32.211338, 23.447371>,  <37.494900, 32.441841, 23.380915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487682, 32.211338, 23.447371>,  <37.475651, 31.827166, 23.558128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487682, 32.211338, 23.447371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317932, 0.271828, 0.908311,
		0.947636, 0.060713, 0.313528,
		0.030079, 0.960429, -0.276896,
		37.496708, 32.499466, 23.364302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864689, 32.205109, 24.016350>,  <37.475651, 31.827166, 23.558128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864689, 32.205109, 24.016350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621655, 32.477676, 23.853128>,  <37.475834, 32.641216, 23.755196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621655, 32.477676, 23.853128>,  <37.864689, 32.205109, 24.016350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621655, 32.477676, 23.853128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316691, 0.263306, 0.911250,
		0.728389, 0.682886, 0.055821,
		-0.607582, 0.681422, -0.408053,
		37.439381, 32.682102, 23.730713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012054, 32.954628, 24.344044>,  <37.864689, 32.205109, 24.016350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012054, 32.954628, 24.344044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657284, 32.989799, 24.162663>,  <37.444420, 33.010902, 24.053833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657284, 32.989799, 24.162663>,  <38.012054, 32.954628, 24.344044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657284, 32.989799, 24.162663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418346, 0.263237, 0.869306,
		0.195805, 0.960716, -0.196687,
		-0.886931, 0.087931, -0.453455,
		37.391205, 33.016178, 24.026627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707874, 33.655815, 24.456524>,  <38.012054, 32.954628, 24.344044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707874, 33.655815, 24.456524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391392, 33.444744, 24.332880>,  <37.201504, 33.318100, 24.258694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391392, 33.444744, 24.332880>,  <37.707874, 33.655815, 24.456524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391392, 33.444744, 24.332880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525638, 0.328448, 0.784746,
		-0.312571, 0.783373, -0.537240,
		-0.791204, -0.527682, -0.309108,
		37.154030, 33.286438, 24.240149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154980, 34.120731, 24.494513>,  <37.707874, 33.655815, 24.456524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154980, 34.120731, 24.494513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012249, 33.747173, 24.503544>,  <36.926609, 33.523037, 24.508963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012249, 33.747173, 24.503544>,  <37.154980, 34.120731, 24.494513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012249, 33.747173, 24.503544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559038, 0.232841, 0.795777,
		-0.748430, 0.271336, -0.605168,
		-0.356831, -0.933896, 0.022579,
		36.905201, 33.467003, 24.510317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508945, 34.238220, 24.533857>,  <37.154980, 34.120731, 24.494513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508945, 34.238220, 24.533857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542259, 33.865082, 24.674067>,  <36.562248, 33.641201, 24.758192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542259, 33.865082, 24.674067>,  <36.508945, 34.238220, 24.533857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542259, 33.865082, 24.674067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520641, 0.259189, 0.813483,
		-0.849704, -0.250250, -0.464089,
		0.083287, -0.932843, 0.350524,
		36.567245, 33.585228, 24.779224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865467, 34.046131, 24.712414>,  <36.508945, 34.238220, 24.533857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865467, 34.046131, 24.712414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103828, 33.798275, 24.916746>,  <36.246845, 33.649563, 25.039345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103828, 33.798275, 24.916746>,  <35.865467, 34.046131, 24.712414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103828, 33.798275, 24.916746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498219, 0.213625, 0.840323,
		-0.629822, -0.755257, -0.181415,
		0.595905, -0.619638, 0.510829,
		36.282600, 33.612385, 25.069994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496861, 33.629021, 25.211742>,  <35.865467, 34.046131, 24.712414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496861, 33.629021, 25.211742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866615, 33.584129, 25.357567>,  <36.088470, 33.557194, 25.445061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866615, 33.584129, 25.357567>,  <35.496861, 33.629021, 25.211742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866615, 33.584129, 25.357567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355875, 0.090290, 0.930162,
		-0.137308, -0.989572, 0.043523,
		0.924391, -0.112230, 0.364561,
		36.143932, 33.550461, 25.466936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438648, 33.193493, 25.708368>,  <35.496861, 33.629021, 25.211742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438648, 33.193493, 25.708368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780369, 33.363041, 25.828703>,  <35.985401, 33.464771, 25.900904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780369, 33.363041, 25.828703>,  <35.438648, 33.193493, 25.708368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780369, 33.363041, 25.828703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385651, 0.128856, 0.913602,
		0.348488, -0.896508, 0.273549,
		0.854300, 0.423874, 0.300834,
		36.036659, 33.490204, 25.918953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572075, 32.936977, 26.349665>,  <35.438648, 33.193493, 25.708368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572075, 32.936977, 26.349665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815414, 33.254086, 26.334549>,  <35.961418, 33.444351, 26.325480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815414, 33.254086, 26.334549>,  <35.572075, 32.936977, 26.349665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815414, 33.254086, 26.334549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230939, 0.222365, 0.947218,
		0.759332, -0.567508, 0.318356,
		0.608344, 0.792773, -0.037789,
		35.997917, 33.491917, 26.323212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995178, 32.911610, 27.020544>,  <35.572075, 32.936977, 26.349665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995178, 32.911610, 27.020544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023964, 33.284710, 26.879232>,  <36.041233, 33.508568, 26.794445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023964, 33.284710, 26.879232>,  <35.995178, 32.911610, 27.020544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023964, 33.284710, 26.879232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035729, 0.356379, 0.933658,
		0.996767, -0.054566, 0.058972,
		0.071962, 0.932747, -0.353278,
		36.045551, 33.564533, 26.773249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516014, 33.230171, 27.380663>,  <35.995178, 32.911610, 27.020544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516014, 33.230171, 27.380663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282280, 33.524288, 27.243324>,  <36.142040, 33.700760, 27.160921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282280, 33.524288, 27.243324>,  <36.516014, 33.230171, 27.380663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282280, 33.524288, 27.243324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109419, 0.347844, 0.931145,
		0.804099, 0.581673, -0.122804,
		-0.584339, 0.735296, -0.343347,
		36.106979, 33.744877, 27.140320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593624, 33.755337, 27.816216>,  <36.516014, 33.230171, 27.380663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593624, 33.755337, 27.816216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249146, 33.871834, 27.649593>,  <36.042458, 33.941734, 27.549620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249146, 33.871834, 27.649593>,  <36.593624, 33.755337, 27.816216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249146, 33.871834, 27.649593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281968, 0.408122, 0.868292,
		0.422891, 0.865224, -0.269351,
		-0.861195, 0.291244, -0.416557,
		35.990788, 33.959206, 27.524626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517654, 34.441547, 27.848591>,  <36.593624, 33.755337, 27.816216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517654, 34.441547, 27.848591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138374, 34.317257, 27.822142>,  <35.910809, 34.242683, 27.806273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138374, 34.317257, 27.822142>,  <36.517654, 34.441547, 27.848591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138374, 34.317257, 27.822142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154986, 0.270769, 0.950086,
		-0.277312, 0.911117, -0.304901,
		-0.948197, -0.310725, -0.066123,
		35.853916, 34.224041, 27.802305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076553, 34.891308, 28.279007>,  <36.517654, 34.441547, 27.848591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076553, 34.891308, 28.279007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828709, 34.584766, 28.211136>,  <35.680004, 34.400841, 28.170414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828709, 34.584766, 28.211136>,  <36.076553, 34.891308, 28.279007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828709, 34.584766, 28.211136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449920, 0.169637, 0.876810,
		-0.643161, 0.619621, -0.449905,
		-0.619610, -0.766351, -0.169676,
		35.642826, 34.354862, 28.160233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424976, 35.092628, 28.465256>,  <36.076553, 34.891308, 28.279007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424976, 35.092628, 28.465256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432510, 34.693630, 28.492544>,  <35.437031, 34.454231, 28.508917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432510, 34.693630, 28.492544>,  <35.424976, 35.092628, 28.465256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432510, 34.693630, 28.492544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336201, 0.057942, 0.940006,
		-0.941602, -0.040639, -0.334267,
		0.018833, -0.997492, 0.068221,
		35.438160, 34.394382, 28.513010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784851, 34.883507, 28.734171>,  <35.424976, 35.092628, 28.465256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784851, 34.883507, 28.734171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033321, 34.584183, 28.827269>,  <35.182404, 34.404587, 28.883127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033321, 34.584183, 28.827269>,  <34.784851, 34.883507, 28.734171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033321, 34.584183, 28.827269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399273, -0.046651, 0.915645,
		-0.674331, -0.661704, -0.327760,
		0.621176, -0.748313, 0.232742,
		35.219673, 34.359688, 28.897091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381992, 34.377182, 28.994093>,  <34.784851, 34.883507, 28.734171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381992, 34.377182, 28.994093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751385, 34.293922, 29.123003>,  <34.973019, 34.243965, 29.200350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751385, 34.293922, 29.123003>,  <34.381992, 34.377182, 28.994093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751385, 34.293922, 29.123003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370852, -0.269133, 0.888840,
		-0.098276, -0.940341, -0.325731,
		0.923477, -0.208150, 0.322278,
		35.028427, 34.231476, 29.219687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249622, 33.853989, 29.485615>,  <34.381992, 34.377182, 28.994093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249622, 33.853989, 29.485615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622631, 33.974049, 29.565926>,  <34.846436, 34.046085, 29.614113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622631, 33.974049, 29.565926>,  <34.249622, 33.853989, 29.485615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622631, 33.974049, 29.565926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195997, -0.046285, 0.979512,
		0.303289, -0.952770, 0.015666,
		0.932524, 0.300146, 0.200778,
		34.902390, 34.064091, 29.626160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386982, 33.454983, 29.993362>,  <34.249622, 33.853989, 29.485615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386982, 33.454983, 29.993362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692188, 33.711128, 30.028538>,  <34.875313, 33.864815, 30.049643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692188, 33.711128, 30.028538>,  <34.386982, 33.454983, 29.993362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692188, 33.711128, 30.028538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025816, -0.105749, 0.994058,
		0.645860, -0.760755, -0.064157,
		0.763019, 0.640366, 0.087939,
		34.921093, 33.903236, 30.054920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897202, 33.095013, 30.385746>,  <34.386982, 33.454983, 29.993362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897202, 33.095013, 30.385746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961243, 33.487919, 30.424757>,  <34.999668, 33.723663, 30.448164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961243, 33.487919, 30.424757>,  <34.897202, 33.095013, 30.385746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961243, 33.487919, 30.424757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058905, -0.108136, 0.992389,
		0.985341, -0.153143, -0.075174,
		0.160106, 0.982270, 0.097529,
		35.009274, 33.782600, 30.454016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240734, 33.118111, 30.990124>,  <34.897202, 33.095013, 30.385746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240734, 33.118111, 30.990124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106384, 33.492504, 30.947943>,  <35.025776, 33.717140, 30.922634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106384, 33.492504, 30.947943>,  <35.240734, 33.118111, 30.990124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106384, 33.492504, 30.947943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192772, 0.041279, 0.980375,
		0.921969, 0.349611, 0.166567,
		-0.335874, 0.935985, -0.105453,
		35.005623, 33.773300, 30.916307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540394, 33.517384, 31.461222>,  <35.240734, 33.118111, 30.990124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540394, 33.517384, 31.461222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207981, 33.715981, 31.360920>,  <35.008533, 33.835140, 31.300739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207981, 33.715981, 31.360920>,  <35.540394, 33.517384, 31.461222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207981, 33.715981, 31.360920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250632, 0.068208, 0.965677,
		0.496559, 0.865354, 0.067755,
		-0.831031, 0.496497, -0.250755,
		34.958672, 33.864929, 31.285694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273952, 33.589359, 31.287830>,  <35.540394, 33.517384, 31.461222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273952, 33.589359, 31.287830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597881, 33.682816, 31.503086>,  <36.792240, 33.738888, 31.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597881, 33.682816, 31.503086>,  <36.273952, 33.589359, 31.287830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597881, 33.682816, 31.503086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277401, 0.655761, -0.702158,
		-0.516942, 0.717907, 0.466241,
		0.809827, 0.233640, 0.538139,
		36.840828, 33.752907, 31.664528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302914, 34.410297, 31.202618>,  <36.273952, 33.589359, 31.287830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302914, 34.410297, 31.202618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634029, 34.197788, 31.274746>,  <36.832699, 34.070282, 31.318022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634029, 34.197788, 31.274746>,  <36.302914, 34.410297, 31.202618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634029, 34.197788, 31.274746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456600, 0.451187, -0.766777,
		0.326011, 0.717063, 0.616067,
		0.827788, -0.531273, 0.180319,
		36.882366, 34.038406, 31.328842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866814, 34.802673, 30.831757>,  <36.302914, 34.410297, 31.202618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866814, 34.802673, 30.831757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067944, 34.463505, 30.898924>,  <37.188622, 34.260002, 30.939224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067944, 34.463505, 30.898924>,  <36.866814, 34.802673, 30.831757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067944, 34.463505, 30.898924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665156, 0.255497, -0.701633,
		0.552026, 0.464492, 0.692469,
		0.502827, -0.847920, 0.167919,
		37.218792, 34.209129, 30.949299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578831, 34.948338, 30.772346>,  <36.866814, 34.802673, 30.831757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578831, 34.948338, 30.772346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596317, 34.549248, 30.751833>,  <37.606812, 34.309792, 30.739525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596317, 34.549248, 30.751833>,  <37.578831, 34.948338, 30.772346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596317, 34.549248, 30.751833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703684, 0.067191, -0.707329,
		0.709167, -0.005163, 0.705022,
		0.043719, -0.997727, -0.051283,
		37.609432, 34.249931, 30.736448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280392, 34.705189, 30.785782>,  <37.578831, 34.948338, 30.772346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280392, 34.705189, 30.785782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064449, 34.424046, 30.600504>,  <37.934883, 34.255360, 30.489336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064449, 34.424046, 30.600504>,  <38.280392, 34.705189, 30.785782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064449, 34.424046, 30.600504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607969, 0.055007, -0.792053,
		0.582178, -0.709203, 0.397618,
		-0.539854, -0.702856, -0.463197,
		37.902493, 34.213188, 30.461544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772049, 34.261700, 30.520916>,  <38.280392, 34.705189, 30.785782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772049, 34.261700, 30.520916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446320, 34.171684, 30.306913>,  <38.250881, 34.117676, 30.178513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446320, 34.171684, 30.306913>,  <38.772049, 34.261700, 30.520916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446320, 34.171684, 30.306913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559986, -0.062270, -0.826159,
		0.152601, -0.972359, 0.176725,
		-0.814328, -0.225036, -0.535005,
		38.202023, 34.104176, 30.146412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849342, 33.562019, 30.094772>,  <38.772049, 34.261700, 30.520916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849342, 33.562019, 30.094772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580734, 33.805515, 29.925779>,  <38.419571, 33.951614, 29.824385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580734, 33.805515, 29.925779>,  <38.849342, 33.562019, 30.094772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580734, 33.805515, 29.925779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468470, -0.092969, -0.878574,
		-0.574104, -0.787901, -0.222748,
		-0.671521, 0.608744, -0.422482,
		38.379276, 33.988140, 29.799034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997547, 33.397358, 29.394485>,  <38.849342, 33.562019, 30.094772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997547, 33.397358, 29.394485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709717, 33.670383, 29.343393>,  <38.537018, 33.834198, 29.312738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709717, 33.670383, 29.343393>,  <38.997547, 33.397358, 29.394485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709717, 33.670383, 29.343393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272512, 0.108382, -0.956028,
		-0.638709, -0.722742, -0.263996,
		-0.719575, 0.682566, -0.127732,
		38.493843, 33.875153, 29.305075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611992, 33.174904, 28.787264>,  <38.997547, 33.397358, 29.394485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611992, 33.174904, 28.787264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601749, 33.567101, 28.865215>,  <38.595604, 33.802418, 28.911987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601749, 33.567101, 28.865215>,  <38.611992, 33.174904, 28.787264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601749, 33.567101, 28.865215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219088, 0.195709, -0.955876,
		-0.975369, 0.018219, -0.219826,
		-0.025607, 0.980493, 0.194880,
		38.594067, 33.861248, 28.923679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016724, 33.523708, 28.429428>,  <38.611992, 33.174904, 28.787264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016724, 33.523708, 28.429428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323757, 33.765110, 28.515764>,  <38.507977, 33.909950, 28.567566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323757, 33.765110, 28.515764>,  <38.016724, 33.523708, 28.429428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323757, 33.765110, 28.515764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150710, 0.157367, -0.975972,
		-0.622974, 0.781673, 0.029838,
		0.767587, 0.603508, 0.215841,
		38.554035, 33.946163, 28.580517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040630, 34.064720, 27.923464>,  <38.016724, 33.523708, 28.429428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040630, 34.064720, 27.923464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412624, 34.110386, 28.063236>,  <38.635818, 34.137783, 28.147100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412624, 34.110386, 28.063236>,  <38.040630, 34.064720, 27.923464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412624, 34.110386, 28.063236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352703, -0.009161, -0.935691,
		-0.103617, 0.993420, -0.048784,
		0.929981, 0.114160, 0.349433,
		38.691620, 34.144634, 28.168066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366035, 34.529510, 27.419474>,  <38.040630, 34.064720, 27.923464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366035, 34.529510, 27.419474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686211, 34.382671, 27.609013>,  <38.878315, 34.294567, 27.722736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686211, 34.382671, 27.609013>,  <38.366035, 34.529510, 27.419474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686211, 34.382671, 27.609013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509425, 0.000025, -0.860515,
		0.315885, 0.930181, 0.187031,
		0.800439, -0.367102, 0.473849,
		38.926342, 34.272541, 27.751167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087139, 34.959606, 27.219986>,  <38.366035, 34.529510, 27.419474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087139, 34.959606, 27.219986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167831, 34.584560, 27.333256>,  <39.216248, 34.359535, 27.401218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167831, 34.584560, 27.333256>,  <39.087139, 34.959606, 27.219986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167831, 34.584560, 27.333256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642569, -0.091509, -0.760744,
		0.739196, 0.335423, 0.584021,
		0.201728, -0.937612, 0.283176,
		39.228352, 34.303276, 27.418209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848091, 34.792866, 27.144482>,  <39.087139, 34.959606, 27.219986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848091, 34.792866, 27.144482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707237, 34.418488, 27.143354>,  <39.622723, 34.193863, 27.142679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707237, 34.418488, 27.143354>,  <39.848091, 34.792866, 27.144482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707237, 34.418488, 27.143354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539113, -0.200373, -0.818051,
		0.765085, -0.289586, 0.575139,
		-0.352139, -0.935944, -0.002817,
		39.601597, 34.137703, 27.142509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431881, 34.383469, 26.902845>,  <39.848091, 34.792866, 27.144482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431881, 34.383469, 26.902845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109230, 34.148994, 26.872528>,  <39.915642, 34.008308, 26.854338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109230, 34.148994, 26.872528>,  <40.431881, 34.383469, 26.902845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109230, 34.148994, 26.872528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316133, -0.319520, -0.893290,
		0.499416, -0.744510, 0.443045,
		-0.806625, -0.586184, -0.075791,
		39.867241, 33.973141, 26.849791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664295, 33.701824, 26.602619>,  <40.431881, 34.383469, 26.902845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664295, 33.701824, 26.602619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274822, 33.753834, 26.527748>,  <40.041138, 33.785038, 26.482824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274822, 33.753834, 26.527748>,  <40.664295, 33.701824, 26.602619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274822, 33.753834, 26.527748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134323, -0.336095, -0.932200,
		-0.184117, -0.932810, 0.309785,
		-0.973683, 0.130022, -0.187179,
		39.982716, 33.792843, 26.471594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608761, 33.075684, 26.280033>,  <40.664295, 33.701824, 26.602619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608761, 33.075684, 26.280033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285172, 33.293644, 26.191809>,  <40.091019, 33.424419, 26.138874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285172, 33.293644, 26.191809>,  <40.608761, 33.075684, 26.280033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285172, 33.293644, 26.191809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000336, -0.374773, -0.927117,
		-0.587849, -0.750084, 0.302997,
		-0.808971, 0.544903, -0.220562,
		40.042480, 33.457115, 26.125641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121983, 32.677006, 26.042866>,  <40.608761, 33.075684, 26.280033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121983, 32.677006, 26.042866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037613, 33.030682, 25.876150>,  <39.986992, 33.242889, 25.776121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037613, 33.030682, 25.876150>,  <40.121983, 32.677006, 26.042866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037613, 33.030682, 25.876150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080298, -0.440614, -0.894098,
		-0.974199, -0.155119, 0.163935,
		-0.210924, 0.884193, -0.416791,
		39.974335, 33.295940, 25.751114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645252, 32.467907, 25.701990>,  <40.121983, 32.677006, 26.042866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645252, 32.467907, 25.701990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750839, 32.812443, 25.528360>,  <39.814190, 33.019165, 25.424183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750839, 32.812443, 25.528360>,  <39.645252, 32.467907, 25.701990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750839, 32.812443, 25.528360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139744, -0.411137, -0.900798,
		-0.954355, 0.298438, 0.011842,
		0.263964, 0.861337, -0.434076,
		39.830029, 33.070843, 25.398138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070877, 32.772713, 25.141087>,  <39.645252, 32.467907, 25.701990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070877, 32.772713, 25.141087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440437, 32.899719, 25.055674>,  <39.662174, 32.975925, 25.004425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440437, 32.899719, 25.055674>,  <39.070877, 32.772713, 25.141087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440437, 32.899719, 25.055674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015191, -0.527175, -0.849621,
		-0.382341, 0.788205, -0.482232,
		0.923896, 0.317519, -0.213535,
		39.717606, 32.994976, 24.991613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950985, 32.796425, 24.412924>,  <39.070877, 32.772713, 25.141087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950985, 32.796425, 24.412924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349968, 32.813255, 24.435949>,  <39.589355, 32.823353, 24.449764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349968, 32.813255, 24.435949>,  <38.950985, 32.796425, 24.412924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349968, 32.813255, 24.435949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069755, -0.408631, -0.910030,
		-0.014772, 0.911729, -0.410526,
		0.997455, 0.042080, 0.057562,
		39.649204, 32.825878, 24.453218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180809, 32.942516, 23.803072>,  <38.950985, 32.796425, 24.412924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180809, 32.942516, 23.803072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508404, 32.786312, 23.971241>,  <39.704960, 32.692589, 24.072144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508404, 32.786312, 23.971241>,  <39.180809, 32.942516, 23.803072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508404, 32.786312, 23.971241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157429, -0.551657, -0.819080,
		0.551789, 0.737005, -0.390324,
		0.818991, -0.390510, 0.420424,
		39.754101, 32.669159, 24.097368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663227, 32.882523, 23.263870>,  <39.180809, 32.942516, 23.803072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663227, 32.882523, 23.263870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787895, 32.615501, 23.534349>,  <39.862694, 32.455288, 23.696636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787895, 32.615501, 23.534349>,  <39.663227, 32.882523, 23.263870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787895, 32.615501, 23.534349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179190, -0.657582, -0.731763,
		0.933143, 0.349233, -0.085327,
		0.311666, -0.667549, 0.676197,
		39.881393, 32.415237, 23.737209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136024, 32.515766, 22.814064>,  <39.663227, 32.882523, 23.263870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136024, 32.515766, 22.814064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036934, 32.293522, 23.131536>,  <39.977478, 32.160175, 23.322020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036934, 32.293522, 23.131536>,  <40.136024, 32.515766, 22.814064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036934, 32.293522, 23.131536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011696, -0.820872, -0.570993,
		0.968758, -0.132169, 0.209854,
		-0.247731, -0.555608, 0.793680,
		39.962616, 32.126839, 23.369640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706875, 31.993240, 22.809649>,  <40.136024, 32.515766, 22.814064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706875, 31.993240, 22.809649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410175, 31.832167, 23.024183>,  <40.232155, 31.735521, 23.152905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410175, 31.832167, 23.024183>,  <40.706875, 31.993240, 22.809649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410175, 31.832167, 23.024183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105750, -0.859907, -0.499376,
		0.662291, -0.313693, 0.680417,
		-0.741746, -0.402686, 0.536336,
		40.187653, 31.711361, 23.185083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987072, 31.336266, 22.884321>,  <40.706875, 31.993240, 22.809649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987072, 31.336266, 22.884321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599724, 31.333073, 22.984077>,  <40.367313, 31.331158, 23.043932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599724, 31.333073, 22.984077>,  <40.987072, 31.336266, 22.884321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599724, 31.333073, 22.984077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117275, -0.867656, -0.483135,
		0.220243, -0.497100, 0.839276,
		-0.968369, -0.007981, 0.249393,
		40.309212, 31.330679, 23.058895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823689, 30.721100, 23.045622>,  <40.987072, 31.336266, 22.884321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823689, 30.721100, 23.045622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475204, 30.878267, 22.927898>,  <40.266113, 30.972567, 22.857265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475204, 30.878267, 22.927898>,  <40.823689, 30.721100, 23.045622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475204, 30.878267, 22.927898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148066, -0.781893, -0.605573,
		-0.468057, -0.484002, 0.739368,
		-0.871206, 0.392917, -0.294306,
		40.213844, 30.996143, 22.839607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364170, 30.293947, 23.178947>,  <40.823689, 30.721100, 23.045622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364170, 30.293947, 23.178947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228203, 30.504686, 22.867336>,  <40.146622, 30.631130, 22.680370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228203, 30.504686, 22.867336>,  <40.364170, 30.293947, 23.178947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228203, 30.504686, 22.867336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103489, -0.844276, -0.525821,
		-0.934744, -0.098115, 0.341507,
		-0.339918, 0.526850, -0.779028,
		40.126228, 30.662741, 22.633627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978199, 29.754265, 22.887480>,  <40.364170, 30.293947, 23.178947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978199, 29.754265, 22.887480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952358, 30.034374, 22.603102>,  <39.936855, 30.202440, 22.432474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952358, 30.034374, 22.603102>,  <39.978199, 29.754265, 22.887480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952358, 30.034374, 22.603102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287415, -0.695302, -0.658748,
		-0.955625, 0.161782, 0.246185,
		-0.064600, 0.700273, -0.710946,
		39.932980, 30.244455, 22.389818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265682, 29.741869, 22.586937>,  <39.978199, 29.754265, 22.887480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265682, 29.741869, 22.586937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545280, 29.880428, 22.336683>,  <39.713039, 29.963564, 22.186531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545280, 29.880428, 22.336683>,  <39.265682, 29.741869, 22.586937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545280, 29.880428, 22.336683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251693, -0.699715, -0.668618,
		-0.669374, 0.624826, -0.401908,
		0.698991, 0.346398, -0.625635,
		39.754978, 29.984348, 22.148993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892452, 29.822346, 22.008467>,  <39.265682, 29.741869, 22.586937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892452, 29.822346, 22.008467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265316, 29.848991, 21.866123>,  <39.489037, 29.864979, 21.780718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265316, 29.848991, 21.866123>,  <38.892452, 29.822346, 22.008467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265316, 29.848991, 21.866123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235000, -0.636385, -0.734703,
		-0.275406, 0.768490, -0.577560,
		0.932162, 0.066615, -0.355859,
		39.544964, 29.868977, 21.759365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841148, 29.953941, 21.256105>,  <38.892452, 29.822346, 22.008467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841148, 29.953941, 21.256105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217823, 29.827356, 21.301865>,  <39.443829, 29.751406, 21.329319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217823, 29.827356, 21.301865>,  <38.841148, 29.953941, 21.256105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217823, 29.827356, 21.301865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106787, -0.603424, -0.790238,
		0.319109, 0.731937, -0.602028,
		0.941683, -0.316461, 0.114396,
		39.500328, 29.732418, 21.336184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072170, 29.889540, 20.598391>,  <38.841148, 29.953941, 21.256105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072170, 29.889540, 20.598391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322124, 29.653440, 20.802792>,  <39.472095, 29.511780, 20.925432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322124, 29.653440, 20.802792>,  <39.072170, 29.889540, 20.598391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322124, 29.653440, 20.802792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028037, -0.671075, -0.740859,
		0.780212, 0.448625, -0.435894,
		0.624886, -0.590249, 0.511003,
		39.509590, 29.476366, 20.956093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610203, 29.525661, 20.115093>,  <39.072170, 29.889540, 20.598391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610203, 29.525661, 20.115093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618713, 29.296946, 20.443144>,  <39.623821, 29.159716, 20.639975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618713, 29.296946, 20.443144>,  <39.610203, 29.525661, 20.115093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618713, 29.296946, 20.443144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064847, -0.819373, -0.569581,
		0.997668, -0.041062, -0.054515,
		0.021280, -0.571788, 0.820125,
		39.625099, 29.125410, 20.689182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996025, 28.956869, 19.888376>,  <39.610203, 29.525661, 20.115093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996025, 28.956869, 19.888376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806953, 28.817057, 20.211956>,  <39.693512, 28.733170, 20.406105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806953, 28.817057, 20.211956>,  <39.996025, 28.956869, 19.888376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806953, 28.817057, 20.211956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268007, -0.817473, -0.509815,
		0.839492, -0.457783, 0.292725,
		-0.472679, -0.349533, 0.808951,
		39.665150, 28.712196, 20.454641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175453, 28.288195, 19.867167>,  <39.996025, 28.956869, 19.888376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175453, 28.288195, 19.867167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855850, 28.325552, 20.104778>,  <39.664089, 28.347965, 20.247345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855850, 28.325552, 20.104778>,  <40.175453, 28.288195, 19.867167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855850, 28.325552, 20.104778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367618, -0.857625, -0.359634,
		0.475868, -0.505724, 0.719578,
		-0.799004, 0.093392, 0.594030,
		39.616150, 28.353569, 20.282988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094749, 27.688534, 19.958006>,  <40.175453, 28.288195, 19.867167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094749, 27.688534, 19.958006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746597, 27.864132, 20.047205>,  <39.537708, 27.969490, 20.100725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746597, 27.864132, 20.047205>,  <40.094749, 27.688534, 19.958006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746597, 27.864132, 20.047205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492143, -0.761307, -0.422145,
		-0.015549, -0.477172, 0.878672,
		-0.870376, 0.438996, 0.222999,
		39.485485, 27.995831, 20.114105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285839, 26.992723, 20.246103>,  <40.094749, 27.688534, 19.958006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285839, 26.992723, 20.246103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302357, 26.630877, 20.415791>,  <40.312267, 26.413769, 20.517603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302357, 26.630877, 20.415791>,  <40.285839, 26.992723, 20.246103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302357, 26.630877, 20.415791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499683, 0.386367, 0.775266,
		-0.865224, 0.179965, 0.467975,
		0.041290, -0.904618, 0.424219,
		40.314743, 26.359491, 20.543056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940002, 27.060555, 20.908129>,  <40.285839, 26.992723, 20.246103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940002, 27.060555, 20.908129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182674, 26.743896, 20.937098>,  <40.328278, 26.553902, 20.954479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182674, 26.743896, 20.937098>,  <39.940002, 27.060555, 20.908129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182674, 26.743896, 20.937098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338342, 0.339573, 0.877619,
		-0.719353, -0.507927, 0.473857,
		0.606676, -0.791644, 0.072420,
		40.364677, 26.506403, 20.958824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799835, 26.790670, 21.547670>,  <39.940002, 27.060555, 20.908129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799835, 26.790670, 21.547670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170971, 26.676046, 21.452173>,  <40.393654, 26.607271, 21.394875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170971, 26.676046, 21.452173>,  <39.799835, 26.790670, 21.547670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170971, 26.676046, 21.452173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287565, 0.141973, 0.947180,
		-0.237530, -0.947484, 0.214133,
		0.927839, -0.286561, -0.238740,
		40.449322, 26.590078, 21.380550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966732, 26.433031, 22.106821>,  <39.799835, 26.790670, 21.547670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966732, 26.433031, 22.106821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323017, 26.496002, 21.936251>,  <40.536789, 26.533785, 21.833908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323017, 26.496002, 21.936251>,  <39.966732, 26.433031, 22.106821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323017, 26.496002, 21.936251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409388, 0.129869, 0.903070,
		0.197551, -0.978953, 0.051226,
		0.890716, 0.157431, -0.426427,
		40.590233, 26.543230, 21.808323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431427, 26.056679, 22.429647>,  <39.966732, 26.433031, 22.106821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431427, 26.056679, 22.429647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646130, 26.351263, 22.264959>,  <40.774952, 26.528013, 22.166147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646130, 26.351263, 22.264959>,  <40.431427, 26.056679, 22.429647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646130, 26.351263, 22.264959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377656, 0.226652, 0.897778,
		0.754496, -0.637379, -0.156472,
		0.536760, 0.736463, -0.411718,
		40.807159, 26.572203, 22.141443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944775, 26.156591, 22.912014>,  <40.431427, 26.056679, 22.429647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944775, 26.156591, 22.912014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009144, 26.468395, 22.669868>,  <41.047768, 26.655478, 22.524582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009144, 26.468395, 22.669868>,  <40.944775, 26.156591, 22.912014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009144, 26.468395, 22.669868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466527, 0.480431, 0.742656,
		0.869744, -0.401930, -0.286350,
		0.160925, 0.779511, -0.605364,
		41.057423, 26.702250, 22.488258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683224, 26.419636, 23.074350>,  <40.944775, 26.156591, 22.912014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683224, 26.419636, 23.074350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445110, 26.713274, 22.943666>,  <41.302242, 26.889458, 22.865255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445110, 26.713274, 22.943666>,  <41.683224, 26.419636, 23.074350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445110, 26.713274, 22.943666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372861, 0.612543, 0.696969,
		0.711767, 0.293076, -0.638353,
		-0.595284, 0.734096, -0.326711,
		41.266525, 26.933502, 22.845654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998348, 27.001108, 23.350332>,  <41.683224, 26.419636, 23.074350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998348, 27.001108, 23.350332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650013, 27.160460, 23.235134>,  <41.441013, 27.256071, 23.166016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650013, 27.160460, 23.235134>,  <41.998348, 27.001108, 23.350332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650013, 27.160460, 23.235134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040379, 0.641849, 0.765767,
		0.489913, 0.655228, -0.575031,
		-0.870836, 0.398378, -0.287993,
		41.388763, 27.279972, 23.148737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095127, 27.775297, 23.422760>,  <41.998348, 27.001108, 23.350332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095127, 27.775297, 23.422760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704205, 27.691553, 23.435680>,  <41.469650, 27.641308, 23.443432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704205, 27.691553, 23.435680>,  <42.095127, 27.775297, 23.422760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704205, 27.691553, 23.435680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083068, 0.519024, 0.850714,
		-0.194869, 0.828724, -0.524636,
		-0.977305, -0.209358, 0.032302,
		41.411015, 27.628746, 23.445372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809616, 28.395302, 23.451756>,  <42.095127, 27.775297, 23.422760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809616, 28.395302, 23.451756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503578, 28.167332, 23.571634>,  <41.319954, 28.030550, 23.643562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503578, 28.167332, 23.571634>,  <41.809616, 28.395302, 23.451756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503578, 28.167332, 23.571634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224106, 0.672008, 0.705820,
		-0.603663, 0.472855, -0.641872,
		-0.765093, -0.569925, 0.299696,
		41.274052, 27.996355, 23.661543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276386, 28.821754, 23.620827>,  <41.809616, 28.395302, 23.451756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276386, 28.821754, 23.620827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173557, 28.482248, 23.805655>,  <41.111862, 28.278543, 23.916552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173557, 28.482248, 23.805655>,  <41.276386, 28.821754, 23.620827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173557, 28.482248, 23.805655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471040, 0.527546, 0.706977,
		-0.843823, -0.035912, -0.535419,
		-0.257070, -0.848767, 0.462071,
		41.096436, 28.227617, 23.944277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567192, 28.818544, 23.685284>,  <41.276386, 28.821754, 23.620827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567192, 28.818544, 23.685284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729980, 28.596092, 23.975138>,  <40.827652, 28.462622, 24.149050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729980, 28.596092, 23.975138>,  <40.567192, 28.818544, 23.685284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729980, 28.596092, 23.975138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348201, 0.638950, 0.685929,
		-0.844471, -0.531471, 0.066389,
		0.406971, -0.556131, 0.724633,
		40.852070, 28.429253, 24.192528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070660, 28.624372, 24.127394>,  <40.567192, 28.818544, 23.685284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070660, 28.624372, 24.127394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414440, 28.593124, 24.329477>,  <40.620708, 28.574375, 24.450727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414440, 28.593124, 24.329477>,  <40.070660, 28.624372, 24.127394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414440, 28.593124, 24.329477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336012, 0.658467, 0.673437,
		-0.385270, -0.748544, 0.539674,
		0.859455, -0.078118, 0.505207,
		40.672276, 28.569689, 24.481039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025444, 29.071373, 24.644577>,  <40.070660, 28.624372, 24.127394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025444, 29.071373, 24.644577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410172, 28.973829, 24.694277>,  <40.641006, 28.915302, 24.724096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410172, 28.973829, 24.694277>,  <40.025444, 29.071373, 24.644577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410172, 28.973829, 24.694277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106914, 0.752684, 0.649643,
		-0.251942, -0.611554, 0.750018,
		0.961818, -0.243859, 0.124249,
		40.698715, 28.900671, 24.731552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052143, 29.080494, 25.299616>,  <40.025444, 29.071373, 24.644577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052143, 29.080494, 25.299616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432457, 29.118050, 25.181507>,  <40.660645, 29.140583, 25.110641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432457, 29.118050, 25.181507>,  <40.052143, 29.080494, 25.299616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432457, 29.118050, 25.181507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130920, 0.741992, 0.657501,
		0.280819, -0.663802, 0.693187,
		0.950790, 0.093887, -0.295271,
		40.717693, 29.146215, 25.092926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426952, 29.103254, 25.856356>,  <40.052143, 29.080494, 25.299616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426952, 29.103254, 25.856356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644722, 29.284698, 25.574127>,  <40.775383, 29.393566, 25.404789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644722, 29.284698, 25.574127>,  <40.426952, 29.103254, 25.856356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644722, 29.284698, 25.574127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209243, 0.741128, 0.637924,
		0.812291, -0.494939, 0.308575,
		0.544428, 0.453612, -0.705574,
		40.808052, 29.420782, 25.362455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092384, 29.343433, 26.198696>,  <40.426952, 29.103254, 25.856356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092384, 29.343433, 26.198696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007423, 29.540949, 25.861399>,  <40.956448, 29.659458, 25.659021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007423, 29.540949, 25.861399>,  <41.092384, 29.343433, 26.198696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007423, 29.540949, 25.861399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140309, 0.869402, 0.473766,
		0.967056, -0.017684, -0.253947,
		-0.212404, 0.493790, -0.843242,
		40.943703, 29.689085, 25.608427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506821, 29.807680, 26.032064>,  <41.092384, 29.343433, 26.198696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506821, 29.807680, 26.032064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206730, 29.968805, 25.822340>,  <41.026676, 30.065479, 25.696505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206730, 29.968805, 25.822340>,  <41.506821, 29.807680, 26.032064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206730, 29.968805, 25.822340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077718, 0.841221, 0.535076,
		0.656598, 0.360679, -0.662412,
		-0.750226, 0.402812, -0.524313,
		40.981663, 30.089649, 25.665047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741692, 30.442453, 26.038452>,  <41.506821, 29.807680, 26.032064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741692, 30.442453, 26.038452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352558, 30.463657, 25.948317>,  <41.119076, 30.476379, 25.894236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352558, 30.463657, 25.948317>,  <41.741692, 30.442453, 26.038452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352558, 30.463657, 25.948317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099732, 0.782480, 0.614637,
		0.208908, 0.620415, -0.755939,
		-0.972837, 0.053012, -0.225341,
		41.060707, 30.479561, 25.880714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595695, 31.161251, 25.705431>,  <41.741692, 30.442453, 26.038452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595695, 31.161251, 25.705431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264126, 30.986521, 25.845184>,  <41.065186, 30.881683, 25.929035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264126, 30.986521, 25.845184>,  <41.595695, 31.161251, 25.705431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264126, 30.986521, 25.845184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220237, 0.829035, 0.514001,
		-0.514179, 0.349121, -0.783412,
		-0.828925, -0.436825, 0.349383,
		41.015450, 30.855473, 25.949999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180580, 31.675138, 25.904068>,  <41.595695, 31.161251, 25.705431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180580, 31.675138, 25.904068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980373, 31.370625, 26.068956>,  <40.860249, 31.187916, 26.167891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980373, 31.370625, 26.068956>,  <41.180580, 31.675138, 25.904068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980373, 31.370625, 26.068956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228648, 0.575495, 0.785191,
		-0.834987, 0.298748, -0.462111,
		-0.500517, -0.761285, 0.412223,
		40.830219, 31.142239, 26.192623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455204, 31.887730, 26.033855>,  <41.180580, 31.675138, 25.904068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455204, 31.887730, 26.033855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577991, 31.603622, 26.287245>,  <40.651665, 31.433157, 26.439280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577991, 31.603622, 26.287245>,  <40.455204, 31.887730, 26.033855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577991, 31.603622, 26.287245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333270, 0.543244, 0.770595,
		-0.891461, -0.447664, -0.069955,
		0.306965, -0.710269, 0.633474,
		40.670082, 31.390541, 26.477287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039982, 32.049118, 26.593533>,  <40.455204, 31.887730, 26.033855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039982, 32.049118, 26.593533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274712, 31.768669, 26.755556>,  <40.415550, 31.600401, 26.852770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274712, 31.768669, 26.755556>,  <40.039982, 32.049118, 26.593533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274712, 31.768669, 26.755556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133173, 0.409867, 0.902371,
		-0.798690, -0.583473, 0.147148,
		0.586821, -0.701119, 0.405060,
		40.450760, 31.558334, 26.877073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618271, 31.703455, 27.027254>,  <40.039982, 32.049118, 26.593533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618271, 31.703455, 27.027254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993374, 31.657475, 27.158337>,  <40.218437, 31.629887, 27.236986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993374, 31.657475, 27.158337>,  <39.618271, 31.703455, 27.027254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993374, 31.657475, 27.158337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292319, 0.248196, 0.923552,
		-0.187501, -0.961865, 0.199145,
		0.937760, -0.114953, 0.327709,
		40.274700, 31.622990, 27.256649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466949, 31.543928, 27.794870>,  <39.618271, 31.703455, 27.027254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466949, 31.543928, 27.794870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853306, 31.627298, 27.733408>,  <40.085121, 31.677320, 27.696531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853306, 31.627298, 27.733408>,  <39.466949, 31.543928, 27.794870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853306, 31.627298, 27.733408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086129, 0.301016, 0.949721,
		0.244194, -0.930564, 0.272799,
		0.965894, 0.208420, -0.153655,
		40.143074, 31.689825, 27.687311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738789, 31.315596, 28.417849>,  <39.466949, 31.543928, 27.794870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738789, 31.315596, 28.417849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011086, 31.573666, 28.279091>,  <40.174465, 31.728508, 28.195837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011086, 31.573666, 28.279091>,  <39.738789, 31.315596, 28.417849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011086, 31.573666, 28.279091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184698, 0.307083, 0.933588,
		0.708853, -0.699606, 0.089883,
		0.680746, 0.645175, -0.346893,
		40.215309, 31.767218, 28.175024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469154, 31.127485, 28.741665>,  <39.738789, 31.315596, 28.417849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469154, 31.127485, 28.741665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444782, 31.512787, 28.637032>,  <40.430161, 31.743969, 28.574251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444782, 31.512787, 28.637032>,  <40.469154, 31.127485, 28.741665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444782, 31.512787, 28.637032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267449, 0.268243, 0.925482,
		0.961644, -0.013574, -0.273964,
		-0.060926, 0.963255, -0.261585,
		40.426506, 31.801764, 28.558556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924500, 31.358587, 29.138504>,  <40.469154, 31.127485, 28.741665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924500, 31.358587, 29.138504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734299, 31.696135, 29.039078>,  <40.620178, 31.898663, 28.979422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734299, 31.696135, 29.039078>,  <40.924500, 31.358587, 29.138504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734299, 31.696135, 29.039078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019031, 0.292356, 0.956120,
		0.879509, 0.449906, -0.155075,
		-0.475502, 0.843868, -0.248567,
		40.591648, 31.949295, 28.964508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297745, 31.970089, 29.451986>,  <40.924500, 31.358587, 29.138504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297745, 31.970089, 29.451986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922153, 32.082718, 29.372946>,  <40.696800, 32.150295, 29.325521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922153, 32.082718, 29.372946>,  <41.297745, 31.970089, 29.451986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922153, 32.082718, 29.372946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077079, 0.387606, 0.918597,
		0.335242, 0.877769, -0.342249,
		-0.938974, 0.281572, -0.197600,
		40.640461, 32.167191, 29.313665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292252, 32.619335, 29.578245>,  <41.297745, 31.970089, 29.451986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292252, 32.619335, 29.578245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905689, 32.517277, 29.590612>,  <40.673752, 32.456043, 29.598034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905689, 32.517277, 29.590612>,  <41.292252, 32.619335, 29.578245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905689, 32.517277, 29.590612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082910, 0.423368, 0.902156,
		-0.243269, 0.869288, -0.430300,
		-0.966409, -0.255143, 0.030919,
		40.615768, 32.440735, 29.599888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923309, 33.235336, 29.666008>,  <41.292252, 32.619335, 29.578245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923309, 33.235336, 29.666008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696484, 32.938534, 29.809040>,  <40.560390, 32.760452, 29.894859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696484, 32.938534, 29.809040>,  <40.923309, 33.235336, 29.666008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696484, 32.938534, 29.809040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031109, 0.453113, 0.890910,
		-0.823087, 0.494078, -0.280026,
		-0.567062, -0.742008, 0.357581,
		40.526363, 32.715931, 29.916315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385948, 33.583103, 29.991678>,  <40.923309, 33.235336, 29.666008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385948, 33.583103, 29.991678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386513, 33.206268, 30.125826>,  <40.386852, 32.980167, 30.206314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386513, 33.206268, 30.125826>,  <40.385948, 33.583103, 29.991678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386513, 33.206268, 30.125826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040569, 0.335040, 0.941330,
		-0.999176, -0.014932, -0.037747,
		0.001409, -0.942086, 0.335370,
		40.386936, 32.923641, 30.226437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991310, 33.694542, 30.558718>,  <40.385948, 33.583103, 29.991678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991310, 33.694542, 30.558718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156624, 33.337070, 30.628614>,  <40.255814, 33.122589, 30.670553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156624, 33.337070, 30.628614>,  <39.991310, 33.694542, 30.558718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156624, 33.337070, 30.628614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011815, 0.197144, 0.980303,
		-0.910525, -0.403081, 0.092036,
		0.413285, -0.893678, 0.174742,
		40.280609, 33.068966, 30.681036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655109, 33.469479, 31.210789>,  <39.991310, 33.694542, 30.558718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655109, 33.469479, 31.210789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980091, 33.236580, 31.198767>,  <40.175079, 33.096840, 31.191553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980091, 33.236580, 31.198767>,  <39.655109, 33.469479, 31.210789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980091, 33.236580, 31.198767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178303, 0.199062, 0.963630,
		-0.555086, -0.788267, 0.265545,
		0.812458, -0.582245, -0.030054,
		40.223827, 33.061905, 31.189751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654358, 33.180748, 31.863340>,  <39.655109, 33.469479, 31.210789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654358, 33.180748, 31.863340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028835, 33.086067, 31.759409>,  <40.253521, 33.029259, 31.697050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028835, 33.086067, 31.759409>,  <39.654358, 33.180748, 31.863340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028835, 33.086067, 31.759409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293690, 0.120702, 0.948250,
		-0.193093, -0.964055, 0.182518,
		0.936195, -0.236704, -0.259827,
		40.309692, 33.015057, 31.681461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964466, 32.745953, 32.336487>,  <39.654358, 33.180748, 31.863340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964466, 32.745953, 32.336487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294331, 32.905312, 32.175884>,  <40.492249, 33.000927, 32.079521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294331, 32.905312, 32.175884>,  <39.964466, 32.745953, 32.336487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294331, 32.905312, 32.175884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319732, 0.257222, 0.911926,
		0.466588, -0.880406, 0.084741,
		0.824662, 0.398399, -0.401511,
		40.541729, 33.024830, 32.055431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609406, 32.573383, 32.640263>,  <39.964466, 32.745953, 32.336487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609406, 32.573383, 32.640263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697056, 32.941963, 32.511944>,  <40.749645, 33.163113, 32.434952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697056, 32.941963, 32.511944>,  <40.609406, 32.573383, 32.640263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697056, 32.941963, 32.511944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423011, 0.206563, 0.882266,
		0.879230, -0.329027, -0.344521,
		0.219125, 0.921451, -0.320798,
		40.762794, 33.218399, 32.415703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244644, 32.694077, 32.873188>,  <40.609406, 32.573383, 32.640263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244644, 32.694077, 32.873188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133118, 33.063637, 32.768372>,  <41.066200, 33.285374, 32.705482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133118, 33.063637, 32.768372>,  <41.244644, 32.694077, 32.873188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133118, 33.063637, 32.768372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297326, 0.342503, 0.891229,
		0.913158, 0.170579, -0.370196,
		-0.278818, 0.923902, -0.262042,
		41.049473, 33.340809, 32.689758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829231, 33.299080, 33.040108>,  <41.244644, 32.694077, 32.873188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829231, 33.299080, 33.040108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479942, 33.494003, 33.038925>,  <41.270367, 33.610958, 33.038216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479942, 33.494003, 33.038925>,  <41.829231, 33.299080, 33.040108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479942, 33.494003, 33.038925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235213, 0.426792, 0.873226,
		0.426792, 0.761827, -0.487307,
		-0.873226, 0.487307, -0.002960,
		41.217976, 33.640194, 33.038036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004555, 33.947208, 33.460735>,  <41.829231, 33.299080, 33.040108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004555, 33.947208, 33.460735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606659, 33.950829, 33.419926>,  <41.367920, 33.952999, 33.395439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606659, 33.950829, 33.419926>,  <42.004555, 33.947208, 33.460735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606659, 33.950829, 33.419926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090656, 0.385846, 0.918098,
		0.047674, 0.922519, -0.382996,
		-0.994740, 0.009049, -0.102027,
		41.308235, 33.953545, 33.389317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799149, 34.603790, 33.761734>,  <42.004555, 33.947208, 33.460735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799149, 34.603790, 33.761734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483833, 34.357841, 33.771004>,  <41.294643, 34.210274, 33.776566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483833, 34.357841, 33.771004>,  <41.799149, 34.603790, 33.761734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483833, 34.357841, 33.771004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393183, 0.532326, 0.749691,
		-0.473300, 0.581859, -0.661383,
		-0.788286, -0.614873, 0.023173,
		41.247349, 34.173378, 33.777954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139660, 34.974190, 33.596275>,  <41.799149, 34.603790, 33.761734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139660, 34.974190, 33.596275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084824, 34.655064, 33.831120>,  <41.051922, 34.463589, 33.972027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084824, 34.655064, 33.831120>,  <41.139660, 34.974190, 33.596275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084824, 34.655064, 33.831120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223457, 0.602339, 0.766326,
		-0.965025, -0.026136, -0.260853,
		-0.137093, -0.797812, 0.587112,
		41.043697, 34.415718, 34.007252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526825, 35.018398, 33.847885>,  <41.139660, 34.974190, 33.596275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526825, 35.018398, 33.847885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724281, 34.785271, 34.106075>,  <40.842754, 34.645393, 34.260990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724281, 34.785271, 34.106075>,  <40.526825, 35.018398, 33.847885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724281, 34.785271, 34.106075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190637, 0.651643, 0.734179,
		-0.848514, -0.485473, 0.210571,
		0.493642, -0.582818, 0.645477,
		40.872375, 34.610424, 34.299717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099026, 34.986923, 34.448101>,  <40.526825, 35.018398, 33.847885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099026, 34.986923, 34.448101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452675, 34.872002, 34.595493>,  <40.664864, 34.803047, 34.683929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452675, 34.872002, 34.595493>,  <40.099026, 34.986923, 34.448101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452675, 34.872002, 34.595493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168705, 0.539130, 0.825153,
		-0.435733, -0.791702, 0.428188,
		0.884124, -0.287309, 0.368481,
		40.717911, 34.785809, 34.706039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995392, 34.874866, 35.235737>,  <40.099026, 34.986923, 34.448101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995392, 34.874866, 35.235737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388706, 34.905987, 35.169880>,  <40.624695, 34.924660, 35.130367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388706, 34.905987, 35.169880>,  <39.995392, 34.874866, 35.235737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388706, 34.905987, 35.169880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098881, 0.531104, 0.841517,
		0.152907, -0.843728, 0.514532,
		0.983281, 0.077796, -0.164638,
		40.683689, 34.929325, 35.120487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197422, 34.621532, 35.794273>,  <39.995392, 34.874866, 35.235737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197422, 34.621532, 35.794273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467724, 34.868851, 35.633743>,  <40.629906, 35.017242, 35.537426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467724, 34.868851, 35.633743>,  <40.197422, 34.621532, 35.794273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467724, 34.868851, 35.633743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004925, 0.548221, 0.836319,
		0.737111, -0.563170, 0.373507,
		0.675754, 0.618299, -0.401326,
		40.670448, 35.054340, 35.513344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452244, 34.810143, 36.336182>,  <40.197422, 34.621532, 35.794273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452244, 34.810143, 36.336182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581577, 35.087597, 36.078709>,  <40.659176, 35.254070, 35.924225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581577, 35.087597, 36.078709>,  <40.452244, 34.810143, 36.336182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581577, 35.087597, 36.078709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111811, 0.703459, 0.701886,
		0.939657, -0.154972, 0.305007,
		0.323332, 0.693635, -0.643682,
		40.678577, 35.295689, 35.885605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117928, 35.196381, 36.534306>,  <40.452244, 34.810143, 36.336182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117928, 35.196381, 36.534306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877079, 35.422844, 36.309128>,  <40.732571, 35.558723, 36.174019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877079, 35.422844, 36.309128>,  <41.117928, 35.196381, 36.534306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877079, 35.422844, 36.309128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104727, 0.642993, 0.758678,
		0.791507, 0.515771, -0.327867,
		-0.602120, 0.566163, -0.562949,
		40.696442, 35.592693, 36.140244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197548, 35.771015, 36.883701>,  <41.117928, 35.196381, 36.534306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197548, 35.771015, 36.883701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884201, 35.864170, 36.653187>,  <40.696194, 35.920063, 36.514877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884201, 35.864170, 36.653187>,  <41.197548, 35.771015, 36.883701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884201, 35.864170, 36.653187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310049, 0.657167, 0.687024,
		0.538713, 0.716866, -0.442595,
		-0.783363, 0.232883, -0.576288,
		40.649193, 35.934036, 36.480301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351349, 36.441792, 36.686802>,  <41.197548, 35.771015, 36.883701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351349, 36.441792, 36.686802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968483, 36.325981, 36.688118>,  <40.738762, 36.256496, 36.688908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968483, 36.325981, 36.688118>,  <41.351349, 36.441792, 36.686802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968483, 36.325981, 36.688118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224275, 0.748532, 0.624020,
		-0.183131, 0.596552, -0.781402,
		-0.957164, -0.289526, 0.003287,
		40.681335, 36.239124, 36.689106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570034, 36.861500, 37.325523>,  <41.351349, 36.441792, 36.686802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570034, 36.861500, 37.325523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525269, 37.251659, 37.249557>,  <41.498409, 37.485756, 37.203979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525269, 37.251659, 37.249557>,  <41.570034, 36.861500, 37.325523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525269, 37.251659, 37.249557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787772, 0.029407, 0.615264,
		0.605714, 0.218468, 0.765103,
		-0.111916, 0.975401, -0.189915,
		41.491695, 37.544281, 37.192581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569042, 37.308857, 38.004326>,  <41.570034, 36.861500, 37.325523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569042, 37.308857, 38.004326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363232, 37.479427, 37.706753>,  <41.239746, 37.581768, 37.528210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363232, 37.479427, 37.706753>,  <41.569042, 37.308857, 38.004326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363232, 37.479427, 37.706753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815549, 0.024610, 0.578164,
		0.264851, 0.904188, 0.335108,
		-0.514522, 0.426425, -0.743928,
		41.208874, 37.607353, 37.483574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876053, 37.393570, 38.134445>,  <41.569042, 37.308857, 38.004326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876053, 37.393570, 38.134445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049648, 37.383297, 38.494667>,  <41.153805, 37.377132, 38.710800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049648, 37.383297, 38.494667>,  <40.876053, 37.393570, 38.134445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049648, 37.383297, 38.494667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871516, 0.241321, 0.426877,
		-0.228288, -0.970105, 0.082342,
		0.433986, -0.025688, 0.900553,
		41.179844, 37.375591, 38.764832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496143, 36.897346, 38.576004>,  <40.876053, 37.393570, 38.134445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496143, 36.897346, 38.576004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665119, 37.182049, 38.800484>,  <40.766506, 37.352871, 38.935173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665119, 37.182049, 38.800484>,  <40.496143, 36.897346, 38.576004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665119, 37.182049, 38.800484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841414, 0.077740, 0.534771,
		0.337000, -0.698110, 0.631723,
		0.422439, 0.711758, 0.561201,
		40.791851, 37.395576, 38.968845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613804, 36.148937, 38.785858>,  <40.496143, 36.897346, 38.576004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613804, 36.148937, 38.785858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305019, 36.401371, 38.816345>,  <40.119747, 36.552830, 38.834637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305019, 36.401371, 38.816345>,  <40.613804, 36.148937, 38.785858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305019, 36.401371, 38.816345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186631, -0.339627, 0.921858,
		0.607654, 0.697415, 0.379959,
		-0.771962, 0.631083, 0.076216,
		40.073429, 36.590694, 38.839211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770229, 36.422821, 39.435364>,  <40.613804, 36.148937, 38.785858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770229, 36.422821, 39.435364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383793, 36.456287, 39.337658>,  <40.151932, 36.476368, 39.279034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383793, 36.456287, 39.337658>,  <40.770229, 36.422821, 39.435364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383793, 36.456287, 39.337658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255966, -0.434334, 0.863618,
		-0.033838, 0.896858, 0.441022,
		-0.966093, 0.083664, -0.244262,
		40.093964, 36.481388, 39.264378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456875, 36.567490, 40.055767>,  <40.770229, 36.422821, 39.435364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456875, 36.567490, 40.055767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169167, 36.432373, 39.812935>,  <39.996540, 36.351303, 39.667236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169167, 36.432373, 39.812935>,  <40.456875, 36.567490, 40.055767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169167, 36.432373, 39.812935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465069, -0.415034, 0.781957,
		-0.516100, 0.844773, 0.141424,
		-0.719272, -0.337796, -0.607077,
		39.953384, 36.331036, 39.630814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861469, 36.717758, 40.382225>,  <40.456875, 36.567490, 40.055767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861469, 36.717758, 40.382225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787834, 36.415890, 40.130325>,  <39.743652, 36.234768, 39.979187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787834, 36.415890, 40.130325>,  <39.861469, 36.717758, 40.382225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787834, 36.415890, 40.130325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341576, -0.551650, 0.760926,
		-0.921649, 0.355186, -0.156224,
		-0.184089, -0.754669, -0.629751,
		39.732609, 36.189487, 39.941399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202694, 36.396889, 40.549911>,  <39.861469, 36.717758, 40.382225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202694, 36.396889, 40.549911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377384, 36.117466, 40.323181>,  <39.482197, 35.949814, 40.187141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377384, 36.117466, 40.323181>,  <39.202694, 36.396889, 40.549911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377384, 36.117466, 40.323181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411290, -0.715430, 0.564801,
		-0.800070, -0.013532, -0.599754,
		0.436725, -0.698553, -0.566828,
		39.508404, 35.907902, 40.153133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703800, 35.860210, 40.331203>,  <39.202694, 36.396889, 40.549911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703800, 35.860210, 40.331203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074089, 35.710194, 40.350735>,  <39.296261, 35.620186, 40.362453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074089, 35.710194, 40.350735>,  <38.703800, 35.860210, 40.331203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074089, 35.710194, 40.350735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346590, -0.789568, 0.506416,
		-0.151374, -0.485723, -0.860906,
		0.925722, -0.375039, 0.048827,
		39.351807, 35.597683, 40.365383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682621, 35.239559, 39.990578>,  <38.703800, 35.860210, 40.331203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682621, 35.239559, 39.990578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976997, 35.246063, 40.261318>,  <39.153625, 35.249966, 40.423763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976997, 35.246063, 40.261318>,  <38.682621, 35.239559, 39.990578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976997, 35.246063, 40.261318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540457, -0.588027, 0.601773,
		0.407790, -0.808678, -0.423967,
		0.735944, 0.016261, 0.676847,
		39.197781, 35.250942, 40.464371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865372, 34.533127, 40.281681>,  <38.682621, 35.239559, 39.990578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865372, 34.533127, 40.281681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987839, 34.785580, 40.566757>,  <39.061317, 34.937050, 40.737804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987839, 34.785580, 40.566757>,  <38.865372, 34.533127, 40.281681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987839, 34.785580, 40.566757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511718, -0.522183, 0.682253,
		0.802749, -0.573583, 0.163086,
		0.306168, 0.631132, 0.712695,
		39.079689, 34.974918, 40.780567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946369, 34.240612, 40.949463>,  <38.865372, 34.533127, 40.281681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946369, 34.240612, 40.949463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833668, 34.611916, 41.046585>,  <38.766045, 34.834698, 41.104858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833668, 34.611916, 41.046585>,  <38.946369, 34.240612, 40.949463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833668, 34.611916, 41.046585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675542, -0.371625, 0.636818,
		0.681363, 0.015402, 0.731783,
		-0.281757, 0.928255, 0.242807,
		38.749142, 34.890392, 41.119427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897942, 34.376099, 41.686638>,  <38.946369, 34.240612, 40.949463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897942, 34.376099, 41.686638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648685, 34.607521, 41.476128>,  <38.499130, 34.746376, 41.349819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648685, 34.607521, 41.476128>,  <38.897942, 34.376099, 41.686638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648685, 34.607521, 41.476128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757484, -0.278917, 0.590273,
		0.194720, 0.766469, 0.612053,
		-0.623139, 0.578558, -0.526278,
		38.461742, 34.781090, 41.318245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579594, 34.673164, 41.681835>,  <38.897942, 34.376099, 41.686638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579594, 34.673164, 41.681835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822681, 34.750340, 41.989979>,  <39.968533, 34.796642, 42.174866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822681, 34.750340, 41.989979>,  <39.579594, 34.673164, 41.681835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822681, 34.750340, 41.989979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740329, -0.488672, -0.461641,
		0.287387, 0.850868, -0.439810,
		0.607718, 0.192935, 0.770360,
		40.004997, 34.808220, 42.221088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123650, 35.152546, 41.439072>,  <39.579594, 34.673164, 41.681835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123650, 35.152546, 41.439072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211468, 34.871807, 41.710133>,  <40.264156, 34.703365, 41.872768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211468, 34.871807, 41.710133>,  <40.123650, 35.152546, 41.439072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211468, 34.871807, 41.710133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677170, -0.390401, -0.623721,
		0.702312, 0.595820, 0.389559,
		0.219541, -0.701844, 0.677655,
		40.277328, 34.661255, 41.913429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396759, 35.080215, 40.729771>,  <40.123650, 35.152546, 41.439072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396759, 35.080215, 40.729771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008434, 35.059361, 40.636131>,  <39.775440, 35.046848, 40.579948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008434, 35.059361, 40.636131>,  <40.396759, 35.080215, 40.729771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008434, 35.059361, 40.636131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179795, 0.487802, -0.854238,
		0.158731, -0.871396, -0.464191,
		-0.970813, -0.052135, -0.234102,
		39.717190, 35.043720, 40.565899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338112, 34.849895, 40.009483>,  <40.396759, 35.080215, 40.729771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338112, 34.849895, 40.009483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016678, 35.066959, 40.107273>,  <39.823818, 35.197197, 40.165947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016678, 35.066959, 40.107273>,  <40.338112, 34.849895, 40.009483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016678, 35.066959, 40.107273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143056, 0.574813, -0.805683,
		-0.577739, -0.612463, -0.539543,
		-0.803587, 0.542659, 0.244476,
		39.775600, 35.229755, 40.180614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002319, 35.011730, 39.417767>,  <40.338112, 34.849895, 40.009483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002319, 35.011730, 39.417767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896935, 35.283894, 39.691299>,  <39.833702, 35.447193, 39.855419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896935, 35.283894, 39.691299>,  <40.002319, 35.011730, 39.417767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896935, 35.283894, 39.691299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318165, 0.607926, -0.727459,
		-0.910690, -0.409234, 0.056314,
		-0.263467, 0.680407, 0.683836,
		39.817894, 35.488014, 39.896450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529812, 35.290363, 39.063572>,  <40.002319, 35.011730, 39.417767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529812, 35.290363, 39.063572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618839, 35.561020, 39.344318>,  <39.672256, 35.723415, 39.512768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618839, 35.561020, 39.344318>,  <39.529812, 35.290363, 39.063572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618839, 35.561020, 39.344318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164232, 0.735658, -0.657142,
		-0.960984, 0.030992, 0.274863,
		0.222572, 0.676644, 0.701865,
		39.685612, 35.764011, 39.554878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086502, 35.841053, 38.909718>,  <39.529812, 35.290363, 39.063572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086502, 35.841053, 38.909718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361362, 35.992100, 39.157986>,  <39.526279, 36.082726, 39.306946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361362, 35.992100, 39.157986>,  <39.086502, 35.841053, 38.909718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361362, 35.992100, 39.157986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090106, 0.803418, -0.588558,
		-0.720905, 0.460354, 0.518045,
		0.687151, 0.377615, 0.620669,
		39.567509, 36.105385, 39.344185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870350, 36.501747, 38.872513>,  <39.086502, 35.841053, 38.909718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870350, 36.501747, 38.872513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245071, 36.528530, 39.009865>,  <39.469906, 36.544601, 39.092274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245071, 36.528530, 39.009865>,  <38.870350, 36.501747, 38.872513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245071, 36.528530, 39.009865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163342, 0.784249, -0.598558,
		-0.309371, 0.616822, 0.723754,
		0.936808, 0.066957, 0.343377,
		39.526115, 36.548618, 39.112877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014130, 37.276123, 39.038334>,  <38.870350, 36.501747, 38.872513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014130, 37.276123, 39.038334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346916, 37.070621, 38.954533>,  <39.546589, 36.947319, 38.904251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346916, 37.070621, 38.954533>,  <39.014130, 37.276123, 39.038334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346916, 37.070621, 38.954533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235182, 0.668543, -0.705507,
		0.502516, 0.537687, 0.677030,
		0.831966, -0.513754, -0.209499,
		39.596504, 36.916496, 38.891682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636311, 37.779232, 38.949669>,  <39.014130, 37.276123, 39.038334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636311, 37.779232, 38.949669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641850, 37.423382, 38.767075>,  <39.645172, 37.209873, 38.657516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641850, 37.423382, 38.767075>,  <39.636311, 37.779232, 38.949669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641850, 37.423382, 38.767075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033440, 0.456690, -0.888997,
		0.999345, -0.002955, 0.036073,
		0.013847, -0.889621, -0.456489,
		39.646004, 37.156494, 38.630127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210674, 37.730099, 38.354607>,  <39.636311, 37.779232, 38.949669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210674, 37.730099, 38.354607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910133, 37.484665, 38.257462>,  <39.729809, 37.337402, 38.199177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910133, 37.484665, 38.257462>,  <40.210674, 37.730099, 38.354607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910133, 37.484665, 38.257462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016662, 0.350268, -0.936501,
		0.659692, -0.707688, -0.252951,
		-0.751351, -0.613587, -0.242860,
		39.684727, 37.300591, 38.184605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280510, 37.280762, 37.753960>,  <40.210674, 37.730099, 38.354607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280510, 37.280762, 37.753960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887074, 37.347946, 37.780304>,  <39.651012, 37.388256, 37.796112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887074, 37.347946, 37.780304>,  <40.280510, 37.280762, 37.753960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887074, 37.347946, 37.780304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049315, 0.100857, -0.993678,
		-0.173545, -0.980620, -0.090919,
		-0.983590, 0.167964, 0.065863,
		39.591995, 37.398335, 37.800064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151432, 36.569801, 37.590496>,  <40.280510, 37.280762, 37.753960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151432, 36.569801, 37.590496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019337, 36.724533, 37.246098>,  <39.940079, 36.817371, 37.039459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019337, 36.724533, 37.246098>,  <40.151432, 36.569801, 37.590496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019337, 36.724533, 37.246098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329885, -0.807345, -0.489254,
		-0.884374, -0.445599, 0.139009,
		-0.330240, 0.386827, -0.860992,
		39.920265, 36.840580, 36.987801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777706, 35.971439, 37.318653>,  <40.151432, 36.569801, 37.590496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777706, 35.971439, 37.318653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885841, 36.238392, 37.041088>,  <39.950722, 36.398563, 36.874550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885841, 36.238392, 37.041088>,  <39.777706, 35.971439, 37.318653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885841, 36.238392, 37.041088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177718, -0.742957, -0.645315,
		-0.946219, 0.051136, -0.319459,
		0.270343, 0.667383, -0.693912,
		39.966946, 36.438606, 36.832912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397587, 36.000645, 36.528545>,  <39.777706, 35.971439, 37.318653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397587, 36.000645, 36.528545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765511, 36.156551, 36.510487>,  <39.986263, 36.250095, 36.499649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765511, 36.156551, 36.510487>,  <39.397587, 36.000645, 36.528545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765511, 36.156551, 36.510487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226340, -0.621063, -0.750367,
		-0.320507, 0.679974, -0.659477,
		0.919807, 0.389764, -0.045149,
		40.041454, 36.273479, 36.496941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650875, 36.341278, 35.764404>,  <39.397587, 36.000645, 36.528545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650875, 36.341278, 35.764404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960861, 36.215630, 35.983772>,  <40.146851, 36.140240, 36.115395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960861, 36.215630, 35.983772>,  <39.650875, 36.341278, 35.764404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960861, 36.215630, 35.983772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320637, -0.552370, -0.769467,
		0.544634, 0.772151, -0.327348,
		0.774962, -0.314118, 0.548419,
		40.193348, 36.121395, 36.148296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349873, 36.520557, 35.355770>,  <39.650875, 36.341278, 35.764404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349873, 36.520557, 35.355770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443676, 36.213314, 35.594101>,  <40.499958, 36.028969, 35.737099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443676, 36.213314, 35.594101>,  <40.349873, 36.520557, 35.355770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443676, 36.213314, 35.594101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532527, -0.411265, -0.739781,
		0.813277, 0.490782, 0.312593,
		0.234512, -0.768110, 0.595827,
		40.514030, 35.982880, 35.772850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874016, 36.269665, 35.095299>,  <40.349873, 36.520557, 35.355770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874016, 36.269665, 35.095299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792950, 35.953751, 35.326874>,  <40.744308, 35.764202, 35.465820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792950, 35.953751, 35.326874>,  <40.874016, 36.269665, 35.095299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792950, 35.953751, 35.326874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477122, -0.595926, -0.645931,
		0.855149, 0.145313, 0.497599,
		-0.202670, -0.789782, 0.578937,
		40.732147, 35.716816, 35.500553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537086, 35.837231, 35.021065>,  <40.874016, 36.269665, 35.095299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537086, 35.837231, 35.021065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242973, 35.603966, 35.159210>,  <41.066505, 35.464008, 35.242096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242973, 35.603966, 35.159210>,  <41.537086, 35.837231, 35.021065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242973, 35.603966, 35.159210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377809, -0.775722, -0.505486,
		0.562686, -0.241196, 0.790702,
		-0.735286, -0.583164, 0.345362,
		41.022388, 35.429016, 35.262817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838001, 35.129143, 35.198406>,  <41.537086, 35.837231, 35.021065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838001, 35.129143, 35.198406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449005, 35.134922, 35.105412>,  <41.215607, 35.138390, 35.049614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449005, 35.134922, 35.105412>,  <41.838001, 35.129143, 35.198406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449005, 35.134922, 35.105412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171324, -0.631870, -0.755902,
		-0.157823, -0.774939, 0.612014,
		-0.972492, 0.014446, -0.232489,
		41.157257, 35.139256, 35.035664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889313, 34.431812, 35.121696>,  <41.838001, 35.129143, 35.198406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889313, 34.431812, 35.121696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509701, 34.494968, 35.012585>,  <41.281933, 34.532860, 34.947117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509701, 34.494968, 35.012585>,  <41.889313, 34.431812, 35.121696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509701, 34.494968, 35.012585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166432, -0.483933, -0.859133,
		-0.267654, -0.860744, 0.432990,
		-0.949032, 0.157887, -0.272782,
		41.224991, 34.542336, 34.930752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542488, 33.827969, 35.103539>,  <41.889313, 34.431812, 35.121696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542488, 33.827969, 35.103539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324268, 34.067513, 34.869022>,  <41.193336, 34.211239, 34.728313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324268, 34.067513, 34.869022>,  <41.542488, 33.827969, 35.103539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324268, 34.067513, 34.869022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152594, -0.616894, -0.772112,
		-0.824068, -0.510692, 0.245165,
		-0.545552, 0.598862, -0.586291,
		41.160603, 34.247169, 34.693134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070316, 33.412449, 34.873497>,  <41.542488, 33.827969, 35.103539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070316, 33.412449, 34.873497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054268, 33.706898, 34.603233>,  <41.044640, 33.883568, 34.441074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054268, 33.706898, 34.603233>,  <41.070316, 33.412449, 34.873497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054268, 33.706898, 34.603233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223882, -0.652385, -0.724065,
		-0.973790, -0.180315, -0.138633,
		-0.040118, 0.736125, -0.675656,
		41.042233, 33.927734, 34.400536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139462, 32.910049, 35.510586>,  <41.070316, 33.412449, 34.873497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139462, 32.910049, 35.510586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048920, 33.299042, 35.488518>,  <40.994595, 33.532436, 35.475277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048920, 33.299042, 35.488518>,  <41.139462, 32.910049, 35.510586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048920, 33.299042, 35.488518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362345, 0.136643, 0.921973,
		0.904140, 0.188705, -0.383304,
		-0.226356, 0.972481, -0.055168,
		40.981014, 33.590786, 35.471966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664398, 33.296909, 35.648853>,  <41.139462, 32.910049, 35.510586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664398, 33.296909, 35.648853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337337, 33.504822, 35.747860>,  <41.141102, 33.629570, 35.807266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337337, 33.504822, 35.747860>,  <41.664398, 33.296909, 35.648853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337337, 33.504822, 35.747860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371022, 0.147013, 0.916913,
		0.440205, 0.841555, -0.313056,
		-0.817656, 0.519781, 0.247520,
		41.092041, 33.660755, 35.822117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776310, 33.903805, 36.035061>,  <41.664398, 33.296909, 35.648853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776310, 33.903805, 36.035061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411804, 33.776211, 36.139248>,  <41.193100, 33.699654, 36.201759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411804, 33.776211, 36.139248>,  <41.776310, 33.903805, 36.035061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411804, 33.776211, 36.139248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150931, 0.329778, 0.931915,
		-0.383166, 0.888534, -0.252370,
		-0.911265, -0.318988, 0.260467,
		41.138424, 33.680515, 36.217388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394333, 34.470657, 36.408726>,  <41.776310, 33.903805, 36.035061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394333, 34.470657, 36.408726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237347, 34.126011, 36.537468>,  <41.143154, 33.919224, 36.614712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237347, 34.126011, 36.537468>,  <41.394333, 34.470657, 36.408726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237347, 34.126011, 36.537468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037651, 0.364686, 0.930369,
		-0.918994, 0.353023, -0.175569,
		-0.392469, -0.861614, 0.321852,
		41.119606, 33.867527, 36.634026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148552, 34.425411, 36.788879>,  <41.394333, 34.470657, 36.408726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148552, 34.425411, 36.788879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354530, 34.310562, 37.111961>,  <42.478115, 34.241653, 37.305813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354530, 34.310562, 37.111961>,  <42.148552, 34.425411, 36.788879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354530, 34.310562, 37.111961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756795, -0.290267, -0.585667,
		0.402610, 0.912856, 0.067823,
		0.514943, -0.287123, 0.807709,
		42.509014, 34.224426, 37.354275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826294, 34.404102, 36.601578>,  <42.148552, 34.425411, 36.788879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826294, 34.404102, 36.601578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805386, 34.123215, 36.885593>,  <42.792839, 33.954681, 37.056004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805386, 34.123215, 36.885593>,  <42.826294, 34.404102, 36.601578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805386, 34.123215, 36.885593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830671, -0.425230, -0.359396,
		0.554304, 0.571024, 0.605539,
		-0.052269, -0.702219, 0.710040,
		42.789703, 33.912548, 37.098606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505272, 34.175121, 36.708191>,  <42.826294, 34.404102, 36.601578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505272, 34.175121, 36.708191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324425, 33.864677, 36.884026>,  <43.215916, 33.678410, 36.989525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324425, 33.864677, 36.884026>,  <43.505272, 34.175121, 36.708191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324425, 33.864677, 36.884026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637802, -0.625826, -0.448943,
		0.623535, 0.077393, 0.777955,
		-0.452120, -0.776114, 0.439586,
		43.188789, 33.631844, 37.015900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911209, 33.842007, 37.187843>,  <43.505272, 34.175121, 36.708191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911209, 33.842007, 37.187843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673084, 33.560375, 37.032986>,  <43.530209, 33.391396, 36.940071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673084, 33.560375, 37.032986>,  <43.911209, 33.842007, 37.187843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673084, 33.560375, 37.032986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802636, -0.543385, -0.245985,
		-0.037176, -0.457173, 0.888601,
		-0.595310, -0.704078, -0.387144,
		43.494492, 33.349152, 36.916843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269550, 33.242481, 37.269535>,  <43.911209, 33.842007, 37.187843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269550, 33.242481, 37.269535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005260, 33.196095, 36.972889>,  <43.846687, 33.168262, 36.794899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005260, 33.196095, 36.972889>,  <44.269550, 33.242481, 37.269535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005260, 33.196095, 36.972889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660847, -0.558426, -0.501439,
		-0.355990, -0.821409, 0.445600,
		-0.660721, -0.115966, -0.741619,
		43.807045, 33.161304, 36.750404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259628, 32.519447, 37.156097>,  <44.269550, 33.242481, 37.269535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259628, 32.519447, 37.156097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166271, 32.737869, 36.834263>,  <44.110256, 32.868923, 36.641163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166271, 32.737869, 36.834263>,  <44.259628, 32.519447, 37.156097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166271, 32.737869, 36.834263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685014, -0.494930, -0.534603,
		-0.690133, -0.675924, -0.258540,
		-0.233391, 0.546051, -0.804585,
		44.096252, 32.901684, 36.592888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723225, 32.202610, 36.757633>,  <44.259628, 32.519447, 37.156097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723225, 32.202610, 36.757633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995537, 32.438133, 36.583351>,  <44.158924, 32.579449, 36.478783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995537, 32.438133, 36.583351>,  <43.723225, 32.202610, 36.757633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995537, 32.438133, 36.583351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521419, -0.807326, -0.276311,
		-0.514452, -0.039079, -0.856628,
		0.680780, 0.588811, -0.435707,
		44.199772, 32.614777, 36.452641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847691, 32.086231, 36.083744>,  <43.723225, 32.202610, 36.757633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847691, 32.086231, 36.083744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154659, 32.187832, 36.319218>,  <44.338840, 32.248795, 36.460503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154659, 32.187832, 36.319218>,  <43.847691, 32.086231, 36.083744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154659, 32.187832, 36.319218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445594, -0.871481, -0.204859,
		0.460989, 0.419526, -0.781976,
		0.767421, 0.254006, 0.588681,
		44.384884, 32.264034, 36.495823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295330, 32.047310, 35.674885>,  <43.847691, 32.086231, 36.083744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295330, 32.047310, 35.674885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446609, 31.971758, 36.037384>,  <44.537376, 31.926426, 36.254883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446609, 31.971758, 36.037384>,  <44.295330, 32.047310, 35.674885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446609, 31.971758, 36.037384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338248, -0.883077, -0.325213,
		0.861716, 0.429532, -0.270090,
		0.378199, -0.188884, 0.906250,
		44.560070, 31.915092, 36.309258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755760, 32.486309, 35.380650>,  <44.295330, 32.047310, 35.674885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755760, 32.486309, 35.380650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061771, 32.393311, 35.140423>,  <44.245377, 32.337513, 34.996288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061771, 32.393311, 35.140423>,  <43.755760, 32.486309, 35.380650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061771, 32.393311, 35.140423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409817, 0.543610, -0.732487,
		0.496770, 0.806496, 0.320598,
		0.765029, -0.232492, -0.600565,
		44.291279, 32.323563, 34.960255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930958, 33.041702, 35.133404>,  <43.755760, 32.486309, 35.380650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930958, 33.041702, 35.133404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067101, 32.770508, 34.872791>,  <44.148785, 32.607792, 34.716423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067101, 32.770508, 34.872791>,  <43.930958, 33.041702, 35.133404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067101, 32.770508, 34.872791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327186, 0.564206, -0.758037,
		0.881536, 0.471175, -0.029796,
		0.340357, -0.677986, -0.651530,
		44.169209, 32.567112, 34.677334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288036, 33.416981, 34.614433>,  <43.930958, 33.041702, 35.133404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288036, 33.416981, 34.614433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176441, 33.059231, 34.474567>,  <44.109486, 32.844582, 34.390648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176441, 33.059231, 34.474567>,  <44.288036, 33.416981, 34.614433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176441, 33.059231, 34.474567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336814, 0.432121, -0.836557,
		0.899290, -0.115617, -0.421794,
		-0.278987, -0.894373, -0.349661,
		44.092747, 32.790920, 34.369671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865238, 33.652203, 35.107697>,  <44.288036, 33.416981, 34.614433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865238, 33.652203, 35.107697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718830, 34.024361, 35.099773>,  <44.630985, 34.247654, 35.095020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718830, 34.024361, 35.099773>,  <44.865238, 33.652203, 35.107697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718830, 34.024361, 35.099773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774568, 0.292778, -0.560647,
		-0.515824, -0.220551, -0.827818,
		-0.366019, 0.930397, -0.019810,
		44.609024, 34.303478, 35.093830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582890, 33.291153, 34.927856>,  <44.865238, 33.652203, 35.107697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582890, 33.291153, 34.927856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642200, 32.906002, 35.018082>,  <45.677788, 32.674911, 35.072216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642200, 32.906002, 35.018082>,  <45.582890, 33.291153, 34.927856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642200, 32.906002, 35.018082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113407, 0.210025, 0.971097,
		-0.982422, -0.169568, -0.078056,
		0.148273, -0.962879, 0.225563,
		45.686684, 32.617138, 35.085751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186337, 33.778973, 34.797081>,  <45.582890, 33.291153, 34.927856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186337, 33.778973, 34.797081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522400, 33.888863, 34.610035>,  <46.724037, 33.954796, 34.497807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522400, 33.888863, 34.610035>,  <46.186337, 33.778973, 34.797081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522400, 33.888863, 34.610035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364832, 0.924252, -0.112495,
		0.401285, 0.265113, 0.876747,
		0.840159, 0.274723, -0.467610,
		46.774448, 33.971279, 34.469753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707561, 34.315750, 35.143478>,  <46.186337, 33.778973, 34.797081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707561, 34.315750, 35.143478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725704, 34.357498, 34.746078>,  <46.736591, 34.382549, 34.507637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725704, 34.357498, 34.746078>,  <46.707561, 34.315750, 35.143478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725704, 34.357498, 34.746078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197015, 0.975929, 0.093532,
		0.979350, 0.191492, 0.064833,
		0.045362, 0.104374, -0.993503,
		46.739311, 34.388809, 34.448029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.504845, 34.418045, 35.203606>,  <46.707561, 34.315750, 35.143478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.504845, 34.418045, 35.203606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643955, 34.771095, 35.077099>,  <47.727421, 34.982925, 35.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643955, 34.771095, 35.077099>,  <47.504845, 34.418045, 35.203606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.643955, 34.771095, 35.077099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894219, -0.413646, -0.171082,
		-0.281823, -0.223310, -0.933118,
		0.347776, 0.882626, -0.316263,
		47.748287, 35.035885, 34.982220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.784168, 27.485031, 26.181894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403210, 27.600929, 26.143974>,  <36.174633, 27.670467, 26.121222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403210, 27.600929, 26.143974>,  <36.784168, 27.485031, 26.181894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403210, 27.600929, 26.143974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014295, 0.268179, 0.963263,
		0.304525, 0.918764, -0.251271,
		-0.952397, 0.289746, -0.094801,
		36.117489, 27.687853, 26.115534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777992, 27.934608, 26.760277>,  <36.784168, 27.485031, 26.181894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777992, 27.934608, 26.760277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389069, 27.933701, 26.666807>,  <36.155712, 27.933155, 26.610725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389069, 27.933701, 26.666807>,  <36.777992, 27.934608, 26.760277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389069, 27.933701, 26.666807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223505, 0.300942, 0.927081,
		0.068216, 0.953640, -0.293117,
		-0.972313, -0.002271, -0.233672,
		36.097374, 27.933020, 26.596706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527992, 28.594263, 27.018473>,  <36.777992, 27.934608, 26.760277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527992, 28.594263, 27.018473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218403, 28.347361, 26.961962>,  <36.032650, 28.199219, 26.928055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218403, 28.347361, 26.961962>,  <36.527992, 28.594263, 27.018473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218403, 28.347361, 26.961962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367881, 0.256728, 0.893731,
		-0.515389, 0.743699, -0.425777,
		-0.773975, -0.617254, -0.141278,
		35.986210, 28.162184, 26.919579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898598, 29.005899, 27.151777>,  <36.527992, 28.594263, 27.018473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898598, 29.005899, 27.151777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834568, 28.616905, 27.219477>,  <35.796150, 28.383509, 27.260098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834568, 28.616905, 27.219477>,  <35.898598, 29.005899, 27.151777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834568, 28.616905, 27.219477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313343, 0.212654, 0.925524,
		-0.936051, 0.095121, -0.338763,
		-0.160076, -0.972487, 0.169250,
		35.786545, 28.325159, 27.270252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312840, 29.066488, 27.561975>,  <35.898598, 29.005899, 27.151777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312840, 29.066488, 27.561975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475903, 28.706018, 27.620899>,  <35.573742, 28.489737, 27.656254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475903, 28.706018, 27.620899>,  <35.312840, 29.066488, 27.561975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475903, 28.706018, 27.620899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120987, 0.213208, 0.969487,
		-0.905082, -0.377400, 0.195947,
		0.407662, -0.901172, 0.147310,
		35.598202, 28.435667, 27.665092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871647, 28.772663, 28.060295>,  <35.312840, 29.066488, 27.561975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871647, 28.772663, 28.060295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220005, 28.576548, 28.073906>,  <35.429020, 28.458878, 28.082073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.220005, 28.576548, 28.073906>,  <34.871647, 28.772663, 28.060295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220005, 28.576548, 28.073906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064527, -0.045434, 0.996881,
		-0.487214, -0.870375, -0.071205,
		0.870895, -0.490289, 0.034026,
		35.481274, 28.429461, 28.084114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796642, 28.350582, 28.628407>,  <34.871647, 28.772663, 28.060295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796642, 28.350582, 28.628407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195381, 28.338060, 28.599266>,  <35.434624, 28.330547, 28.581781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195381, 28.338060, 28.599266>,  <34.796642, 28.350582, 28.628407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195381, 28.338060, 28.599266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079270, 0.371110, 0.925199,
		-0.001929, -0.928061, 0.372423,
		0.996851, -0.031307, -0.072852,
		35.494438, 28.328669, 28.577410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094414, 28.111536, 29.327488>,  <34.796642, 28.350582, 28.628407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094414, 28.111536, 29.327488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367920, 28.318718, 29.121891>,  <35.532024, 28.443027, 28.998533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367920, 28.318718, 29.121891>,  <35.094414, 28.111536, 29.327488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367920, 28.318718, 29.121891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184618, 0.558674, 0.808578,
		0.705964, -0.647768, 0.286376,
		0.683763, 0.517957, -0.513994,
		35.573048, 28.474104, 28.967693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614456, 28.045303, 29.828281>,  <35.094414, 28.111536, 29.327488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614456, 28.045303, 29.828281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717449, 28.339674, 29.577805>,  <35.779243, 28.516296, 29.427519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717449, 28.339674, 29.577805>,  <35.614456, 28.045303, 29.828281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717449, 28.339674, 29.577805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338554, 0.538258, 0.771789,
		0.905033, -0.410722, -0.110559,
		0.257481, 0.735925, -0.626193,
		35.794693, 28.560452, 29.389946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371185, 28.234140, 29.923658>,  <35.614456, 28.045303, 29.828281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371185, 28.234140, 29.923658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223579, 28.565508, 29.755110>,  <36.135017, 28.764328, 29.653980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223579, 28.565508, 29.755110>,  <36.371185, 28.234140, 29.923658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223579, 28.565508, 29.755110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545021, 0.560110, 0.623881,
		0.752848, 0.000565, -0.658194,
		-0.369013, 0.828418, -0.421371,
		36.112877, 28.814034, 29.628698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909184, 28.672791, 29.901608>,  <36.371185, 28.234140, 29.923658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909184, 28.672791, 29.901608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600819, 28.925274, 29.867502>,  <36.415798, 29.076763, 29.847040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600819, 28.925274, 29.867502>,  <36.909184, 28.672791, 29.901608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600819, 28.925274, 29.867502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414614, 0.598926, 0.685115,
		0.483515, 0.492814, -0.723428,
		-0.770914, 0.631207, -0.085262,
		36.369545, 29.114635, 29.841923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210884, 29.252790, 29.900620>,  <36.909184, 28.672791, 29.901608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210884, 29.252790, 29.900620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836437, 29.346115, 30.005878>,  <36.611771, 29.402109, 30.069035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836437, 29.346115, 30.005878>,  <37.210884, 29.252790, 29.900620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836437, 29.346115, 30.005878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348217, 0.510083, 0.786486,
		0.049269, 0.827877, -0.558741,
		-0.936118, 0.233312, 0.263149,
		36.555603, 29.416109, 30.084824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207439, 29.968126, 29.970760>,  <37.210884, 29.252790, 29.900620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207439, 29.968126, 29.970760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.881237, 29.859406, 30.175138>,  <36.685516, 29.794172, 30.297766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.881237, 29.859406, 30.175138>,  <37.207439, 29.968126, 29.970760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881237, 29.859406, 30.175138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150004, 0.753417, 0.640205,
		-0.558965, 0.598738, -0.573648,
		-0.815511, -0.271802, 0.510946,
		36.636585, 29.777864, 30.328423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807430, 30.686720, 30.173674>,  <37.207439, 29.968126, 29.970760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807430, 30.686720, 30.173674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699974, 30.400255, 30.431339>,  <36.635502, 30.228376, 30.585938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699974, 30.400255, 30.431339>,  <36.807430, 30.686720, 30.173674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699974, 30.400255, 30.431339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055507, 0.679144, 0.731903,
		-0.961640, 0.160864, -0.222198,
		-0.268642, -0.716161, 0.644163,
		36.619381, 30.185408, 30.624588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199448, 30.957109, 30.495789>,  <36.807430, 30.686720, 30.173674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199448, 30.957109, 30.495789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336281, 30.679512, 30.749199>,  <36.418381, 30.512953, 30.901245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336281, 30.679512, 30.749199>,  <36.199448, 30.957109, 30.495789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336281, 30.679512, 30.749199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090309, 0.646797, 0.757297,
		-0.935321, -0.316269, 0.158582,
		0.342080, -0.693994, 0.633525,
		36.438904, 30.471313, 30.939257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095074, 31.414764, 31.047058>,  <36.199448, 30.957109, 30.495789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095074, 31.414764, 31.047058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258541, 31.083849, 31.201244>,  <36.356621, 30.885300, 31.293756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258541, 31.083849, 31.201244>,  <36.095074, 31.414764, 31.047058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258541, 31.083849, 31.201244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028162, 0.410713, 0.911330,
		-0.912249, -0.383286, 0.144547,
		0.408668, -0.827289, 0.385467,
		36.381142, 30.835663, 31.316885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708298, 31.220074, 31.597731>,  <36.095074, 31.414764, 31.047058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708298, 31.220074, 31.597731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075466, 31.075718, 31.663670>,  <36.295769, 30.989105, 31.703234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075466, 31.075718, 31.663670>,  <35.708298, 31.220074, 31.597731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075466, 31.075718, 31.663670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008386, 0.433048, 0.901332,
		-0.396669, -0.825971, 0.400531,
		0.917924, -0.360889, 0.164850,
		36.350842, 30.967451, 31.713125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715195, 30.846869, 32.253525>,  <35.708298, 31.220074, 31.597731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715195, 30.846869, 32.253525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105263, 30.901981, 32.184177>,  <36.339302, 30.935049, 32.142570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105263, 30.901981, 32.184177>,  <35.715195, 30.846869, 32.253525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105263, 30.901981, 32.184177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112132, 0.367874, 0.923090,
		0.190962, -0.919611, 0.343290,
		0.975172, 0.137782, -0.173368,
		36.397816, 30.943316, 32.132168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142971, 30.471853, 32.702724>,  <35.715195, 30.846869, 32.253525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142971, 30.471853, 32.702724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358318, 30.789783, 32.590714>,  <36.487526, 30.980541, 32.523506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358318, 30.789783, 32.590714>,  <36.142971, 30.471853, 32.702724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358318, 30.789783, 32.590714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034252, 0.311380, 0.949668,
		0.842014, -0.520861, 0.140413,
		0.538367, 0.794824, -0.280027,
		36.519829, 31.028231, 32.506706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830917, 30.498938, 33.100010>,  <36.142971, 30.471853, 32.702724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830917, 30.498938, 33.100010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798504, 30.871702, 32.958603>,  <36.779057, 31.095362, 32.873760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798504, 30.871702, 32.958603>,  <36.830917, 30.498938, 33.100010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798504, 30.871702, 32.958603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108195, 0.360810, 0.926343,
		0.990822, 0.036815, -0.130065,
		-0.081032, 0.931913, -0.353515,
		36.774193, 31.151276, 32.852547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365028, 30.870092, 33.380516>,  <36.830917, 30.498938, 33.100010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365028, 30.870092, 33.380516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117092, 31.162868, 33.267342>,  <36.968330, 31.338533, 33.199436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117092, 31.162868, 33.267342>,  <37.365028, 30.870092, 33.380516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117092, 31.162868, 33.267342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150040, 0.464450, 0.872796,
		0.770247, 0.498546, -0.397708,
		-0.619845, 0.731941, -0.282940,
		36.931137, 31.382450, 33.182461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703701, 31.544176, 33.516266>,  <37.365028, 30.870092, 33.380516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703701, 31.544176, 33.516266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305550, 31.578817, 33.499626>,  <37.066658, 31.599602, 33.489643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305550, 31.578817, 33.499626>,  <37.703701, 31.544176, 33.516266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305550, 31.578817, 33.499626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001441, 0.446422, 0.894822,
		0.096066, 0.890622, -0.444481,
		-0.995374, 0.086602, -0.041603,
		37.006939, 31.604797, 33.487144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286316, 31.867603, 33.571186>,  <37.703701, 31.544176, 33.516266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286316, 31.867603, 33.571186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.677868, 31.850531, 33.651165>,  <38.912800, 31.840286, 33.699154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.677868, 31.850531, 33.651165>,  <38.286316, 31.867603, 33.571186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677868, 31.850531, 33.651165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162124, -0.433792, -0.886307,
		0.124566, 0.900001, -0.417709,
		0.978877, -0.042683, 0.199948,
		38.971531, 31.837727, 33.711151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640728, 32.051014, 32.935532>,  <38.286316, 31.867603, 33.571186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640728, 32.051014, 32.935532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912193, 31.858068, 33.157070>,  <39.075073, 31.742300, 33.289993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912193, 31.858068, 33.157070>,  <38.640728, 32.051014, 32.935532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912193, 31.858068, 33.157070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302469, -0.503609, -0.809253,
		0.669275, 0.716730, -0.195880,
		0.678663, -0.482365, 0.553842,
		39.115791, 31.713360, 33.323223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168152, 32.097755, 32.542732>,  <38.640728, 32.051014, 32.935532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168152, 32.097755, 32.542732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254768, 31.811373, 32.808216>,  <39.306740, 31.639544, 32.967506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254768, 31.811373, 32.808216>,  <39.168152, 32.097755, 32.542732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254768, 31.811373, 32.808216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312830, -0.593111, -0.741860,
		0.924796, 0.368273, 0.095540,
		0.216541, -0.715957, 0.663714,
		39.319729, 31.596586, 33.007332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883240, 31.904453, 32.432156>,  <39.168152, 32.097755, 32.542732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883240, 31.904453, 32.432156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.662884, 31.608120, 32.585880>,  <39.530670, 31.430321, 32.678116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.662884, 31.608120, 32.585880>,  <39.883240, 31.904453, 32.432156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662884, 31.608120, 32.585880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310111, -0.609214, -0.729856,
		0.774826, -0.282890, 0.565348,
		-0.550886, -0.740832, 0.384307,
		39.497620, 31.385870, 32.701172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250713, 31.299767, 32.202133>,  <39.883240, 31.904453, 32.432156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250713, 31.299767, 32.202133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916641, 31.132624, 32.345165>,  <39.716198, 31.032337, 32.430984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916641, 31.132624, 32.345165>,  <40.250713, 31.299767, 32.202133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916641, 31.132624, 32.345165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086894, -0.742273, -0.664440,
		0.543067, -0.523856, 0.656242,
		-0.835181, -0.417859, 0.357584,
		39.666088, 31.007265, 32.452442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368687, 30.613178, 32.237785>,  <40.250713, 31.299767, 32.202133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368687, 30.613178, 32.237785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971832, 30.653168, 32.207653>,  <39.733719, 30.677160, 32.189575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971832, 30.653168, 32.207653>,  <40.368687, 30.613178, 32.237785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971832, 30.653168, 32.207653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009098, -0.657790, -0.753147,
		-0.124845, -0.746537, 0.653526,
		-0.992134, 0.099972, -0.075330,
		39.674191, 30.683159, 32.185055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123016, 29.876652, 32.161835>,  <40.368687, 30.613178, 32.237785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123016, 29.876652, 32.161835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871422, 30.132027, 31.984400>,  <39.720463, 30.285252, 31.877939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871422, 30.132027, 31.984400>,  <40.123016, 29.876652, 32.161835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871422, 30.132027, 31.984400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038329, -0.595364, -0.802542,
		-0.776468, -0.487789, 0.398949,
		-0.628990, 0.638439, -0.443584,
		39.682724, 30.323559, 31.851324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517395, 29.437260, 31.984467>,  <40.123016, 29.876652, 32.161835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517395, 29.437260, 31.984467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429729, 29.763718, 31.770596>,  <39.377129, 29.959593, 31.642273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429729, 29.763718, 31.770596>,  <39.517395, 29.437260, 31.984467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429729, 29.763718, 31.770596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240129, -0.576261, -0.781192,
		-0.945677, -0.042818, 0.322276,
		-0.219165, 0.816143, -0.534675,
		39.363979, 30.008560, 31.610193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882404, 29.360985, 31.766453>,  <39.517395, 29.437260, 31.984467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882404, 29.360985, 31.766453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033939, 29.628368, 31.510441>,  <39.124863, 29.788799, 31.356834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033939, 29.628368, 31.510441>,  <38.882404, 29.360985, 31.766453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033939, 29.628368, 31.510441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454367, -0.468145, -0.757886,
		-0.806244, 0.577927, 0.126375,
		0.378841, 0.668461, -0.640030,
		39.147591, 29.828907, 31.318432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332878, 29.609320, 31.213606>,  <38.882404, 29.360985, 31.766453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332878, 29.609320, 31.213606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.691387, 29.687920, 31.054569>,  <38.906494, 29.735081, 30.959146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.691387, 29.687920, 31.054569>,  <38.332878, 29.609320, 31.213606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691387, 29.687920, 31.054569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335431, -0.286127, -0.897562,
		-0.290134, 0.937827, -0.190536,
		0.896275, 0.196501, -0.397592,
		38.960270, 29.746870, 30.935291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146423, 29.729292, 30.543676>,  <38.332878, 29.609320, 31.213606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146423, 29.729292, 30.543676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541958, 29.671114, 30.530729>,  <38.779278, 29.636208, 30.522961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541958, 29.671114, 30.530729>,  <38.146423, 29.729292, 30.543676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541958, 29.671114, 30.530729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056128, -0.162375, -0.985131,
		0.138028, 0.975951, -0.168726,
		0.988837, -0.145446, -0.032366,
		38.838608, 29.627480, 30.521019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264633, 30.029381, 30.012867>,  <38.146423, 29.729292, 30.543676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264633, 30.029381, 30.012867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596409, 29.806639, 30.030481>,  <38.795475, 29.672993, 30.041050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596409, 29.806639, 30.030481>,  <38.264633, 30.029381, 30.012867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596409, 29.806639, 30.030481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197294, -0.365793, -0.909544,
		0.522594, 0.745725, -0.413268,
		0.829440, -0.556857, 0.044034,
		38.845242, 29.639582, 30.043692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688679, 30.252596, 29.366636>,  <38.264633, 30.029381, 30.012867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688679, 30.252596, 29.366636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788784, 29.886728, 29.493601>,  <38.848846, 29.667208, 29.569778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788784, 29.886728, 29.493601>,  <38.688679, 30.252596, 29.366636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788784, 29.886728, 29.493601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029465, -0.334886, -0.941798,
		0.967730, 0.226341, -0.110759,
		0.250259, -0.914670, 0.317410,
		38.863861, 29.612328, 29.588823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194260, 30.005911, 28.894735>,  <38.688679, 30.252596, 29.366636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194260, 30.005911, 28.894735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041454, 29.681213, 29.071434>,  <38.949772, 29.486395, 29.177454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041454, 29.681213, 29.071434>,  <39.194260, 30.005911, 28.894735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041454, 29.681213, 29.071434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050765, -0.458846, -0.887064,
		0.922763, -0.361293, 0.134075,
		-0.382010, -0.811744, 0.441747,
		38.926853, 29.437691, 29.203959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527195, 29.438873, 28.522524>,  <39.194260, 30.005911, 28.894735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527195, 29.438873, 28.522524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.181988, 29.322926, 28.688017>,  <38.974865, 29.253357, 28.787313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.181988, 29.322926, 28.688017>,  <39.527195, 29.438873, 28.522524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181988, 29.322926, 28.688017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234886, -0.494836, -0.836640,
		0.447245, -0.819216, 0.358966,
		-0.863018, -0.289867, 0.413735,
		38.923080, 29.235966, 28.812138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513535, 28.712051, 28.529924>,  <39.527195, 29.438873, 28.522524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513535, 28.712051, 28.529924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132713, 28.833742, 28.542833>,  <38.904221, 28.906755, 28.550579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132713, 28.833742, 28.542833>,  <39.513535, 28.712051, 28.529924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132713, 28.833742, 28.542833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245707, -0.697525, -0.673117,
		-0.182269, -0.648773, 0.738831,
		-0.952053, 0.304224, 0.032271,
		38.847095, 28.925009, 28.552515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190865, 28.105354, 28.302107>,  <39.513535, 28.712051, 28.529924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190865, 28.105354, 28.302107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.937092, 28.412397, 28.265720>,  <38.784828, 28.596622, 28.243889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.937092, 28.412397, 28.265720>,  <39.190865, 28.105354, 28.302107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937092, 28.412397, 28.265720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313066, -0.362767, -0.877718,
		-0.706744, -0.528372, 0.470463,
		-0.634430, 0.767608, -0.090968,
		38.746761, 28.642679, 28.238430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584160, 27.735842, 28.087337>,  <39.190865, 28.105354, 28.302107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584160, 27.735842, 28.087337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498837, 28.116892, 28.000612>,  <38.447643, 28.345522, 27.948576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498837, 28.116892, 28.000612>,  <38.584160, 27.735842, 28.087337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498837, 28.116892, 28.000612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408222, -0.288527, -0.866087,
		-0.887612, -0.096235, 0.450427,
		-0.213309, 0.952623, -0.216815,
		38.434845, 28.402679, 27.935568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.894993, 27.768105, 27.836082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050671, 28.113239, 27.707064>,  <38.144077, 28.320320, 27.629652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050671, 28.113239, 27.707064>,  <37.894993, 27.768105, 27.836082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050671, 28.113239, 27.707064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178230, -0.273002, -0.945359,
		-0.903748, 0.425417, 0.047532,
		0.389195, 0.862839, -0.322547,
		38.167431, 28.372091, 27.610300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411274, 28.068642, 27.399202>,  <37.894993, 27.768105, 27.836082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411274, 28.068642, 27.399202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755077, 28.238184, 27.284945>,  <37.961361, 28.339911, 27.216391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755077, 28.238184, 27.284945>,  <37.411274, 28.068642, 27.399202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755077, 28.238184, 27.284945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203671, -0.228554, -0.951988,
		-0.468792, 0.876418, -0.110116,
		0.859507, 0.423857, -0.285645,
		38.012928, 28.365341, 27.199251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259373, 28.491949, 26.780945>,  <37.411274, 28.068642, 27.399202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259373, 28.491949, 26.780945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.648121, 28.397863, 26.776134>,  <37.881371, 28.341412, 26.773249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.648121, 28.397863, 26.776134>,  <37.259373, 28.491949, 26.780945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648121, 28.397863, 26.776134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081744, -0.288990, -0.953836,
		0.220883, 0.927986, -0.300088,
		0.971869, -0.235216, -0.012025,
		37.939682, 28.327299, 26.772528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397408, 28.649397, 26.057575>,  <37.259373, 28.491949, 26.780945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397408, 28.649397, 26.057575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.705826, 28.424908, 26.177917>,  <37.890877, 28.290215, 26.250122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.705826, 28.424908, 26.177917>,  <37.397408, 28.649397, 26.057575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705826, 28.424908, 26.177917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143365, -0.307337, -0.940739,
		0.620429, 0.768486, -0.156511,
		0.771047, -0.561224, 0.300855,
		37.937141, 28.256540, 26.268173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045689, 28.735495, 25.582182>,  <37.397408, 28.649397, 26.057575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045689, 28.735495, 25.582182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100990, 28.385092, 25.767006>,  <38.134171, 28.174850, 25.877899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100990, 28.385092, 25.767006>,  <38.045689, 28.735495, 25.582182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100990, 28.385092, 25.767006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307496, -0.405516, -0.860816,
		0.941452, 0.261093, 0.213304,
		0.138254, -0.876007, 0.462058,
		38.142467, 28.122290, 25.905622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672886, 28.540026, 25.341526>,  <38.045689, 28.735495, 25.582182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672886, 28.540026, 25.341526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.467148, 28.219954, 25.464922>,  <38.343704, 28.027910, 25.538960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.467148, 28.219954, 25.464922>,  <38.672886, 28.540026, 25.341526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467148, 28.219954, 25.464922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222832, -0.472063, -0.852937,
		0.828129, -0.369961, 0.421108,
		-0.514343, -0.800178, 0.308490,
		38.312843, 27.979900, 25.557468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965427, 27.931900, 25.014086>,  <38.672886, 28.540026, 25.341526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965427, 27.931900, 25.014086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.642414, 27.746555, 25.160067>,  <38.448608, 27.635349, 25.247656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.642414, 27.746555, 25.160067>,  <38.965427, 27.931900, 25.014086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642414, 27.746555, 25.160067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127519, -0.741267, -0.658986,
		0.575876, -0.485613, 0.657683,
		-0.807531, -0.463361, 0.364953,
		38.400154, 27.607548, 25.269552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067871, 27.191111, 25.079041>,  <38.965427, 27.931900, 25.014086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067871, 27.191111, 25.079041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667957, 27.196825, 25.073004>,  <38.428009, 27.200253, 25.069382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667957, 27.196825, 25.073004>,  <39.067871, 27.191111, 25.079041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667957, 27.196825, 25.073004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002549, -0.636468, -0.771299,
		-0.020622, -0.771171, 0.636294,
		-0.999784, 0.014284, -0.015091,
		38.368023, 27.201111, 25.068476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848766, 26.527145, 25.189932>,  <39.067871, 27.191111, 25.079041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848766, 26.527145, 25.189932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556412, 26.705343, 24.983110>,  <38.381001, 26.812262, 24.859018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556412, 26.705343, 24.983110>,  <38.848766, 26.527145, 25.189932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556412, 26.705343, 24.983110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007234, -0.762599, -0.646831,
		-0.682461, -0.469020, 0.560595,
		-0.730886, 0.445493, -0.517051,
		38.337147, 26.838991, 24.827995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462494, 25.948311, 24.854261>,  <38.848766, 26.527145, 25.189932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462494, 25.948311, 24.854261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306095, 26.253891, 24.648932>,  <38.212257, 26.437239, 24.525734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306095, 26.253891, 24.648932>,  <38.462494, 25.948311, 24.854261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306095, 26.253891, 24.648932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209125, -0.616874, -0.758770,
		-0.896321, -0.189324, 0.400955,
		-0.390993, 0.763952, -0.513325,
		38.188797, 26.483076, 24.494934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834324, 25.733299, 24.602634>,  <38.462494, 25.948311, 24.854261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834324, 25.733299, 24.602634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995552, 26.013134, 24.366629>,  <38.092289, 26.181034, 24.225025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995552, 26.013134, 24.366629>,  <37.834324, 25.733299, 24.602634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995552, 26.013134, 24.366629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178210, -0.572362, -0.800402,
		-0.897652, 0.427761, -0.106027,
		0.403067, 0.699587, -0.590013,
		38.116470, 26.223009, 24.189625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370052, 25.735106, 23.992807>,  <37.834324, 25.733299, 24.602634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370052, 25.735106, 23.992807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732960, 25.889696, 23.926481>,  <37.950706, 25.982450, 23.886686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732960, 25.889696, 23.926481>,  <37.370052, 25.735106, 23.992807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732960, 25.889696, 23.926481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122092, -0.619358, -0.775558,
		-0.402434, 0.683396, -0.609111,
		0.907271, 0.386478, -0.165814,
		38.005142, 26.005640, 23.876738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394241, 25.798155, 23.276024>,  <37.370052, 25.735106, 23.992807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394241, 25.798155, 23.276024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777225, 25.841156, 23.383146>,  <38.007015, 25.866957, 23.447420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777225, 25.841156, 23.383146>,  <37.394241, 25.798155, 23.276024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777225, 25.841156, 23.383146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278232, -0.590137, -0.757843,
		0.076572, 0.800114, -0.594941,
		0.957457, 0.107502, 0.267805,
		38.064461, 25.873407, 23.463488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636189, 26.102470, 22.711531>,  <37.394241, 25.798155, 23.276024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636189, 26.102470, 22.711531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945385, 25.948982, 22.913616>,  <38.130905, 25.856890, 23.034868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945385, 25.948982, 22.913616>,  <37.636189, 26.102470, 22.711531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945385, 25.948982, 22.913616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361966, -0.387254, -0.847948,
		0.521021, 0.838328, -0.160451,
		0.772993, -0.383720, 0.505213,
		38.177284, 25.833866, 23.065180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118122, 26.448812, 22.361910>,  <37.636189, 26.102470, 22.711531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118122, 26.448812, 22.361910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283188, 26.132582, 22.542885>,  <38.382225, 25.942844, 22.651470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283188, 26.132582, 22.542885>,  <38.118122, 26.448812, 22.361910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283188, 26.132582, 22.542885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434446, -0.265744, -0.860603,
		0.800604, 0.551698, 0.233800,
		0.412662, -0.790575, 0.452439,
		38.406986, 25.895409, 22.678616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776421, 26.509386, 22.288689>,  <38.118122, 26.448812, 22.361910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776421, 26.509386, 22.288689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714314, 26.120895, 22.360924>,  <38.677048, 25.887802, 22.404264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714314, 26.120895, 22.360924>,  <38.776421, 26.509386, 22.288689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714314, 26.120895, 22.360924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160282, -0.205151, -0.965517,
		0.974782, -0.120973, 0.187525,
		-0.155272, -0.971225, 0.180588,
		38.667732, 25.829527, 22.415100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263729, 26.214254, 21.984152>,  <38.776421, 26.509386, 22.288689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263729, 26.214254, 21.984152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006672, 25.910856, 22.027416>,  <38.852436, 25.728817, 22.053375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006672, 25.910856, 22.027416>,  <39.263729, 26.214254, 21.984152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006672, 25.910856, 22.027416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172195, -0.280544, -0.944269,
		0.746566, -0.588202, 0.310899,
		-0.642642, -0.758494, 0.108159,
		38.813881, 25.683308, 22.059864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628117, 25.556168, 21.884361>,  <39.263729, 26.214254, 21.984152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628117, 25.556168, 21.884361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244934, 25.469038, 21.809660>,  <39.015026, 25.416761, 21.764839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244934, 25.469038, 21.809660>,  <39.628117, 25.556168, 21.884361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244934, 25.469038, 21.809660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277774, -0.541019, -0.793814,
		0.071873, -0.812313, 0.578777,
		-0.957954, -0.217823, -0.186755,
		38.957546, 25.403690, 21.753633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753693, 24.967133, 21.535166>,  <39.628117, 25.556168, 21.884361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753693, 24.967133, 21.535166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.367615, 25.036919, 21.457241>,  <39.135967, 25.078791, 21.410486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.367615, 25.036919, 21.457241>,  <39.753693, 24.967133, 21.535166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367615, 25.036919, 21.457241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117982, -0.374324, -0.919762,
		-0.233388, -0.910739, 0.340713,
		-0.965199, 0.174463, -0.194813,
		39.078056, 25.089258, 21.398796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454800, 24.331188, 21.243679>,  <39.753693, 24.967133, 21.535166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454800, 24.331188, 21.243679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.196545, 24.614725, 21.130051>,  <39.041592, 24.784847, 21.061872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.196545, 24.614725, 21.130051>,  <39.454800, 24.331188, 21.243679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196545, 24.614725, 21.130051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007554, -0.377905, -0.925814,
		-0.763611, -0.595590, 0.249342,
		-0.645633, 0.708845, -0.284073,
		39.002853, 24.827379, 21.044828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903584, 23.991474, 20.818565>,  <39.454800, 24.331188, 21.243679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903584, 23.991474, 20.818565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904800, 24.381041, 20.727814>,  <38.905533, 24.614780, 20.673363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904800, 24.381041, 20.727814>,  <38.903584, 23.991474, 20.818565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904800, 24.381041, 20.727814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055910, -0.226691, -0.972360,
		-0.998431, -0.009725, -0.055141,
		0.003044, 0.973918, -0.226880,
		38.905712, 24.673216, 20.659750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389175, 24.097145, 20.359083>,  <38.903584, 23.991474, 20.818565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389175, 24.097145, 20.359083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635639, 24.407110, 20.302717>,  <38.783516, 24.593090, 20.268898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635639, 24.407110, 20.302717>,  <38.389175, 24.097145, 20.359083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635639, 24.407110, 20.302717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030833, -0.155044, -0.987426,
		-0.787020, 0.612754, -0.071639,
		0.616157, 0.774915, -0.140916,
		38.820488, 24.639585, 20.260443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041374, 24.663191, 20.052999>,  <38.389175, 24.097145, 20.359083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041374, 24.663191, 20.052999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429543, 24.615885, 19.968813>,  <38.662445, 24.587502, 19.918301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429543, 24.615885, 19.968813>,  <38.041374, 24.663191, 20.052999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429543, 24.615885, 19.968813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238998, -0.347458, -0.906726,
		0.034107, 0.930208, -0.365447,
		0.970421, -0.118267, -0.210467,
		38.720669, 24.580404, 19.905672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113934, 24.977047, 19.261101>,  <38.041374, 24.663191, 20.052999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113934, 24.977047, 19.261101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.832043, 24.895477, 18.989285>,  <37.662907, 24.846535, 18.826195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.832043, 24.895477, 18.989285>,  <38.113934, 24.977047, 19.261101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832043, 24.895477, 18.989285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269424, -0.962974, 0.009571,
		-0.656331, -0.176339, 0.733576,
		-0.704727, -0.203924, -0.679540,
		37.620625, 24.834301, 18.785423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083611, 25.707062, 19.120840>,  <38.113934, 24.977047, 19.261101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083611, 25.707062, 19.120840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736874, 25.781202, 18.935703>,  <37.528831, 25.825686, 18.824621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736874, 25.781202, 18.935703>,  <38.083611, 25.707062, 19.120840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736874, 25.781202, 18.935703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340956, 0.456945, 0.821554,
		0.363768, 0.869970, -0.332905,
		-0.866846, 0.185349, -0.462844,
		37.476818, 25.836807, 18.796850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840446, 26.357782, 19.365250>,  <38.083611, 25.707062, 19.120840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840446, 26.357782, 19.365250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516331, 26.183607, 19.208364>,  <37.321861, 26.079102, 19.114233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516331, 26.183607, 19.208364>,  <37.840446, 26.357782, 19.365250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516331, 26.183607, 19.208364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584338, 0.549425, 0.597227,
		-0.044563, 0.713110, -0.699634,
		-0.810286, -0.435437, -0.392214,
		37.273247, 26.052977, 19.090700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364529, 26.869024, 19.229467>,  <37.840446, 26.357782, 19.365250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364529, 26.869024, 19.229467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157219, 26.530098, 19.275848>,  <37.032833, 26.326742, 19.303677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157219, 26.530098, 19.275848>,  <37.364529, 26.869024, 19.229467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157219, 26.530098, 19.275848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550759, 0.434414, 0.712705,
		-0.654258, 0.305517, -0.691813,
		-0.518277, -0.847316, 0.115953,
		37.001736, 26.275904, 19.310635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659992, 27.034647, 19.215895>,  <37.364529, 26.869024, 19.229467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659992, 27.034647, 19.215895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682114, 26.677483, 19.394623>,  <36.695385, 26.463184, 19.501860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682114, 26.677483, 19.394623>,  <36.659992, 27.034647, 19.215895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682114, 26.677483, 19.394623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540548, 0.349479, 0.765292,
		-0.839493, -0.283850, -0.463336,
		0.055302, -0.892913, 0.446820,
		36.698704, 26.409609, 19.528669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015076, 27.100773, 19.614841>,  <36.659992, 27.034647, 19.215895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015076, 27.100773, 19.614841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.216545, 26.788271, 19.762331>,  <36.337425, 26.600771, 19.850824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.216545, 26.788271, 19.762331>,  <36.015076, 27.100773, 19.614841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216545, 26.788271, 19.762331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381355, 0.181906, 0.906354,
		-0.775165, -0.597121, -0.206314,
		0.503674, -0.781254, 0.368722,
		36.367649, 26.553894, 19.872948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521057, 26.919334, 20.012142>,  <36.015076, 27.100773, 19.614841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521057, 26.919334, 20.012142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.879234, 26.791348, 20.135948>,  <36.094139, 26.714556, 20.210232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.879234, 26.791348, 20.135948>,  <35.521057, 26.919334, 20.012142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879234, 26.791348, 20.135948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242414, 0.232686, 0.941856,
		-0.373383, -0.918411, 0.130793,
		0.895444, -0.319967, 0.309516,
		36.147869, 26.695358, 20.228804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315250, 26.560038, 20.564394>,  <35.521057, 26.919334, 20.012142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315250, 26.560038, 20.564394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710720, 26.611443, 20.595394>,  <35.948002, 26.642286, 20.613995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710720, 26.611443, 20.595394>,  <35.315250, 26.560038, 20.564394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710720, 26.611443, 20.595394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109737, 0.266834, 0.957475,
		0.102369, -0.955136, 0.277914,
		0.988675, 0.128514, 0.077498,
		36.007324, 26.649998, 20.618643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588383, 26.132891, 21.021616>,  <35.315250, 26.560038, 20.564394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588383, 26.132891, 21.021616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851940, 26.433548, 21.009672>,  <36.010075, 26.613941, 21.002506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851940, 26.433548, 21.009672>,  <35.588383, 26.132891, 21.021616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851940, 26.433548, 21.009672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098417, 0.125491, 0.987201,
		0.745768, -0.647524, 0.156660,
		0.658896, 0.751642, -0.029859,
		36.049610, 26.659040, 21.000715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022171, 26.096424, 21.614176>,  <35.588383, 26.132891, 21.021616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022171, 26.096424, 21.614176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096470, 26.477793, 21.519112>,  <36.141048, 26.706614, 21.462072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096470, 26.477793, 21.519112>,  <36.022171, 26.096424, 21.614176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096470, 26.477793, 21.519112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012305, 0.244108, 0.969670,
		0.982520, -0.177193, 0.057076,
		0.185751, 0.953422, -0.237660,
		36.152195, 26.763819, 21.447813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656063, 26.242899, 21.936535>,  <36.022171, 26.096424, 21.614176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656063, 26.242899, 21.936535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469028, 26.594656, 21.900688>,  <36.356808, 26.805710, 21.879181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469028, 26.594656, 21.900688>,  <36.656063, 26.242899, 21.936535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469028, 26.594656, 21.900688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141157, 0.174363, 0.974511,
		0.872603, 0.443020, -0.205662,
		-0.467588, 0.879392, -0.089615,
		36.328751, 26.858473, 21.873804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045761, 26.809917, 22.344927>,  <36.656063, 26.242899, 21.936535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045761, 26.809917, 22.344927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701496, 26.999939, 22.271620>,  <36.494938, 27.113951, 22.227634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701496, 26.999939, 22.271620>,  <37.045761, 26.809917, 22.344927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701496, 26.999939, 22.271620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013893, 0.337886, 0.941084,
		0.508988, 0.812501, -0.284205,
		-0.860661, 0.475053, -0.183268,
		36.443298, 27.142454, 22.216639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243469, 27.448051, 22.570337>,  <37.045761, 26.809917, 22.344927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243469, 27.448051, 22.570337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.849876, 27.381111, 22.594894>,  <36.613720, 27.340948, 22.609629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.849876, 27.381111, 22.594894>,  <37.243469, 27.448051, 22.570337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849876, 27.381111, 22.594894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003480, 0.362375, 0.932026,
		-0.178220, 0.916885, -0.357154,
		-0.983984, -0.167349, 0.061391,
		36.554680, 27.330906, 22.613312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010155, 27.904797, 23.122181>,  <37.243469, 27.448051, 22.570337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010155, 27.904797, 23.122181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679588, 27.689173, 23.057116>,  <36.481251, 27.559799, 23.018076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679588, 27.689173, 23.057116>,  <37.010155, 27.904797, 23.122181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679588, 27.689173, 23.057116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282055, 0.146293, 0.948179,
		-0.487329, 0.829465, -0.272943,
		-0.826411, -0.539060, -0.162662,
		36.431664, 27.527454, 23.008316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414829, 28.372795, 23.272606>,  <37.010155, 27.904797, 23.122181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414829, 28.372795, 23.272606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316628, 27.986212, 23.302773>,  <36.257706, 27.754261, 23.320871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316628, 27.986212, 23.302773>,  <36.414829, 28.372795, 23.272606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316628, 27.986212, 23.302773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382469, 0.168053, 0.908557,
		-0.890755, 0.194211, -0.410898,
		-0.245505, -0.966458, 0.075414,
		36.242977, 27.696274, 23.325397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628883, 28.288116, 23.458025>,  <36.414829, 28.372795, 23.272606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628883, 28.288116, 23.458025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793926, 27.942495, 23.573385>,  <35.892952, 27.735123, 23.642601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793926, 27.942495, 23.573385>,  <35.628883, 28.288116, 23.458025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793926, 27.942495, 23.573385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373863, 0.128077, 0.918598,
		-0.830653, -0.486838, -0.270192,
		0.412603, -0.864052, 0.288399,
		35.917706, 27.683279, 23.659904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117733, 27.874903, 23.758801>,  <35.628883, 28.288116, 23.458025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117733, 27.874903, 23.758801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463821, 27.720312, 23.886572>,  <35.671474, 27.627558, 23.963234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463821, 27.720312, 23.886572>,  <35.117733, 27.874903, 23.758801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463821, 27.720312, 23.886572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267544, 0.182938, 0.946020,
		-0.424051, -0.903974, 0.054882,
		0.865218, -0.386477, 0.319428,
		35.723385, 27.604368, 23.982401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963017, 27.420885, 24.313421>,  <35.117733, 27.874903, 23.758801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963017, 27.420885, 24.313421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353050, 27.490458, 24.368500>,  <35.587070, 27.532200, 24.401546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353050, 27.490458, 24.368500>,  <34.963017, 27.420885, 24.313421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353050, 27.490458, 24.368500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119793, -0.109596, 0.986731,
		0.186713, -0.978640, -0.086029,
		0.975083, 0.173930, 0.137698,
		35.645576, 27.542637, 24.409809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236774, 26.872952, 24.644192>,  <34.963017, 27.420885, 24.313421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236774, 26.872952, 24.644192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471760, 27.190948, 24.704685>,  <35.612751, 27.381746, 24.740980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471760, 27.190948, 24.704685>,  <35.236774, 26.872952, 24.644192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471760, 27.190948, 24.704685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059244, -0.144129, 0.987784,
		0.807077, -0.589249, -0.037572,
		0.587466, 0.794992, 0.151233,
		35.647999, 27.429445, 24.750055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649239, 26.649973, 25.150970>,  <35.236774, 26.872952, 24.644192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649239, 26.649973, 25.150970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705986, 27.043598, 25.193855>,  <35.740036, 27.279774, 25.219585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705986, 27.043598, 25.193855>,  <35.649239, 26.649973, 25.150970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705986, 27.043598, 25.193855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041959, -0.114187, 0.992573,
		0.988995, -0.136320, -0.057490,
		0.141872, 0.984062, 0.107211,
		35.748547, 27.338818, 25.226019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317043, 26.824839, 25.562672>,  <35.649239, 26.649973, 25.150970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317043, 26.824839, 25.562672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070244, 27.136580, 25.606356>,  <35.922165, 27.323624, 25.632566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070244, 27.136580, 25.606356>,  <36.317043, 26.824839, 25.562672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070244, 27.136580, 25.606356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162183, -0.009869, 0.986711,
		0.770074, 0.626507, -0.120309,
		-0.616994, 0.779353, 0.109208,
		35.885147, 27.370386, 25.639118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.730053, 28.728548, 30.085680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473049, 29.034067, 30.061056>,  <39.318848, 29.217379, 30.046282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473049, 29.034067, 30.061056>,  <39.730053, 28.728548, 30.085680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473049, 29.034067, 30.061056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357951, 0.370198, 0.857219,
		0.677532, 0.528739, -0.511259,
		-0.642512, 0.763799, -0.061558,
		39.280296, 29.263206, 30.042589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119366, 29.368666, 30.276114>,  <39.730053, 28.728548, 30.085680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119366, 29.368666, 30.276114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739784, 29.470575, 30.350498>,  <39.512035, 29.531721, 30.395130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739784, 29.470575, 30.350498>,  <40.119366, 29.368666, 30.276114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739784, 29.470575, 30.350498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306908, 0.609708, 0.730796,
		0.072806, 0.750563, -0.656776,
		-0.948950, 0.254776, 0.185963,
		39.455101, 29.547009, 30.406288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109875, 30.129477, 30.419258>,  <40.119366, 29.368666, 30.276114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109875, 30.129477, 30.419258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751724, 30.018906, 30.558912>,  <39.536835, 29.952562, 30.642704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751724, 30.018906, 30.558912>,  <40.109875, 30.129477, 30.419258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751724, 30.018906, 30.558912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094218, 0.648674, 0.755212,
		-0.435237, 0.709091, -0.554761,
		-0.895373, -0.276428, 0.349136,
		39.483112, 29.935978, 30.663652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773018, 30.719557, 30.567879>,  <40.109875, 30.129477, 30.419258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773018, 30.719557, 30.567879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.584248, 30.447121, 30.791807>,  <39.470985, 30.283659, 30.926165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.584248, 30.447121, 30.791807>,  <39.773018, 30.719557, 30.567879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584248, 30.447121, 30.791807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032399, 0.621151, 0.783021,
		-0.881040, 0.387669, -0.271073,
		-0.471930, -0.681091, 0.559819,
		39.442669, 30.242794, 30.959753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168640, 31.107431, 30.868095>,  <39.773018, 30.719557, 30.567879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168640, 31.107431, 30.868095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207386, 30.770447, 31.080086>,  <39.230633, 30.568256, 31.207279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207386, 30.770447, 31.080086>,  <39.168640, 31.107431, 30.868095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207386, 30.770447, 31.080086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033590, 0.529409, 0.847702,
		-0.994730, -0.099917, 0.022984,
		0.096867, -0.842463, 0.529975,
		39.236446, 30.517708, 31.239079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725258, 31.111372, 31.494093>,  <39.168640, 31.107431, 30.868095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725258, 31.111372, 31.494093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986294, 30.833565, 31.615273>,  <39.142914, 30.666880, 31.687981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986294, 30.833565, 31.615273>,  <38.725258, 31.111372, 31.494093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986294, 30.833565, 31.615273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034249, 0.372372, 0.927452,
		-0.756941, -0.615617, 0.219217,
		0.652585, -0.694518, 0.302948,
		39.182068, 30.625210, 31.706158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432716, 30.724636, 32.077808>,  <38.725258, 31.111372, 31.494093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432716, 30.724636, 32.077808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831242, 30.699015, 32.100639>,  <39.070358, 30.683641, 32.114338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831242, 30.699015, 32.100639>,  <38.432716, 30.724636, 32.077808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831242, 30.699015, 32.100639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042434, 0.210330, 0.976709,
		-0.074566, -0.975530, 0.206837,
		0.996313, -0.064053, 0.057079,
		39.130135, 30.679800, 32.117764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484760, 30.436438, 32.726139>,  <38.432716, 30.724636, 32.077808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484760, 30.436438, 32.726139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831856, 30.613979, 32.636673>,  <39.040112, 30.720505, 32.582993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831856, 30.613979, 32.636673>,  <38.484760, 30.436438, 32.726139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831856, 30.613979, 32.636673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010019, 0.465546, 0.884967,
		0.496928, -0.765675, 0.408417,
		0.867734, 0.443857, -0.223672,
		39.092178, 30.747135, 32.569572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056660, 30.340843, 33.296726>,  <38.484760, 30.436438, 32.726139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056660, 30.340843, 33.296726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.137310, 30.677248, 33.095909>,  <39.185699, 30.879091, 32.975418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.137310, 30.677248, 33.095909>,  <39.056660, 30.340843, 33.296726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137310, 30.677248, 33.095909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039224, 0.505222, 0.862098,
		0.978677, -0.193512, 0.068877,
		0.201625, 0.841013, -0.502040,
		39.197796, 30.929552, 32.945297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552086, 30.617926, 33.794910>,  <39.056660, 30.340843, 33.296726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552086, 30.617926, 33.794910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.476238, 30.936905, 33.565784>,  <39.430729, 31.128292, 33.428307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.476238, 30.936905, 33.565784>,  <39.552086, 30.617926, 33.794910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476238, 30.936905, 33.565784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064088, 0.592210, 0.803231,
		0.979764, 0.115598, -0.163402,
		-0.189621, 0.797449, -0.572817,
		39.419353, 31.176140, 33.393940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062424, 31.061581, 34.027542>,  <39.552086, 30.617926, 33.794910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062424, 31.061581, 34.027542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791763, 31.274862, 33.824432>,  <39.629368, 31.402832, 33.702568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791763, 31.274862, 33.824432>,  <40.062424, 31.061581, 34.027542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791763, 31.274862, 33.824432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005614, 0.693343, 0.720585,
		0.736280, 0.484736, -0.472146,
		-0.676653, 0.533203, -0.507774,
		39.588768, 31.434824, 33.672100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174614, 31.756855, 34.115639>,  <40.062424, 31.061581, 34.027542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174614, 31.756855, 34.115639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794064, 31.772364, 33.993404>,  <39.565735, 31.781670, 33.920063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794064, 31.772364, 33.993404>,  <40.174614, 31.756855, 34.115639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794064, 31.772364, 33.993404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181793, 0.730194, 0.658610,
		0.248676, 0.682138, -0.687639,
		-0.951373, 0.038773, -0.305590,
		39.508652, 31.783995, 33.901726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005562, 32.406143, 33.929485>,  <40.174614, 31.756855, 34.115639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005562, 32.406143, 33.929485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.652622, 32.248295, 34.032036>,  <39.440857, 32.153584, 34.093567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.652622, 32.248295, 34.032036>,  <40.005562, 32.406143, 33.929485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652622, 32.248295, 34.032036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126678, 0.723860, 0.678218,
		-0.453219, 0.565950, -0.688689,
		-0.882352, -0.394623, 0.256374,
		39.387917, 32.129910, 34.108948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782673, 32.955933, 34.206665>,  <40.005562, 32.406143, 33.929485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782673, 32.955933, 34.206665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499737, 32.697220, 34.320747>,  <39.329975, 32.541992, 34.389194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499737, 32.697220, 34.320747>,  <39.782673, 32.955933, 34.206665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499737, 32.697220, 34.320747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214540, 0.580875, 0.785211,
		-0.673527, 0.494226, -0.549638,
		-0.707343, -0.646781, 0.285204,
		39.287533, 32.503185, 34.406307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117985, 33.498222, 33.823048>,  <39.782673, 32.955933, 34.206665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117985, 33.498222, 33.823048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439034, 33.735573, 33.798714>,  <40.631664, 33.877983, 33.784111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439034, 33.735573, 33.798714>,  <40.117985, 33.498222, 33.823048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439034, 33.735573, 33.798714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127279, -0.270020, -0.954405,
		-0.582747, 0.758285, -0.292249,
		0.802624, 0.593374, -0.060839,
		40.679821, 33.913586, 33.780460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009045, 33.961746, 33.340401>,  <40.117985, 33.498222, 33.823048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009045, 33.961746, 33.340401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.407425, 33.947678, 33.373516>,  <40.646454, 33.939236, 33.393387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.407425, 33.947678, 33.373516>,  <40.009045, 33.961746, 33.340401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407425, 33.947678, 33.373516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066959, -0.324658, -0.943458,
		0.060065, 0.945177, -0.320986,
		0.995946, -0.035176, 0.082788,
		40.706207, 33.937126, 33.398354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133503, 34.315262, 32.786205>,  <40.009045, 33.961746, 33.340401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133503, 34.315262, 32.786205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458134, 34.099724, 32.876537>,  <40.652912, 33.970402, 32.930737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458134, 34.099724, 32.876537>,  <40.133503, 34.315262, 32.786205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458134, 34.099724, 32.876537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152932, -0.177128, -0.972233,
		0.563881, 0.823575, -0.061346,
		0.811573, -0.538842, 0.225830,
		40.701607, 33.938072, 32.944286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620022, 34.471039, 32.309196>,  <40.133503, 34.315262, 32.786205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620022, 34.471039, 32.309196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747959, 34.117336, 32.445309>,  <40.824722, 33.905113, 32.526974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747959, 34.117336, 32.445309>,  <40.620022, 34.471039, 32.309196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747959, 34.117336, 32.445309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188083, -0.292739, -0.937512,
		0.928613, 0.363861, 0.072682,
		0.319847, -0.884256, 0.340277,
		40.843914, 33.852058, 32.547394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188065, 34.276276, 31.864752>,  <40.620022, 34.471039, 32.309196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188065, 34.276276, 31.864752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.028946, 33.954739, 32.041653>,  <40.933475, 33.761814, 32.147793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.028946, 33.954739, 32.041653>,  <41.188065, 34.276276, 31.864752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028946, 33.954739, 32.041653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129208, -0.526312, -0.840417,
		0.908329, -0.277173, 0.313230,
		-0.397798, -0.803847, 0.442252,
		40.909607, 33.713585, 32.174328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608974, 33.626190, 31.625673>,  <41.188065, 34.276276, 31.864752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608974, 33.626190, 31.625673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.279892, 33.442200, 31.759289>,  <41.082443, 33.331806, 31.839458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.279892, 33.442200, 31.759289>,  <41.608974, 33.626190, 31.625673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279892, 33.442200, 31.759289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003211, -0.591359, -0.806402,
		0.568465, -0.662356, 0.487989,
		-0.822702, -0.459978, 0.334040,
		41.033081, 33.304207, 31.859501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528492, 33.124653, 31.209908>,  <41.608974, 33.626190, 31.625673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528492, 33.124653, 31.209908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171543, 33.051258, 31.374830>,  <40.957375, 33.007221, 31.473783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171543, 33.051258, 31.374830>,  <41.528492, 33.124653, 31.209908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171543, 33.051258, 31.374830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253678, -0.551662, -0.794554,
		0.373245, -0.813635, 0.445743,
		-0.892377, -0.183488, 0.412306,
		40.903831, 32.996212, 31.498522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379021, 32.394009, 31.132965>,  <41.528492, 33.124653, 31.209908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379021, 32.394009, 31.132965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038521, 32.603645, 31.143539>,  <40.834221, 32.729427, 31.149883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038521, 32.603645, 31.143539>,  <41.379021, 32.394009, 31.132965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038521, 32.603645, 31.143539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294031, -0.434642, -0.851253,
		-0.434642, -0.732405, 0.524089,
		0.851253, -0.524089, -0.026436,
		40.783146, 32.760872, 31.151470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912075, 31.963812, 30.847794>,  <41.379021, 32.394009, 31.132965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912075, 31.963812, 30.847794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.714088, 32.309341, 30.810247>,  <40.595295, 32.516659, 30.787720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.714088, 32.309341, 30.810247>,  <40.912075, 31.963812, 30.847794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714088, 32.309341, 30.810247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447146, -0.345850, -0.824893,
		-0.745027, -0.366325, 0.557442,
		-0.494970, 0.863825, -0.093867,
		40.565598, 32.568489, 30.782087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257847, 31.724653, 30.680882>,  <40.912075, 31.963812, 30.847794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257847, 31.724653, 30.680882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305069, 32.097992, 30.545280>,  <40.333401, 32.321995, 30.463919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305069, 32.097992, 30.545280>,  <40.257847, 31.724653, 30.680882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305069, 32.097992, 30.545280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293628, -0.293315, -0.909807,
		-0.948602, 0.206948, 0.239430,
		0.118055, 0.933348, -0.339005,
		40.340485, 32.377995, 30.443579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656685, 31.853838, 30.352314>,  <40.257847, 31.724653, 30.680882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656685, 31.853838, 30.352314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929272, 32.107235, 30.205732>,  <40.092823, 32.259274, 30.117783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929272, 32.107235, 30.205732>,  <39.656685, 31.853838, 30.352314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929272, 32.107235, 30.205732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145020, -0.373906, -0.916058,
		-0.717334, 0.677409, -0.162937,
		0.681470, 0.633491, -0.366454,
		40.133713, 32.297283, 30.095797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373100, 32.165623, 29.803614>,  <39.656685, 31.853838, 30.352314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373100, 32.165623, 29.803614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766296, 32.213123, 29.747570>,  <40.002213, 32.241623, 29.713943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766296, 32.213123, 29.747570>,  <39.373100, 32.165623, 29.803614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766296, 32.213123, 29.747570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087443, -0.368261, -0.925601,
		-0.161514, 0.922107, -0.351612,
		0.982989, 0.118751, -0.140111,
		40.061192, 32.248749, 29.705536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425594, 32.542553, 29.044222>,  <39.373100, 32.165623, 29.803614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425594, 32.542553, 29.044222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805752, 32.450825, 29.128283>,  <40.033848, 32.395786, 29.178719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805752, 32.450825, 29.128283>,  <39.425594, 32.542553, 29.044222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805752, 32.450825, 29.128283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189085, -0.110518, -0.975722,
		0.246980, 0.967056, -0.061674,
		0.950394, -0.229322, 0.210151,
		40.090870, 32.382027, 29.191328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836056, 32.986366, 28.717335>,  <39.425594, 32.542553, 29.044222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836056, 32.986366, 28.717335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056362, 32.659157, 28.783659>,  <40.188545, 32.462830, 28.823454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056362, 32.659157, 28.783659>,  <39.836056, 32.986366, 28.717335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056362, 32.659157, 28.783659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293943, 0.004169, -0.955814,
		0.781189, 0.575167, 0.242748,
		0.550765, -0.818025, 0.165809,
		40.221592, 32.413750, 28.833403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832146, 33.551552, 28.305792>,  <39.836056, 32.986366, 28.717335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832146, 33.551552, 28.305792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.564461, 33.802444, 28.146423>,  <39.403851, 33.952980, 28.050802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.564461, 33.802444, 28.146423>,  <39.832146, 33.551552, 28.305792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564461, 33.802444, 28.146423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307810, 0.254021, 0.916911,
		0.676321, 0.736246, 0.023073,
		-0.669211, 0.627229, -0.398423,
		39.363697, 33.990612, 28.026896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872478, 34.267326, 28.612402>,  <39.832146, 33.551552, 28.305792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872478, 34.267326, 28.612402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.505978, 34.207783, 28.463631>,  <39.286079, 34.172058, 28.374367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.505978, 34.207783, 28.463631>,  <39.872478, 34.267326, 28.612402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505978, 34.207783, 28.463631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393657, 0.162299, 0.904817,
		-0.074323, 0.975449, -0.207304,
		-0.916248, -0.148855, -0.371930,
		39.231102, 34.163128, 28.352051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458675, 34.824741, 29.000893>,  <39.872478, 34.267326, 28.612402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458675, 34.824741, 29.000893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.187519, 34.568398, 28.856804>,  <39.024826, 34.414589, 28.770350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.187519, 34.568398, 28.856804>,  <39.458675, 34.824741, 29.000893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187519, 34.568398, 28.856804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492382, 0.031925, 0.869793,
		-0.545919, 0.766990, -0.337191,
		-0.677888, -0.640864, -0.360224,
		38.984154, 34.376137, 28.748737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762878, 35.161636, 29.093840>,  <39.458675, 34.824741, 29.000893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762878, 35.161636, 29.093840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721504, 34.766533, 29.047129>,  <38.696682, 34.529472, 29.019102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721504, 34.766533, 29.047129>,  <38.762878, 35.161636, 29.093840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721504, 34.766533, 29.047129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635749, -0.024639, 0.771503,
		-0.764935, 0.154039, -0.625417,
		-0.103432, -0.987757, -0.116777,
		38.690475, 34.470207, 29.012096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964062, 35.034985, 29.167446>,  <38.762878, 35.161636, 29.093840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964062, 35.034985, 29.167446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132725, 34.674099, 29.203691>,  <38.233925, 34.457569, 29.225439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132725, 34.674099, 29.203691>,  <37.964062, 35.034985, 29.167446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132725, 34.674099, 29.203691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724956, -0.275407, 0.631340,
		-0.544649, -0.331901, -0.770194,
		0.421660, -0.902216, 0.090614,
		38.259224, 34.403435, 29.230875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411869, 34.611858, 29.272573>,  <37.964062, 35.034985, 29.167446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411869, 34.611858, 29.272573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711975, 34.402279, 29.433863>,  <37.892036, 34.276531, 29.530636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711975, 34.402279, 29.433863>,  <37.411869, 34.611858, 29.272573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711975, 34.402279, 29.433863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583036, -0.236766, 0.777181,
		-0.311733, -0.818182, -0.483117,
		0.750261, -0.523947, 0.403222,
		37.937054, 34.245094, 29.554831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196224, 33.897831, 29.378990>,  <37.411869, 34.611858, 29.272573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196224, 33.897831, 29.378990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503956, 33.994854, 29.615396>,  <37.688595, 34.053066, 29.757240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503956, 33.994854, 29.615396>,  <37.196224, 33.897831, 29.378990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503956, 33.994854, 29.615396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552443, -0.212019, 0.806136,
		0.320841, -0.946686, -0.029113,
		0.769329, 0.242558, 0.591014,
		37.734756, 34.067619, 29.792700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251770, 33.301758, 29.877060>,  <37.196224, 33.897831, 29.378990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251770, 33.301758, 29.877060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444439, 33.600647, 30.060209>,  <37.560040, 33.779980, 30.170099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444439, 33.600647, 30.060209>,  <37.251770, 33.301758, 29.877060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444439, 33.600647, 30.060209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456088, -0.232398, 0.859055,
		0.748316, -0.622612, 0.228861,
		0.481671, 0.747225, 0.457873,
		37.588940, 33.824814, 30.197571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465107, 33.000793, 30.548517>,  <37.251770, 33.301758, 29.877060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465107, 33.000793, 30.548517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.536030, 33.390564, 30.603737>,  <37.578583, 33.624424, 30.636869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.536030, 33.390564, 30.603737>,  <37.465107, 33.000793, 30.548517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536030, 33.390564, 30.603737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410155, -0.054346, 0.910395,
		0.894614, -0.218044, 0.390029,
		0.177310, 0.974425, 0.138051,
		37.589222, 33.682892, 30.645151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857628, 33.097858, 31.187660>,  <37.465107, 33.000793, 30.548517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857628, 33.097858, 31.187660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.674637, 33.447517, 31.122448>,  <37.564842, 33.657310, 31.083321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.674637, 33.447517, 31.122448>,  <37.857628, 33.097858, 31.187660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674637, 33.447517, 31.122448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415225, -0.047875, 0.908458,
		0.786320, 0.483298, 0.384869,
		-0.457482, 0.874146, -0.163032,
		37.537392, 33.709763, 31.073538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105579, 33.601265, 31.651604>,  <37.857628, 33.097858, 31.187660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105579, 33.601265, 31.651604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.725677, 33.673172, 31.549109>,  <37.497738, 33.716316, 31.487612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.725677, 33.673172, 31.549109>,  <38.105579, 33.601265, 31.651604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725677, 33.673172, 31.549109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288699, -0.186813, 0.939017,
		0.120936, 0.965808, 0.229325,
		-0.949751, 0.179767, -0.256236,
		37.440754, 33.727100, 31.472239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919582, 34.066418, 32.127544>,  <38.105579, 33.601265, 31.651604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919582, 34.066418, 32.127544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616344, 33.860924, 31.966860>,  <37.434402, 33.737625, 31.870451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616344, 33.860924, 31.966860>,  <37.919582, 34.066418, 32.127544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616344, 33.860924, 31.966860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477311, 0.017365, 0.878563,
		-0.444376, 0.857771, -0.258377,
		-0.758092, -0.513739, -0.401707,
		37.388916, 33.706802, 31.846348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.940681, 32.906879, 24.796295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563152, 32.890869, 24.665091>,  <40.336636, 32.881264, 24.586369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563152, 32.890869, 24.665091>,  <40.940681, 32.906879, 24.796295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563152, 32.890869, 24.665091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279272, 0.627221, 0.727049,
		0.176637, 0.777812, -0.603165,
		-0.943825, -0.040023, -0.328012,
		40.280006, 32.878860, 24.566687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771366, 33.682697, 24.732130>,  <40.940681, 32.906879, 24.796295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771366, 33.682697, 24.732130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438747, 33.472214, 24.803270>,  <40.239174, 33.345924, 24.845955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438747, 33.472214, 24.803270>,  <40.771366, 33.682697, 24.732130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438747, 33.472214, 24.803270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283316, 0.677222, 0.679045,
		-0.477763, 0.514272, -0.712227,
		-0.831549, -0.526208, 0.177850,
		40.189281, 33.314350, 24.856625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232819, 34.197071, 24.841492>,  <40.771366, 33.682697, 24.732130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232819, 34.197071, 24.841492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089413, 33.859322, 25.000740>,  <40.003368, 33.656673, 25.096289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089413, 33.859322, 25.000740>,  <40.232819, 34.197071, 24.841492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089413, 33.859322, 25.000740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258886, 0.499674, 0.826622,
		-0.896909, 0.193288, -0.397737,
		-0.358515, -0.844373, 0.398123,
		39.981857, 33.606010, 25.120176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632034, 34.414528, 25.222151>,  <40.232819, 34.197071, 24.841492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632034, 34.414528, 25.222151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702255, 34.049816, 25.370661>,  <39.744389, 33.830990, 25.459766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702255, 34.049816, 25.370661>,  <39.632034, 34.414528, 25.222151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702255, 34.049816, 25.370661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229287, 0.328892, 0.916110,
		-0.957397, -0.245953, -0.151321,
		0.175552, -0.911777, 0.371274,
		39.754921, 33.776283, 25.482042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127861, 34.340847, 25.833002>,  <39.632034, 34.414528, 25.222151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127861, 34.340847, 25.833002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379097, 34.039612, 25.911348>,  <39.529839, 33.858871, 25.958357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379097, 34.039612, 25.911348>,  <39.127861, 34.340847, 25.833002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379097, 34.039612, 25.911348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258673, 0.035326, 0.965319,
		-0.733891, -0.656968, -0.172617,
		0.628086, -0.753091, 0.195865,
		39.567524, 33.813686, 25.970108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720688, 33.864536, 26.362017>,  <39.127861, 34.340847, 25.833002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720688, 33.864536, 26.362017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113647, 33.795197, 26.389841>,  <39.349422, 33.753593, 26.406536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113647, 33.795197, 26.389841>,  <38.720688, 33.864536, 26.362017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113647, 33.795197, 26.389841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083200, -0.072687, 0.993878,
		-0.167231, -0.982175, -0.085830,
		0.982401, -0.173349, 0.069562,
		39.408367, 33.743195, 26.410709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870499, 33.225655, 26.721951>,  <38.720688, 33.864536, 26.362017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870499, 33.225655, 26.721951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192898, 33.456451, 26.774796>,  <39.386337, 33.594929, 26.806503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192898, 33.456451, 26.774796>,  <38.870499, 33.225655, 26.721951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192898, 33.456451, 26.774796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216678, 0.079897, 0.972968,
		0.550838, -0.812833, 0.189418,
		0.805995, 0.576991, 0.132113,
		39.434696, 33.629547, 26.814430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113224, 32.933006, 27.297821>,  <38.870499, 33.225655, 26.721951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113224, 32.933006, 27.297821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243233, 33.307701, 27.245842>,  <39.321239, 33.532516, 27.214655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243233, 33.307701, 27.245842>,  <39.113224, 32.933006, 27.297821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243233, 33.307701, 27.245842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233068, 0.212510, 0.948957,
		0.916537, -0.278146, 0.287394,
		0.325022, 0.936736, -0.129946,
		39.340740, 33.588722, 27.206858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621845, 33.118431, 27.702684>,  <39.113224, 32.933006, 27.297821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621845, 33.118431, 27.702684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500111, 33.492687, 27.631186>,  <39.427071, 33.717243, 27.588287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500111, 33.492687, 27.631186>,  <39.621845, 33.118431, 27.702684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500111, 33.492687, 27.631186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227961, 0.110656, 0.967362,
		0.924885, 0.335152, 0.179613,
		-0.304338, 0.935643, -0.178746,
		39.408810, 33.773380, 27.577562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404655, 32.967880, 28.060019>,  <39.621845, 33.118431, 27.702684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404655, 32.967880, 28.060019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433064, 32.615089, 28.246386>,  <40.450108, 32.403416, 28.358206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433064, 32.615089, 28.246386>,  <40.404655, 32.967880, 28.060019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433064, 32.615089, 28.246386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214520, -0.442660, -0.870651,
		0.974134, 0.161780, 0.157765,
		0.071018, -0.881975, 0.465916,
		40.454369, 32.350498, 28.386160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983112, 32.654362, 27.681881>,  <40.404655, 32.967880, 28.060019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983112, 32.654362, 27.681881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769112, 32.363117, 27.853289>,  <40.640713, 32.188370, 27.956133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769112, 32.363117, 27.853289>,  <40.983112, 32.654362, 27.681881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769112, 32.363117, 27.853289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040364, -0.528661, -0.847872,
		0.843885, -0.436317, 0.312225,
		-0.535003, -0.728110, 0.428518,
		40.608612, 32.144684, 27.981844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381718, 32.039822, 27.541706>,  <40.983112, 32.654362, 27.681881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381718, 32.039822, 27.541706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011211, 31.917530, 27.629847>,  <40.788906, 31.844154, 27.682732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011211, 31.917530, 27.629847>,  <41.381718, 32.039822, 27.541706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011211, 31.917530, 27.629847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002641, -0.589952, -0.807434,
		0.376853, -0.747319, 0.547262,
		-0.926269, -0.305729, 0.220351,
		40.733330, 31.825811, 27.695951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494896, 31.400507, 27.574017>,  <41.381718, 32.039822, 27.541706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494896, 31.400507, 27.574017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104622, 31.452723, 27.503597>,  <40.870457, 31.484053, 27.461346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104622, 31.452723, 27.503597>,  <41.494896, 31.400507, 27.574017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104622, 31.452723, 27.503597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057581, -0.622366, -0.780606,
		-0.211468, -0.771764, 0.599718,
		-0.975687, 0.130540, -0.176050,
		40.811916, 31.491884, 27.450783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302532, 30.796850, 27.496414>,  <41.494896, 31.400507, 27.574017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302532, 30.796850, 27.496414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019852, 31.011930, 27.312479>,  <40.850243, 31.140980, 27.202118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019852, 31.011930, 27.312479>,  <41.302532, 30.796850, 27.496414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019852, 31.011930, 27.312479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109220, -0.725055, -0.679975,
		-0.699034, -0.430313, 0.571123,
		-0.706698, 0.537704, -0.459840,
		40.807842, 31.173241, 27.174528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736012, 30.349098, 27.227552>,  <41.302532, 30.796850, 27.496414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736012, 30.349098, 27.227552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708687, 30.678202, 27.001842>,  <40.692291, 30.875664, 26.866417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708687, 30.678202, 27.001842>,  <40.736012, 30.349098, 27.227552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708687, 30.678202, 27.001842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257481, -0.560974, -0.786773,
		-0.963866, 0.091541, 0.250166,
		-0.068315, 0.822757, -0.564274,
		40.688194, 30.925028, 26.832560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047592, 30.370827, 26.807777>,  <40.736012, 30.349098, 27.227552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047592, 30.370827, 26.807777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313454, 30.591982, 26.606762>,  <40.472969, 30.724676, 26.486153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313454, 30.591982, 26.606762>,  <40.047592, 30.370827, 26.807777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313454, 30.591982, 26.606762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178418, -0.535699, -0.825344,
		-0.725535, 0.638231, -0.257409,
		0.664654, 0.552890, -0.502541,
		40.512852, 30.757849, 26.455999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753315, 30.361521, 26.146767>,  <40.047592, 30.370827, 26.807777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753315, 30.361521, 26.146767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132362, 30.478765, 26.095995>,  <40.359791, 30.549112, 26.065531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132362, 30.478765, 26.095995>,  <39.753315, 30.361521, 26.146767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132362, 30.478765, 26.095995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047589, -0.522508, -0.851305,
		-0.315849, 0.800670, -0.509085,
		0.947615, 0.293110, -0.126930,
		40.416649, 30.566698, 26.057917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832111, 30.645851, 25.433092>,  <39.753315, 30.361521, 26.146767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832111, 30.645851, 25.433092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198872, 30.569361, 25.573225>,  <40.418926, 30.523466, 25.657305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198872, 30.569361, 25.573225>,  <39.832111, 30.645851, 25.433092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198872, 30.569361, 25.573225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223696, -0.480718, -0.847862,
		0.330544, 0.855770, -0.397992,
		0.916897, -0.191227, 0.350331,
		40.473942, 30.511993, 25.678324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222900, 30.667103, 24.819685>,  <39.832111, 30.645851, 25.433092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222900, 30.667103, 24.819685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434132, 30.486444, 25.107338>,  <40.560871, 30.378050, 25.279930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434132, 30.486444, 25.107338>,  <40.222900, 30.667103, 24.819685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434132, 30.486444, 25.107338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299127, -0.693631, -0.655286,
		0.794770, 0.561152, -0.231189,
		0.528075, -0.451646, 0.719133,
		40.592556, 30.350950, 25.323078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602676, 30.263506, 24.507183>,  <40.222900, 30.667103, 24.819685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602676, 30.263506, 24.507183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740929, 30.099083, 24.844601>,  <40.823879, 30.000429, 25.047052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740929, 30.099083, 24.844601>,  <40.602676, 30.263506, 24.507183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740929, 30.099083, 24.844601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313192, -0.796867, -0.516637,
		0.884560, 0.442760, -0.146686,
		0.345635, -0.411056, 0.843546,
		40.844620, 29.975765, 25.097664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311565, 30.124601, 24.401600>,  <40.602676, 30.263506, 24.507183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311565, 30.124601, 24.401600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162907, 29.891884, 24.690985>,  <41.073711, 29.752253, 24.864614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162907, 29.891884, 24.690985>,  <41.311565, 30.124601, 24.401600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162907, 29.891884, 24.690985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305479, -0.812517, -0.496487,
		0.876678, 0.036486, 0.479692,
		-0.371643, -0.581795, 0.723461,
		41.051414, 29.717346, 24.908024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879002, 29.606213, 24.691284>,  <41.311565, 30.124601, 24.401600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879002, 29.606213, 24.691284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510761, 29.475042, 24.776091>,  <41.289818, 29.396339, 24.826975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510761, 29.475042, 24.776091>,  <41.879002, 29.606213, 24.691284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510761, 29.475042, 24.776091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220402, -0.884542, -0.411106,
		0.322348, -0.331738, 0.886590,
		-0.920606, -0.327925, 0.212015,
		41.234581, 29.376665, 24.839695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887897, 28.923237, 24.984779>,  <41.879002, 29.606213, 24.691284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887897, 28.923237, 24.984779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521374, 28.936230, 24.825119>,  <41.301460, 28.944025, 24.729322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521374, 28.936230, 24.825119>,  <41.887897, 28.923237, 24.984779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521374, 28.936230, 24.825119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182230, -0.853717, -0.487811,
		-0.356607, -0.519723, 0.776350,
		-0.916310, 0.032483, -0.399151,
		41.246479, 28.945974, 24.705374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.788139, 28.743965, 23.583649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.135075, 28.943054, 23.584593>,  <33.343235, 29.062508, 23.585159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.135075, 28.943054, 23.584593>,  <32.788139, 28.743965, 23.583649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135075, 28.943054, 23.584593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014586, -0.030153, 0.999439,
		0.497513, -0.866813, -0.033412,
		0.867334, 0.497721, 0.002358,
		33.395275, 29.092371, 23.585300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360878, 28.471323, 23.965708>,  <32.788139, 28.743965, 23.583649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360878, 28.471323, 23.965708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.411186, 28.868143, 23.967316>,  <33.441372, 29.106236, 23.968281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.411186, 28.868143, 23.967316>,  <33.360878, 28.471323, 23.965708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411186, 28.868143, 23.967316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081710, -0.014396, 0.996552,
		0.988689, -0.125004, -0.082871,
		0.125766, 0.992052, 0.004019,
		33.448917, 29.165758, 23.968521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831543, 28.550219, 24.587849>,  <33.360878, 28.471323, 23.965708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831543, 28.550219, 24.587849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.718269, 28.924152, 24.502159>,  <33.650303, 29.148512, 24.450745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.718269, 28.924152, 24.502159>,  <33.831543, 28.550219, 24.587849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718269, 28.924152, 24.502159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292127, 0.296834, 0.909149,
		0.913491, 0.194879, -0.357149,
		-0.283188, 0.934833, -0.214226,
		33.633312, 29.204601, 24.437891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438568, 29.032511, 24.698296>,  <33.831543, 28.550219, 24.587849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438568, 29.032511, 24.698296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090527, 29.229221, 24.711374>,  <33.881702, 29.347248, 24.719221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090527, 29.229221, 24.711374>,  <34.438568, 29.032511, 24.698296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090527, 29.229221, 24.711374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270646, 0.421304, 0.865594,
		0.411905, 0.762008, -0.499677,
		-0.870106, 0.491778, 0.032697,
		33.829494, 29.376755, 24.721184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616619, 29.461704, 25.246883>,  <34.438568, 29.032511, 24.698296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616619, 29.461704, 25.246883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221115, 29.510849, 25.212814>,  <33.983810, 29.540337, 25.192373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221115, 29.510849, 25.212814>,  <34.616619, 29.461704, 25.246883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221115, 29.510849, 25.212814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030726, 0.390544, 0.920071,
		0.146305, 0.912349, -0.382381,
		-0.988762, 0.122862, -0.085171,
		33.924488, 29.547707, 25.187263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548153, 30.099495, 25.393162>,  <34.616619, 29.461704, 25.246883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548153, 30.099495, 25.393162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197819, 29.921803, 25.468609>,  <33.987617, 29.815187, 25.513878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197819, 29.921803, 25.468609>,  <34.548153, 30.099495, 25.393162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197819, 29.921803, 25.468609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050183, 0.304879, 0.951068,
		-0.480002, 0.842441, -0.244730,
		-0.875831, -0.444233, 0.188619,
		33.935070, 29.788532, 25.525194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967049, 30.721281, 25.619965>,  <34.548153, 30.099495, 25.393162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967049, 30.721281, 25.619965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861359, 30.357397, 25.748095>,  <33.797943, 30.139067, 25.824972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861359, 30.357397, 25.748095>,  <33.967049, 30.721281, 25.619965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861359, 30.357397, 25.748095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040354, 0.342268, 0.938735,
		-0.963616, 0.235111, -0.127146,
		-0.264225, -0.909712, 0.320327,
		33.782093, 30.084484, 25.844193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381512, 30.844303, 26.074774>,  <33.967049, 30.721281, 25.619965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381512, 30.844303, 26.074774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517014, 30.480848, 26.172447>,  <33.598316, 30.262775, 26.231050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517014, 30.480848, 26.172447>,  <33.381512, 30.844303, 26.074774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517014, 30.480848, 26.172447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102615, 0.293659, 0.950387,
		-0.935261, -0.296895, 0.192719,
		0.338759, -0.908635, 0.244182,
		33.618641, 30.208258, 26.245701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127758, 30.787666, 26.751610>,  <33.381512, 30.844303, 26.074774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127758, 30.787666, 26.751610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.406845, 30.501188, 26.758068>,  <33.574295, 30.329302, 26.761944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.406845, 30.501188, 26.758068>,  <33.127758, 30.787666, 26.751610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406845, 30.501188, 26.758068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044283, -0.020622, 0.998806,
		-0.715006, -0.697596, -0.046103,
		0.697714, -0.716194, 0.016147,
		33.616158, 30.286329, 26.762913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906414, 30.341965, 27.263901>,  <33.127758, 30.787666, 26.751610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906414, 30.341965, 27.263901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296318, 30.264830, 27.218904>,  <33.530262, 30.218550, 27.191908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296318, 30.264830, 27.218904>,  <32.906414, 30.341965, 27.263901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296318, 30.264830, 27.218904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107222, -0.037574, 0.993525,
		-0.195816, -0.980511, -0.015949,
		0.974761, -0.192838, -0.112490,
		33.588745, 30.206978, 27.185158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056526, 29.749189, 27.754402>,  <32.906414, 30.341965, 27.263901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056526, 29.749189, 27.754402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.392395, 29.948471, 27.667919>,  <33.593918, 30.068039, 27.616030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.392395, 29.948471, 27.667919>,  <33.056526, 29.749189, 27.754402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392395, 29.948471, 27.667919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149108, 0.171329, 0.973865,
		0.522225, -0.849965, 0.069574,
		0.839671, 0.498202, -0.216209,
		33.644295, 30.097931, 27.603056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541260, 29.388344, 28.006287>,  <33.056526, 29.749189, 27.754402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541260, 29.388344, 28.006287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.700741, 29.753881, 27.975487>,  <33.796429, 29.973204, 27.957006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.700741, 29.753881, 27.975487>,  <33.541260, 29.388344, 28.006287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700741, 29.753881, 27.975487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148009, 0.018743, 0.988808,
		0.905058, -0.405636, -0.127784,
		0.398701, 0.913843, -0.077001,
		33.820351, 30.028034, 27.952387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069923, 29.452999, 28.588032>,  <33.541260, 29.388344, 28.006287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069923, 29.452999, 28.588032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067005, 29.830370, 28.455433>,  <34.065254, 30.056793, 28.375874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.067005, 29.830370, 28.455433>,  <34.069923, 29.452999, 28.588032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067005, 29.830370, 28.455433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121272, 0.329892, 0.936197,
		0.992592, -0.033372, -0.116818,
		-0.007295, 0.943428, -0.331496,
		34.064816, 30.113398, 28.355984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803051, 29.847273, 28.570225>,  <34.069923, 29.452999, 28.588032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803051, 29.847273, 28.570225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498833, 30.104658, 28.604939>,  <34.316303, 30.259089, 28.625767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498833, 30.104658, 28.604939>,  <34.803051, 29.847273, 28.570225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498833, 30.104658, 28.604939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350591, 0.294481, 0.889026,
		0.546497, 0.706568, -0.449558,
		-0.760544, 0.643461, 0.086783,
		34.270668, 30.297697, 28.630974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584896, 29.804907, 28.958187>,  <34.803051, 29.847273, 28.570225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584896, 29.804907, 28.958187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751625, 29.517153, 29.180447>,  <35.851662, 29.344500, 29.313803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751625, 29.517153, 29.180447>,  <35.584896, 29.804907, 28.958187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751625, 29.517153, 29.180447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079640, -0.637832, -0.766047,
		0.905493, 0.275052, -0.323153,
		0.416820, -0.719386, 0.555647,
		35.876671, 29.301336, 29.347141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083500, 29.525469, 28.607267>,  <35.584896, 29.804907, 28.958187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083500, 29.525469, 28.607267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984398, 29.227943, 28.855577>,  <35.924938, 29.049429, 29.004564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984398, 29.227943, 28.855577>,  <36.083500, 29.525469, 28.607267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984398, 29.227943, 28.855577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043384, -0.648626, -0.759869,
		0.967851, -0.161329, 0.192969,
		-0.247754, -0.743812, 0.620775,
		35.910072, 29.004799, 29.041809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660587, 29.007999, 28.459625>,  <36.083500, 29.525469, 28.607267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660587, 29.007999, 28.459625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342209, 28.821589, 28.614176>,  <36.151180, 28.709742, 28.706907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342209, 28.821589, 28.614176>,  <36.660587, 29.007999, 28.459625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342209, 28.821589, 28.614176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076317, -0.555917, -0.827727,
		0.600536, -0.688314, 0.406914,
		-0.795947, -0.466026, 0.386379,
		36.103424, 28.681782, 28.730089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741825, 28.304901, 28.271008>,  <36.660587, 29.007999, 28.459625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741825, 28.304901, 28.271008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.355122, 28.341854, 28.366377>,  <36.123100, 28.364025, 28.423599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.355122, 28.341854, 28.366377>,  <36.741825, 28.304901, 28.271008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355122, 28.341854, 28.366377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247985, -0.566029, -0.786203,
		0.062325, -0.819193, 0.570122,
		-0.966757, 0.092382, 0.238425,
		36.065094, 28.369568, 28.437904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461830, 27.598797, 28.097872>,  <36.741825, 28.304901, 28.271008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461830, 27.598797, 28.097872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180775, 27.883110, 28.084711>,  <36.012142, 28.053698, 28.076815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.180775, 27.883110, 28.084711>,  <36.461830, 27.598797, 28.097872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180775, 27.883110, 28.084711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191472, -0.233407, -0.953341,
		-0.685301, -0.663555, 0.300096,
		-0.702639, 0.710786, -0.032902,
		35.969982, 28.096346, 28.074841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878544, 27.181953, 27.970259>,  <36.461830, 27.598797, 28.097872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878544, 27.181953, 27.970259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827499, 27.570745, 27.891294>,  <35.796871, 27.804020, 27.843916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827499, 27.570745, 27.891294>,  <35.878544, 27.181953, 27.970259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827499, 27.570745, 27.891294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251926, -0.224275, -0.941400,
		-0.959296, -0.070402, 0.273488,
		-0.127613, 0.971980, -0.197410,
		35.789215, 27.862339, 27.832071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597576, 27.070602, 27.341141>,  <35.878544, 27.181953, 27.970259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597576, 27.070602, 27.341141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.641617, 27.468119, 27.347511>,  <35.668041, 27.706629, 27.351334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.641617, 27.468119, 27.347511>,  <35.597576, 27.070602, 27.341141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641617, 27.468119, 27.347511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210302, 0.038954, -0.976860,
		-0.971417, 0.104204, 0.213286,
		0.110101, 0.993793, 0.015926,
		35.674648, 27.766256, 27.352289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020813, 27.311020, 26.969847>,  <35.597576, 27.070602, 27.341141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020813, 27.311020, 26.969847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313751, 27.581596, 26.938610>,  <35.489513, 27.743942, 26.919868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313751, 27.581596, 26.938610>,  <35.020813, 27.311020, 26.969847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313751, 27.581596, 26.938610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124749, 0.020542, -0.991976,
		-0.669408, 0.736211, 0.099429,
		0.732346, 0.676440, -0.078091,
		35.533455, 27.784529, 26.915182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846001, 27.695726, 26.425783>,  <35.020813, 27.311020, 26.969847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846001, 27.695726, 26.425783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.233433, 27.785130, 26.469419>,  <35.465893, 27.838772, 26.495602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.233433, 27.785130, 26.469419>,  <34.846001, 27.695726, 26.425783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233433, 27.785130, 26.469419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096874, 0.064947, -0.993175,
		-0.229066, 0.972536, 0.041254,
		0.968579, 0.223506, 0.109091,
		35.524006, 27.852180, 26.502146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924763, 28.257214, 25.953323>,  <34.846001, 27.695726, 26.425783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924763, 28.257214, 25.953323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.266556, 28.054594, 25.999405>,  <35.471630, 27.933022, 26.027054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.266556, 28.054594, 25.999405>,  <34.924763, 28.257214, 25.953323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266556, 28.054594, 25.999405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095565, -0.064702, -0.993318,
		0.510619, 0.859779, -0.006878,
		0.854480, -0.506550, 0.115203,
		35.522900, 27.902630, 26.033966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423607, 28.537483, 25.563644>,  <34.924763, 28.257214, 25.953323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423607, 28.537483, 25.563644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.570095, 28.167067, 25.600145>,  <35.657990, 27.944817, 25.622046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.570095, 28.167067, 25.600145>,  <35.423607, 28.537483, 25.563644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570095, 28.167067, 25.600145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214428, -0.011444, -0.976673,
		0.905485, 0.377245, 0.194378,
		0.366221, -0.926043, 0.091255,
		35.679962, 27.889254, 25.627522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979614, 28.637220, 25.196316>,  <35.423607, 28.537483, 25.563644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979614, 28.637220, 25.196316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.890018, 28.247782, 25.213943>,  <35.836262, 28.014118, 25.224520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.890018, 28.247782, 25.213943>,  <35.979614, 28.637220, 25.196316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890018, 28.247782, 25.213943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306162, -0.113222, -0.945222,
		0.925253, -0.198228, 0.323438,
		-0.223990, -0.973594, 0.044069,
		35.822823, 27.955704, 25.227163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528805, 28.349964, 24.930796>,  <35.979614, 28.637220, 25.196316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528805, 28.349964, 24.930796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244392, 28.071997, 24.887844>,  <36.073746, 27.905216, 24.862074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244392, 28.071997, 24.887844>,  <36.528805, 28.349964, 24.930796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244392, 28.071997, 24.887844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250744, -0.107907, -0.962021,
		0.656939, -0.710946, 0.250971,
		-0.711027, -0.694919, -0.107377,
		36.031086, 27.863522, 24.855631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879795, 27.883247, 24.510647>,  <36.528805, 28.349964, 24.930796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879795, 27.883247, 24.510647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495335, 27.774622, 24.490887>,  <36.264660, 27.709448, 24.479031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495335, 27.774622, 24.490887>,  <36.879795, 27.883247, 24.510647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495335, 27.774622, 24.490887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094920, -0.157130, -0.983006,
		0.259184, -0.949508, 0.176803,
		-0.961152, -0.271562, -0.049402,
		36.206989, 27.693153, 24.476067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117111, 27.311146, 24.880852>,  <36.879795, 27.883247, 24.510647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117111, 27.311146, 24.880852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.512234, 27.278994, 24.934179>,  <37.749310, 27.259703, 24.966175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.512234, 27.278994, 24.934179>,  <37.117111, 27.311146, 24.880852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512234, 27.278994, 24.934179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094822, 0.368516, 0.924773,
		-0.123465, -0.926140, 0.356401,
		0.987808, -0.080382, 0.133318,
		37.808575, 27.254879, 24.974174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214840, 27.211691, 25.557026>,  <37.117111, 27.311146, 24.880852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214840, 27.211691, 25.557026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594040, 27.317930, 25.486874>,  <37.821560, 27.381674, 25.444782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594040, 27.317930, 25.486874>,  <37.214840, 27.211691, 25.557026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594040, 27.317930, 25.486874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097258, 0.282939, 0.954194,
		0.303065, -0.921628, 0.242392,
		0.947994, 0.265608, -0.175384,
		37.878441, 27.397610, 25.434259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675159, 26.924202, 25.991711>,  <37.214840, 27.211691, 25.557026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675159, 26.924202, 25.991711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892605, 27.241817, 25.882906>,  <38.023071, 27.432386, 25.817623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892605, 27.241817, 25.882906>,  <37.675159, 26.924202, 25.991711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892605, 27.241817, 25.882906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043104, 0.297240, 0.953829,
		0.838231, -0.530235, 0.127356,
		0.543609, 0.794040, -0.272011,
		38.055687, 27.480030, 25.801302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388542, 26.949375, 26.405695>,  <37.675159, 26.924202, 25.991711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388542, 26.949375, 26.405695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280350, 27.311623, 26.275042>,  <38.215435, 27.528971, 26.196650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280350, 27.311623, 26.275042>,  <38.388542, 26.949375, 26.405695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280350, 27.311623, 26.275042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125172, 0.369482, 0.920769,
		0.954552, 0.208168, -0.213297,
		-0.270484, 0.905621, -0.326633,
		38.199203, 27.583309, 26.177052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934238, 27.472343, 26.658409>,  <38.388542, 26.949375, 26.405695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934238, 27.472343, 26.658409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.638996, 27.713280, 26.536829>,  <38.461853, 27.857841, 26.463881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.638996, 27.713280, 26.536829>,  <38.934238, 27.472343, 26.658409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638996, 27.713280, 26.536829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211473, 0.634349, 0.743560,
		0.640689, 0.484547, -0.595594,
		-0.738104, 0.602342, -0.303951,
		38.417564, 27.893982, 26.445644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201626, 28.139904, 26.651836>,  <38.934238, 27.472343, 26.658409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201626, 28.139904, 26.651836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.808678, 28.201803, 26.693810>,  <38.572910, 28.238943, 26.718994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.808678, 28.201803, 26.693810>,  <39.201626, 28.139904, 26.651836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808678, 28.201803, 26.693810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183468, 0.689762, 0.700405,
		0.036007, 0.707306, -0.705990,
		-0.982366, 0.154746, 0.104932,
		38.513969, 28.248226, 26.725288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082645, 28.848543, 26.725401>,  <39.201626, 28.139904, 26.651836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082645, 28.848543, 26.725401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751160, 28.696974, 26.890158>,  <38.552269, 28.606031, 26.989012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751160, 28.696974, 26.890158>,  <39.082645, 28.848543, 26.725401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751160, 28.696974, 26.890158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110883, 0.610199, 0.784450,
		-0.548583, 0.695754, -0.463662,
		-0.828711, -0.378924, 0.411893,
		38.502548, 28.583296, 27.013725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766640, 29.416397, 27.105801>,  <39.082645, 28.848543, 26.725401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766640, 29.416397, 27.105801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.585781, 29.091541, 27.253307>,  <38.477264, 28.896627, 27.341812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.585781, 29.091541, 27.253307>,  <38.766640, 29.416397, 27.105801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585781, 29.091541, 27.253307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041488, 0.432146, 0.900849,
		-0.890976, 0.392020, -0.229089,
		-0.452151, -0.812139, 0.368767,
		38.450134, 28.847900, 27.363937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513500, 29.724834, 27.770910>,  <38.766640, 29.416397, 27.105801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513500, 29.724834, 27.770910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404854, 29.340803, 27.797680>,  <38.339668, 29.110384, 27.813742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404854, 29.340803, 27.797680>,  <38.513500, 29.724834, 27.770910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404854, 29.340803, 27.797680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113485, 0.101004, 0.988392,
		-0.955692, 0.260866, -0.136388,
		-0.271614, -0.960077, 0.066924,
		38.323368, 29.052780, 27.817757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848900, 29.565018, 28.199860>,  <38.513500, 29.724834, 27.770910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848900, 29.565018, 28.199860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.123428, 29.274126, 28.204012>,  <38.288143, 29.099590, 28.206503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.123428, 29.274126, 28.204012>,  <37.848900, 29.565018, 28.199860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123428, 29.274126, 28.204012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147828, 0.153457, 0.977035,
		-0.712121, -0.669021, 0.212825,
		0.686316, -0.727229, 0.010380,
		38.329323, 29.055958, 28.207127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591343, 29.105133, 28.720634>,  <37.848900, 29.565018, 28.199860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591343, 29.105133, 28.720634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.985943, 29.046959, 28.690531>,  <38.222702, 29.012054, 28.672468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.985943, 29.046959, 28.690531>,  <37.591343, 29.105133, 28.720634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985943, 29.046959, 28.690531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100094, 0.171796, 0.980034,
		-0.129604, -0.974338, 0.184034,
		0.986501, -0.145437, -0.075260,
		38.281895, 29.003328, 28.667953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870834, 28.778292, 29.321878>,  <37.591343, 29.105133, 28.720634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870834, 28.778292, 29.321878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205147, 28.932632, 29.165630>,  <38.405735, 29.025238, 29.071882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205147, 28.932632, 29.165630>,  <37.870834, 28.778292, 29.321878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205147, 28.932632, 29.165630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320702, 0.234396, 0.917719,
		0.445666, -0.892286, 0.072159,
		0.835782, 0.385855, -0.390621,
		38.455883, 29.048389, 29.048445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474068, 28.354904, 29.749027>,  <37.870834, 28.778292, 29.321878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474068, 28.354904, 29.749027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590897, 28.701473, 29.587038>,  <38.660995, 28.909414, 29.489845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590897, 28.701473, 29.587038>,  <38.474068, 28.354904, 29.749027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590897, 28.701473, 29.587038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561167, 0.187630, 0.806156,
		0.774457, -0.462716, -0.431406,
		0.292076, 0.866423, -0.404972,
		38.678520, 28.961401, 29.465546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064388, 28.389515, 30.009775>,  <38.474068, 28.354904, 29.749027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064388, 28.389515, 30.009775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.006397, 28.767069, 29.891071>,  <38.971603, 28.993601, 29.819849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.006397, 28.767069, 29.891071>,  <39.064388, 28.389515, 30.009775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006397, 28.767069, 29.891071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444094, 0.330096, 0.832957,
		0.884172, -0.011026, -0.467030,
		-0.144981, 0.943883, -0.296759,
		38.962902, 29.050234, 29.802044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.735985, 28.264654, 25.210588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.392700, 28.320831, 25.013107>,  <41.186729, 28.354538, 24.894619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.392700, 28.320831, 25.013107>,  <41.735985, 28.264654, 25.210588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392700, 28.320831, 25.013107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205854, -0.786925, -0.581699,
		-0.470204, -0.600853, 0.646439,
		-0.858214, 0.140445, -0.493704,
		41.135235, 28.362965, 24.864996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346878, 27.550753, 25.070467>,  <41.735985, 28.264654, 25.210588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346878, 27.550753, 25.070467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.211948, 27.824947, 24.812376>,  <41.130989, 27.989464, 24.657520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.211948, 27.824947, 24.812376>,  <41.346878, 27.550753, 25.070467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211948, 27.824947, 24.812376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021192, -0.690758, -0.722775,
		-0.941149, -0.230139, 0.247539,
		-0.337328, 0.685485, -0.645229,
		41.110748, 28.030592, 24.618807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838753, 27.163420, 24.678694>,  <41.346878, 27.550753, 25.070467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838753, 27.163420, 24.678694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.870129, 27.492823, 24.453951>,  <40.888954, 27.690464, 24.319105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.870129, 27.492823, 24.453951>,  <40.838753, 27.163420, 24.678694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870129, 27.492823, 24.453951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069389, -0.557719, -0.827124,
		-0.994501, 0.103864, 0.013396,
		0.078438, 0.823506, -0.561859,
		40.893661, 27.739874, 24.285393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510719, 27.062128, 24.118340>,  <40.838753, 27.163420, 24.678694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510719, 27.062128, 24.118340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.705399, 27.382799, 23.979521>,  <40.822205, 27.575201, 23.896229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.705399, 27.382799, 23.979521>,  <40.510719, 27.062128, 24.118340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705399, 27.382799, 23.979521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002451, -0.398525, -0.917154,
		-0.873569, 0.445522, -0.195925,
		0.486693, 0.801678, -0.347047,
		40.851406, 27.623302, 23.875406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145790, 27.255617, 23.546637>,  <40.510719, 27.062128, 24.118340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145790, 27.255617, 23.546637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.526955, 27.372303, 23.513477>,  <40.755653, 27.442314, 23.493582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.526955, 27.372303, 23.513477>,  <40.145790, 27.255617, 23.546637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526955, 27.372303, 23.513477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038177, -0.386573, -0.921468,
		-0.300851, 0.874908, -0.379505,
		0.952907, 0.291713, -0.082900,
		40.812828, 27.459816, 23.488607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152916, 27.716696, 22.879541>,  <40.145790, 27.255617, 23.546637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152916, 27.716696, 22.879541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.506527, 27.554323, 22.972254>,  <40.718693, 27.456900, 23.027882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.506527, 27.554323, 22.972254>,  <40.152916, 27.716696, 22.879541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506527, 27.554323, 22.972254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177735, -0.166707, -0.969855,
		0.432333, 0.898571, -0.075225,
		0.884024, -0.405930, 0.231780,
		40.771732, 27.432545, 23.041788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551060, 27.859322, 22.296265>,  <40.152916, 27.716696, 22.879541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551060, 27.859322, 22.296265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.757088, 27.562784, 22.468367>,  <40.880703, 27.384863, 22.571627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.757088, 27.562784, 22.468367>,  <40.551060, 27.859322, 22.296265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757088, 27.562784, 22.468367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063555, -0.467546, -0.881681,
		0.854791, 0.481469, -0.193701,
		0.515066, -0.741342, 0.430254,
		40.911606, 27.340382, 22.597443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111500, 27.864016, 21.989302>,  <40.551060, 27.859322, 22.296265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111500, 27.864016, 21.989302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.078224, 27.486135, 22.116188>,  <41.058258, 27.259407, 22.192320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.078224, 27.486135, 22.116188>,  <41.111500, 27.864016, 21.989302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078224, 27.486135, 22.116188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006340, -0.318813, -0.947797,
		0.996514, -0.076833, 0.032510,
		-0.083187, -0.944698, 0.317214,
		41.053268, 27.202726, 22.211353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508896, 27.457024, 21.535646>,  <41.111500, 27.864016, 21.989302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508896, 27.457024, 21.535646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295654, 27.170031, 21.714987>,  <41.167709, 26.997835, 21.822592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295654, 27.170031, 21.714987>,  <41.508896, 27.457024, 21.535646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295654, 27.170031, 21.714987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128805, -0.454928, -0.881164,
		0.836189, -0.527500, 0.150107,
		-0.533102, -0.717484, 0.448351,
		41.135723, 26.954784, 21.849491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679512, 26.813364, 21.167538>,  <41.508896, 27.457024, 21.535646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679512, 26.813364, 21.167538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.345222, 26.720287, 21.366501>,  <41.144650, 26.664440, 21.485880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.345222, 26.720287, 21.366501>,  <41.679512, 26.813364, 21.167538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345222, 26.720287, 21.366501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352265, -0.467703, -0.810657,
		0.421275, -0.852706, 0.308901,
		-0.835726, -0.232694, 0.497410,
		41.094505, 26.650478, 21.515724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591713, 26.083445, 21.098391>,  <41.679512, 26.813364, 21.167538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591713, 26.083445, 21.098391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240555, 26.258154, 21.176899>,  <41.029858, 26.362980, 21.224005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240555, 26.258154, 21.176899>,  <41.591713, 26.083445, 21.098391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240555, 26.258154, 21.176899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392539, -0.421690, -0.817368,
		-0.274239, -0.794611, 0.541652,
		-0.877899, 0.436774, 0.196272,
		40.977184, 26.389187, 21.235781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164127, 25.512262, 21.094042>,  <41.591713, 26.083445, 21.098391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164127, 25.512262, 21.094042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914875, 25.821028, 21.043669>,  <40.765324, 26.006287, 21.013445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914875, 25.821028, 21.043669>,  <41.164127, 25.512262, 21.094042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914875, 25.821028, 21.043669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357417, -0.424265, -0.832017,
		-0.695675, -0.473443, 0.540267,
		-0.623129, 0.771913, -0.125934,
		40.727936, 26.052601, 21.005888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695396, 25.163357, 20.822817>,  <41.164127, 25.512262, 21.094042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695396, 25.163357, 20.822817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568188, 25.535694, 20.750828>,  <40.491863, 25.759096, 20.707634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568188, 25.535694, 20.750828>,  <40.695396, 25.163357, 20.822817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568188, 25.535694, 20.750828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445237, -0.314227, -0.838466,
		-0.837033, -0.186523, 0.514378,
		-0.318025, 0.930844, -0.179971,
		40.472782, 25.814947, 20.696836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960720, 25.278391, 20.792641>,  <40.695396, 25.163357, 20.822817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960720, 25.278391, 20.792641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.135105, 25.536213, 20.541407>,  <40.239735, 25.690907, 20.390667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.135105, 25.536213, 20.541407>,  <39.960720, 25.278391, 20.792641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135105, 25.536213, 20.541407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586645, -0.325719, -0.741454,
		-0.682486, 0.691706, 0.236124,
		0.435958, 0.644554, -0.628085,
		40.265892, 25.729580, 20.352982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742985, 25.542269, 20.147568>,  <39.960720, 25.278391, 20.792641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742985, 25.542269, 20.147568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.434853, 25.288523, 20.173429>,  <39.249973, 25.136276, 20.188946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.434853, 25.288523, 20.173429>,  <39.742985, 25.542269, 20.147568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434853, 25.288523, 20.173429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252860, 0.396979, 0.882309,
		-0.585371, 0.663318, -0.466208,
		-0.770326, -0.634364, 0.064654,
		39.203754, 25.098213, 20.192825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073994, 25.933239, 20.296095>,  <39.742985, 25.542269, 20.147568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073994, 25.933239, 20.296095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004917, 25.557224, 20.413744>,  <38.963470, 25.331615, 20.484333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004917, 25.557224, 20.413744>,  <39.073994, 25.933239, 20.296095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004917, 25.557224, 20.413744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342716, 0.337295, 0.876800,
		-0.923431, 0.050613, -0.380412,
		-0.172689, -0.940037, 0.294123,
		38.953110, 25.275213, 20.501982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367573, 25.876770, 20.611269>,  <39.073994, 25.933239, 20.296095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367573, 25.876770, 20.611269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584721, 25.568928, 20.745728>,  <38.715012, 25.384222, 20.826403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584721, 25.568928, 20.745728>,  <38.367573, 25.876770, 20.611269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584721, 25.568928, 20.745728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380276, 0.131609, 0.915461,
		-0.748786, -0.624806, -0.221216,
		0.542872, -0.769608, 0.336146,
		38.747581, 25.338045, 20.846571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875591, 25.523172, 21.029453>,  <38.367573, 25.876770, 20.611269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875591, 25.523172, 21.029453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.242764, 25.402227, 21.132202>,  <38.463066, 25.329660, 21.193851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.242764, 25.402227, 21.132202>,  <37.875591, 25.523172, 21.029453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242764, 25.402227, 21.132202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248018, 0.068036, 0.966363,
		-0.309669, -0.950761, -0.012540,
		0.917928, -0.302363, 0.256874,
		38.518143, 25.311518, 21.209265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774044, 24.948326, 21.522427>,  <37.875591, 25.523172, 21.029453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774044, 24.948326, 21.522427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145695, 25.085482, 21.577785>,  <38.368683, 25.167776, 21.611002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145695, 25.085482, 21.577785>,  <37.774044, 24.948326, 21.522427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145695, 25.085482, 21.577785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127277, -0.054848, 0.990350,
		0.347172, -0.937773, -0.007318,
		0.929124, 0.342890, 0.138398,
		38.424431, 25.188349, 21.619305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927952, 24.761072, 22.240463>,  <37.774044, 24.948326, 21.522427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927952, 24.761072, 22.240463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220070, 25.028488, 22.184290>,  <38.395340, 25.188938, 22.150585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220070, 25.028488, 22.184290>,  <37.927952, 24.761072, 22.240463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220070, 25.028488, 22.184290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146866, 0.047115, 0.988034,
		0.667156, -0.742183, -0.063778,
		0.730297, 0.668539, -0.140435,
		38.439159, 25.229050, 22.142160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515419, 24.596905, 22.651804>,  <37.927952, 24.761072, 22.240463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515419, 24.596905, 22.651804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537018, 24.990368, 22.583103>,  <38.549976, 25.226446, 22.541882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537018, 24.990368, 22.583103>,  <38.515419, 24.596905, 22.651804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537018, 24.990368, 22.583103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114768, 0.176978, 0.977500,
		0.991924, -0.033071, 0.122448,
		0.053997, 0.983659, -0.171753,
		38.553219, 25.285465, 22.531578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898285, 24.790928, 23.238688>,  <38.515419, 24.596905, 22.651804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898285, 24.790928, 23.238688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.750870, 25.128168, 23.082043>,  <38.662418, 25.330513, 22.988056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.750870, 25.128168, 23.082043>,  <38.898285, 24.790928, 23.238688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750870, 25.128168, 23.082043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110681, 0.378470, 0.918973,
		0.922999, 0.382024, -0.046167,
		-0.368542, 0.843100, -0.391610,
		38.640308, 25.381098, 22.964560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240807, 25.319778, 23.625200>,  <38.898285, 24.790928, 23.238688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240807, 25.319778, 23.625200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909580, 25.463356, 23.452936>,  <38.710846, 25.549501, 23.349579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909580, 25.463356, 23.452936>,  <39.240807, 25.319778, 23.625200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909580, 25.463356, 23.452936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240825, 0.465945, 0.851409,
		0.506270, 0.808737, -0.299391,
		-0.828066, 0.358942, -0.430659,
		38.661160, 25.571039, 23.323738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373341, 25.971081, 23.769293>,  <39.240807, 25.319778, 23.625200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373341, 25.971081, 23.769293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984688, 25.938782, 23.680380>,  <38.751495, 25.919401, 23.627031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984688, 25.938782, 23.680380>,  <39.373341, 25.971081, 23.769293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984688, 25.938782, 23.680380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214337, 0.697906, 0.683365,
		0.099952, 0.711623, -0.695415,
		-0.971632, -0.080749, -0.222284,
		38.693199, 25.914557, 23.613695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088539, 26.647364, 23.604628>,  <39.373341, 25.971081, 23.769293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088539, 26.647364, 23.604628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.747303, 26.453732, 23.682499>,  <38.542561, 26.337553, 23.729221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.747303, 26.453732, 23.682499>,  <39.088539, 26.647364, 23.604628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747303, 26.453732, 23.682499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310781, 0.771148, 0.555650,
		-0.419105, 0.413518, -0.808303,
		-0.853092, -0.484081, 0.194678,
		38.491375, 26.308508, 23.740902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600025, 27.185436, 23.470163>,  <39.088539, 26.647364, 23.604628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600025, 27.185436, 23.470163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432190, 26.888332, 23.678875>,  <38.331490, 26.710070, 23.804102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432190, 26.888332, 23.678875>,  <38.600025, 27.185436, 23.470163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432190, 26.888332, 23.678875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290212, 0.654430, 0.698212,
		-0.860071, 0.141535, -0.490148,
		-0.419589, -0.742758, 0.521781,
		38.306313, 26.665504, 23.835409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935440, 27.374550, 23.657509>,  <38.600025, 27.185436, 23.470163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935440, 27.374550, 23.657509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.050072, 27.091204, 23.915529>,  <38.118851, 26.921196, 24.070341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.050072, 27.091204, 23.915529>,  <37.935440, 27.374550, 23.657509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050072, 27.091204, 23.915529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196837, 0.615395, 0.763246,
		-0.937619, -0.345697, 0.036925,
		0.286575, -0.708366, 0.645052,
		38.136044, 26.878695, 24.109045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394142, 27.393414, 24.189375>,  <37.935440, 27.374550, 23.657509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394142, 27.393414, 24.189375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.712288, 27.243151, 24.379650>,  <37.903175, 27.152994, 24.493814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.712288, 27.243151, 24.379650>,  <37.394142, 27.393414, 24.189375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712288, 27.243151, 24.379650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200989, 0.576935, 0.791675,
		-0.571837, -0.725278, 0.383371,
		0.795365, -0.375656, 0.475686,
		37.950897, 27.130453, 24.522356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808971, 26.936928, 24.361267>,  <37.394142, 27.393414, 24.189375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808971, 26.936928, 24.361267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489670, 27.160700, 24.271976>,  <36.298088, 27.294964, 24.218403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489670, 27.160700, 24.271976>,  <36.808971, 26.936928, 24.361267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489670, 27.160700, 24.271976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043047, -0.422648, -0.905271,
		-0.600784, -0.713025, 0.361461,
		-0.798251, 0.559432, -0.223226,
		36.250195, 27.328529, 24.205009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279881, 26.508251, 23.913874>,  <36.808971, 26.936928, 24.361267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279881, 26.508251, 23.913874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202358, 26.894714, 23.845785>,  <36.155846, 27.126593, 23.804932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202358, 26.894714, 23.845785>,  <36.279881, 26.508251, 23.913874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202358, 26.894714, 23.845785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000439, -0.173425, -0.984847,
		-0.981039, -0.190948, 0.033188,
		-0.193810, 0.966159, -0.170220,
		36.144215, 27.184563, 23.794720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950340, 26.406263, 23.365458>,  <36.279881, 26.508251, 23.913874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950340, 26.406263, 23.365458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016811, 26.800674, 23.370010>,  <36.056694, 27.037321, 23.372742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016811, 26.800674, 23.370010>,  <35.950340, 26.406263, 23.365458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016811, 26.800674, 23.370010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070235, -0.000321, -0.997531,
		-0.983591, 0.166568, -0.069307,
		0.166179, 0.986030, 0.011384,
		36.066666, 27.096483, 23.373425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376934, 26.811909, 22.953022>,  <35.950340, 26.406263, 23.365458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376934, 26.811909, 22.953022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.711319, 27.031033, 22.966146>,  <35.911949, 27.162506, 22.974022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.711319, 27.031033, 22.966146>,  <35.376934, 26.811909, 22.953022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711319, 27.031033, 22.966146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073657, -0.052748, -0.995888,
		-0.543825, 0.834939, -0.084446,
		0.835960, 0.547808, 0.032814,
		35.962109, 27.195375, 22.975990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229820, 27.098263, 22.401665>,  <35.376934, 26.811909, 22.953022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229820, 27.098263, 22.401665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610977, 27.200506, 22.466965>,  <35.839672, 27.261852, 22.506145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610977, 27.200506, 22.466965>,  <35.229820, 27.098263, 22.401665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610977, 27.200506, 22.466965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175305, -0.024940, -0.984198,
		-0.247499, 0.966458, -0.068575,
		0.952897, 0.255610, 0.163252,
		35.896847, 27.277189, 22.515940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357235, 27.804995, 22.059540>,  <35.229820, 27.098263, 22.401665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357235, 27.804995, 22.059540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683510, 27.578390, 22.106392>,  <35.879276, 27.442429, 22.134502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.683510, 27.578390, 22.106392>,  <35.357235, 27.804995, 22.059540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683510, 27.578390, 22.106392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185345, 0.064127, -0.980579,
		0.547996, 0.821556, 0.157307,
		0.815688, -0.566509, 0.117130,
		35.928215, 27.408438, 22.141531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816574, 28.053396, 21.549004>,  <35.357235, 27.804995, 22.059540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816574, 28.053396, 21.549004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952579, 27.688328, 21.639709>,  <36.034184, 27.469288, 21.694134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952579, 27.688328, 21.639709>,  <35.816574, 28.053396, 21.549004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952579, 27.688328, 21.639709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090019, -0.208439, -0.973884,
		0.936102, 0.351549, 0.011285,
		0.340015, -0.912670, 0.226766,
		36.054585, 27.414526, 21.707739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494514, 28.628185, 21.484869>,  <35.816574, 28.053396, 21.549004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494514, 28.628185, 21.484869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203979, 28.804413, 21.273842>,  <35.029659, 28.910151, 21.147226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203979, 28.804413, 21.273842>,  <35.494514, 28.628185, 21.484869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203979, 28.804413, 21.273842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424673, 0.315867, 0.848458,
		0.540446, 0.840313, -0.042329,
		-0.726341, 0.440570, -0.527568,
		34.986076, 28.936584, 21.115572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377956, 29.352581, 21.786726>,  <35.494514, 28.628185, 21.484869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377956, 29.352581, 21.786726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034538, 29.317266, 21.584694>,  <34.828487, 29.296078, 21.463474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034538, 29.317266, 21.584694>,  <35.377956, 29.352581, 21.786726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034538, 29.317266, 21.584694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509585, 0.255990, 0.821457,
		0.056771, 0.962639, -0.264769,
		-0.858545, -0.088287, -0.505080,
		34.776974, 29.290781, 21.433170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957413, 29.986280, 21.822393>,  <35.377956, 29.352581, 21.786726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957413, 29.986280, 21.822393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.699486, 29.686762, 21.761053>,  <34.544731, 29.507050, 21.724249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.699486, 29.686762, 21.761053>,  <34.957413, 29.986280, 21.822393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699486, 29.686762, 21.761053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491621, 0.252688, 0.833341,
		-0.585254, 0.612740, -0.531062,
		-0.644815, -0.748798, -0.153349,
		34.506042, 29.462122, 21.715048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263500, 30.209408, 22.033989>,  <34.957413, 29.986280, 21.822393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263500, 30.209408, 22.033989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276176, 29.809702, 22.042614>,  <34.283783, 29.569878, 22.047789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276176, 29.809702, 22.042614>,  <34.263500, 30.209408, 22.033989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276176, 29.809702, 22.042614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459080, 0.004613, 0.888383,
		-0.887830, -0.038050, -0.458596,
		0.031688, -0.999265, 0.021564,
		34.285683, 29.509922, 22.049084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511566, 30.002884, 22.196932>,  <34.263500, 30.209408, 22.033989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511566, 30.002884, 22.196932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758621, 29.696289, 22.267374>,  <33.906857, 29.512331, 22.309639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758621, 29.696289, 22.267374>,  <33.511566, 30.002884, 22.196932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758621, 29.696289, 22.267374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398837, -0.112279, 0.910122,
		-0.677826, -0.632366, -0.375052,
		0.617641, -0.766489, 0.176106,
		33.943913, 29.466343, 22.320206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015480, 29.498974, 22.426226>,  <33.511566, 30.002884, 22.196932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015480, 29.498974, 22.426226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355541, 29.344172, 22.569040>,  <33.559578, 29.251289, 22.654730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355541, 29.344172, 22.569040>,  <33.015480, 29.498974, 22.426226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355541, 29.344172, 22.569040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374473, 0.032297, 0.926675,
		-0.370160, -0.921511, -0.117466,
		0.850148, -0.387006, 0.357036,
		33.610584, 29.228069, 22.676151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737064, 29.262863, 23.051565>,  <33.015480, 29.498974, 22.426226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737064, 29.262863, 23.051565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132740, 29.215385, 23.086010>,  <33.370144, 29.186897, 23.106678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132740, 29.215385, 23.086010>,  <32.737064, 29.262863, 23.051565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132740, 29.215385, 23.086010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099085, -0.108104, 0.989189,
		-0.108104, -0.987028, -0.118697,
		-0.989189, 0.118697, -0.086114,
		33.429497, 29.179777, 23.111843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.443466, 28.377722, 19.553381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.659931, 28.145508, 19.796730>,  <38.789810, 28.006180, 19.942739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.659931, 28.145508, 19.796730>,  <38.443466, 28.377722, 19.553381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659931, 28.145508, 19.796730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114053, 0.666108, 0.737084,
		-0.833146, -0.468271, 0.294263,
		0.541165, -0.580537, 0.608372,
		38.822281, 27.971346, 19.979242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314152, 28.520479, 20.292435>,  <38.443466, 28.377722, 19.553381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314152, 28.520479, 20.292435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670776, 28.339323, 20.291927>,  <38.884750, 28.230629, 20.291624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670776, 28.339323, 20.291927>,  <38.314152, 28.520479, 20.292435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670776, 28.339323, 20.291927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342110, 0.671645, 0.657155,
		-0.296768, -0.586330, 0.753754,
		0.891566, -0.452890, -0.001267,
		38.938248, 28.203457, 20.291548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539124, 28.413420, 20.996723>,  <38.314152, 28.520479, 20.292435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539124, 28.413420, 20.996723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.878925, 28.361565, 20.792158>,  <39.082806, 28.330452, 20.669418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.878925, 28.361565, 20.792158>,  <38.539124, 28.413420, 20.996723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878925, 28.361565, 20.792158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499452, 0.509925, 0.700374,
		0.169987, -0.850394, 0.497930,
		0.849501, -0.129638, -0.511412,
		39.133774, 28.322674, 20.638735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029343, 28.320568, 21.504368>,  <38.539124, 28.413420, 20.996723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029343, 28.320568, 21.504368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208950, 28.454550, 21.173023>,  <39.316715, 28.534939, 20.974216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208950, 28.454550, 21.173023>,  <39.029343, 28.320568, 21.504368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208950, 28.454550, 21.173023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417137, 0.741268, 0.525850,
		0.790175, -0.581658, 0.193123,
		0.449021, 0.334955, -0.828363,
		39.343655, 28.555037, 20.924515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802013, 28.367825, 21.704981>,  <39.029343, 28.320568, 21.504368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802013, 28.367825, 21.704981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.705059, 28.611879, 21.403257>,  <39.646885, 28.758312, 21.222223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.705059, 28.611879, 21.403257>,  <39.802013, 28.367825, 21.704981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705059, 28.611879, 21.403257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430494, 0.764400, 0.479965,
		0.869438, -0.208387, -0.447943,
		-0.242389, 0.610137, -0.754308,
		39.632343, 28.794920, 21.176966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400124, 28.815266, 21.707306>,  <39.802013, 28.367825, 21.704981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400124, 28.815266, 21.707306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.109970, 28.982563, 21.488621>,  <39.935879, 29.082941, 21.357409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.109970, 28.982563, 21.488621>,  <40.400124, 28.815266, 21.707306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109970, 28.982563, 21.488621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335696, 0.908331, 0.249487,
		0.600943, -0.002557, -0.799287,
		-0.725379, 0.418245, -0.546714,
		39.892357, 29.108036, 21.324606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749825, 29.330858, 21.392645>,  <40.400124, 28.815266, 21.707306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749825, 29.330858, 21.392645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.362438, 29.430285, 21.399431>,  <40.130005, 29.489941, 21.403503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.362438, 29.430285, 21.399431>,  <40.749825, 29.330858, 21.392645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362438, 29.430285, 21.399431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222459, 0.832072, 0.508102,
		0.112178, 0.495855, -0.861130,
		-0.968467, 0.248564, 0.016967,
		40.071899, 29.504854, 21.404522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754253, 30.036200, 21.320948>,  <40.749825, 29.330858, 21.392645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754253, 30.036200, 21.320948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378590, 29.973219, 21.443054>,  <40.153191, 29.935431, 21.516317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378590, 29.973219, 21.443054>,  <40.754253, 30.036200, 21.320948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378590, 29.973219, 21.443054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059048, 0.801506, 0.595064,
		-0.338366, 0.576886, -0.743446,
		-0.939160, -0.157450, 0.305266,
		40.096840, 29.925983, 21.534634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487049, 30.674330, 21.252708>,  <40.754253, 30.036200, 21.320948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487049, 30.674330, 21.252708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.267559, 30.471132, 21.518293>,  <40.135864, 30.349213, 21.677645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.267559, 30.471132, 21.518293>,  <40.487049, 30.674330, 21.252708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267559, 30.471132, 21.518293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085167, 0.756108, 0.648882,
		-0.831654, 0.412605, -0.371630,
		-0.548725, -0.507995, 0.663960,
		40.102943, 30.318733, 21.717482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992439, 31.116386, 21.491961>,  <40.487049, 30.674330, 21.252708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992439, 31.116386, 21.491961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.963345, 30.842455, 21.781986>,  <39.945889, 30.678097, 21.956001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.963345, 30.842455, 21.781986>,  <39.992439, 31.116386, 21.491961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963345, 30.842455, 21.781986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265850, 0.714002, 0.647708,
		-0.961267, -0.145647, -0.233994,
		-0.072735, -0.684827, 0.725066,
		39.941525, 30.637007, 21.999506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343311, 31.292059, 21.806669>,  <39.992439, 31.116386, 21.491961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343311, 31.292059, 21.806669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.590260, 31.092718, 22.050144>,  <39.738426, 30.973114, 22.196230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.590260, 31.092718, 22.050144>,  <39.343311, 31.292059, 21.806669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590260, 31.092718, 22.050144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112003, 0.710183, 0.695051,
		-0.778660, -0.497277, 0.382627,
		0.617368, -0.498353, 0.608688,
		39.775471, 30.943213, 22.232750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065247, 31.415138, 22.464972>,  <39.343311, 31.292059, 21.806669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065247, 31.415138, 22.464972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.424519, 31.294735, 22.593143>,  <39.640079, 31.222494, 22.670048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.424519, 31.294735, 22.593143>,  <39.065247, 31.415138, 22.464972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424519, 31.294735, 22.593143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036051, 0.776826, 0.628682,
		-0.438157, -0.553115, 0.708578,
		0.898175, -0.301006, 0.320432,
		39.693970, 31.204433, 22.689274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383644, 31.198244, 22.367777>,  <39.065247, 31.415138, 22.464972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383644, 31.198244, 22.367777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290527, 31.544197, 22.189886>,  <38.234657, 31.751770, 22.083151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290527, 31.544197, 22.189886>,  <38.383644, 31.198244, 22.367777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290527, 31.544197, 22.189886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104575, -0.432380, -0.895607,
		-0.966888, -0.254996, 0.010209,
		-0.232791, 0.864884, -0.444729,
		38.220692, 31.803663, 22.056467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863743, 30.946297, 21.860683>,  <38.383644, 31.198244, 22.367777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863743, 30.946297, 21.860683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.943943, 31.315111, 21.728230>,  <37.992062, 31.536400, 21.648756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.943943, 31.315111, 21.728230>,  <37.863743, 30.946297, 21.860683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943943, 31.315111, 21.728230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048452, -0.328254, -0.943346,
		-0.978495, 0.205183, -0.021139,
		0.200498, 0.922036, -0.331136,
		38.004093, 31.591722, 21.628889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289764, 31.145687, 21.381872>,  <37.863743, 30.946297, 21.860683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289764, 31.145687, 21.381872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.605301, 31.371019, 21.283571>,  <37.794624, 31.506218, 21.224590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.605301, 31.371019, 21.283571>,  <37.289764, 31.145687, 21.381872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605301, 31.371019, 21.283571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120491, -0.250345, -0.960630,
		-0.602672, 0.787394, -0.129606,
		0.788840, 0.563329, -0.245750,
		37.841953, 31.540018, 21.209846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143570, 31.279091, 20.716639>,  <37.289764, 31.145687, 21.381872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143570, 31.279091, 20.716639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.520420, 31.408009, 20.753551>,  <37.746532, 31.485359, 20.775700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.520420, 31.408009, 20.753551>,  <37.143570, 31.279091, 20.716639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520420, 31.408009, 20.753551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183164, -0.264298, -0.946888,
		-0.280788, 0.908995, -0.308036,
		0.942130, 0.322296, 0.092284,
		37.803059, 31.504698, 20.781237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210011, 31.741451, 20.156769>,  <37.143570, 31.279091, 20.716639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210011, 31.741451, 20.156769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.563206, 31.579063, 20.251013>,  <37.775124, 31.481630, 20.307560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.563206, 31.579063, 20.251013>,  <37.210011, 31.741451, 20.156769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563206, 31.579063, 20.251013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144749, -0.241982, -0.959423,
		0.446512, 0.881267, -0.154904,
		0.882992, -0.405972, 0.235611,
		37.828102, 31.457272, 20.321695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518532, 31.986185, 19.570450>,  <37.210011, 31.741451, 20.156769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518532, 31.986185, 19.570450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.742054, 31.692162, 19.724031>,  <37.876167, 31.515747, 19.816181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.742054, 31.692162, 19.724031>,  <37.518532, 31.986185, 19.570450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742054, 31.692162, 19.724031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092526, -0.404837, -0.909696,
		0.824118, 0.543872, -0.158215,
		0.558809, -0.735058, 0.383956,
		37.909698, 31.471643, 19.839218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188156, 31.872692, 19.248873>,  <37.518532, 31.986185, 19.570450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188156, 31.872692, 19.248873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.141586, 31.506792, 19.403624>,  <38.113644, 31.287252, 19.496473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.141586, 31.506792, 19.403624>,  <38.188156, 31.872692, 19.248873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141586, 31.506792, 19.403624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200716, -0.403158, -0.892847,
		0.972707, -0.026296, 0.230543,
		-0.116424, -0.914752, 0.386877,
		38.106659, 31.232367, 19.519686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768841, 31.456745, 18.902496>,  <38.188156, 31.872692, 19.248873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768841, 31.456745, 18.902496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536972, 31.175810, 19.067760>,  <38.397850, 31.007250, 19.166920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536972, 31.175810, 19.067760>,  <38.768841, 31.456745, 18.902496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536972, 31.175810, 19.067760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247427, -0.634813, -0.731979,
		0.776376, -0.322080, 0.541760,
		-0.579672, -0.702337, 0.413163,
		38.363071, 30.965109, 19.191710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069904, 30.734562, 18.803736>,  <38.768841, 31.456745, 18.902496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069904, 30.734562, 18.803736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670387, 30.733500, 18.823364>,  <38.430676, 30.732862, 18.835142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670387, 30.733500, 18.823364>,  <39.069904, 30.734562, 18.803736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670387, 30.733500, 18.823364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039873, -0.539890, -0.840791,
		0.028728, -0.841732, 0.539132,
		-0.998792, -0.002657, 0.049072,
		38.370750, 30.732702, 18.838085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906429, 30.150213, 18.539661>,  <39.069904, 30.734562, 18.803736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906429, 30.150213, 18.539661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549892, 30.331528, 18.537001>,  <38.335972, 30.440317, 18.535404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.549892, 30.331528, 18.537001>,  <38.906429, 30.150213, 18.539661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549892, 30.331528, 18.537001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202618, -0.411465, -0.888618,
		-0.405503, -0.790730, 0.458600,
		-0.891355, 0.453257, -0.006635,
		38.282490, 30.467514, 18.535006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421349, 29.643688, 18.373835>,  <38.906429, 30.150213, 18.539661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421349, 29.643688, 18.373835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.230679, 29.984043, 18.285501>,  <38.116276, 30.188257, 18.232502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.230679, 29.984043, 18.285501>,  <38.421349, 29.643688, 18.373835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230679, 29.984043, 18.285501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341028, -0.410526, -0.845676,
		-0.810233, -0.327806, 0.485866,
		-0.476678, 0.850889, -0.220831,
		38.087673, 30.239309, 18.219252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926552, 29.374050, 18.055460>,  <38.421349, 29.643688, 18.373835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926552, 29.374050, 18.055460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.901039, 29.756516, 17.941137>,  <37.885731, 29.985994, 17.872543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.901039, 29.756516, 17.941137>,  <37.926552, 29.374050, 18.055460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901039, 29.756516, 17.941137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494070, -0.279083, -0.823412,
		-0.867080, 0.088693, 0.490210,
		-0.063778, 0.956162, -0.285808,
		37.881905, 30.043364, 17.855394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266834, 29.422558, 17.819338>,  <37.926552, 29.374050, 18.055460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266834, 29.422558, 17.819338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.490406, 29.712769, 17.658737>,  <37.624550, 29.886896, 17.562378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.490406, 29.712769, 17.658737>,  <37.266834, 29.422558, 17.819338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490406, 29.712769, 17.658737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259926, -0.306494, -0.915697,
		-0.787421, 0.616173, 0.017274,
		0.558933, 0.725529, -0.401499,
		37.658085, 29.930428, 17.538288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106823, 29.574644, 18.561741>,  <37.266834, 29.422558, 17.819338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106823, 29.574644, 18.561741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.799580, 29.339993, 18.459080>,  <36.615234, 29.199202, 18.397484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.799580, 29.339993, 18.459080>,  <37.106823, 29.574644, 18.561741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799580, 29.339993, 18.459080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527340, 0.352193, 0.773222,
		-0.363205, 0.729263, -0.579877,
		-0.768111, -0.586630, -0.256651,
		36.569145, 29.164003, 18.382084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444767, 29.922798, 18.689495>,  <37.106823, 29.574644, 18.561741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444767, 29.922798, 18.689495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.371017, 29.529732, 18.681822>,  <36.326767, 29.293892, 18.677217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.371017, 29.529732, 18.681822>,  <36.444767, 29.922798, 18.689495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371017, 29.529732, 18.681822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517797, 0.080525, 0.851705,
		-0.835399, 0.166969, -0.523669,
		-0.184377, -0.982668, -0.019185,
		36.315704, 29.234932, 18.676065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761997, 29.760788, 18.508469>,  <36.444767, 29.922798, 18.689495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761997, 29.760788, 18.508469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889019, 29.443411, 18.716164>,  <35.965233, 29.252985, 18.840780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889019, 29.443411, 18.716164>,  <35.761997, 29.760788, 18.508469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889019, 29.443411, 18.716164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762430, 0.111922, 0.637317,
		-0.563788, -0.598267, -0.569402,
		0.317558, -0.793442, 0.519238,
		35.984287, 29.205378, 18.871935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187168, 29.354961, 18.730244>,  <35.761997, 29.760788, 18.508469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187168, 29.354961, 18.730244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.478382, 29.228741, 18.973684>,  <35.653111, 29.153009, 19.119749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.478382, 29.228741, 18.973684>,  <35.187168, 29.354961, 18.730244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478382, 29.228741, 18.973684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663740, -0.102351, 0.740928,
		-0.171512, -0.943372, -0.283961,
		0.728034, -0.315554, 0.608599,
		35.696793, 29.134075, 19.156263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912395, 28.869041, 19.094112>,  <35.187168, 29.354961, 18.730244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912395, 28.869041, 19.094112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.228527, 28.914547, 19.334923>,  <35.418205, 28.941851, 19.479408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.228527, 28.914547, 19.334923>,  <34.912395, 28.869041, 19.094112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228527, 28.914547, 19.334923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605890, -0.000742, 0.795548,
		0.090954, -0.993507, 0.068344,
		0.790332, 0.113767, 0.602023,
		35.465626, 28.948677, 19.515530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906403, 28.369616, 19.627054>,  <34.912395, 28.869041, 19.094112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906403, 28.369616, 19.627054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.146088, 28.655848, 19.770660>,  <35.289898, 28.827587, 19.856823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.146088, 28.655848, 19.770660>,  <34.906403, 28.369616, 19.627054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146088, 28.655848, 19.770660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531162, 0.019817, 0.847039,
		0.599007, -0.698252, 0.391962,
		0.599214, 0.715577, 0.359014,
		35.325851, 28.870522, 19.878365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182705, 28.105022, 20.237732>,  <34.906403, 28.369616, 19.627054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182705, 28.105022, 20.237732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.218708, 28.502533, 20.263994>,  <35.240311, 28.741039, 20.279753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.218708, 28.502533, 20.263994>,  <35.182705, 28.105022, 20.237732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218708, 28.502533, 20.263994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516374, -0.009804, 0.856307,
		0.851619, -0.110981, 0.512277,
		0.090011, 0.993774, 0.065657,
		35.245712, 28.800665, 20.283691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617836, 28.248377, 20.882053>,  <35.182705, 28.105022, 20.237732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617836, 28.248377, 20.882053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.367115, 28.542191, 20.778074>,  <35.216682, 28.718479, 20.715687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.367115, 28.542191, 20.778074>,  <35.617836, 28.248377, 20.882053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367115, 28.542191, 20.778074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404070, -0.021174, 0.914483,
		0.666217, 0.678239, 0.310076,
		-0.626803, 0.734536, -0.259950,
		35.179073, 28.762552, 20.700089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300533, 27.973547, 21.032076>,  <35.617836, 28.248377, 20.882053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300533, 27.973547, 21.032076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.265240, 27.598461, 21.166481>,  <36.244064, 27.373409, 21.247124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.265240, 27.598461, 21.166481>,  <36.300533, 27.973547, 21.032076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265240, 27.598461, 21.166481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076088, -0.342688, -0.936363,
		0.993190, -0.057052, 0.101586,
		-0.088234, -0.937716, 0.336013,
		36.238770, 27.317146, 21.267284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936192, 27.586227, 20.814018>,  <36.300533, 27.973547, 21.032076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936192, 27.586227, 20.814018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.648636, 27.313635, 20.868826>,  <36.476101, 27.150080, 20.901711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.648636, 27.313635, 20.868826>,  <36.936192, 27.586227, 20.814018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648636, 27.313635, 20.868826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219740, -0.409804, -0.885311,
		0.659475, -0.606335, 0.444354,
		-0.718893, -0.681482, 0.137019,
		36.432968, 27.109190, 20.909931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274490, 26.924288, 20.545317>,  <36.936192, 27.586227, 20.814018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274490, 26.924288, 20.545317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.880718, 26.867533, 20.586826>,  <36.644455, 26.833479, 20.611732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.880718, 26.867533, 20.586826>,  <37.274490, 26.924288, 20.545317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880718, 26.867533, 20.586826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005425, -0.614588, -0.788829,
		0.175705, -0.775983, 0.605788,
		-0.984428, -0.141888, 0.103776,
		36.585388, 26.824966, 20.617960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220074, 26.149042, 20.772243>,  <37.274490, 26.924288, 20.545317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220074, 26.149042, 20.772243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913651, 26.315329, 20.576149>,  <36.729797, 26.415100, 20.458492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913651, 26.315329, 20.576149>,  <37.220074, 26.149042, 20.772243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913651, 26.315329, 20.576149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156529, -0.619077, -0.769573,
		-0.623466, -0.666249, 0.409148,
		-0.766021, 0.415759, -0.490261,
		36.683834, 26.440044, 20.429079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755314, 25.569618, 20.564096>,  <37.220074, 26.149042, 20.772243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755314, 25.569618, 20.564096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.687641, 25.888355, 20.332090>,  <36.647038, 26.079597, 20.192886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.687641, 25.888355, 20.332090>,  <36.755314, 25.569618, 20.564096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687641, 25.888355, 20.332090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125849, -0.566216, -0.814593,
		-0.977517, -0.210812, -0.004487,
		-0.169185, 0.796843, -0.580016,
		36.636887, 26.127409, 20.158085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731316, 25.214554, 19.983423>,  <36.755314, 25.569618, 20.564096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731316, 25.214554, 19.983423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713158, 25.593756, 19.857424>,  <36.702263, 25.821278, 19.781824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713158, 25.593756, 19.857424>,  <36.731316, 25.214554, 19.983423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713158, 25.593756, 19.857424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164141, -0.303961, -0.938438,
		-0.985392, -0.094304, -0.141808,
		-0.045394, 0.948005, -0.315000,
		36.699539, 25.878157, 19.762924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327728, 25.181751, 19.337423>,  <36.731316, 25.214554, 19.983423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327728, 25.181751, 19.337423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543690, 25.517263, 19.309294>,  <36.673267, 25.718571, 19.292416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543690, 25.517263, 19.309294>,  <36.327728, 25.181751, 19.337423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543690, 25.517263, 19.309294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228762, -0.226627, -0.946736,
		-0.810041, 0.495063, -0.314239,
		0.539908, 0.838781, -0.070326,
		36.705662, 25.768898, 19.288197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107681, 25.557060, 18.709398>,  <36.327728, 25.181751, 19.337423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107681, 25.557060, 18.709398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.476604, 25.677887, 18.805813>,  <36.697960, 25.750383, 18.863663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.476604, 25.677887, 18.805813>,  <36.107681, 25.557060, 18.709398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476604, 25.677887, 18.805813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304197, -0.182799, -0.934906,
		-0.238341, 0.935597, -0.260485,
		0.922311, 0.302065, 0.241038,
		36.753296, 25.768507, 18.878124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329559, 26.010551, 18.230480>,  <36.107681, 25.557060, 18.709398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329559, 26.010551, 18.230480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.671326, 25.891380, 18.400757>,  <36.876385, 25.819878, 18.502924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.671326, 25.891380, 18.400757>,  <36.329559, 26.010551, 18.230480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671326, 25.891380, 18.400757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408959, -0.119779, -0.904658,
		0.320512, 0.947044, 0.019500,
		0.854415, -0.297928, 0.425693,
		36.927650, 25.802002, 18.528465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.755600, 31.982042, 33.434769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136299, 31.860834, 33.454159>,  <36.364719, 31.788109, 33.465794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136299, 31.860834, 33.454159>,  <35.755600, 31.982042, 33.434769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136299, 31.860834, 33.454159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042991, -0.288076, -0.956642,
		0.303846, 0.908401, -0.287204,
		0.951751, -0.303019, 0.048478,
		36.421825, 31.769928, 33.468700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998966, 32.182598, 32.770218>,  <35.755600, 31.982042, 33.434769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998966, 32.182598, 32.770218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287411, 31.929701, 32.883545>,  <36.460476, 31.777964, 32.951542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287411, 31.929701, 32.883545>,  <35.998966, 32.182598, 32.770218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287411, 31.929701, 32.883545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123007, -0.285608, -0.950420,
		0.681813, 0.720208, -0.128185,
		0.721110, -0.632241, 0.283322,
		36.503742, 31.740028, 32.968540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668606, 32.337585, 32.376873>,  <35.998966, 32.182598, 32.770218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668606, 32.337585, 32.376873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698837, 31.971981, 32.536312>,  <36.716976, 31.752619, 32.631973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698837, 31.971981, 32.536312>,  <36.668606, 32.337585, 32.376873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698837, 31.971981, 32.536312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283609, -0.363522, -0.887366,
		0.955957, 0.180114, 0.231745,
		0.075583, -0.914008, 0.398594,
		36.721512, 31.697779, 32.655891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372993, 31.961206, 32.171799>,  <36.668606, 32.337585, 32.376873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372993, 31.961206, 32.171799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093891, 31.683186, 32.241127>,  <36.926430, 31.516373, 32.282722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093891, 31.683186, 32.241127>,  <37.372993, 31.961206, 32.171799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093891, 31.683186, 32.241127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134321, -0.364610, -0.921421,
		0.703632, -0.619644, 0.347769,
		-0.697753, -0.695054, 0.173320,
		36.884563, 31.474669, 32.293121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605576, 31.293840, 31.873137>,  <37.372993, 31.961206, 32.171799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605576, 31.293840, 31.873137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235226, 31.175611, 31.967285>,  <37.013016, 31.104673, 32.023773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235226, 31.175611, 31.967285>,  <37.605576, 31.293840, 31.873137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235226, 31.175611, 31.967285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035638, -0.551846, -0.833184,
		0.376154, -0.779810, 0.500404,
		-0.925871, -0.295573, 0.235370,
		36.957462, 31.086939, 32.037895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583862, 30.574562, 31.808748>,  <37.605576, 31.293840, 31.873137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583862, 30.574562, 31.808748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198227, 30.679764, 31.794031>,  <36.966846, 30.742886, 31.785202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198227, 30.679764, 31.794031>,  <37.583862, 30.574562, 31.808748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198227, 30.679764, 31.794031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174387, -0.731462, -0.659205,
		-0.200286, -0.629119, 0.751062,
		-0.964093, 0.263005, -0.036791,
		36.909000, 30.758665, 31.782993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146915, 29.965212, 32.021389>,  <37.583862, 30.574562, 31.808748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146915, 29.965212, 32.021389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.973278, 30.209463, 31.756451>,  <36.869095, 30.356014, 31.597488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.973278, 30.209463, 31.756451>,  <37.146915, 29.965212, 32.021389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973278, 30.209463, 31.756451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074960, -0.757160, -0.648914,
		-0.897745, -0.232039, 0.374449,
		-0.434091, 0.610628, -0.662343,
		36.843052, 30.392651, 31.557747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760700, 29.451334, 31.732109>,  <37.146915, 29.965212, 32.021389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760700, 29.451334, 31.732109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702419, 29.755537, 31.479002>,  <36.667450, 29.938059, 31.327137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702419, 29.755537, 31.479002>,  <36.760700, 29.451334, 31.732109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702419, 29.755537, 31.479002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207325, -0.648864, -0.732115,
		-0.967361, 0.024516, 0.252215,
		-0.145704, 0.760509, -0.632768,
		36.658707, 29.983690, 31.289171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171043, 29.210228, 31.389284>,  <36.760700, 29.451334, 31.732109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171043, 29.210228, 31.389284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294743, 29.514927, 31.161564>,  <36.368961, 29.697746, 31.024931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294743, 29.514927, 31.161564>,  <36.171043, 29.210228, 31.389284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294743, 29.514927, 31.161564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458716, -0.404910, -0.790966,
		-0.833033, 0.505755, 0.224207,
		0.309251, 0.761748, -0.569301,
		36.387516, 29.743452, 30.990774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610680, 29.279444, 30.928019>,  <36.171043, 29.210228, 31.389284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610680, 29.279444, 30.928019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914768, 29.467550, 30.748728>,  <36.097221, 29.580414, 30.641153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914768, 29.467550, 30.748728>,  <35.610680, 29.279444, 30.928019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914768, 29.467550, 30.748728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305393, -0.350275, -0.885462,
		-0.573404, 0.810036, -0.122672,
		0.760225, 0.470264, -0.448228,
		36.142838, 29.608629, 30.614260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349487, 29.711174, 30.414955>,  <35.610680, 29.279444, 30.928019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349487, 29.711174, 30.414955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721912, 29.620567, 30.300547>,  <35.945370, 29.566204, 30.231901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721912, 29.620567, 30.300547>,  <35.349487, 29.711174, 30.414955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721912, 29.620567, 30.300547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360999, -0.458279, -0.812195,
		0.052897, 0.859459, -0.508460,
		0.931065, -0.226516, -0.286022,
		36.001232, 29.552612, 30.214741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441738, 29.972277, 29.648815>,  <35.349487, 29.711174, 30.414955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441738, 29.972277, 29.648815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700401, 29.675484, 29.719580>,  <35.855598, 29.497408, 29.762039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700401, 29.675484, 29.719580>,  <35.441738, 29.972277, 29.648815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700401, 29.675484, 29.719580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259936, -0.432404, -0.863400,
		0.717124, 0.512339, -0.472484,
		0.646657, -0.741981, 0.176912,
		35.894398, 29.452888, 29.772654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011894, 30.319477, 29.129347>,  <35.441738, 29.972277, 29.648815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011894, 30.319477, 29.129347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630573, 30.421421, 29.064537>,  <34.401779, 30.482588, 29.025652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630573, 30.421421, 29.064537>,  <35.011894, 30.319477, 29.129347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630573, 30.421421, 29.064537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035595, 0.437935, 0.898302,
		0.299898, 0.862125, -0.408415,
		-0.953307, 0.254861, -0.162023,
		34.344582, 30.497879, 29.015930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001034, 30.950546, 29.473707>,  <35.011894, 30.319477, 29.129347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001034, 30.950546, 29.473707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613934, 30.854757, 29.442448>,  <34.381672, 30.797283, 29.423693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613934, 30.854757, 29.442448>,  <35.001034, 30.950546, 29.473707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613934, 30.854757, 29.442448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155107, 0.322051, 0.933930,
		-0.198482, 0.915935, -0.348810,
		-0.967753, -0.239472, -0.078147,
		34.323608, 30.782915, 29.419004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733902, 31.529291, 29.638300>,  <35.001034, 30.950546, 29.473707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733902, 31.529291, 29.638300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.450699, 31.251017, 29.686869>,  <34.280777, 31.084051, 29.716009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.450699, 31.251017, 29.686869>,  <34.733902, 31.529291, 29.638300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450699, 31.251017, 29.686869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226643, 0.386680, 0.893931,
		-0.668846, 0.605392, -0.431445,
		-0.708010, -0.695686, 0.121421,
		34.238297, 31.042311, 29.723295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088207, 31.848116, 29.731768>,  <34.733902, 31.529291, 29.638300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088207, 31.848116, 29.731768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053692, 31.485777, 29.897655>,  <34.032982, 31.268373, 29.997189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053692, 31.485777, 29.897655>,  <34.088207, 31.848116, 29.731768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053692, 31.485777, 29.897655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272911, 0.421841, 0.864621,
		-0.958162, -0.038575, -0.283615,
		-0.086288, -0.905849, 0.414720,
		34.027805, 31.214022, 30.022072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393566, 31.801956, 30.051172>,  <34.088207, 31.848116, 29.731768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393566, 31.801956, 30.051172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621017, 31.526079, 30.230497>,  <33.757488, 31.360554, 30.338093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621017, 31.526079, 30.230497>,  <33.393566, 31.801956, 30.051172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621017, 31.526079, 30.230497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261683, 0.365017, 0.893468,
		-0.779860, -0.625368, 0.027079,
		0.568631, -0.689693, 0.448310,
		33.791607, 31.319172, 30.364990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952717, 31.523859, 30.486713>,  <33.393566, 31.801956, 30.051172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952717, 31.523859, 30.486713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321213, 31.441433, 30.618690>,  <33.542309, 31.391977, 30.697876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321213, 31.441433, 30.618690>,  <32.952717, 31.523859, 30.486713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321213, 31.441433, 30.618690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253444, 0.325507, 0.910940,
		-0.295112, -0.922812, 0.247643,
		0.921235, -0.206066, 0.329942,
		33.597584, 31.379614, 30.717672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827576, 31.398855, 31.180452>,  <32.952717, 31.523859, 30.486713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827576, 31.398855, 31.180452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226311, 31.429283, 31.171263>,  <33.465553, 31.447540, 31.165749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226311, 31.429283, 31.171263>,  <32.827576, 31.398855, 31.180452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226311, 31.429283, 31.171263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003910, 0.241804, 0.970317,
		0.079364, -0.967339, 0.240742,
		0.996838, 0.076067, -0.022973,
		33.525364, 31.452105, 31.164371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948353, 31.282372, 31.830208>,  <32.827576, 31.398855, 31.180452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948353, 31.282372, 31.830208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295902, 31.437006, 31.706518>,  <33.504433, 31.529787, 31.632305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295902, 31.437006, 31.706518>,  <32.948353, 31.282372, 31.830208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295902, 31.437006, 31.706518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115888, 0.448446, 0.886265,
		0.481290, -0.805882, 0.344839,
		0.868867, 0.386588, -0.309225,
		33.556564, 31.552980, 31.613750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349869, 31.147491, 32.422283>,  <32.948353, 31.282372, 31.830208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349869, 31.147491, 32.422283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534916, 31.419613, 32.194889>,  <33.645943, 31.582886, 32.058453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534916, 31.419613, 32.194889>,  <33.349869, 31.147491, 32.422283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534916, 31.419613, 32.194889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175141, 0.558461, 0.810831,
		0.869088, -0.474667, 0.139203,
		0.462614, 0.680303, -0.568485,
		33.673698, 31.623703, 32.024345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010571, 31.312782, 32.727802>,  <33.349869, 31.147491, 32.422283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010571, 31.312782, 32.727802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906750, 31.631239, 32.509159>,  <33.844456, 31.822313, 32.377972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906750, 31.631239, 32.509159>,  <34.010571, 31.312782, 32.727802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906750, 31.631239, 32.509159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287656, 0.604055, 0.743217,
		0.921892, 0.035670, -0.385802,
		-0.259556, 0.796144, -0.546613,
		33.828884, 31.870083, 32.345177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585110, 31.795790, 32.740532>,  <34.010571, 31.312782, 32.727802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585110, 31.795790, 32.740532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237556, 31.986504, 32.687294>,  <34.029022, 32.100933, 32.655350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237556, 31.986504, 32.687294>,  <34.585110, 31.795790, 32.740532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237556, 31.986504, 32.687294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180058, 0.554872, 0.812217,
		0.461106, 0.681758, -0.567969,
		-0.868885, 0.476785, -0.133099,
		33.976891, 32.129539, 32.647366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698757, 32.472736, 33.165009>,  <34.585110, 31.795790, 32.740532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698757, 32.472736, 33.165009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322971, 32.497597, 33.030220>,  <34.097500, 32.512512, 32.949345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322971, 32.497597, 33.030220>,  <34.698757, 32.472736, 33.165009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322971, 32.497597, 33.030220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209818, 0.673154, 0.709113,
		0.270908, 0.736887, -0.619360,
		-0.939460, 0.062151, -0.336975,
		34.041134, 32.516243, 32.929127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488861, 33.140621, 32.987026>,  <34.698757, 32.472736, 33.165009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488861, 33.140621, 32.987026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163643, 32.944000, 33.111820>,  <33.968513, 32.826027, 33.186695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163643, 32.944000, 33.111820>,  <34.488861, 33.140621, 32.987026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163643, 32.944000, 33.111820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040721, 0.582566, 0.811763,
		-0.580775, 0.647295, -0.493669,
		-0.813045, -0.491554, 0.311981,
		33.919731, 32.796535, 33.205414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480888, 33.345684, 32.179699>,  <34.488861, 33.140621, 32.987026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480888, 33.345684, 32.179699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169540, 33.589680, 32.239094>,  <33.982731, 33.736076, 32.274731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169540, 33.589680, 32.239094>,  <34.480888, 33.345684, 32.179699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169540, 33.589680, 32.239094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117825, 0.374250, -0.919812,
		-0.616647, -0.698461, -0.363178,
		-0.778372, 0.609991, 0.148484,
		33.936028, 33.772678, 32.283638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061310, 33.420021, 31.462414>,  <34.480888, 33.345684, 32.179699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061310, 33.420021, 31.462414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099979, 33.745132, 31.692215>,  <34.123180, 33.940197, 31.830095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099979, 33.745132, 31.692215>,  <34.061310, 33.420021, 31.462414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099979, 33.745132, 31.692215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383119, 0.502344, -0.775158,
		-0.918626, 0.295041, -0.262825,
		0.096675, 0.812774, 0.574502,
		34.128983, 33.988964, 31.864565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619251, 34.114037, 31.367821>,  <34.061310, 33.420021, 31.462414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619251, 34.114037, 31.367821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004486, 34.131172, 31.474127>,  <34.235626, 34.141453, 31.537910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.004486, 34.131172, 31.474127>,  <33.619251, 34.114037, 31.367821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004486, 34.131172, 31.474127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241684, 0.297198, -0.923722,
		-0.118557, 0.953855, 0.275873,
		0.963085, 0.042840, 0.265767,
		34.293411, 34.144024, 31.553856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939346, 34.627708, 31.010735>,  <33.619251, 34.114037, 31.367821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939346, 34.627708, 31.010735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260017, 34.400085, 31.083937>,  <34.452419, 34.263512, 31.127857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260017, 34.400085, 31.083937>,  <33.939346, 34.627708, 31.010735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260017, 34.400085, 31.083937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297734, 0.114659, -0.947738,
		0.518332, 0.814266, 0.261347,
		0.801677, -0.569055, 0.183003,
		34.500519, 34.229370, 31.138838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518185, 35.028244, 30.733912>,  <33.939346, 34.627708, 31.010735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518185, 35.028244, 30.733912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683228, 34.669296, 30.796497>,  <34.782253, 34.453926, 30.834049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683228, 34.669296, 30.796497>,  <34.518185, 35.028244, 30.733912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683228, 34.669296, 30.796497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362646, 0.004254, -0.931917,
		0.835610, 0.441257, 0.327183,
		0.412606, -0.897371, 0.156466,
		34.807011, 34.400085, 30.843437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215000, 35.078609, 30.628441>,  <34.518185, 35.028244, 30.733912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215000, 35.078609, 30.628441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145401, 34.690704, 30.559996>,  <35.103642, 34.457962, 30.518929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145401, 34.690704, 30.559996>,  <35.215000, 35.078609, 30.628441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145401, 34.690704, 30.559996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441267, 0.078561, -0.893931,
		0.880346, -0.231048, 0.414256,
		-0.173997, -0.969765, -0.171115,
		35.093201, 34.399776, 30.508661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755989, 34.848801, 30.176434>,  <35.215000, 35.078609, 30.628441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755989, 34.848801, 30.176434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.509701, 34.534966, 30.147270>,  <35.361927, 34.346664, 30.129772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.509701, 34.534966, 30.147270>,  <35.755989, 34.848801, 30.176434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509701, 34.534966, 30.147270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298299, -0.146450, -0.943170,
		0.729322, -0.602474, 0.324214,
		-0.615716, -0.784588, -0.072908,
		35.324986, 34.299591, 30.125399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128258, 34.477127, 29.764114>,  <35.755989, 34.848801, 30.176434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128258, 34.477127, 29.764114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762417, 34.317333, 29.739100>,  <35.542912, 34.221458, 29.724091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762417, 34.317333, 29.739100>,  <36.128258, 34.477127, 29.764114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762417, 34.317333, 29.739100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105154, -0.085646, -0.990761,
		0.390439, -0.912730, 0.120340,
		-0.914604, -0.399486, -0.062538,
		35.488037, 34.197487, 29.720339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238590, 33.826080, 29.481562>,  <36.128258, 34.477127, 29.764114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238590, 33.826080, 29.481562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860340, 33.930988, 29.404615>,  <35.633389, 33.993935, 29.358448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860340, 33.930988, 29.404615>,  <36.238590, 33.826080, 29.481562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860340, 33.930988, 29.404615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159727, -0.140747, -0.977076,
		-0.283337, -0.954674, 0.091201,
		-0.945626, 0.262274, -0.192366,
		35.576653, 34.009670, 29.346905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046177, 33.369854, 29.014929>,  <36.238590, 33.826080, 29.481562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046177, 33.369854, 29.014929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787125, 33.673172, 28.985085>,  <35.631695, 33.855164, 28.967178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787125, 33.673172, 28.985085>,  <36.046177, 33.369854, 29.014929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787125, 33.673172, 28.985085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012663, -0.108619, -0.994003,
		-0.761850, -0.642801, 0.079947,
		-0.647630, 0.758293, -0.074612,
		35.592834, 33.900661, 28.962702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471607, 33.126499, 28.569685>,  <36.046177, 33.369854, 29.014929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471607, 33.126499, 28.569685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487179, 33.526150, 28.563711>,  <35.496521, 33.765942, 28.560127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487179, 33.526150, 28.563711>,  <35.471607, 33.126499, 28.569685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487179, 33.526150, 28.563711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065000, -0.017448, -0.997733,
		-0.997126, 0.037868, -0.065622,
		0.038927, 0.999130, -0.014937,
		35.498856, 33.825890, 28.559231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015739, 33.245037, 27.990486>,  <35.471607, 33.126499, 28.569685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015739, 33.245037, 27.990486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197678, 33.594246, 28.060850>,  <35.306839, 33.803772, 28.103069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197678, 33.594246, 28.060850>,  <35.015739, 33.245037, 27.990486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197678, 33.594246, 28.060850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153972, 0.117462, -0.981068,
		-0.877161, 0.473316, -0.080995,
		0.454841, 0.873026, 0.175910,
		35.334129, 33.856155, 28.113623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669239, 33.664917, 27.563574>,  <35.015739, 33.245037, 27.990486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669239, 33.664917, 27.563574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022194, 33.832382, 27.649467>,  <35.233967, 33.932861, 27.701004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022194, 33.832382, 27.649467>,  <34.669239, 33.664917, 27.563574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022194, 33.832382, 27.649467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145525, 0.191172, -0.970709,
		-0.447449, 0.887793, 0.107762,
		0.882390, 0.418661, 0.214735,
		35.286911, 33.957981, 27.713888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857727, 34.064083, 26.992460>,  <34.669239, 33.664917, 27.563574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857727, 34.064083, 26.992460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225418, 34.063282, 27.149952>,  <35.446033, 34.062801, 27.244448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225418, 34.063282, 27.149952>,  <34.857727, 34.064083, 26.992460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225418, 34.063282, 27.149952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393186, 0.057511, -0.917658,
		-0.020802, 0.998343, 0.053655,
		0.919223, -0.002007, 0.393731,
		35.501186, 34.062679, 27.268072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263790, 34.595531, 26.682980>,  <34.857727, 34.064083, 26.992460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263790, 34.595531, 26.682980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533405, 34.346645, 26.842239>,  <35.695175, 34.197315, 26.937796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533405, 34.346645, 26.842239>,  <35.263790, 34.595531, 26.682980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533405, 34.346645, 26.842239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455892, -0.073703, -0.886978,
		0.581233, 0.779371, 0.233982,
		0.674040, -0.622212, 0.398148,
		35.735619, 34.159981, 26.961683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857445, 34.809307, 26.323820>,  <35.263790, 34.595531, 26.682980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857445, 34.809307, 26.323820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937477, 34.439236, 26.452824>,  <35.985497, 34.217194, 26.530226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937477, 34.439236, 26.452824>,  <35.857445, 34.809307, 26.323820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937477, 34.439236, 26.452824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317187, -0.250275, -0.914743,
		0.927016, 0.285320, 0.243379,
		0.200083, -0.925179, 0.322509,
		35.997501, 34.161682, 26.549576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648647, 34.614143, 26.211342>,  <35.857445, 34.809307, 26.323820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648647, 34.614143, 26.211342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445679, 34.272907, 26.259953>,  <36.323898, 34.068165, 26.289118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445679, 34.272907, 26.259953>,  <36.648647, 34.614143, 26.211342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445679, 34.272907, 26.259953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510247, -0.411105, -0.755408,
		0.694389, -0.321299, 0.643887,
		-0.507417, -0.853088, 0.121525,
		36.293453, 34.016979, 26.296410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203529, 34.111378, 26.207233>,  <36.648647, 34.614143, 26.211342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203529, 34.111378, 26.207233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856888, 33.946136, 26.095280>,  <36.648903, 33.846992, 26.028109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856888, 33.946136, 26.095280>,  <37.203529, 34.111378, 26.207233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856888, 33.946136, 26.095280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444414, -0.383919, -0.809384,
		0.226910, -0.825802, 0.516298,
		-0.866607, -0.413108, -0.279883,
		36.596905, 33.822205, 26.011314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360413, 33.476887, 25.884092>,  <37.203529, 34.111378, 26.207233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360413, 33.476887, 25.884092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981441, 33.500858, 25.758369>,  <36.754059, 33.515240, 25.682936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981441, 33.500858, 25.758369>,  <37.360413, 33.476887, 25.884092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981441, 33.500858, 25.758369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282037, -0.307495, -0.908791,
		-0.151110, -0.949660, 0.274428,
		-0.947429, 0.059928, -0.314306,
		36.697212, 33.518837, 25.664078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064777, 32.805004, 25.703869>,  <37.360413, 33.476887, 25.884092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064777, 32.805004, 25.703869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830471, 33.068977, 25.515671>,  <36.689888, 33.227360, 25.402752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830471, 33.068977, 25.515671>,  <37.064777, 32.805004, 25.703869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830471, 33.068977, 25.515671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209557, -0.437451, -0.874484,
		-0.782920, -0.610839, 0.117950,
		-0.585766, 0.659934, -0.470495,
		36.654739, 33.266956, 25.374523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755169, 32.351791, 25.187252>,  <37.064777, 32.805004, 25.703869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755169, 32.351791, 25.187252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693077, 32.722729, 25.051056>,  <36.655823, 32.945293, 24.969339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693077, 32.722729, 25.051056>,  <36.755169, 32.351791, 25.187252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693077, 32.722729, 25.051056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267444, -0.292346, -0.918154,
		-0.950988, -0.233585, -0.202633,
		-0.155229, 0.927346, -0.340489,
		36.646507, 33.000931, 24.948910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307899, 32.303879, 24.619486>,  <36.755169, 32.351791, 25.187252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307899, 32.303879, 24.619486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486015, 32.658875, 24.572039>,  <36.592884, 32.871872, 24.543570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486015, 32.658875, 24.572039>,  <36.307899, 32.303879, 24.619486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486015, 32.658875, 24.572039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362731, -0.299923, -0.882311,
		-0.818622, 0.349858, -0.455474,
		0.445291, 0.887494, -0.118619,
		36.619602, 32.925121, 24.536453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118397, 32.619797, 23.927858>,  <36.307899, 32.303879, 24.619486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118397, 32.619797, 23.927858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439518, 32.845119, 24.006033>,  <36.632191, 32.980312, 24.052938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439518, 32.845119, 24.006033>,  <36.118397, 32.619797, 23.927858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439518, 32.845119, 24.006033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342302, -0.167041, -0.924622,
		-0.488201, 0.809186, -0.326922,
		0.802801, 0.563308, 0.195436,
		36.680359, 33.014111, 24.064663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254490, 33.125374, 23.396009>,  <36.118397, 32.619797, 23.927858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254490, 33.125374, 23.396009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604595, 33.095592, 23.587160>,  <36.814659, 33.077724, 23.701851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604595, 33.095592, 23.587160>,  <36.254490, 33.125374, 23.396009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604595, 33.095592, 23.587160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475133, -0.052147, -0.878368,
		0.090319, 0.995860, -0.010266,
		0.875267, -0.074455, 0.477875,
		36.867176, 33.073257, 23.730522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753975, 33.534866, 23.037245>,  <36.254490, 33.125374, 23.396009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753975, 33.534866, 23.037245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963764, 33.271351, 23.252995>,  <37.089638, 33.113243, 23.382444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963764, 33.271351, 23.252995>,  <36.753975, 33.534866, 23.037245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963764, 33.271351, 23.252995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593411, -0.171450, -0.786427,
		0.610562, 0.732535, 0.301009,
		0.524478, -0.658785, 0.539375,
		37.121109, 33.073715, 23.414806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506424, 33.687866, 22.874866>,  <36.753975, 33.534866, 23.037245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506424, 33.687866, 22.874866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.505314, 33.322296, 23.037220>,  <37.504650, 33.102955, 23.134632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.505314, 33.322296, 23.037220>,  <37.506424, 33.687866, 22.874866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505314, 33.322296, 23.037220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745185, -0.272553, -0.608617,
		0.666852, 0.300770, 0.681795,
		-0.002771, -0.913921, 0.405882,
		37.504482, 33.048119, 23.158985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171425, 33.399803, 22.701366>,  <37.506424, 33.687866, 22.874866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171425, 33.399803, 22.701366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964958, 33.065784, 22.777548>,  <37.841080, 32.865372, 22.823257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964958, 33.065784, 22.777548>,  <38.171425, 33.399803, 22.701366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964958, 33.065784, 22.777548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402335, -0.432700, -0.806782,
		0.756110, -0.339805, 0.559312,
		-0.516163, -0.835047, 0.190454,
		37.810108, 32.815269, 22.834684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656712, 32.870552, 22.885021>,  <38.171425, 33.399803, 22.701366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656712, 32.870552, 22.885021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.319355, 32.704182, 22.748968>,  <38.116940, 32.604359, 22.667336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.319355, 32.704182, 22.748968>,  <38.656712, 32.870552, 22.885021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319355, 32.704182, 22.748968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531336, -0.551589, -0.642986,
		0.079823, -0.723015, 0.686205,
		-0.843392, -0.415931, -0.340135,
		38.066338, 32.579403, 22.646927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785397, 32.115322, 22.841450>,  <38.656712, 32.870552, 22.885021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785397, 32.115322, 22.841450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.492008, 32.201714, 22.583651>,  <38.315975, 32.253548, 22.428970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.492008, 32.201714, 22.583651>,  <38.785397, 32.115322, 22.841450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492008, 32.201714, 22.583651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332935, -0.712493, -0.617664,
		-0.592604, -0.667612, 0.450683,
		-0.733468, 0.215982, -0.644497,
		38.271969, 32.266510, 22.390301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065903, 31.465353, 23.324017>,  <38.785397, 32.115322, 22.841450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065903, 31.465353, 23.324017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.454891, 31.407610, 23.250853>,  <39.688286, 31.372965, 23.206955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.454891, 31.407610, 23.250853>,  <39.065903, 31.465353, 23.324017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454891, 31.407610, 23.250853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231727, 0.681478, 0.694184,
		0.024437, -0.717460, 0.696171,
		0.972474, -0.144358, -0.182908,
		39.746632, 31.364302, 23.195980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294189, 31.169165, 23.981852>,  <39.065903, 31.465353, 23.324017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294189, 31.169165, 23.981852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.570927, 31.350733, 23.757240>,  <39.736969, 31.459673, 23.622473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.570927, 31.350733, 23.757240>,  <39.294189, 31.169165, 23.981852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570927, 31.350733, 23.757240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073218, 0.729575, 0.679970,
		0.718317, -0.511552, 0.471524,
		0.691852, 0.453910, -0.561521,
		39.778481, 31.486908, 23.588781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723331, 31.456623, 24.473831>,  <39.294189, 31.169165, 23.981852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723331, 31.456623, 24.473831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.820278, 31.669849, 24.149584>,  <39.878445, 31.797785, 23.955036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.820278, 31.669849, 24.149584>,  <39.723331, 31.456623, 24.473831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820278, 31.669849, 24.149584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305514, 0.751086, 0.585261,
		0.920826, -0.389502, 0.019178,
		0.242365, 0.533064, -0.810618,
		39.892986, 31.829769, 23.906399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435707, 31.623188, 24.565296>,  <39.723331, 31.456623, 24.473831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435707, 31.623188, 24.565296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.258507, 31.880262, 24.315269>,  <40.152187, 32.034508, 24.165253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.258507, 31.880262, 24.315269>,  <40.435707, 31.623188, 24.565296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258507, 31.880262, 24.315269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249098, 0.757995, 0.602821,
		0.861222, 0.111345, -0.495881,
		-0.442997, 0.642686, -0.625067,
		40.125607, 32.073067, 24.127748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780838, 32.196621, 24.682323>,  <40.435707, 31.623188, 24.565296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780838, 32.196621, 24.682323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451801, 32.325851, 24.495150>,  <40.254379, 32.403389, 24.382845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451801, 32.325851, 24.495150>,  <40.780838, 32.196621, 24.682323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451801, 32.325851, 24.495150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070526, 0.874528, 0.479820,
		0.564241, 0.361694, -0.742165,
		-0.822593, 0.323076, -0.467935,
		40.205025, 32.422775, 24.354769>
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
