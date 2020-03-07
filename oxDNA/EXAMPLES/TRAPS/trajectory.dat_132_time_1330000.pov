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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.390202, 52.804348, 49.753204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034496, 52.723885, 49.917515>,  <35.821072, 52.675606, 50.016102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034496, 52.723885, 49.917515>,  <36.390202, 52.804348, 49.753204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034496, 52.723885, 49.917515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313993, 0.384553, 0.868059,
		-0.332583, 0.900919, -0.278809,
		-0.889267, -0.201158, 0.410778,
		35.767715, 52.663536, 50.040749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786366, 53.238983, 50.345768>,  <36.390202, 52.804348, 49.753204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786366, 53.238983, 50.345768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491714, 53.279736, 50.613201>,  <36.314922, 53.304188, 50.773663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491714, 53.279736, 50.613201>,  <36.786366, 53.238983, 50.345768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491714, 53.279736, 50.613201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342761, -0.908456, -0.239212,
		0.583006, -0.405374, 0.704113,
		-0.736626, 0.101881, 0.668582,
		36.270725, 53.310299, 50.813774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622807, 52.766357, 51.048065>,  <36.786366, 53.238983, 50.345768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622807, 52.766357, 51.048065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318542, 52.913673, 50.834240>,  <36.135983, 53.002064, 50.705944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318542, 52.913673, 50.834240>,  <36.622807, 52.766357, 51.048065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318542, 52.913673, 50.834240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162185, -0.905185, -0.392857,
		-0.628562, -0.212133, 0.748271,
		-0.760661, 0.368293, -0.534560,
		36.090343, 53.024162, 50.673870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259956, 53.242935, 51.466011>,  <36.622807, 52.766357, 51.048065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259956, 53.242935, 51.466011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434612, 53.374023, 51.130882>,  <36.539406, 53.452675, 50.929806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434612, 53.374023, 51.130882>,  <36.259956, 53.242935, 51.466011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434612, 53.374023, 51.130882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762798, 0.358867, 0.537916,
		0.476953, -0.873964, -0.093288,
		0.436642, 0.327721, -0.837820,
		36.565605, 53.472340, 50.879536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176346, 53.120228, 52.185108>,  <36.259956, 53.242935, 51.466011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176346, 53.120228, 52.185108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011658, 52.756405, 52.162479>,  <35.912846, 52.538113, 52.148903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011658, 52.756405, 52.162479>,  <36.176346, 53.120228, 52.185108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011658, 52.756405, 52.162479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171232, -0.138188, 0.975492,
		-0.895079, 0.391941, 0.212639,
		-0.411719, -0.909553, -0.056576,
		35.888142, 52.483540, 52.145508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513454, 53.007084, 52.482040>,  <36.176346, 53.120228, 52.185108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513454, 53.007084, 52.482040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797291, 52.731274, 52.540062>,  <35.967594, 52.565788, 52.574875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797291, 52.731274, 52.540062>,  <35.513454, 53.007084, 52.482040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797291, 52.731274, 52.540062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079777, 0.283155, 0.955750,
		-0.700083, -0.666621, 0.255932,
		0.709592, -0.689522, 0.145051,
		36.010170, 52.524418, 52.583576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434658, 52.391933, 52.988564>,  <35.513454, 53.007084, 52.482040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434658, 52.391933, 52.988564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822495, 52.489441, 52.997200>,  <36.055199, 52.547943, 53.002380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822495, 52.489441, 52.997200>,  <35.434658, 52.391933, 52.988564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822495, 52.489441, 52.997200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093793, 0.288692, 0.952817,
		0.226030, -0.925870, 0.302778,
		0.969594, 0.243764, 0.021587,
		36.113373, 52.562569, 53.003677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782146, 51.939461, 53.371716>,  <35.434658, 52.391933, 52.988564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782146, 51.939461, 53.371716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941231, 52.306427, 53.366364>,  <36.036682, 52.526608, 53.363152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941231, 52.306427, 53.366364>,  <35.782146, 51.939461, 53.371716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941231, 52.306427, 53.366364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002902, 0.015841, 0.999870,
		0.917507, -0.397618, 0.008962,
		0.397708, 0.917414, -0.013380,
		36.060543, 52.581650, 53.362350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426620, 51.877270, 53.685760>,  <35.782146, 51.939461, 53.371716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426620, 51.877270, 53.685760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262062, 52.238602, 53.734329>,  <36.163326, 52.455402, 53.763470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262062, 52.238602, 53.734329>,  <36.426620, 51.877270, 53.685760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262062, 52.238602, 53.734329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103655, -0.085989, 0.990889,
		0.905543, 0.420234, -0.058259,
		-0.411396, 0.903332, 0.121426,
		36.138645, 52.509602, 53.770756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729954, 52.350632, 54.261471>,  <36.426620, 51.877270, 53.685760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729954, 52.350632, 54.261471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346439, 52.460659, 54.233002>,  <36.116329, 52.526676, 54.215919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346439, 52.460659, 54.233002>,  <36.729954, 52.350632, 54.261471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346439, 52.460659, 54.233002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143664, -0.253213, 0.956684,
		0.245129, 0.927481, 0.282294,
		-0.958787, 0.275067, -0.071176,
		36.058804, 52.543179, 54.211651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632862, 52.938488, 54.802811>,  <36.729954, 52.350632, 54.261471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632862, 52.938488, 54.802811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337479, 52.675625, 54.742386>,  <36.160248, 52.517906, 54.706131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337479, 52.675625, 54.742386>,  <36.632862, 52.938488, 54.802811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337479, 52.675625, 54.742386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165703, -0.040300, 0.985352,
		-0.653618, 0.752677, -0.079132,
		-0.738462, -0.657156, -0.151061,
		36.115940, 52.478477, 54.697067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244114, 53.090908, 54.328300>,  <36.632862, 52.938488, 54.802811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244114, 53.090908, 54.328300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344711, 53.408375, 54.106728>,  <37.405071, 53.598854, 53.973785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344711, 53.408375, 54.106728>,  <37.244114, 53.090908, 54.328300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344711, 53.408375, 54.106728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765737, 0.186869, 0.615407,
		0.591942, -0.578939, -0.560745,
		0.251497, 0.793668, -0.553931,
		37.420162, 53.646477, 53.940548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957298, 53.088654, 54.111816>,  <37.244114, 53.090908, 54.328300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957298, 53.088654, 54.111816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836376, 53.467049, 54.158661>,  <37.763824, 53.694088, 54.186768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836376, 53.467049, 54.158661>,  <37.957298, 53.088654, 54.111816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836376, 53.467049, 54.158661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778005, 0.173887, 0.603716,
		0.550745, 0.273618, -0.788551,
		-0.302306, 0.945990, 0.117109,
		37.745686, 53.750847, 54.193794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527096, 53.586933, 54.002228>,  <37.957298, 53.088654, 54.111816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527096, 53.586933, 54.002228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253769, 53.723881, 54.260178>,  <38.089771, 53.806049, 54.414948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253769, 53.723881, 54.260178>,  <38.527096, 53.586933, 54.002228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253769, 53.723881, 54.260178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646560, -0.126550, 0.752293,
		0.339170, 0.931004, -0.134888,
		-0.683318, 0.342368, 0.644872,
		38.048775, 53.826591, 54.453640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728848, 54.233734, 54.399067>,  <38.527096, 53.586933, 54.002228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728848, 54.233734, 54.399067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478142, 54.011204, 54.617302>,  <38.327717, 53.877686, 54.748241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478142, 54.011204, 54.617302>,  <38.728848, 54.233734, 54.399067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478142, 54.011204, 54.617302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610704, 0.084152, 0.787375,
		-0.483950, 0.826692, 0.287007,
		-0.626765, -0.556327, 0.545589,
		38.290112, 53.844307, 54.780979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073380, 54.060490, 55.099419>,  <38.728848, 54.233734, 54.399067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073380, 54.060490, 55.099419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387371, 54.242050, 54.930763>,  <39.575768, 54.350986, 54.829571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387371, 54.242050, 54.930763>,  <39.073380, 54.060490, 55.099419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387371, 54.242050, 54.930763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423293, -0.889910, -0.169948,
		-0.452359, -0.045070, -0.890697,
		0.784981, 0.453903, -0.421636,
		39.622864, 54.378220, 54.804272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320511, 53.498604, 54.776371>,  <39.073380, 54.060490, 55.099419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320511, 53.498604, 54.776371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637329, 53.741760, 54.798729>,  <39.827419, 53.887653, 54.812145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637329, 53.741760, 54.798729>,  <39.320511, 53.498604, 54.776371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637329, 53.741760, 54.798729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610456, -0.788390, -0.076064,
		-0.002170, 0.094369, -0.995535,
		0.792047, 0.607895, 0.055897,
		39.874943, 53.924129, 54.815498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734486, 53.500252, 54.227425>,  <39.320511, 53.498604, 54.776371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734486, 53.500252, 54.227425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960743, 53.548721, 54.553703>,  <40.096497, 53.577801, 54.749470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960743, 53.548721, 54.553703>,  <39.734486, 53.500252, 54.227425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960743, 53.548721, 54.553703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547035, -0.795317, -0.261197,
		0.617088, 0.593960, -0.516153,
		0.565645, 0.121172, 0.815698,
		40.130436, 53.585072, 54.798412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387810, 53.749001, 54.159462>,  <39.734486, 53.500252, 54.227425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387810, 53.749001, 54.159462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382103, 53.469788, 54.445831>,  <40.378677, 53.302261, 54.617653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382103, 53.469788, 54.445831>,  <40.387810, 53.749001, 54.159462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382103, 53.469788, 54.445831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328507, -0.679524, -0.655995,
		0.944394, 0.225826, 0.239005,
		-0.014268, -0.698032, 0.715924,
		40.377823, 53.260376, 54.660610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943630, 53.355003, 54.033928>,  <40.387810, 53.749001, 54.159462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943630, 53.355003, 54.033928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669106, 53.149212, 54.239559>,  <40.504391, 53.025738, 54.362938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669106, 53.149212, 54.239559>,  <40.943630, 53.355003, 54.033928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669106, 53.149212, 54.239559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090014, -0.761482, -0.641905,
		0.721712, -0.394275, 0.568928,
		-0.686316, -0.514482, 0.514081,
		40.463211, 52.994865, 54.393784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558487, 52.948780, 53.964321>,  <40.943630, 53.355003, 54.033928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558487, 52.948780, 53.964321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885490, 52.721279, 54.000534>,  <42.081692, 52.584778, 54.022263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885490, 52.721279, 54.000534>,  <41.558487, 52.948780, 53.964321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885490, 52.721279, 54.000534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131555, 0.031376, -0.990812,
		0.560686, 0.821910, 0.100473,
		0.817511, -0.568752, 0.090534,
		42.130745, 52.550652, 54.027695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104385, 53.474213, 53.595528>,  <41.558487, 52.948780, 53.964321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104385, 53.474213, 53.595528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183399, 53.772495, 53.850052>,  <42.230808, 53.951466, 54.002766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183399, 53.772495, 53.850052>,  <42.104385, 53.474213, 53.595528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183399, 53.772495, 53.850052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967981, -0.250941, -0.006417,
		0.154892, 0.617209, -0.771402,
		0.197537, 0.745709, 0.636315,
		42.242661, 53.996208, 54.040947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767612, 53.752071, 53.407047>,  <42.104385, 53.474213, 53.595528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767612, 53.752071, 53.407047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722321, 53.902401, 53.774948>,  <42.695145, 53.992599, 53.995689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722321, 53.902401, 53.774948>,  <42.767612, 53.752071, 53.407047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722321, 53.902401, 53.774948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951339, -0.226005, 0.209464,
		0.286589, 0.898709, -0.331947,
		-0.113225, 0.375825, 0.919748,
		42.688354, 54.015148, 54.050873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203339, 54.391907, 53.560371>,  <42.767612, 53.752071, 53.407047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203339, 54.391907, 53.560371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151482, 54.171192, 53.889908>,  <43.120365, 54.038761, 54.087631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151482, 54.171192, 53.889908>,  <43.203339, 54.391907, 53.560371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151482, 54.171192, 53.889908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945199, -0.319860, -0.065492,
		0.299652, 0.770206, 0.563019,
		-0.129645, -0.551790, 0.823845,
		43.112587, 54.005653, 54.137062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714417, 54.690849, 54.032944>,  <43.203339, 54.391907, 53.560371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714417, 54.690849, 54.032944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619259, 54.311333, 54.116089>,  <43.562164, 54.083622, 54.165977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619259, 54.311333, 54.116089>,  <43.714417, 54.690849, 54.032944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619259, 54.311333, 54.116089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960229, -0.261942, -0.096676,
		0.146173, 0.176600, 0.973368,
		-0.237893, -0.948788, 0.207865,
		43.547890, 54.026695, 54.178448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306648, 54.384949, 54.253910>,  <43.714417, 54.690849, 54.032944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306648, 54.384949, 54.253910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087177, 54.063011, 54.163414>,  <43.955494, 53.869850, 54.109116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087177, 54.063011, 54.163414>,  <44.306648, 54.384949, 54.253910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087177, 54.063011, 54.163414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809022, -0.442897, -0.386428,
		0.210812, -0.395057, 0.894141,
		-0.548673, -0.804843, -0.226242,
		43.922577, 53.821560, 54.095543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677113, 53.867447, 54.600780>,  <44.306648, 54.384949, 54.253910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677113, 53.867447, 54.600780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467514, 53.777584, 54.272156>,  <44.341755, 53.723667, 54.074982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467514, 53.777584, 54.272156>,  <44.677113, 53.867447, 54.600780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467514, 53.777584, 54.272156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818369, -0.400091, -0.412553,
		-0.236013, -0.888513, 0.393502,
		-0.523995, -0.224662, -0.821557,
		44.310314, 53.710186, 54.025688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791073, 53.172943, 54.510834>,  <44.677113, 53.867447, 54.600780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791073, 53.172943, 54.510834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708130, 53.337284, 54.155712>,  <44.658363, 53.435890, 53.942638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708130, 53.337284, 54.155712>,  <44.791073, 53.172943, 54.510834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708130, 53.337284, 54.155712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900193, -0.275134, -0.337572,
		-0.382958, -0.869196, -0.312796,
		-0.207356, 0.410852, -0.887809,
		44.645924, 53.460541, 53.889370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070461, 52.767307, 53.912373>,  <44.791073, 53.172943, 54.510834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070461, 52.767307, 53.912373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037621, 53.138573, 53.767174>,  <45.017918, 53.361332, 53.680054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037621, 53.138573, 53.767174>,  <45.070461, 52.767307, 53.912373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037621, 53.138573, 53.767174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928028, -0.061593, -0.367383,
		-0.363351, -0.367031, -0.856309,
		-0.082098, 0.928167, -0.362995,
		45.012993, 53.417023, 53.658276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209953, 53.043484, 53.104866>,  <45.070461, 52.767307, 53.912373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209953, 53.043484, 53.104866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305779, 53.308064, 53.389145>,  <45.363274, 53.466812, 53.559711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305779, 53.308064, 53.389145>,  <45.209953, 53.043484, 53.104866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305779, 53.308064, 53.389145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970067, -0.133112, -0.203103,
		-0.039740, 0.738082, -0.673539,
		0.239563, 0.661450, 0.710700,
		45.377647, 53.506500, 53.602356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710815, 53.361340, 52.870213>,  <45.209953, 53.043484, 53.104866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710815, 53.361340, 52.870213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816093, 53.444618, 53.247017>,  <45.879261, 53.494587, 53.473099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816093, 53.444618, 53.247017>,  <45.710815, 53.361340, 52.870213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816093, 53.444618, 53.247017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964466, -0.080150, -0.251757,
		0.023086, 0.974797, -0.221898,
		0.263197, 0.208201, 0.942008,
		45.895054, 53.507080, 53.529621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130669, 53.908852, 52.779686>,  <45.710815, 53.361340, 52.870213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130669, 53.908852, 52.779686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221230, 53.737404, 53.129547>,  <46.275566, 53.634533, 53.339466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221230, 53.737404, 53.129547>,  <46.130669, 53.908852, 52.779686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221230, 53.737404, 53.129547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923957, -0.189713, -0.332132,
		0.308293, 0.883341, 0.353078,
		0.226402, -0.428623, 0.874657,
		46.289150, 53.608818, 53.391945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851620, 54.185017, 52.904316>,  <46.130669, 53.908852, 52.779686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851620, 54.185017, 52.904316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776653, 53.843842, 53.099197>,  <46.731674, 53.639137, 53.216125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776653, 53.843842, 53.099197>,  <46.851620, 54.185017, 52.904316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776653, 53.843842, 53.099197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982275, -0.161129, 0.095777,
		-0.003190, 0.496520, 0.868019,
		-0.187418, -0.852939, 0.487206,
		46.720428, 53.587959, 53.245358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.060379, 54.206459, 53.651562>,  <46.851620, 54.185017, 52.904316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.060379, 54.206459, 53.651562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071823, 53.825382, 53.530533>,  <47.078690, 53.596737, 53.457916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071823, 53.825382, 53.530533>,  <47.060379, 54.206459, 53.651562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071823, 53.825382, 53.530533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970708, -0.045756, 0.235864,
		-0.238552, -0.300461, 0.923481,
		0.028613, -0.952696, -0.302575,
		47.080406, 53.539574, 53.439762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.491211, 53.936943, 54.092087>,  <47.060379, 54.206459, 53.651562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.491211, 53.936943, 54.092087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.499828, 53.677666, 53.787617>,  <47.504997, 53.522099, 53.604935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.499828, 53.677666, 53.787617>,  <47.491211, 53.936943, 54.092087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.499828, 53.677666, 53.787617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974813, -0.155428, 0.159942,
		-0.221981, -0.745446, 0.628518,
		0.021539, -0.648192, -0.761173,
		47.506290, 53.483208, 53.559265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.714790, 53.223572, 54.246910>,  <47.491211, 53.936943, 54.092087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.714790, 53.223572, 54.246910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809704, 53.325722, 53.872002>,  <47.866653, 53.387012, 53.647057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809704, 53.325722, 53.872002>,  <47.714790, 53.223572, 54.246910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.809704, 53.325722, 53.872002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968647, 0.010900, 0.248200,
		0.073601, -0.966780, -0.244783,
		0.237287, 0.255376, -0.937272,
		47.880890, 53.402336, 53.590820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.361557, 52.932251, 54.136189>,  <47.714790, 53.223572, 54.246910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.361557, 52.932251, 54.136189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.375786, 53.234131, 53.874146>,  <48.384323, 53.415257, 53.716919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.375786, 53.234131, 53.874146>,  <48.361557, 52.932251, 54.136189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.375786, 53.234131, 53.874146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989480, 0.065389, 0.129051,
		0.140231, -0.652806, -0.744432,
		0.035568, 0.754698, -0.655108,
		48.386456, 53.460541, 53.677612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.899384, 52.890167, 53.639484>,  <48.361557, 52.932251, 54.136189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.899384, 52.890167, 53.639484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.815002, 53.280090, 53.668488>,  <48.764374, 53.514042, 53.685890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.815002, 53.280090, 53.668488>,  <48.899384, 52.890167, 53.639484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.815002, 53.280090, 53.668488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957148, 0.190937, 0.217738,
		0.198408, 0.115332, -0.973310,
		-0.210953, 0.974803, 0.072506,
		48.751717, 53.572533, 53.690239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.306911, 53.382660, 53.154171>,  <48.899384, 52.890167, 53.639484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.306911, 53.382660, 53.154171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.222385, 53.507145, 53.524792>,  <49.171669, 53.581837, 53.747166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.222385, 53.507145, 53.524792>,  <49.306911, 53.382660, 53.154171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.222385, 53.507145, 53.524792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969403, -0.054423, 0.239366,
		0.124918, 0.948782, -0.290186,
		-0.211314, 0.311208, 0.926551,
		49.158993, 53.600506, 53.802757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.800373, 53.781498, 53.418022>,  <49.306911, 53.382660, 53.154171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.800373, 53.781498, 53.418022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.619183, 53.629677, 53.740700>,  <49.510468, 53.538582, 53.934307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.619183, 53.629677, 53.740700>,  <49.800373, 53.781498, 53.418022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.619183, 53.629677, 53.740700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891457, -0.181928, 0.414977,
		-0.010747, 0.907105, 0.420767,
		-0.452977, -0.379555, 0.806690,
		49.483288, 53.515812, 53.982708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.778954, 54.177334, 54.136539>,  <49.800373, 53.781498, 53.418022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.778954, 54.177334, 54.136539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.824081, 53.780041, 54.125469>,  <49.851158, 53.541664, 54.118828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.824081, 53.780041, 54.125469>,  <49.778954, 54.177334, 54.136539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.824081, 53.780041, 54.125469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910309, 0.092154, 0.403540,
		-0.398259, -0.070716, 0.914543,
		0.112816, -0.993230, -0.027672,
		49.857925, 53.482071, 54.117168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.859459, 53.775017, 54.827564>,  <49.778954, 54.177334, 54.136539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.859459, 53.775017, 54.827564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.059990, 53.576557, 54.544014>,  <50.180309, 53.457481, 54.373882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.059990, 53.576557, 54.544014>,  <49.859459, 53.775017, 54.827564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.059990, 53.576557, 54.544014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792801, -0.064791, 0.606027,
		-0.346607, -0.865818, 0.360863,
		0.501329, -0.496146, -0.708879,
		50.210388, 53.427715, 54.331352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.115700, 53.108067, 55.095936>,  <49.859459, 53.775017, 54.827564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.115700, 53.108067, 55.095936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409794, 53.205193, 54.842808>,  <50.586250, 53.263470, 54.690929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409794, 53.205193, 54.842808>,  <50.115700, 53.108067, 55.095936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.409794, 53.205193, 54.842808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677132, -0.304851, 0.669745,
		-0.030292, -0.920927, -0.388556,
		0.735238, 0.242815, -0.632824,
		50.630363, 53.278038, 54.652962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.704025, 52.614376, 55.034351>,  <50.115700, 53.108067, 55.095936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.704025, 52.614376, 55.034351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.904129, 52.952831, 54.960823>,  <51.024189, 53.155907, 54.916706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.904129, 52.952831, 54.960823>,  <50.704025, 52.614376, 55.034351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.904129, 52.952831, 54.960823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810960, -0.383449, 0.441940,
		0.303459, -0.370152, -0.878009,
		0.500257, 0.846141, -0.183817,
		51.054207, 53.206673, 54.905678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.444832, 52.493248, 54.736393>,  <50.704025, 52.614376, 55.034351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.444832, 52.493248, 54.736393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.399876, 52.833538, 54.941772>,  <51.372902, 53.037712, 55.065002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.399876, 52.833538, 54.941772>,  <51.444832, 52.493248, 54.736393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.399876, 52.833538, 54.941772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805216, -0.224797, 0.548720,
		0.582233, 0.475112, -0.659753,
		-0.112392, 0.850726, 0.513452,
		51.366158, 53.088757, 55.095810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.199280, 52.796642, 54.826305>,  <51.444832, 52.493248, 54.736393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.199280, 52.796642, 54.826305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.945793, 52.954716, 55.092308>,  <51.793701, 53.049561, 55.251907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.945793, 52.954716, 55.092308>,  <52.199280, 52.796642, 54.826305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.945793, 52.954716, 55.092308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674969, -0.137495, 0.724922,
		0.377912, 0.908254, -0.179603,
		-0.633719, 0.395183, 0.665004,
		51.755676, 53.073269, 55.291809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.314278, 53.453991, 55.026482>,  <52.199280, 52.796642, 54.826305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.314278, 53.453991, 55.026482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.177216, 53.204483, 55.307480>,  <52.094978, 53.054779, 55.476078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.177216, 53.204483, 55.307480>,  <52.314278, 53.453991, 55.026482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.177216, 53.204483, 55.307480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908420, -0.029374, 0.417025,
		-0.239492, 0.781056, 0.576711,
		-0.342660, -0.623770, 0.702492,
		52.074417, 53.017353, 55.518227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.623875, 53.588032, 55.683411>,  <52.314278, 53.453991, 55.026482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.623875, 53.588032, 55.683411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.542522, 53.199455, 55.634506>,  <52.493713, 52.966309, 55.605164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.542522, 53.199455, 55.634506>,  <52.623875, 53.588032, 55.683411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.542522, 53.199455, 55.634506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890298, -0.235449, 0.389786,
		-0.407439, -0.029576, 0.912754,
		-0.203378, -0.971437, -0.122263,
		52.481510, 52.908024, 55.597828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.896114, 53.207375, 56.303757>,  <52.623875, 53.588032, 55.683411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.896114, 53.207375, 56.303757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.861057, 52.979462, 55.976913>,  <52.840023, 52.842716, 55.780807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.861057, 52.979462, 55.976913>,  <52.896114, 53.207375, 56.303757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.861057, 52.979462, 55.976913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968134, -0.241895, 0.064834,
		-0.234596, -0.785390, 0.572824,
		-0.087643, -0.569780, -0.817110,
		52.834766, 52.808529, 55.731781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.400124, 53.609161, 56.711689>,  <52.896114, 53.207375, 56.303757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.400124, 53.609161, 56.711689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.764980, 53.764545, 56.659401>,  <53.983894, 53.857777, 56.628029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.764980, 53.764545, 56.659401>,  <53.400124, 53.609161, 56.711689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.764980, 53.764545, 56.659401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113705, 0.066585, 0.991281,
		0.393778, -0.919056, 0.016565,
		0.912146, 0.388461, -0.130721,
		54.038624, 53.881084, 56.620186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.858692, 53.270885, 57.238598>,  <53.400124, 53.609161, 56.711689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.858692, 53.270885, 57.238598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.935535, 53.642490, 57.112083>,  <53.981640, 53.865452, 57.036175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.935535, 53.642490, 57.112083>,  <53.858692, 53.270885, 57.238598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.935535, 53.642490, 57.112083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314690, 0.246951, 0.916507,
		0.929551, -0.275599, -0.244908,
		0.192108, 0.929010, -0.316282,
		53.993168, 53.921192, 57.017200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.322544, 53.467121, 57.634739>,  <53.858692, 53.270885, 57.238598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.322544, 53.467121, 57.634739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.211670, 53.822945, 57.489494>,  <54.145145, 54.036438, 57.402348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.211670, 53.822945, 57.489494>,  <54.322544, 53.467121, 57.634739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.211670, 53.822945, 57.489494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184873, 0.420233, 0.888384,
		0.942864, 0.179115, -0.280937,
		-0.277182, 0.889563, -0.363109,
		54.128517, 54.089813, 57.380562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.771793, 54.128345, 57.515461>,  <54.322544, 53.467121, 57.634739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.771793, 54.128345, 57.515461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.394424, 54.110786, 57.646935>,  <54.168003, 54.100250, 57.725819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.394424, 54.110786, 57.646935>,  <54.771793, 54.128345, 57.515461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.394424, 54.110786, 57.646935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278071, 0.435257, 0.856287,
		-0.180652, 0.899235, -0.398422,
		-0.943420, -0.043900, 0.328682,
		54.111397, 54.097618, 57.745541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.446754, 54.622959, 56.975159>,  <54.771793, 54.128345, 57.515461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.446754, 54.622959, 56.975159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.733078, 54.349426, 56.918587>,  <54.904873, 54.185307, 56.884644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.733078, 54.349426, 56.918587>,  <54.446754, 54.622959, 56.975159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.733078, 54.349426, 56.918587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296899, 0.481349, -0.824714,
		0.632040, 0.548344, 0.547580,
		0.715804, -0.683829, -0.141429,
		54.947819, 54.144276, 56.876160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.102955, 54.844334, 56.825016>,  <54.446754, 54.622959, 56.975159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.102955, 54.844334, 56.825016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.251671, 54.503960, 56.676590>,  <55.340900, 54.299736, 56.587532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.251671, 54.503960, 56.676590>,  <55.102955, 54.844334, 56.825016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.251671, 54.503960, 56.676590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545166, 0.523668, -0.654650,
		0.751378, 0.041098, 0.658591,
		0.371788, -0.850931, -0.371067,
		55.363209, 54.248680, 56.565269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.841675, 54.774727, 56.794956>,  <55.102955, 54.844334, 56.825016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.841675, 54.774727, 56.794956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.668045, 54.583103, 56.489777>,  <55.563869, 54.468128, 56.306671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.668045, 54.583103, 56.489777>,  <55.841675, 54.774727, 56.794956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.668045, 54.583103, 56.489777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506181, 0.570874, -0.646439,
		0.745226, -0.666790, -0.005313,
		-0.434072, -0.479054, -0.762947,
		55.537823, 54.439388, 56.260891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.648174, 54.863277, 57.042137>,  <55.841675, 54.774727, 56.794956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.648174, 54.863277, 57.042137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.934341, 55.050220, 57.249886>,  <57.106041, 55.162388, 57.374535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.934341, 55.050220, 57.249886>,  <56.648174, 54.863277, 57.042137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.934341, 55.050220, 57.249886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691385, 0.366313, 0.622737,
		0.100787, -0.804607, 0.585192,
		0.715422, 0.467357, 0.519374,
		57.148968, 55.190426, 57.405697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.639820, 54.766113, 57.857674>,  <56.648174, 54.863277, 57.042137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.639820, 54.766113, 57.857674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.817223, 55.109352, 57.754158>,  <56.923664, 55.315296, 57.692051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.817223, 55.109352, 57.754158>,  <56.639820, 54.766113, 57.857674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.817223, 55.109352, 57.754158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617800, 0.501872, 0.605350,
		0.649326, -0.108600, 0.752716,
		0.443508, 0.858097, -0.258786,
		56.950275, 55.366783, 57.676521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.932434, 55.029568, 58.539135>,  <56.639820, 54.766113, 57.857674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.932434, 55.029568, 58.539135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.833740, 55.289234, 58.251328>,  <56.774525, 55.445034, 58.078644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.833740, 55.289234, 58.251328>,  <56.932434, 55.029568, 58.539135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.833740, 55.289234, 58.251328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611858, 0.471414, 0.635138,
		0.751500, 0.596953, 0.280883,
		-0.246735, 0.649166, -0.719518,
		56.759720, 55.483982, 58.035473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.134773, 55.715469, 58.760670>,  <56.932434, 55.029568, 58.539135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.134773, 55.715469, 58.760670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.811729, 55.698761, 58.525375>,  <56.617905, 55.688736, 58.384197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.811729, 55.698761, 58.525375>,  <57.134773, 55.715469, 58.760670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.811729, 55.698761, 58.525375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556259, 0.385168, 0.736357,
		0.195813, 0.921901, -0.334300,
		-0.807610, -0.041769, -0.588236,
		56.569447, 55.686230, 58.348904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.826740, 56.082264, 58.653423>,  <57.134773, 55.715469, 58.760670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.826740, 56.082264, 58.653423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.882362, 56.166725, 58.266418>,  <57.915733, 56.217400, 58.034214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.882362, 56.166725, 58.266418>,  <57.826740, 56.082264, 58.653423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.882362, 56.166725, 58.266418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038105, 0.975139, 0.218291,
		0.989552, -0.067221, 0.127549,
		0.139052, 0.211150, -0.967512,
		57.924080, 56.230072, 57.976166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.407719, 56.440311, 58.643909>,  <57.826740, 56.082264, 58.653423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.407719, 56.440311, 58.643909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.160194, 56.539623, 58.345802>,  <58.011681, 56.599209, 58.166939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.160194, 56.539623, 58.345802>,  <58.407719, 56.440311, 58.643909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.160194, 56.539623, 58.345802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132606, 0.968139, 0.212420,
		0.774265, 0.032621, -0.632020,
		-0.618813, 0.248279, -0.745270,
		57.974552, 56.614105, 58.122223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.062912, 56.135101, 58.276096>,  <58.407719, 56.440311, 58.643909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.062912, 56.135101, 58.276096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.089508, 56.042446, 57.887886>,  <59.105465, 55.986855, 57.654961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.089508, 56.042446, 57.887886>,  <59.062912, 56.135101, 58.276096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.089508, 56.042446, 57.887886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937152, -0.319412, 0.140435,
		-0.342528, -0.918869, 0.195840,
		0.066487, -0.231635, -0.970528,
		59.109455, 55.972954, 57.596729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.264000, 55.355637, 58.206543>,  <59.062912, 56.135101, 58.276096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.264000, 55.355637, 58.206543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.437164, 55.592236, 57.934448>,  <59.541061, 55.734196, 57.771191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.437164, 55.592236, 57.934448>,  <59.264000, 55.355637, 58.206543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.437164, 55.592236, 57.934448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901167, -0.265446, 0.342690,
		0.022132, -0.761363, -0.647948,
		0.432907, 0.591494, -0.680240,
		59.567036, 55.769684, 57.730377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.974609, 55.137539, 58.303616>,  <59.264000, 55.355637, 58.206543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.974609, 55.137539, 58.303616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.292267, 55.341007, 58.436638>,  <60.482861, 55.463089, 58.516453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.292267, 55.341007, 58.436638>,  <59.974609, 55.137539, 58.303616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.292267, 55.341007, 58.436638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426930, -0.856384, 0.290407,
		0.432517, -0.088646, -0.897257,
		0.794140, 0.508673, 0.332555,
		60.530510, 55.493610, 58.536404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.683201, 54.691540, 58.237026>,  <59.974609, 55.137539, 58.303616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.683201, 54.691540, 58.237026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.775414, 54.972183, 58.506721>,  <60.830742, 55.140568, 58.668541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.775414, 54.972183, 58.506721>,  <60.683201, 54.691540, 58.237026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.775414, 54.972183, 58.506721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676385, -0.613674, 0.407317,
		0.699541, 0.362146, -0.616029,
		0.230533, 0.701608, 0.674241,
		60.844574, 55.182667, 58.708992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.481754, 54.845776, 58.340187>,  <60.683201, 54.691540, 58.237026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.481754, 54.845776, 58.340187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.277191, 54.901470, 58.679382>,  <61.154453, 54.934887, 58.882900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.277191, 54.901470, 58.679382>,  <61.481754, 54.845776, 58.340187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.277191, 54.901470, 58.679382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715071, -0.478319, 0.509788,
		0.476589, 0.867078, 0.145050,
		-0.511406, 0.139238, 0.847984,
		61.123768, 54.943241, 58.933777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.883156, 55.249554, 59.038395>,  <61.481754, 54.845776, 58.340187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.883156, 55.249554, 59.038395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.612595, 54.958092, 59.081345>,  <61.450256, 54.783215, 59.107117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.612595, 54.958092, 59.081345>,  <61.883156, 55.249554, 59.038395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.612595, 54.958092, 59.081345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709919, -0.606171, 0.358568,
		-0.196186, 0.318767, 0.927307,
		-0.676407, -0.728659, 0.107377,
		61.409672, 54.739494, 59.113556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.323345, 54.703522, 59.380020>,  <61.883156, 55.249554, 59.038395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.323345, 54.703522, 59.380020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.070160, 54.495846, 59.150307>,  <61.918247, 54.371243, 59.012478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.070160, 54.495846, 59.150307>,  <62.323345, 54.703522, 59.380020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.070160, 54.495846, 59.150307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430684, 0.852557, -0.296073,
		0.643324, 0.059930, -0.763245,
		-0.632966, -0.519188, -0.574281,
		61.880272, 54.340088, 58.978024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.512211, 55.019211, 58.739811>,  <62.323345, 54.703522, 59.380020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.512211, 55.019211, 58.739811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.132790, 54.898689, 58.778725>,  <61.905136, 54.826378, 58.802074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.132790, 54.898689, 58.778725>,  <62.512211, 55.019211, 58.739811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.132790, 54.898689, 58.778725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313481, 0.936868, -0.154943,
		-0.044461, -0.177470, -0.983121,
		-0.948553, -0.301301, 0.097288,
		61.848225, 54.808300, 58.807911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.911240, 55.479122, 59.182976>,  <62.512211, 55.019211, 58.739811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.911240, 55.479122, 59.182976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.179939, 55.772964, 59.144806>,  <63.341160, 55.949268, 59.121902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.179939, 55.772964, 59.144806>,  <62.911240, 55.479122, 59.182976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.179939, 55.772964, 59.144806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560430, 0.419728, -0.713966,
		-0.484430, 0.533086, 0.693647,
		0.671749, 0.734607, -0.095428,
		63.381462, 55.993347, 59.116177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.671188, 56.111237, 59.362473>,  <62.911240, 55.479122, 59.182976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.671188, 56.111237, 59.362473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.946243, 56.135311, 59.073051>,  <63.111279, 56.149757, 58.899399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.946243, 56.135311, 59.073051>,  <62.671188, 56.111237, 59.362473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.946243, 56.135311, 59.073051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649839, 0.495487, -0.576370,
		0.323821, 0.866528, 0.379828,
		0.687641, 0.060186, -0.723552,
		63.152534, 56.153366, 58.855988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.977116, 56.794094, 59.284889>,  <62.671188, 56.111237, 59.362473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.977116, 56.794094, 59.284889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.964409, 56.575722, 58.949997>,  <62.956787, 56.444698, 58.749062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.964409, 56.575722, 58.949997>,  <62.977116, 56.794094, 59.284889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.964409, 56.575722, 58.949997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550434, 0.708736, -0.441266,
		0.834274, 0.446822, -0.323011,
		-0.031762, -0.545933, -0.837226,
		62.954880, 56.411942, 58.698830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.228634, 57.109787, 59.072975>,  <62.977116, 56.794094, 59.284889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.228634, 57.109787, 59.072975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.221451, 57.448132, 58.859734>,  <62.217140, 57.651138, 58.731789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.221451, 57.448132, 58.859734>,  <62.228634, 57.109787, 59.072975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.221451, 57.448132, 58.859734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987289, 0.099213, 0.124164,
		0.157917, -0.524098, -0.836889,
		-0.017956, 0.845859, -0.533104,
		62.216064, 57.701889, 58.699802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.705662, 57.125275, 58.601048>,  <62.228634, 57.109787, 59.072975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.705662, 57.125275, 58.601048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.636093, 57.511398, 58.678947>,  <62.594353, 57.743073, 58.725685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.636093, 57.511398, 58.678947>,  <62.705662, 57.125275, 58.601048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.636093, 57.511398, 58.678947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978150, 0.146464, 0.147552,
		0.113911, 0.216152, -0.969692,
		-0.173919, 0.965312, 0.194745,
		62.583916, 57.800991, 58.737370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.182968, 57.638794, 58.198170>,  <62.705662, 57.125275, 58.601048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.182968, 57.638794, 58.198170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.068092, 57.801979, 58.544830>,  <62.999165, 57.899891, 58.752827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.068092, 57.801979, 58.544830>,  <63.182968, 57.638794, 58.198170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.068092, 57.801979, 58.544830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957842, 0.115122, 0.263221,
		0.007613, 0.905712, -0.423824,
		-0.287194, 0.407961, 0.866653,
		62.981934, 57.924366, 58.804825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.371281, 58.383526, 58.291718>,  <63.182968, 57.638794, 58.198170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.371281, 58.383526, 58.291718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.361069, 58.171120, 58.630508>,  <63.354942, 58.043674, 58.833782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.361069, 58.171120, 58.630508>,  <63.371281, 58.383526, 58.291718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.361069, 58.171120, 58.630508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976911, 0.166522, 0.133852,
		-0.212117, 0.830840, 0.514501,
		-0.025534, -0.531014, 0.846978,
		63.353409, 58.011814, 58.884602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.637115, 58.801567, 58.690308>,  <63.371281, 58.383526, 58.291718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.637115, 58.801567, 58.690308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.682739, 58.440701, 58.856728>,  <63.710114, 58.224182, 58.956577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.682739, 58.440701, 58.856728>,  <63.637115, 58.801567, 58.690308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.682739, 58.440701, 58.856728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962410, 0.204239, 0.179034,
		-0.246490, 0.379987, 0.891545,
		0.114057, -0.902162, 0.416047,
		63.716957, 58.170052, 58.981541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.344421, 58.655624, 58.535664>,  <63.637115, 58.801567, 58.690308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.344421, 58.655624, 58.535664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.604424, 58.932964, 58.660080>,  <64.760429, 59.099369, 58.734730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.604424, 58.932964, 58.660080>,  <64.344421, 58.655624, 58.535664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.604424, 58.932964, 58.660080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453135, 0.025063, 0.891090,
		0.610042, -0.720164, 0.330473,
		0.650013, 0.693351, 0.311042,
		64.799431, 59.140968, 58.753391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.642883, 58.476700, 59.170776>,  <64.344421, 58.655624, 58.535664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.642883, 58.476700, 59.170776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.626320, 58.876030, 59.154640>,  <64.616379, 59.115627, 59.144958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.626320, 58.876030, 59.154640>,  <64.642883, 58.476700, 59.170776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.626320, 58.876030, 59.154640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339196, 0.023927, 0.940411,
		0.939804, 0.052627, 0.337638,
		-0.041412, 0.998328, -0.040338,
		64.613899, 59.175529, 59.142540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.631218, 58.349766, 59.970192>,  <64.642883, 58.476700, 59.170776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.631218, 58.349766, 59.970192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.530617, 58.021523, 60.175461>,  <64.470253, 57.824577, 60.298622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.530617, 58.021523, 60.175461>,  <64.631218, 58.349766, 59.970192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.530617, 58.021523, 60.175461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077955, -0.511315, -0.855850,
		0.964710, -0.255258, 0.064630,
		-0.251509, -0.820609, 0.513170,
		64.455162, 57.775341, 60.329411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.017914, 57.865913, 59.692719>,  <64.631218, 58.349766, 59.970192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.017914, 57.865913, 59.692719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.682396, 57.686188, 59.815697>,  <64.481087, 57.578350, 59.889484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.682396, 57.686188, 59.815697>,  <65.017914, 57.865913, 59.692719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.682396, 57.686188, 59.815697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051270, -0.497006, -0.866231,
		0.542014, -0.742361, 0.393854,
		-0.838804, -0.449316, 0.307445,
		64.430756, 57.551392, 59.907928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.433296, 58.209393, 60.203876>,  <65.017914, 57.865913, 59.692719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.433296, 58.209393, 60.203876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.670975, 58.388859, 59.936852>,  <65.813583, 58.496536, 59.776634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.670975, 58.388859, 59.936852>,  <65.433296, 58.209393, 60.203876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.670975, 58.388859, 59.936852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790112, -0.480932, 0.380036,
		-0.150544, -0.753263, -0.640259,
		0.594188, 0.448664, -0.667564,
		65.849228, 58.523457, 59.736584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.000793, 57.815140, 59.963089>,  <65.433296, 58.209393, 60.203876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.000793, 57.815140, 59.963089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.149261, 58.178047, 59.883995>,  <66.238342, 58.395794, 59.836536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.149261, 58.178047, 59.883995>,  <66.000793, 57.815140, 59.963089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.149261, 58.178047, 59.883995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816916, -0.217802, 0.534051,
		0.441461, -0.359754, -0.822003,
		0.371161, 0.907270, -0.197738,
		66.260612, 58.450230, 59.824673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.609138, 57.731224, 59.583065>,  <66.000793, 57.815140, 59.963089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.609138, 57.731224, 59.583065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.610718, 58.074684, 59.788086>,  <66.611664, 58.280762, 59.911098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.610718, 58.074684, 59.788086>,  <66.609138, 57.731224, 59.583065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.610718, 58.074684, 59.788086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884576, -0.242046, 0.398670,
		0.466378, 0.451813, -0.760497,
		0.003951, 0.858649, 0.512548,
		66.611900, 58.332279, 59.941849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.237877, 57.312054, 59.687469>,  <66.609138, 57.731224, 59.583065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.237877, 57.312054, 59.687469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.316032, 57.107529, 59.352715>,  <67.362923, 56.984814, 59.151859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.316032, 57.107529, 59.352715>,  <67.237877, 57.312054, 59.687469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.316032, 57.107529, 59.352715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211890, 0.811175, -0.545068,
		0.957564, 0.283826, 0.050148,
		0.195384, -0.511312, -0.836891,
		67.374649, 56.954136, 59.101646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.605812, 57.738808, 59.318993>,  <67.237877, 57.312054, 59.687469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.605812, 57.738808, 59.318993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.369751, 57.485477, 59.118752>,  <67.228111, 57.333481, 58.998608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.369751, 57.485477, 59.118752>,  <67.605812, 57.738808, 59.318993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.369751, 57.485477, 59.118752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535483, 0.771162, -0.344336,
		0.604124, 0.064851, -0.794247,
		-0.590163, -0.633327, -0.500604,
		67.192703, 57.295479, 58.968571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.878479, 57.233372, 58.733631>,  <67.605812, 57.738808, 59.318993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.878479, 57.233372, 58.733631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.717972, 56.965302, 58.483879>,  <67.621666, 56.804459, 58.334026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.717972, 56.965302, 58.483879>,  <67.878479, 57.233372, 58.733631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.717972, 56.965302, 58.483879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883347, -0.102853, -0.457297,
		0.242249, -0.735042, 0.633268,
		-0.401266, -0.670175, -0.624381,
		67.597595, 56.764248, 58.296566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.256744, 56.591457, 58.741879>,  <67.878479, 57.233372, 58.733631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.256744, 56.591457, 58.741879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.100868, 56.678665, 58.383972>,  <68.007339, 56.730991, 58.169228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.100868, 56.678665, 58.383972>,  <68.256744, 56.591457, 58.741879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.100868, 56.678665, 58.383972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908936, -0.065341, -0.411784,
		-0.148242, -0.973755, -0.172702,
		-0.389692, 0.218019, -0.894767,
		67.983963, 56.744072, 58.115543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.538345, 56.056610, 58.335640>,  <68.256744, 56.591457, 58.741879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.538345, 56.056610, 58.335640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.447052, 56.388084, 58.131210>,  <68.392281, 56.586967, 58.008553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.447052, 56.388084, 58.131210>,  <68.538345, 56.056610, 58.335640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.447052, 56.388084, 58.131210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888165, -0.037830, -0.457965,
		-0.398842, -0.558435, -0.727375,
		-0.228227, 0.828685, -0.511071,
		68.378586, 56.636688, 57.977890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.278275, 55.747726, 58.369961>,  <68.538345, 56.056610, 58.335640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.278275, 55.747726, 58.369961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.322845, 55.401020, 58.175514>,  <69.349586, 55.192997, 58.058846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.322845, 55.401020, 58.175514>,  <69.278275, 55.747726, 58.369961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.322845, 55.401020, 58.175514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168476, -0.498557, 0.850327,
		-0.979387, -0.012855, -0.201583,
		0.111431, -0.866761, -0.486115,
		69.356277, 55.140991, 58.029678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.734924, 56.110924, 58.795971>,  <69.278275, 55.747726, 58.369961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.734924, 56.110924, 58.795971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.548058, 55.780907, 58.923126>,  <69.435936, 55.582897, 58.999420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.548058, 55.780907, 58.923126>,  <69.734924, 56.110924, 58.795971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.548058, 55.780907, 58.923126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884146, 0.433515, -0.174215,
		0.005924, -0.362451, -0.931984,
		-0.467173, -0.825042, 0.317892,
		69.407906, 55.533394, 59.018494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.386589, 56.413586, 59.304295>,  <69.734924, 56.110924, 58.795971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.386589, 56.413586, 59.304295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.444847, 56.100063, 59.545769>,  <70.479805, 55.911949, 59.690655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.444847, 56.100063, 59.545769>,  <70.386589, 56.413586, 59.304295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.444847, 56.100063, 59.545769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707121, 0.509234, 0.490572,
		-0.691931, 0.355432, 0.628411,
		0.145644, -0.783804, 0.603688,
		70.488541, 55.864922, 59.726875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.309380, 56.643547, 60.004333>,  <70.386589, 56.413586, 59.304295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.309380, 56.643547, 60.004333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.574348, 56.349457, 59.946877>,  <70.733330, 56.173004, 59.912403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.574348, 56.349457, 59.946877>,  <70.309380, 56.643547, 60.004333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.574348, 56.349457, 59.946877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690581, 0.525019, 0.497446,
		-0.290323, -0.428716, 0.855520,
		0.662427, -0.735227, -0.143638,
		70.773079, 56.128887, 59.903786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.503532, 56.237743, 60.634148>,  <70.309380, 56.643547, 60.004333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.503532, 56.237743, 60.634148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.814827, 56.257065, 60.383705>,  <71.001602, 56.268658, 60.233440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.814827, 56.257065, 60.383705>,  <70.503532, 56.237743, 60.634148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.814827, 56.257065, 60.383705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604097, 0.214712, 0.767441,
		0.171500, -0.975483, 0.137919,
		0.778238, 0.048299, -0.626109,
		71.048302, 56.271557, 60.195873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.093437, 55.776775, 60.775795>,  <70.503532, 56.237743, 60.634148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.093437, 55.776775, 60.775795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.247238, 56.085045, 60.572533>,  <71.339523, 56.270004, 60.450577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.247238, 56.085045, 60.572533>,  <71.093437, 55.776775, 60.775795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.247238, 56.085045, 60.572533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592961, 0.215699, 0.775804,
		0.707498, -0.599618, -0.374040,
		0.384506, 0.770670, -0.508157,
		71.362587, 56.316246, 60.420086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.722008, 55.671276, 60.942936>,  <71.093437, 55.776775, 60.775795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.722008, 55.671276, 60.942936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.723244, 56.058052, 60.840942>,  <71.723984, 56.290119, 60.779747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.723244, 56.058052, 60.840942>,  <71.722008, 55.671276, 60.942936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.723244, 56.058052, 60.840942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717059, 0.175584, 0.674534,
		0.697005, -0.184919, -0.692812,
		0.003088, 0.966941, -0.254981,
		71.724167, 56.348133, 60.764446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.447495, 55.887550, 60.707253>,  <71.722008, 55.671276, 60.942936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.447495, 55.887550, 60.707253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.208778, 56.176777, 60.846405>,  <72.065552, 56.350311, 60.929897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.208778, 56.176777, 60.846405>,  <72.447495, 55.887550, 60.707253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.208778, 56.176777, 60.846405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699977, 0.257186, 0.666249,
		0.392270, 0.641119, -0.659614,
		-0.596788, 0.723064, 0.347882,
		72.029739, 56.393696, 60.950771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.717438, 56.599590, 60.596207>,  <72.447495, 55.887550, 60.707253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.717438, 56.599590, 60.596207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.540428, 56.556171, 60.952271>,  <72.434219, 56.530121, 61.165909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.540428, 56.556171, 60.952271>,  <72.717438, 56.599590, 60.596207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.540428, 56.556171, 60.952271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873567, 0.172080, 0.455268,
		-0.202597, 0.979084, 0.018674,
		-0.442532, -0.108549, 0.890159,
		72.407669, 56.523605, 61.219318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.639328, 57.305309, 60.592979>,  <72.717438, 56.599590, 60.596207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.639328, 57.305309, 60.592979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.957008, 57.493584, 60.439247>,  <73.147614, 57.606548, 60.347008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.957008, 57.493584, 60.439247>,  <72.639328, 57.305309, 60.592979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.957008, 57.493584, 60.439247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399968, 0.881058, 0.252511,
		0.457473, -0.046822, 0.887990,
		0.794194, 0.470684, -0.384333,
		73.195267, 57.634789, 60.323948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
